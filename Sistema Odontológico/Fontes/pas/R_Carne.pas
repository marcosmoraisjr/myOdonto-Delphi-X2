unit R_Carne;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, QRCtrls, QuickRpt, qrpctrls,
  Data.DB, Data.Win.ADODB, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Funcoes,
  Vcl.ExtCtrls, QRPDFFilt;

type
  TfrmRCarne = class(TfrmPadrao)
    Relatorio: TQuickRep;
    qryAux: TADOQuery;
    QRGroup1: TQRGroup;
    ChildBand1: TQRChildBand;
    QRPShape1: TQRPShape;
    QRPShape2: TQRPShape;
    QRPShape3: TQRPShape;
    QRPShape4: TQRPShape;
    QRPShape5: TQRPShape;
    QRPShape6: TQRPShape;
    QRPShape7: TQRPShape;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    LogoEmpresa: TQRImage;
    lblEmpresa: TQRLabel;
    lblRua: TQRLabel;
    lblCidade: TQRLabel;
    lbltelefone: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    QRPShape8: TQRPShape;
    QRLabel9: TQRLabel;
    QRPShape10: TQRPShape;
    QRPShape11: TQRPShape;
    QRPShape12: TQRPShape;
    QRPShape13: TQRPShape;
    QRPShape9: TQRPShape;
    QRPShape14: TQRPShape;
    QRPShape15: TQRPShape;
    QRPShape16: TQRPShape;
    QRPShape17: TQRPShape;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    lblCliente: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    lblEnderecoCliente: TQRLabel;
    lblCidadeCliente: TQRLabel;
    lblCPFCliente: TQRLabel;
    lblTelefoneCliente: TQRLabel;
    lblCliente2: TQRLabel;
    lblCodCliente: TQRLabel;
    qryRel: TADOQuery;
    qryRelID: TIntegerField;
    qryRelDataEmissao: TDateTimeField;
    qryRelDataVencimento: TDateTimeField;
    qryRelNroDocumento: TStringField;
    qryRelDocumento: TStringField;
    qryRelValor: TFloatField;
    SalvarPDF: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure GeraCarne(IDPaciente : Integer);
  end;

var
  frmRCarne: TfrmRCarne;

implementation

{$R *.dfm}

procedure TfrmRCarne.FormCreate(Sender: TObject);
begin
  inherited;
  if FileExists(PastaArquivo+'\Logo.Jpg') then
    Begin
      LogoEmpresa.Picture.LoadFromFile(PastaArquivo+'\Logo.jpg');
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT EMPRESA.NOME, EMPRESA.RAZAOSOCIAL, EMPRESA.ENDERECO, EMPRESA.NUMERO, EMPRESA.BAIRRO, EMPRESA.CEP, ');
      SQL.Add('EMPRESA.TELEFONE, EMPRESA.FAX, EMPRESA.CONTATO, EMPRESA.CNPJ, EMPRESA.IE, EMPRESA.EMAIL, CIDADE.NOME AS CIDADE, CIDADE.UF FROM EMPRESA');
      SQL.Add('INNER JOIN CIDADE ON EMPRESA.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('WHERE ID_EMPRESA = 1');
      Open;

      lblEmpresa.Caption := FieldByName('NOME').AsString;
      lblRua.Caption := FieldByName('ENDERECO').AsString + ', ' + FieldByName('Numero').AsString + ' - ' + FieldByName('BAIRRO').AsString;
      lblCidade.Caption := FieldByName('CIDADE').AsString + ' - ' + FieldByName('UF').AsString + ' - CEP: ' + FieldByName('CEP').AsString;
      lbltelefone.Caption := 'Telefone: ' + FieldByName('TELEFONE').AsString;

      if FieldByName('FAX').AsString <> '(  )     -    ' then
        Begin
          lbltelefone.Caption := lbltelefone.Caption + ' Fax: ' + FieldByName('FAX').AsString;
        End;
    End;
end;

procedure TfrmRCarne.GeraCarne(IDPaciente: Integer);
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.NOME, PACIENTE.CPF, PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.TELEFONE, CIDADE.NOME AS CIDADE, CIDADE.UF FROM PACIENTE');
      SQL.Add('INNER JOIN CIDADE ON dbo.PACIENTE.ID_CIDADE = dbo.CIDADE.ID_CIDADE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := IDPaciente;
      Open;

      lblCodCliente.Caption := FormatFloat('0000000000', FloatToCurr(IDPaciente));
      lblCliente.Caption := FieldByName('NOME').AsString;
      lblCliente2.Caption := FieldByName('NOME').AsString;
      lblEnderecoCliente.Caption := FieldByName('ENDERECO').AsString + ', ' + FieldByName('NRO').AsString;
      lblCidade.Caption := FieldByName('CIDADE').AsString + ' - ' + FieldByname('UF').AsString;
      lblCPFCliente.Caption := FieldByName('CPF').AsString;
      lblTelefoneCliente.Caption := FieldByName('TELEFONE').AsString;
    End;


  if qryRel.RecordCount > 0 then
    Begin
      Relatorio.Preview;
    End;


end;

end.
