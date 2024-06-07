unit F_PainelPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, QRPDFFilt, QRCtrls, QuickRpt, Vcl.ExtCtrls, Funcoes;

type
  TfrmPainelPadrao = class(TForm)
    GroupBox1: TGroupBox;
    btnImprimir: TSpeedButton;
    qryAux: TADOQuery;
    Relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    LogoEmpresa: TQRImage;
    QRShape12: TQRShape;
    QRShape5: TQRShape;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    SalvarPDF: TQRPDFFilter;
    mmoCabeçalho: TQRMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPainelPadrao: TfrmPainelPadrao;

implementation

{$R *.dfm}

procedure TfrmPainelPadrao.btnImprimirClick(Sender: TObject);
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
        mmoCabeçalho.Lines.Text := FieldByName('TEXTO').AsString;
        mmoCabeçalho.Font.Name := FieldByName('FONTE').AsString;
        If FieldByName('NEGRITO').AsBoolean Then Estilo := Estilo + [fsBold];
        if FieldByName('ITALICO').AsBoolean then Estilo := Estilo + [fsItalic];
        if FieldByName('SUBLINHADO').AsBoolean then Estilo := Estilo + [fsUnderline];
        mmoCabeçalho.Font.Size := FieldByName('TAMANHO').AsInteger;
        mmoCabeçalho.Font.Color := StringToColor(FieldByName('COR').AsString);
        mmoCabeçalho.Font.Style := Estilo;

        if FieldByName('LOGO').AsString <> '' then
          Begin
            (FieldByName('LOGO') As TBlobField).SaveToFile('C:\Odontosis\Logo.jpg');
            LogoEmpresa.Picture.LoadFromFile('C:\Odontosis\Logo.jpg');
          End;
        End;
    End;
end;

procedure TfrmPainelPadrao.FormCreate(Sender: TObject);
begin
  Self.Height := 487;
  Self.Width  := 605;
  Relatorio.Visible := False;
end;

end.
