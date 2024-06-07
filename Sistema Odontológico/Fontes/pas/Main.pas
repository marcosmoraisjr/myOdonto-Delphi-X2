unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, XPMenu,
  Funcoes,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Data.Win.ADODB,
  Data.DB, JvComponentBase, JvEnterTab, Vcl.Mask, Vcl.DBCtrls, OgUtil, OnGuard,
  Vcl.ExtCtrls, DateUtils, Vcl.Buttons, Vcl.ToolWin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxSchedulerPainter, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, Menus, cxLocalization,
  cxSchedulerDBStorage, cxClasses, JvXPCore, Vcl.ImgList, JvMenus, cxButtons,
  JvExControls, JvButton, JvNavigationPane, JvXPButtons, Registry,
  JvComputerInfoEx, JvExExtCtrls, JvExtComponent, JvRollOut, TypInfo, FuncaoNet;

type
  TfrmMain = class(TForm)
    StatusBar1: TStatusBar;
    Menu: TMainMenu;
    CorMenu: TXPMenu;
    Cadastro1: TMenuItem;
    Este1: TMenuItem;
    Convnios1: TMenuItem;
    Financeiro1: TMenuItem;
    Relatrios1: TMenuItem;
    Utilitrios1: TMenuItem;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    mUsarCaixa: TMenuItem;
    dsAgenda: TDataSource;
    Enter: TJvEnterAsTab;
    Cidade1: TMenuItem;
    Mdicos1: TMenuItem;
    qryAux: TADOQuery;
    Configuraes1: TMenuItem;
    qryEncaixe: TADOQuery;
    dsEncaixe: TDataSource;
    Procedimentos1: TMenuItem;
    qryAgenda: TADOQuery;
    GroupBox1: TGroupBox;
    GroupBox6: TGroupBox;
    Tradutor: TcxLocalizer;
    Feriados: TcxSchedulerHolidays;
    AgendaDB: TcxSchedulerDBStorage;
    qryAgendaID_PACIENTE: TIntegerField;
    qryAgendaID_MEDICO: TIntegerField;
    qryAgendaID_AGENDA: TAutoIncField;
    qryAgendaINICIO: TDateTimeField;
    qryAgendaFIM: TDateTimeField;
    qryAgendaOPCAO: TIntegerField;
    qryAgendaTIPOEVENTO: TIntegerField;
    qryAgendaSTATUS: TIntegerField;
    qryAgendaCORLABEL: TStringField;
    qryAgendaTIPO: TIntegerField;
    qryAgendaSERVICO: TStringField;
    qryAgendaOBSERVACAO: TMemoField;
    qryAgendaNOME: TStringField;
    dsMedico: TDataSource;
    qryMedico: TADOQuery;
    qryMedicoID_MEDICO: TAutoIncField;
    qryMedicoNOME: TStringField;
    TimerAgenda: TTimer;
    qryEncaixeID_ENCAIXE: TAutoIncField;
    qryEncaixeID_PACIENTE: TIntegerField;
    qryEncaixeID_CONVENIO: TIntegerField;
    qryEncaixeID_MEDICO: TIntegerField;
    qryEncaixeDATA: TDateTimeField;
    qryEncaixeOBSERVACAO: TMemoField;
    qryEncaixeNOME: TStringField;
    qryEncaixeConvenio: TStringField;
    qryEncaixeTELEFONE: TStringField;
    qryEncaixeCELULAR: TStringField;
    lfController: TcxLookAndFeelController;
    EstiloAgenda: TcxStyleRepository;
    Resource: TcxStyle;
    stContent: TcxStyle;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnPaciente: TToolButton;
    Image48: TImageList;
    ToolButton1: TToolButton;
    btnSair: TToolButton;
    Hora: TTimer;
    cbListaDentistas: TToolButton;
    btnConvenios: TToolButton;
    btnCaixa: TToolButton;
    ToolButton3: TToolButton;
    BtnRelatorios: TToolButton;
    ToolButton2: TToolButton;
    btnContasReceber: TToolButton;
    BtnContasPagar: TToolButton;
    Operadores1: TMenuItem;
    cxStyle1: TcxStyle;
    Agenda: TcxScheduler;
    gbAgenda: TGroupBox;
    btnAgendaDia: TJvXPButton;
    btnAgendaSemana: TJvXPButton;
    btnAgendaMes: TJvXPButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnAgendaSemanaTrabalho: TJvXPButton;
    Documentos1: TMenuItem;
    GroupBox4: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    GroupBox5: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    MenuFilaEncaixe: TPopupMenu;
    AdicionarEncaixe1: TMenuItem;
    EditarEncaixe1: TMenuItem;
    MenuListaRetorno: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    dsRetorno: TDataSource;
    qryRetorno: TADOQuery;
    Label6: TLabel;
    AReceiturio1: TMenuItem;
    BAtestado1: TMenuItem;
    CTermodeConsentimento1: TMenuItem;
    ToolButton4: TToolButton;
    btnReceituario: TToolButton;
    btnAtestado: TToolButton;
    BtnTermoCon: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    btnProcedimento: TToolButton;
    qryRetornoID_RETORNO: TAutoIncField;
    qryRetornoDATA: TDateTimeField;
    qryRetornoPaciente: TStringField;
    N1: TMenuItem;
    SaquedeValores1: TMenuItem;
    CReforoCaixa1: TMenuItem;
    DFechamentoCaixa1: TMenuItem;
    N2: TMenuItem;
    BLanamentoCaixa1: TMenuItem;
    CConfernciadeLanamentos1: TMenuItem;
    GTtulosaPagar1: TMenuItem;
    HTtulosaReceber1: TMenuItem;
    GRelatrioCaixaGeral1: TMenuItem;
    btnAgendaTelefone: TToolButton;
    AgendaTelefnica1: TMenuItem;
    FFornecedores1: TMenuItem;
    Label7: TLabel;
    GBancos1: TMenuItem;
    ABancosPadro1: TMenuItem;
    BContasBancrias1: TMenuItem;
    N3: TMenuItem;
    JCheques1: TMenuItem;
    AChequesRecebidos1: TMenuItem;
    GroupBox3: TGroupBox;
    cmbDentistas: TComboBox;
    HContasBancrias1: TMenuItem;
    AConfernciadeLanamentos1: TMenuItem;
    BTransfernciadeSaldos1: TMenuItem;
    AParticular1: TMenuItem;
    BConvnio1: TMenuItem;
    Computador: TJvComputerInfoEx;
    DDocumentosPersonalizados1: TMenuItem;
    AListadeDocumentosPersonalizados1: TMenuItem;
    BListadeDocumentosEmitidos1: TMenuItem;
    DConsultrios1: TMenuItem;
    N4: TMenuItem;
    FBancodeDados1: TMenuItem;
    N5: TMenuItem;
    ACpiadeSegurana1: TMenuItem;
    BRestaurarCpiadeSegurana1: TMenuItem;
    ASobreaOdontosis1: TMenuItem;
    N6: TMenuItem;
    BCorreeseMelhoriasOdontosisnaWeb1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    FPlanodeTratamento1: TMenuItem;
    btnPlanoTratamento: TToolButton;
    MenuLembretes: TJvRollOut;
    btnAddNovoLembrete: TcxButton;
    FProdutosMateriais1: TMenuItem;
    N14: TMenuItem;
    CAdicionarchavedeacesso1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Este1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Cidade1Click(Sender: TObject);
    procedure Convnios1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
    procedure gListaDblClick(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Procedimentos1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure AgendaEventSelectionChanged(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure AgendaDblClick(Sender: TObject);
    procedure TimerAgendaTimer(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPacienteClick(Sender: TObject);
    procedure HoraTimer(Sender: TObject);
    procedure cbListaDentistasClick(Sender: TObject);
    procedure btnConveniosClick(Sender: TObject);
    procedure BtnRelatoriosClick(Sender: TObject);
    procedure btnAgendaSemanaClick(Sender: TObject);
    procedure btnAgendaDiaClick(Sender: TObject);
    procedure btnAgendaSemanaTrabalhoClick(Sender: TObject);
    procedure btnAgendaMesClick(Sender: TObject);
    procedure Operadores1Click(Sender: TObject);
    procedure AReceiturio1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure AbrirNovoCaixa(Sender: TObject);
    procedure ClickCaixaEscolhido(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure CReforoCaixa1Click(Sender: TObject);
    procedure SaquedeValores1Click(Sender: TObject);
    procedure CConfernciadeLanamentos1Click(Sender: TObject);
    procedure BLanamentoCaixa1Click(Sender: TObject);
    procedure DFechamentoCaixa1Click(Sender: TObject);
    procedure AgendaTelefnica1Click(Sender: TObject);
    procedure GTtulosaPagar1Click(Sender: TObject);
    procedure FFornecedores1Click(Sender: TObject);
    procedure ABancosPadro1Click(Sender: TObject);
    procedure BContasBancrias1Click(Sender: TObject);
    procedure HTtulosaReceber1Click(Sender: TObject);
    procedure GRelatrioCaixaGeral1Click(Sender: TObject);
    procedure AChequesRecebidos1Click(Sender: TObject);
    procedure cmbDentistasClick(Sender: TObject);
    procedure AConfernciadeLanamentos1Click(Sender: TObject);
    procedure BTransfernciadeSaldos1Click(Sender: TObject);
    procedure BConvnio1Click(Sender: TObject);
    procedure CTermodeConsentimento1Click(Sender: TObject);
    procedure AListadeDocumentosPersonalizados1Click(Sender: TObject);
    procedure BListadeDocumentosEmitidos1Click(Sender: TObject);
    procedure BAtestado1Click(Sender: TObject);
    procedure DConsultrios1Click(Sender: TObject);
    procedure ACpiadeSegurana1Click(Sender: TObject);
    procedure BRestaurarCpiadeSegurana1Click(Sender: TObject);
    procedure ASobreaOdontosis1Click(Sender: TObject);
    procedure FPlanodeTratamento1Click(Sender: TObject);
    procedure btnAddNovoLembreteClick(Sender: TObject);
    procedure FProdutosMateriais1Click(Sender: TObject);
    procedure CAdicionarchavedeacesso1Click(Sender: TObject);
  private
    iBanco: Integer;
    Procedure VerificaMensalidade;
    Procedure VerificaDemo;
    Procedure VerificaUltimoLogin;
    Procedure VerificaDB;
    Procedure AtualizaAgenda;
    Procedure VerificaCaixaOperador;
    Procedure CarregaMenuCaixas;
    Procedure MontaComboDentistas;
    Procedure DeletaLixos;
    Procedure CriaLembretes;
    Procedure DeletaLembrete(Sender : TObject);
    Procedure EditaLembrete(Sender : TObject);
    Function RenovaOnlineMensalidade(iConexao : Integer; sCodCliente : String) : Boolean;
  public
    { Public declarations }
    iIDAgenda, iRef, iCodConvenio: Integer;
    sFone, sDescricao, sCodCid, sCod, sCodIBGE, sNomeCidade, sUF: String;
    bOk, bEditar, isLoad, bPulaTelaInicio: Boolean;
    dDataAux: TDate;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDM, L_Paciente, L_Cidade, C_Convenio, L_Convenios, L_Medicos,
  Lock, AgendaPaciente, F_Configuracoes,
  SelecionaServidor, F_Encaixe,
  L_Procedimentos, Relatorios, C_Empresa,
  CadastroOperadores, TelaLogin, L_Receituario, F_Retorno, F_AbreCaixa, F_Sobre,
  F_ReforcoCaixa, F_SaqueValores, F_ConferenciaLctos, F_LancamentoCaixa,
  F_FechamentoCaixa, L_AgendaTelefonica, F_TitulosPagar, L_Fornecedores,
  F_Atualizacao, P_BancosPadrao, L_ContasBancarias, F_TitulosReceber,
  F_RelCaixaGeral, F_ChequesRecebidos, F_ConferenciaLctosContasBancarias,
  F_TransferenciaSaldos, F_TitulosReceberConvenio, L_TermoConsentimento,
  EditorTexto, L_DocumentosPersonalizados, L_DocumentosPersonalizadosEmitidos,
  Splash, Mensagem, L_Empresas, F_Sair, F_PlanosTratamento, F_Lembretes,
  L_Estoque, L_Atestados, F_NotificacaoFinanceira, F_AutoUpdate;

const
  EncryptionKey: TKey = ($F9, $EF, $84, $D6, $92, $C9, $8E, $9F, $1A, $FA, $8F,
    $8D, $AB, $2C, $DF, $B4);

procedure TfrmMain.cbListaDentistasClick(Sender: TObject);
var
  iAux: Integer;
begin
  Mdicos1Click(Sender);
  iAux := cmbDentistas.ItemIndex;
  MontaComboDentistas;
  cmbDentistas.ItemIndex := iAux;
  cmbDentistasClick(Self);
end;

procedure TfrmMain.CConfernciadeLanamentos1Click(Sender: TObject);
begin
  if not Operador.ConfLancCaixa then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista confer�ncia de lan�amentos caixa!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmConfCaixa, frmConfCaixa);
end;

procedure TfrmMain.Cidade1Click(Sender: TObject);
begin
  if Not Operador.CidadesV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de  cidades!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaCidade, frmListaCidade);
end;

procedure TfrmMain.ClickCaixaEscolhido(Sender: TObject);
begin
  CarregaDadosCaixa(TComponent(Sender).Tag);
  CarregaMenuCaixas;
end;

procedure TfrmMain.cmbDentistasClick(Sender: TObject);
begin
  if cmbDentistas.ItemIndex = 0 then
  Begin
    With qryMedico do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MEDICOS');
      SQL.Add('WHERE ATIVO = 1');
      Open;
    End;
  End
  Else
  Begin
    With qryMedico do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MEDICOS');
      SQL.Add('WHERE ATIVO = 1');
      SQL.Add('AND NOME = :pNome');
      Parameters.ParamByName('pNome').Value := cmbDentistas.Text;
      Open;
    End;
  End;

end;

procedure TfrmMain.Configuraes1Click(Sender: TObject);
begin
  AbreForm(TfrmConfiguracoes, frmConfiguracoes);
  AtualizaAgenda;
end;

procedure TfrmMain.Convnios1Click(Sender: TObject);
begin
  if Not Operador.ConveniosV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de convenios!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

 Application.CreateForm(TfrmListaConvenios, frmListaConvenios);
 frmListaConvenios.btnSelecionar.Visible := False;
 frmListaConvenios.btnAdicionar.Left := 0;
 frmListaConvenios.btnEditar.Left := 106;
 frmListaConvenios.ShowModal;
 FreeAndNil(frmListaConvenios);

end;

procedure TfrmMain.CReforoCaixa1Click(Sender: TObject);
begin
  if not Operador.ReforcoCaixa then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para lan�ar um refor�o no caixa!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if Caixa.IDCaixa = -1 then
  Begin
    application.MessageBox('Imposs�vel lan�ar um refo�o no caixa geral!',
      'Aten��o!', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmReforcoCaixa, frmReforcoCaixa);
end;

procedure TfrmMain.CriaLembretes;
var
  i : Currency;
  Grupo : TGroupBox;
  Memo  : TMemo;
  Botao : TSpeedButton;
  Titulo : TLabel;
  sDelete : String;
begin

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM LEMBRETES');
      SQL.Add('WHERE ID_OPERADOR = :pID');
      SQL.Add('ORDER BY DATA');
      Parameters.ParamByName('pID').Value := Operador.ID;
      Open;

      I := 0;

      while Not Eof do
        Begin

          if Assigned(PChar('Grupo' + FieldByName('ID_LEMBRETES').AsString)) then
            Begin
              sDelete := 'MemoLembrete' + FieldByName('ID_LEMBRETES').AsString;
              frmMain.FindComponent(sDelete).Free;
              sDelete := 'LabelLembrete' + FieldByName('ID_LEMBRETES').AsString;
              frmMain.FindComponent(sDelete).Free;
              sDelete := 'BotaoLembrete' + FieldByName('ID_LEMBRETES').AsString;
              frmMain.FindComponent(sDelete).Free;
              sDelete := 'GrupoLembrete' + FieldByName('ID_LEMBRETES').AsString;
              frmMain.FindComponent(sDelete).Free;
            End;
              i := i + 1;
              Grupo := TGroupBox.Create(Self);
              Grupo.Color := $00B6F7F8;
              Grupo.ParentBackground := False;
              Grupo.Align := AlTop;
              Grupo.Name := 'Grupo'+ FieldByName('ID_LEMBRETES').AsString;
              Grupo.Parent := MenuLembretes;
              Grupo.Caption := '';
              Grupo.Name := 'GrupoLembrete' + FieldByName('ID_LEMBRETES').AsString;

              Botao := TSpeedButton.Create(Self);
              Botao.Flat := True;
              Botao.Caption := 'X';
              Botao.Font.Color := $00648888;
              Botao.Font.Name := 'Viner Hand ITC';
              Botao.Font.Size := 12;
              Botao.Parent := Grupo;
              Botao.Left := 161;
              Botao.Hint := 'Deletar o Lembrete';
              Botao.ShowHint := True;
              Botao.OnClick := DeletaLembrete;
              Botao.Name := 'BotaoLembrete' + FieldByName('ID_LEMBRETES').AsString;
              Botao.Tag := FieldByName('ID_LEMBRETES').AsInteger;

              Memo := TMemo.Create(Self);
              Memo.Color := $00C9FDFD;
              Memo.Width := 187;
              Memo.Top := 20;
              Memo.Height := 105;
              Memo.TabStop := False;
              Memo.Parent := Grupo;
              Memo.ReadOnly := True;
              Memo.Name := 'MemoLembrete' + FieldByName('ID_LEMBRETES').AsString;
              Memo.Lines.Text := FieldByName('MENSAGEM').AsString;
              Memo.OnClick := EditaLembrete;
              Memo.Tag := FieldByName('ID_LEMBRETES').AsInteger;

              Titulo := TLabel.Create(Self);
              Titulo.Font.Style := [fsBold];
              Titulo.Caption := FieldByName('TITULO').AsString + ' - ' +FormatDateTime('DD/MM/YYYY', FieldByName('DATA').AsDateTime);
              TItulo.Font.Color := $00648888;
              Titulo.Parent := Grupo;
              Titulo.Top := 4;
              Titulo.Left := 6;
              Titulo.Name := 'LabelLembrete' + FieldByName('ID_LEMBRETES').AsString;
              Next;
            End;
      End;

    MenuLembretes.Caption := 'Lembretes - ' + FormatFloat('000', i)
end;

procedure TfrmMain.CTermodeConsentimento1Click(Sender: TObject);
begin
  if not Operador.TermosV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para acessar a lista de termos de consentimentos!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaTermoConsentimento, frmListaTermoConsentimento);
end;

procedure TfrmMain.DConsultrios1Click(Sender: TObject);
begin
  AbreForm(TfrmListaConsultorios, frmListaConsultorios);
end;

procedure TfrmMain.DeletaLembrete(Sender : TObject);
var
  sDelete : String;
begin
  If Application.MessageBox(PChar('Deseja deletar esse lembrete?'), 'Aten��o!',
    MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then
      Begin
        sDelete := 'MemoLembrete' + IntToStr((Sender As TSpeedButton).Tag);
        frmMain.FindComponent(sDelete).Free;
        sDelete := 'LabelLembrete' + IntToStr((Sender As TSpeedButton).Tag);
        frmMain.FindComponent(sDelete).Free;
        sDelete := 'BotaoLembrete' + IntToStr((Sender As TSpeedButton).Tag);
        frmMain.FindComponent(sDelete).Free;
        sDelete := 'GrupoLembrete' + IntToStr((Sender As TSpeedButton).Tag);
        frmMain.FindComponent(sDelete).Free;

        With qryAux do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('DELETE FROM LEMBRETES');
            SQL.Add('WHERE ID_LEMBRETES = :pID');
            Parameters.ParamByName('pID').Value := (Sender As TSpeedButton).Tag;
            ExecSQL;
          End;
      End;
    CriaLembretes;
end;

procedure TfrmMain.DeletaLixos;
begin
  if (CFGAcesso.Servidor <> '.\ODONTOSIS') then
    Begin
      if (CFGAcesso.Servidor <> NomeComputador+'\ODONTOSIS') then
        Begin
        if FileExists('C:\Odontosis\Data\ODSIMAGENS.mdf') then
        Begin
          DeleteFile('C:\Odontosis\Data\ODSIMAGENS.mdf');
          DeleteFile('C:\Odontosis\Data\ODSIMAGENS_log.ldf');
        End;
        if FileExists('C:\Odontosis\Data\ODSWord.mdf') then
        Begin
          DeleteFile('C:\Odontosis\Data\ODSWord.mdf');
          DeleteFile('C:\Odontosis\Data\ODSWord_log.ldf');
        End;
        if FileExists('C:\Odontosis\Data\ODONTOSIS.mdf') then
        Begin
          DeleteFile('C:\Odontosis\Data\ODONTOSIS.mdf');
          DeleteFile('C:\Odontosis\Data\ODONTOSIS_log.ldf');
        End;
        if FileExists('C:\Odontosis\Data\ODSUPDATE.mdf') then
        Begin
          DeleteFile('C:\Odontosis\Data\ODSUPDATE.mdf');
          DeleteFile('C:\Odontosis\Data\ODSUPDATE_log.ldf');
        End;

        RemoveDir('C:\Odontosis\Data\');
        End;
    End;
end;

procedure TfrmMain.DFechamentoCaixa1Click(Sender: TObject);
begin
  if not Operador.CaixaV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar o Caixa!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
    Exit;
  End;
  AbreForm(TfrmFechamentoCaixa, frmFechamentoCaixa);
  CarregaDadosCaixa(Caixa.IDCaixa);
  CarregaMenuCaixas;
end;

procedure TfrmMain.EditaLembrete(Sender: TObject);
begin
  Application.CreateForm(TfrmLembretes, frmLembretes);
  frmLembretes.CarregaLembrete((Sender As TMemo).Tag);
  frmLembretes.ShowModal;
  FreeAndNil(frmLembretes);
  CriaLembretes;
end;

procedure TfrmMain.Este1Click(Sender: TObject);
begin

  if not Operador.ListaPacienteV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para acessar a lista de paci�ntes!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaPacientes, frmListaPacientes);
end;

procedure TfrmMain.FFornecedores1Click(Sender: TObject);
begin
  if not Operador.FornecedorV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para acessar a lista de fornecedores!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaFornecedores, frmListaFornecedores);
end;

procedure TfrmMain.FormActivate(Sender: TObject);
var
  I: Integer;
  tIntervalo: TTime;
  tHora: TTime;
  tHoraFin: TTime;
  sDataIni, sAux, sData: String;
  bNotificacao : Boolean;
begin
  if isLoad then
  Begin
    VerificaCaixaOperador;
    CarregaMenuCaixas;
    StatusBar1.Panels[3].Text := Operador.Nome;
    isLoad := False;
    MontaComboDentistas;
    CriaLembretes;

    if (CFGGeral.SLembreteConsulta) and (CFGGeral.QTDESMS > 0) then EnviaLembretesSMS;


    if Operador.NotificacaoFinanceira then
      Begin
        bNotificacao := False;
        sDataIni := DateToStr(Now);
        sDataIni := sDataIni + ' 00:00:00';

        With qryAux do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT CONTAPAGAR.ID_CONTAPAGAR, CONTAPAGAR.ID_FILIAL, CONTAPAGAR.ID_FORNECEDOR, CONTAPAGAR.SITUACAO, CONTAPAGAR.HISTORICO, CONTAPAGAR.NRONOTA, CONTAPAGAR.DOCUMENTO,');
            SQL.Add('CONTAPAGAR.DTACONTA, CONTAPAGAR.DTAVENCIMENTO, CONTAPAGAR.DTAPAGAMENTO, CONTAPAGAR.VALOR, CONTAPAGAR.VALORPAGO, CONTAPAGAR.VALORJUROS, CONTAPAGAR.VALORDESCONTO,');
            SQL.Add('CONTAPAGAR.VALORRESTANTE, FORNECEDOR.NOME AS FORNECEDOR FROM CONTAPAGAR');
            SQL.Add('INNER JOIN FORNECEDOR ON CONTAPAGAR.ID_FORNECEDOR = FORNECEDOR.ID_FORNECEDOR');
            SQL.Add('WHERE CONTAPAGAR.ID_FILIAL = :pFilial');
            SQL.Add('AND SITUACAO IN (0,2)');
            SQL.Add('AND DTAVENCIMENTO < :pVencimento');
            Parameters.ParamByName('pVencimento').Value := sDataIni;
            Parameters.ParamByName('pFilial').Value := Empresa.ID;
            Open;

            if Not Eof then bNotificacao := True;

            Close;
            SQL.Clear;
            SQL.Add('SELECT CONTARECEBER.ID_CONTARECEBER, CONTARECEBER.ID_FILIAL, CONTARECEBER.ID_PACIENTE, CONTARECEBER.SITUACAO, CONTARECEBER.HISTORICO, CONTARECEBER.NRONOTA, CONTARECEBER.DOCUMENTO, CONTARECEBER.DTACONTA,');
            SQL.Add('CONTARECEBER.DTAVENCIMENTO, CONTARECEBER.DTAPAGAMENTO, CONTARECEBER.VALOR, CONTARECEBER.VALORPAGO, CONTARECEBER.VALORJUROS, CONTARECEBER.VALORDESCONTO, CONTARECEBER.VALORRESTANTE, PACIENTE.NOME FROM CONTARECEBER ');
            SQL.Add('INNER JOIN PACIENTE ON CONTARECEBER.ID_PACIENTE = PACIENTE.ID_PACIENTE');
            SQL.Add('WHERE CONTARECEBER.ID_FILIAL = :pFilial');
            SQL.Add('AND SITUACAO IN (0,2)');
            SQL.Add('AND DTAVENCIMENTO < :pVencimento');
            Parameters.ParamByName('pVencimento').Value := sDataIni;
            Parameters.ParamByName('pFilial').Value := Empresa.ID;
            Open;

            if Not Eof then bNotificacao := True;

            Close;
            SQL.Clear;
            SQL.Add('SELECT CONTARECEBERCONVENIO.ID_CONTARECEBERCONVENIO, CONTARECEBERCONVENIO.ID_FILIAL, CONTARECEBERCONVENIO.ID_CONVENIO, CONTARECEBERCONVENIO.SITUACAO, CONTARECEBERCONVENIO.HISTORICO,');
            SQL.Add('CONTARECEBERCONVENIO.DOCUMENTO, CONTARECEBERCONVENIO.DTACONTA, CONTARECEBERCONVENIO.DTAVENCIMENTO, CONTARECEBERCONVENIO.DTAPAGAMENTO, CONTARECEBERCONVENIO.VALOR, CONTARECEBERCONVENIO.VALORPAGO,');
            SQL.Add('CONTARECEBERCONVENIO.VALORRESTANTE, CONVENIOS.NOME AS Convenio FROM CONTARECEBERCONVENIO');
            SQL.Add('INNER JOIN CONVENIOS ON CONTARECEBERCONVENIO.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
            SQL.Add('WHERE CONTARECEBERCONVENIO.ID_FILIAL = :pFilial');
            SQL.Add('AND SITUACAO IN (0,2)');
            SQL.Add('AND DTAVENCIMENTO < :pVencimento');
            Parameters.ParamByName('pVencimento').Value := sDataIni;
            Parameters.ParamByName('pFilial').Value := Empresa.ID;
            Open;

            if Not Eof then bNotificacao := True;
          End;

        if bNotificacao then AbreForm(TfrmNotificacaoFinanceira, frmNotificacaoFinanceira);

      End;


  End;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Application.CreateForm(TfrmFazerBackup, frmFazerBackup);
  frmFazerBackup.ShowModal;

  If frmFazerBackup.iStatus = 1 then
    Begin
      FreeAndNil(frmFazerBackup);
      CanClose := False;
    End;
  FreeAndNil(frmFazerBackup);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  sSQL: String;
  tSQL: TextFile;
begin
  frmSplash := TfrmSplash.Create(application);
  frmSplash.Show;

  if FileExists(PastaArquivo + 'INS.odsis') then
  Begin
    //DeletaLixos;
    WinExec('C:\Odontosis\GBDO.exe ANEXAR', SW_SHOWNORMAL);
    DeleteFile('C:\Odontosis\Backup\INS.odsis');
    DeleteFile('C:\Odontosis\Documentos\INS.odsis');
    DeleteFile('C:\Odontosis\INS.odsis');
    Sleep(200);
    AbrePortaFirewall;
  End;

  isLoad := True;
  TimerAgenda.Enabled := False;
  Hora.Enabled := False;
  VerificaDB;

  DeletaLixos;

  TimerAgenda.Enabled := True;
  Hora.Enabled := True;

  sFone := '(46) 3225-5950';
  Tradutor.FileName := PastaArquivo + 'TDAG.OdSis';
  Tradutor.Active := True;
  Tradutor.LanguageIndex := 1;
  AtualizaAgenda;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM EMPRESA');
    Open;

    if RecordCount = 0 then
    Begin
      application.MessageBox
        ('Voc� deve cadastrar um consult�rio antes de come�ar utilizar o sistema.',
        'Cadastro!', mb_ok + MB_ICONINFORMATION);
      application.CreateForm(TfrmCadastroConsultorio, frmCadastroConsultorio);
      frmCadastroConsultorio.bNovo := True;
      frmCadastroConsultorio.ShowModal;
      FreeAndNil(frmCadastroConsultorio);
    End;
  End;

  qryAgenda.Active := True;
  qryMedico.Active := True;
  qryEncaixe.Active := True;
  qryRetorno.Active := True;
  TimerAgenda.Enabled := True;

  if FileExists(PChar(PastaArquivo + 'Representante.OdSis')) then
  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM REPRESENTANTE');
      Open;

      if Eof then
      Begin
        AssignFile(tSQL, PastaArquivo + '\Representante.OdSis');
        Reset(tSQL);
        ReadLn(tSQL, sSQL);
        Close;
        SQL.Clear;
        SQL.Add(sSQL);
        ExecSQL;

        DeleteFile(PChar(PastaArquivo + 'Representante.OdSis'));
      End;

    End;
  End;

  VerificaDemo;
  VerificaUltimoLogin;
  VerificaMensalidade;

  {If Ping(10000, 'www.google.com.br', 80) = 0 then
    Begin
      Application.CreateForm(TfrmAutoUpdate, frmAutoUpdate);

      if frmAutoUpdate.VerificaVersao = True then
        Begin
          frmAutoUpdate.ShowModal;
          FreeAndNil(frmAutoUpdate);
          frmSplash.Close;
          FreeAndNil(frmSplash);
          Halt;
        End
      Else
        Begin
          FreeAndNil(frmAutoUpdate);
        End;
    End;}

  application.CreateForm(TfrmLogin, frmLogin);
  frmLogin.ShowModal;

  if not frmLogin.bLogado then
  Begin
    frmSplash.Close;
    FreeAndNil(frmSplash);
    FreeAndNil(frmLogin);
    Halt;
  End;

  FreeAndNil(frmLogin);
  frmSplash.Close;
  FreeAndNil(frmSplash);

end;

procedure TfrmMain.FPlanodeTratamento1Click(Sender: TObject);
begin
  if not Operador.PlanoTratamentoV then
    Begin
      application.MessageBox('Operador n�o tem permiss�o para acessar os planos de tratamentos!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
      Exit;
    End;

  AbreForm(TfrmPlanosTratamento, frmPlanosTratamento);
  //EnviarAgendaEmail;
end;

procedure TfrmMain.FProdutosMateriais1Click(Sender: TObject);
begin
  AbreForm(TfrmListaEstoque, frmListaEstoque);
end;

procedure TfrmMain.ABancosPadro1Click(Sender: TObject);
begin
  AbreForm(TfrmBancosPadrao, frmBancosPadrao);
end;

procedure TfrmMain.AbrirNovoCaixa(Sender: TObject);
begin
  if not Operador.CaixaA then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para abrir um novo Caixa!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmAbreCaixa, frmAbreCaixa);
  CarregaMenuCaixas;
end;

procedure TfrmMain.AChequesRecebidos1Click(Sender: TObject);
begin
  if not Operador.ChequesRecebidosV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de Cheques Recebidos!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;
  AbreForm(TfrmChequesRecebidos, frmChequesRecebidos);
end;

procedure TfrmMain.AConfernciadeLanamentos1Click(Sender: TObject);
begin
  if not Operador.ConfLancBanco then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista confer�ncia de lan�amentos banco!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;
  AbreForm(TfrmConfContas, frmConfContas);
end;

procedure TfrmMain.ACpiadeSegurana1Click(Sender: TObject);
begin
  If application.MessageBox('Para realizar uma C�pia de Seguran�a � necess�rio que o sistema seja finalizado, Deseja Continuar?', 'Aten��o!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  Begin
    WinExec('C:\Odontosis\GBDO.exe BACKUP', SW_SHOWNORMAL);
    Halt;
  End;
end;

procedure TfrmMain.AgendaDblClick(Sender: TObject);
begin

  if not Operador.AgendaV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a ficha da agenda!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  application.CreateForm(TfrmAgendaPaciente, frmAgendaPaciente);
  frmAgendaPaciente.iIDAgenda := iIDAgenda;
  frmAgendaPaciente.EdtDt.Date := Agenda.SelStart;
  frmAgendaPaciente.EdtHora.Time := Agenda.SelStart;
  frmAgendaPaciente.EdtHoraFinal.Time := Agenda.SelFinish;
  frmAgendaPaciente.ShowModal;
  FreeAndNil(frmAgendaPaciente);
  qryMedico.Close;
  qryMedico.Open;
  qryAgenda.Close;
  qryAgenda.Open;
  iIDAgenda := 0;
end;

procedure TfrmMain.AgendaEventSelectionChanged(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent);
begin
  if AEvent <> Nil then
  Begin
    iIDAgenda := AEvent.ID;
  End
  Else
  Begin
    iIDAgenda := 0;
  End;

end;

procedure TfrmMain.AgendaTelefnica1Click(Sender: TObject);
begin
  AbreForm(TfrmListaAgenda, frmListaAgenda);
end;

procedure TfrmMain.AListadeDocumentosPersonalizados1Click(Sender: TObject);
begin
  if not Operador.DocPersonalizadoV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de documentos personalizados!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaDocumentosPersonalizados, frmListaDocumentosPersonalizados);
end;

procedure TfrmMain.AReceiturio1Click(Sender: TObject);
begin
  if not Operador.ReceituarioV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de receitu�rio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaReceituario, frmListaReceituario);
end;

procedure TfrmMain.ASobreaOdontosis1Click(Sender: TObject);
begin
  AbreForm(TfrmSobre, frmSobre);
end;

procedure TfrmMain.AtualizaAgenda;
begin
  if (LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'HoraInicial')) <> ''
  then
  Begin
    Agenda.OptionsView.WorkStart :=
      StrTotime(LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda',
      'HoraInicial'));
  end;

  if (LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'HoraFinal')) <> '' then
  Begin
    Agenda.OptionsView.WorkFinish :=
      StrTotime(LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'HoraFinal'));
  end;

  if (LerIni(PastaArquivo + '\CFGLocal.ini', 'Agenda', 'Intervalo')) <> '' then
  Begin
    Agenda.ViewDay.TimeScale := StrToInt(LerIni(PastaArquivo + '\CFGLocal.ini',
      'Agenda', 'Intervalo'));
  end;
end;

procedure TfrmMain.BAtestado1Click(Sender: TObject);
begin
  if not Operador.AtestadosV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para acessar a lista de atestados!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaAtestados, frmListaAtestados);
end;

procedure TfrmMain.BContasBancrias1Click(Sender: TObject);
begin
  if not Operador.BancoV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para acessar a lista de contas banc�rias!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaContasBancarias, frmListaContasBancarias);
end;

procedure TfrmMain.BConvnio1Click(Sender: TObject);
begin
  if Not Operador.TitulosReceberCV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de T�tulos a Receber Conv�nio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmTitulosReceberConvenios, frmTitulosReceberConvenios);
end;

procedure TfrmMain.BLanamentoCaixa1Click(Sender: TObject);
begin
  if not Operador.LancamentoCaixa then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para efetuar lan�amentos no caixa!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmLancamentoCaixa, frmLancamentoCaixa);
end;

procedure TfrmMain.BListadeDocumentosEmitidos1Click(Sender: TObject);
begin
  if not Operador.EmiDocPersonalizadoV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de documentos emitidos!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaDocumentosPersonalizadosEmitidos,
    frmListaDocumentosPersonalizadosEmitidos);
end;

procedure TfrmMain.BRestaurarCpiadeSegurana1Click(Sender: TObject);
begin
  If application.MessageBox('Para realizar uma C�pia de Seguran�a � necess�rio que o sistema seja finalizado, Deseja Continuar?', 'Aten��o!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  Begin
    WinExec('C:\Odontosis\GBDO.exe RESTAURAR', SW_SHOWNORMAL);
    Halt;
  End;
end;

procedure TfrmMain.btnAddNovoLembreteClick(Sender: TObject);
begin
  AbreForm(TfrmLembretes, frmLembretes);
  CriaLembretes;
end;

procedure TfrmMain.btnAgendaDiaClick(Sender: TObject);
begin
  btnAgendaDia.Down := True;
  btnAgendaSemana.Down := False;
  btnAgendaMes.Down := False;
  btnAgendaSemanaTrabalho.Down := False;
  Agenda.GoToDate(now, vmDay);
end;

procedure TfrmMain.btnAgendaMesClick(Sender: TObject);
begin
  btnAgendaDia.Down := False;
  btnAgendaSemana.Down := False;
  btnAgendaMes.Down := True;
  btnAgendaSemanaTrabalho.Down := False;
  Agenda.GoToDate(now, vmMonth);
end;

procedure TfrmMain.btnAgendaSemanaClick(Sender: TObject);
begin
  btnAgendaDia.Down := False;
  btnAgendaSemana.Down := True;
  btnAgendaMes.Down := False;
  btnAgendaSemanaTrabalho.Down := False;
  Agenda.ViewWeek.Active := True;

end;

procedure TfrmMain.btnAgendaSemanaTrabalhoClick(Sender: TObject);
begin
  btnAgendaDia.Down := False;
  btnAgendaSemana.Down := False;
  btnAgendaMes.Down := False;
  btnAgendaSemanaTrabalho.Down := True;
  Agenda.SelectWorkDays(Date);
end;

procedure TfrmMain.btnConveniosClick(Sender: TObject);
begin
  Convnios1Click(Sender);
end;

procedure TfrmMain.btnPacienteClick(Sender: TObject);
begin
  Este1Click(Sender);
end;

procedure TfrmMain.BtnRelatoriosClick(Sender: TObject);
begin
  Relatrios1Click(Sender);
end;

procedure TfrmMain.btnSairClick(Sender: TObject);
begin
  Sair1Click(Sender);
end;

procedure TfrmMain.BTransfernciadeSaldos1Click(Sender: TObject);
begin
  if not Operador.TransfSaldos then
  Begin
    application.MessageBox('Operador n�o tem permiss�o para transferir saldos!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmTransferenciaSaldos, frmTransferenciaSaldos);
end;

procedure TfrmMain.CAdicionarchavedeacesso1Click(Sender: TObject);
begin
  Application.CreateForm(TfmLock, fmLock);
  fmLock.bAdicionar := True;
  fmLock.ShowModal;
  FreeAndNil(fmLock);
end;

procedure TfrmMain.CarregaMenuCaixas;
var
  NovoItem: TMenuItem;
  sEmpresa, sCaixa, sCaixaAtual: string;
  yContador: byte;
begin

  if Empresa.ID = 1 then
  Begin
    sEmpresa := 'Matriz - ' + FormatCurr('00', Empresa.ID);
  End
  Else
  Begin
    sEmpresa := 'Filial - ' + FormatCurr('00', Empresa.ID);
  End;

  if Caixa.IDCaixa = -1 then
  Begin
    sCaixa := 'Caixa Geral';
  End
  Else
  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NOME FROM OPERADORES');
      SQL.Add('WHERE ID_OPERADORES = :pID');
      Parameters.ParamByName('pID').Value := Caixa.IDOperador;
      Open;
      sCaixa := 'Caixa: ' + FormatDateTime('dd/mm/yyyy', Caixa.DataCaixa) +
        ' - ' + FormatCurr('00', Caixa.Numero) + ' [' + FieldByName('NOME')
        .AsString + ']';
    End;
  End;

  StatusBar1.Panels[1].Text := sEmpresa + ' - ' + sCaixa;

  sCaixaAtual := 'C' + Format('%.1d', [Caixa.IDCaixa]);

  try
    frmMain.mUsarCaixa.DestroyComponents;
  except
    on e: exception do
      showmessage(e.message);
  end;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CAIXAS.*, OPERADORES.NOME As Operador FROM CAIXAS');
    SQL.Add('INNER JOIN OPERADORES ON CAIXAS.ID_OPERADORES = OPERADORES.ID_OPERADORES');
    SQL.Add('WHERE ABERTO = 1');
    SQL.Add('Order By DTACAIXA, NUMERO');
    Open;

    yContador := 0;

    NovoItem := TMenuItem.Create(frmMain.mUsarCaixa);
    NovoItem.Caption := 'Abrir Novo';
    NovoItem.Name := 'mAbrirNovo';
    NovoItem.Tag := 0;
    NovoItem.Hint := 'Abrir Novo Caixa';
    NovoItem.OnClick := AbrirNovoCaixa;
    NovoItem.Checked := False;
    NovoItem.Enabled := True;
    frmMain.mUsarCaixa.Add(NovoItem);
    Inc(yContador);

    NovoItem := TMenuItem.Create(frmMain.mUsarCaixa);
    NovoItem.Caption := '-';
    NovoItem.Name := 'mCaixaSeparador';
    NovoItem.Tag := 0;
    NovoItem.Enabled := True;
    frmMain.mUsarCaixa.Add(NovoItem);
    Inc(yContador);

    NovoItem := TMenuItem.Create(frmMain.mUsarCaixa);
    NovoItem.Caption := 'Caixa Geral';
    NovoItem.Name := 'mCaixaGeral';
    NovoItem.Hint := 'Caixa Geral do Sistema';
    NovoItem.Tag := -1;
    NovoItem.OnClick := ClickCaixaEscolhido;

    if Caixa.Geral then
      NovoItem.Checked := True
    else
      NovoItem.Checked := False;

    NovoItem.Enabled := True;
    frmMain.mUsarCaixa.Add(NovoItem);
    Inc(yContador);

    while not Eof do
    Begin
      NovoItem := TMenuItem.Create(frmMain.mUsarCaixa);
      NovoItem.Caption := 'Caixa: ' + FormatDateTime('dd/mm/yyyy',
        FieldByName('DtaCaixa').asDateTime) + ' - ' +
        FormatFloat('00', FieldByName('Numero').AsInteger) + ' [' +
        FieldByName('Operador').AsString + ']';
      NovoItem.Name := 'C' + Format('%.1d',
        [FieldByName('ID_Caixas').AsInteger]);
      NovoItem.Tag := FieldByName('ID_Caixas').AsInteger;
      NovoItem.OnClick := ClickCaixaEscolhido;
      NovoItem.Checked := (NovoItem.Name = sCaixaAtual);
      NovoItem.Enabled := True;

      if yContador = 22 then
      begin
        yContador := 0;
        NovoItem.Break := mbBarBreak;
      end;

      frmMain.mUsarCaixa.Add(NovoItem);
      Inc(yContador);

      Next;
    End;
  End;

end;

procedure TfrmMain.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.SaquedeValores1Click(Sender: TObject);
begin

  if not Operador.EmiDocPersonalizadoV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para efetuar um saque de valores!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmSaqueValores, frmSaqueValores);
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  if Not Operador.EncaixeC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar um encaixe!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
    Exit;
  End;
  application.CreateForm(TfrmEncaixe, frmEncaixe);
  frmEncaixe.bEditar := False;
  frmEncaixe.ShowModal;
  FreeAndNil(frmEncaixe);
  qryEncaixe.Close;
  qryAgenda.Close;
  qryEncaixe.Open;
  qryAgenda.Open;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
  if Not Operador.EncaixeE then
  Begin
    application.MessageBox('Operador n�o tem permiss�o para editar um encaixe!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryEncaixeID_PACIENTE.AsString = '' then
    Exit;

  application.CreateForm(TfrmEncaixe, frmEncaixe);
  frmEncaixe.iIDEncaixe := qryEncaixeID_ENCAIXE.AsInteger;
  frmEncaixe.bEditar := True;
  frmEncaixe.ShowModal;
  FreeAndNil(frmEncaixe);

  qryEncaixe.Close;
  qryAgenda.Close;
  qryEncaixe.Open;
  qryAgenda.Open;
end;

procedure TfrmMain.TimerAgendaTimer(Sender: TObject);
begin
  qryRetorno.Close;
  qryRetorno.Open;
  qryAgenda.Close;
  qryAgenda.Open;
  qryMedico.Close;
  qryMedico.Open;
  qryEncaixe.Close;
  qryEncaixe.Open;
  iIDAgenda := 0;

  AtualizaAgenda;
  CriaLembretes;
end;

procedure TfrmMain.gListaDblClick(Sender: TObject);
begin
  AbreForm(TfrmAgendaPaciente, frmAgendaPaciente);
  qryAgenda.Close;
  qryAgenda.Open;
end;

procedure TfrmMain.GRelatrioCaixaGeral1Click(Sender: TObject);
begin
  if not Operador.RelCaixaGeral then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar o relat�rio do caixa geral!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmGerarRelCaixaGeral, frmGerarRelCaixaGeral);
end;

procedure TfrmMain.GTtulosaPagar1Click(Sender: TObject);
begin
  if not Operador.TitulosPagarV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de T�tulos a Pagar!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;
  AbreForm(TfrmTitulosPagar, frmTitulosPagar);
end;

procedure TfrmMain.HoraTimer(Sender: TObject);
var
  sHora : String;
begin
  StatusBar1.Panels[4].Text := FormatDateTime('HH:mm:sss - DD/MM/YYYY', now);

  sHora := FormatDateTime('HH:MM:SS', Now);

  if CFGGeral.EEnviaAgenda then
    Begin

      if CFGGeral.EHoraDeEnvio =  sHora then EnviarAgendaEmail;

    End;
end;

procedure TfrmMain.HTtulosaReceber1Click(Sender: TObject);
begin
  if Not Operador.TitulosReceberPV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de T�tulos a Receber Particular!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;
  AbreForm(TfrmTitulosReceber, frmTitulosReceber);
end;

procedure TfrmMain.JvDBGrid3DblClick(Sender: TObject);
begin
  SpeedButton2Click(Sender);
end;

procedure TfrmMain.Mdicos1Click(Sender: TObject);
begin

  if Not Operador.DentistasV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de dentistas!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmListaMedicos, frmListaMedicos);
end;

procedure TfrmMain.MenuItem1Click(Sender: TObject);
begin
  AbreForm(TfrmRetorno, frmRetorno);
  qryRetorno.Close;
  qryRetorno.Open;
  qryAgenda.Close;
  qryAgenda.Open;
end;

procedure TfrmMain.MenuItem2Click(Sender: TObject);
begin

  if qryRetornoID_RETORNO.AsString = '' then
  Begin
    Exit;
  End;

  application.CreateForm(TfrmRetorno, frmRetorno);
  frmRetorno.iRetorno := qryRetornoID_RETORNO.AsInteger;
  frmRetorno.ShowModal;
  FreeAndNil(frmRetorno);

  qryRetorno.Close;
  qryRetorno.Open;
  qryAgenda.Close;
  qryAgenda.Open;
end;

procedure TfrmMain.MontaComboDentistas;
begin
  cmbDentistas.Items.Clear;
  cmbDentistas.Items.Add('Todos');
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select * from MEDICOS WHERE Ativo = 1');
    SQL.Add('Order By Nome');
    Open;

    while Not Eof do
    Begin
      cmbDentistas.Items.Add(FieldByName('NOME').AsString);
      Next;
    End;

    cmbDentistas.ItemIndex := 0;

  End;
end;

procedure TfrmMain.Operadores1Click(Sender: TObject);
begin

  if not Operador.OperadorSistemaV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de operadores!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadastroOperadores, frmCadastroOperadores);
end;

procedure TfrmMain.Procedimentos1Click(Sender: TObject);
begin
  if Not Operador.ProcedimentosV then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para visualizar a lista de procedimentos!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmProcedimentosMedico, frmProcedimentosMedico);
end;

procedure TfrmMain.Relatrios1Click(Sender: TObject);
begin
  AbreForm(TfrmRelatorios, frmRelatorios);
end;

function TfrmMain.RenovaOnlineMensalidade(iConexao : Integer; sCodCliente : String): Boolean;
var
  dVencimento     : TDateTime;
  Key             : TKey;
  Code            : TCode;
  Modifier        : Longint;
  sContraChave    : String;
begin
  if iConexao = 0 then
    Begin
      DM.OdontosisWeb.Connected := True;

      With DM.qryOdontosis Do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT CODCLIENTE, BLOQUARSISTEMA, DTVENCIMENTO FROM EMPRESAS');
          SQL.Add('WHERE CODCLIENTE = :pCOD');
          Parameters.ParamByName('pCOD').Value := sCodCliente;
          Open;

          if Eof then
            Begin
              Result := False;
              Close;
              Dm.OdontosisWeb.Connected := False;
              Exit;
            End;

          if FieldByName('DTVENCIMENTO').AsString = '' then dVencimento := Now Else dVencimento := FieldByName('DTVENCIMENTO').AsDateTime;

          if Not FieldByName('BLOQUARSISTEMA').AsBoolean then
            Begin
              dVencimento := IncMonth(dVencimento , 1);

              Key := EncryptionKey;
              Modifier := StringHashELF(sCodCliente);
              ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
              InitRegCode(Key, '', dVencimento, Code);
              sContraChave := BufferToHex(Code, SizeOf(Code));

              With DM.qryAux do
                Begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT * FROM OPINT');
                  Open;

                  Edit;
                  FieldByName('CONTRACHAVE').AsString := sContraChave;
                  FieldByName('DEMO').AsBoolean  := False;
                  FieldByName('ADICIONAL').AsBoolean := False;
                  Post;
                End;

              Edit;
              FieldByName('BLOQUARSISTEMA').AsBoolean := True;
              FieldByName('DTVENCIMENTO').AsDateTime  := dVencimento;
              Post;

              Result := True;
            End
          Else
            Begin
              Result := False;
            End;
        End;
      Dm.OdontosisWeb.Connected := False;
    End
  Else
    Begin
      Result := False;
    End;
end;

procedure TfrmMain.VerificaCaixaOperador;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CAIXAS FROM CAIXAS');
    SQL.Add('WHERE ABERTO = 1');
    SQL.Add('AND ID_OPERADORES = :pID');
    Parameters.ParamByName('pID').Value := Operador.ID;
    Open;

    if Not Eof then
    Begin
      CarregaDadosCaixa(FieldByName('ID_CAIXAS').AsInteger);
    End
    Else
    Begin
      CarregaDadosCaixa(-1);
    End;
  End;
end;

procedure TfrmMain.VerificaDB;
var
  sMsg, sConect: string;
Begin

  CarregaAcessoSistema;

  if CfgAcesso.Servidor = '' then
  begin
    if frmSelecionaServidor = nil then
      frmSelecionaServidor := TfrmSelecionaServidor.Create(application);
    frmSelecionaServidor.bFechar := True;
    frmSelecionaServidor.ShowModal;

    bPulaTelaInicio := True;
    VerificaDB;
  end
  else
  begin
    if CfgAcesso.bMostrar then
    begin
      if not bPulaTelaInicio then
      begin
        if frmSelecionaServidor = nil then
          frmSelecionaServidor := TfrmSelecionaServidor.Create(application);
        frmSelecionaServidor.bFechar := True;
        frmSelecionaServidor.ShowModal;
      end;
    end;

    CarregaAcessoSistema;

    if Empty(CfgAcesso.Base) then
      CfgAcesso.Base := application.Title;

    application.CreateForm(TDM, DM);
    sConect := '';
    sConect := sConect + ' Provider=SQLOLEDB.1; ';
    sConect := sConect + ' Persist Security Info=True; ';
    sConect := sConect + ' User ID=' + CfgAcesso.Usuario + '; ';
    sConect := sConect + ' Password=' + CfgAcesso.Senha + '; ';
    sConect := sConect + ' Initial Catalog=' + CfgAcesso.Base + '; ';
    sConect := sConect + ' Data Source=' + CfgAcesso.Servidor+'; ';
    sConect := sConect + ' Application Name=Odontosis';

    try
      DM.Conexao.Close;
      DM.Conexao.ConnectionString := sConect;
      DM.Conexao.Open;

      // Atualiza SQL
      iBanco := 1;
      application.CreateForm(TfrmAtualizacao, frmAtualizacao);
      FreeAndNil(frmAtualizacao);
    except
      on e: exception do
      begin
        sMsg := 'Imposs�vel conectar o banco de dados! ' + #10#13 + '"' +
          e.message + '"' + #10#13 + #10#13 +
          'Reeinicie o sistema e tente novamente!';

        application.MessageBox(PChar(sMsg), 'Aten��o',
          mb_ok or MB_ICONEXCLAMATION);
        // Application.Terminate;
        // Halt;

        if frmSelecionaServidor = nil then
          frmSelecionaServidor := TfrmSelecionaServidor.Create(application);
        frmSelecionaServidor.bFechar := True;
        frmSelecionaServidor.ShowModal;

        VerificaDB;
      end;
    end;

  end;

end;

procedure TfrmMain.VerificaDemo;
Var
  sMil, sSeg, sCod, sChave: String;
  DataDemo, DataAtual: TDateTime;
  Data, DtVencimento: TDate;
  Key: TKey;
  Code: TCode;
  Work: TCode;
  Modifier: Longint;
  sReg, sContraC, sDemo, sDataAtual, sDataDemo, sDataULogin, sSerialHd: String;
begin

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OPINT');
    Open;

    if FieldByName('CODCLIENTE').AsString = '' then
    Begin

      iBanco := FieldByName('VERSAODB').AsInteger;

      DataDemo := now + 30; // adiciona 30 dias de demontra��o
      sSerialHd := LerIni(PastaArquivo + '\CFGEmpresa.Ini', 'Empresa',
        'CodEmpresa');
      // DeleteFile(PastaArquivo + '\CFGEmpresa.Ini');

      Key := EncryptionKey;
      Modifier := StringHashELF(sSerialHd);
      ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
      InitRegCode(Key, '', DataDemo, Code);
      sContraC := BufferToHex(Code, SizeOf(Code));

      Edit;
      FieldByName('CODCLIENTE').AsString := sSerialHd;
      FieldByName('CONTRACHAVE').AsString := sContraC;
      FieldByName('DEMO').AsBoolean := True;
      FieldByName('ADICIONAL').AsBoolean := False;
      FieldByName('VERSAODB').AsInteger := iBanco;
      Post;

      application.MessageBox('Obrigado por instalar o Sistema Odontosis,' + #13
        + #10 + 'voc� tem 15 dias para avalia��o', 'Obrigado!!!',
        mb_ok + MB_ICONINFORMATION);
    End;
  End;
end;

Procedure TfrmMain.VerificaMensalidade;
var
  iConexao, iDias, iRes: Integer;
  dDataVencimento: TDate;
  Key: TKey;
  Code: TCode;
  Work: TCode;
  Modifier: Longint;
  sCodCliente : String;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OPINT');
    Open;

    iConexao := Ping(10000, 'www.google.com.br', 80);
    sCodCliente := FieldByName('CODCLIENTE').AsString;

    Key := EncryptionKey;
    Modifier := StringHashELF(FieldByName('CODCLIENTE').AsString);
    ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
    HexToBuffer(FieldByName('CONTRACHAVE').AsString, Code, SizeOf(Code));

    if IsRegCodeValid(Key, Code) then
    begin
      if IsRegCodeExpired(Key, Code) then
      Begin

      //   If RenovaOnlineMensalidade(iConexao, sCodCliente) then Exit;

        application.MessageBox(PChar('Data de Avalia��o Expirou.' + #13 + #10 +
          'Entre em contato com a Odontosis.' + #13 + #10 +
          'Pelo site: www.odontosis.com.br' + #13 + #10 + 'ou pelo Fone: ' +
          sFone), 'Aten��o!', mb_ok + MB_ICONWARNING);

        AbreForm(TFmLock, fmLock);
        Exit;
      End;

      if FieldByName('DEMO').AsBoolean then
      Begin
        application.MessageBox(PChar('Esta � uma vers�o de demonstra��o.' + #13
          + #10 + 'Estaremos � disposi��o para quaisquer esclarecimentos e d�vidas.'
          + #13 + #10 + 'Pelo site: www.odontosis.com.br' + #13 + #10 +
          'ou pelo Fone: ' + sFone), 'Aten��o!', mb_ok + MB_ICONWARNING);
      End;

      Work := Code;
      MixBlock(T128bit(Key), Work, False);
      dDataVencimento := ExpandDate(Work.Expiration);

      iDias := DaysBetween(now, dDataVencimento);

      if (iDias < 6) And (iDias > 0) then
      Begin
        If RenovaOnlineMensalidade(iConexao, sCodCliente) then Exit;
        iRes := application.MessageBox
          (PChar('Restam ' + IntToStr(iDias) + ' dia(s) de execu��o do Sistema '
          + #10 + #13 + 'Deseja contatar a Odontosis (Fone: ' + sFone + ')' +
          #13 + #10 +
          'neste momento para renovar o periodo de uso do sistema?'), 'Aten��o',
          MB_YESNO OR MB_DEFBUTTON2 OR MB_ICONEXCLAMATION);
      End
      Else if iDias = 0 then
      Begin
        If RenovaOnlineMensalidade(iConexao, sCodCliente) then Exit;
        iRes := application.MessageBox
          (PChar('Este � o ultimo dia de execu��o do Sistema' + #10 + #13 +
          'Deseja contatar a Odontosis (Fone: ' + sFone + ')' + #13 + #10 +
          'neste momento para renovar o periodo de uso do sistema?'), 'Aten��o',
          MB_YESNO OR MB_DEFBUTTON2 OR MB_ICONEXCLAMATION);
      End;

      if iRes = IDYES then
      Begin
        AbreForm(TFmLock, fmLock);
      End;
    end;
  End;

end;

procedure TfrmMain.VerificaUltimoLogin;
var
  sData: String;
  dDtaHoraLogin, dDtaHoraAtual: TDateTime;
begin

  with TRegistry.Create do
    try
      RootKey := HKey_Local_Machine;
      if OpenKey('Software\OdontoSis', True) then
      begin
        sData := Crypt('D', ReadString('ULOGIN'));
      end;
    finally
      free
    end;

  if sData = '' then
  Begin
    sData := '01/01/1990 00:00:00';
  End;

  dDtaHoraAtual := now;
  dDtaHoraLogin := StrToDateTime(sData);

  if dDtaHoraAtual > dDtaHoraLogin then
  Begin
    With qryAux do
    Begin
      with TRegistry.Create do
        try
          RootKey := HKey_Local_Machine;
          if OpenKey(PChar('Software\OdontoSis'), True) then
          begin
            sData := DateTimeToStr(now);
            WriteString('ULOGIN', Crypt('C', sData));
          end;
        finally
          free;
        end;
    End;
  End
  Else
  Begin
    application.MessageBox('Data ou hora do computador foi alterado !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    Halt;
  End;

end;

end.
