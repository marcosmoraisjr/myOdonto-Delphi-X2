unit R_Atestados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, QRCtrls, Vcl.ExtCtrls, Funcoes,
  Data.DB, Data.Win.ADODB, QRPDFFilt;

type
  TfrmRelAtestados = class(TForm)
    qryRel: TADOQuery;
    qryAux: TADOQuery;
    qryAux2: TADOQuery;
    RelatorioCab: TQuickRep;
    QRBand6: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    LogoEmpresa: TQRImage;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    mmoCabe�alho: TQRMemo;
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
    RelatorioSemCab: TQuickRep;
    QRBand8: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand9: TQRBand;
    mmoDescricaoSemCab: TQRMemo;
    QRGroup3: TQRGroup;
    QRBand10: TQRBand;
    QRShape8: TQRShape;
    lblNomeMedicoRodapeSemCab: TQRLabel;
    lblCRORodapeSemCab: TQRLabel;
    lblCidadeRodaPESemCab: TQRLabel;
    qryRelID_ATESTADOS: TAutoIncField;
    qryRelID_PACIENTE: TIntegerField;
    qryRelID_MEDICO: TIntegerField;
    qryRelID_OPERADOR: TIntegerField;
    qryRelDATA: TDateTimeField;
    qryRelFINS: TIntegerField;
    qryRelHORAINI: TStringField;
    qryRelHORAFIM: TStringField;
    qryRelOBSERVACAO: TMemoField;
    SalvarPDF: TQRPDFFilter;
    SummaryBand1: TQRBand;
    lblNomePacienteSemCab: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure CarregaDados(IDPaciente, IDMedico : Integer);
  public
    { Public declarations }
    Procedure CarregaRelatorio(iID : Integer);
  end;

var
  frmRelAtestados: TfrmRelAtestados;

implementation

{$R *.dfm}

procedure TfrmRelAtestados.CarregaDados(IDPaciente, IDMedico: Integer);
begin
  With qryAux2 do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, ');
    SQL.Add('PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR, CIDADE.NOME AS Cidade, CIDADE.UF FROM PACIENTE');
    SQL.Add('INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := IDPaciente;
    Open;

    lblNomePaciente.Caption := FieldByName('NOME').AsString;
    lblNomePacienteSemCab.Caption := FieldByName('NOME').AsString;

    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME, UFCONSELHO, CRO FROM MEDICOS');
    SQL.Add('WHERE ID_MEDICO = :pID');
    Parameters.ParamByName('pID').Value := IDMedico;
    Open;

    lblNomeMedicoRodapeSemCab.Caption := FieldByName('NOME').AsString;
    lblCRORodapeSemCab.Caption := 'CRO ' + FieldByName('UFCONSELHO').AsString +
      ' : ' + FieldByName('CRO').AsString;
    lblNomeMedicoRodapeCab.Caption := FieldByName('NOME').AsString;
    lblCRORodapeCab.Caption := 'CRO ' + FieldByName('UFCONSELHO').AsString +
      ' : ' + FieldByName('CRO').AsString;
  End;
end;

procedure TfrmRelAtestados.CarregaRelatorio(iID: Integer);
var
  sFins : String;
begin
  With qryRel do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ATESTADOS');
      SQL.Add('WHERE ID_ATESTADOS = :pID');
      Parameters.ParamByName('pID').Value := iID;
      Open;

      if Eof then Exit;

      CarregaDados(FieldByName('ID_PACIENTE').AsInteger, FieldByName('ID_MEDICO').AsInteger);

      if FieldByName('FINS').AsInteger = 0 then sFins := 'Escolares' Else sFins := 'Trabalhistas';

      lblCidadeRodaPESemCab.Caption := FormatDateTime('dddddd',
        FieldByName('DATA').AsDateTime);
      lblCidadeRodaPECab.Caption := FormatDateTime('dddddd',
        FieldByName('DATA').AsDateTime);

      If CFGGeral.ImpCabAtestado then
        Begin
          mmoDescricao.Lines.Clear;
          mmoDescricao.Lines.Add('Atesto para fins '+sFins+' que o (a) paciente citado esteve');
          mmoDescricao.Lines.Add('sobre procedimentos odontol�gico no dia '+ FormatDateTime('DD/MM/YYYY', FieldByName('DATA').AsDateTime));
          mmoDescricao.Lines.Add('�s ' + FieldByName('HORAINI').AsString + ' at� �s ' + FieldByName('HORAFIM').AsString);
          mmoDescricao.Lines.Add(FieldByName('OBSERVACAO').AsString);
          RelatorioCab.Preview;
        End
      Else
        Begin
          mmoDescricaoSemCab.Lines.Clear;
          mmoDescricaoSemCab.Lines.Add('Atesto para fins '+sFins+' que o (a) paciente citado esteve');
          mmoDescricaoSemCab.Lines.Add('sobre procedimentos odontol�gico no dia '+ FormatDateTime('DD/MM/YYYY', FieldByName('DATA').AsDateTime));
          mmoDescricaoSemCab.Lines.Add('�s ' + FieldByName('HORAINI').AsString + ' at� �s ' + FieldByName('HORAFIM').AsString);
          mmoDescricaoSemCab.Lines.Add(FieldByName('OBSERVACAO').AsString);
          RelatorioSemCab.Preview;
        End;

    End;
end;

procedure TfrmRelAtestados.FormCreate(Sender: TObject);
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
        mmoCabe�alho.Lines.Text := FieldByName('TEXTO').AsString;
        mmoCabe�alho.Font.Name := FieldByName('FONTE').AsString;
        If FieldByName('NEGRITO').AsBoolean Then Estilo := Estilo + [fsBold];
        if FieldByName('ITALICO').AsBoolean then Estilo := Estilo + [fsItalic];
        if FieldByName('SUBLINHADO').AsBoolean then Estilo := Estilo + [fsUnderline];
        mmoCabe�alho.Font.Size := FieldByName('TAMANHO').AsInteger;
        mmoCabe�alho.Font.Color := StringToColor(FieldByName('COR').AsString);
        mmoCabe�alho.Font.Style := Estilo;

        if FieldByName('LOGO').AsString <> '' then
          Begin
            (FieldByName('LOGO') As TBlobField).SaveToFile('C:\Odontosis\Logo.jpg');
            LogoEmpresa.Picture.LoadFromFile('C:\Odontosis\Logo.jpg');
          End;
        End;
    End;
end;

end.
