unit R_Recibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, QRCtrls, QuickRpt, Vcl.Imaging.jpeg, Data.DB,
  Data.Win.ADODB, Funcoes, QRPDFFilt, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmRelRecibo = class(TfrmPadrao)
    Relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    LogoEmpresa: TQRImage;
    lblEmpresa: TQRLabel;
    lblRazao: TQRLabel;
    lblCNPJ: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    lblRua: TQRLabel;
    lblCidade: TQRLabel;
    lbltelefone: TQRLabel;
    lblEmail: TQRLabel;
    lblRazao2: TQRLabel;
    QRShape4: TQRShape;
    qryRel: TADOQuery;
    qryRelID: TIntegerField;
    lblValor: TQRLabel;
    lblReferente: TQRLabel;
    lblImportancia: TQRLabel;
    qryAux: TADOQuery;
    lblNome: TQRLabel;
    SalvarPDF: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CarregaRelatorio(IDPaciente : Integer; Valor : Double; Referente : String);
  end;

var
  frmRelRecibo: TfrmRelRecibo;

implementation

{$R *.dfm}

{ TfrmRelRecibo }

procedure TfrmRelRecibo.CarregaRelatorio(IDPaciente: Integer; Valor: Double; Referente : String);
var
 i : Integer;
begin

  qryRel.Close;
  qryRel.Open;

  for I := 1 to CFGGeral.ViasRecibo do
    Begin
      qryRel.Append;
      qryRelID.AsInteger := i;
      qryRel.Post;
    End;

  if FileExists(PastaArquivo + '\Logo.Jpg') then
  Begin
    LogoEmpresa.Picture.LoadFromFile(PastaArquivo + '\Logo.jpg');
  End;

  lblEmpresa.Caption := Empresa.Nome;
  lblRazao.Caption :=  '';//Empresa.RazaoSocial;
  lblRua.Caption := Empresa.Endereco + ', ' + Empresa.Numero + ' - ' +
    Empresa.Bairro;
  lblCidade.Caption := Empresa.Cidade + ' - ' + Empresa.UF + ' - CEP: ' +
    Empresa.CEP;
  lbltelefone.Caption := 'Telefone: ' + Empresa.Telefone;

  lblEmail.Caption := 'e-mail: ' + Empresa.Email;
  lblCnpj.Caption := 'CNPJ: ' + Empresa.CNPJ;
  lblRazao2.Caption := Empresa.RazaoSocial;

  lblValor.Caption := FormatFloat('#,##0.00', Valor);
  lblReferente.Caption := Referente;
  lblImportancia.Caption := 'R$ ' + FormatFloat('#,##0.00', Valor) + ' ( '+ valorPorExtenso(Valor) + ' )';

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NOME FROM PACIENTE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := IDPaciente;
      Open;

      lblNome.Caption := FieldByName('NOME').AsString;
    End;

    Relatorio.Preview;

end;

end.
