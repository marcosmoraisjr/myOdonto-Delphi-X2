unit C_EmissaoDocumentoPersonalizado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.StdCtrls, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, Funcoes,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadDocumentoPersonalizado = class(TfrmPadrao)
    gbPaciente: TGroupBox;
    gbDentista: TGroupBox;
    gbConsultorio: TGroupBox;
    GroupBox2: TGroupBox;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    EdtCodE: TJvComboEdit;
    EdtConsultorio: TEdit;
    EdtDocumento: TEdit;
    EdtCodDoc: TJvComboEdit;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    qryAux: TADOQuery;
    ConexaoWord: TADOConnection;
    qryAux2: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCodEButtonClick(Sender: TObject);
    procedure EdtCodEExit(Sender: TObject);
    procedure EdtCodDocButtonClick(Sender: TObject);
    procedure EdtCodDocExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodDocKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    bEditar : Boolean;
  public
    iIDDocPersonalizado : Integer;
    Procedure CarregaFiltros;
    { Public declarations }
  end;

var
  frmCadDocumentoPersonalizado: TfrmCadDocumentoPersonalizado;

implementation

{$R *.dfm}

uses P_Paciente, Main, P_Medico, P_Consultorios, P_DocumentosPersonalizados;

procedure TfrmCadDocumentoPersonalizado.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadDocumentoPersonalizado.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if EdtCodDoc.Text = '' then
    Begin
      application.MessageBox('O Campo "Documento" é obrigatório o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      EdtCodDoc.SetFocus;
      Exit;
    End;

  With qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM DOCUMENTOSEMITIDOS');
      SQL.Add('WHERE ID_DOCUMENTOSEMITIDOS = :pID');
      Parameters.ParamByName('pID').Value := iIDDocPersonalizado;
      Open;

      if bEditar then
        Begin
          Edit;
        End
      Else
        Begin
          Append;
          FieldByName('DATE').AsDateTime := Now;
          FieldByName('ID_DOCUMENTOS').AsString := EdtCodDoc.Text;
        End;

        if EdtCodP.Text <> '' then
          Begin
            FieldByName('ID_PACIENTE').AsString := EdtCodP.Text;
          End;

        if EdtCodM.Text <> '' then
          Begin
            FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
          End;

        if EdtCodE.Text <> '' then
          Begin
            FieldByName('ID_EMPRESA').AsString := EdtCodE.Text;
          End;

        Post;
    End;

  Close;
end;

procedure TfrmCadDocumentoPersonalizado.CarregaFiltros;
begin


  With qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM DOCUMENTOSEMITIDOS');
      SQL.Add('WHERE ID_DOCUMENTOSEMITIDOS = :pID');
      Parameters.ParamByName('pID').Value := iIDDocPersonalizado;
      Open;

      if Not Eof then
        Begin
          bEditar := True;
          EdtCodP.Text := FieldByName('ID_PACIENTE').AsString;
          EdtCodM.Text := FieldByName('ID_MEDICO').AsString;
          EdtCodDoc.Text := FieldByName('ID_DOCUMENTOS').AsString;
          EdtCodE.Text := FieldByName('ID_EMPRESA').AsString;

          EdtCodPExit(Self);
          EdtCodMExit(Self);
          EdtCodDocExit(Self);
          EdtCodEExit(Self);

          EdtCodDoc.ReadOnly := True;
          EdtCodDoc.Color := clGradientInactiveCaption;
        End;
    End;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodDocButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPDocsPersonalizados, frmPDocsPersonalizados);
  frmPDocsPersonalizados.bFechar := True;
  frmPDocsPersonalizados.ShowModal;
  EdtCodDoc.Text := frmMain.sCod;
  EdtCodDocExit(Sender);
  FreeAndNil(frmPDocsPersonalizados);
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodDocExit(Sender: TObject);
begin
  inherited;
  if EdtCodDoc.Text = '' then
    Begin
      EdtDocumento.Text := '';
      Exit;
    End;

  With qryAux2 do
    Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DOCUMENTOS');
    SQL.Add('WHERE ID_DOCUMENTOS = :pId');
    Parameters.ParamByName('pId').Value := EdtCodDoc.Text;
    Open;

    if Eof then
      Begin
        EdtDocumento.Text := '';
        EdtCodDoc.Text := '';
        gbPaciente.Visible := False;
        gbDentista.Visible := False;
        gbConsultorio.Visible := False;
      End
    Else
      EdtDocumento.Text := FieldByName('Descricao').AsString;

      if FieldByName('PACIENTE').AsBoolean then gbPaciente.Visible := True
      Else gbPaciente.Visible := False;

      if FieldByName('DENTISTA').AsBoolean then gbDentista.Visible := True
      Else gbDentista.Visible := False;

      if FieldByName('CONSULTORIO').AsBoolean then  gbConsultorio.Visible := True
      Else gbConsultorio.Visible := False;

    End;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodDocKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodEButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaConsultorio, frmPesquisaConsultorio);
  frmPesquisaConsultorio.bFechar := True;
  frmPesquisaConsultorio.ShowModal;
  EdtCodE.Text := frmMain.sCod;
  EdtCodEExit(Sender);
  FreeAndNil(frmPesquisaConsultorio);
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodEExit(Sender: TObject);
begin
  inherited;
  if EdtCodE.Text = '' then
    Begin
      EdtConsultorio.Text := '';
      Exit;
    End;

  With qryAux do
    Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM EMPRESA');
    SQL.Add('WHERE ID_EMPRESA = :pId');
    Parameters.ParamByName('pId').Value := EdtCodE.Text;
    Open;

    if Eof then
      Begin
        EdtConsultorio.Text := '';
        EdtCodE.Text := '';
      End
    Else
      EdtConsultorio.Text := FieldByName('NOME').AsString;
    End;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
  FreeAndNil(frmPesquisaMedico);
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodMExit(Sender: TObject);
begin
  inherited;
  if EdtCodM.Text = '' then
  Begin
    EdtMedico.Text := '';
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

    If Not Eof then
      Begin
        EdtMedico.Text := FieldByName('NOME').AsString;
      End
    Else
      Begin
        EdtCodM.Text := '';
        EdtMedico.Text := '';
      End;
  End;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodMKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodPExit(Sender: TObject);
begin
  inherited;
  inherited;
  if EdtCodP.Text = '' then
  Begin
    EdtNome.Text := '';
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

    if Not Eof then
      Begin
        EdtNome.Text := FieldByName('NOME').AsString;
      End
    Else
      Begin
        EdtNome.Text := '';
        EdtCodP.Text := '';
      End;
  End;
end;

procedure TfrmCadDocumentoPersonalizado.EdtCodPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadDocumentoPersonalizado.FormCreate(Sender: TObject);
var
  sConect : String;
begin
  inherited;
  sConect := '';
  sConect := sConect + ' Provider=SQLOLEDB.1; ';
  sConect := sConect + ' Persist Security Info=True; ';
  sConect := sConect + ' User ID=' + CfgAcesso.Usuario + '; ';
  sConect := sConect + ' Password=' + CfgAcesso.Senha + '; ';
  sConect := sConect + ' Initial Catalog=ODSWORD; ';
  sConect := sConect + ' Data Source=' + CfgAcesso.Servidor;
  ConexaoWord.ConnectionString := sConect;
  ConexaoWord.Connected := True;
  bEditar := False;
  iIDDocPersonalizado := 0;
  gbPaciente.Visible := False;
  gbDentista.Visible := False;
  gbConsultorio.Visible := False;
end;

end.
