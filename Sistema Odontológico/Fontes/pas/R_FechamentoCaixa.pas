unit R_FechamentoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, QRPDFFilt, QRCtrls, QuickRpt, Data.DB,
  Data.Win.ADODB, Funcoes, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmRelFechamentoCaixa = class(TfrmPadrao)
    relPrevia: TQuickRep;
    QRBand6: TQRBand;
    QRLabel11: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel12: TQRLabel;
    QRBand7: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    SalvarPDF: TQRPDFFilter;
    QRGroup1: TQRGroup;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    lblTDiferença: TQRLabel;
    lblTInformado: TQRLabel;
    lblTSaques: TQRLabel;
    lblTReforço: TQRLabel;
    lblTSaidas: TQRLabel;
    lblTEntradas: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    LblTotalEntrada: TQRLabel;
    lblTotalSaida: TQRLabel;
    lblTotalCaixa: TQRLabel;
    lblTotalInformado: TQRLabel;
    lblTotalDiferença: TQRLabel;
    Cabecalho: TQuickRep;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBand8: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel17: TQRLabel;
    lblEmpCab: TQRLabel;
    lblCaixaCab: TQRLabel;
    QRLabel4: TQRLabel;
    qryAux: TADOQuery;
    qryRel: TADOQuery;
    qryRelFormaPagamento: TStringField;
    qryRelEntrada: TFloatField;
    qryRelSaida: TFloatField;
    qryRelReforco: TFloatField;
    qryRelSaques: TFloatField;
    qryRelInformado: TFloatField;
    qryRelDiferenca: TFloatField;
    qryRelIDCaixa: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    rEntrada,
    rSaida,
    rReforco,
    rSaques,
    rInformado,
    rDiferenca : Currency;
  public

  end;

var
  frmRelFechamentoCaixa: TfrmRelFechamentoCaixa;

implementation

{$R *.dfm}

{ TfrmRelFechamentoCaixa }

procedure TfrmRelFechamentoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
    rEntrada := 0;
    rSaida := 0;
    rReforco := 0;
    rSaques := 0;
    rInformado := 0;
    rDiferenca := 0;
end;

procedure TfrmRelFechamentoCaixa.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rEntrada := rEntrada + qryRelEntrada.AsFloat;
  rSaida := rSaida + qryRelSaida.AsFloat;
  rReforco := rReforco + qryRelReforco.AsFloat;
  rSaques := rSaques + qryRelSaques.AsFloat;
  rInformado := rInformado + qryRelInformado.AsFloat;
  rDiferenca := rDiferenca + qryRelDiferenca.AsFloat;
end;

procedure TfrmRelFechamentoCaixa.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  TotalEntrada ,
  TotalSaida,
  TotalCaixa,
  TotalInformado,
  TotalDiferenca : Currency;
begin
  inherited;
  lblTEntradas.Caption := FormatFloat('#,##0.00', rEntrada);
  lblTSaidas.Caption := FormatFloat('#,##0.00', rSaida);
  lblTDiferença.Caption := FormatFloat('#,##0.00', rDiferenca);
  lblTInformado.Caption := FormatFloat('#,##0.00', rInformado);
  lblTReforço.Caption := FormatFloat('#,##0.00', rReforco);
  lblTSaques.Caption := FormatFloat('#,##0.00', rSaques);

  TotalEntrada := rEntrada + rReforco;
  LblTotalEntrada.Caption := FormatFloat('#,##0.00', TotalEntrada);

  TotalSaida := rSaida + rSaques;
  lblTotalSaida.Caption := FormatFloat('#,##0.00', TotalSaida);

  TotalCaixa := TotalEntrada - TotalSaida;
  lblTotalCaixa.Caption := FormatFloat('#,##0.00', TotalCaixa);

  TotalInformado := rInformado;
  lblTotalInformado.Caption := FormatFloat('#,##0.00', TotalInformado);

  TotalDiferenca := TotalInformado - TotalCaixa;
  lblTotalDiferença.Caption := FormatFloat('#,##0.00', TotalDiferenca);
end;

end.
