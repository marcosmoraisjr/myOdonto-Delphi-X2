unit F_Configuracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvExComCtrls, JvDateTimePicker, Vcl.StdCtrls,
  JvExControls, JvColorBox, JvColorButton, Vcl.Buttons, Funcoes, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvSpin, Vcl.Imaging.jpeg,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxFontNameComboBox, JvExStdCtrls, JvCombobox, JvColorCombo,
  cxCheckBox, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  Menus, cxButtons;

type
  TfrmConfiguracoes = class(TfrmPadrao)
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    qryAux: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdtInicialHrAgenda: TJvDateTimePicker;
    EdtFinalHrAgenda: TJvDateTimePicker;
    GroupBox2: TGroupBox;
    cbIntervalo: TComboBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    SpeedButton1: TSpeedButton;
    GroupBox6: TGroupBox;
    EdtViasRecibo: TJvSpinEdit;
    Relatóros: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label4: TLabel;
    EdtCaminhoLogo: TEdit;
    imgLogo: TImage;
    btnSelecionaLogo: TSpeedButton;
    GroupBox9: TGroupBox;
    mmoTextoCabecalho: TMemo;
    cbNomeFonte: TcxFontNameComboBox;
    Label5: TLabel;
    cbNegritoCabecalhoRel: TcxCheckBox;
    cbItalicoCabecalhoRel: TcxCheckBox;
    cbSublinhadoCabecalhoRel: TcxCheckBox;
    Label6: TLabel;
    cbTamanhoCabecalhoRel: TComboBox;
    cbCorCabecalhoRel: TJvColorButton;
    Label7: TLabel;
    AbreLogo: TOpenDialog;
    TabSheet3: TTabSheet;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Label3: TLabel;
    EdtSMTP: TEdit;
    Label8: TLabel;
    EdtPorta: TEdit;
    Label9: TLabel;
    EdtEmail: TEdit;
    Label10: TLabel;
    EdtSenhaEmail: TEdit;
    cbServidorAutenticacao: TCheckBox;
    cbServidorSSL: TCheckBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    Label11: TLabel;
    EdtHoraEnvioAgenda: TJvDateTimePicker;
    cbPacientesAgendamentoE: TCheckBox;
    cbPacientesFilaEncaixeE: TCheckBox;
    cbPacientesListaRetornoE: TCheckBox;
    cbEmailLembreteConsulta: TCheckBox;
    EdtDiasAntesEmail: TJvSpinEdit;
    Label12: TLabel;
    cbEnviarAgendaDentista: TCheckBox;
    GroupBox14: TGroupBox;
    Label13: TLabel;
    cbPacientesAgendamentoS: TCheckBox;
    cbPacientesFilaEncaixeS: TCheckBox;
    cbPacientesListaRetornoS: TCheckBox;
    cbSMSLembreteConsulta: TCheckBox;
    EdtDiasAntesSMS: TJvSpinEdit;
    GroupBox15: TGroupBox;
    mmoMensagemSMS: TMemo;
    lblCaracterSMS: TLabel;
    cmbSParam: TComboBox;
    btnAdicionarParametroSMS: TcxButton;
    GroupBox16: TGroupBox;
    EdtSMSRestante: TEdit;
    Label14: TLabel;
    cmbAdicionarSMS: TcxButton;
    cbCabPadraoReceituario: TCheckBox;
    cbCabPadraoAtestado: TCheckBox;
    GroupBox17: TGroupBox;
    cbValidarCPF: TCheckBox;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionaLogoClick(Sender: TObject);
    procedure cbNegritoCabecalhoRelClick(Sender: TObject);
    procedure cbItalicoCabecalhoRelClick(Sender: TObject);
    procedure cbSublinhadoCabecalhoRelClick(Sender: TObject);
    procedure cbCorCabecalhoRelChange(Sender: TObject);
    procedure cbNomeFontePropertiesChange(Sender: TObject);
    procedure cbTamanhoCabecalhoRelChange(Sender: TObject);
    procedure mmoMensagemSMSChange(Sender: TObject);
    procedure btnAdicionarParametroSMSClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    Procedure GravaCFGGeral;
    Procedure CarregaCFG;
    Procedure CarregaRelatorio;
    Procedure GravaRelatorio;
    Function AtualizaEstiloFonte : TFontStyles;
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation

{$R *.dfm}

uses SelecionaServidor;

function TfrmConfiguracoes.AtualizaEstiloFonte: TFontStyles;
var
  Estilo : TFontStyles;
begin

  Estilo := [];

  if cbNegritoCabecalhoRel.Checked then
    Begin
      Estilo := Estilo + [fsBold];
    End;

  if cbItalicoCabecalhoRel.Checked then
    Begin
      Estilo := Estilo + [fsItalic];
    End;

  if cbSublinhadoCabecalhoRel.Checked then
    Begin
      Estilo := Estilo + [fsUnderline];
    End;

  Result := Estilo

end;

procedure TfrmConfiguracoes.btnAdicionarParametroSMSClick(Sender: TObject);
begin
  inherited;
  case cmbSParam.ItemIndex of
    0: mmoMensagemSMS.Lines.Add('[NOMEDOPACIENTE]');
    1: mmoMensagemSMS.Lines.Add('[HR]');
    2: mmoMensagemSMS.Lines.Add('[DTAAGEND]');
    3: mmoMensagemSMS.Lines.Add('[DENTISTA]');
  end;

  mmoMensagemSMSChange(Self);
end;

procedure TfrmConfiguracoes.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConfiguracoes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  SalvarIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'IntervaloID',
    IntToStr(cbIntervalo.ItemIndex));
  SalvarIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'Intervalo',
    cbIntervalo.Text);
  SalvarIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'HoraInicial',
    TimeToStr(EdtInicialHrAgenda.Time));
  SalvarIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'HoraFinal',
    TimeToStr(EdtFinalHrAgenda.Time));

  GravaCFGGeral;
  GravaRelatorio;
  Close;
end;

procedure TfrmConfiguracoes.btnSelecionaLogoClick(Sender: TObject);
begin
  inherited;
  AbreLogo.Execute;
  EdtCaminhoLogo.Text := AbreLogo.FileName;
  imgLogo.Picture.LoadFromFile(AbreLogo.FileName);
end;

procedure TfrmConfiguracoes.CarregaCFG;
begin
  cbCabPadraoReceituario.Checked            := CFGGeral.ImpCabReceituario;
  cbCabPadraoAtestado.Checked               := CFGGeral.ImpCabAtestado;
  EdtViasRecibo.Value                       := FloatToCurr(CFGGeral.ViasRecibo);
  EdtSMTP.Text                              := CFGGeral.ESMTP;
  EdtPorta.Text                             := IntToStr(CFGGeral.EPorta);
  EdtEmail.Text                             := CFGGeral.EEmail;
  EdtSenhaEmail.Text                        := CFGGeral.ESenha;
  cbServidorAutenticacao.Checked            := CFGGeral.ERequerAutenticacao;
  cbServidorSSL.Checked                     := CFGGeral.EConexaoSSL;
  cbPacientesAgendamentoE.Checked           := CFGGeral.EPacienteAgendamento;
  cbPacientesFilaEncaixeE.Checked           := CFGGeral.EPacienteFilaEncaixe;
  cbPacientesListaRetornoE.Checked          := CFGGeral.EPacienteListaRetorno;
  cbEmailLembreteConsulta.Checked           := CFGGeral.ELembreteConsulta;
  EdtDiasAntesEmail.Value                   := CFGGeral.EDiasAntesEnvio;
  cbEnviarAgendaDentista.Checked            := CFGGeral.EEnviaAgenda;
  if CFGGeral.EHoraDeEnvio <> '' then EdtHoraEnvioAgenda.Time := StrToTime(CFGGeral.EHoraDeEnvio);

  cbPacientesAgendamentoS.Checked           := CFGGeral.SPacienteAgendamento;
  cbPacientesFilaEncaixeS.Checked           := CFGGeral.SPacienteFilaEncaixe;
  cbPacientesListaRetornoS.Checked          := CFGGeral.SPacienteListaRetorno;
  cbSMSLembreteConsulta.Checked             := CFGGeral.SLembreteConsulta;
  EdtDiasAntesSMS.Value                     := CFGGeral.SDiasAntesEnvio;
  if CFGGeral.SMensagem <> '' then mmoMensagemSMS.Lines.Text := CFGGeral.SMensagem;
  EdtSMSRestante.Text                       := IntToStr(CFGGeral.QTDESMS);
  cbValidarCPF.Checked                      := CFGGeral.ValidaCPF;

end;

procedure TfrmConfiguracoes.CarregaRelatorio;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CFGRELATORIO');
    SQL.Add('WHERE ID_CFGRELATORIO = 1');
    Open;

    if not Eof then
      Begin
        mmoTextoCabecalho.Lines.Text        := FieldByName('TEXTO').AsString;
        cbNomeFonte.FontName                := FieldByName('FONTE').AsString;
        cbNegritoCabecalhoRel.Checked       := FieldByName('NEGRITO').AsBoolean;
        cbItalicoCabecalhoRel.Checked       := FieldByName('ITALICO').AsBoolean;
        cbSublinhadoCabecalhoRel.Checked    := FieldByName('SUBLINHADO').AsBoolean;
        cbTamanhoCabecalhoRel.Text          := FieldByName('TAMANHO').AsString;
        cbCorCabecalhoRel.Color             := StringToColor(FieldByName('COR').AsString);
        cbTamanhoCabecalhoRel.ItemIndex     := FieldByName('CBTAMANHO').AsInteger;

        if FieldByName('LOGO').AsString <> '' then
          Begin
            EdtCaminhoLogo.Text             := 'Banco de dados';
            (FieldByName('LOGO') As TBlobField).SaveToFile('C:\Odontosis\Logo.jpg');
            imgLogo.Picture.LoadFromFile('C:\Odontosis\Logo.jpg');
          End;
      End;
  End;

  cbNomeFontePropertiesChange(Self);
  cbNegritoCabecalhoRelClick(Self);
  cbCorCabecalhoRelChange(Self);
  cbTamanhoCabecalhoRelChange(Self);
end;

procedure TfrmConfiguracoes.cbCorCabecalhoRelChange(Sender: TObject);
begin
  inherited;
  mmoTextoCabecalho.Font.Color := cbCorCabecalhoRel.Color;
end;

procedure TfrmConfiguracoes.cbItalicoCabecalhoRelClick(Sender: TObject);
begin
  inherited;
  mmoTextoCabecalho.Font.Style := AtualizaEstiloFonte;
end;

procedure TfrmConfiguracoes.cbNegritoCabecalhoRelClick(Sender: TObject);
begin
  inherited;
  mmoTextoCabecalho.Font.Style := AtualizaEstiloFonte;
end;

procedure TfrmConfiguracoes.cbNomeFontePropertiesChange(Sender: TObject);
begin
  inherited;
  mmoTextoCabecalho.Font.Name := cbNomeFonte.FontName;
end;

procedure TfrmConfiguracoes.cbSublinhadoCabecalhoRelClick(Sender: TObject);
begin
  inherited;
  mmoTextoCabecalho.Font.Style := AtualizaEstiloFonte;
end;

procedure TfrmConfiguracoes.cbTamanhoCabecalhoRelChange(Sender: TObject);
begin
  inherited;
  mmoTextoCabecalho.Font.Size := StrToInt(cbTamanhoCabecalhoRel.Text);
end;

procedure TfrmConfiguracoes.FormCreate(Sender: TObject);
begin
  inherited;
 PageControl1.TabIndex := 0;
 cbNomeFonte.FontName := 'Arial';

  if (LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'HoraInicial')) <> ''
  then
  Begin
    EdtInicialHrAgenda.Time := StrTotime(LerIni(PastaArquivo + '\CFGLocal.ini',
      'Agenda', 'HoraInicial'));
  end;

  if (LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'HoraFinal')) <> ''
  then
  Begin
    EdtFinalHrAgenda.Time := StrTotime(LerIni(PastaArquivo + '\CFGLocal.ini',
      'Agenda', 'HoraFinal'));
  end;

  if (LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'IntervaloID')) <> ''
  then
  Begin
    cbIntervalo.ItemIndex := StrToInt(LerIni(PastaArquivo + '\CFGLocal.ini',
      'Agenda', 'IntervaloID'));
  end;

  CarregaCFG;
  CarregaRelatorio;
end;

procedure TfrmConfiguracoes.GravaCFGGeral;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CFGGERAL');
      SQL.Add('WHERE ID_CFGGERAL = 1');
      Open;

      Edit;
      FieldByName('ImpCabReceituario').AsBoolean        := cbCabPadraoReceituario.Checked;
      FieldBYName('ImpCabAtestado').AsBoolean           := cbCabPadraoAtestado.Checked;
      FieldByName('VIASRECIBO').AsFloat                 := EdtViasRecibo.Value;
      FieldByName('SMTP').AsString                      := EdtSMTP.Text;
      FieldByName('PORTA').AsString                     := EdtPorta.Text;
      FieldByName('EMAIL').AsString                     := EdtEmail.Text;
      FieldByName('SENHA').AsString                     := EdtSenhaEmail.Text;
      FieldByName('REQUERAUTENTICACAO').AsBoolean       := cbServidorAutenticacao.Checked;
      FieldByName('CONEXAOSEGURASSL').AsBoolean         := cbServidorSSL.Checked;
      FieldByName('EPACIENTEAGENDAMENTO').AsBoolean     := cbPacientesAgendamentoE.Checked;
      FieldByName('EPACIENTEFILAENCAIXE').AsBoolean     := cbPacientesFilaEncaixeE.Checked;
      FieldByName('EPACIENTERETORNO').AsBoolean         := cbPacientesListaRetornoE.Checked;
      FieldByName('ELEMBRETECONSULTA').AsBoolean        := cbEmailLembreteConsulta.Checked;
      FieldByName('EDIASANTES').AsFloat                 := EdtDiasAntesEmail.Value;
      FieldByName('EENVIAAGANDA').AsBoolean             := cbEnviarAgendaDentista.Checked;
      FieldByName('EHORARIODEENVIO').AsString           := TimeToStr(EdtHoraEnvioAgenda.Time);
      FieldByName('SPACIENTEAGENDAMENTO').AsBoolean     := cbPacientesAgendamentoS.Checked;
      FieldByName('SPACIENTEFILAENCAIXE').AsBoolean     := cbPacientesFilaEncaixeS.Checked;
      FieldByName('SPACIENTERETORNO').AsBoolean         := cbPacientesListaRetornoS.Checked;
      FieldByName('SLEMBRETECONSULTA').AsBoolean        := cbSMSLembreteConsulta.Checked;
      FieldByName('SDIASANTES').AsFloat                 := EdtDiasAntesSMS.Value;
      FieldByName('SMENSAGEM').AsString                 := mmoMensagemSMS.Lines.Text;
      FieldByName('VALIDACPF').AsBoolean                := cbValidarCPF.Checked;
      Post;
    End;

    CarregaCFGGeral;
end;

procedure TfrmConfiguracoes.GravaRelatorio;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CFGRELATORIO');
    SQL.Add('WHERE ID_CFGRELATORIO = 1');
    Open;

    if Eof then Append Else Edit;

    FieldByName('TEXTO').AsString           := mmoTextoCabecalho.Lines.Text;
    FieldByName('FONTE').AsString           := cbNomeFonte.FontName;
    FieldByName('NEGRITO').AsBoolean        := cbNegritoCabecalhoRel.Checked;
    FieldByName('ITALICO').AsBoolean        := cbItalicoCabecalhoRel.Checked;
    FieldByName('SUBLINHADO').AsBoolean     := cbSublinhadoCabecalhoRel.Checked;
    FieldByName('TAMANHO').AsInteger        := StrToInt(cbTamanhoCabecalhoRel.Text);
    FieldByName('COR').AsString             := ColorToString(cbCorCabecalhoRel.Color);
    FieldByName('CBTAMANHO').AsInteger      := cbTamanhoCabecalhoRel.ItemIndex;

    if (EdtCaminhoLogo.Text <> '') and (EdtCaminhoLogo.Text <> 'Banco de dados') then
      Begin
        (FieldByName('LOGO') As TBlobField).LoadFromFile(EdtCaminhoLogo.Text);
      End;

    Post;
  End;
end;

procedure TfrmConfiguracoes.mmoMensagemSMSChange(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  I := Length(mmoMensagemSMS.Lines.Text);

  lblCaracterSMS.Caption := IntToStr(i) +'/120';
end;

procedure TfrmConfiguracoes.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AbreForm(TfrmSelecionaServidor, frmSelecionaServidor);
end;

end.
