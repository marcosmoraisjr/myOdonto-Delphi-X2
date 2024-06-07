unit F_RelCaixaGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  QRCtrls, QuickRpt, QRPDFFilt, Data.DB, Data.Win.ADODB, Vcl.Buttons, Funcoes;

type
  TfrmGerarRelCaixaGeral = class(TfrmPadrao)
    EdtDtIni: TJvDateEdit;
    EdtDtFim: TJvDateEdit;
    relPrevia: TQuickRep;
    QRBand6: TQRBand;
    QRLabel11: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel12: TQRLabel;
    QRBand7: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRGroup1: TQRGroup;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    lblTEntradas: TQRLabel;
    lblTSaidas: TQRLabel;
    QRLabel8: TQRLabel;
    lblSaldoAnterior: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    lblSaldoPeriodo: TQRLabel;
    lblSaldoTotal: TQRLabel;
    QRBand8: TQRBand;
    QRSysData4: TQRSysData;
    lblEmpCab: TQRLabel;
    lblCaixaCab: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel15: TQRLabel;
    qryRel: TADOQuery;
    qryRelID_SALDOCAIXA: TAutoIncField;
    qryRelTIPODESPESA: TIntegerField;
    qryRelENTRADA_SAIDA: TIntegerField;
    qryRelID_OPERADORES: TIntegerField;
    qryRelID_CAIXAS: TIntegerField;
    qryRelHISTORICO: TStringField;
    qryRelDOCUMENTO: TStringField;
    qryRelDATA: TDateTimeField;
    qryRelVLRENTRADA: TFloatField;
    qryRelVLRSAIDA: TFloatField;
    qryAux: TADOQuery;
    qryAux2: TADOQuery;
    qryAux2ID_OPINT: TAutoIncField;
    qryAux2CODCLIENTE: TStringField;
    qryAux2CONTRACHAVE: TStringField;
    qryAux2DEMO: TBooleanField;
    qryAux2ADICIONAL: TBooleanField;
    qryAux2VERSAODB: TIntegerField;
    SalvarPDF: TQRPDFFilter;
    Label1: TLabel;
    Label2: TLabel;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    rEntrada ,
    rSaida,
    rSaldoPeriodo,
    rTotal,
    rSaldoAnterior : Double;
    Procedure CarregaFiltros;
  public
    { Public declarations }
  end;

var
  frmGerarRelCaixaGeral: TfrmGerarRelCaixaGeral;

implementation

{$R *.dfm}

uses R_CaixaGeral;

procedure TfrmGerarRelCaixaGeral.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmGerarRelCaixaGeral.Button1Click(Sender: TObject);
begin
  inherited;
    rEntrada       := 0;
    rSaida         := 0;
    rSaldoPeriodo  := 0;
    rTotal         := 0;
    rSaldoAnterior := 0;

    qryAux2.Close;
    qryAux2.Open;
    CarregaFiltros;
    lblCaixaCab.Caption := Empresa.Nome + ' ( '+ Empresa.RazaoSocial + ' ) ';
    lblCaixaCab.Caption := 'Per�odo de: ' +EdtDtIni.Text + ' At�: ' + EdtDtFim.Text;
    relPrevia.Preview;
end;

procedure TfrmGerarRelCaixaGeral.CarregaFiltros;
var
sData : String;
dDataIni ,
dDataFim : TDateTime;
begin
  sData := EdtDtIni.Text + '00:00:00';
  dDataIni := StrToDateTime(sData);
  sData := EdtDtFim.Text + '23:59:59';
  dDataFim := StrToDateTime(sData);

  With qryRel do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SALDOCAIXA');
      SQL.Add('WHERE DATA BETWEEN :pDataIni And :pDataFim');
      Parameters.ParamByName('pDataIni').Value := dDataIni;
      Parameters.ParamByName('pDataFim').Value := dDataFim;
      Open;

      if RecordCount = 0 then
        Begin
          application.MessageBox('O Relat�rio est� vazio e n�o sera gerado.','Informa��o',mb_ok+MB_ICONINFORMATION);
          Exit;
        End;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VLRENTRADA - VLRSAIDA) AS SALDO FROM SALDOCAIXA');
      SQL.Add('WHERE DATA < :pData');
      Parameters.ParamByName('pData').Value := dDataIni;
      Open;

      rSaldoAnterior := FieldByName('SALDO').AsFloat;
    End;
end;

procedure TfrmGerarRelCaixaGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    FreeAndNil(frmRelCaixaGeral);
end;

procedure TfrmGerarRelCaixaGeral.FormCreate(Sender: TObject);
var
sDataIni : String;
dDataIni,
dDataFim : TDateTime;
begin
  inherited;

  sDataIni := FormatDateTime('MM/YYYY', Now);
  sDataIni := '01/' + sDataIni;
  dDataIni := StrToDate(sDataIni);
  dDataFim := IncMonth(dDataIni, 1);
  dDataFim := dDataFim - 1;

  EdtDtIni.Date := dDataIni;
  EdtDtFim.Date := dDataFim;
end;

procedure TfrmGerarRelCaixaGeral.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rEntrada := rEntrada + qryRelVLRENTRADA.AsFloat;
  rSaida := rSaida + qryRelVLRSAIDA.AsFloat;
end;

procedure TfrmGerarRelCaixaGeral.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  lblTEntradas.Caption := FormatFloat('#,##0.00', rEntrada);
  lblTSaidas.Caption := FormatFloat('#,##0.00', rSaida);

  lblSaldoAnterior.Caption := FormatFLoat('#,##0.00', rSaldoAnterior);
  rSaldoPeriodo := rEntrada - rSaida;
  rTotal := rSaldoAnterior + rSaldoPeriodo;
  lblSaldoPeriodo.Caption := FormatFLoat('#,##0.00', rSaldoPeriodo);
  lblSaldoTotal.Caption := FormatFloat('#,##0.00', rTotal);
end;

end.
