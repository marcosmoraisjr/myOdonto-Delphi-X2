unit F_Historicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.Imaging.jpeg, Vcl.Buttons, Data.DB, Data.Win.ADODB, Funcoes, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxSchedulerPainter, Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, JvDBUltimGrid,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Vcl.ImgList, JvExStdCtrls,
  JvListComb, dximctrl, cxContainer, cxTextEdit, cxCurrencyEdit, JvSpin,
  JvDBSpinEdit, cxCheckBox, cxImage, cxDBEdit, JvCombobox, JvDBSearchComboBox,
  Vcl.DBCtrls, Vcl.CheckLst, cxButtons;

type
  TfrmHistoricos = class(TfrmPadrao)
    Paciênte: TGroupBox;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    qryAux: TADOQuery;
    qryOdontograma: TADOQuery;
    qryOdontogramaID_ODONTOGRAMA: TAutoIncField;
    qryOdontogramaID_PACIENTE: TIntegerField;
    qryOdontogramaLEITE_NORMAL: TIntegerField;
    qryOdontogramaDATA: TDateTimeField;
    dsOdontograma: TDataSource;
    qryPerguntasAnamnese: TADOQuery;
    qryPerguntasAnamnesePergunta: TStringField;
    qryPerguntasAnamneseAFIRMO: TBooleanField;
    qryPerguntasAnamneseNEGO: TBooleanField;
    qryPerguntasAnamneseNAOSEI: TBooleanField;
    qryPerguntasAnamneseOBSERVACAO: TStringField;
    dsPerguntasAnamnese: TDataSource;
    qryAux2: TADOQuery;
    qryPerguntasAnamneseObrigatorio: TBooleanField;
    qryHistorico: TADOQuery;
    dsHistorico: TDataSource;
    qryHistoricoDESCRICAO: TStringField;
    qryHistoricoDATA: TDateTimeField;
    dsPacienteAnamnese: TDataSource;
    qryPerguntasAnamneseIDPacienteAnamnese: TIntegerField;
    qryPacienteAnamnese: TADOQuery;
    qryPacienteAnamneseDATA: TDateTimeField;
    qryPacienteAnamneseID_PACIENTEANAMNESE: TAutoIncField;
    TabSheet7: TTabSheet;
    gLista: TJvDBGrid;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    btnSalvarAnamnese: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox3: TGroupBox;
    GrdPerguntasAnamnese: TJvDBUltimGrid;
    GroupBox4: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    TabSheet8: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    ImgD11: TImage;
    ImgD12: TImage;
    ImgD18: TImage;
    ImgD17: TImage;
    ImgD16: TImage;
    ImgD15: TImage;
    ImgD14: TImage;
    ImgD13: TImage;
    ImgD21: TImage;
    ImgD22: TImage;
    ImgD23: TImage;
    ImgD24: TImage;
    ImgD25: TImage;
    ImgD26: TImage;
    ImgD27: TImage;
    ImgD28: TImage;
    GroupBox7: TGroupBox;
    btnD18: TSpeedButton;
    ImgD48: TImage;
    ImgD47: TImage;
    ImgD46: TImage;
    ImgD45: TImage;
    ImgD44: TImage;
    ImgD43: TImage;
    ImgD42: TImage;
    ImgD41: TImage;
    ImgD31: TImage;
    ImgD32: TImage;
    ImgD33: TImage;
    ImgD34: TImage;
    ImgD35: TImage;
    ImgD36: TImage;
    ImgD37: TImage;
    ImgD38: TImage;
    btnD17: TSpeedButton;
    btnD16: TSpeedButton;
    btnD15: TSpeedButton;
    btnD14: TSpeedButton;
    btnD13: TSpeedButton;
    btnD12: TSpeedButton;
    btnD11: TSpeedButton;
    btnD21: TSpeedButton;
    btnD22: TSpeedButton;
    btnD23: TSpeedButton;
    btnD24: TSpeedButton;
    btnD25: TSpeedButton;
    btnD26: TSpeedButton;
    btnD27: TSpeedButton;
    btnD28: TSpeedButton;
    btnD31: TSpeedButton;
    btnD32: TSpeedButton;
    btnD33: TSpeedButton;
    btnD34: TSpeedButton;
    btnD35: TSpeedButton;
    btnD36: TSpeedButton;
    btnD37: TSpeedButton;
    btnD38: TSpeedButton;
    btnD41: TSpeedButton;
    btnD42: TSpeedButton;
    btnD43: TSpeedButton;
    btnD44: TSpeedButton;
    btnD45: TSpeedButton;
    btnD46: TSpeedButton;
    btnD47: TSpeedButton;
    btnD48: TSpeedButton;
    MenuDentesD: TPopupMenu;
    RemoverIncluirDente1: TMenuItem;
    SomenteDenteSelecionado1: TMenuItem;
    Arcada1: TMenuItem;
    odososDentes1: TMenuItem;
    Deciduo1: TMenuItem;
    SomenteDenteSelecionado2: TMenuItem;
    Alterararcadaparadecdua1: TMenuItem;
    Alterararcadaparapermanente1: TMenuItem;
    RemoverIncluirCoroa1: TMenuItem;
    Microdente1: TMenuItem;
    DenteSupranumerrio1: TMenuItem;
    Dentesemiincluso1: TMenuItem;
    DenteIncluso1: TMenuItem;
    N1: TMenuItem;
    Anotaessobreodente1: TMenuItem;
    AdicionarProcedimento1: TMenuItem;
    N2: TMenuItem;
    btnImprimirAnamnese: TSpeedButton;
    qryPacienteAnamneseID_MEDICO: TIntegerField;
    qryPacienteAnamneseID_PACIENTE: TIntegerField;
    GroupBox12: TGroupBox;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    qryPacienteAnamneseNOME: TStringField;
    MenuDentesE: TPopupActionBar;
    qryProcedimentosDentes: TADOQuery;
    dsProcedimentosDentes: TDataSource;
    qryProcedimentosDentesDente: TIntegerField;
    qryProcedimentosDentesProcedimento: TStringField;
    qryProcedimentosDentesPARTICULAR_CONVENIO: TStringField;
    qryProcedimentosDentesID: TIntegerField;
    qryProcedimentosDentesSituacao: TIntegerField;
    qryPerguntasExameOral: TADOQuery;
    qryPacienteExameOral: TADOQuery;
    dsPerguntasExameOral: TDataSource;
    dsPacienteExameOral: TDataSource;
    qryPacienteExameOralID_PACIENTEEXAMEORAL: TAutoIncField;
    qryPacienteExameOralDATA: TDateTimeField;
    qryPacienteExameOralID_MEDICO: TAutoIncField;
    qryPacienteExameOralID_PACIENTE: TIntegerField;
    qryPacienteExameOralNOME: TStringField;
    qryPerguntasExameOralID: TIntegerField;
    qryPerguntasExameOralObrigatorio: TBooleanField;
    qryPerguntasExameOralPergunta: TStringField;
    qryPerguntasExameOralResposta: TStringField;
    qryPerguntasExameOralIDPacienteExameOral: TIntegerField;
    qryPerguntasExameOralData: TDateTimeField;
    GroupBox15: TGroupBox;
    GrdOrcamento: TJvDBUltimGrid;
    GroupBox17: TGroupBox;
    Label5: TLabel;
    lblTabela: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    lblTotal: TLabel;
    GroupBox18: TGroupBox;
    cbAprovado: TCheckBox;
    rgPagamento: TRadioGroup;
    lblAcrescimo: TLabel;
    lblDesconto: TLabel;
    EdtdtAprovacao: TJvDateEdit;
    gbParcelas: TGroupBox;
    Label13: TLabel;
    rgParcelas: TRadioGroup;
    gbCorrecao: TGroupBox;
    EdtCorrecaoMensal: TcxCurrencyEdit;
    EdtQtdeParcelas: TJvSpinEdit;
    GroupBox16: TGroupBox;
    GroupBox19: TGroupBox;
    Label14: TLabel;
    btnSalvar: TSpeedButton;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    cbTipoDesconto: TComboBox;
    EdtVlrDesconto: TcxCurrencyEdit;
    cbTipoAcrescimo: TComboBox;
    EdtVlrAcrescimo: TcxCurrencyEdit;
    PageOrcamento: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet9: TTabSheet;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    mmoTextoOrcamento: TMemo;
    gridPagamento: TJvDBUltimGrid;
    qryOrcamento: TADOQuery;
    qryOrcamentoIDProcedimento: TIntegerField;
    qryOrcamentoSelecionado: TBooleanField;
    qryOrcamentoCodProcedimento: TStringField;
    qryOrcamentoDescricaoProcedimento: TStringField;
    qryOrcamentoValorTabela: TFloatField;
    qryOrcamentoValorAcrescimo: TFloatField;
    qryOrcamentoValorDesconto: TFloatField;
    qryOrcamentoFaturado: TBooleanField;
    dsOrcamento: TDataSource;
    qryOrcamentoDente: TIntegerField;
    qryOrcamentoTipo: TStringField;
    SpeedButton6: TSpeedButton;
    qryOrcamentoAux: TADOQuery;
    IntegerField1: TIntegerField;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    BooleanField2: TBooleanField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    Label6: TLabel;
    cbStatusTratamento: TComboBox;
    qryParcelas: TADOQuery;
    qryParcelasID: TIntegerField;
    qryParcelasValor: TFloatField;
    qryParcelasPago: TBooleanField;
    qryParcelasDataPgto: TDateTimeField;
    qryParcelasValorPago: TFloatField;
    qryParcelasSaldo: TFloatField;
    qryParcelasRecibo: TStringField;
    dsParcelas: TDataSource;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    qryParcelasDoc: TStringField;
    qryParcelasVencimento: TStringField;
    GroupBox22: TGroupBox;
    imgFotos: TcxDBImage;
    cbProporcional: TcxCheckBox;
    cbCentralizar: TcxCheckBox;
    GroupBox23: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    SpeedButton8: TSpeedButton;
    SpeedButton12: TSpeedButton;
    qryFotosPaciente: TADOQuery;
    qryFotosPacienteDESCRICAO: TStringField;
    qryFotosPacienteDATA: TDateTimeField;
    qryFotosPacienteID_FOTOSPACIENTE: TAutoIncField;
    qryFotosPacienteFOTOS: TBlobField;
    qryFotosPacienteID_PACIENTE: TIntegerField;
    dsFotoPaciente: TDataSource;
    AbreFoto: TOpenDialog;
    TabSheet10: TTabSheet;
    GroupBox24: TGroupBox;
    GroupBox25: TGroupBox;
    Label9: TLabel;
    EdtNomeProcedimento: TJvDBSearchComboBox;
    rgDenteRegiao: TRadioGroup;
    gbRegiao: TGroupBox;
    Label11: TLabel;
    cbTISS: TComboBox;
    gbFace: TGroupBox;
    Label12: TLabel;
    cbTabela: TComboBox;
    Label1: TLabel;
    GroupBox13: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    dsProcedimentos: TDataSource;
    qryProcedimentos: TADOQuery;
    EdtCodServico: TJvDBSearchComboBox;
    qryProcedimentosID_PROCEDIMENTOS: TAutoIncField;
    qryProcedimentosDESCRICAO: TStringField;
    qryProcedimentosCODPROCEDIMENTO: TStringField;
    qryProcedimentosVALOR: TFloatField;
    qryProcedimentosID_CONVENIO: TIntegerField;
    rgSituação: TRadioGroup;
    GroupBox11: TGroupBox;
    GridProcDente: TJvDBUltimGrid;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox8: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox9: TGroupBox;
    EdtCodMO: TJvComboEdit;
    EdtNomeMedicoEO: TEdit;
    GroupBox10: TGroupBox;
    JvDBUltimGrid2: TJvDBUltimGrid;
    GroupBox14: TGroupBox;
    GrdPerguntasExameOral: TJvDBUltimGrid;
    Label16: TLabel;
    EdtDente: TEdit;
    qryProcedimentosDentesDescricaoDenteRegiao: TStringField;
    qryProcedimentosDentesDENTE_REGIAO: TStringField;
    qryProcedimentosDentesValor: TFloatField;
    TabSheet5: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    GroupBox26: TGroupBox;
    GroupBox27: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    GroupBox28: TGroupBox;
    mmoReceita: TDBMemo;
    qryReceituario: TADOQuery;
    qryReceituarioDentista: TStringField;
    qryReceituarioID_RECEITUARIO: TAutoIncField;
    qryReceituarioID_PACIENTE: TIntegerField;
    qryReceituarioID_MEDICO: TIntegerField;
    qryReceituarioDATA: TDateTimeField;
    qryReceituarioDESCRICAO: TMemoField;
    qryReceituarioPaciente: TStringField;
    dsReceituario: TDataSource;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    GroupBox29: TGroupBox;
    SpeedButton14: TSpeedButton;
    GroupBox30: TGroupBox;
    qryProcedimentosDentesIDProcedimentosDentes: TIntegerField;
    SpeedButton7: TSpeedButton;
    cbProposta: TComboBox;
    Label4: TLabel;
    SpeedButton16: TSpeedButton;
    GroupBox31: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    dsTermosConsentimento: TDataSource;
    qryTermosConsentimento: TADOQuery;
    qryTermosConsentimentoID_TERMOCONSENTIMENTO: TAutoIncField;
    qryTermosConsentimentoDentista: TStringField;
    qryTermosConsentimentoDATA: TDateTimeField;
    qryTermosConsentimentoRESPONSAVEL: TStringField;
    qryTermosConsentimentoRGRESPONSAVEL: TStringField;
    TabSheet13: TTabSheet;
    GroupBox32: TGroupBox;
    GroupBox33: TGroupBox;
    grdAtendimentos: TJvDBGrid;
    qryAtendimentos: TADOQuery;
    qryAtendimentosSTATUSTEXTO: TStringField;
    dsAtendimentos: TDataSource;
    SpeedButton17: TSpeedButton;
    qryAtendimentosDATA: TDateTimeField;
    qryAtendimentosSTATUS: TIntegerField;
    qryAtendimentosID_OPERADOR: TIntegerField;
    qryAtendimentosID_PLANOTRATAMENTO: TIntegerField;
    qryAtendimentosID_AGENDA: TIntegerField;
    qryAtendimentosID_ATENDIMENTO: TAutoIncField;
    GroupBox34: TGroupBox;
    GroupBox35: TGroupBox;
    rgDenteRegiaoAtendimento: TRadioGroup;
    Label17: TLabel;
    EdtDenteAtendimento: TEdit;
    GroupBox36: TGroupBox;
    cbRegiaoAtendimento: TComboBox;
    GroupBox37: TGroupBox;
    mmoObsAtendimento: TMemo;
    GroupBox38: TGroupBox;
    cbProcGlosado: TCheckBox;
    Label22: TLabel;
    EdtDtGlosa: TJvDateEdit;
    mmoGlosaTISS: TMemo;
    grdItensAtendimentos: TJvDBUltimGrid;
    GroupBox39: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    qryProcedimentosAtendimentos: TADOQuery;
    dsProcedimentosAtendimentos: TDataSource;
    qryProcedimentosAtendimentosID: TIntegerField;
    qryProcedimentosAtendimentosIDProcedimentosDentes: TIntegerField;
    qryProcedimentosAtendimentosDente: TIntegerField;
    qryProcedimentosAtendimentosSituacao: TIntegerField;
    qryProcedimentosAtendimentosProcedimento: TStringField;
    qryProcedimentosAtendimentosPARTICULAR_CONVENIO: TStringField;
    qryProcedimentosAtendimentosDENTE_REGIAO: TStringField;
    qryProcedimentosAtendimentosDescricaoDenteRegiao: TStringField;
    qryProcedimentosAtendimentosIDAtendimentoItem: TIntegerField;
    qryProcedimentosAtendimentosObservacaoGlosa: TStringField;
    qryProcedimentosAtendimentosDataGlosa: TDateTimeField;
    qryProcedimentosAtendimentosProcedimentoGlosado: TBooleanField;
    qryProcedimentosAtendimentosObservacaoProcedimento: TStringField;
    qryProcedimentosAtendimentosTISSREGIAO: TIntegerField;
    qryProcedimentosAtendimentosTISSFACE: TIntegerField;
    btnSalvarAtendimento: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ImagemPaciente: TADOConnection;
    qryHistoricoOperador: TStringField;
    rgSituacaoAtendimento: TComboBox;
    Label29: TLabel;
    Label23: TLabel;
    rgStatusAtendimento: TComboBox;
    Label30: TLabel;
    GroupBox40: TGroupBox;
    grdProcedimentosAtendimentos: TJvDBUltimGrid;
    Label31: TLabel;
    Label32: TLabel;
    EdtDtIniAtendimento: TJvDateEdit;
    EdtDtFimAtendimento: TJvDateEdit;
    qryAtendimentosDATAFIM: TDateTimeField;
    qryProcedimentosAtendimentosSel: TADOQuery;
    qryProcedimentosAtendimentosSelSelecionado: TBooleanField;
    qryProcedimentosAtendimentosSelDescricaoProcedimento: TStringField;
    qryProcedimentosAtendimentosSelTipo: TStringField;
    qryProcedimentosAtendimentosSelIDProcedimento: TIntegerField;
    qryProcedimentosAtendimentosSelTempoMedio: TStringField;
    dsProcedimentosAtendimentosSel: TDataSource;
    cbFace: TCheckListBox;
    qryProcedimentosAtendimentosDESCRICAOFACE: TStringField;
    cbFaceAtendimento: TCheckListBox;
    Label33: TLabel;
    Label34: TLabel;
    lblTotalaReceber: TLabel;
    lblTotalRecebido: TLabel;
    qryOrcamentoValorPago: TFloatField;
    qryOrcamentoValorRestante: TFloatField;
    btnDeletarProcedimento: TcxButton;
    btnAdicionarProcedimentos: TcxButton;
    qryOrcamentoAuxValorPago: TFloatField;
    qryOrcamentoAuxValorRestante: TFloatField;
    btnSalvar2: TcxButton;
    btnFechar: TcxButton;
    GroupBox41: TGroupBox;
    JvDBGrid4: TJvDBGrid;
    GroupBox42: TGroupBox;
    DBMemo1: TDBMemo;
    qryAtestados: TADOQuery;
    dsAtestados: TDataSource;
    qryAtestadosDentista: TStringField;
    qryAtestadosFINSS: TStringField;
    qryAtestadosDATA: TDateTimeField;
    qryAtestadosHORAINI: TStringField;
    qryAtestadosPaciente: TStringField;
    qryAtestadosOperador: TStringField;
    qryAtestadosID_ATESTADOS: TAutoIncField;
    qryAtestadosOBSERVACAO: TMemoField;
    qryAtestadosID_PACIENTE: TIntegerField;
    qryAtestadosID_MEDICO: TIntegerField;
    qryAtestadosID_OPERADOR: TIntegerField;
    qryAtestadosFINS: TIntegerField;
    qryAtestadosHORAFIM: TStringField;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    btnEditarFotos: TSpeedButton;
    Label35: TLabel;
    EdtDtInicioParcelas: TJvDateEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure tonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure btnSalvarAnamneseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTrocaLeiteClick(Sender: TObject);
    procedure qryPerguntasAnamneseAFIRMOValidate(Sender: TField);
    procedure qryPerguntasAnamneseNEGOValidate(Sender: TField);
    procedure qryPerguntasAnamneseNAOSEIValidate(Sender: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure AdicionarProcedimento1Click(Sender: TObject);
    procedure btnImprimirAnamneseClick(Sender: TObject);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure Anotaessobreodente1Click(Sender: TObject);
    procedure ImgD13ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD14ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD15ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD16ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD17ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD18ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD12ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD11ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD21ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD22ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD23ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD24ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD25ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD26ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD27ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD28ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD38ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD37ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD36ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD35ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD34ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD33ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD32ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD31ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD41ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD42ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD43ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD44ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD45ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD46ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD47ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ImgD48ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure cbTabelaClick(Sender: TObject);
    procedure ImgD21Click(Sender: TObject);
    procedure ImgD11Click(Sender: TObject);
    procedure ImgD12Click(Sender: TObject);
    procedure ImgD13Click(Sender: TObject);
    procedure ImgD14Click(Sender: TObject);
    procedure ImgD15Click(Sender: TObject);
    procedure ImgD16Click(Sender: TObject);
    procedure ImgD17Click(Sender: TObject);
    procedure ImgD18Click(Sender: TObject);
    procedure ImgD22Click(Sender: TObject);
    procedure ImgD23Click(Sender: TObject);
    procedure ImgD24Click(Sender: TObject);
    procedure ImgD25Click(Sender: TObject);
    procedure ImgD26Click(Sender: TObject);
    procedure ImgD27Click(Sender: TObject);
    procedure ImgD28Click(Sender: TObject);
    procedure ImgD38Click(Sender: TObject);
    procedure ImgD37Click(Sender: TObject);
    procedure ImgD36Click(Sender: TObject);
    procedure ImgD35Click(Sender: TObject);
    procedure ImgD34Click(Sender: TObject);
    procedure ImgD33Click(Sender: TObject);
    procedure ImgD32Click(Sender: TObject);
    procedure ImgD31Click(Sender: TObject);
    procedure ImgD41Click(Sender: TObject);
    procedure ImgD42Click(Sender: TObject);
    procedure ImgD43Click(Sender: TObject);
    procedure ImgD44Click(Sender: TObject);
    procedure ImgD45Click(Sender: TObject);
    procedure ImgD46Click(Sender: TObject);
    procedure ImgD47Click(Sender: TObject);
    procedure ImgD48Click(Sender: TObject);
    procedure GridProcDenteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridProcDenteDblClick(Sender: TObject);
    procedure btnD21Click(Sender: TObject);
    procedure btnD22Click(Sender: TObject);
    procedure btnD23Click(Sender: TObject);
    procedure btnD24Click(Sender: TObject);
    procedure btnD25Click(Sender: TObject);
    procedure btnD26Click(Sender: TObject);
    procedure btnD27Click(Sender: TObject);
    procedure btnD28Click(Sender: TObject);
    procedure btnD11Click(Sender: TObject);
    procedure btnD12Click(Sender: TObject);
    procedure btnD13Click(Sender: TObject);
    procedure btnD14Click(Sender: TObject);
    procedure btnD15Click(Sender: TObject);
    procedure btnD16Click(Sender: TObject);
    procedure btnD17Click(Sender: TObject);
    procedure btnD18Click(Sender: TObject);
    procedure btnD48Click(Sender: TObject);
    procedure btnD47Click(Sender: TObject);
    procedure btnD46Click(Sender: TObject);
    procedure btnD45Click(Sender: TObject);
    procedure btnD44Click(Sender: TObject);
    procedure btnD43Click(Sender: TObject);
    procedure btnD42Click(Sender: TObject);
    procedure btnD41Click(Sender: TObject);
    procedure btnD31Click(Sender: TObject);
    procedure btnD32Click(Sender: TObject);
    procedure btnD33Click(Sender: TObject);
    procedure btnD34Click(Sender: TObject);
    procedure btnD35Click(Sender: TObject);
    procedure btnD36Click(Sender: TObject);
    procedure btnD37Click(Sender: TObject);
    procedure btnD38Click(Sender: TObject);
    procedure SomenteDenteSelecionado1Click(Sender: TObject);
    procedure Arcada1Click(Sender: TObject);
    procedure odososDentes1Click(Sender: TObject);
    procedure SomenteDenteSelecionado2Click(Sender: TObject);
    procedure Alterararcadaparadecdua1Click(Sender: TObject);
    procedure Alterararcadaparapermanente1Click(Sender: TObject);
    procedure RemoverIncluirCoroa1Click(Sender: TObject);
    procedure Microdente1Click(Sender: TObject);
    procedure DenteSupranumerrio1Click(Sender: TObject);
    procedure Dentesemiincluso1Click(Sender: TObject);
    procedure DenteIncluso1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure EdtCodMOButtonClick(Sender: TObject);
    procedure EdtCodMOExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure JvDBUltimGrid2CellClick(Column: TColumn);
    procedure rgParcelasClick(Sender: TObject);
    procedure rgPagamentoClick(Sender: TObject);
    procedure cbPropostaClick(Sender: TObject);
    procedure GrdOrcamentoCellClick(Column: TColumn);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure qryOrcamentoValorAcrescimoValidate(Sender: TField);
    procedure qryOrcamentoValorDescontoValidate(Sender: TField);
    procedure SpeedButton7Click(Sender: TObject);
    procedure qryOrcamentoSelecionadoValidate(Sender: TField);
    procedure EdtQtdeParcelasExit(Sender: TObject);
    procedure btnSalvar2Click(Sender: TObject);
    procedure GrdOrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdOrcamentoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure cbProporcionalClick(Sender: TObject);
    procedure cbCentralizarClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure rgDenteRegiaoClick(Sender: TObject);
    procedure btnAdicionarProcedimentosClick(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure EdtDenteExit(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure grdAtendimentosCellClick(Column: TColumn);
    procedure grdItensAtendimentosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdItensAtendimentosCellClick(Column: TColumn);
    procedure grdItensAtendimentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdItensAtendimentosKeyPress(Sender: TObject; var Key: Char);
    procedure grdItensAtendimentosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgDenteRegiaoAtendimentoClick(Sender: TObject);
    procedure cbRegiaoAtendimentoClick(Sender: TObject);
    procedure rgSituacaoAtendimentoClick(Sender: TObject);
    procedure mmoObsAtendimentoExit(Sender: TObject);
    procedure mmoGlosaTISSExit(Sender: TObject);
    procedure EdtDtGlosaExit(Sender: TObject);
    procedure cbProcGlosadoClick(Sender: TObject);
    procedure btnSalvarAtendimentoClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure grdProcedimentosAtendimentosCellClick(Column: TColumn);
    procedure grdProcedimentosAtendimentosKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure grdProcedimentosAtendimentosKeyPress(Sender: TObject;
      var Key: Char);
    procedure grdProcedimentosAtendimentosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAtendimentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAtendimentosKeyPress(Sender: TObject; var Key: Char);
    procedure grdAtendimentosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdAtendimentosMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
    procedure btnDeletarProcedimentoClick(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure btnEditarFotosClick(Sender: TObject);
  private
    rUltimoValorAcrescimo, rUltimoValorDesconto: Double;
    bLoad, bCarregado, bExameOralNovo, bAnamneseNova: Boolean;
    PosicaoMouse: TPoint;
    iMedico: Integer;
    Procedure CarregaHistorico;
    Procedure CarregaPerguntas;
    Procedure CarregaExames;
    Procedure CarregaAnamnese;
    Procedure CarregaExameOral;
    Procedure CarregaProcedimentosDentes;
    Procedure CarregaFiltros;
    Procedure GravaHistorico(Descricao: String);
    Procedure MontaTabelasConvenios;
    Procedure AdicionarItem(pMenuPrincipal: TPopupMenu; pCaptionItem: string);
    Procedure AdicionarSubItem(pMenuPrincipal: TPopupMenu; pPosHoriz: Byte;
      pCaptionItem: string; Tag: Integer);
    Procedure CapturaClickMenu(Sender: TObject);
    Procedure CarregaDentes;
    Procedure CarregaAnotacoesDentes;
    Procedure CarregaAnotacaoDente(Dente: Integer);
    Procedure CarregaImagemDente(Dente: Integer);
    Procedure RemoveDente(Dente: Integer);
    Procedure DeciduoPermanente(Dente: Integer; Permanente: Boolean);
    Function NumeroDente(Numero: Integer): Integer;
    Procedure AtualizaCBMenu(Dente: Integer);
    Procedure EditaAnamnese;
    Procedure EditarExameOral;
    Procedure MontaTabelasTratamento;
    Procedure CarregaPropostaTratamento;
    Procedure CarregaItensPropostaTratamentos(IDProposta: Integer);
    Procedure CalculaTotalOrcamento;
    Procedure MontaParcelas;
    Function ProcedimentosConcluidos(ID: Integer): Boolean;
    Procedure CarregaReceituario;
    Procedure CarregaAtestados;
    Procedure CarregaTermos;
    Procedure CarregaAtendimentos;
    Procedure CarregaDadosAtendimento;

    Procedure CarregaAtendimentoItensDesc;
    Procedure CarregaProcedimentosAtendimento;
    Procedure SalvaProcedimentosAtendimentoDB;
  public

    iIDAgenda, iDente, iOdontograma, iPlanoTratamento: Integer;
    Procedure CarregaPlanoTratamento;
    Function RetornaPermanente(Dente: Integer): Boolean;
    Procedure CarregaAtendimentosItens;
  end;

var
  frmHistoricos: TfrmHistoricos;

implementation

{$R *.dfm}

uses P_Paciente, Main, Data, L_Anamnese, F_ProcedimentoDente,
  R_Anamnese, P_Medico, F_AnotacaoDente, uDM, L_ExameOral, AgendaPaciente,
  Faturamento, R_Orcamento, Descricao, R_Receituario, F_Receituario,
  R_TermoConsentimento, F_Retorno, R_FechamentoCaixa, C_TermoConsentimento,
  R_Recibo, R_Carne, F_Atestados, R_Atestados, E_FotoPaciente;

procedure TfrmHistoricos.AdicionarItem(pMenuPrincipal: TPopupMenu;
  pCaptionItem: string);
var
  NovoItem: TMenuItem;
begin
  NovoItem := TMenuItem.Create(Self);
  NovoItem.Caption := pCaptionItem;
  pMenuPrincipal.Items.Add(NovoItem);
end;

procedure TfrmHistoricos.AdicionarProcedimento1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmProcedimentoDente, frmProcedimentoDente);
  frmProcedimentoDente.iProcedimento := 0;
  frmProcedimentoDente.iPlanoTratamento := iPlanoTratamento;
  frmProcedimentoDente.iDente := iDente;
  frmProcedimentoDente.iOdontograma := iOdontograma;
  frmProcedimentoDente.ShowModal;
  FreeAndNil(frmProcedimentoDente);
end;

Procedure TfrmHistoricos.AdicionarSubItem(pMenuPrincipal: TPopupMenu;
  pPosHoriz: Byte; pCaptionItem: string; Tag: Integer);
var
  NovoItem: TMenuItem;
begin
  NovoItem := TMenuItem.Create(Self);
  NovoItem.Caption := pCaptionItem;
  NovoItem.Tag := Tag;
  NovoItem.OnClick := CapturaClickMenu;
  pMenuPrincipal.Items[pPosHoriz].Add(NovoItem);
end;

procedure TfrmHistoricos.Alterararcadaparadecdua1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  if iDente > 29 then
  Begin
    DeciduoPermanente(31, False);
    DeciduoPermanente(32, False);
    DeciduoPermanente(33, False);
    DeciduoPermanente(34, False);
    DeciduoPermanente(35, False);
    DeciduoPermanente(36, False);
    DeciduoPermanente(37, False);
    DeciduoPermanente(38, False);

    DeciduoPermanente(41, False);
    DeciduoPermanente(42, False);
    DeciduoPermanente(43, False);
    DeciduoPermanente(44, False);
    DeciduoPermanente(45, False);
    DeciduoPermanente(46, False);
    DeciduoPermanente(47, False);
    DeciduoPermanente(48, False);

    CarregaImagemDente(31);
    CarregaImagemDente(32);
    CarregaImagemDente(33);
    CarregaImagemDente(34);
    CarregaImagemDente(35);
    CarregaImagemDente(36);
    CarregaImagemDente(37);
    CarregaImagemDente(38);

    CarregaImagemDente(41);
    CarregaImagemDente(42);
    CarregaImagemDente(43);
    CarregaImagemDente(44);
    CarregaImagemDente(45);
    CarregaImagemDente(46);
    CarregaImagemDente(47);
    CarregaImagemDente(48);
  End
  Else
  Begin
    DeciduoPermanente(11, False);
    DeciduoPermanente(12, False);
    DeciduoPermanente(13, False);
    DeciduoPermanente(14, False);
    DeciduoPermanente(15, False);
    DeciduoPermanente(16, False);
    DeciduoPermanente(17, False);
    DeciduoPermanente(18, False);

    DeciduoPermanente(21, False);
    DeciduoPermanente(22, False);
    DeciduoPermanente(23, False);
    DeciduoPermanente(24, False);
    DeciduoPermanente(25, False);
    DeciduoPermanente(26, False);
    DeciduoPermanente(27, False);
    DeciduoPermanente(28, False);

    CarregaImagemDente(11);
    CarregaImagemDente(12);
    CarregaImagemDente(13);
    CarregaImagemDente(14);
    CarregaImagemDente(15);
    CarregaImagemDente(16);
    CarregaImagemDente(17);
    CarregaImagemDente(18);

    CarregaImagemDente(21);
    CarregaImagemDente(22);
    CarregaImagemDente(23);
    CarregaImagemDente(24);
    CarregaImagemDente(25);
    CarregaImagemDente(26);
    CarregaImagemDente(27);
    CarregaImagemDente(28);
  End;

  CarregaAnotacoesDentes;

end;

procedure TfrmHistoricos.Alterararcadaparapermanente1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  if iDente > 29 then
  Begin
    DeciduoPermanente(31, True);
    DeciduoPermanente(32, True);
    DeciduoPermanente(33, True);
    DeciduoPermanente(34, True);
    DeciduoPermanente(35, True);
    DeciduoPermanente(36, True);
    DeciduoPermanente(37, True);
    DeciduoPermanente(38, True);

    DeciduoPermanente(41, True);
    DeciduoPermanente(42, True);
    DeciduoPermanente(43, True);
    DeciduoPermanente(44, True);
    DeciduoPermanente(45, True);
    DeciduoPermanente(46, True);
    DeciduoPermanente(47, True);
    DeciduoPermanente(48, True);

    CarregaImagemDente(31);
    CarregaImagemDente(32);
    CarregaImagemDente(33);
    CarregaImagemDente(34);
    CarregaImagemDente(35);
    CarregaImagemDente(36);
    CarregaImagemDente(37);
    CarregaImagemDente(38);

    CarregaImagemDente(41);
    CarregaImagemDente(42);
    CarregaImagemDente(43);
    CarregaImagemDente(44);
    CarregaImagemDente(45);
    CarregaImagemDente(46);
    CarregaImagemDente(47);
    CarregaImagemDente(48);

  End
  Else
  Begin
    DeciduoPermanente(11, True);
    DeciduoPermanente(12, True);
    DeciduoPermanente(13, True);
    DeciduoPermanente(14, True);
    DeciduoPermanente(15, True);
    DeciduoPermanente(16, True);
    DeciduoPermanente(17, True);
    DeciduoPermanente(18, True);

    DeciduoPermanente(21, True);
    DeciduoPermanente(22, True);
    DeciduoPermanente(23, True);
    DeciduoPermanente(24, True);
    DeciduoPermanente(25, True);
    DeciduoPermanente(26, True);
    DeciduoPermanente(27, True);
    DeciduoPermanente(28, True);

    CarregaImagemDente(11);
    CarregaImagemDente(12);
    CarregaImagemDente(13);
    CarregaImagemDente(14);
    CarregaImagemDente(15);
    CarregaImagemDente(16);
    CarregaImagemDente(17);
    CarregaImagemDente(18);

    CarregaImagemDente(21);
    CarregaImagemDente(22);
    CarregaImagemDente(23);
    CarregaImagemDente(24);
    CarregaImagemDente(25);
    CarregaImagemDente(26);
    CarregaImagemDente(27);
    CarregaImagemDente(28);
  End;

  CarregaAnotacoesDentes;

end;

procedure TfrmHistoricos.Anotaessobreodente1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmAnotacaoDente, frmAnotacaoDente);
  frmAnotacaoDente.iDente := iDente;
  frmAnotacaoDente.iIDOdontograma := iOdontograma;
  frmAnotacaoDente.sDente := IntToStr(iDente);
  frmAnotacaoDente.CarregaAnotacoes(iOdontograma, iDente);
  frmAnotacaoDente.ShowModal;
  FreeAndNil(frmAnotacaoDente);

  CarregaAnotacoesDentes;

end;

procedure TfrmHistoricos.Arcada1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  if iDente > 29 then
  Begin
    RemoveDente(31);
    RemoveDente(32);
    RemoveDente(33);
    RemoveDente(34);
    RemoveDente(35);
    RemoveDente(36);
    RemoveDente(37);
    RemoveDente(38);

    RemoveDente(41);
    RemoveDente(42);
    RemoveDente(43);
    RemoveDente(44);
    RemoveDente(45);
    RemoveDente(46);
    RemoveDente(47);
    RemoveDente(48);

    CarregaImagemDente(31);
    CarregaImagemDente(32);
    CarregaImagemDente(33);
    CarregaImagemDente(34);
    CarregaImagemDente(35);
    CarregaImagemDente(36);
    CarregaImagemDente(37);
    CarregaImagemDente(38);

    CarregaImagemDente(41);
    CarregaImagemDente(42);
    CarregaImagemDente(43);
    CarregaImagemDente(44);
    CarregaImagemDente(45);
    CarregaImagemDente(46);
    CarregaImagemDente(47);
    CarregaImagemDente(48);
  End
  Else
  Begin
    RemoveDente(11);
    RemoveDente(12);
    RemoveDente(13);
    RemoveDente(14);
    RemoveDente(15);
    RemoveDente(16);
    RemoveDente(17);
    RemoveDente(18);

    RemoveDente(21);
    RemoveDente(22);
    RemoveDente(23);
    RemoveDente(24);
    RemoveDente(25);
    RemoveDente(26);
    RemoveDente(27);
    RemoveDente(28);

    CarregaImagemDente(11);
    CarregaImagemDente(12);
    CarregaImagemDente(13);
    CarregaImagemDente(14);
    CarregaImagemDente(15);
    CarregaImagemDente(16);
    CarregaImagemDente(17);
    CarregaImagemDente(18);

    CarregaImagemDente(21);
    CarregaImagemDente(22);
    CarregaImagemDente(23);
    CarregaImagemDente(24);
    CarregaImagemDente(25);
    CarregaImagemDente(26);
    CarregaImagemDente(27);
    CarregaImagemDente(28);
  End;

end;

procedure TfrmHistoricos.AtualizaCBMenu(Dente: Integer);
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT INCLUSO, SEMIINCLUSO, SUPRANUMERARIO, MICRODENTE, COROA FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := Dente;
    Open;

    if FieldByname('INCLUSO').AsBoolean then
    Begin
      DenteIncluso1.Checked := True;
    End
    Else
    Begin
      DenteIncluso1.Checked := False;
    End;

    if FieldByname('SEMIINCLUSO').AsBoolean then
    Begin
      Dentesemiincluso1.Checked := True;
    End
    Else
    Begin
      Dentesemiincluso1.Checked := False;
    End;

    if FieldByname('SUPRANUMERARIO').AsBoolean then
    Begin
      DenteSupranumerrio1.Checked := True;
    End
    Else
    Begin
      DenteSupranumerrio1.Checked := False;
    End;

    if FieldByname('MICRODENTE').AsBoolean then
    Begin
      Microdente1.Checked := True;
    End
    Else
    Begin
      Microdente1.Checked := False;
    End;

    if not FieldByname('COROA').AsBoolean then
    Begin
      RemoverIncluirCoroa1.Checked := True;
    End
    Else
    Begin
      RemoverIncluirCoroa1.Checked := False;
    End;

  End;
end;

procedure TfrmHistoricos.btnAdicionarProcedimentosClick(Sender: TObject);
var
  i, iPropostraDente, iPropostaTratamento: Integer;
  sDente: String;
begin
  inherited;


  EdtDenteExit(Self);

  if EdtDente.Text = '' then
    Begin
      EdtDente.Text := '0';
    End;

  sDente := EdtDente.Text;

  if rgDenteRegiao.ItemIndex = 0 then
  Begin
    if EdtDente.Text = '' then
    Begin
      Application.MessageBox
        ('Você precisa informar um dente para este procedimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      EdtDente.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    sDente := '0';
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    SQL.Add('AND DESCRICAO = :pDesc');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Parameters.ParamByName('pDesc').Value := cbProposta.Text;
    Open;

    if FieldByname('APROVADA').AsBoolean then
    Begin
      Application.MessageBox
        ('Está proposta já foi aprovada, selecione ou gere uma nova proposta!',
        'Atenção!', mb_ok + MB_ICONWARNING);
      Exit;
    End;

    iPropostaTratamento := FieldByname('ID_PROPOSTATRATAMENTO').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOSDENTES');
    SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = 0');
    Open;

    Append;
    FieldByname('DENTE').AsString := sDente;
    FieldByname('ID_PROCEDIMENTOS').AsInteger :=
      qryProcedimentosID_PROCEDIMENTOS.AsInteger;
    FieldByname('ID_ODONTOGRAMA').AsInteger := iOdontograma;
    FieldByname('SITUACAO').AsInteger := rgSituação.ItemIndex;
    FieldByname('DENTE_REGIAO').AsInteger := rgDenteRegiao.ItemIndex;

    if rgDenteRegiao.ItemIndex = 0 then
    Begin
      FieldByname('DESCRICAOFACEREGIAO').AsString := RetornaCombinacaoFace(cbFace);
      FieldByname('TISSFACE').AsInteger := 0;  //nao usa mais pra nada
      FieldByname('TISSREGIAO').AsInteger := 0;
    End
    Else
    Begin
      FieldByname('DESCRICAOFACEREGIAO').AsString := cbTISS.Text;
      FieldByname('TISSFACE').AsInteger := 0;
      FieldByname('TISSREGIAO').AsInteger := cbTISS.ItemIndex;
    End;

    FieldByname('TISSREGIAO').AsInteger := cbTISS.ItemIndex;
    FieldByname('PARTICULAR_CONVENIO').AsInteger := cbTabela.ItemIndex;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(ID_PROCEDIMENTOSDENTES) AS ID FROM PROCEDIMENTOSDENTES');
    Open;

    iPropostraDente := FieldByname('ID').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ITENSPROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_ITENSPROPOSTATRATAMENTO = 0');
    Open;

    Append;
    FieldByname('ID_PROPOSTATRATAMENTO').AsInteger := iPropostaTratamento;
    FieldByname('ID_PROCEDIMENTOSDENTES').AsInteger := iPropostraDente;
    FieldByname('ValorAcrescimo').AsFloat := 0;
    FieldByname('ValorDesconto').AsFloat := 0;
    FieldByname('FATURADO').AsBoolean := False;
    FieldByname('SELECIONADO').AsBoolean := True;
    Post;
  End;

  CarregaProcedimentosDentes;
  CarregaDadosAtendimento;
  CarregaProcedimentosAtendimento;
  cbPropostaClick(Self);

  for I := 0 to cbFace.Count -1 do
    Begin
      cbFace.Checked[i] := False;
    End;

  EdtDente.Text := '0';
  cbTISS.ItemIndex := 0;
  rgSituação.ItemIndex := 0;

end;

procedure TfrmHistoricos.btnD11Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD11.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD12Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD12.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD13Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD13.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD14Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD14.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD15Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD15.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD16Click(Sender: TObject);
begin
  inherited;
  iDente := 16;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD17Click(Sender: TObject);
begin
  inherited;
  iDente := 17;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD18Click(Sender: TObject);
begin
  inherited;
  iDente := 18;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD21Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD21.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD22Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD22.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD23Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD23.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD24Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD24.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD25Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD25.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD26Click(Sender: TObject);
begin
  inherited;
  iDente := 26;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD27Click(Sender: TObject);
begin
  inherited;
  iDente := 27;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD28Click(Sender: TObject);
begin
  inherited;
  iDente := 28;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD31Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD31.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD32Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD32.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD33Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD33.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD34Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD34.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD35Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD35.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD36Click(Sender: TObject);
begin
  inherited;
  iDente := 36;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD37Click(Sender: TObject);
begin
  inherited;
  iDente := 37;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD38Click(Sender: TObject);
begin
  inherited;
  iDente := 38;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD41Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD41.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD42Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD42.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD43Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD43.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD44Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD44.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD45Click(Sender: TObject);
begin
  inherited;
  iDente := StrToInt(btnD45.Caption);
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD46Click(Sender: TObject);
begin
  inherited;
  iDente := 46;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD47Click(Sender: TObject);
begin
  inherited;
  iDente := 47;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnD48Click(Sender: TObject);
begin
  inherited;
  iDente := 48;
  Anotaessobreodente1Click(Self);
end;

procedure TfrmHistoricos.btnDeletarProcedimentoClick(Sender: TObject);
var
  iRes : Integer;
begin
  inherited;
  if qryProcedimentosDentesSituacao.AsInteger = 1 then
    Begin
    Application.MessageBox('Não é permitido deletar um procedimento que já foi finalizado',
      'Erro!', mb_ok + MB_ICONERROR);
    Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT Faturado FROM ITENSPROPOSTATRATAMENTO');
      SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = :pID');
      Parameters.ParamByName('pID').Value := qryProcedimentosDentesIDProcedimentosDentes.AsInteger;
      Open;

      if FieldByName('Faturado').AsBoolean then
        Begin
          Application.MessageBox('Não é permitido deletar um procedimento que já foi faturado',
            'Erro!', mb_ok + MB_ICONERROR);
          Exit;
        End;

      iRes := application.MessageBox
          (PChar('Será deletado o procedimento: '+ qryProcedimentosDentesProcedimento.AsString
          + #10 + #13 + 'deseja continuar?'), 'Atenção',
          MB_YESNO OR MB_DEFBUTTON2 OR MB_ICONEXCLAMATION);

     if iRes = IDNO then
      Begin
        Exit;
      End;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PROCEDIMENTOSDENTES');
      SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = :pID');
      Parameters.ParamByName('pID').Value := qryProcedimentosDentesIDProcedimentosDentes.AsInteger;
      ExecSQL;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM ITENSPROPOSTATRATAMENTO');
      SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = :pID');
      Parameters.ParamByName('pID').Value := qryProcedimentosDentesIDProcedimentosDentes.AsInteger;
      ExecSQL;
    End;
    CarregaProcedimentosDentes;
    CarregaAtendimentos;
    cbTabelaClick(Self);
end;

procedure TfrmHistoricos.btnEditarFotosClick(Sender: TObject);
begin
  inherited;
  if qryFotosPacienteID_FOTOSPACIENTE.AsString = '' then  Exit;

  Application.CreateForm(TfrmEditarFotoPaciente, frmEditarFotoPaciente);
  frmEditarFotoPaciente.CarregaFoto(qryFotosPacienteID_FOTOSPACIENTE.AsInteger);
  frmEditarFotoPaciente.ShowModal;
  FreeAndNil(frmEditarFotoPaciente);
  qryFotosPaciente.Close;
  qryFotosPaciente.Open;
end;

procedure TfrmHistoricos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmHistoricos.btnImprimirAnamneseClick(Sender: TObject);
begin
  inherited;

  if qryPerguntasAnamnese.RecordCount = 0 then
  Begin
    Application.MessageBox('A Anamnese está vazia e não será gerada!',
      'Erro!!!', mb_ok + MB_ICONINFORMATION);
    Exit;
  End;

  Application.CreateForm(TfrmRelAnamnese, frmRelAnamnese);
  frmRelAnamnese.iPaciente := StrToInt(EdtCodP.Text);
  frmRelAnamnese.iMedico := qryPacienteAnamneseID_MEDICO.AsInteger;
  frmRelAnamnese.CarregaDadosPaciente;
  frmRelAnamnese.iIDPacienteAnamnese :=
    qryPacienteAnamneseID_PACIENTEANAMNESE.AsInteger;
  frmRelAnamnese.GeraAnamnese;
  frmRelAnamnese.Relatorio.Preview;

  FreeAndNil(frmRelAnamnese);
end;

procedure TfrmHistoricos.btnSalvarAnamneseClick(Sender: TObject);
var
  IDPacienteAnamense: Integer;
begin
  inherited;

  if EdtCodP.Text = '' then
  Begin
    Exit;
  End;

  if not bAnamneseNova then
  Begin
    EditaAnamnese;
    Application.MessageBox('Anamnese salva com sucesso', 'Sucesso!!!',
      mb_ok + MB_ICONINFORMATION);
    Exit;
  End;

  if EdtCodM.Text = '' then
  Begin
    Application.MessageBox
      ('Antes de salvar é necessário informar o Dentista responsável pela anamnese',
      'Erro!!!', mb_ok + MB_ICONERROR);
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PACIENTEANAMNESE');
    SQL.Add('WHERE ID_PACIENTEANAMNESE = 0');
    Open;

    Append;
    FieldByname('ID_PACIENTE').AsString := EdtCodP.Text;
    FieldByname('ID_MEDICO').AsString := EdtCodM.Text;

    FieldByname('DATA').AsDateTime := Now;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 ID_PACIENTEANAMNESE FROM PACIENTEANAMNESE');
    SQL.Add('ORDER BY ID_PACIENTEANAMNESE DESC');
    Open;

    IDPacienteAnamense := FieldByname('ID_PACIENTEANAMNESE').AsInteger;

    qryPerguntasAnamnese.First;

    while not qryPerguntasAnamnese.eof do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASPACIENTEANAMNESE');
      SQL.Add('WHERE ID_PACIENTEANAMNESE = 0');
      Open;
      Append;

      FieldByname('ID_PACIENTEANAMNESE').AsInteger := IDPacienteAnamense;
      FieldByname('PERGUNTA').AsString := qryPerguntasAnamnesePergunta.AsString;
      FieldByname('AFIRMO').AsBoolean := qryPerguntasAnamnese.FieldByname
        ('AFIRMO').AsBoolean;
      FieldByname('NEGO').AsBoolean := qryPerguntasAnamnese.FieldByname('NEGO')
        .AsBoolean;
      FieldByname('NAOSEI').AsBoolean := qryPerguntasAnamnese.FieldByname
        ('NAOSEI').AsBoolean;
      FieldByname('OBRIGATORIO').AsBoolean := qryPerguntasAnamnese.FieldByname
        ('OBRIGATORIO').AsBoolean;
      FieldByname('OBSERVACAO').AsString := qryPerguntasAnamnese.FieldByname
        ('OBSERVACAO').AsString;
      Post;

      qryPerguntasAnamnese.Next;
    End;

    CarregaAnamnese;
    bAnamneseNova := False;
    GrdPerguntasAnamnese.ReadOnly := True;
    EdtCodM.ReadOnly := True;
  End;

  GravaHistorico('Paciente Realizou uma Nova Anamnese.');

  Application.MessageBox('Anamnese salva com sucesso', 'Sucesso!!!',
    mb_ok + MB_ICONINFORMATION);

end;

procedure TfrmHistoricos.btnSalvarAtendimentoClick(Sender: TObject);
var
  iIDAtendimento: Integer;
begin
  inherited;

  iIDAtendimento := qryAtendimentosID_ATENDIMENTO.AsInteger;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ATENDIMENTO');
    SQL.Add('WHERE ID_ATENDIMENTO = :pID');
    Parameters.ParamByName('pID').Value :=
      qryAtendimentosID_ATENDIMENTO.AsInteger;
    Open;

    Edit;
    FieldByname('STATUS').AsInteger := rgStatusAtendimento.ItemIndex;
    if rgStatusAtendimento.ItemIndex = 0 then
    Begin
      FieldByname('STATUSTEXTO').AsString := 'A Realizar';
      GravaHistorico('Atendimento da Data: ' + FormatDateTime('DD/MM/YYYY',
        qryAtendimentosDATA.AsDateTime) + ' Salvo com o Status: A Realizar');
    End
    Else
    Begin
      FieldByname('STATUSTEXTO').AsString := 'Finalizado';
      GravaHistorico('Atendimento da Data: ' + FormatDateTime('DD/MM/YYYY',
        qryAtendimentosDATA.AsDateTime) + ' Salvo com o Status: A Finalizado');
    End;

    FieldByname('DATA').AsDateTime := EdtDtIniAtendimento.Date;

    if EdtDtFimAtendimento.Text <> '  /  /    ' then
    Begin
      FieldByname('DATAFIM').AsDateTime := EdtDtFimAtendimento.Date;
    End;

    Post;

    qryProcedimentosAtendimentos.First;

    while not qryProcedimentosAtendimentos.eof do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOSDENTES');
      SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = :pID');
      Parameters.ParamByName('pID').Value :=
        qryProcedimentosAtendimentosIDProcedimentosDentes.AsInteger;
      Open;
      { DESCRICAOFACEREGIAO }
      Edit;
      // FieldByName('PARTICULAR_CONVENIO').AsInteger := qryProcedimentosAtendimentosPARTICULAR_CONVENIO.AsInteger;
      FieldByname('SITUACAO').AsInteger :=
        qryProcedimentosAtendimentosSituacao.AsInteger;
      FieldByname('OBSERVACAO').AsString :=
        qryProcedimentosAtendimentosObservacaoProcedimento.AsString;
      FieldByname('OBSERVACAOGLOSA').AsString :=
        qryProcedimentosAtendimentosObservacaoGlosa.AsString;
      FieldByname('TISSFACE').AsInteger := 0;
      FieldByname('DENTE_REGIAO').AsInteger :=
        qryProcedimentosAtendimentosDENTE_REGIAO.AsInteger;


      if qryProcedimentosAtendimentosDENTE_REGIAO.AsInteger = 0 then
        Begin
          FieldByName('DESCRICAOFACEREGIAO').AsString :=  RetornaCombinacaoFace(cbFaceAtendimento);
          FieldByname('TISSREGIAO').AsInteger := 0;
        End
      Else
        Begin
          FieldByname('TISSREGIAO').AsInteger := qryProcedimentosAtendimentosTISSREGIAO.AsInteger;
          FieldByName('DESCRICAOFACEREGIAO').AsString := qryProcedimentosAtendimentosDESCRICAOFACE.AsString;
        End;

      if (qryProcedimentosAtendimentosDataGlosa.AsString <> '  /  /    ') or
        (qryProcedimentosAtendimentosDataGlosa.AsString <> '') then
      Begin
        FieldByname('DATADAGLOSA').AsDateTime :=
          qryProcedimentosAtendimentosDataGlosa.AsDateTime;
      End;

      if qryProcedimentosAtendimentosProcedimentoGlosado.AsBoolean then
      Begin
        FieldByname('PROCEDIMENTOGLOSADO').AsInteger := 1;
      End
      Else
      Begin
        FieldByname('PROCEDIMENTOGLOSADO').AsInteger := 0;
      End;

      Post;
      qryProcedimentosAtendimentos.Next;
    End;
  End;

  if iIDAgenda > 0 then
  Begin
    If Application.MessageBox
      ('Deseja alterar o status do agendamento para "Atendido"?', 'Atenção!',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
    Begin
      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM AGENDA');
        SQL.Add('WHERE ID_AGENDA = :pID');
        Parameters.ParamByName('pID').Value := iIDAgenda;
        Open;

        Edit;
        FieldByname('STATUS').AsInteger := 0;
        FieldByname('CORLABEL').AsString := '6610596';
        Post;

        frmAgendaPaciente.bAtendido := True;
      End;
      If Application.MessageBox('Deseja agendar o Retorno?', 'Atenção!',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
      Begin
        SpeedButton9Click(Self);
      End;
    End;
  End;

  CarregaAtendimentos;
  qryAtendimentos.Locate('ID_ATENDIMENTO', iIDAtendimento, []);
  CarregaAtendimentosItens;
  CarregaProcedimentosDentes;
  CarregaProcedimentosAtendimento;
end;

procedure TfrmHistoricos.btnSalvarClick(Sender: TObject);
var
  rTotalGeral, rValorTabela, rValorAcrescimo, rValorDesconto: Double;
begin
  rValorTabela := 0;
  rValorAcrescimo := 0;
  rValorDesconto := 0;

  With qryOrcamento do
  Begin
    First;

    while Not eof do
    Begin
      if (FieldByname('FATURADO').AsBoolean = False) And
        (qryOrcamentoTipo.AsString = 'P') then
      Begin
        rValorTabela := FieldByname('ValorTabela').AsFloat;

        if cbTipoDesconto.ItemIndex = 0 then
        Begin
          rValorDesconto := (rValorTabela * EdtVlrDesconto.Value) / 100;
        End
        Else
        Begin
          rValorDesconto := EdtVlrDesconto.Value;
        End;
        Edit;
        FieldByname('ValorDesconto').AsFloat := rValorDesconto;
        Post;
      End;

      Next;
    End;
  End;

  qryOrcamento.First;
  CalculaTotalOrcamento;
end;

procedure TfrmHistoricos.btnTrocaLeiteClick(Sender: TObject);
begin
  inherited;
  if qryOdontogramaID_ODONTOGRAMA.AsInteger > 0 then
  Begin

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT LEITE_NORMAL FROM ODONTOGRAMA');
      SQL.Add('WHERE ID_ODONTOGRAMA = :pID');
      Parameters.ParamByName('pID').Value :=
        qryOdontogramaID_ODONTOGRAMA.AsInteger;
      Open;
    End;

    if qryOdontogramaLEITE_NORMAL.AsInteger = 0 then
    Begin
      If Application.MessageBox
        ('Deseja transformar todos os dentes em permanentes?', 'Odontograma!',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
      Begin
        qryAux.Edit;
        qryAux.FieldByname('LEITE_NORMAL').AsInteger := 1;
        qryAux.Post;
      End;
    End;

    if qryOdontogramaLEITE_NORMAL.AsInteger = 1 then
    Begin
      If Application.MessageBox
        ('Deseja transformar todos os dentes em decíduos?', 'Odontograma!',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
      Begin
        qryAux.Edit;
        qryAux.FieldByname('LEITE_NORMAL').AsInteger := 0;
        qryAux.Post;
      End;
    End;

  End;
end;

procedure TfrmHistoricos.CalculaTotalOrcamento;
var
  rValorRecebido,
  rValorReceber,
  rTotalGeral,
  rValorTabela,
  rValorAcrescimo,
  rPago,
  rValorDesconto: Double;
begin

  rValorTabela := 0;
  rValorAcrescimo := 0;
  rValorDesconto := 0;
  rValorRecebido := 0;
  rValorReceber := 0;
  rPago := 0;

  With qryOrcamento do
  Begin
    First;

    while Not eof do
    Begin
      if (FieldByname('FATURADO').AsBoolean = False) And
        (FieldByname('SELECIONADO').AsBoolean = True) then
      Begin
        rPago := rPago + qryOrcamentoValorPago.AsFloat;
        rValorTabela := rValorTabela + FieldByname('ValorTabela').AsFloat;
        rValorAcrescimo := rValorAcrescimo +
          FieldByname('ValorAcrescimo').AsFloat;
        rValorDesconto := rValorDesconto + FieldByname('ValorDesconto').AsFloat;
      End;

      if FieldByName('FATURADO').AsBoolean then
        Begin
          rValorRecebido := rValorRecebido + FieldByname('ValorTabela').AsFloat;
          rValorRecebido := rValorRecebido - qryOrcamentoValorDesconto.AsFloat;
          rValorRecebido := rValorRecebido + qryOrcamentoValorAcrescimo.AsFloat;
        End
      Else
        Begin
          rValorReceber := rValorReceber + FieldByname('ValorTabela').AsFloat;
          rValorReceber := rValorReceber - qryOrcamentoValorDesconto.AsFloat;
          rValorReceber := rValorReceber + qryOrcamentoValorAcrescimo.AsFloat;
          rValorReceber := rValorReceber - FieldByName('VALORPAGO').AsFloat;
        End;

      if (not FieldByName('FATURADO').AsBoolean) And (FieldByName('VALORPAGO').AsFloat > 0) then
        Begin
          rValorRecebido := rValorRecebido + FieldByName('VALORPAGO').AsFloat;
        End;

      Next;
    End;

    First;
  End;

  rTotalGeral := (rValorTabela + rValorAcrescimo) - rValorDesconto;
  rTotalGeral := rTotalGeral - rPago;

  lblTotalRecebido.Caption := FormatFloat('#,###0.00', rValorRecebido);
  lblTotalaReceber.Caption := FormatFloat('#,###0.00', rValorReceber);
  lblTabela.Caption := FormatFloat('#,###,##0.00', rValorTabela);
  lblAcrescimo.Caption := FormatFloat('#,###,##0.00', rValorAcrescimo);
  lblDesconto.Caption := FormatFloat('#,###,##0.00', rValorDesconto);
  lblTotal.Caption := FormatFloat('#,###,##0.00', rTotalGeral);

  MontaParcelas;
end;

procedure TfrmHistoricos.CapturaClickMenu(Sender: TObject);
begin
  Application.CreateForm(TfrmProcedimentoDente, frmProcedimentoDente);
  frmProcedimentoDente.iProcedimento := TMenuItem(Sender).Tag;
  frmProcedimentoDente.iDente := iDente;
  frmProcedimentoDente.iPlanoTratamento := iPlanoTratamento;
  frmProcedimentoDente.iOdontograma := iOdontograma;
  frmProcedimentoDente.ParticularConvenio := cbTabela.ItemIndex;
  frmProcedimentoDente.ShowModal;
  FreeAndNil(frmProcedimentoDente);
  CarregaProcedimentosDentes;
  CarregaPropostaTratamento;
end;

procedure TfrmHistoricos.CarregaAnamnese;
begin
  With qryPacienteAnamnese do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_PACIENTEANAMNESE, DATA, MEDICOS.ID_MEDICO, ID_PACIENTE, MEDICOS.NOME FROM PACIENTEANAMNESE');
    SQL.Add('INNER JOIN MEDICOS ON PACIENTEANAMNESE.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE ID_PACIENTE = :pID ORDER BY DATA DESC');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;

    EdtCodM.Text := FieldByname('ID_MEDICO').AsString;
    EdtMedico.Text := FieldByname('NOME').AsString;
  End;

  bAnamneseNova := False;
  GrdPerguntasAnamnese.ReadOnly := True;
  EdtCodM.ReadOnly := True;

  CarregaPerguntas;

end;

procedure TfrmHistoricos.CarregaAnotacaoDente(Dente: Integer);
var
  iDenteAux: Integer;
begin

  iDenteAux := NumeroDente(Dente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ANOTACAODENTE');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pDente').Value := Dente;
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Open;

    if not eof then
    Begin

      if Dente = 11 then
      Begin
        btnD11.Font.Color := clBlue;
        btnD11.Font.Style := [fsBold];
      End;

      if Dente = 12 then
      Begin
        btnD12.Font.Color := clBlue;
        btnD12.Font.Style := [fsBold];
      End;

      if Dente = 13 then
      Begin
        btnD13.Font.Color := clBlue;
        btnD13.Font.Style := [fsBold];
      End;

      if Dente = 14 then
      Begin
        btnD14.Font.Color := clBlue;
        btnD14.Font.Style := [fsBold];
      End;

      if Dente = 15 then
      Begin
        btnD15.Font.Color := clBlue;
        btnD15.Font.Style := [fsBold];
      End;

      if Dente = 16 then
      Begin
        btnD16.Font.Color := clBlue;
        btnD16.Font.Style := [fsBold];
      End;

      if Dente = 17 then
      Begin
        btnD17.Font.Color := clBlue;
        btnD17.Font.Style := [fsBold];
      End;

      if Dente = 18 then
      Begin
        btnD18.Font.Color := clBlue;
        btnD18.Font.Style := [fsBold];
      End;

      if Dente = 21 then
      Begin
        btnD21.Font.Color := clBlue;
        btnD21.Font.Style := [fsBold];
      End;

      if Dente = 22 then
      Begin
        btnD22.Font.Color := clBlue;
        btnD22.Font.Style := [fsBold];
      End;

      if Dente = 23 then
      Begin
        btnD23.Font.Color := clBlue;
        btnD23.Font.Style := [fsBold];
      End;

      if Dente = 24 then
      Begin
        btnD24.Font.Color := clBlue;
        btnD24.Font.Style := [fsBold];
      End;

      if Dente = 25 then
      Begin
        btnD25.Font.Color := clBlue;
        btnD25.Font.Style := [fsBold];
      End;

      if Dente = 26 then
      Begin
        btnD26.Font.Color := clBlue;
        btnD26.Font.Style := [fsBold];
      End;

      if Dente = 27 then
      Begin
        btnD27.Font.Color := clBlue;
        btnD27.Font.Style := [fsBold];
      End;

      if Dente = 28 then
      Begin
        btnD28.Font.Color := clBlue;
        btnD28.Font.Style := [fsBold];
      End;

      if Dente = 31 then
      Begin
        btnD31.Font.Color := clBlue;
        btnD31.Font.Style := [fsBold];
      End;

      if Dente = 32 then
      Begin
        btnD32.Font.Color := clBlue;
        btnD32.Font.Style := [fsBold];
      End;

      if Dente = 33 then
      Begin
        btnD33.Font.Color := clBlue;
        btnD33.Font.Style := [fsBold];
      End;

      if Dente = 34 then
      Begin
        btnD34.Font.Color := clBlue;
        btnD34.Font.Style := [fsBold];
      End;

      if Dente = 35 then
      Begin
        btnD35.Font.Color := clBlue;
        btnD35.Font.Style := [fsBold];
      End;

      if Dente = 36 then
      Begin
        btnD36.Font.Color := clBlue;
        btnD36.Font.Style := [fsBold];
      End;

      if Dente = 37 then
      Begin
        btnD37.Font.Color := clBlue;
        btnD37.Font.Style := [fsBold];
      End;

      if Dente = 38 then
      Begin
        btnD38.Font.Color := clBlue;
        btnD38.Font.Style := [fsBold];
      End;

      if Dente = 41 then
      Begin
        btnD41.Font.Color := clBlue;
        btnD41.Font.Style := [fsBold];
      End;

      if Dente = 42 then
      Begin
        btnD42.Font.Color := clBlue;
        btnD42.Font.Style := [fsBold];
      End;

      if Dente = 43 then
      Begin
        btnD43.Font.Color := clBlue;
        btnD43.Font.Style := [fsBold];
      End;

      if Dente = 44 then
      Begin
        btnD44.Font.Color := clBlue;
        btnD44.Font.Style := [fsBold];
      End;

      if Dente = 45 then
      Begin
        btnD45.Font.Color := clBlue;
        btnD45.Font.Style := [fsBold];
      End;

      if Dente = 46 then
      Begin
        btnD46.Font.Color := clBlue;
        btnD46.Font.Style := [fsBold];
      End;

      if Dente = 47 then
      Begin
        btnD47.Font.Color := clBlue;
        btnD47.Font.Style := [fsBold];
      End;

      if Dente = 48 then
      Begin
        btnD48.Font.Color := clBlue;
        btnD48.Font.Style := [fsBold];
      End;

      if Dente = 51 then
      Begin
        btnD11.Font.Color := clBlue;
        btnD11.Font.Style := [fsBold];
      End;

      if Dente = 52 then
      Begin
        btnD12.Font.Color := clBlue;
        btnD12.Font.Style := [fsBold];
      End;

      if Dente = 53 then
      Begin
        btnD13.Font.Color := clBlue;
        btnD13.Font.Style := [fsBold];
      End;

      if Dente = 54 then
      Begin
        btnD14.Font.Color := clBlue;
        btnD14.Font.Style := [fsBold];
      End;

      if Dente = 55 then
      Begin
        btnD15.Font.Color := clBlue;
        btnD15.Font.Style := [fsBold];
      End;

      if Dente = 61 then
      Begin
        btnD21.Font.Color := clBlue;
        btnD21.Font.Style := [fsBold];
      End;

      if Dente = 62 then
      Begin
        btnD22.Font.Color := clBlue;
        btnD22.Font.Style := [fsBold];
      End;

      if Dente = 63 then
      Begin
        btnD23.Font.Color := clBlue;
        btnD23.Font.Style := [fsBold];
      End;

      if Dente = 64 then
      Begin
        btnD24.Font.Color := clBlue;
        btnD24.Font.Style := [fsBold];
      End;

      if Dente = 65 then
      Begin
        btnD25.Font.Color := clBlue;
        btnD25.Font.Style := [fsBold];
      End;

      if Dente = 71 then
      Begin
        btnD31.Font.Color := clBlue;
        btnD31.Font.Style := [fsBold];
      End;

      if Dente = 72 then
      Begin
        btnD32.Font.Color := clBlue;
        btnD32.Font.Style := [fsBold];
      End;

      if Dente = 73 then
      Begin
        btnD33.Font.Color := clBlue;
        btnD33.Font.Style := [fsBold];
      End;

      if Dente = 74 then
      Begin
        btnD34.Font.Color := clBlue;
        btnD34.Font.Style := [fsBold];
      End;

      if Dente = 75 then
      Begin
        btnD35.Font.Color := clBlue;
        btnD35.Font.Style := [fsBold];
      End;

      if Dente = 81 then
      Begin
        btnD41.Font.Color := clBlue;
        btnD41.Font.Style := [fsBold];
      End;

      if Dente = 82 then
      Begin
        btnD42.Font.Color := clBlue;
        btnD42.Font.Style := [fsBold];
      End;

      if Dente = 83 then
      Begin
        btnD43.Font.Color := clBlue;
        btnD43.Font.Style := [fsBold];
      End;

      if Dente = 84 then
      Begin
        btnD44.Font.Color := clBlue;
        btnD44.Font.Style := [fsBold];
      End;

      if Dente = 85 then
      Begin
        btnD45.Font.Color := clBlue;
        btnD45.Font.Style := [fsBold];
      End;

    End
    Else
    Begin
      if Dente = 11 then
      Begin
        btnD11.Font.Color := clWindowText;
        btnD11.Font.Style := [];
      End;

      if Dente = 12 then
      Begin
        btnD12.Font.Color := clWindowText;
        btnD12.Font.Style := [];
      End;

      if Dente = 13 then
      Begin
        btnD13.Font.Color := clWindowText;
        btnD13.Font.Style := [];
      End;

      if Dente = 14 then
      Begin
        btnD14.Font.Color := clWindowText;
        btnD14.Font.Style := [];
      End;

      if Dente = 15 then
      Begin
        btnD15.Font.Color := clWindowText;
        btnD15.Font.Style := [];
      End;

      if Dente = 16 then
      Begin
        btnD16.Font.Color := clWindowText;
        btnD16.Font.Style := [];
      End;

      if Dente = 17 then
      Begin
        btnD17.Font.Color := clWindowText;
        btnD17.Font.Style := [];
      End;

      if Dente = 18 then
      Begin
        btnD18.Font.Color := clWindowText;
        btnD18.Font.Style := [];
      End;

      if Dente = 21 then
      Begin
        btnD21.Font.Color := clWindowText;
        btnD21.Font.Style := [];
      End;

      if Dente = 22 then
      Begin
        btnD22.Font.Color := clWindowText;
        btnD22.Font.Style := [];
      End;

      if Dente = 23 then
      Begin
        btnD23.Font.Color := clWindowText;
        btnD23.Font.Style := [];
      End;

      if Dente = 24 then
      Begin
        btnD24.Font.Color := clWindowText;
        btnD24.Font.Style := [];
      End;

      if Dente = 25 then
      Begin
        btnD25.Font.Color := clWindowText;
        btnD25.Font.Style := [];
      End;

      if Dente = 26 then
      Begin
        btnD26.Font.Color := clWindowText;
        btnD26.Font.Style := [];
      End;

      if Dente = 27 then
      Begin
        btnD27.Font.Color := clWindowText;
        btnD27.Font.Style := [];
      End;

      if Dente = 28 then
      Begin
        btnD28.Font.Color := clWindowText;
        btnD28.Font.Style := [];
      End;

      if Dente = 31 then
      Begin
        btnD31.Font.Color := clWindowText;
        btnD31.Font.Style := [];
      End;

      if Dente = 32 then
      Begin
        btnD32.Font.Color := clWindowText;
        btnD32.Font.Style := [];
      End;

      if Dente = 33 then
      Begin
        btnD33.Font.Color := clWindowText;
        btnD33.Font.Style := [];
      End;

      if Dente = 34 then
      Begin
        btnD34.Font.Color := clWindowText;
        btnD34.Font.Style := [];
      End;

      if Dente = 35 then
      Begin
        btnD35.Font.Color := clWindowText;
        btnD35.Font.Style := [];
      End;

      if Dente = 36 then
      Begin
        btnD36.Font.Color := clWindowText;
        btnD36.Font.Style := [];
      End;

      if Dente = 37 then
      Begin
        btnD37.Font.Color := clWindowText;
        btnD37.Font.Style := [];
      End;

      if Dente = 38 then
      Begin
        btnD38.Font.Color := clWindowText;
        btnD38.Font.Style := [];
      End;

      if Dente = 41 then
      Begin
        btnD41.Font.Color := clWindowText;
        btnD41.Font.Style := [];
      End;

      if Dente = 42 then
      Begin
        btnD42.Font.Color := clWindowText;
        btnD42.Font.Style := [];
      End;

      if Dente = 43 then
      Begin
        btnD43.Font.Color := clWindowText;
        btnD43.Font.Style := [];
      End;

      if Dente = 44 then
      Begin
        btnD44.Font.Color := clWindowText;
        btnD44.Font.Style := [];
      End;

      if Dente = 45 then
      Begin
        btnD45.Font.Color := clWindowText;
        btnD45.Font.Style := [];
      End;

      if Dente = 46 then
      Begin
        btnD46.Font.Color := clWindowText;
        btnD46.Font.Style := [];
      End;

      if Dente = 47 then
      Begin
        btnD47.Font.Color := clWindowText;
        btnD47.Font.Style := [];
      End;

      if Dente = 48 then
      Begin
        btnD48.Font.Color := clWindowText;
        btnD48.Font.Style := [];
      End;

      if Dente = 51 then
      Begin
        btnD11.Font.Color := clWindowText;
        btnD11.Font.Style := [];
      End;

      if Dente = 52 then
      Begin
        btnD12.Font.Color := clWindowText;
        btnD12.Font.Style := [];
      End;

      if Dente = 53 then
      Begin
        btnD13.Font.Color := clWindowText;
        btnD13.Font.Style := [];
      End;

      if Dente = 54 then
      Begin
        btnD14.Font.Color := clWindowText;
        btnD14.Font.Style := [];
      End;

      if Dente = 55 then
      Begin
        btnD15.Font.Color := clWindowText;
        btnD15.Font.Style := [];
      End;

      if Dente = 61 then
      Begin
        btnD21.Font.Color := clWindowText;
        btnD21.Font.Style := [];
      End;

      if Dente = 62 then
      Begin
        btnD22.Font.Color := clWindowText;
        btnD22.Font.Style := [];
      End;

      if Dente = 63 then
      Begin
        btnD23.Font.Color := clWindowText;
        btnD23.Font.Style := [];
      End;

      if Dente = 64 then
      Begin
        btnD24.Font.Color := clWindowText;
        btnD24.Font.Style := [];
      End;

      if Dente = 65 then
      Begin
        btnD25.Font.Color := clWindowText;
        btnD25.Font.Style := [];
      End;

      if Dente = 71 then
      Begin
        btnD31.Font.Color := clWindowText;
        btnD31.Font.Style := [];
      End;

      if Dente = 72 then
      Begin
        btnD32.Font.Color := clWindowText;
        btnD32.Font.Style := [];
      End;

      if Dente = 73 then
      Begin
        btnD33.Font.Color := clWindowText;
        btnD33.Font.Style := [];
      End;

      if Dente = 74 then
      Begin
        btnD34.Font.Color := clWindowText;
        btnD34.Font.Style := [];
      End;

      if Dente = 75 then
      Begin
        btnD35.Font.Color := clWindowText;
        btnD35.Font.Style := [];
      End;

      if Dente = 81 then
      Begin
        btnD41.Font.Color := clWindowText;
        btnD41.Font.Style := [];
      End;

      if Dente = 82 then
      Begin
        btnD42.Font.Color := clWindowText;
        btnD42.Font.Style := [];
      End;

      if Dente = 83 then
      Begin
        btnD43.Font.Color := clWindowText;
        btnD43.Font.Style := [];
      End;

      if Dente = 84 then
      Begin
        btnD44.Font.Color := clWindowText;
        btnD44.Font.Style := [];
      End;

      if Dente = 85 then
      Begin
        btnD45.Font.Color := clWindowText;
        btnD45.Font.Style := [];
      End;
    End;

  End;
end;

procedure TfrmHistoricos.CarregaAnotacoesDentes;
begin
  if RetornaPermanente(11) then
  Begin
    CarregaAnotacaoDente(11);
  End
  Else
  Begin
    CarregaAnotacaoDente(51);
  End;

  if RetornaPermanente(12) then
  Begin
    CarregaAnotacaoDente(12);
  End
  Else
  Begin
    CarregaAnotacaoDente(52);
  End;

  if RetornaPermanente(13) then
  Begin
    CarregaAnotacaoDente(13);
  End
  Else
  Begin
    CarregaAnotacaoDente(53);
  End;

  if RetornaPermanente(14) then
  Begin
    CarregaAnotacaoDente(14);
  End
  Else
  Begin
    CarregaAnotacaoDente(54);
  End;

  if RetornaPermanente(15) then
  Begin
    CarregaAnotacaoDente(15);
  End
  Else
  Begin
    CarregaAnotacaoDente(55);
  End;

  CarregaAnotacaoDente(16);
  CarregaAnotacaoDente(17);
  CarregaAnotacaoDente(18);

  if RetornaPermanente(21) then
  Begin
    CarregaAnotacaoDente(21);
  End
  Else
  Begin
    CarregaAnotacaoDente(61);
  End;

  if RetornaPermanente(22) then
  Begin
    CarregaAnotacaoDente(22);
  End
  Else
  Begin
    CarregaAnotacaoDente(62);
  End;

  if RetornaPermanente(23) then
  Begin
    CarregaAnotacaoDente(23);
  End
  Else
  Begin
    CarregaAnotacaoDente(63);
  End;

  if RetornaPermanente(24) then
  Begin
    CarregaAnotacaoDente(24);
  End
  Else
  Begin
    CarregaAnotacaoDente(64);
  End;

  if RetornaPermanente(25) then
  Begin
    CarregaAnotacaoDente(25);
  End
  Else
  Begin
    CarregaAnotacaoDente(65);
  End;

  CarregaAnotacaoDente(26);
  CarregaAnotacaoDente(27);
  CarregaAnotacaoDente(28);

  if RetornaPermanente(31) then
  Begin
    CarregaAnotacaoDente(31);
  End
  Else
  Begin
    CarregaAnotacaoDente(71);
  End;

  if RetornaPermanente(32) then
  Begin
    CarregaAnotacaoDente(32);
  End
  Else
  Begin
    CarregaAnotacaoDente(72);
  End;

  if RetornaPermanente(33) then
  Begin
    CarregaAnotacaoDente(33);
  End
  Else
  Begin
    CarregaAnotacaoDente(73);
  End;

  if RetornaPermanente(34) then
  Begin
    CarregaAnotacaoDente(34);
  End
  Else
  Begin
    CarregaAnotacaoDente(74);
  End;

  if RetornaPermanente(35) then
  Begin
    CarregaAnotacaoDente(35);
  End
  Else
  Begin
    CarregaAnotacaoDente(75);
  End;

  CarregaAnotacaoDente(36);
  CarregaAnotacaoDente(37);
  CarregaAnotacaoDente(38);

  if RetornaPermanente(41) then
  Begin
    CarregaAnotacaoDente(41);
  End
  Else
  Begin
    CarregaAnotacaoDente(81);
  End;

  if RetornaPermanente(42) then
  Begin
    CarregaAnotacaoDente(42);
  End
  Else
  Begin
    CarregaAnotacaoDente(82);
  End;

  if RetornaPermanente(43) then
  Begin
    CarregaAnotacaoDente(43);
  End
  Else
  Begin
    CarregaAnotacaoDente(83);
  End;

  if RetornaPermanente(44) then
  Begin
    CarregaAnotacaoDente(44);
  End
  Else
  Begin
    CarregaAnotacaoDente(84);
  End;

  if RetornaPermanente(45) then
  Begin
    CarregaAnotacaoDente(45);
  End
  Else
  Begin
    CarregaAnotacaoDente(85);
  End;

  CarregaAnotacaoDente(46);
  CarregaAnotacaoDente(47);
  CarregaAnotacaoDente(48);
end;

procedure TfrmHistoricos.CarregaAtendimentoItensDesc;
begin
  rgDenteRegiaoAtendimento.ItemIndex :=
    qryProcedimentosAtendimentosDENTE_REGIAO.AsInteger;
  EdtDenteAtendimento.Text := qryProcedimentosAtendimentosDente.AsString;
  rgSituacaoAtendimento.ItemIndex :=
    qryProcedimentosAtendimentosSituacao.AsInteger;
  mmoObsAtendimento.Lines.Text :=
    qryProcedimentosAtendimentosObservacaoProcedimento.AsString;
  cbRegiaoAtendimento.ItemIndex :=
    qryProcedimentosAtendimentosTISSREGIAO.AsInteger;
  cbFaceAtendimento.ItemIndex := qryProcedimentosAtendimentosTISSFACE.AsInteger;
  cbProcGlosado.Checked :=
    qryProcedimentosAtendimentosProcedimentoGlosado.AsBoolean;
  EdtDtGlosa.Text := qryProcedimentosAtendimentosDataGlosa.AsString;
  mmoGlosaTISS.Lines.Text :=
    qryProcedimentosAtendimentosObservacaoGlosa.AsString;

  if rgDenteRegiaoAtendimento.ItemIndex = 0 then
  Begin
    cbRegiaoAtendimento.Visible := False;
    cbRegiaoAtendimento.ItemIndex := 0;
    cbFaceAtendimento.Visible := True;
    cbFaceAtendimento := RetornaResultadoFace(cbFaceAtendimento, qryProcedimentosAtendimentosDESCRICAOFACE.AsString);
  End
  Else
  Begin
    cbFaceAtendimento.Visible := False;
    cbRegiaoAtendimento.ItemIndex := qryProcedimentosAtendimentosTISSREGIAO.AsInteger;
    cbRegiaoAtendimento.Visible := True;
  End;

end;

procedure TfrmHistoricos.CarregaAtendimentos;
begin
  With qryAtendimentos do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DATA, STATUSTEXTO, STATUS, ID_OPERADOR, ID_PLANOTRATAMENTO, DATAFIM, ID_AGENDA, ID_ATENDIMENTO FROM ATENDIMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    SQL.Add('ORDER BY DATA');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;
  End;

  CarregaAtendimentosItens;
end;

procedure TfrmHistoricos.CarregaAtendimentosItens;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES, PROCEDIMENTOS.VALOR, PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOSDENTES.DENTE, PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS, PROCEDIMENTOSDENTES.TISSFACE,');
    SQL.Add('PROCEDIMENTOSDENTES.DENTE_REGIAO, PROCEDIMENTOSDENTES.DESCRICAOFACEREGIAO, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, PROCEDIMENTOSDENTES.SITUACAO, ATENDIMENTOITENS.SELECIONADO, ATENDIMENTOITENS.ID_ITENSPROPOSTATRATAMENTO,');
    SQL.Add('ATENDIMENTOITENS.ID_ATENDIMENTO, ATENDIMENTOITENS.ID_ATENDIMENTOITENS, PROCEDIMENTOSDENTES.OBSERVACAOGLOSA, PROCEDIMENTOSDENTES.DATADAGLOSA, PROCEDIMENTOSDENTES.PROCEDIMENTOGLOSADO, PROCEDIMENTOSDENTES.OBSERVACAO,');
    SQL.Add('PROCEDIMENTOSDENTES.TISSREGIAO FROM PROCEDIMENTOSDENTES');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS');
    SQL.Add('INNER JOIN ITENSPROPOSTATRATAMENTO ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES = ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES');
    SQL.Add('INNER JOIN ATENDIMENTOITENS ON ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO = ATENDIMENTOITENS.ID_ITENSPROPOSTATRATAMENTO');
    SQL.Add('WHERE (ATENDIMENTOITENS.ID_ATENDIMENTO = :pIDAtendimento)');
    Parameters.ParamByName('pIDAtendimento').Value :=
      qryAtendimentosID_ATENDIMENTO.AsInteger;
    Open;

    qryProcedimentosAtendimentos.Close;
    qryProcedimentosAtendimentos.Open;

    while Not eof do
    Begin
      qryProcedimentosAtendimentos.Append;
      qryProcedimentosAtendimentosIDProcedimentosDentes.AsInteger :=
        FieldByname('ID_PROCEDIMENTOSDENTES').AsInteger;;
      qryProcedimentosAtendimentosDente.AsInteger := FieldByname('DENTE')
        .AsInteger;
      qryProcedimentosAtendimentosSituacao.AsInteger := FieldByname('SITUACAO')
        .AsInteger;
      qryProcedimentosAtendimentosProcedimento.AsString :=
        FieldByname('DESCRICAO').AsString;
      qryProcedimentosAtendimentosIDAtendimentoItem.AsInteger :=
        FieldByname('ID_ATENDIMENTOITENS').AsInteger;
      qryProcedimentosAtendimentosDENTE_REGIAO.AsInteger :=
        FieldByname('DENTE_REGIAO').AsInteger;
      qryProcedimentosAtendimentosObservacaoGlosa.AsString :=
        FieldByname('OBSERVACAOGLOSA').AsString;
      qryProcedimentosAtendimentosDataGlosa.AsString :=
        FieldByname('DATADAGLOSA').AsString;
      qryProcedimentosAtendimentosObservacaoProcedimento.AsString :=
        FieldByname('OBSERVACAO').AsString;
      qryProcedimentosAtendimentosTISSREGIAO.AsInteger :=
        FieldByname('TISSREGIAO').AsInteger;
      qryProcedimentosAtendimentosTISSFACE.AsInteger := FieldByname('TISSFACE')
        .AsInteger;

      if FieldByName('DENTE_REGIAO').AsInteger = 0 then
        Begin
          qryProcedimentosAtendimentosDESCRICAOFACE.AsString := FieldByName('DESCRICAOFACEREGIAO').AsString;
        End;

      if FieldByname('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryProcedimentosAtendimentosPARTICULAR_CONVENIO.AsString := 'P';
      End
      Else
      Begin
        qryProcedimentosAtendimentosPARTICULAR_CONVENIO.AsString := 'C';
      End;

      if FieldByname('PROCEDIMENTOGLOSADO').AsInteger = 0 then
      Begin
        qryProcedimentosAtendimentosProcedimentoGlosado.AsBoolean := False;
      End
      Else
      Begin
        qryProcedimentosAtendimentosProcedimentoGlosado.AsBoolean := True;
      End;

      qryProcedimentosAtendimentos.Post;
      Next;
    End;

    if RecordCount > 0 then
    Begin
      qryProcedimentosAtendimentos.First;
      CarregaAtendimentoItensDesc;
    End;

  End;
end;

procedure TfrmHistoricos.CarregaAtestados;
begin
  With qryAtestados do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PACIENTE.NOME AS Paciente, MEDICOS.NOME AS Dentista, OPERADORES.NOME AS Operador, ATESTADOS.ID_ATESTADOS,  ATESTADOS.OBSERVACAO,');
    SQL.Add('ATESTADOS.ID_PACIENTE, CASE FINS WHEN 0 THEN '+ QuotedStr('Escolares')+' WHEN 1 THEN '+ QuotedStr('Trabalhistas')+ ' END AS FINSS,ATESTADOS.ID_MEDICO, ATESTADOS.ID_OPERADOR, ATESTADOS.DATA, ATESTADOS.FINS, ATESTADOS.HORAINI, ATESTADOS.HORAFIM FROM ATESTADOS');
    SQL.Add('INNER JOIN PACIENTE ON ATESTADOS.ID_PACIENTE = PACIENTE.ID_PACIENTE');
    SQL.Add('INNER JOIN MEDICOS ON ATESTADOS.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('LEFT JOIN OPERADORES ON ATESTADOS.ID_OPERADOR = OPERADORES.ID_OPERADORES');
    SQL.Add('WHERE ATESTADOS.ID_PACIENTE = :pID');
    SQL.Add('ORDER BY DATA');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;
  End;
end;

procedure TfrmHistoricos.CarregaDadosAtendimento;
begin
  rgStatusAtendimento.ItemIndex := qryAtendimentosSTATUS.AsInteger;
  EdtDtIniAtendimento.Text := FormatDateTime('DD/MM/YYYY',
    qryAtendimentosDATA.AsDateTime);

  if qryAtendimentosDATAFIM.AsString <> '' then
  Begin
    EdtDtFimAtendimento.Text := FormatDateTime('DD/MM/YYYY',
      qryAtendimentosDATAFIM.AsDateTime);
  End
  Else
  Begin
    EdtDtFimAtendimento.Text := '';
  End;

  CarregaAtendimentosItens;
  qryProcedimentosAtendimentosSel.First;

  while Not qryProcedimentosAtendimentosSel.eof do
  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID_ATENDIMENTOITENS, ID_ATENDIMENTO, ID_ITENSPROPOSTATRATAMENTO, SELECIONADO FROM ATENDIMENTOITENS');
      SQL.Add('WHERE (ID_ATENDIMENTO = :pID) AND (ID_ITENSPROPOSTATRATAMENTO = :pProc)');
      Parameters.ParamByName('pID').Value :=
        qryAtendimentosID_ATENDIMENTO.AsInteger;
      Parameters.ParamByName('pProc').Value :=
        qryProcedimentosAtendimentosSelIDProcedimento.AsInteger;
      Open;

      if Not eof then
      Begin
        qryProcedimentosAtendimentosSel.Edit;
        qryProcedimentosAtendimentosSelSelecionado.AsBoolean :=
          FieldByname('SELECIONADO').AsBoolean;
        qryProcedimentosAtendimentosSel.Post;
      End
      Else
      Begin
        qryProcedimentosAtendimentosSel.Edit;
        qryProcedimentosAtendimentosSelSelecionado.AsBoolean := False;
        qryProcedimentosAtendimentosSel.Post;
      End;
    End;
    qryProcedimentosAtendimentosSel.Next;
  End;

  if qryAtendimentosSTATUS.AsInteger = 1 then
  Begin
    grdProcedimentosAtendimentos.ReadOnly := True;
  End
  Else
  Begin
    grdProcedimentosAtendimentos.ReadOnly := False;
  End;
end;

procedure TfrmHistoricos.CarregaDentes;
begin
  CarregaImagemDente(11);
  CarregaImagemDente(12);
  CarregaImagemDente(13);
  CarregaImagemDente(14);
  CarregaImagemDente(15);
  CarregaImagemDente(16);
  CarregaImagemDente(17);
  CarregaImagemDente(18);

  CarregaImagemDente(21);
  CarregaImagemDente(22);
  CarregaImagemDente(23);
  CarregaImagemDente(24);
  CarregaImagemDente(25);
  CarregaImagemDente(26);
  CarregaImagemDente(27);
  CarregaImagemDente(28);

  CarregaImagemDente(31);
  CarregaImagemDente(32);
  CarregaImagemDente(33);
  CarregaImagemDente(34);
  CarregaImagemDente(35);
  CarregaImagemDente(36);
  CarregaImagemDente(37);
  CarregaImagemDente(38);

  CarregaImagemDente(41);
  CarregaImagemDente(42);
  CarregaImagemDente(43);
  CarregaImagemDente(44);
  CarregaImagemDente(45);
  CarregaImagemDente(46);
  CarregaImagemDente(47);
  CarregaImagemDente(48);

  CarregaAnotacoesDentes;
end;

procedure TfrmHistoricos.CarregaExameOral;
begin
  With qryPacienteExameOral do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_PACIENTEEXAMEORAL, DATA, MEDICOS.ID_MEDICO, ID_PACIENTE, MEDICOS.NOME FROM PACIENTEEXAMEORAL');
    SQL.Add('INNER JOIN MEDICOS ON PACIENTEEXAMEORAL.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE ID_PACIENTE = :pID ORDER BY DATA DESC');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;

    EdtCodMO.Text := FieldByname('ID_MEDICO').AsString;
    EdtNomeMedicoEO.Text := FieldByname('NOME').AsString;
  End;

  bExameOralNovo := False;
  GrdPerguntasExameOral.ReadOnly := True;
  EdtCodMO.ReadOnly := True;

  CarregaExames;

end;

procedure TfrmHistoricos.CarregaExames;
begin
  if EdtCodP.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PERGUNTA, RESPOSTA FROM PERGUNTASPACIENTEEXAMEORAL');
    SQL.Add('WHERE ID_PACIENTEEXAMEORAL = :pID');
    Parameters.ParamByName('pID').Value :=
      qryPacienteExameOralID_PACIENTEEXAMEORAL.AsInteger;
    Open;

    qryPerguntasExameOral.Close;
    qryPerguntasExameOral.Open;

    while Not eof do
    Begin
      qryPerguntasExameOral.Append;
      qryPerguntasExameOral.FieldByname('PERGUNTA').AsString :=
        FieldByname('PERGUNTA').AsString;
      qryPerguntasExameOral.FieldByname('RESPOSTA').AsString :=
        FieldByname('RESPOSTA').AsString;

      qryPerguntasExameOral.Post;

      if FieldByname('RESPOSTA').AsString = '' then
      Begin
        GrdPerguntasExameOral.ReadOnly := False;
      End;
      Next;
    End;
  end;
end;

procedure TfrmHistoricos.CarregaFiltros;
begin
  CarregaAnamnese;
  CarregaExameOral;
  CarregaHistorico;
  CarregaAtendimentos;
end;

procedure TfrmHistoricos.CarregaHistorico;
begin
  With qryHistorico do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT HISTORICOPACIENTE.ID_HISTORICOPACIENTE, HISTORICOPACIENTE.ID_PACIENTE, HISTORICOPACIENTE.DESCRICAO, HISTORICOPACIENTE.DATA,');
    SQL.Add('HISTORICOPACIENTE.TIPO, HISTORICOPACIENTE.ID_OPERADOR, OPERADORES.NOME AS Operador FROM HISTORICOPACIENTE');
    SQL.Add('LEFT JOIN OPERADORES ON HISTORICOPACIENTE.ID_OPERADOR = OPERADORES.ID_OPERADORES');
    SQL.Add('WHERE HISTORICOPACIENTE.ID_PACIENTE = :pID');
    SQL.Add('Order By DATA, ID_HISTORICOPACIENTE');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;
  End;
end;

procedure TfrmHistoricos.CarregaImagemDente(Dente: Integer);
var
  Existente, Coroa, Permanente, MicroDente, Supranumerario, Incluso,
    SemiIncluso: Boolean;
begin

  if Dente > 49 then
  Begin
    Dente := NumeroDente(Dente);
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pDente').Value := Dente;
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Open;

    Existente := FieldByname('EXISTENTE').AsBoolean;
    Coroa := FieldByname('COROA').AsBoolean;
    Permanente := FieldByname('PERMANENTE').AsBoolean;
    MicroDente := FieldByname('MICRODENTE').AsBoolean;
    Supranumerario := FieldByname('SUPRANUMERARIO').AsBoolean;
    SemiIncluso := FieldByname('SEMIINCLUSO').AsBoolean;
    Incluso := FieldByname('INCLUSO').AsBoolean;

    if (Dente = 11) or (Dente = 51) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P11.jpg');
          btnD11.Caption := '11';
          if NOT Coroa then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W11.jpg');
          End;

          if MicroDente then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M11.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N11.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S11.jpg');
          End;

          if Incluso then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I11.jpg');
          End;

        End
        Else
        Begin
          ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D51.jpg');
          btnD11.Caption := '51';
          if NOT Coroa then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y51.jpg');
          End;

          if MicroDente then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M51.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N51.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S51.jpg');
          End;

          if Incluso then
          Begin
            ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I51.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD11.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 12) or (Dente = 52) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P12.jpg');
          btnD12.Caption := '12';

          if NOT Coroa then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W12.jpg');
          End;

          if MicroDente then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M12.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N12.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S12.jpg');
          End;

          if Incluso then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I12.jpg');
          End;

        End
        Else
        Begin
          ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D52.jpg');
          btnD12.Caption := '52';

          if NOT Coroa then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y52.jpg');
          End;

          if MicroDente then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M52.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N52.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S52.jpg');
          End;

          if Incluso then
          Begin
            ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I52.jpg');
          End;

        End;

      End
      Else
      Begin
        ImgD12.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 13) or (Dente = 53) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P13.jpg');
          btnD13.Caption := '13';

          if NOT Coroa then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W13.jpg');
          End;

          if MicroDente then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M13.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N13.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S13.jpg');
          End;

          if Incluso then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I13.jpg');
          End;

        End
        Else
        Begin
          ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D53.jpg');
          btnD13.Caption := '53';

          if NOT Coroa then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y53.jpg');
          End;

          if MicroDente then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M53.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N53.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S53.jpg');
          End;

          if Incluso then
          Begin
            ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I53.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD13.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 14) or (Dente = 54) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P14.jpg');
          btnD14.Caption := '14';

          if NOT Coroa then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W14.jpg');
          End;

          if MicroDente then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M14.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N14.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S14.jpg');
          End;

          if Incluso then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I14.jpg');
          End;

        End
        Else
        Begin
          ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D54.jpg');
          btnD14.Caption := '54';

          if NOT Coroa then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y54.jpg');
          End;

          if MicroDente then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M54.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N54.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S54.jpg');
          End;

          if Incluso then
          Begin
            ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I54.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD14.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 15) or (Dente = 55) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P15.jpg');
          btnD15.Caption := '15';

          if NOT Coroa then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W15.jpg');
          End;

          if MicroDente then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M15.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N15.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S15.jpg');
          End;

          if Incluso then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I15.jpg');
          End;

        End
        Else
        Begin
          ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D55.jpg');
          btnD15.Caption := '55';

          if NOT Coroa then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y55.jpg');
          End;

          if MicroDente then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M55.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N55.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S55.jpg');
          End;

          if Incluso then
          Begin
            ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I55.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD15.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if Dente = 16 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P16.jpg');
          btnD16.Caption := '16';
          btnD16.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W16.jpg');
          End;
        End
        Else
        Begin
          btnD16.Enabled := False;
          ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M16.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N16.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S16.jpg');
        End;

        if Incluso then
        Begin
          ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I16.jpg');
        End;
      End
      Else
      Begin
        ImgD16.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 17 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P17.jpg');
          btnD17.Caption := '17';
          btnD17.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W17.jpg');
          End;
        End
        Else
        Begin
          btnD17.Enabled := False;
          ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M17.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N17.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S17.jpg');
        End;

        if Incluso then
        Begin
          ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I17.jpg');
        End;
      End
      Else
      Begin
        ImgD17.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 18 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P18.jpg');
          btnD18.Caption := '18';
          btnD18.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W18.jpg');
          End;
        End
        Else
        Begin
          btnD18.Enabled := False;
          ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M18.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N18.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S18.jpg');
        End;

        if Incluso then
        Begin
          ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I18.jpg');
        End;
      End
      Else
      Begin
        ImgD18.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if (Dente = 21) or (Dente = 61) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P21.jpg');
          btnD21.Caption := '21';

          if NOT Coroa then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W21.jpg');
          End;

          if MicroDente then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M21.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N21.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S21.jpg');
          End;

          if Incluso then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I21.jpg');
          End;

        End
        Else
        Begin
          ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D61.jpg');
          btnD21.Caption := '61';

          if NOT Coroa then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y61.jpg');
          End;

          if MicroDente then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M61.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N61.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S61.jpg');
          End;

          if Incluso then
          Begin
            ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I61.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD21.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 22) or (Dente = 62) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P22.jpg');
          btnD22.Caption := '22';

          if NOT Coroa then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W22.jpg');
          End;

          if MicroDente then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M22.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N22.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S22.jpg');
          End;

          if Incluso then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I22.jpg');
          End;

        End
        Else
        Begin
          ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D62.jpg');
          btnD22.Caption := '62';

          if NOT Coroa then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y62.jpg');
          End;

          if MicroDente then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M62.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N62.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S62.jpg');
          End;

          if Incluso then
          Begin
            ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I62.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD22.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 23) or (Dente = 63) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P23.jpg');
          btnD23.Caption := '23';

          if NOT Coroa then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W23.jpg');
          End;

          if MicroDente then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M23.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N23.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S23.jpg');
          End;

          if Incluso then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I23.jpg');
          End;

        End
        Else
        Begin
          ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D63.jpg');
          btnD23.Caption := '63';

          if NOT Coroa then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y63.jpg');
          End;

          if MicroDente then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M63.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N63.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S63.jpg');
          End;

          if Incluso then
          Begin
            ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I63.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD23.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 24) or (Dente = 64) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P24.jpg');
          btnD24.Caption := '24';

          if NOT Coroa then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W24.jpg');
          End;

          if MicroDente then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M24.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N24.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S24.jpg');
          End;

          if Incluso then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I24.jpg');
          End;

        End
        Else
        Begin
          ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D64.jpg');
          btnD24.Caption := '64';

          if NOT Coroa then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y64.jpg');
          End;

          if MicroDente then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M64.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N64.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S64.jpg');
          End;

          if Incluso then
          Begin
            ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I64.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD24.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 25) or (Dente = 65) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P25.jpg');
          btnD25.Caption := '25';

          if NOT Coroa then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W25.jpg');
          End;

          if MicroDente then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M25.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N25.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S25.jpg');
          End;

          if Incluso then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I25.jpg');
          End;
        End
        Else
        Begin
          ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D65.jpg');
          btnD25.Caption := '65';

          if NOT Coroa then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y65.jpg');
          End;

          if MicroDente then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M65.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N65.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S65.jpg');
          End;

          if Incluso then
          Begin
            ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I65.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD25.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if Dente = 26 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P26.jpg');
          btnD26.Caption := '26';
          btnD26.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W26.jpg');
          End;
        End
        Else
        Begin
          btnD26.Enabled := False;
          ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M26.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N26.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S26.jpg');
        End;

        if Incluso then
        Begin
          ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I26.jpg');
        End;
      End
      Else
      Begin
        ImgD26.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 27 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P27.jpg');
          btnD27.Caption := '27';
          btnD27.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W27.jpg');
          End;
        End
        Else
        Begin
          btnD27.Enabled := False;
          ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M27.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N27.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S27.jpg');
        End;

        if Incluso then
        Begin
          ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I27.jpg');
        End;
      End
      Else
      Begin
        ImgD27.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 28 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P28.jpg');
          btnD28.Caption := '28';
          btnD28.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W28.jpg');
          End;
        End
        Else
        Begin
          btnD28.Enabled := False;
          ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M28.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N28.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S28.jpg');
        End;

        if Incluso then
        Begin
          ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I28.jpg');
        End;
      End
      Else
      Begin
        ImgD28.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if (Dente = 31) or (Dente = 71) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P31.jpg');
          btnD31.Caption := '31';

          if NOT Coroa then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W31.jpg');
          End;

          if MicroDente then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M31.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N31.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S31.jpg');
          End;

          if Incluso then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I31.jpg');
          End;

        End
        Else
        Begin
          ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D71.jpg');
          btnD31.Caption := '71';

          if NOT Coroa then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y71.jpg');
          End;

          if MicroDente then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M71.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N71.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S71.jpg');
          End;

          if Incluso then
          Begin
            ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I71.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD31.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 32) or (Dente = 72) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P32.jpg');
          btnD32.Caption := '32';

          if NOT Coroa then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W32.jpg');
          End;

          if MicroDente then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M32.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N32.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S32.jpg');
          End;

          if Incluso then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I32.jpg');
          End;
        End
        Else
        Begin
          ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D72.jpg');
          btnD32.Caption := '72';

          if NOT Coroa then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y72.jpg');
          End;

          if MicroDente then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M72.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N72.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S72.jpg');
          End;

          if Incluso then
          Begin
            ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I72.jpg');
          End;
        End;
      End
      Else
      Begin
        ImgD32.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 33) or (Dente = 73) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P33.jpg');
          btnD33.Caption := '33';

          if NOT Coroa then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W33.jpg');
          End;

          if MicroDente then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M33.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N33.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S33.jpg');
          End;

          if Incluso then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I33.jpg');
          End;
        End
        Else
        Begin
          ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D73.jpg');
          btnD33.Caption := '73';

          if NOT Coroa then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y73.jpg');
          End;

          if MicroDente then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M73.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N73.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S73.jpg');
          End;

          if Incluso then
          Begin
            ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I73.jpg');
          End;
        End;
      End
      Else
      Begin
        ImgD33.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 34) or (Dente = 74) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P34.jpg');
          btnD34.Caption := '34';

          if NOT Coroa then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W34.jpg');
          End;

          if MicroDente then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M34.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N34.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S34.jpg');
          End;

          if Incluso then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I34.jpg');
          End;
        End
        Else
        Begin
          ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D74.jpg');
          btnD34.Caption := '74';

          if NOT Coroa then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y74.jpg');
          End;

          if MicroDente then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M74.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N74.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S74.jpg');
          End;

          if Incluso then
          Begin
            ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I74.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD34.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;

    End;

    if (Dente = 35) or (Dente = 75) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P35.jpg');
          btnD35.Caption := '35';

          if NOT Coroa then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W35.jpg');
          End;

          if MicroDente then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M35.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N35.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S35.jpg');
          End;

          if Incluso then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I35.jpg');
          End;
        End
        Else
        Begin
          ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D75.jpg');
          btnD35.Caption := '75';

          if NOT Coroa then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y75.jpg');
          End;

          if MicroDente then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M75.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N75.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S75.jpg');
          End;

          if Incluso then
          Begin
            ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I75.jpg');
          End;
        End;
      End
      Else
      Begin
        ImgD35.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 36 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P36.jpg');
          btnD36.Caption := '36';
          btnD36.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W36.jpg');
          End;
        End
        Else
        Begin
          btnD36.Enabled := False;
          ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M36.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N36.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S36.jpg');
        End;

        if Incluso then
        Begin
          ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I36.jpg');
        End;
      End
      Else
      Begin
        ImgD36.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 37 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P37.jpg');
          btnD37.Caption := '37';
          btnD37.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W37.jpg');
          End;
        End
        Else
        Begin
          btnD37.Enabled := False;
          ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M37.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N37.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S37.jpg');
        End;

        if Incluso then
        Begin
          ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I37.jpg');
        End;
      End
      Else
      Begin
        ImgD37.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 38 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P38.jpg');
          btnD38.Caption := '38';
          btnD38.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W38.jpg');
          End;
        End
        Else
        Begin
          btnD38.Enabled := False;
          ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M38.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N38.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S38.jpg');
        End;

        if Incluso then
        Begin
          ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I38.jpg');
        End;
      End
      Else
      Begin
        ImgD38.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if (Dente = 41) or (Dente = 81) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P41.jpg');
          btnD41.Caption := '41';

          if NOT Coroa then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W41.jpg');
          End;

          if MicroDente then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M41.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N41.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S41.jpg');
          End;

          if Incluso then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I41.jpg');
          End;

        End
        Else
        Begin
          ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D81.jpg');
          btnD41.Caption := '81';

          if NOT Coroa then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y81.jpg');
          End;

          if MicroDente then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M81.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N81.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S81.jpg');
          End;

          if Incluso then
          Begin
            ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I81.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD41.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if (Dente = 42) or (Dente = 82) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P42.jpg');
          btnD42.Caption := '42';

          if NOT Coroa then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W42.jpg');
          End;

          if MicroDente then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M42.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N42.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S42.jpg');
          End;

          if Incluso then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I42.jpg');
          End;

        End
        Else
        Begin
          ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D82.jpg');
          btnD42.Caption := '82';

          if NOT Coroa then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y82.jpg');
          End;

          if MicroDente then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M82.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N82.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S82.jpg');
          End;

          if Incluso then
          Begin
            ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I82.jpg');
          End;
        End;
      End
      Else
      Begin
        ImgD42.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if (Dente = 43) or (Dente = 83) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P43.jpg');
          btnD43.Caption := '43';

          if NOT Coroa then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W43.jpg');
          End;

          if MicroDente then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M43.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N43.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S43.jpg');
          End;

          if Incluso then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I43.jpg');
          End;

        End
        Else
        Begin
          ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D83.jpg');
          btnD43.Caption := '83';

          if NOT Coroa then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y83.jpg');
          End;

          if MicroDente then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M83.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N83.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S83.jpg');
          End;

          if Incluso then
          Begin
            ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I83.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD43.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if (Dente = 44) or (Dente = 84) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P44.jpg');
          btnD44.Caption := '44';

          if NOT Coroa then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W44.jpg');
          End;

          if MicroDente then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M44.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N44.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S44.jpg');
          End;

          if Incluso then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I44.jpg');
          End;

        End
        Else
        Begin
          ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D84.jpg');
          btnD44.Caption := '84';

          if NOT Coroa then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y84.jpg');
          End;

          if MicroDente then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M84.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N84.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S84.jpg');
          End;

          if Incluso then
          Begin
            ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I84.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD44.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if (Dente = 45) or (Dente = 85) then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P45.jpg');
          btnD45.Caption := '45';

          if NOT Coroa then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W45.jpg');
          End;

          if MicroDente then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M45.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N45.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S45.jpg');
          End;

          if Incluso then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I45.jpg');
          End;

        End
        Else
        Begin
          ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\D85.jpg');
          btnD45.Caption := '85';

          if NOT Coroa then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Y85.jpg');
          End;

          if MicroDente then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M85.jpg');
          End;

          if Supranumerario then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N85.jpg');
          End;

          if SemiIncluso then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S85.jpg');
          End;

          if Incluso then
          Begin
            ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I85.jpg');
          End;

        End;
      End
      Else
      Begin
        ImgD45.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 46 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P46.jpg');
          btnD46.Caption := '46';
          btnD46.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W46.jpg');
          End;
        End
        Else
        Begin
          btnD46.Enabled := False;
          ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M46.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N46.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S46.jpg');
        End;

        if Incluso then
        Begin
          ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I46.jpg');
        End;
      End
      Else
      Begin
        ImgD46.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 47 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P47.jpg');
          btnD47.Caption := '47';
          btnD47.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W47.jpg');
          End;
        End
        Else
        Begin
          btnD47.Enabled := False;
          ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M47.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N47.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S47.jpg');
        End;

        if Incluso then
        Begin
          ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I47.jpg');
        End;
      End
      Else
      Begin
        ImgD47.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

    if Dente = 48 then
    Begin
      if Existente then
      Begin
        if Permanente then
        Begin
          ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\P48.jpg');
          btnD48.Caption := '48';
          btnD48.Enabled := True;
          if NOT Coroa then
          Begin
            ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\W48.jpg');
          End;
        End
        Else
        Begin
          btnD48.Enabled := False;
          ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Deciduo.jpg');
        End;

        if MicroDente then
        Begin
          ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\M48.jpg');
        End;

        if Supranumerario then
        Begin
          ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\N48.jpg');
        End;

        if SemiIncluso then
        Begin
          ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\S48.jpg');
        End;

        if Incluso then
        Begin
          ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\I48.jpg');
        End;
      End
      Else
      Begin
        ImgD48.Picture.LoadFromFile(PastaArquivo + '\Img\DENTES\Excluido.jpg');
      End;
    End;

  End;
end;

procedure TfrmHistoricos.CarregaItensPropostaTratamentos(IDProposta: Integer);
var
  rDesconto,
  rValorTot,
  rAcrescimo,
  rPago,
  rValor,
  rRestante : Double;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO, PROCEDIMENTOS.VALOR, ITENSPROPOSTATRATAMENTO.ValorAcrescimo, ITENSPROPOSTATRATAMENTO.ValorDesconto, ');
    SQL.Add('ITENSPROPOSTATRATAMENTO.Faturado, ITENSPROPOSTATRATAMENTO.SELECIONADO, PROCEDIMENTOSDENTES.DENTE, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, ITENSPROPOSTATRATAMENTO.ValorPago, ');
    SQL.Add('ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES, PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOS.CODPROCEDIMENTO FROM  ITENSPROPOSTATRATAMENTO ');
    SQL.Add('INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES ');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS ');
    SQL.Add('WHERE (ITENSPROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO = :pID)');
    Parameters.ParamByName('pID').Value := IDProposta;
    Open;

    qryOrcamento.Close;
    qryOrcamento.Open;

    while not eof do
    Begin
      qryOrcamento.Append;
      qryOrcamento.FieldByname('IDProcedimento').AsInteger :=
        FieldByname('ID_ITENSPROPOSTATRATAMENTO').AsInteger;
      qryOrcamento.FieldByname('SELECIONADO').AsBoolean :=
        FieldByname('SELECIONADO').AsBoolean;
      qryOrcamento.FieldByname('CodProcedimento').AsString :=
        FieldByname('CODPROCEDIMENTO').AsString;
      qryOrcamento.FieldByname('DESCRICAOPROCEDIMENTO').AsString :=
        FieldByname('DESCRICAO').AsString;
      rValorTot := FieldByname('VALOR').AsFloat;
      qryOrcamento.FieldByname('VALORTABELA').AsFloat := rValorTot;
      rAcrescimo := FieldByname('VALORACRESCIMO').AsFloat;
      qryOrcamento.FieldByname('VALORACRESCIMO').AsFloat := rAcrescimo;
      rDesconto := FieldByname('VALORDESCONTO').AsFloat;
     qryOrcamento.FieldByname('VALORDESCONTO').AsFloat := rDesconto;
      qryOrcamento.FieldByname('FATURADO').AsBoolean := FieldByname('FATURADO')
        .AsBoolean;
      qryOrcamento.FieldByname('DENTE').AsInteger := FieldByname('DENTE')
        .AsInteger;

      if FieldByname('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryOrcamento.FieldByname('TIPO').AsString := 'P';
      End
      Else
      Begin
        qryOrcamento.FieldByname('TIPO').AsString := 'C';
      End;

      qryOrcamentoValorPago.AsFloat := FIeldByName('ValorPago').AsFloat;

      rPago :=  FieldByName('ValorPago').AsFloat;
      rValor := (FieldByName('VALOR').AsFloat + FieldByName('VALORACRESCIMO').AsFloat) - FieldByName('VALORDESCONTO').AsFloat;
      rRestante := rValor - rPago;

      qryOrcamentoValorRestante.AsFloat := rRestante;
      qryOrcamento.Post;

      Next;
    End;

  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO, PROCEDIMENTOS.VALOR, ITENSPROPOSTATRATAMENTO.ValorAcrescimo, ITENSPROPOSTATRATAMENTO.ValorDesconto, ');
    SQL.Add('ITENSPROPOSTATRATAMENTO.Faturado, ITENSPROPOSTATRATAMENTO.SELECIONADO, PROCEDIMENTOSDENTES.DENTE, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, ITENSPROPOSTATRATAMENTO.ValorPago,  ');
    SQL.Add('ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES, PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOS.CODPROCEDIMENTO FROM  ITENSPROPOSTATRATAMENTO ');
    SQL.Add('INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES ');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS ');
    SQL.Add('WHERE (ITENSPROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO = :pID)');
    Parameters.ParamByName('pID').Value := IDProposta;
    Open;

    qryOrcamentoAux.Close;
    qryOrcamentoAux.Open;

    while not eof do
    Begin
      qryOrcamentoAux.Append;
      qryOrcamentoAux.FieldByname('IDProcedimento').AsInteger :=
        FieldByname('ID_ITENSPROPOSTATRATAMENTO').AsInteger;
      qryOrcamentoAux.FieldByname('SELECIONADO').AsBoolean :=
        FieldByname('SELECIONADO').AsBoolean;
      qryOrcamentoAux.FieldByname('CodProcedimento').AsString :=
        FieldByname('CODPROCEDIMENTO').AsString;
      qryOrcamentoAux.FieldByname('DESCRICAOPROCEDIMENTO').AsString :=
        FieldByname('DESCRICAO').AsString;
      qryOrcamentoAux.FieldByname('VALORTABELA').AsFloat :=
        FieldByname('VALOR').AsFloat;
      qryOrcamentoAux.FieldByname('VALORACRESCIMO').AsFloat :=
        FieldByname('VALORACRESCIMO').AsFloat;
      qryOrcamentoAux.FieldByname('VALORDESCONTO').AsFloat :=
        FieldByname('VALORDESCONTO').AsFloat;
      qryOrcamentoAux.FieldByname('FATURADO').AsBoolean :=
        FieldByname('FATURADO').AsBoolean;
      qryOrcamentoAux.FieldByname('DENTE').AsInteger := FieldByname('DENTE')
        .AsInteger;

      if FieldByname('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryOrcamentoAux.FieldByname('TIPO').AsString := 'P';
      End
      Else
      Begin
        qryOrcamentoAux.FieldByname('TIPO').AsString := 'C';
      End;

      qryOrcamentoAuxValorPago.AsFloat := FIeldByName('ValorPago').AsFloat;

      rPago :=  FieldByName('ValorPago').AsFloat;
      rValor := (FieldByName('VALOR').AsFloat + FieldByName('VALORACRESCIMO').AsFloat) - FieldByName('VALORDESCONTO').AsFloat;
      rRestante := rValor - rPago;

      qryOrcamentoAuxValorRestante.AsFloat := rRestante;

      qryOrcamentoAux.Post;

      Next;
    End;

  End;
  CalculaTotalOrcamento;
end;

procedure TfrmHistoricos.CarregaPerguntas;
begin
  if EdtCodP.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OBRIGATORIO, PERGUNTA, AFIRMO, NEGO, NAOSEI, OBSERVACAO FROM PERGUNTASPACIENTEANAMNESE');
    SQL.Add('WHERE ID_PACIENTEANAMNESE = :pID');
    Parameters.ParamByName('pID').Value :=
      qryPacienteAnamneseID_PACIENTEANAMNESE.AsInteger;
    Open;

    qryPerguntasAnamnese.Close;
    qryPerguntasAnamnese.Open;

    while Not eof do
    Begin
      qryPerguntasAnamnese.Append;
      qryPerguntasAnamnese.FieldByname('PERGUNTA').AsString :=
        FieldByname('PERGUNTA').AsString;
      qryPerguntasAnamnese.FieldByname('OBSERVACAO').AsString :=
        FieldByname('OBSERVACAO').AsString;
      qryPerguntasAnamnese.FieldByname('AFIRMO').AsBoolean :=
        FieldByname('AFIRMO').AsBoolean;
      qryPerguntasAnamnese.FieldByname('NEGO').AsBoolean := FieldByname('NEGO')
        .AsBoolean;
      qryPerguntasAnamnese.FieldByname('NAOSEI').AsBoolean :=
        FieldByname('NAOSEI').AsBoolean;
      qryPerguntasAnamnese.FieldByname('OBRIGATORIO').AsBoolean :=
        FieldByname('OBRIGATORIO').AsBoolean;
      qryPerguntasAnamnese.Post;

      if FieldByname('OBRIGATORIO').AsBoolean then
      Begin
        if not FieldByname('AFIRMO').AsBoolean then
        Begin
          if not FieldByname('NEGO').AsBoolean then
          Begin
            if Not FieldByname('NAOSEI').AsBoolean then
            Begin
              GrdPerguntasAnamnese.ReadOnly := False;
            End;
          End;

        End;

      End;

      Next;

    End;
  end;
end;

procedure TfrmHistoricos.CarregaPlanoTratamento;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT VALOR, STATUS, DTATERMINO, DTAPREVISAOTERMINO, DTAINICIO, CODSTATUS, ID_MEDICO, ID_PACIENTE, ID_PLANOTRATAMENTO FROM PLANOTRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;

    EdtCodP.Text := FieldByname('ID_PACIENTE').AsString;
    iMedico := FieldByname('ID_MEDICO').AsInteger;
    cbStatusTratamento.ItemIndex := FieldByname('CODSTATUS').AsInteger;
    EdtCodPExit(Self);

    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_ODONTOGRAMA FROM ODONTOGRAMA');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;

    iOdontograma := FieldByname('ID_ODONTOGRAMA').AsInteger;
  End;
end;

procedure TfrmHistoricos.CarregaProcedimentosAtendimento;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, PROCEDIMENTOS.TEMPOMEDIO, PROCEDIMENTOS.DESCRICAO FROM ITENSPROPOSTATRATAMENTO');
    SQL.Add('INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS');
    SQL.Add('INNER JOIN PROPOSTATRATAMENTO ON ITENSPROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO = PROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO');
    SQL.Add('WHERE (PROCEDIMENTOSDENTES.SITUACAO <> 1) AND (PROPOSTATRATAMENTO.ID_PLANOTRATAMENTO = :pPlano)');
    Parameters.ParamByName('pPlano').Value := iPlanoTratamento;
    Open;

    qryProcedimentosAtendimentosSel.Close;
    qryProcedimentosAtendimentosSel.Open;
    bLoad := True;
    while Not eof do
    Begin
      qryProcedimentosAtendimentosSel.Append;
      qryProcedimentosAtendimentosSelIDProcedimento.AsInteger :=
        FieldByname('ID_ITENSPROPOSTATRATAMENTO').AsInteger;
      qryProcedimentosAtendimentosSelSelecionado.AsBoolean := False;
      qryProcedimentosAtendimentosSelDescricaoProcedimento.AsString :=
        FieldByname('DESCRICAO').AsString;

      if FieldByname('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryProcedimentosAtendimentosSelTipo.AsString := 'P';
      End
      Else
      Begin
        qryProcedimentosAtendimentosSelTipo.AsString := 'C';
      End;

      if FieldByname('TEMPOMEDIO').AsString <> '' then
      Begin
        qryProcedimentosAtendimentosSelTempoMedio.AsString :=
          FieldByname('TEMPOMEDIO').AsString;
      End
      Else
      Begin
        qryProcedimentosAtendimentosSelTempoMedio.AsString := '00:00:00';
      End;

      qryProcedimentosAtendimentosSel.Post;
      Next;
    End;

    qryProcedimentos.First;
  End;
end;

procedure TfrmHistoricos.CarregaProcedimentosDentes;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES, Procedimentos.Valor, PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOSDENTES.DENTE, PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS,');
    SQL.Add('TISSFACE, DENTE_REGIAO, DESCRICAOFACEREGIAO, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, PROCEDIMENTOSDENTES.SITUACAO FROM PROCEDIMENTOSDENTES');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    // SQL.Add('AND PROCEDIMENTOSDENTES.SITUACAO <> 1');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Open;

    qryProcedimentosDentes.Close;
    qryProcedimentosDentes.Open;

    while not eof do
    Begin
      qryProcedimentosDentes.Append;
      qryProcedimentosDentes.FieldByname('IDProcedimentosDentes').AsInteger :=
        FieldByname('ID_PROCEDIMENTOSDENTES').AsInteger;
      qryProcedimentosDentes.FieldByname('ID').AsInteger :=
        FieldByname('ID_PROCEDIMENTOS').AsInteger;
      qryProcedimentosDentes.FieldByname('DENTE').AsInteger :=
        FieldByname('DENTE').AsInteger;
      qryProcedimentosDentes.FieldByname('Procedimento').AsString :=
        FieldByname('DESCRICAO').AsString;

      if FieldByname('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryProcedimentosDentes.FieldByname('PARTICULAR_CONVENIO')
          .AsString := 'P';
      End
      Else
      Begin
        qryProcedimentosDentes.FieldByname('PARTICULAR_CONVENIO')
          .AsString := 'C';
      End;

      qryProcedimentosDentesDescricaoDenteRegiao.AsString :=
        FieldByname('DESCRICAOFACEREGIAO').AsString;

      if FieldByname('DENTE_REGIAO').AsInteger = 0 then
      Begin
        qryProcedimentosDentesDENTE_REGIAO.AsString := 'Dente';
      End
      Else
      Begin
        qryProcedimentosDentesDENTE_REGIAO.AsString := 'Região';
      End;

      qryProcedimentosDentesValor.AsFloat := FieldByname('Valor').AsFloat;

      qryProcedimentosDentes.FieldByname('SITUACAO').AsInteger :=
        FieldByname('SITUACAO').AsInteger;
      qryProcedimentosDentes.Post;

      Next;
    End;

  End;
end;

procedure TfrmHistoricos.CarregaPropostaTratamento;
var
  iPropostaTratamento: Integer;
begin

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    SQL.Add('AND DESCRICAO = :pDesc');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Parameters.ParamByName('pDesc').Value := cbProposta.Text;
    Open;

    iPropostaTratamento := FieldByname('ID_PROPOSTATRATAMENTO').AsInteger;
    rgPagamento.ItemIndex := FieldByname('AVISTA_PARCELADO').AsInteger;
    EdtQtdeParcelas.Value := FieldByname('NROPARCELAS').AsFloat;
    rgParcelas.ItemIndex := FieldByname('PARCELAS').AsInteger;
    EdtCorrecaoMensal.Value := FieldByname('CORRECAOMENSAL').AsFloat;
    EdtVlrDesconto.Value := FieldByname('DESCONTO').AsFloat;
    EdtVlrAcrescimo.Value := FieldByname('ACRESCIMO').AsFloat;
    cbAprovado.Checked := FieldByname('APROVADA').AsBoolean;
    EdtdtAprovacao.Date := FieldByname('DTAAPROVACAO').AsDateTime;

    rgPagamentoClick(Self);
    rgParcelasClick(Self);
  End;

  CarregaItensPropostaTratamentos(iPropostaTratamento);

  if cbAprovado.Checked then
    Begin
      cbAprovado.Enabled := False;
      EdtdtAprovacao.Enabled := False;
    End
  Else
    Begin
      cbAprovado.Enabled := True;
      EdtdtAprovacao.Enabled := True;
    End;

end;

procedure TfrmHistoricos.CarregaReceituario;
begin
  With qryReceituario do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MEDICOS.NOME AS Dentista, RECEITUARIO.ID_RECEITUARIO, RECEITUARIO.ID_PACIENTE, RECEITUARIO.ID_MEDICO, RECEITUARIO.DATA,');
    SQL.Add('RECEITUARIO.DESCRICAO, PACIENTE.NOME AS Paciente FROM RECEITUARIO');
    SQL.Add('INNER JOIN PACIENTE ON RECEITUARIO.ID_PACIENTE = PACIENTE.ID_PACIENTE');
    SQL.Add('INNER JOIN MEDICOS ON RECEITUARIO.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE RECEITUARIO.ID_PACIENTE = :pID');
    SQL.Add('ORDER BY DATA');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;
  End;
end;

Procedure TfrmHistoricos.CarregaTermos;
Begin
  With qryTermosConsentimento do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT TERMOCONSENTIMENTO.ID_TERMOCONSENTIMENTO, TERMOCONSENTIMENTO.ID_PACIENTE, TERMOCONSENTIMENTO.ID_MEDICO,');
    SQL.Add('TERMOCONSENTIMENTO.RGRESPONSAVEL, TERMOCONSENTIMENTO.RESPONSAVEL, TERMOCONSENTIMENTO.DATA, MEDICOS.NOME AS Dentista FROM TERMOCONSENTIMENTO');
    SQL.Add('INNER JOIN MEDICOS ON TERMOCONSENTIMENTO.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE TERMOCONSENTIMENTO.ID_PACIENTE = :pPaciente');
    SQL.Add('ORDER BY TERMOCONSENTIMENTO.DATA');
    Parameters.ParamByName('pPaciente').Value := EdtCodP.Text;
    Open;
  End;
End;

procedure TfrmHistoricos.cbCentralizarClick(Sender: TObject);
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

procedure TfrmHistoricos.cbProcGlosadoClick(Sender: TObject);
begin
  inherited;
  qryProcedimentosAtendimentos.Edit;
  qryProcedimentosAtendimentosProcedimentoGlosado.AsBoolean :=
    cbProcGlosado.Checked;
  qryProcedimentosAtendimentos.Post;
end;

procedure TfrmHistoricos.cbProporcionalClick(Sender: TObject);
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

procedure TfrmHistoricos.cbPropostaClick(Sender: TObject);
begin
  inherited;
  CarregaPropostaTratamento;
end;

procedure TfrmHistoricos.cbRegiaoAtendimentoClick(Sender: TObject);
begin
  inherited;
  qryProcedimentosAtendimentos.Edit;
  qryProcedimentosAtendimentosTISSREGIAO.AsInteger :=
    cbRegiaoAtendimento.ItemIndex;
  qryProcedimentosAtendimentosDESCRICAOFACE.AsString := cbRegiaoAtendimento.Text;
  qryProcedimentosAtendimentos.Post;
end;

procedure TfrmHistoricos.cbTabelaClick(Sender: TObject);
var
  i, iConvenio: Integer;
begin
  inherited;
  // i := -1;
  // MenuDentesE.Items.Clear;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CONVENIO FROM CONVENIOS');
    SQL.Add('WHERE NOME = :pNome');
    Parameters.ParamByName('pNome').Value := cbTabela.Text;
    Open;

    iConvenio := FieldByname('ID_CONVENIO').AsInteger;

  End;

  With qryProcedimentos do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PROCEDIMENTOS.ID_PROCEDIMENTOS, PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOS.CODPROCEDIMENTO, PROCEDIMENTOS.VALOR,');
    SQL.Add('CATEGORIAPROCEDIMENTO.ID_CONVENIO FROM CATEGORIAPROCEDIMENTO');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON CATEGORIAPROCEDIMENTO.ID_CATEGORIAPROCEDIMENTO = PROCEDIMENTOS.ID_CATEGORIAPROCEDIMENTO');
    SQL.Add('WHERE (CATEGORIAPROCEDIMENTO.ID_CONVENIO = :pID)');
    SQL.Add('Order By Procedimentos.Descricao');
    Parameters.ParamByName('pID').Value := iConvenio;
    Open
  End;
  {
    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO, ID_CATEGORIAPROCEDIMENTO FROM CATEGORIAPROCEDIMENTO');
    SQL.Add('WHERE ID_CONVENIO = :pID');
    Parameters.ParamByName('pID').Value := iConvenio;
    Open;

    while Not eof do
    Begin
    AdicionarItem(MenuDentesE, FieldByname('DESCRICAO').AsString);

    i := i + 1;

    With qryAux2 do
    Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOS');
    SQL.Add('WHERE ID_CATEGORIAPROCEDIMENTO = :pID');
    Parameters.ParamByName('pID').Value :=
    qryAux.FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger;
    Open;

    while Not eof do
    Begin
    AdicionarSubItem(MenuDentesE, i, FieldByname('DESCRICAO').AsString,
    FieldByname('ID_PROCEDIMENTOS').AsInteger);
    Next;
    End;
    end;

    Next;
    End;
    End; }
end;

procedure TfrmHistoricos.DeciduoPermanente(Dente: Integer; Permanente: Boolean);
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := Dente;
    Open;

    Edit;
    FieldByname('PERMANENTE').AsBoolean := Permanente;
    Post;
  End;

end;

procedure TfrmHistoricos.DenteIncluso1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := iDente;
    Open;

    Edit;

    if FieldByname('INCLUSO').AsBoolean then
    Begin
      FieldByname('INCLUSO').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('INCLUSO').AsBoolean := True;
    End;

    FieldByname('MICRODENTE').AsBoolean := False;
    FieldByname('SUPRANUMERARIO').AsBoolean := False;
    FieldByname('SEMIINCLUSO').AsBoolean := False;

    Post;

  End;

  CarregaImagemDente(iDente);

end;

procedure TfrmHistoricos.Dentesemiincluso1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := iDente;
    Open;

    Edit;

    if FieldByname('SEMIINCLUSO').AsBoolean then
    Begin
      FieldByname('SEMIINCLUSO').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('SEMIINCLUSO').AsBoolean := True;
    End;

    FieldByname('MICRODENTE').AsBoolean := False;
    FieldByname('SUPRANUMERARIO').AsBoolean := False;
    FieldByname('INCLUSO').AsBoolean := False;

    Post;

  End;

  CarregaImagemDente(iDente);

end;

procedure TfrmHistoricos.DenteSupranumerrio1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := iDente;
    Open;

    Edit;

    if FieldByname('SUPRANUMERARIO').AsBoolean then
    Begin
      FieldByname('SUPRANUMERARIO').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('SUPRANUMERARIO').AsBoolean := True;
    End;

    FieldByname('MICRODENTE').AsBoolean := False;
    FieldByname('SEMIINCLUSO').AsBoolean := False;
    FieldByname('INCLUSO').AsBoolean := False;

    Post;

  End;

  CarregaImagemDente(iDente);

end;

procedure TfrmHistoricos.tonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
end;

procedure TfrmHistoricos.EditaAnamnese;
var
  IDPacienteAnamense: Integer;
begin
  if EdtCodM.Text = '' then
  Begin
    Application.MessageBox
      ('O campo "Dentista Responsável" da Anamnese é obrigatório o preenchimento da resposta!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCodM.SetFocus;
    Exit;
  End;

  IDPacienteAnamense := qryPacienteAnamneseID_PACIENTEANAMNESE.AsInteger;;

  qryPerguntasAnamnese.First;
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PERGUNTASPACIENTEANAMNESE');
    SQL.Add('WHERE ID_PACIENTEANAMNESE = :pID');
    Parameters.ParamByName('pID').Value := IDPacienteAnamense;
    Open;

    First;

    while not eof do
    Begin
      Edit;
      FieldByname('ID_PACIENTEANAMNESE').AsInteger := IDPacienteAnamense;
      FieldByname('PERGUNTA').AsString := qryPerguntasAnamnesePergunta.AsString;
      FieldByname('AFIRMO').AsBoolean := qryPerguntasAnamnese.FieldByname
        ('AFIRMO').AsBoolean;
      FieldByname('NEGO').AsBoolean := qryPerguntasAnamnese.FieldByname('NEGO')
        .AsBoolean;
      FieldByname('NAOSEI').AsBoolean := qryPerguntasAnamnese.FieldByname
        ('NAOSEI').AsBoolean;
      FieldByname('OBRIGATORIO').AsBoolean := qryPerguntasAnamnese.FieldByname
        ('OBRIGATORIO').AsBoolean;
      FieldByname('OBSERVACAO').AsString := qryPerguntasAnamnese.FieldByname
        ('OBSERVACAO').AsString;
      Post;
      qryPerguntasAnamnese.Next;
      Next;
    End;
  End;
end;

procedure TfrmHistoricos.EditarExameOral;
var
  IDPacienteExameOral: Integer;
begin
  if EdtCodMO.Text = '' then
  Begin
    Application.MessageBox
      ('O campo "Dentista Responsável" do Exame Oral é obrigatório o preenchimento da resposta!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCodM.SetFocus;
    Exit;
  End;

  IDPacienteExameOral := qryPacienteExameOralID_PACIENTEEXAMEORAL.AsInteger;;

  qryPerguntasExameOral.First;
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PERGUNTASPACIENTEEXAMEORAL');
    SQL.Add('WHERE ID_PACIENTEEXAMEORAL = :pID');
    Parameters.ParamByName('pID').Value := IDPacienteExameOral;
    Open;

    First;

    while not eof do
    Begin
      Edit;
      FieldByname('ID_PACIENTEEXAMEORAL').AsInteger := IDPacienteExameOral;
      FieldByname('PERGUNTA').AsString :=
        qryPerguntasExameOralPergunta.AsString;
      FieldByname('RESPOSTA').AsString :=
        qryPerguntasExameOralResposta.AsString;
      Post;
      qryPerguntasExameOral.Next;
      Next;
    End;
  End;
end;

procedure TfrmHistoricos.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
end;

procedure TfrmHistoricos.EdtCodMExit(Sender: TObject);
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

    EdtMedico.Text := FieldByname('NOME').AsString;

    if EdtMedico.Text = '' then
    Begin
      EdtCodM.Text := '';
    End;

  End;
end;

procedure TfrmHistoricos.EdtCodMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmHistoricos.EdtCodMOButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodMO.Text := frmMain.sCod;
  EdtCodMOExit(Sender);
end;

procedure TfrmHistoricos.EdtCodMOExit(Sender: TObject);
begin
  inherited;
  if EdtCodMO.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_MEDICO, NOME FROM MEDICOS');
    SQL.Add('WHERE ID_MEDICO = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodMO.Text);
    Open;

    EdtNomeMedicoEO.Text := FieldByname('NOME').AsString;

    if EdtNomeMedicoEO.Text = '' then
    Begin
      EdtCodMO.Text := '';
    End;

  End;
end;

procedure TfrmHistoricos.EdtCodPExit(Sender: TObject);
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
    SQL.Add('SELECT NOME, ID_PACIENTE FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;

    if Not qryAux.eof then
    Begin
      EdtNome.Text := FieldByname('Nome').AsString
    End
    Else
    Begin
      EdtCodP.Text := '';
    End;
  End;

  CarregaFiltros;
end;

procedure TfrmHistoricos.EdtDenteExit(Sender: TObject);
var
  iNumeroDente: Integer;
begin
  inherited;

  iNumeroDente := StrToInt(EdtDente.Text);

  if iNumeroDente = 0 then
  Begin
    Exit;
  End;

  if (iNumeroDente < 11) then
  Begin
    Application.MessageBox(PChar('O Número do dente: ' + IntToStr(iNumeroDente)
      + ' é inválido!'), 'Atenção!', mb_ok + MB_ICONWARNING);
    EdtDente.SetFocus;
    Exit;
  End;

  if (iNumeroDente > 89) then
  Begin
    Application.MessageBox(PChar('O Número do dente: ' + IntToStr(iNumeroDente)
      + ' é inválido!'), 'Atenção!', mb_ok + MB_ICONWARNING);
    EdtDente.SetFocus;
    Exit;
  End;

  if (iNumeroDente = 20) or (iNumeroDente = 30) or (iNumeroDente = 40) or
    (iNumeroDente = 50) or (iNumeroDente = 60) or (iNumeroDente = 70) or
    (iNumeroDente = 80) then
  Begin
    Application.MessageBox(PChar('O Número do dente: ' + IntToStr(iNumeroDente)
      + ' é inválido!'), 'Atenção!', mb_ok + MB_ICONWARNING);
    EdtDente.SetFocus;
    Exit;
  End;

end;

procedure TfrmHistoricos.EdtDtGlosaExit(Sender: TObject);
begin
  inherited;
  qryProcedimentosAtendimentos.Edit;
  qryProcedimentosAtendimentosDataGlosa.AsString := EdtDtGlosa.Text;
  qryProcedimentosAtendimentos.Post;
end;

procedure TfrmHistoricos.EdtQtdeParcelasExit(Sender: TObject);
begin
  inherited;
  MontaParcelas;
end;

procedure TfrmHistoricos.FormActivate(Sender: TObject);
var
  sConect: String;
begin
  inherited;

  if Not bCarregado then
  Begin
    CarregaProcedimentosDentes;
    MontaTabelasConvenios;
    MontaTabelasTratamento;
    CarregaProcedimentosAtendimento;
    bCarregado := True;
    CarregaDentes;

    sConect := '';
    sConect := sConect + ' Provider=SQLOLEDB.1; ';
    sConect := sConect + ' Persist Security Info=True; ';
    sConect := sConect + ' User ID=' + CfgAcesso.Usuario + '; ';
    sConect := sConect + ' Password=' + CfgAcesso.Senha + '; ';
    sConect := sConect + ' Initial Catalog=ODSIMAGENS; ';
    sConect := sConect + ' Data Source=' + CfgAcesso.Servidor;

    ImagemPaciente.ConnectionString := sConect;
    ImagemPaciente.Connected := True;

    With qryFotosPaciente do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('select * from FOTOSPACIENTE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      SQL.Add('Order By Data');
      Parameters.ParamByName('pID').Value := EdtCodP.Text;
      Open;
    End;

    if qryAtendimentosSTATUS.AsInteger = 1 then
    Begin
      grdProcedimentosAtendimentos.ReadOnly := True;
    End
    Else
    Begin
      grdProcedimentosAtendimentos.ReadOnly := False;
    End;

  End;
end;

procedure TfrmHistoricos.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex     := 0;
  PageControl2.TabIndex     := 0;
  PageOrcamento.TabIndex    := 0;
  bCarregado                := False;
  EdtDtInicioParcelas.Date  := IncMonth(EdtDtInicioParcelas.Date, 1);
  qryOrcamentoAux.Open;
end;

procedure TfrmHistoricos.GravaHistorico(Descricao: String);
begin
  With qryAux2 do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM HISTORICOPACIENTE');
    SQL.Add('WHERE ID_HISTORICOPACIENTE = -1');
    Open;

    Append;
    FieldByname('ID_PACIENTE').AsString := EdtCodP.Text;
    FieldByname('DESCRICAO').AsString := Descricao;
    FieldByname('ID_OPERADOR').AsInteger := Operador.ID;
    FieldByname('TIPO').AsInteger := 0;
    FieldByname('DATA').AsDateTime := Now;
    Post;
  End;

  CarregaHistorico;

end;

procedure TfrmHistoricos.GrdOrcamentoCellClick(Column: TColumn);
begin
  inherited;
  rUltimoValorAcrescimo := qryOrcamentoValorAcrescimo.AsFloat;
  rUltimoValorDesconto := qryOrcamentoValorDesconto.AsFloat;

  if qryOrcamentoTipo.AsString = 'C' then
  Begin
    GrdOrcamento.Columns[5].ReadOnly := True;
    GrdOrcamento.Columns[6].ReadOnly := True;
  End
  Else
  Begin
    GrdOrcamento.Columns[5].ReadOnly := False;
    GrdOrcamento.Columns[6].ReadOnly := False;
  End;

  if qryOrcamentoFaturado.AsBoolean then
  Begin
    GrdOrcamento.Columns[0].ReadOnly := True;
    GrdOrcamento.Columns[5].ReadOnly := True;
    GrdOrcamento.Columns[6].ReadOnly := True;
  End
  Else
  Begin
    GrdOrcamento.Columns[0].ReadOnly := False;
    GrdOrcamento.Columns[5].ReadOnly := False;
    GrdOrcamento.Columns[6].ReadOnly := False;
  End;
end;

procedure TfrmHistoricos.GrdOrcamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if qryOrcamentoTipo.AsString = 'C' then
  Begin
    GrdOrcamento.Columns[5].ReadOnly := True;
    GrdOrcamento.Columns[6].ReadOnly := True;
  End
  Else
  Begin
    GrdOrcamento.Columns[5].ReadOnly := False;
    GrdOrcamento.Columns[6].ReadOnly := False;
  End;

  if qryOrcamentoFaturado.AsBoolean then
  Begin
    GrdOrcamento.Columns[0].ReadOnly := True;
    GrdOrcamento.Columns[5].ReadOnly := True;
    GrdOrcamento.Columns[6].ReadOnly := True;
  End
  Else
  Begin
    GrdOrcamento.Columns[0].ReadOnly := False;
    GrdOrcamento.Columns[5].ReadOnly := False;
    GrdOrcamento.Columns[6].ReadOnly := False;
  End;
end;

procedure TfrmHistoricos.GrdOrcamentoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if qryOrcamentoTipo.AsString = 'C' then
  Begin
    GrdOrcamento.Columns[5].ReadOnly := True;
    GrdOrcamento.Columns[6].ReadOnly := True;
  End
  Else
  Begin
    GrdOrcamento.Columns[5].ReadOnly := False;
    GrdOrcamento.Columns[6].ReadOnly := False;
  End;

  if qryOrcamentoFaturado.AsBoolean then
  Begin
    GrdOrcamento.Columns[0].ReadOnly := True;
    GrdOrcamento.Columns[5].ReadOnly := True;
    GrdOrcamento.Columns[6].ReadOnly := True;
  End
  Else
  Begin
    GrdOrcamento.Columns[0].ReadOnly := False;
    GrdOrcamento.Columns[5].ReadOnly := False;
    GrdOrcamento.Columns[6].ReadOnly := False;
  End;
end;

procedure TfrmHistoricos.grdProcedimentosAtendimentosCellClick(Column: TColumn);
begin
  inherited;
  if qryAtendimentosID_ATENDIMENTO.AsString = '' then Exit;

  SalvaProcedimentosAtendimentoDB;
  CarregaAtendimentosItens;
end;

procedure TfrmHistoricos.grdProcedimentosAtendimentosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if qryAtendimentosID_ATENDIMENTO.AsString = '' then Exit;
  SalvaProcedimentosAtendimentoDB;
  CarregaAtendimentosItens;
end;

procedure TfrmHistoricos.grdProcedimentosAtendimentosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if qryAtendimentosID_ATENDIMENTO.AsString = '' then Exit;
  SalvaProcedimentosAtendimentoDB;
  CarregaAtendimentosItens;
end;

procedure TfrmHistoricos.grdProcedimentosAtendimentosKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if qryAtendimentosID_ATENDIMENTO.AsString = '' then Exit;
  SalvaProcedimentosAtendimentoDB;
  CarregaAtendimentosItens;
end;

procedure TfrmHistoricos.GridProcDenteDblClick(Sender: TObject);
begin
  inherited;
 { Application.CreateForm(TfrmProcedimentoDente, frmProcedimentoDente);
  frmProcedimentoDente.iProcedimento := qryProcedimentosDentesID.AsInteger;
  frmProcedimentoDente.iDente := qryProcedimentosDentesDente.AsInteger;
  frmProcedimentoDente.iOdontograma := iOdontograma;
  frmProcedimentoDente.iProcedimentoDentes :=
    qryProcedimentosDentesIDProcedimentosDentes.AsInteger;
  frmProcedimentoDente.ShowModal;
  FreeAndNil(frmProcedimentoDente);
  CarregaProcedimentosDentes;              }
end;

procedure TfrmHistoricos.GridProcDenteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  if qryProcedimentosDentesSituacao.AsInteger = 0 then
  Begin
    GridProcDente.Canvas.Font.Color := clRed; // coloque aqui a cor desejada
    GridProcDente.Canvas.Brush.Color := clCream;
    GridProcDente.DefaultDrawDataCell(Rect, GridProcDente.Columns[DataCol]
      .Field, State);
  End;

  if qryProcedimentosDentesSituacao.AsInteger = 1 then
  Begin
    GridProcDente.Canvas.Font.Color := clGreen; // coloque aqui a cor desejada
    GridProcDente.Canvas.Brush.Color := clCream;
    GridProcDente.DefaultDrawDataCell(Rect, GridProcDente.Columns[DataCol]
      .Field, State);
  End;

  if qryProcedimentosDentesSituacao.AsInteger = 2 then
  Begin
    GridProcDente.Canvas.Font.Color := clBlue; // coloque aqui a cor desejada
    GridProcDente.Canvas.Brush.Color := clCream;
    GridProcDente.DefaultDrawDataCell(Rect, GridProcDente.Columns[DataCol]
      .Field, State);
  End;

  if qryProcedimentosDentesSituacao.AsInteger = 3 then
  Begin
    GridProcDente.Canvas.Font.Color := $0000A6A6;
    // coloque aqui a cor desejada
    GridProcDente.Canvas.Brush.Color := clCream;
    GridProcDente.DefaultDrawDataCell(Rect, GridProcDente.Columns[DataCol]
      .Field, State);
  End;
end;

procedure TfrmHistoricos.ImgD11Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD11.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD11ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(11);
  iDente := StrToInt(btnD11.Caption);
end;

procedure TfrmHistoricos.ImgD12Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD12.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD12ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(12);
  iDente := StrToInt(btnD12.Caption);
end;

procedure TfrmHistoricos.ImgD13Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD13.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD13ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(13);
  iDente := StrToInt(btnD13.Caption);
end;

procedure TfrmHistoricos.ImgD14Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD14.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD14ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(14);
  iDente := StrToInt(btnD14.Caption);
end;

procedure TfrmHistoricos.ImgD15Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD15.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD15ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(15);
  iDente := StrToInt(btnD15.Caption);
end;

procedure TfrmHistoricos.ImgD16Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if not btnD16.Enabled then
  Begin
    Exit;
  End;

  iDente := 16;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD16ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(16);
  iDente := 16;
end;

procedure TfrmHistoricos.ImgD17Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if Not btnD17.Enabled then
  Begin
    Exit;
  End;

  iDente := 17;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD17ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(17);
  iDente := 17;
end;

procedure TfrmHistoricos.ImgD18Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if not btnD18.Enabled then
  Begin
    Exit;
  End;

  iDente := 18;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD18ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(18);
  iDente := 18;
end;

procedure TfrmHistoricos.ImgD21Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD21.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD21ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(21);
  iDente := StrToInt(btnD21.Caption);
end;

procedure TfrmHistoricos.ImgD22Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD22.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD22ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(22);
  iDente := StrToInt(btnD22.Caption);
end;

procedure TfrmHistoricos.ImgD23Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD23.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD23ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(23);
  iDente := StrToInt(btnD23.Caption);
end;

procedure TfrmHistoricos.ImgD24Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD24.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD24ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(24);
  iDente := StrToInt(btnD24.Caption);
end;

procedure TfrmHistoricos.ImgD25Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD25.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD25ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(25);
  iDente := StrToInt(btnD25.Caption);
end;

procedure TfrmHistoricos.ImgD26Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if not btnD26.Enabled then
  Begin
    Exit;
  End;

  iDente := 26;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD26ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(26);
  iDente := 26;
end;

procedure TfrmHistoricos.ImgD27Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if not btnD27.Enabled then
  Begin
    Exit;
  End;

  iDente := 27;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD27ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(27);
  iDente := 27;
end;

procedure TfrmHistoricos.ImgD28Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if Not btnD28.Enabled then
  Begin
    Exit;
  End;

  iDente := 28;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD28ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(28);
  iDente := 28;
end;

procedure TfrmHistoricos.ImgD31Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD31.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD31ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(31);
  iDente := StrToInt(btnD31.Caption);
end;

procedure TfrmHistoricos.ImgD32Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD32.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD32ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(32);
  iDente := StrToInt(btnD32.Caption);
end;

procedure TfrmHistoricos.ImgD33Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD33.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD33ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(33);
  iDente := StrToInt(btnD33.Caption);
end;

procedure TfrmHistoricos.ImgD34Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD34.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD34ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(34);
  iDente := StrToInt(btnD34.Caption);
end;

procedure TfrmHistoricos.ImgD35Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD35.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD35ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(35);
  iDente := StrToInt(btnD35.Caption);
end;

procedure TfrmHistoricos.ImgD36Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if not btnD36.Enabled then
  Begin
    Exit;
  End;

  iDente := 36;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD36ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(36);
  iDente := 36;
end;

procedure TfrmHistoricos.ImgD37Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if Not btnD37.Enabled then
  Begin
    Exit;
  End;

  iDente := 37;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD37ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(37);
  iDente := 37;
end;

procedure TfrmHistoricos.ImgD38Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if not btnD38.Enabled then
  Begin
    Exit;
  End;

  iDente := 38;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD38ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(38);
  iDente := 38;
end;

procedure TfrmHistoricos.ImgD41Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD41.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD41ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(41);
  iDente := StrToInt(btnD41.Caption);
end;

procedure TfrmHistoricos.ImgD42Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD42.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD42ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(42);
  iDente := StrToInt(btnD42.Caption);
end;

procedure TfrmHistoricos.ImgD43Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD43.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD43ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(43);
  iDente := StrToInt(btnD43.Caption);
end;

procedure TfrmHistoricos.ImgD44Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD44.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD44ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(44);
  iDente := StrToInt(btnD44.Caption);
end;

procedure TfrmHistoricos.ImgD45Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);
  iDente := StrToInt(btnD45.Caption);
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD45ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(45);
  iDente := StrToInt(btnD45.Caption);
end;

procedure TfrmHistoricos.ImgD46Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if Not btnD46.Enabled then
  Begin
    Exit;
  End;

  iDente := 46;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD46ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(46);
  iDente := 46;
end;

procedure TfrmHistoricos.ImgD47Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if Not btnD47.Enabled then
  Begin
    Exit;
  End;

  iDente := 47;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD47ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(47);
  iDente := 47;
end;

procedure TfrmHistoricos.ImgD48Click(Sender: TObject);
begin
  inherited;
  GetCursorPos(PosicaoMouse);

  if Not btnD48.Enabled then
  Begin
    Exit;
  End;

  iDente := 48;
  MenuDentesE.Popup(PosicaoMouse.X, PosicaoMouse.Y);
end;

procedure TfrmHistoricos.ImgD48ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  AtualizaCBMenu(48);
  iDente := 48;
end;

procedure TfrmHistoricos.grdAtendimentosCellClick(Column: TColumn);
begin
  inherited;
  CarregaDadosAtendimento;
end;

procedure TfrmHistoricos.grdAtendimentosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  CarregaDadosAtendimento;
end;

procedure TfrmHistoricos.grdAtendimentosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  CarregaDadosAtendimento;
end;

procedure TfrmHistoricos.grdAtendimentosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  CarregaDadosAtendimento;
end;

procedure TfrmHistoricos.grdAtendimentosMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  CarregaDadosAtendimento;
end;

procedure TfrmHistoricos.grdItensAtendimentosCellClick(Column: TColumn);
begin
  inherited;
  CarregaAtendimentoItensDesc;
end;

procedure TfrmHistoricos.grdItensAtendimentosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if qryProcedimentosAtendimentosSituacao.AsInteger = 0 then
  Begin
    grdItensAtendimentos.Canvas.Font.Color := clRed;
    // coloque aqui a cor desejada
    grdItensAtendimentos.Canvas.Brush.Color := clCream;
    grdItensAtendimentos.DefaultDrawDataCell(Rect,
      grdItensAtendimentos.Columns[DataCol].Field, State);
  End;

  if qryProcedimentosAtendimentosSituacao.AsInteger = 1 then
  Begin
    grdItensAtendimentos.Canvas.Font.Color := clGreen;
    // coloque aqui a cor desejada
    grdItensAtendimentos.Canvas.Brush.Color := clCream;
    grdItensAtendimentos.DefaultDrawDataCell(Rect,
      grdItensAtendimentos.Columns[DataCol].Field, State);
  End;

  if qryProcedimentosAtendimentosSituacao.AsInteger = 2 then
  Begin
    grdItensAtendimentos.Canvas.Font.Color := clBlue;
    // coloque aqui a cor desejada
    grdItensAtendimentos.Canvas.Brush.Color := clCream;
    grdItensAtendimentos.DefaultDrawDataCell(Rect,
      grdItensAtendimentos.Columns[DataCol].Field, State);
  End;

  if qryProcedimentosAtendimentosSituacao.AsInteger = 3 then
  Begin
    grdItensAtendimentos.Canvas.Font.Color := $0000A6A6;
    // coloque aqui a cor desejada
    grdItensAtendimentos.Canvas.Brush.Color := clCream;
    grdItensAtendimentos.DefaultDrawDataCell(Rect,
      grdItensAtendimentos.Columns[DataCol].Field, State);
  End;
end;

procedure TfrmHistoricos.grdItensAtendimentosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CarregaAtendimentoItensDesc;
end;

procedure TfrmHistoricos.grdItensAtendimentosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  CarregaAtendimentoItensDesc;
end;

procedure TfrmHistoricos.grdItensAtendimentosKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CarregaAtendimentoItensDesc;
end;

procedure TfrmHistoricos.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  bAnamneseNova := False;
  GrdPerguntasAnamnese.ReadOnly := True;
  EdtCodM.ReadOnly := True;
  CarregaPerguntas;
end;

procedure TfrmHistoricos.JvDBUltimGrid2CellClick(Column: TColumn);
begin
  inherited;
  bExameOralNovo := False;
  GrdPerguntasExameOral.ReadOnly := True;
  EdtCodMO.ReadOnly := True;
  CarregaExames;
end;

procedure TfrmHistoricos.Microdente1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := iDente;
    Open;

    Edit;

    if FieldByname('MICRODENTE').AsBoolean then
    Begin
      FieldByname('MICRODENTE').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('MICRODENTE').AsBoolean := True;
    End;

    FieldByname('SUPRANUMERARIO').AsBoolean := False;
    FieldByname('SEMIINCLUSO').AsBoolean := False;
    FieldByname('INCLUSO').AsBoolean := False;

    Post;

  End;

  CarregaImagemDente(iDente);

end;

procedure TfrmHistoricos.mmoGlosaTISSExit(Sender: TObject);
begin
  inherited;
  qryProcedimentosAtendimentos.Edit;
  qryProcedimentosAtendimentosObservacaoGlosa.AsString :=
    mmoGlosaTISS.Lines.Text;
  qryProcedimentosAtendimentos.Post;
end;

procedure TfrmHistoricos.mmoObsAtendimentoExit(Sender: TObject);
begin
  inherited;
  qryProcedimentosAtendimentos.Edit;
  qryProcedimentosAtendimentosObservacaoProcedimento.AsString :=
    mmoObsAtendimento.Lines.Text;
  qryProcedimentosAtendimentos.Post;
end;

procedure TfrmHistoricos.MontaParcelas;
var
  rTotal,
  rValor: Double;
  iAux, i: Integer;
  dData: TDateTime;
  sParcelas: String;
begin
  With qryParcelas do
  Begin
    Close;
    Open;

    rTotal := 0;

    if rgPagamento.ItemIndex = 0 then
    Begin
      Append;
      FieldByname('VENCIMENTO').AsString := FormatDateTime('DD/MM/YYYY', Now);
      rTotal := RemoveVirgula(lblTotal.Caption);
      FieldByname('VALOR').AsFloat := rTotal;
      FieldByname('PAGO').AsBoolean := False;
      FieldByname('ValorPago').AsFloat := 0;
      FieldByname('Saldo').AsFloat := 0;
      FieldByname('DOC').AsString := '01/01';
      Post;
    End
    Else
    Begin
      rTotal := RemoveVirgula(lblTotal.Caption);
      rValor := rTotal / EdtQtdeParcelas.Value;
      dData := EdtDtInicioParcelas.Date;
      iAux := StrToInt(EdtQtdeParcelas.Text);

      for i := 1 to iAux do
      Begin
        Append;
        FieldByname('VENCIMENTO').AsString :=
          FormatDateTime('DD/MM/YYYY', dData);
        FieldByname('VALOR').AsFloat := rValor;
        FieldByname('PAGO').AsBoolean := False;
        FieldByname('ValorPago').AsFloat := 0;
        FieldByname('Saldo').AsFloat := 0;

        sParcelas := FormatFloat('00', i);
        sParcelas := sParcelas + '/' + FormatFloat('00', EdtQtdeParcelas.Value);

        FieldByname('DOC').AsString := sParcelas;
        Post;

        dData := IncMonth(dData, 1);
      End;
    End;

    First;

  End;
end;

procedure TfrmHistoricos.MontaTabelasConvenios;
var
  iConvenio: Integer;
begin
  cbTabela.Items.Clear;
  cbTabela.Items.Add('Particular');

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CONVENIO FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;

    if FieldByname('ID_CONVENIO').AsInteger > 1 then
    Begin
      iConvenio := FieldByname('ID_CONVENIO').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT NOME FROM CONVENIOS');
      SQL.Add('WHERE ID_CONVENIO = :pID');
      Parameters.ParamByName('pID').Value := iConvenio;
      Open;

      cbTabela.Items.Add(FieldByname('NOME').AsString);
      cbTabela.ItemIndex := 1;
    End
    Else
    Begin
      cbTabela.ItemIndex := 0;
    End;
  End;

  cbTabelaClick(Self);

end;

procedure TfrmHistoricos.MontaTabelasTratamento;
var
  iAux, iAprovado, i: Integer;
begin

  cbProposta.Items.Clear;
  iAux := -1;
  i := -1;
  iAprovado := 0;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;

    while not eof do
    Begin
      i := i + 1;
      cbProposta.Items.Add(FieldByname('DESCRICAO').AsString);

      if FieldByname('APROVADA').AsBoolean then
      Begin
        iAux := i;
        iAprovado := i;
      End;

      Next;
    End;

    cbProposta.ItemIndex := iAprovado;

    { if iAux > -1 then
      Begin
      cbProposta.Enabled := False;
      SpeedButton7.Enabled := False;
      rgPagamento.Enabled := False;
      rgParcelas.Enabled := False;
      EdtQtdeParcelas.Enabled := False;
      EdtCorrecaoMensal.Enabled := False;
      cbAprovado.Enabled := False;
      EdtdtAprovacao.Enabled := False;
      EdtVlrDesconto.Enabled := False;
      EdtVlrAcrescimo.Enabled := False;
      btnSalvar.Enabled := False;
      SpeedButton5.Enabled := False;
      End;
    }
    CarregaPropostaTratamento;
  End;
end;

function TfrmHistoricos.NumeroDente(Numero: Integer): Integer;
begin
  case Numero of
    51:
      Result := 11;
    52:
      Result := 12;
    53:
      Result := 13;
    54:
      Result := 14;
    55:
      Result := 15;

    61:
      Result := 21;
    62:
      Result := 22;
    63:
      Result := 23;
    64:
      Result := 24;
    65:
      Result := 25;

    71:
      Result := 31;
    72:
      Result := 32;
    73:
      Result := 33;
    74:
      Result := 34;
    75:
      Result := 35;

    81:
      Result := 41;
    82:
      Result := 42;
    83:
      Result := 43;
    84:
      Result := 44;
    85:
      Result := 45;
  end;

  if Numero < 49 then
  Begin
    Result := Numero;
  End;
end;

procedure TfrmHistoricos.odososDentes1Click(Sender: TObject);
begin
  inherited;

  RemoveDente(31);
  RemoveDente(32);
  RemoveDente(33);
  RemoveDente(34);
  RemoveDente(35);
  RemoveDente(36);
  RemoveDente(37);
  RemoveDente(38);

  RemoveDente(41);
  RemoveDente(42);
  RemoveDente(43);
  RemoveDente(44);
  RemoveDente(45);
  RemoveDente(46);
  RemoveDente(47);
  RemoveDente(48);

  RemoveDente(11);
  RemoveDente(12);
  RemoveDente(13);
  RemoveDente(14);
  RemoveDente(15);
  RemoveDente(16);
  RemoveDente(17);
  RemoveDente(18);

  RemoveDente(21);
  RemoveDente(22);
  RemoveDente(23);
  RemoveDente(24);
  RemoveDente(25);
  RemoveDente(26);
  RemoveDente(27);
  RemoveDente(28);

  CarregaDentes;
end;

procedure TfrmHistoricos.PageControl1Change(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    4:
      Begin
        CarregaReceituario;
        CarregaAtestados;
        CarregaTermos;
      end;
  end;
end;

function TfrmHistoricos.ProcedimentosConcluidos(ID: Integer): Boolean;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOSDENTES');
    SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = :pID');
    Parameters.ParamByName('pID').Value := ID;
    Open;

    if FieldByname('SITUACAO').AsInteger = 1 then
    Begin
      Result := True;
    End
    Else
    Begin
      Result := False;
    End;
  End;
end;

procedure TfrmHistoricos.qryOrcamentoSelecionadoValidate(Sender: TField);
var
  rPagoProcedimento, rPago, rAcrescimo, rProcedimento, rTotal, rDesconto: Double;
begin
  inherited;
  rPago := 0;

  qryOrcamentoAux.First;

  while not qryOrcamentoAux.Eof do
    Begin
      if qryOrcamentoAux.FieldByName('IDProcedimento').AsInteger = qryOrcamentoIDProcedimento.AsInteger then
        Begin
          qryOrcamentoAux.Edit;
          qryOrcamentoAux.FieldByName('SELECIONADO').AsBoolean := qryOrcamentoSelecionado.AsBoolean;
          qryOrcamentoAux.Post;
        End;
      qryOrcamentoAux.Next;
    End;

  if qryOrcamentoSelecionado.AsBoolean then
  Begin
    rAcrescimo := RemoveVirgula(lblAcrescimo.Caption) +
      qryOrcamentoValorAcrescimo.AsFloat;
    rDesconto := RemoveVirgula(lblDesconto.Caption) +
      qryOrcamentoValorDesconto.AsFloat;
    rProcedimento := RemoveVirgula(lblTabela.Caption) +
      qryOrcamentoValorTabela.AsFloat;

    rPagoProcedimento := qryOrcamentoValorPago.AsFloat;

    qryOrcamentoAux.First;
    while not qryOrcamentoAux.Eof do
      Begin

        if (qryOrcamentoAux.FieldByName('SELECIONADO').AsBoolean) and (qryOrcamentoAux.FieldByName('FATURADO').AsBoolean = False) then
          Begin
            rPago := rPago + qryOrcamentoAux.FieldByName('ValorPago').AsFloat;
          End;

        qryOrcamentoAux.Next;
      End;

    rTotal := (rProcedimento + rAcrescimo) - rDesconto - rPago;

    lblAcrescimo.Caption := FormatFloat('#,###,##0.00', rAcrescimo);
    lblDesconto.Caption := FormatFloat('#,###,##0.00', rDesconto);
    lblTabela.Caption := FormatFloat('#,###,##0.00', rProcedimento);
    lblTotal.Caption := FormatFloat('#,###,##0.00', rTotal);
  End
  Else
  Begin
    rAcrescimo := RemoveVirgula(lblAcrescimo.Caption) -
      qryOrcamentoValorAcrescimo.AsFloat;
    rDesconto := RemoveVirgula(lblDesconto.Caption) -
      qryOrcamentoValorDesconto.AsFloat;
    rProcedimento := RemoveVirgula(lblTabela.Caption) -
      qryOrcamentoValorTabela.AsFloat;

    rPagoProcedimento := qryOrcamentoValorPago.AsFloat;

    qryOrcamentoAux.First;
    while not qryOrcamentoAux.Eof do
      Begin

        if (qryOrcamentoAux.FieldByName('SELECIONADO').AsBoolean) and (qryOrcamentoAux.FieldByName('FATURADO').AsBoolean = False) then
          Begin
            rPago := rPago + qryOrcamentoAux.FieldByName('ValorPago').AsFloat;
          End;

        qryOrcamentoAux.Next;
      End;

    if rPago > 0 then
      Begin
        rPago := rPago - rPagoProcedimento;
      End;

    rTotal := (rProcedimento + rAcrescimo) - rDesconto - rPago;

    lblAcrescimo.Caption := FormatFloat('#,###,##0.00', rAcrescimo);
    lblDesconto.Caption := FormatFloat('#,###,##0.00', rDesconto);
    lblTabela.Caption := FormatFloat('#,###,##0.00', rProcedimento);
    lblTotal.Caption := FormatFloat('#,###,##0.00', rTotal);
  End;

  MontaParcelas;
end;

procedure TfrmHistoricos.qryOrcamentoValorAcrescimoValidate(Sender: TField);
var
  rTotalAtual, rDescontoAtual, rAcrescimoAtual,
  rRestante, rPago, rTotal, rAcrescimo: Double;
begin
  inherited;

  rRestante := 0;
  rPago := 0;
  rTotal := 0;
  rAcrescimo := 0;
  if qryOrcamentoSelecionado.AsBoolean then
    Begin
      With qryOrcamentoAux do
      Begin
        First;

        while not qryOrcamentoAux.eof do
        Begin

          if (qryOrcamentoAux.FieldByName('SELECIONADO').AsBoolean) And (not qryOrcamentoAux.FieldByName('FATURADO').AsBoolean) then
          Begin
            rPago := rPago + qryOrcamentoAuxValorPago.AsFloat;
          End;

          if FieldByname('IDProcedimento').AsInteger = qryOrcamentoIDProcedimento.AsInteger
          then
          Begin
            rAcrescimoAtual := RemoveVirgula(lblAcrescimo.Caption);
            rAcrescimo := rAcrescimoAtual - FieldByname('ValorAcrescimo').AsFloat;
            rAcrescimo := rAcrescimo + qryOrcamento.FieldByname
              ('ValorAcrescimo').AsFloat;
            lblAcrescimo.Caption := FormatFloat('#,###,##0.00', rAcrescimo);
            rTotalAtual := RemoveVirgula(lblTabela.Caption);
            rDescontoAtual := RemoveVirgula(lblDesconto.Caption);
            rTotal := (rTotalAtual + rAcrescimo) - rDescontoAtual - rPago;
            lblTotal.Caption := FormatFloat('#,###,##0.00', rTotal);

            rRestante := qryOrcamentoValorTabela.AsFloat + qryOrcamentoValorTabela.AsFloat;
            rRestante := (rRestante - qryOrcamentoValorDesconto.ASFloat) - rPago;

            qryOrcamentoAux.Edit;
            qryOrcamentoAux.FieldByname('ValorAcrescimo').AsFloat :=
              qryOrcamento.FieldByname('ValorAcrescimo').AsFloat;
            qryOrcamentoAux.FieldByName('ValorRestante').AsFloat := rRestante;
            qryOrcamentoAux.Post;
          End;

          Next;
        End;
      End;
      MontaParcelas;
    End;
end;

procedure TfrmHistoricos.qryOrcamentoValorDescontoValidate(Sender: TField);
var
  rRestante, rDescontoAtual, rTotalAtual, rAcrescimoAtual,
  rPago, rTotal, rDesconto: Double;
begin
  inherited;

  rPago := 0;

  if qryOrcamentoSelecionado.AsBoolean then
    Begin


      With qryOrcamentoAux do
      Begin
        First;

        while not qryOrcamentoAux.eof do
        Begin

          if (qryOrcamentoAux.FieldByName('SELECIONADO').AsBoolean) And (not qryOrcamentoAux.FieldByName('FATURADO').AsBoolean) then
            Begin
              rPago := rPago + qryOrcamentoAuxValorPago.AsFloat;
            End;

          if FieldByname('IDProcedimento').AsInteger = qryOrcamentoIDProcedimento.AsInteger
          then
          Begin

            rDescontoAtual := RemoveVirgula(lblDesconto.Caption);
            rDesconto := rDescontoAtual -
              FieldByname('ValorDesconto').AsFloat;
            rDesconto := rDesconto + qryOrcamento.FieldByname
              ('ValorDesconto').AsFloat;
            lblDesconto.Caption := FormatFloat('#,###,##0.00', rDesconto);
            rTotalAtual := RemoveVirgula(lblTabela.Caption);
            rAcrescimoAtual := RemoveVirgula(lblAcrescimo.Caption);
            rTotal := (rTotalAtual + rAcrescimoAtual) - rDesconto - rPago;
            lblTotal.Caption := FormatFloat('#,###,##0.00', rTotal);

            rRestante := qryOrcamentoValorTabela.AsFloat + qryOrcamentoValorTabela.AsFloat;
            rRestante := (rRestante - qryOrcamentoValorDesconto.ASFloat) - rPago;

            qryOrcamentoAux.Edit;
            qryOrcamentoAux.FieldByname('ValorDesconto').AsFloat :=
              qryOrcamento.FieldByname('ValorDesconto').AsFloat;
            qryOrcamentoAux.Post;
          End;

          Next;
        End;
      End;
      MontaParcelas;
    End;
end;

procedure TfrmHistoricos.qryPerguntasAnamneseAFIRMOValidate(Sender: TField);
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

procedure TfrmHistoricos.qryPerguntasAnamneseNAOSEIValidate(Sender: TField);
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

procedure TfrmHistoricos.qryPerguntasAnamneseNEGOValidate(Sender: TField);
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

procedure TfrmHistoricos.RemoveDente(Dente: Integer);
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := Dente;
    Open;

    Edit;

    if FieldByname('EXISTENTE').AsBoolean then
    Begin
      FieldByname('EXISTENTE').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('EXISTENTE').AsBoolean := True;
    End;

    Post;
  End;
end;

procedure TfrmHistoricos.RemoverIncluirCoroa1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := iDente;
    Open;

    Edit;

    if FieldByname('COROA').AsBoolean then
    Begin
      FieldByname('COROA').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('COROA').AsBoolean := True;
    End;

    Post;

  End;

  CarregaImagemDente(iDente);

end;

function TfrmHistoricos.RetornaPermanente(Dente: Integer): Boolean;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Permanente FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := Dente;
    Open;

    Result := FieldByname('Permanente').AsBoolean;

  End;
end;

procedure TfrmHistoricos.rgDenteRegiaoAtendimentoClick(Sender: TObject);
begin
  inherited;
  If rgDenteRegiaoAtendimento.ItemIndex = 0 then
  Begin
    cbRegiaoAtendimento.Visible := False;
    cbRegiaoAtendimento.ItemIndex := 0;
    cbFaceAtendimento.Visible := True;
  End
  Else
  Begin
    cbFaceAtendimento.Visible := False;
    cbRegiaoAtendimento.Visible := True;
  End;

  qryProcedimentosAtendimentos.Edit;
  qryProcedimentosAtendimentosDENTE_REGIAO.AsInteger :=
    rgDenteRegiaoAtendimento.ItemIndex;
  qryProcedimentosAtendimentos.Post;

end;

procedure TfrmHistoricos.rgDenteRegiaoClick(Sender: TObject);
begin
  inherited;
  case rgDenteRegiao.ItemIndex of
    0:
      Begin
        gbRegiao.Visible := False;
        gbFace.Visible := True;
      End;
    1:
      Begin
        gbRegiao.Visible := True;
        gbFace.Visible := False;
      End;

  end;
end;

procedure TfrmHistoricos.rgPagamentoClick(Sender: TObject);
begin
  inherited;
  case rgPagamento.ItemIndex of
    0:
      gbParcelas.Visible := False;
    1:
      gbParcelas.Visible := True;
  end;

  MontaParcelas;
end;

procedure TfrmHistoricos.rgParcelasClick(Sender: TObject);
begin
  inherited;
  case rgParcelas.ItemIndex of
    0:
      gbCorrecao.Visible := False;
    1:
      gbCorrecao.Visible := True;
  end;

  MontaParcelas;
end;

procedure TfrmHistoricos.rgSituacaoAtendimentoClick(Sender: TObject);
begin
  inherited;
  qryProcedimentosAtendimentos.Edit;
  qryProcedimentosAtendimentosSituacao.AsInteger :=
    rgSituacaoAtendimento.ItemIndex;
  qryProcedimentosAtendimentos.Post;

  if rgSituacaoAtendimento.ItemIndex = 1 then
  Begin
    rgStatusAtendimento.ItemIndex := 1;
  End;
end;

procedure TfrmHistoricos.SalvaProcedimentosAtendimentoDB;
begin
  if qryProcedimentosAtendimentosSelSelecionado.AsBoolean then
  Begin
    With qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID_ATENDIMENTOITENS, ID_ATENDIMENTO, ID_ITENSPROPOSTATRATAMENTO, SELECIONADO FROM ATENDIMENTOITENS');
      SQL.Add('WHERE (ID_ITENSPROPOSTATRATAMENTO = :pItem) AND (ID_ATENDIMENTO = :pAtendimento) ');
      Parameters.ParamByName('pAtendimento').Value :=
        qryAtendimentosID_ATENDIMENTO.AsInteger;
      Parameters.ParamByName('pItem').Value :=
        qryProcedimentosAtendimentosSelIDProcedimento.AsInteger;
      Open;

      if Not eof then
      Begin
        Edit;
      End
      Else
      Begin
        Append;
      End;

      FieldByname('ID_ATENDIMENTO').AsInteger :=
        qryAtendimentosID_ATENDIMENTO.AsInteger;
      FieldByname('ID_ITENSPROPOSTATRATAMENTO').AsInteger :=
        qryProcedimentosAtendimentosSelIDProcedimento.AsInteger;
      FieldByname('SELECIONADO').AsBoolean :=
        qryProcedimentosAtendimentosSelSelecionado.AsBoolean;
      Post;
    End;
  End
  Else
  Begin
    With qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM ATENDIMENTOITENS');
      SQL.Add('WHERE (ID_ITENSPROPOSTATRATAMENTO = :pItem) AND (ID_ATENDIMENTO = :pAtendimento) ');
      Parameters.ParamByName('pAtendimento').Value :=
        qryAtendimentosID_ATENDIMENTO.AsInteger;
      Parameters.ParamByName('pItem').Value :=
        qryProcedimentosAtendimentosSelIDProcedimento.AsInteger;
      ExecSQL;
    End;
  End;
end;

procedure TfrmHistoricos.SomenteDenteSelecionado1Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := iDente;
    Open;

    Edit;

    if FieldByname('EXISTENTE').AsBoolean then
    Begin
      FieldByname('EXISTENTE').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('EXISTENTE').AsBoolean := True;
    End;

    Post;
  End;

  CarregaImagemDente(iDente);

end;

procedure TfrmHistoricos.SomenteDenteSelecionado2Click(Sender: TObject);
begin
  inherited;

  iDente := NumeroDente(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pOdont');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pOdont').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := iDente;
    Open;

    Edit;

    if FieldByname('PERMANENTE').AsBoolean then
    Begin
      FieldByname('PERMANENTE').AsBoolean := False;
    End
    Else
    Begin
      FieldByname('PERMANENTE').AsBoolean := True;
    End;

    Post;
  End;

  CarregaImagemDente(iDente);
  CarregaAnotacoesDentes;

end;

procedure TfrmHistoricos.SpeedButton10Click(Sender: TObject);
var
  i, iIDChequeAux, iIDConvenio: Integer;
  bProcedimentoParticular, bProcedimentoConvenio: Boolean;
  rValorParticular, rPagoParticular, rJurosParticular, rDescontoParticular, rTotalParticular,
   rValorRecebidoAux, rValorAux, rValorProcedimentoAux, rValorConvenio: Double;
begin
  inherited;

  if Not cbAprovado.Checked then
  Begin
    Application.MessageBox
      ('Para faturar uma proposta primeiro ela tem que ser aprovada!', 'Erro!',
      mb_ok + MB_ICONERROR);
    Exit;
  End;

  btnSalvar2Click(Self);

  qryOrcamento.First;
  bProcedimentoConvenio := False;
  bProcedimentoParticular := False;

  rValorRecebidoAux := 0;
  rValorProcedimentoAux := 0;

  while not qryOrcamento.eof do
  Begin
    if (qryOrcamentoSelecionado.AsBoolean = True) and
      (qryOrcamentoFaturado.AsBoolean = False) then
    Begin
      if qryOrcamentoTipo.AsString = 'P' then
      Begin
        bProcedimentoParticular := True;
        rValorParticular := rValorParticular + qryOrcamentoValorTabela.AsFloat;
        rJurosParticular := rJurosParticular +
          qryOrcamentoValorAcrescimo.AsFloat;
        rDescontoParticular := rDescontoParticular +
          qryOrcamentoValorDesconto.AsFloat;
        rPagoParticular := rPagoParticular + qryOrcamentoValorPago.AsFloat;
        rTotalParticular := rValorParticular + rJurosParticular -
          rDescontoParticular - rPagoParticular;
      End
      Else if qryOrcamentoTipo.AsString = 'C' then
      Begin
        bProcedimentoConvenio := True;
        rValorConvenio := rValorConvenio + qryOrcamentoValorTabela.AsFloat;
      End;
    End;
    qryOrcamento.Next;
  End;

  qryOrcamento.First;

  if bProcedimentoParticular then
  Begin
    Application.CreateForm(TfrmRecebimento, frmRecebimento);
    frmRecebimento.lblTotal.Caption := FormatFloat('#,##0.00',
      rTotalParticular);
    frmRecebimento.Panel1.Caption := 'Faturamento Paciente: ' + EdtNome.Text;
    frmRecebimento.lblRestante.Caption :=
      FormatFloat('#,##0.00', rTotalParticular);

    frmRecebimento.bFaturamento := True;
    frmRecebimento.rValor := rValorParticular;
    frmRecebimento.rJuros := rJurosParticular;
    frmRecebimento.rDesconto := rDescontoParticular;
    frmRecebimento.rValorPagoProcedimento := rPagoParticular;

    if rgPagamento.ItemIndex = 0 then
    Begin
      frmRecebimento.iCondição := 1;
      frmRecebimento.btnAvistaClick(Self);
      frmRecebimento.btnAprazo.Enabled := False;
      frmRecebimento.btnChequePreDatado.Enabled := False;
    End
    Else
    Begin
      qryParcelas.First;

      frmRecebimento.iCondição := 0;
      frmRecebimento.btnAvista.Enabled := False;
      frmRecebimento.btnChequeAvista.Enabled := False;
      frmRecebimento.btnAprazoClick(Self);

      frmRecebimento.qryParcelas.Close;
      frmRecebimento.qryParcelas.Open;

      while Not qryParcelas.eof do
      Begin
        frmRecebimento.qryParcelas.Append;
        frmRecebimento.qryParcelasDataLcto.AsDateTime := Now;
        frmRecebimento.qryParcelasDocumento.AsString := qryParcelasDoc.AsString;
        frmRecebimento.qryParcelasDataVcto.AsString :=
          qryParcelasVencimento.AsString;
        frmRecebimento.qryParcelasVlrReceber.AsFloat :=
          qryParcelasValor.AsFloat;
        frmRecebimento.qryParcelas.Post;

        qryParcelas.Next;
      End;
    End;

    frmRecebimento.ShowModal;

    if frmMain.bOK then
    Begin
      qryOrcamento.First;
      rValorRecebidoAux := frmRecebimento.rValor;

      if frmRecebimento.iCondição <> 0 then
      Begin
        If Application.MessageBox('Imprimir o Recibo?', 'Atenção!',
          MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
        Begin
          Application.CreateForm(TfrmRelRecibo, frmRelRecibo);
          frmRelRecibo.CarregaRelatorio(StrToInt(EdtCodP.Text),
            frmRecebimento.rValor, 'Procedimentos realizados no tratamento: ' +
            IntToStr(iPlanoTratamento));
          FreeAndNil(frmRelRecibo);
        End;

      while Not qryOrcamento.eof do
      Begin
        if qryOrcamentoTipo.AsString = 'P' then
        Begin
          With qryAux do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM ITENSPROPOSTATRATAMENTO');
            SQL.Add('WHERE ID_ITENSPROPOSTATRATAMENTO = :pID');
            SQL.Add('AND SELECIONADO = 1');
            Parameters.ParamByName('pID').Value :=
              qryOrcamentoIDProcedimento.AsInteger;
            Open;

            if (frmRecebimento.rValor <> rTotalParticular) and (FieldByName('FATURADO').AsBoolean = False) then
              Begin
               If (FieldByName('SELECIONADO').AsBoolean = True) then
                 Begin
                  rValorProcedimentoAux := (qryOrcamentoValorTabela.AsFloat + qryOrcamentoValorAcrescimo.AsFloat);
                  rValorProcedimentoAux := rValorProcedimentoAux - qryOrcamentoValorDesconto.AsFloat;
                  rValorProcedimentoAux := rValorProcedimentoAux - qryOrcamentoValorPago.AsFloat;
                  rValorRecebidoAux := rValorRecebidoAux - rValorProcedimentoAux;

                   if rValorRecebidoAux > 0 then
                    Begin
                      Edit;
                      rValorProcedimentoAux := rValorProcedimentoAux + qryOrcamentoValorPago.AsFloat;
                      FieldByName('VALORPAGO').AsFloat := rValorProcedimentoAux;
                      FieldByname('FATURADO').AsBoolean := True;
                      FieldByname('SELECIONADO').AsBoolean := True;
                      Post;
                    End
                   Else
                    Begin
                      rValorAux := rValorProcedimentoAux + rValorRecebidoAux;
                      Edit;

                      if FieldByName('VALORPAGO').AsFloat > 0 then
                        Begin
                         rValorAux := rValorAux + FieldByName('VALORPAGO').AsFloat;
                        End;

                      if rValorAux > 0 then
                        Begin
                          FieldByName('VALORPAGO').AsFloat := rValorAux;
                        End
                      Else
                        Begin
                          FieldByName('VALORPAGO').AsFloat := 0;
                        End;

                      rValorProcedimentoAux := rValorProcedimentoAux + qryOrcamentoValorPago.AsFloat;

                      if (rValorAux < rValorProcedimentoAux)  then
                        Begin
                          FieldByname('FATURADO').AsBoolean := False;
                          FieldByname('SELECIONADO').AsBoolean := True;
                        End
                      Else
                        Begin
                          FieldByname('FATURADO').AsBoolean := True;
                          FieldByname('SELECIONADO').AsBoolean := True;
                        End;

                      Post;
                    End;
                 End;
              End
            Else
            Begin
              Edit;
              FieldByname('FATURADO').AsBoolean := True;
              FieldByname('SELECIONADO').AsBoolean := True;
              Post;
            End;
          End;
        End;
        qryOrcamento.Next;
      End;
      End;

      With qryAux do
      Begin
        if frmRecebimento.iCondição = 0 then
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM CONTARECEBER');
          SQL.Add('WHERE ID_CONTARECEBER = 0');
          Open;
          frmRecebimento.qryParcelas.First;

          while not frmRecebimento.qryParcelas.eof do
          Begin
            Append;
            FieldByname('ID_FILIAL').AsInteger := Empresa.ID;
            FieldByname('ID_PACIENTE').AsString := EdtCodP.Text;
            FieldByname('HISTORICO').AsString := EdtCodP.Text +' - ' + EdtNome.Text + ' - Referente ao tratamento: ' +
              IntToStr(iPlanoTratamento);
            FieldByname('SITUACAO').AsInteger := 0;
            FieldByname('DTACONTA').AsDateTime := Now;
            FieldByname('DTAVENCIMENTO').AsDateTime :=
              frmRecebimento.qryParcelasDataVcto.AsDateTime;
            FieldByname('DOCUMENTO').AsString :=
              frmRecebimento.qryParcelasDocumento.AsString;
            FieldByname('VALOR').AsFloat :=
              frmRecebimento.qryParcelasVlrReceber.AsFloat;
            FieldByname('VALORRESTANTE').AsFloat :=
              frmRecebimento.qryParcelasVlrReceber.AsFloat;
            FieldByname('NRONOTA').AsString :=
              frmRecebimento.qryParcelasNroDocumento.AsString;
            Post;
            frmRecebimento.qryParcelas.Next;
          End;

          If Application.MessageBox('Deseja Imprimir o carnê?', 'Atenção!',
            MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
          Begin
            frmRecebimento.qryParcelas.First;
            Application.CreateForm(TfrmRCarne, frmRCarne);

            frmRCarne.qryRel.Close;
            frmRCarne.qryRel.Open;
            i := 1;
            while not frmRecebimento.qryParcelas.eof do
            Begin
              frmRCarne.qryRel.Append;
              frmRCarne.qryRelID.AsInteger := i;
              frmRCarne.qryRelDataEmissao.AsDateTime :=
                frmRecebimento.qryParcelasDataLcto.AsDateTime;
              frmRCarne.qryRelDataVencimento.AsDateTime :=
                frmRecebimento.qryParcelasDataVcto.AsDateTime;
              frmRCarne.qryRelNroDocumento.AsString :=
                frmRecebimento.qryParcelasNroDocumento.AsString;
              frmRCarne.qryRelDocumento.AsString :=
                frmRecebimento.qryParcelasDocumento.AsString;
              frmRCarne.qryRelValor.AsFloat :=
                frmRecebimento.qryParcelasVlrReceber.AsFloat;
              frmRCarne.qryRel.Post;

              i := i + 1;
              frmRecebimento.qryParcelas.Next;
            End;

            frmRCarne.GeraCarne(StrToInt(EdtCodP.Text));
            FreeAndNil(frmRCarne);
          End;
        End;
        if frmRecebimento.iCondição > 0 then
        Begin
          if Caixa.IDCaixa > 0 then
          Begin
            With qryAux do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM LCTOSCAIXA');
              SQL.Add('WHERE ID_LCTOSCAIXA = 0');
              Open;

              Append;
              FieldByname('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
              FieldByname('ID_OPERADOR').AsInteger := Operador.ID;
              FieldByname('TIPODESPESA').AsInteger := frmRecebimento.iCondição;
              FieldByname('ENTRADA_SAIDA').AsInteger := 0;
              FieldByname('HISTORICO').AsString := EdtCodP.Text +' - ' + EdtNome.Text + ' - Referente ao tratamento: ' +
                IntToStr(iPlanoTratamento);
              // FieldByName('DOCUMENTO').AsString := frmRecebimento.qryParcelasDocumento.AsString;
              FieldByname('VLRENTRADA').AsFloat := frmRecebimento.rValor;
              FieldByname('DATA').AsDateTime := Now;
              Post;
            End;
          End;
          if Caixa.IDCaixa = -1 then
          Begin
            With qryAux do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM SALDOCAIXA');
              SQL.Add('WHERE ID_SALDOCAIXA = 0');
              Open;

              Append;
              FieldByname('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
              FieldByname('ID_OPERADORES').AsInteger := Operador.ID;
              FieldByname('TIPODESPESA').AsInteger := frmRecebimento.iCondição;
              FieldByname('ENTRADA_SAIDA').AsInteger := 0;
              FieldByname('HISTORICO').AsString := EdtCodP.Text +' - ' + EdtNome.Text + ' - Referente ao tratamento: ' +
                IntToStr(iPlanoTratamento);
              // FieldByName('DOCUMENTO').AsString := frmRecebimento.qryParcelasDocumento.AsString;
              FieldByname('VLRENTRADA').AsFloat := frmRecebimento.rValor;
              FieldByname('DATA').AsDateTime := Now;
              Post;
            End;
          End;

          if (frmRecebimento.iCondição = 2) or (frmRecebimento.iCondição = 3)
          then
          Begin
            With qryAux do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM CHEQUESRECEBIDO');
              SQL.Add('WHERE ID_CHEQUESRECEBIDO = 0');
              Open;

              Append;
              FieldByname('ID_FILIAL').AsInteger := Empresa.ID;
              FieldByname('ID_CAIXA').AsInteger := Caixa.IDCaixa;
              FieldByname('ID_PACIENTE').AsString := EdtCodP.Text;
              FieldByname('HISTORICO').AsString := EdtCodP.Text +' - ' + EdtNome.Text + ' - Referente ao tratamento: ' +
                IntToStr(iPlanoTratamento);
              FieldByname('VALOR').AsFloat := frmRecebimento.rValor;
              FieldByname('DTACONTA').AsDateTime := Now;

              if frmRecebimento.iCondição = 2 then
              Begin
                FieldByname('ID_BANCOSPADRAO').AsString :=
                  frmRecebimento.EdtCodBCA.Text;
                FieldByname('DTABOM').AsDateTime :=
                  frmRecebimento.EdtDataBonificacaoCA.Date;
                FieldByname('SITUACAO').AsInteger := 0;
                FieldByname('NROAGENCIA').AsString :=
                  frmRecebimento.EdtAgenciaCA.Text;
                FieldByname('NROCONTA').AsString :=
                  frmRecebimento.EdtNroContaCA.Text;
                FieldByname('NUMERO').AsString :=
                  frmRecebimento.EdtNumeroCA.Text;
                FieldByname('CORRENTISTA').AsString :=
                  frmRecebimento.EdtNomeCA.Text;
                FieldByname('CNPJCPF').AsString := frmRecebimento.EdtCPFCA.Text;
                FieldByname('TELEFONE').AsString :=
                  frmRecebimento.EdtTelCA.Text;
              End;

              if frmRecebimento.iCondição = 3 then
              Begin
                FieldByname('ID_BANCOSPADRAO').AsString :=
                  frmRecebimento.EdtCodBCP.Text;
                FieldByname('DTABOM').AsDateTime :=
                  frmRecebimento.EdtDataCP.Date;
                FieldByname('SITUACAO').AsInteger := 0;
                FieldByname('NROAGENCIA').AsString :=
                  frmRecebimento.EdtAgenciaCP.Text;
                FieldByname('NROCONTA').AsString :=
                  frmRecebimento.EdtNroContaCP.Text;
                FieldByname('NUMERO').AsString :=
                  frmRecebimento.EdtNumeroCP.Text;
                FieldByname('CORRENTISTA').AsString :=
                  frmRecebimento.EdtNomeCP.Text;
                FieldByname('CNPJCPF').AsString := frmRecebimento.EdtCPFCP.Text;
                FieldByname('TELEFONE').AsString :=
                  frmRecebimento.EdtTelCP.Text;
              End;

              Post;

              iIDChequeAux := FieldByName('ID_CHEQUESRECEBIDO').AsInteger;

              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM HISTORICOCHEQUE');
              SQL.Add('WHERE ID_HISTORICOCHEQUE = 0');
              Open;

              Append;
              FieldByName('HISTORICO').AsString             := 'Entrada do Cheque no sistema.';
              FieldByName('ID_OPERADOR').ASInteger          := Operador.ID;
              FieldByName('ID_CHEQUESRECEBIDO').AsInteger   := iIDChequeAux;
              FieldByName('ID_FILIAL').AsInteger            := Empresa.ID;
              FieldByName('DATA').AsDateTime                := Now;
              Post;
            End;
          End;
        End;
          qryOrcamento.First;
          while not qryOrcamento.Eof do
            Begin
              With qryAux do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM ITENSPROPOSTATRATAMENTO');
                SQL.Add('WHERE ID_ITENSPROPOSTATRATAMENTO = :pID');
                SQL.Add('AND SELECIONADO = 1');
                Parameters.ParamByName('pID').Value :=
                  qryOrcamentoIDProcedimento.AsInteger;
                Open;

                if (FieldByName('SELECIONADO').AsBoolean = True) and (FieldByName('FATURADO').AsBoolean = False) and (frmRecebimento.iCondição = 0) then
                  Begin
                    Edit;
                    FieldByname('FATURADO').AsBoolean := True;
                    FieldByname('SELECIONADO').AsBoolean := True;
                    FieldByName('VALORPAGO').AsFloat := qryOrcamentoValorRestante.AsFloat;
                    Post;
                  End;
              End;

              qryOrcamento.Next;
            End;
      End;
    End;
  End;

  if bProcedimentoConvenio then
  Begin
    Application.CreateForm(TfrmData, frmData);
    frmData.Panel1.Caption := 'Data de Recebimento do Convênio';
    frmData.ShowModal;

    if frmMain.bOK then
    Begin
      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CONTARECEBERCONVENIO');
        SQL.Add('WHERE ID_CONTARECEBERCONVENIO = 0');
        Open;

        iIDConvenio := RetornaIDConvenioDoPaciente(StrToInt(EdtCodP.Text));

        Append;
        FieldByname('ID_FILIAL').AsInteger := Empresa.ID;
        FieldByname('ID_CONVENIO').AsInteger := iIDConvenio;
        FieldByname('SITUACAO').AsInteger := 0;
        FieldByname('HISTORICO').AsString := EdtCodP.Text +' - ' + EdtNome.Text + ' - Referente ao tratamento: ' +
          IntToStr(iPlanoTratamento) + ' do paciente: ' + EdtNome.Text;
        FieldByname('DTACONTA').AsDateTime := Now;
        FieldByname('DTAVENCIMENTO').AsDateTime := frmData.EdtData.Date;
        FieldByname('VALOR').AsFloat := rValorConvenio;
        FieldByname('VALORRESTANTE').AsFloat := rValorConvenio;
        Post;

        qryOrcamento.First;
        while Not qryOrcamento.eof do
        Begin
          if qryOrcamentoTipo.AsString = 'C' then
          Begin
            With qryAux2 do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM ITENSPROPOSTATRATAMENTO');
              SQL.Add('WHERE ID_ITENSPROPOSTATRATAMENTO = :pID');
              SQL.Add('AND SELECIONADO = 1');
              Parameters.ParamByName('pID').Value :=
                qryOrcamentoIDProcedimento.AsInteger;
              Open;

              if Not eof then
              Begin
                Edit;
                FieldByname('FATURADO').AsBoolean := True;
                FieldByname('SELECIONADO').AsBoolean := True;
                FieldByName('VALORPAGO').AsFloat := qryOrcamentoValorRestante.AsFloat;
                Post;
              End;
            End;
          End;
          qryOrcamento.Next;
        End;
      End;
    End;

    FreeAndNil(frmData);
  End;

  FreeAndNil(frmRecebimento);
  CarregaPropostaTratamento;
  CalculaTotalOrcamento;

end;

procedure TfrmHistoricos.SpeedButton11Click(Sender: TObject);
var
  iPlano: Integer;
  sCondicao: String;
begin
  inherited;
  btnSalvar2Click(Self);
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    SQL.Add('AND DESCRICAO = :pDesc');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Parameters.ParamByName('pDesc').Value := cbProposta.Text;
    Open;

    iPlano := FieldByname('ID_PROPOSTATRATAMENTO').AsInteger;

  End;

  if rgPagamento.ItemIndex = 0 then
  Begin
    sCondicao := 'À Vista.';
  End
  Else
  Begin
    sCondicao := 'Parcelado em ' + EdtQtdeParcelas.Text + ' vezes.';
  End;

  Application.CreateForm(TfrmROrcamento, frmROrcamento);
  frmROrcamento.Relatorio.ReportTitle := 'Orçamento - Previsão de Honorários - '
    + cbProposta.Text;
  frmROrcamento.iPaciente := StrToInt(EdtCodP.Text);
  frmROrcamento.sCondicao := sCondicao;
  frmROrcamento.iMedico := iMedico;
  frmROrcamento.iPlanoTratamento := iPlano;
  frmROrcamento.MontaSQL;
  frmROrcamento.mmoMsgRodape.Lines.Text := mmoTextoOrcamento.Lines.Text;

  if frmROrcamento.qryOrcamento.RecordCount = 0 then
  Begin
    Application.MessageBox('Orçamento está vazio e não será gerado.',
      'Atenção!', mb_ok + MB_ICONWARNING);
    Exit;
  End;
  frmROrcamento.Relatorio.Preview;

  FreeAndNil(frmROrcamento);

end;

procedure TfrmHistoricos.SpeedButton12Click(Sender: TObject);
begin
  if not Operador.FotoPacienteE then
  Begin
    Application.MessageBox
      ('Operador não tem permissão para Editar fotos do paciênte!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  If Application.MessageBox('Confirma Exclusão ?', 'Atenção!!!',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  Begin
    With qryAux do
    Begin
      GravaHistorico('Foto Deletada: ' + qryFotosPacienteDESCRICAO.AsString);
      Connection := ImagemPaciente;
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FOTOSPACIENTE');
      SQL.Add('WHERE ID_FOTOSPACIENTE = :pID');
      Parameters.ParamByName('pID').Value :=
        qryFotosPacienteID_FOTOSPACIENTE.AsInteger;
      ExecSQL;
      Connection := DM.Conexao;
    End;

    With qryFotosPaciente do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('select * from FOTOSPACIENTE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := EdtCodP.Text;
      Open;
    End;

  End;
end;

procedure TfrmHistoricos.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmReceituario, frmReceituario);
  frmReceituario.EdtCodP.Text := EdtCodP.Text;
  frmReceituario.EdtCodM.Text := IntToStr(iMedico);
  frmReceituario.EdtCodPExit(Self);
  frmReceituario.EdtCodMExit(Self);
  frmReceituario.EdtCodM.ReadOnly := True;
  frmReceituario.EdtCodP.ReadOnly := True;
  frmReceituario.ShowModal;

  FreeAndNil(frmReceituario);
  CarregaReceituario;

end;

procedure TfrmHistoricos.SpeedButton14Click(Sender: TObject);
begin
  inherited;

  if qryTermosConsentimentoID_TERMOCONSENTIMENTO.AsString <> '' then
  Begin
    Application.CreateForm(TfrmRelTermoConsentimento, frmRelTermoConsentimento);
    frmRelTermoConsentimento.CarregaTermos
      (qryTermosConsentimentoID_TERMOCONSENTIMENTO.AsInteger);
    FreeAndNil(frmRelTermoConsentimento);
  End;
end;

procedure TfrmHistoricos.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  if qryReceituarioID_RECEITUARIO.AsString = '' then
  Begin
    Exit;
  End;

  Application.CreateForm(TfrmRreceituario, frmRreceituario);
  frmRreceituario.iMedico := qryReceituarioID_MEDICO.AsInteger;
  frmRreceituario.iPaciente := qryReceituarioID_PACIENTE.AsInteger;
  frmRreceituario.CarregaDadosPaciente;
  frmRreceituario.CarregaReceituario(qryReceituarioID_RECEITUARIO.AsInteger);

  if CFGGeral.ImpCabReceituario then
  Begin
    frmRreceituario.mmoDescricao.Lines.Clear;
    frmRreceituario.mmoDescricao.Lines.Text := qryReceituarioDESCRICAO.AsString;
    frmRreceituario.RelatorioCab.ReportTitle := 'Receituário';
    frmRreceituario.RelatorioCab.Preview;
  End
  Else
  Begin
    frmRreceituario.mmoDescricaoSemCab.Lines.Clear;
    frmRreceituario.mmoDescricaoSemCab.Lines.Text :=
      qryReceituarioDESCRICAO.AsString;
    frmRreceituario.RelatorioSemCab.Preview;
  End;
  FreeAndNil(frmRreceituario);
end;

procedure TfrmHistoricos.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmTermoConsentimento, frmTermoConsentimento);
  frmTermoConsentimento.EdtCodP.Text := EdtCodP.Text;
  frmTermoConsentimento.EdtCodM.Text := IntToStr(iMedico);
  frmTermoConsentimento.EdtCodPExit(Self);
  frmTermoConsentimento.EdtCodMExit(Self);
  frmTermoConsentimento.EdtCodM.ReadOnly := True;
  frmTermoConsentimento.EdtCodP.ReadOnly := True;
  frmTermoConsentimento.ShowModal;
  FreeAndNil(frmTermoConsentimento);
  CarregaTermos;
end;

procedure TfrmHistoricos.SpeedButton17Click(Sender: TObject);
begin
  inherited;
  With qryAtendimentos do
  Begin
    First;

    while Not eof do
    Begin
      if qryAtendimentosSTATUS.AsInteger = 0 then
      Begin
        Application.MessageBox
          ('Só é possível abrir um atendimento novo após fechar o antigo!',
          'Atenção!', mb_ok + MB_ICONWARNING);
        Exit;
      End;
      Next;
    End;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ATENDIMENTO');
    SQL.Add('WHERE ID_ATENDIMENTO = 0');
    Open;

    Append;
    FieldByname('ID_AGENDA').AsInteger := iIDAgenda;
    FieldByname('ID_OPERADOR').AsInteger := Operador.ID;
    FieldByname('STATUS').AsInteger := 0;
    FieldByname('DATA').AsDateTime := Now;
    FieldByname('ID_PLANOTRATAMENTO').AsInteger := iPlanoTratamento;
    FieldByname('STATUSTEXTO').AsString := 'A Realizar';
    Post;
  End;

  GravaHistorico('Novo Atendimento');
  CarregaAtendimentos;
end;

procedure TfrmHistoricos.SpeedButton18Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmAtestado, frmAtestado);
  frmAtestado.EdtCodP.Text := EdtCodP.Text;
  frmAtestado.EdtCodM.Text := IntToStr(iMedico);
  frmAtestado.EdtCodPExit(Self);
  frmAtestado.EdtCodMExit(Self);
  frmAtestado.EdtCodM.ReadOnly := True;
  frmAtestado.EdtCodP.ReadOnly := True;
  frmAtestado.ShowModal;

  FreeAndNil(frmAtestado);
  CarregaAtestados;
end;

procedure TfrmHistoricos.SpeedButton19Click(Sender: TObject);
begin
  inherited;
  if qryAtestadosID_ATESTADOS.AsString = '' then Exit;
  Application.CreateForm(TfrmRelAtestados, frmRelAtestados);
  frmRelAtestados.CarregaRelatorio(qryAtestadosID_ATESTADOS.AsInteger);
  FreeAndNil(frmRelAtestados);
end;

procedure TfrmHistoricos.SpeedButton1Click(Sender: TObject);
var
  IDExameOral: Integer;
begin
  inherited;

  if EdtCodP.Text = '' then
  Begin
    Exit;
  End;

  if not bExameOralNovo then
  Begin
    EditarExameOral;
    Application.MessageBox('Exame oral salvo com sucesso', 'Sucesso!!!',
      mb_ok + MB_ICONINFORMATION);
    Exit;
  End;

  if EdtCodMO.Text = '' then
  Begin
    Application.MessageBox
      ('Antes de salvar é necessário informar o Dentista responsável pelo Exame Oral',
      'Erro!!!', mb_ok + MB_ICONERROR);
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PACIENTEEXAMEORAL');
    SQL.Add('WHERE ID_PACIENTEEXAMEORAL = 0');
    Open;

    Append;
    FieldByname('ID_PACIENTE').AsString := EdtCodP.Text;
    FieldByname('ID_MEDICO').AsString := EdtCodMO.Text;

    FieldByname('DATA').AsDateTime := Now;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 ID_PACIENTEEXAMEORAL FROM PACIENTEEXAMEORAL');
    SQL.Add('ORDER BY ID_PACIENTEEXAMEORAL DESC');
    Open;

    IDExameOral := FieldByname('ID_PACIENTEEXAMEORAL').AsInteger;

    qryPerguntasExameOral.First;

    while not qryPerguntasExameOral.eof do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASPACIENTEEXAMEORAL');
      SQL.Add('WHERE ID_PACIENTEEXAMEORAL = 0');
      Open;
      Append;

      FieldByname('ID_PACIENTEEXAMEORAL').AsInteger := IDExameOral;
      FieldByname('PERGUNTA').AsString :=
        qryPerguntasExameOralPergunta.AsString;
      FieldByname('RESPOSTA').AsString :=
        qryPerguntasExameOralResposta.AsString;
      Post;

      qryPerguntasExameOral.Next;
    End;

    CarregaExameOral;
    bExameOralNovo := False;
    GrdPerguntasExameOral.ReadOnly := True;
    EdtCodMO.ReadOnly := True;
  End;

  GravaHistorico('Paciente Realizou um Exame Oral novo.');

  Application.MessageBox('Exame Oral salvo com sucesso', 'Sucesso!!!',
    mb_ok + MB_ICONINFORMATION);

end;

procedure TfrmHistoricos.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  EdtNome.SetFocus;

  If Application.MessageBox
    ('Deseja Realizar uma anamnese nova para o paciente?', 'Atenção!!!',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  Begin
  End
  Else
  Begin
    Exit;
  End;

  AbreForm(TfrmLAnmenese, frmLAnmenese);

  if frmMain.sCod <> '' then
  Begin

    qryPerguntasAnamnese.Close;
    qryPerguntasAnamnese.Open;

    With qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASANAMNESE');
      SQL.Add('WHERE ID_ANAMNESE =' + frmMain.sCod + '');
      Open;

      while Not eof do
      Begin
        qryPerguntasAnamnese.Append;
        qryPerguntasAnamnese.FieldByname('AFIRMO').AsBoolean := False;
        qryPerguntasAnamnese.FieldByname('NEGO').AsBoolean := False;
        qryPerguntasAnamnese.FieldByname('NAOSEI').AsBoolean := False;
        qryPerguntasAnamnese.FieldByname('OBRIGATORIO').AsBoolean :=
          FieldByname('OBRIGATORIO').AsBoolean;
        qryPerguntasAnamnese.FieldByname('PERGUNTA').AsString :=
          FieldByname('PERGUNTA').AsString;
        qryPerguntasAnamnese.Post;

        Next;
      End;

      bAnamneseNova := True;
      GrdPerguntasAnamnese.ReadOnly := False;
      EdtCodM.ReadOnly := False;
      qryPerguntasAnamnese.First;

    End;
  End;

  btnSalvarAnamneseClick(Self);
end;

procedure TfrmHistoricos.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  EdtNome.SetFocus;

  If Application.MessageBox('Deseja Realizar um novo exame oral?', 'Atenção!!!',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  Begin
  End
  Else
  Begin
    Exit;
  End;

  AbreForm(TfrmCadastroExameOral, frmCadastroExameOral);

  if frmMain.sCod <> '' then
  Begin

    qryPerguntasExameOral.Close;
    qryPerguntasExameOral.Open;

    With qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASEXAMEORAL');
      SQL.Add('WHERE ID_EXAMEORAL =' + frmMain.sCod + '');
      Open;

      while Not eof do
      Begin
        qryPerguntasExameOral.Append;
        qryPerguntasExameOral.FieldByname('OBRIGATORIO').AsBoolean :=
          FieldByname('OBRIGATORIO').AsBoolean;
        qryPerguntasExameOral.FieldByname('PERGUNTA').AsString :=
          FieldByname('PERGUNTA').AsString;
        qryPerguntasExameOral.Post;

        Next;
      End;

      bExameOralNovo := True;
      GrdPerguntasExameOral.ReadOnly := False;
      EdtCodMO.ReadOnly := False;
      qryPerguntasExameOral.First;

    End;
  End;
end;

procedure TfrmHistoricos.SpeedButton5Click(Sender: TObject);
var
  rTotalGeral, rValorTabela, rValorAcrescimo, rValorDesconto: Double;
begin
  rValorTabela := 0;
  rValorAcrescimo := 0;
  rValorDesconto := 0;

  With qryOrcamento do
  Begin
    First;

    while Not eof do
    Begin
      if FieldByname('FATURADO').AsBoolean = False then
      Begin
        rValorTabela := FieldByname('ValorTabela').AsFloat;

        if cbTipoAcrescimo.ItemIndex = 0 then
        Begin
          rValorAcrescimo := (rValorTabela * EdtVlrAcrescimo.Value) / 100;
        End
        Else
        Begin
          rValorAcrescimo := EdtVlrAcrescimo.Value;
        End;
        Edit;
        FieldByname('ValorAcrescimo').AsFloat := rValorAcrescimo;
        Post;
      End;

      Next;
    End;
  End;

  qryOrcamento.First;
  CalculaTotalOrcamento;

end;

procedure TfrmHistoricos.SpeedButton7Click(Sender: TObject);
var
  iIDPropostaTratamento, iIDPropostaAux, i: Integer;
begin
  inherited;
  i := 1;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;

    iIDPropostaTratamento := FieldByname('ID_PROPOSTATRATAMENTO').AsInteger;
    i := RecordCount + 1;

    Append;
    FieldByname('ID_PLANOTRATAMENTO').AsInteger := iPlanoTratamento;
    FieldByname('DESCRICAO').AsString := 'PROPOSTA ' + IntToStr(i);
    FieldByname('AVISTA_PARCELADO').AsInteger := 0;
    FieldByname('NROPARCELAS').AsInteger := 1;
    FieldByname('PARCELAS').AsInteger := 0;
    FieldByname('ACRESCIMO').AsFloat := 0;
    FieldByname('DESCONTO').AsFloat := 0;
    FieldByname('CORRECAOMENSAL').AsFloat := 0;
    FieldByname('APROVADA').AsBoolean := False;
    Post;

    GravaHistorico('Nova Proposta para o plano de tratamento: ' +
      IntToStr(iPlanoTratamento));
  End;

  MontaTabelasTratamento;
end;

procedure TfrmHistoricos.SpeedButton8Click(Sender: TObject);
var
  dData: TDateTime;
  sCaminhoFotoEdt: String;
begin

  if not Operador.FotoPacienteC then
  Begin
    Application.MessageBox
      ('Operador não tem permissão para cadastrar fotos do paciênte!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  dData := Now;

  if AbreFoto.Execute then
  Begin
    sCaminhoFotoEdt := AbreFoto.FileName;
    imgFotos.Picture.LoadFromFile(sCaminhoFotoEdt);
    Application.CreateForm(TfrmDescricao, frmDescricao);
    frmDescricao.Panel1.Caption := 'Digite a Descrição da Foto.';
    frmDescricao.ShowModal;
    if frmMain.sDescricao = '' then
    Begin
      Exit;
    End;

    GravaHistorico('Nova Foto: ' + frmMain.sDescricao);
    FreeAndNil(frmDescricao);

    qryFotosPaciente.Append;
    qryFotosPacienteFOTOS.LoadFromFile(AbreFoto.FileName);;
    qryFotosPacienteID_PACIENTE.AsString := EdtCodP.Text;
    qryFotosPacienteDESCRICAO.AsString := frmMain.sDescricao;
    qryFotosPacienteDATA.AsDateTime := dData;
    qryFotosPaciente.Post;
  End
  Else
  Begin
    Exit;
  End;

  With qryFotosPaciente do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select * from FOTOSPACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    SQL.Add('Order By Data');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;
  End;
end;

procedure TfrmHistoricos.btnSalvar2Click(Sender: TObject);
var
  IDProposta: Integer;
begin
  inherited;
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PLANOTRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;

    Edit;

    if cbStatusTratamento.ItemIndex = 2 then
    Begin
      FieldByname('DtaTermino').AsDateTime := Now;
    End;

    FieldByname('STATUS').AsString := cbStatusTratamento.Text;
    FieldByname('CODSTATUS').AsInteger := cbStatusTratamento.ItemIndex;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE DESCRICAO = :pDesc');
    SQL.Add('AND ID_PLANOTRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Parameters.ParamByName('pDesc').Value := cbProposta.Text;
    Open;

    IDProposta := FieldByname('ID_PROPOSTATRATAMENTO').AsInteger;

    Edit;
    FieldByname('AVISTA_PARCELADO').AsInteger := rgPagamento.ItemIndex;
    FieldByname('NROPARCELAS').AsFloat := EdtQtdeParcelas.Value;
    FieldByname('PARCELAS').AsInteger := rgParcelas.ItemIndex;
    FieldByname('CORRECAOMENSAL').AsFloat := EdtCorrecaoMensal.Value;
    FieldByname('DESCONTO').AsFloat := EdtVlrDesconto.Value;
    FieldByname('ACRESCIMO').AsFloat := EdtVlrAcrescimo.Value;
    FieldByname('APROVADA').AsBoolean := cbAprovado.Checked;

    if cbAprovado.Checked then
    Begin
      FieldByname('DTAAPROVACAO').AsDateTime := EdtdtAprovacao.Date;
    End;

    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ITENSPROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PROPOSTATRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := IDProposta;
    Open;

    First;
    qryOrcamento.First;

    while Not eof do
    Begin
      Edit;
      FieldByname('ValorAcrescimo').AsFloat :=
        qryOrcamentoValorAcrescimo.AsFloat;
      FieldByname('ValorDesconto').AsFloat := qryOrcamentoValorDesconto.AsFloat;
      FieldByname('Faturado').AsBoolean := qryOrcamentoFaturado.AsBoolean;
      FieldByname('SELECIONADO').AsBoolean := qryOrcamentoSelecionado.AsBoolean;
      Post;

      qryOrcamento.Next;
      Next;
    End;
  End;

  cbPropostaClick(Self);
end;

procedure TfrmHistoricos.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmRetorno, frmRetorno);
  frmRetorno.iRetorno := 0;
  frmRetorno.EdtCodP.Text := EdtCodP.Text;
  frmRetorno.EdtCodPExit(Self);
  frmRetorno.EdtCodM.Text := IntToStr(iMedico);
  frmRetorno.EdtCodMExit(Self);
  frmRetorno.ShowModal;
  FreeAndNil(frmRetorno);
end;

end.
