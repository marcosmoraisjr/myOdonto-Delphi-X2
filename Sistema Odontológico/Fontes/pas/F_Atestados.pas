unit F_Atestados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvSpin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, cxButtons, Funcoes, Data.DB,
  Data.Win.ADODB;

type
  TfrmAtestado = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Paciênte: TGroupBox;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    GroupBox2: TGroupBox;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    rgFins: TRadioGroup;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    EdtHoraInicial: TJvTimeEdit;
    Label2: TLabel;
    EdtHoraFinal: TJvTimeEdit;
    GroupBox4: TGroupBox;
    mmoObs: TMemo;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    qryAux: TADOQuery;
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    iIDAtestado : Integer;
  public
    { Public declarations }
    Procedure CarregaFiltros(ID : Integer);
  end;

var
  frmAtestado: TfrmAtestado;

implementation

{$R *.dfm}

uses P_Paciente, Main, P_Medico;

procedure TfrmAtestado.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAtestado.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
    Begin
      Exit;
    End;

  if EdtCodM.Text = '' then
    Begin
      Exit;
    End;

   With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ATESTADOS');
      SQL.Add('WHERE ID_ATESTADOS = :pID');
      Parameters.ParamByName('pID').Value := iIDAtestado;
      Open;

      if iIDAtestado > 0 then Edit
      Else
        Begin
          Append;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
          FieldByName('DATA').AsDateTime       := Now;
        End;

      FieldByName('FINS').AsInteger           := rgFins.ItemIndex;
      FieldByName('ID_PACIENTE').AsString     := EdtCodP.Text;
      FieldByName('ID_MEDICO').AsString       := EdtCodM.Text;
      FieldByName('HORAINI').AsString         := EdtHoraInicial.Text;
      FieldByName('HORAFIM').AsString         := EdtHoraFinal.Text;
      FieldByName('OBSERVACAO').AsString      := mmoObs.Lines.Text;
      Post;
    End;
   Close;
end;

procedure TfrmAtestado.CarregaFiltros(ID : Integer);
begin
  iIDAtestado := ID;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ATESTADOS');
      SQL.Add('WHERE ID_ATESTADOS = :pID');
      Parameters.ParamByName('pID').Value := iIDAtestado;
      Open;

      rgFins.ItemIndex        := FieldByName('FINS').AsInteger;
      EdtCodP.Text            := FieldByName('ID_PACIENTE').AsString;
      EdtCodM.Text            := FieldByName('ID_MEDICO').AsString;
      EdtHoraInicial.Text     := FieldByName('HORAINI').AsString;
      EdtHoraFinal.Text       := FieldByName('HORAFIM').AsString;
      mmoObs.Lines.Text       := FieldByName('OBSERVACAO').AsString;
      EdtCodPExit(Self);
      EdtCodMExit(Self);
    End;

end;

procedure TfrmAtestado.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
end;

procedure TfrmAtestado.EdtCodMExit(Sender: TObject);
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

procedure TfrmAtestado.EdtCodMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmAtestado.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
end;

procedure TfrmAtestado.EdtCodPExit(Sender: TObject);
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

procedure TfrmAtestado.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmAtestado.FormCreate(Sender: TObject);
begin
  inherited;
  iIDAtestado         := 0;
  EdtHoraInicial.Time := Now;
  EdtHoraFinal.Time   := Now;
end;

end.
