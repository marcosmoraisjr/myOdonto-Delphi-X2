unit R_CaixaGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, QRPDFFilt, Funcoes, QRCtrls,
  QuickRpt, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmRelCaixaGeral = class(TfrmPadrao)
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
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand5: TQRBand;
    QRBand8: TQRBand;
    QRSysData4: TQRSysData;
    lblEmpCab: TQRLabel;
    lblCaixaCab: TQRLabel;
    QRLabel4: TQRLabel;
    SalvarPDF: TQRPDFFilter;
    qryAux: TADOQuery;
    qryRel: TADOQuery;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    lblTEntradas: TQRLabel;
    lblTSaidas: TQRLabel;
    QRLabel8: TQRLabel;
    lblSaldoAnterior: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    lblSaldoPeriodo: TQRLabel;
    lblSaldoTotal: TQRLabel;
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
    qryAux2: TADOQuery;
    qryAux2ID_OPINT: TAutoIncField;
    qryAux2CODCLIENTE: TStringField;
    qryAux2CONTRACHAVE: TStringField;
    qryAux2DEMO: TBooleanField;
    qryAux2ADICIONAL: TBooleanField;
    qryAux2VERSAODB: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    rEntrada ,
    rSaida,
    rSaldoPeriodo,
    rTotal,
    rSaldoAnterior : Double;
  public
    { Public declarations }
    Procedure CarregaFiltros(dDataIni, dDataFim : TDateTime);
  end;

var
  frmRelCaixaGeral: TfrmRelCaixaGeral;

implementation

{$R *.dfm}

procedure TfrmRelCaixaGeral.CarregaFiltros(dDataIni, dDataFim: TDateTime);
var
sData : String;
begin
  sData := DateToStr(dDataIni);
  sData := sData + '00:00:00';
  dDataIni := StrToDateTime(sData);
  sData := DateToStr(dDataFim);
  sData := sData + '23:59:59';
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

procedure TfrmRelCaixaGeral.FormCreate(Sender: TObject);
begin
  inherited;
  lblEmpCab.Caption := Empresa.Nome + ' ( '+ Empresa.RazaoSocial +' )';

end;

procedure TfrmRelCaixaGeral.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rEntrada := rEntrada + qryRelVLRENTRADA.AsFloat;
  rSaida := rSaida + qryRelVLRSAIDA.AsFloat;
end;

procedure TfrmRelCaixaGeral.QRBand5BeforePrint(Sender: TQRCustomBand;
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
