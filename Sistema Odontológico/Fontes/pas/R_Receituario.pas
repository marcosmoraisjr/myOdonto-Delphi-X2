unit R_Receituario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, R_Padrao, Data.DB, Data.Win.ADODB,
  QRCtrls, QuickRpt, Vcl.ExtCtrls, Funcoes, QRPDFFilt;

type
  TfrmRreceituario = class(TfrmRelatorioPadrao)
    QRGroup1: TQRGroup;
    qryAux2: TADOQuery;
    qryRelID_RECEITUARIO: TAutoIncField;
    qryRelID_PACIENTE: TIntegerField;
    qryRelID_MEDICO: TIntegerField;
    qryRelDATA: TDateTimeField;
    qryRelDESCRICAO: TMemoField;
    RelatorioCab: TQuickRep;
    QRBand6: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    LogoEmpresaCAb: TQRImage;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    mmoDescricao: TQRMemo;
    QRGroup2: TQRGroup;
    lblNomePaciente: TQRLabel;
    QRBand5: TQRBand;
    QRShape10: TQRShape;
    lblNomeMedicoRodapeCab: TQRLabel;
    lblCRORodapeCab: TQRLabel;
    lblCidadeRodaPECab: TQRLabel;
    QRBand7: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    RelatorioSemCab: TQuickRep;
    QRBand8: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand9: TQRBand;
    mmoDescricaoSemCab: TQRMemo;
    QRGroup3: TQRGroup;
    lblNomePacienteSemCab: TQRLabel;
    QRBand10: TQRBand;
    QRShape8: TQRShape;
    lblNomeMedicoRodapeSemCab: TQRLabel;
    lblCRORodapeSemCab: TQRLabel;
    lblCidadeRodaPESemCab: TQRLabel;
    QRMemo1: TQRMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    iMedico, iPaciente: Integer;
    Procedure CarregaDadosPaciente;
    Procedure CarregaReceituario(ID: Integer);
  end;

var
  frmRreceituario: TfrmRreceituario;

implementation

{$R *.dfm}
{ TfrmRreceituario }

procedure TfrmRreceituario.CarregaDadosPaciente;
begin
  With qryAux2 do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, ');
    SQL.Add('PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR, CIDADE.NOME AS Cidade, CIDADE.UF FROM PACIENTE');
    SQL.Add('INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := iPaciente;
    Open;

    lblNomePaciente.Caption := FieldByName('NOME').AsString;
    lblNomePacienteSemCab.Caption := FieldByName('NOME').AsString;

    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME, UFCONSELHO, CRO FROM MEDICOS');
    SQL.Add('WHERE ID_MEDICO = :pID');
    Parameters.ParamByName('pID').Value := iMedico;
    Open;

    lblNomeMedicoRodapeSemCab.Caption := FieldByName('NOME').AsString;
    lblCRORodapeSemCab.Caption := 'CRO ' + FieldByName('UFCONSELHO').AsString +
      ' : ' + FieldByName('CRO').AsString;
    lblNomeMedicoRodapeCab.Caption := FieldByName('NOME').AsString;
    lblCRORodapeCab.Caption := 'CRO ' + FieldByName('UFCONSELHO').AsString +
      ' : ' + FieldByName('CRO').AsString;
  End;
end;

procedure TfrmRreceituario.CarregaReceituario(ID: Integer);
begin
  With qryRel do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RECEITUARIO');
    SQL.Add('WHERE ID_RECEITUARIO = :pID');
    Parameters.ParamByName('pID').Value := ID;
    Open;

    lblCidadeRodaPESemCab.Caption := FormatDateTime('dddddd',
      FieldByName('DATA').AsDateTime);
    lblCidadeRodaPECab.Caption := FormatDateTime('dddddd',
      FieldByName('DATA').AsDateTime);
  End;
end;

procedure TfrmRreceituario.FormCreate(Sender: TObject);
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
