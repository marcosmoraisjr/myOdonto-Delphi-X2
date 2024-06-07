unit R_FichaCadastroPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, Data.DB, Data.Win.ADODB,
  QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TfrmRFichaPaciente = class(TForm)
    Relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    LogoEmpresa: TQRImage;
    QRShape12: TQRShape;
    QRShape5: TQRShape;
    mmoCabeçalho: TQRMemo;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    qryRel: TADOQuery;
    qryAux: TADOQuery;
    SalvarPDF: TQRPDFFilter;
    qryRelID_PACIENTE: TAutoIncField;
    qryRelNOME: TStringField;
    qryRelCPF: TStringField;
    qryRelRG: TStringField;
    qryRelDTANASC: TDateTimeField;
    qryRelSEXO: TStringField;
    qryRelENDERECO: TStringField;
    qryRelNRO: TStringField;
    qryRelBAIRRO: TStringField;
    qryRelCEP: TStringField;
    qryRelTELEFONE: TStringField;
    qryRelCELULAR: TStringField;
    qryRelTELCOMERCIAL: TStringField;
    qryRelEMAIL: TStringField;
    qryRelNOMEPAI: TStringField;
    qryRelNOMEMAE: TStringField;
    qryRelEMPRESA: TStringField;
    qryRelFUNCAO: TStringField;
    qryRelTIPO: TIntegerField;
    qryRelOBSERVACAO: TMemoField;
    qryRelDATACADASTRO: TDateTimeField;
    qryRelULTIMACONSULTA: TDateTimeField;
    qryRelCidade: TStringField;
    qryRelUF: TStringField;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lbCNPJ: TQRLabel;
    lbl1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CarregaPaciente(ID: Integer);
  end;

var
  frmRFichaPaciente: TfrmRFichaPaciente;

implementation

{$R *.dfm}

procedure TfrmRFichaPaciente.CarregaPaciente(ID: Integer);
begin
  With qryRel do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.ID_PACIENTE, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO,');
      SQL.Add('PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR,');
      SQL.Add('PACIENTE.TELCOMERCIAL, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE, PACIENTE.EMPRESA, PACIENTE.FUNCAO,');
      SQL.Add('PACIENTE.TIPO, PACIENTE.OBSERVACAO, PACIENTE.DATACADASTRO, PACIENTE.ULTIMACONSULTA, CIDADE.NOME AS Cidade, CIDADE.UF FROM PACIENTE');
      SQL.Add('INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := ID;
      Open;

      Relatorio.ReportTitle := FieldByName('NOME').AsString;
    End;
end;

procedure TfrmRFichaPaciente.FormCreate(Sender: TObject);
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
