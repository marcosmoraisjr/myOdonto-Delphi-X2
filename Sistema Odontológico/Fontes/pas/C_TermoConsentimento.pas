unit C_TermoConsentimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Mask, JvToolEdit,
  Vcl.StdCtrls, JvExMask, JvComponentBase, JvEnterTab, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB, Funcoes, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmTermoConsentimento = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    Label2: TLabel;
    EdtDt: TJvDateEdit;
    gbResponsavel: TGroupBox;
    Label3: TLabel;
    EdtNomeResponsavel: TEdit;
    Label4: TLabel;
    EdtRG: TMaskEdit;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    qryAux: TADOQuery;
    qryAux2: TADOQuery;
    Dentista: TGroupBox;
    Label5: TLabel;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTermoConsentimento: TfrmTermoConsentimento;

implementation

{$R *.dfm}

uses P_Paciente, Main, P_Medico;

procedure TfrmTermoConsentimento.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTermoConsentimento.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
    Begin
      application.MessageBox('O Campo "Paciente" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
       Exit;
    End;

  if (gbResponsavel.Visible) then
    Begin
       If (EdtNomeResponsavel.Text = '') then
        Begin
          application.MessageBox('O Campo "Nome do Respons�vel" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
          Exit;
        End;

       If (EdtRG.Text = '') then
        Begin
          application.MessageBox('O Campo "RG do Respons�vel" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
          Exit;
        End;
    End;

  if EdtCodM.Text = '' then
    Begin
       application.MessageBox('O Campo "Dentista" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
       Exit;
    End;


    With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM TERMOCONSENTIMENTO');
        SQL.Add('WHERE ID_TERMOCONSENTIMENTO = 0');
        Open;

        Append;
        FieldByName('ID_PACIENTE').AsString := EdtCodP.Text;
        FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
        FieldByName('DATA').AsDateTime := EdtDt.Date;
        FieldByName('RESPONSAVEL').AsString := EdtNomeResponsavel.Text;
        FieldByName('RGRESPONSAVEL').AsString := EdtRG.Text;
        Post;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM HISTORICOPACIENTE');
        SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
        Open;

        Append;
        FieldByName('ID_PACIENTE').AsInteger := StrToInt(EdtCodP.Text);
        FieldByName('DESCRICAO').AsString := 'Novo Termo de Consentimento';
        FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
        FieldByName('TIPO').AsInteger := 0;
        FieldByName('DATA').AsDateTime := Now;
        Post;

      End;

    Close;
end;

procedure TfrmTermoConsentimento.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
end;

procedure TfrmTermoConsentimento.EdtCodMExit(Sender: TObject);
begin
  inherited;
  if EdtCodM.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_MEDICO, NOME FROM MEDICOS');
    SQL.Add('WHERE ID_MEDICO = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodM.Text);
    Open;

    EdtMedico.Text := FieldByName('NOME').AsString;

    if EdtMedico.Text = '' then
    Begin
      EdtCodM.Text := '';
    End;

  End;
end;

procedure TfrmTermoConsentimento.EdtCodMKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmTermoConsentimento.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
end;

procedure TfrmTermoConsentimento.EdtCodPExit(Sender: TObject);
var
  iTitular : Integer;
begin
  inherited;

  if EdtCodP.Text = '' then
  Begin
    gbResponsavel.Visible := False;
    EdtNomeResponsavel.Text := '';
    EdtRG.Text := '';
    EdtNome.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PACIENTE.ID_PACIENTE, PACIENTE.ID_CIDADE, PACIENTE.ID_CONVENIO, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO, PACIENTE.ENDERECO, PACIENTE.NRO,');
    SQL.Add('PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE,');
    SQL.Add('TITULAR_DEPENDENTE, ID_TITULAR, PACIENTE.EMPRESA, PACIENTE.FUNCAO, CONVENIOS.NOME AS CONVENIO, CIDADE.NOME AS CIDADE, CIDADE.UF, PACIENTE.ATIVO, DateDiff(yy,PACIENTE.DTANASC, GetDate()) As Idade FROM PACIENTE');
    SQL.Add('LEFT JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
    SQL.Add('LEFT JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = PACIENTE.ID_CONVENIO');
    SQL.Add('WHERE ID_PACIENTE = :pCod');
    SQL.Add('AND PACIENTE.ATIVO <> 0');
    Parameters.ParamByName('pCod').Value := StrToInt(EdtCodP.Text);
    Open;

    EdtNome.Text := FieldByName('NOME').AsString;

    if FieldByName('IDADE').AsInteger < 17 then
      Begin
        gbResponsavel.Visible := True;
        EdtNomeResponsavel.Text := '';
        EdtRG.Text := '';

        if FieldByName('TITULAR_DEPENDENTE').AsInteger = 1 then
          Begin

            iTitular := FieldByName('ID_TITULAR').AsInteger;

            With qryAux2 do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT NOME, RG FROM PACIENTE');
                SQL.Add('WHERE ID_PACIENTE = :pID');
                Parameters.ParamByName('pID').Value := iTitular;
                Open;

                EdtNomeResponsavel.Text := FieldBYName('NOME').AsString;
                EdtRG.Text := FieldByName('RG').AsString;
              End;
          End;
      End
    Else
      Begin
        gbResponsavel.Visible := False;
        EdtNomeResponsavel.Text := '';
        EdtRG.Text := '';
      End;

    if EdtNome.Text = '' then
    Begin
      EdtCodP.Text := '';
    End;

  End;
end;

procedure TfrmTermoConsentimento.EdtCodPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

end.
