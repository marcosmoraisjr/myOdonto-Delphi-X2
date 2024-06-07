unit F_Receituario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Funcoes,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmReceituario = class(TfrmPadrao)
    Paci�nte: TGroupBox;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    GroupBox1: TGroupBox;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    GroupBox2: TGroupBox;
    mmoObs: TMemo;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    qryAux: TADOQuery;
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
  private
    Procedure VerificaCampos;
  public
    bEditar : Boolean;
    IDReceituario : Integer;
    Procedure Carregar;
  end;

var
  frmReceituario: TfrmReceituario;

implementation

{$R *.dfm}

uses P_Paciente, Main, P_Medico;

procedure TfrmReceituario.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmReceituario.btnSalvarClick(Sender: TObject);
begin
  inherited;

    VerificaCampos;

    With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM RECEITUARIO');
        SQL.Add('WHERE ID_RECEITUARIO = :pID');

        if bEditar then
          Begin
            Parameters.ParamByName('pID').Value := IDReceituario;
            Open;
            Edit;
          End
        Else
          Begin
            Parameters.ParamByName('pID').Value := 0;
            Open;
            Append;
            FieldByName('DATA').AsDateTime := Now;
          End;

        FieldByName('ID_PACIENTE').AsString := EdtCodP.Text;
        FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
        FieldByName('DESCRICAO').AsString := mmoObs.Lines.Text;
        Post;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM HISTORICOPACIENTE');
        SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
        Open;

        Append;
        FieldByName('ID_PACIENTE').AsInteger := StrToInt(EdtCodP.Text);
        FieldByName('DESCRICAO').AsString := 'Nova Receita Emitida';
        FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
        FieldByName('TIPO').AsInteger := 0;
        FieldByName('DATA').AsDateTime := Now;
        Post;
      End;

    Close;
end;

procedure TfrmReceituario.Carregar;
begin

  if bEditar then
    Begin
      With qryAux do
        Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM RECEITUARIO');
        SQL.Add('WHERE ID_RECEITUARIO = :pID');
        Parameters.ParamByName('pID').Value := IDReceituario;
        Open;

        EdtCodP.Text := FieldByName('ID_PACIENTE').AsString;
        EdtCodM.Text := FieldByName('ID_MEDICO').AsString;
        mmoObs.Lines.Text := FieldByName('DESCRICAO').AsString;

        EdtCodPExit(Self);
        EdtCodMExit(Self);

        EdtCodP.ReadOnly := True;
        EdtCodM.ReadOnly := True;
        mmoObs.ReadOnly := True;
      End;
    End;
end;

procedure TfrmReceituario.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
end;

procedure TfrmReceituario.EdtCodMExit(Sender: TObject);
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

procedure TfrmReceituario.EdtCodMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmReceituario.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
end;

procedure TfrmReceituario.EdtCodPExit(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PACIENTE.ID_PACIENTE, PACIENTE.ID_CIDADE, PACIENTE.ID_CONVENIO, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO, PACIENTE.ENDERECO, PACIENTE.NRO,');
    SQL.Add('PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE,');
    SQL.Add('PACIENTE.EMPRESA, PACIENTE.FUNCAO, CONVENIOS.NOME AS CONVENIO, CIDADE.NOME AS CIDADE, CIDADE.UF, PACIENTE.ATIVO FROM PACIENTE');
    SQL.Add('LEFT JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
    SQL.Add('LEFT JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = PACIENTE.ID_CONVENIO');
    SQL.Add('WHERE ID_PACIENTE = :pCod');
    SQL.Add('AND PACIENTE.ATIVO <> 0');
    Parameters.ParamByName('pCod').Value := StrToInt(EdtCodP.Text);
    Open;

    EdtNome.Text := FieldByName('NOME').AsString;

    if EdtNome.Text = '' then
    Begin
      EdtCodP.Text := '';
    End;

  End;
end;

procedure TfrmReceituario.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmReceituario.FormCreate(Sender: TObject);
begin
  inherited;
  bEditar := False;
end;

procedure TfrmReceituario.VerificaCampos;
begin
  if EdtCodP.Text = '' then
    Begin
      application.MessageBox('O Paciente � obrigat�rio o preenchimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      EdtCodP.SetFocus;
      Exit;
    End;

  if EdtCodM.Text = '' then
    Begin
      application.MessageBox('O Dentista � obrigat�rio o preenchimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      EdtCodM.SetFocus;
      Exit;
    End;

  if mmoobs.Lines.Text = '' then
    Begin
      application.MessageBox('� necess�rio informar uma descri��o para a receita!', 'Erro!',
        mb_ok + MB_ICONERROR);
      mmoObs.SetFocus;
      Exit;
    End;

end;

end.
