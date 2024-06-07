unit R_RelacaoFinanceira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, QuickRpt, QRPDFFilt, Data.DB, Data.Win.ADODB,
  QRCtrls;

type
  TfrmRRelacaoFinanceira = class(TfrmPadrao)
    RelatorioAReceber: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    LogoEmpresaReceber: TQRImage;
    QRShape12: TQRShape;
    QRShape5: TQRShape;
    mmoCabeçalhoReceber: TQRMemo;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    qryAux: TADOQuery;
    SalvarPDF: TQRPDFFilter;
    QRBand4: TQRBand;
    QRLabel13: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand5: TQRBand;
    QRLabel10: TQRLabel;
    lblTotValor: TQRLabel;
    lblTotPago: TQRLabel;
    qryContasReceber: TADOQuery;
    qryContasReceberIDPaciente: TIntegerField;
    qryContasReceberHistorico: TStringField;
    qryContasReceberDocumento: TStringField;
    qryContasReceberNroNota: TStringField;
    qryContasReceberValor: TFloatField;
    qryContasReceberValorRecebido: TFloatField;
    qryContasReceberDataConta: TDateTimeField;
    qryContasReceberDataVcto: TDateTimeField;
    qryContasReceberPaciente: TStringField;
    QRLabel11: TQRLabel;
    lblTotRestante: TQRLabel;
    qryContasReceberiAux: TIntegerField;
    QRBand6: TQRBand;
    QRLabel12: TQRLabel;
    lblTotValorGeral: TQRLabel;
    lblTotGeralPago: TQRLabel;
    QRLabel16: TQRLabel;
    lblTotGeralRestante: TQRLabel;
    RelatorioAPagar: TQuickRep;
    QRBand7: TQRBand;
    QRSysData4: TQRSysData;
    LogoEmpresaPagar: TQRImage;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    mmoCabecalhoPagar: TQRMemo;
    QRBand8: TQRBand;
    QRLabel14: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel15: TQRLabel;
    QRBand9: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRBand10: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRBand11: TQRBand;
    QRLabel24: TQRLabel;
    lblPagarValor: TQRLabel;
    lblPagarPago: TQRLabel;
    QRLabel27: TQRLabel;
    lblRestantePagar: TQRLabel;
    QRBand12: TQRBand;
    QRLabel29: TQRLabel;
    lblTotalPagarValor: TQRLabel;
    lblPagarTotalPago: TQRLabel;
    QRLabel32: TQRLabel;
    lblPagarTotalRestante: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText16: TQRDBText;
    qryContasPagar: TADOQuery;
    qryContasPagarIDFornecedor: TIntegerField;
    qryContasPagarHistorico: TStringField;
    qryContasPagarDocumento: TStringField;
    qryContasPagarNroNota: TStringField;
    qryContasPagarFornecedor: TStringField;
    qryContasPagarValor: TFloatField;
    qryContasPagarValorPago: TFloatField;
    qryContasPagarDataConta: TDateTimeField;
    qryContasPagarDataVcto: TDateTimeField;
    qryContasPagariAux: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    rValor,
    rValorPago,
    rValorTotal,
    rValorPagoTotal: Real;
  public
    { Public declarations }
  end;

var
  frmRRelacaoFinanceira: TfrmRRelacaoFinanceira;

implementation

{$R *.dfm}

procedure TfrmRRelacaoFinanceira.FormCreate(Sender: TObject);
var
  Estilo : TFontStyles;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CFGRELATORIO');
      SQL.Add('WHERE ID_CFGRELATORIO = 1');
      Open;

      Estilo := [];

      if Not Eof then
        Begin
        mmoCabeçalhoReceber.Lines.Text := FieldByName('TEXTO').AsString;
        mmoCabeçalhoReceber.Font.Name := FieldByName('FONTE').AsString;
        mmoCabecalhoPagar.Lines.Text := FieldByName('TEXTO').AsString;
        mmoCabecalhoPagar.Font.Name := FieldByName('FONTE').AsString;
        If FieldByName('NEGRITO').AsBoolean Then Estilo := Estilo + [fsBold];
        if FieldByName('ITALICO').AsBoolean then Estilo := Estilo + [fsItalic];
        if FieldByName('SUBLINHADO').AsBoolean then Estilo := Estilo + [fsUnderline];
        mmoCabeçalhoReceber.Font.Size := FieldByName('TAMANHO').AsInteger;
        mmoCabeçalhoReceber.Font.Color := StringToColor(FieldByName('COR').AsString);
        mmoCabeçalhoReceber.Font.Style := Estilo;
        mmoCabecalhoPagar.Font.Size := FieldByName('TAMANHO').AsInteger;
        mmoCabecalhoPagar.Font.Color := StringToColor(FieldByName('COR').AsString);
        mmoCabecalhoPagar.Font.Style := Estilo;

        if FieldByName('LOGO').AsString <> '' then
          Begin
            (FieldByName('LOGO') As TBlobField).SaveToFile('C:\Odontosis\Logo.jpg');
            LogoEmpresaReceber.Picture.LoadFromFile('C:\Odontosis\Logo.jpg');
            LogoEmpresaPagar.Picture.LoadFromFile('C:\Odontosis\Logo.jpg');
          End;
        End;
    End;

  rValor          := 0;
  rValorPago      := 0;
  rValorTotal     := 0;
  rValorPagoTotal := 0;

end;

procedure TfrmRRelacaoFinanceira.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rValor        := rValor + qryContasPagarValor.AsFloat;
  rValorPago    := rValorPago + qryContasPagarValor.AsFloat;
end;

procedure TfrmRRelacaoFinanceira.QRBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rValorTotal            := rValorTotal + rValor;
  rValorPagoTotal        := rValorPagoTotal + rValorPago;

  lblPagarValor.Caption    := FormatFloat('#,##0.00', rValor);
  lblPagarPago.Caption     := FormatFloat('#,##0.00', rValorPago);
  lblRestantePagar.Caption := FormatFloat('#,##0.00', rValor - rValorPago);
  rValor     := 0;
  rValorPago := 0;
end;

procedure TfrmRRelacaoFinanceira.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  lblTotalPagarValor.Caption      := FormatFloat('#,##0.00', rValorTotal);
  lblPagarTotalPago.Caption       := FormatFloat('#,##0.00', rValorPagoTotal);
  lblPagarTotalRestante.Caption   := FormatFloat('#,##0.00', rValorTotal - rValorPagoTotal);

  rValorPagoTotal := 0;
  rValorTotal     := 0;
end;

procedure TfrmRRelacaoFinanceira.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rValor        := rValor + qryContasReceberValor.AsFloat;
  rValorPago    := rValorPago + qryContasReceberValorRecebido.AsFloat;
end;

procedure TfrmRRelacaoFinanceira.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rValorTotal            := rValorTotal + rValor;
  rValorPagoTotal        := rValorPagoTotal + rValorPago;

  lblTotValor.Caption    := FormatFloat('#,##0.00', rValor);
  lblTotPago.Caption     := FormatFloat('#,##0.00', rValorPago);
  lblTotRestante.Caption := FormatFloat('#,##0.00', rValor - rValorPago);
  rValor     := 0;
  rValorPago := 0;
end;

procedure TfrmRRelacaoFinanceira.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  lblTotValorGeral.Caption      := FormatFloat('#,##0.00', rValorTotal);
  lblTotGeralPago.Caption       := FormatFloat('#,##0.00', rValorPagoTotal);
  lblTotGeralRestante.Caption   := FormatFloat('#,##0.00', rValorTotal - rValorPagoTotal);

  rValorPagoTotal := 0;
  rValorTotal     := 0;
end;

end.
