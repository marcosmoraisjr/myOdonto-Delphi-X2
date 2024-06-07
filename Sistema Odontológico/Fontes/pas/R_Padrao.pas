unit R_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls, Funcoes,
  QRCtrls,
  Data.DB, Data.Win.ADODB, QRPDFFilt;

type
  TfrmRelatorioPadrao = class(TForm)
    Relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    qryRel: TADOQuery;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    qryAux: TADOQuery;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    LogoEmpresa: TQRImage;
    QRShape12: TQRShape;
    QRShape5: TQRShape;
    SalvarPDF: TQRPDFFilter;
    mmoCabeçalho: TQRMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioPadrao: TfrmRelatorioPadrao;

implementation

{$R *.dfm}

procedure TfrmRelatorioPadrao.FormCreate(Sender: TObject);
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

end.
