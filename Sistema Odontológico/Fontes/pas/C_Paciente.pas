Unit C_Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, JvExMask, JvToolEdit, Vcl.Mask,
  Data.DB, Data.Win.ADODB, JvAppHotKey, JvComponentBase, JvEnterTab, Funcoes,
  Vcl.Imaging.jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  cxCheckBox, cxImage, cxDBEdit, JvDBImage, JvDBUltimGrid,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Menus, cxButtons;

type
  TfrmCadPaciente = class(TfrmPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdtNome: TEdit;
    EdtCPF: TMaskEdit;
    EdtRG: TMaskEdit;
    EdtDtNasc: TJvDateEdit;
    EdtSexo: TComboBox;
    EdtEnd: TEdit;
    EdtNro: TEdit;
    EdtBairro: TEdit;
    EdtCep: TMaskEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    EdtObs: TMemo;
    Label23: TLabel;
    EdtTel: TMaskEdit;
    EdtCel: TMaskEdit;
    Label24: TLabel;
    EdtEmail: TEdit;
    Label25: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    EdtNomeMae: TEdit;
    Label17: TLabel;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    EdtNomePai: TEdit;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    EdtEmpresa: TEdit;
    EdtFuncao: TEdit;
    qryCadastro: TADOQuery;
    EdtCodConvenio: TJvComboEdit;
    EdtCodCidade: TJvComboEdit;
    EdtCid: TEdit;
    EdtUf: TEdit;
    EdtNomeConvenio: TEdit;
    cbAtivo: TCheckBox;
    qryAux: TADOQuery;
    cbTipo: TComboBox;
    Label18: TLabel;
    Label19: TLabel;
    EdtTelComercial: TMaskEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    SpeedButton1: TSpeedButton;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    cbProporcional: TcxCheckBox;
    cbCentralizar: TcxCheckBox;
    gLista: TJvDBGrid;
    imgFoto: TImage;
    AbreFoto: TOpenDialog;
    qryFotosPaciente: TADOQuery;
    qryFotosPacienteDESCRICAO: TStringField;
    qryFotosPacienteDATA: TDateTimeField;
    dsFotoPaciente: TDataSource;
    qryFotosPacienteID_FOTOSPACIENTE: TAutoIncField;
    qryFotosPacienteFOTOS: TBlobField;
    imgFotos: TcxDBImage;
    qryCadastroAux: TADOQuery;
    qryCadastroAuxID_PACIENTE: TAutoIncField;
    qryCadastroAuxID_FILIAL: TIntegerField;
    qryCadastroAuxID_DB: TIntegerField;
    qryCadastroAuxNOME: TStringField;
    qryCadastroAuxCPF: TStringField;
    qryCadastroAuxRG: TStringField;
    qryCadastroAuxDTANASC: TDateTimeField;
    qryCadastroAuxSEXO: TStringField;
    qryCadastroAuxENDERECO: TStringField;
    qryCadastroAuxNRO: TStringField;
    qryCadastroAuxBAIRRO: TStringField;
    qryCadastroAuxCEP: TStringField;
    qryCadastroAuxID_CIDADE: TIntegerField;
    qryCadastroAuxTELEFONE: TStringField;
    qryCadastroAuxCELULAR: TStringField;
    qryCadastroAuxTELCOMERCIAL: TStringField;
    qryCadastroAuxEMAIL: TStringField;
    qryCadastroAuxNOMEPAI: TStringField;
    qryCadastroAuxNOMEMAE: TStringField;
    qryCadastroAuxEMPRESA: TStringField;
    qryCadastroAuxFUNCAO: TStringField;
    qryCadastroAuxID_CONVENIO: TIntegerField;
    qryCadastroAuxTIPO: TIntegerField;
    qryCadastroAuxOBSERVACAO: TMemoField;
    qryCadastroAuxFOTO: TBlobField;
    qryCadastroAuxAtivo: TStringField;
    Label20: TLabel;
    cbEstCivil: TComboBox;
    Label21: TLabel;
    EdtConjuge: TEdit;
    GroupBox10: TGroupBox;
    Label22: TLabel;
    EdtReferencia: TEdit;
    lblCadastro: TLabel;
    EdtDtCadastro: TJvDateEdit;
    qryCadastroAuxDATACADASTRO: TDateTimeField;
    GroupBox11: TGroupBox;
    gridAnamnese: TJvDBUltimGrid;
    btnAnamnese: TSpeedButton;
    dsPerguntasAnamnese: TDataSource;
    lblUltimaConsulta: TLabel;
    EdtDtUltimaConsulta: TJvDateEdit;
    GroupBox12: TGroupBox;
    rgTitular: TRadioGroup;
    EdtNomeTitular: TEdit;
    lblTitular: TLabel;
    EdtCodTitular: TJvComboEdit;
    qryCadastroAuxID_TITULAR: TIntegerField;
    GroupBox13: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    dsPacienteAnamnese: TDataSource;
    qryPerguntasAnamnese: TADOQuery;
    qryPerguntasAnamnesePergunta: TStringField;
    qryPerguntasAnamneseAFIRMO: TBooleanField;
    qryPerguntasAnamneseNEGO: TBooleanField;
    qryPerguntasAnamneseNAOSEI: TBooleanField;
    qryPerguntasAnamneseOBSERVACAO: TStringField;
    qryPerguntasAnamneseObrigatorio: TBooleanField;
    qryPerguntasAnamneseIDPacienteAnamnese: TIntegerField;
    qryCadastroAuxTITULAR_DEPENDENTE: TIntegerField;
    GroupBox14: TGroupBox;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    qryPacienteAnamnese: TADOQuery;
    qryPacienteAnamneseDATA: TDateTimeField;
    qryPacienteAnamneseID_PACIENTEANAMNESE: TAutoIncField;
    qryPacienteAnamneseID_MEDICO: TIntegerField;
    qryPacienteAnamneseID_PACIENTE: TIntegerField;
    qryPacienteAnamneseNOME: TStringField;
    Label26: TLabel;
    cbLogradouro: TComboBox;
    qryCadastroAuxULTIMACONSULTA: TDateTimeField;
    qryCadastroAuxESTADOCIVIL: TIntegerField;
    qryCadastroAuxConjuge: TStringField;
    qryCadastroAuxREFERENCIA: TStringField;
    EdtCel2: TMaskEdit;
    Label27: TLabel;
    Label28: TLabel;
    EdtTelRecado: TMaskEdit;
    EdtNomeRecado: TEdit;
    Label29: TLabel;
    EdtNroCarteira: TEdit;
    Label30: TLabel;
    EdtComplemento: TEdit;
    qryCadastroAuxNUMERODACARTEIRA: TStringField;
    qryCadastroAuxCELULAR2: TStringField;
    qryCadastroAuxCOMPLEMENTO: TStringField;
    qryCadastroAuxTELRECADO: TStringField;
    qryCadastroAuxNOMERECADO: TStringField;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    gbResponsavel: TGroupBox;
    Label31: TLabel;
    EdtNomeResponsavel: TEdit;
    EdtCPFResponsavel: TMaskEdit;
    Label32: TLabel;
    EdtRGResponsavel: TMaskEdit;
    Label33: TLabel;
    qryCadastroAuxNUMEROCNS: TStringField;
    qryCadastroAuxVALIDADECARTEIRA: TDateTimeField;
    qryCadastroAuxDATADEADESAO: TDateTimeField;
    qryCadastroAuxNOMERESPONSAVEL: TStringField;
    qryCadastroAuxCPFRESPONSAVEL: TStringField;
    qryCadastroAuxRGRESPONSAVEL: TStringField;
    GroupBox15: TGroupBox;
    rgClasseMaOclusao: TRadioGroup;
    rgExtracaoMaOclusao: TRadioGroup;
    rgMordidaMaOclusao: TRadioGroup;
    qryCadastroAuxMAOCLUSAOCLASSE: TIntegerField;
    qryCadastroAuxMAOCLUSAOMORDIDA: TIntegerField;
    qryCadastroAuxMAOCLUSAOEXTRACAO: TIntegerField;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure EdtCodConvenioButtonClick(Sender: TObject);
    procedure EdtCodConvenioExit(Sender: TObject);
    procedure EdtCodCidadeButtonClick(Sender: TObject);
    procedure EdtCodCidadeExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbProporcionalClick(Sender: TObject);
    procedure cbCentralizarClick(Sender: TObject);
    procedure EdtNomeChange(Sender: TObject);
    procedure EdtCPFChange(Sender: TObject);
    procedure EdtDtNascChange(Sender: TObject);
    procedure EdtEndChange(Sender: TObject);
    procedure EdtBairroChange(Sender: TObject);
    procedure EdtCepChange(Sender: TObject);
    procedure EdtNroChange(Sender: TObject);
    procedure EdtCodCidadeChange(Sender: TObject);
    procedure EdtTelChange(Sender: TObject);
    procedure EdtCelChange(Sender: TObject);
    procedure EdtTelComercialChange(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure EdtEmailChange(Sender: TObject);
    procedure cbEstCivilChange(Sender: TObject);
    procedure EdtConjugeChange(Sender: TObject);
    procedure EdtNomePaiChange(Sender: TObject);
    procedure EdtNomeMaeChange(Sender: TObject);
    procedure EdtEmpresaChange(Sender: TObject);
    procedure EdtFuncaoChange(Sender: TObject);
    procedure EdtCodConvenioChange(Sender: TObject);
    procedure EdtReferenciaChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAnamneseClick(Sender: TObject);
    procedure qryPerguntasAnamneseNAOSEIValidate(Sender: TField);
    procedure qryPerguntasAnamneseAFIRMOValidate(Sender: TField);
    procedure qryPerguntasAnamneseNEGOValidate(Sender: TField);
    procedure rgTitularClick(Sender: TObject);
    procedure EdtCodTitularButtonClick(Sender: TObject);
    procedure EdtCodTitularExit(Sender: TObject);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure JvApplicationHotKey1HotKey(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodConvenioKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodTitularKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCPFExit(Sender: TObject);
    procedure EdtDtNascExit(Sender: TObject);
    procedure EdtCPFResponsavelExit(Sender: TObject);
  private
    Procedure VerificaAnamnese;
    Procedure GravaAnamnese;
  public
    sCaminhoFoto: String;
    bAnamneseNova, bGravaAnamnese, bSalvo: Boolean;
  end;

var
  frmCadPaciente: TfrmCadPaciente;

implementation

{$R *.dfm}

uses L_Cidade, L_Convenios, Main, L_Anamnese, P_Paciente, P_Medico;

procedure TfrmCadPaciente.btnAnamneseClick(Sender: TObject);
begin
  inherited;

  if not Operador.AnamneseV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para acessar a lista de anamneses!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmLAnmenese, frmLAnmenese);

  if frmMain.sCod <> '' then
  Begin

    qryPerguntasAnamnese.Close;
    qryPerguntasAnamnese.Open;

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASANAMNESE');
      SQL.Add('WHERE ID_ANAMNESE =' + frmMain.sCod + '');
      Open;

      while Not eof do
      Begin
        qryPerguntasAnamnese.Append;
        qryPerguntasAnamnese.FieldByName('AFIRMO').AsBoolean := False;
        qryPerguntasAnamnese.FieldByName('NEGO').AsBoolean := False;
        qryPerguntasAnamnese.FieldByName('NAOSEI').AsBoolean := False;
        qryPerguntasAnamnese.FieldByName('OBRIGATORIO').AsBoolean :=
          FieldByName('OBRIGATORIO').AsBoolean;
        qryPerguntasAnamnese.FieldByName('PERGUNTA').AsString :=
          FieldByName('PERGUNTA').AsString;
        qryPerguntasAnamnese.Post;

        Next;
      End;

      bAnamneseNova := True;
      gridAnamnese.ReadOnly := False;
      EdtCodM.ReadOnly := False;
      qryPerguntasAnamnese.First;

    End;
  End;
end;

procedure TfrmCadPaciente.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  if not bSalvo then
  Begin
    If application.MessageBox('Deseja salvar antes de sair ?', 'Confirma��o!!!',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
    Begin
      btnSalvarClick(Sender);
    End;
  End;

  Close;

end;

procedure TfrmCadPaciente.btnCidadeClick(Sender: TObject);
begin
  inherited;
  frmListaCidade.ShowModal;
end;

procedure TfrmCadPaciente.btnSalvarClick(Sender: TObject);
var
  sAtivo: String;
  iIDPaciente: Integer;
begin
  inherited;

  if cbAtivo.Checked then
  Begin
    sAtivo := '1';
  End
  Else
  Begin
    sAtivo := '0';
  End;

  if EdtNome.Text = '' then
    begin
      application.MessageBox('O campo "Nome" � obrigat�rio o preenchimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      PageControl1.TabIndex := 0;
      EdtNome.SetFocus;
      Exit;
    End;

  if EdtCodCidade.Text = '' then
    Begin
      application.MessageBox('O campo "Cidade" � obrigat�rio o preenchimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      PageControl1.TabIndex := 0;
      EdtCodCidade.SetFocus;
      Exit;
    End;


  if qryPerguntasAnamnese.RecordCount = 0 then
  Begin
{    If application.MessageBox
      ('Deseja responder a anamnese do paciente antes de salvar?',
      'Confirma��o!!!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
    Begin
      PageControl1.TabIndex := 3;
      Exit;
    End;  }
  End
  Else
  Begin
    VerificaAnamnese;
  End;

  With qryCadastroAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = 0');
    Open;
  End;

  qryCadastroAux.Append;
  qryCadastroAux.FieldByName('Nome').AsString                   := EdtNome.Text;
  qryCadastroAux.FieldByName('CPF').AsString                    := EdtCPF.Text;
  qryCadastroAux.FieldByName('RG').AsString                     := EdtRG.Text;
  qryCadastroAux.FieldByName('DTANASC').AsDateTime              := EdtDtNasc.Date;
  qryCadastroAux.FieldByName('SEXO').AsString                   := EdtSexo.Text;
  qryCadastroAux.FieldByName('Endereco').AsString               := EdtEnd.Text;
  qryCadastroAux.FieldByName('NRO').AsString                    := EdtNro.Text;
  qryCadastroAux.FieldByName('BAIRRO').AsString                 := EdtBairro.Text;
  qryCadastroAux.FieldByName('CEP').AsString                    := EdtCep.Text;
  qryCadastroAux.FieldByName('ID_CIDADE').AsString              := EdtCodCidade.Text;
  qryCadastroAux.FieldByName('TELEFONE').AsString               := EdtTel.Text;
  qryCadastroAux.FieldByName('CELULAR').AsString                := EdtCel.Text;
  qryCadastroAux.FieldByName('TELCOMERCIAL').AsString           := EdtTelComercial.Text;
  qryCadastroAux.FieldByName('EMAIL').AsString                  := EdtEmail.Text;
  qryCadastroAux.FieldByName('NOMEPAI').AsString                := EdtNomePai.Text;
  qryCadastroAux.FieldByName('NOMEMAE').AsString                := EdtNomeMae.Text;
  qryCadastroAux.FieldByName('EMPRESA').AsString                := EdtEmpresa.Text;
  qryCadastroAux.FieldByName('FUNCAO').AsString                 := EdtFuncao.Text;
  qryCadastroAux.FieldByName('ID_CONVENIO').AsString            := EdtCodConvenio.Text;
  qryCadastroAux.FieldByName('OBSERVACAO').AsString             := EdtObs.Lines.Text;
  qryCadastroAux.FieldByName('ATIVO').AsString                  := sAtivo;
  qryCadastroAux.FieldByName('TIPO').AsInteger                  := cbTipo.ItemIndex;
  qryCadastroAux.FieldByName('DATACADASTRO').AsDateTime         := EdtDtCadastro.Date;
  qryCadastroAux.FieldByName('TITULAR_DEPENDENTE').AsInteger    := rgTitular.ItemIndex;
  qryCadastroAux.FieldByName('ESTADOCIVIL').AsInteger           := cbEstCivil.ItemIndex;
  qryCadastroAux.FieldByName('CONJUGE').AsString                := EdtConjuge.Text;
  qryCadastroAux.FieldByName('REFERENCIA').AsString             := EdtReferencia.Text;
  qryCadastroAuxCELULAR2.AsString                               := EdtCel2.Text;
  qryCadastroAuxTELRECADO.AsString                              := EdtTelRecado.Text;
  qryCadastroAuxCOMPLEMENTO.AsString                            := EdtComplemento.Text;
  qryCadastroAuxNOMERECADO.AsString                             := EdtNomeRecado.Text;
  qryCadastroAuxNUMERODACARTEIRA.AsString                       := EdtNroCarteira.Text;
  qryCadastroAuxNOMERESPONSAVEL.AsString                        := EdtNomeResponsavel.Text;
  qryCadastroAuxCPFRESPONSAVEL.AsString                         := EdtCPFResponsavel.Text;
  qryCadastroAuxRGRESPONSAVEL.AsString                          := EdtRGResponsavel.Text;
  qryCadastroAuxMAOCLUSAOCLASSE.AsInteger                       := rgClasseMaOclusao.ItemIndex;
  qryCadastroAuxMAOCLUSAOMORDIDA.AsInteger                      := rgMordidaMaOclusao.ItemIndex;
  qryCadastroAuxMAOCLUSAOEXTRACAO.AsInteger                     := rgExtracaoMaOclusao.ItemIndex;

  if rgTitular.ItemIndex = 0 then
  Begin
    qryCadastroAux.FieldByName('ID_TITULAR').AsInteger := 0;
  End
  Else
  Begin
    qryCadastroAux.FieldByName('ID_TITULAR').AsString := EdtCodTitular.Text;
  End;

  if sCaminhoFoto <> '' then
  Begin
    qryCadastroAuxFOTO.LoadFromFile(sCaminhoFoto);
  End;

  qryCadastroAux.Post;

  if qryPerguntasAnamnese.RecordCount > 0 then
  Begin
    GravaAnamnese;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_PACIENTE FROM PACIENTE');
    SQL.Add('WHERE NOME = :pNome');
    SQL.Add('AND ID_CIDADE = :pCid');
    SQL.Add('AND CPF = :pCPF');
    Parameters.ParamByName('pNome').Value := EdtNome.Text;
    Parameters.ParamByName('pCid').Value := EdtCodCidade.Text;
    Parameters.ParamByName('pCpf').Value := EdtCPF.Text;
    Open;

    iIDPaciente := FieldByName('ID_PACIENTE').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM HISTORICOPACIENTE');
    SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
    Open;

    Append;
    FieldByName('ID_PACIENTE').AsInteger := iIDPaciente;
    FieldByName('DESCRICAO').AsString := 'Paciente Cadastrado';
    FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
    FieldByName('TIPO').AsInteger := 0;
    FieldByName('DATA').AsDateTime := Now;
    Post;
  End;

  bSalvo := True;
  Close;
end;

procedure TfrmCadPaciente.cbCentralizarClick(Sender: TObject);
begin
  inherited;
  if cbCentralizar.Checked then
  Begin
    imgFotos.Properties.Center := True;
  End
  Else
  Begin
    imgFotos.Properties.Center := False;
  End;
end;

procedure TfrmCadPaciente.cbEstCivilChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.cbProporcionalClick(Sender: TObject);
begin
  inherited;
  if cbProporcional.Checked then
  Begin
    imgFotos.Properties.Proportional := True;
  End
  Else
  Begin
    imgFotos.Properties.Proportional := False;
  End;
end;

procedure TfrmCadPaciente.cbTipoChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtBairroChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtCelChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtCepChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtCodCidadeButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmListaCidade, frmListaCidade);
  frmListaCidade.bFechar := True;
  frmListaCidade.ShowModal;
  FreeAndNil(frmListaCidade);
  EdtCodCidade.Text := frmMain.sCodCid;
  EdtCodCidadeExit(Sender)
end;

procedure TfrmCadPaciente.EdtCodCidadeChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtCodCidadeExit(Sender: TObject);
begin
  inherited;
  if EdtCodCidade.Text = '' then
  Begin
    EdtCid.Text := '';
    EdtUf.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CIDADE, NOME, UF FROM CIDADE');
    SQL.Add('WHERE ID_CIDADE = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodCidade.Text);
    Open;

    EdtCid.Text := FieldByName('NOME').AsString;
    EdtUf.Text := FieldByName('UF').AsString;

    if EdtCid.Text = '' then
    Begin
      EdtCodCidade.Text := '';
    End;

  End;
end;

procedure TfrmCadPaciente.EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadPaciente.EdtCodConvenioButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmListaConvenios, frmListaConvenios);
  frmListaConvenios.bFechar := True;
  frmListaConvenios.ShowModal;
  EdtCodConvenio.Text := IntToStr(frmMain.iCodConvenio);
  EdtCodConvenioExit(Sender)
end;

procedure TfrmCadPaciente.EdtCodConvenioChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtCodConvenioExit(Sender: TObject);
begin
  inherited;

  if EdtCodConvenio.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CONVENIO, NOME FROM CONVENIOS');
    SQL.Add('WHERE ID_CONVENIO = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodConvenio.Text);
    Open;

    EdtNomeConvenio.Text := FieldByName('NOME').AsString;

    if EdtNomeConvenio.Text = '' then
    Begin
      EdtCodConvenio.Text := '';
    End;

  End;
end;

procedure TfrmCadPaciente.EdtCodConvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadPaciente.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
end;

procedure TfrmCadPaciente.EdtCodMExit(Sender: TObject);
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

procedure TfrmCadPaciente.EdtCodTitularButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodTitular.Text := frmMain.sCod;
  EdtCodTitularExit(Sender);
end;

procedure TfrmCadPaciente.EdtCodTitularExit(Sender: TObject);
begin
  inherited;
  if EdtCodTitular.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := EdtCodTitular.Text;
    Open;

    if not eof then
    Begin
      EdtNomeTitular.Text := FieldByName('NOME').AsString;
    End
    Else
    Begin
      EdtNomeTitular.Text := '';
      EdtCodTitular.Text := '';
    End;
  End;
end;

procedure TfrmCadPaciente.EdtCodTitularKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadPaciente.EdtConjugeChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtCPFChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtCPFExit(Sender: TObject);
begin
  inherited;
  if (EdtCPF.Text <> '   .   .   -  ') and (CFGGeral.ValidaCPF) then
    Begin
      If not VerificaCPF(EdtCPF.Text) Then
        Begin
          application.MessageBox('CPF inv�lido, por favor, verifique!', 'Aten��o!',
            mb_ok + MB_ICONWARNING);
          Exit;
        End;
    End;
end;

procedure TfrmCadPaciente.EdtCPFResponsavelExit(Sender: TObject);
begin
  inherited;
  if (EdtCPFResponsavel.Text <> '   .   .   -  ') and (CFGGeral.ValidaCPF) then
    Begin
      If not VerificaCPF(EdtCPFResponsavel.Text) Then
        Begin
          application.MessageBox('CPF inv�lido, por favor, verifique!', 'Aten��o!',
            mb_ok + MB_ICONWARNING);
          Exit;
        End;
    End;
end;

procedure TfrmCadPaciente.EdtDtNascChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtDtNascExit(Sender: TObject);
begin
  inherited;
  if EdtDtNasc.Text <> '  /  /    ' then
    Begin
      If DataIdade(EdtDtNasc.Text) > 17 Then gbResponsavel.Visible := False Else gbResponsavel.Visible := True;
    End;
end;

procedure TfrmCadPaciente.EdtEmailChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtEmpresaChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtEndChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtFuncaoChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtNomeChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtNomeExit(Sender: TObject);
var
  iRes : Integer;
begin
  inherited;
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NOME FROM PACIENTE');
      SQL.Add('WHERE NOME = :pNome');
      Parameters.ParamByName('pNome').Value := EdtNome.Text;
      Open;

      if Not Eof then
        Begin
         iRes := application.MessageBox
          (PChar('J� existe um Paciente cadastrado com o Nome de: '+ EdtNome.Text
          + #10 + #13 + 'deseja continuar o cadastro?'), 'Aten��o',
          MB_YESNO OR MB_DEFBUTTON2 OR MB_ICONEXCLAMATION);
        End;
    End;

  if iRes = IDNO then
    Begin
      Close;
    End;
end;

procedure TfrmCadPaciente.EdtNomeMaeChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtNomePaiChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtNroChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtReferenciaChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtTelChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.EdtTelComercialChange(Sender: TObject);
begin
  inherited;
  bSalvo := False;
end;

procedure TfrmCadPaciente.FormActivate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
  EdtNome.SetFocus;
end;

procedure TfrmCadPaciente.FormCreate(Sender: TObject);
begin
  inherited;
  bGravaAnamnese := False;
  bSalvo := True;
end;

procedure TfrmCadPaciente.GravaAnamnese;
var
  iIDPaciente, IDPacienteAnamense: Integer;
  dData: TDatetime;
begin

  dData := Now;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PACIENTE');
    SQL.Add('WHERE NOME = :pNome');
    SQL.Add('AND ID_CIDADE = :pCid');
    SQL.Add('AND CPF = :pCPF');
    Parameters.ParamByName('pNome').Value := EdtNome.Text;
    Parameters.ParamByName('pCid').Value := EdtCodCidade.Text;
    Parameters.ParamByName('pCpf').Value := EdtCPF.Text;
    Open;

    iIDPaciente := FieldByName('ID_PACIENTE').AsInteger;

    qryPerguntasAnamnese.First;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PACIENTEANAMNESE');
    SQL.Add('WHERE ID_PACIENTEANAMNESE = 0');
    Open;

    Append;
    FieldByName('ID_PACIENTE').AsInteger := iIDPaciente;
    FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
    FieldByName('DATA').AsDateTime := Now;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 ID_PACIENTEANAMNESE FROM PACIENTEANAMNESE');
    SQL.Add('ORDER BY ID_PACIENTEANAMNESE DESC');
    Open;

    IDPacienteAnamense := FieldByName('ID_PACIENTEANAMNESE').AsInteger;

    while not qryPerguntasAnamnese.eof do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASPACIENTEANAMNESE');
      SQL.Add('WHERE ID_PACIENTEANAMNESE = 0');
      Open;
      Append;

      FieldByName('ID_PACIENTEANAMNESE').AsInteger := IDPacienteAnamense;
      FieldByName('PERGUNTA').AsString := qryPerguntasAnamnesePergunta.AsString;
      FieldByName('AFIRMO').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('AFIRMO').AsBoolean;
      FieldByName('NEGO').AsBoolean := qryPerguntasAnamnese.FieldByName('NEGO')
        .AsBoolean;
      FieldByName('NAOSEI').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('NAOSEI').AsBoolean;
      FieldByName('OBRIGATORIO').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('OBRIGATORIO').AsBoolean;
      FieldByName('OBSERVACAO').AsString := qryPerguntasAnamnese.FieldByName
        ('OBSERVACAO').AsString;
      Post;

      qryPerguntasAnamnese.Next;

    End;
    bGravaAnamnese := True;
  End;
end;

procedure TfrmCadPaciente.JvApplicationHotKey1HotKey(Sender: TObject);
begin
  inherited;
  btnSalvarClick(Sender);
end;

procedure TfrmCadPaciente.PageControl1Change(Sender: TObject);
begin
  inherited;
  bSalvo := False;
  if PageControl1.TabIndex = 4 then
  Begin
    if NOT Operador.FotoPacienteV then
    Begin
      application.MessageBox
        ('Operador n�o tem permiss�o para acessar a lista de fotos do paci�nte!',
        'Acesso Negado', mb_ok + MB_ICONWARNING);
      PageControl1.TabIndex := 3;
      Exit;
    End;
  End;
end;

procedure TfrmCadPaciente.qryPerguntasAnamneseAFIRMOValidate(Sender: TField);
begin
  inherited;
  if qryPerguntasAnamneseAFIRMO.AsBoolean then
  Begin
    if qryPerguntasAnamneseNEGO.AsBoolean then
    Begin
      qryPerguntasAnamneseNEGO.AsBoolean := False;
    End;

    if qryPerguntasAnamneseNAOSEI.AsBoolean then
    Begin
      qryPerguntasAnamneseNAOSEI.AsBoolean := False;
    End;
  End;
end;

procedure TfrmCadPaciente.qryPerguntasAnamneseNAOSEIValidate(Sender: TField);
begin
  inherited;
  if qryPerguntasAnamneseNAOSEI.AsBoolean then
  Begin
    if qryPerguntasAnamneseAFIRMO.AsBoolean then
    Begin
      qryPerguntasAnamneseAFIRMO.AsBoolean := False;
    End;

    if qryPerguntasAnamneseNEGO.AsBoolean then
    Begin
      qryPerguntasAnamneseNEGO.AsBoolean := False;
    End;
  End;
end;

procedure TfrmCadPaciente.qryPerguntasAnamneseNEGOValidate(Sender: TField);
begin
  inherited;
  if qryPerguntasAnamneseNEGO.AsBoolean then
  Begin
    if qryPerguntasAnamneseAFIRMO.AsBoolean then
    Begin
      qryPerguntasAnamneseAFIRMO.AsBoolean := False;
    End;

    if qryPerguntasAnamneseNAOSEI.AsBoolean then
    Begin
      qryPerguntasAnamneseNAOSEI.AsBoolean := False;
    End;
  End;
end;

procedure TfrmCadPaciente.rgTitularClick(Sender: TObject);
begin
  inherited;
  case rgTitular.ItemIndex of
    0:
      Begin
        lblTitular.Visible := False;
        EdtCodTitular.Visible := False;
        EdtNomeTitular.Visible := False;
      End;

    1:
      Begin
        lblTitular.Visible := True;
        EdtCodTitular.Visible := True;
        EdtNomeTitular.Visible := True;
        // EdtCodTitularButtonClick(Sender);
      End;
  end;
end;



procedure TfrmCadPaciente.SpeedButton1Click(Sender: TObject);
begin

  if AbreFoto.Execute then
  Begin
    sCaminhoFoto := AbreFoto.FileName;
    imgFoto.Picture.LoadFromFile(sCaminhoFoto);
  End;

end;

procedure TfrmCadPaciente.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not Operador.FotoPacienteE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Editar fotos do paci�nte!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;
end;

procedure TfrmCadPaciente.VerificaAnamnese;
begin

  if EdtCodM.Text = '' then
  Begin
    application.MessageBox
      ('O campo "Dentista Respons�vel" da Anamnese � obrigat�rio o preenchimento da resposta!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCodM.SetFocus;
    Exit;
  End;

 { With qryPerguntasAnamnese do
  Begin
    First;

    while not eof do
    Begin
      if qryPerguntasAnamneseObrigatorio.AsBoolean then
      Begin
        if not qryPerguntasAnamneseAFIRMO.AsBoolean then
        Begin
          if not qryPerguntasAnamneseNEGO.AsBoolean then
          Begin
            if not qryPerguntasAnamneseNAOSEI.AsBoolean then
            Begin
              application.MessageBox
                ('Os campos  "Obr." da Anamnese s�o obrigat�rio o preenchimento da resposta!',
                'Erro!!!', mb_ok + MB_ICONERROR);
              Exit;
            End;
          End;
        End;
      End;

      Next;
    End;
  End;     }
end;

end.
