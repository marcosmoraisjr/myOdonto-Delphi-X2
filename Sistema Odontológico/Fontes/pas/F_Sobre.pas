unit F_Sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls, OnGuard, OgUtil, Funcoes,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, Data.Win.ADODB;

type
  TfrmSobre = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    Label5: TLabel;
    lblEnd: TLabel;
    lblCep: TLabel;
    LblCidade: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    lblDataVencimento: TLabel;
    lblRelease: TLabel;
    Label13: TLabel;
    lblDataExe: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblVersaoDB: TLabel;
    btnFechar: TSpeedButton;
    GroupBox2: TGroupBox;
    lblNomeEmpresa: TLabel;
    lblRazaoEmpresa: TLabel;
    Label19: TLabel;
    qryAux: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

const
  EncryptionKey: TKey = ($F9, $EF, $84, $D6, $92, $C9, $8E, $9F, $1A, $FA, $8F,
    $8D, $AB, $2C, $DF, $B4);

procedure TfrmSobre.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSobre.FormCreate(Sender: TObject);
var
  dDataVencimento : TDate;
  Key: TKey;
  Code: TCode;
  Work: TCode;
  Modifier: Longint;
begin
  VersoesSistema;
  lblNomeEmpresa.Caption :=  Empresa.Nome;
  lblRazaoEmpresa.Caption := Empresa.RazaoSocial;
  lblRelease.Caption := GetVersaoArq;
  lblDataExe.Caption := FormatDateTime('DD/MM/YYYY', dDataExe);

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM OPINT');
      Open;

      Key := EncryptionKey;
      Modifier := StringHashELF(FieldByname('CODCLIENTE').AsString);
      ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
      HexToBuffer(FieldByname('CONTRACHAVE').AsString, Code, SizeOf(Code));

      Work := Code;
      MixBlock(T128bit(Key), Work, False);
      lblDataVencimento.Caption := FormatDateTime('DD/MM/YYYY', ExpandDate(Work.Expiration));

      lblVersaoDB.Caption := FormatFloat('0000', FieldByName('VERSAODB').AsFloat);

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM REPRESENTANTE');
      Open;

      lblEnd.Caption := FieldByname('Endereco').AsString + ', '+ FieldByName('NUMERO').AsString + ' - ' + FieldByName('BAIRRO').AsString;
      lblCep.Caption := 'CEP: ' + FieldByName('CEP').AsString+ ' / Fone: ' + FieldByName('Telefone').AsString;
      LblCidade.Caption := FieldByName('CIDADE').AsString +' - ' + FieldByName('UF').AsString + ' - Brasil';
    End;


end;

end.
