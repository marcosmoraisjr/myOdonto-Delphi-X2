unit Lock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.StdCtrls, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Funcoes, OnGuard, OgUtil,
  UDM,
  Data.DB, Data.Win.ADODB, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfmLock = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EdtChave: TEdit;
    EdtContraChave: TEdit;
    SpeedButton1: TSpeedButton;
    btnFechar: TSpeedButton;
    qryAux: TADOQuery;
    btnAdicional: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    Procedure GravaVcto;
    procedure btnAdicionalClick(Sender: TObject);
  private
    sContraChave : String;
    bFechar: Boolean;
    bRenova : Boolean;
  public
    { Public declarations }
    bAdicionar : Boolean;
  end;

var
  fmLock: TfmLock;

implementation

{$R *.dfm}

uses Main;

const
  EncryptionKey: TKey = ($F9, $EF, $84, $D6, $92, $C9, $8E, $9F, $1A, $FA, $8F,
    $8D, $AB, $2C, $DF, $B4);

procedure TfmLock.btnAdicionalClick(Sender: TObject);
var
  bExit : Boolean;
  sContraC : String;
  DataDemo, DataAtual: TDateTime;
  Data, DtVencimento: TDate;
  Key: TKey;
  Code: TCode;
  Work: TCode;
  Modifier: Longint;
Begin

  bExit := False;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM OPINT');
      Open;

      if Not FieldByName('ADICIONAL').AsBoolean then
        Begin
          DataDemo := Now + 10;

          Key := EncryptionKey;
          Modifier := StringHashELF(EdtChave.Text);
          ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
          InitRegCode(Key, '', DataDemo, Code);
          sContraC := BufferToHex(Code, SizeOf(Code));

          Edit;
          FieldByName('CONTRACHAVE').AsString := sContraC;
          FieldByName('ADICIONAL').AsBoolean := True;
          Post;

          application.MessageBox('Você acabou de ganhar 10 dias de adicional,' + #13
            + #10 + 'lembre-se de contatar a odontosis para renovar sua mensalidade.', 'Atenção!',
            mb_ok + MB_ICONWARNING);
          bExit := True;
        End
      Else
        Begin
          application.MessageBox('Você pode utilizar a função do adicional uma vez,' + #13
            + #10 + 'a cada mensalidade paga.', 'Erro!',
            mb_ok + MB_ICONERROR);
        End;

    End;

  if bExit then
    Begin
      bFechar := True;
      Close;
    End;
end;

procedure TfmLock.btnFecharClick(Sender: TObject);
begin
  inherited;
  if bAdicionar then  Close Else Halt;
end;

procedure TfmLock.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CanClose := False;

  if (bFechar = True) or (bAdicionar = True) then CanClose := True;
end;

procedure TfmLock.FormCreate(Sender: TObject);
begin
  inherited;
  bRenova     := False;
  bFechar     := False;
  bAdicionar  := False;
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM OPINT');
      Open;

      EdtChave.Text := FieldByName('CODCLIENTE').AsString;
    End;
end;

procedure TfmLock.GravaVcto;
var
  rQtdeSMS : Real;
  sAux,
  sSMS,
  sTerminais : String;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM OPINT');
      Open;

      Edit;
      FieldByName('CONTRACHAVE').AsString := sContraChave;
      FieldByName('DEMO').AsBoolean  := False;
      FieldByName('ADICIONAL').AsBoolean := False;
      Post;

      sAux          := Crypt('D',EdtContraChave.Text);
      sTerminais    := Copy(sAux,0,2);
      sSMS          := Copy(sAux,3,5);

      Close;
      SQL.Clear;
      SQL.Add('SELECT SQTDESMS FROM CFGGERAL');
      Open;

      rQtdeSMS := FieldByName('SQTDESMS').AsFloat + StrToFloat(sSMS);

      Edit;
      FieldByName('SQTDESMS').AsFloat := rQtdeSMS;
      Post;
    End;
end;

procedure TfmLock.SpeedButton1Click(Sender: TObject);
var
  Key: TKey;
  Code: TCode;
  Work: TCode;
  Modifier: Longint;
  sData: String;
begin

  sContraChave := Crypt('D', EdtContraChave.Text);
  sContraChave := Copy(sContraChave, 8, 100);
  Key := EncryptionKey;
  Modifier := StringHashELF(EdtChave.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(sContraChave, Code, SizeOf(Code));

  Work := Code;
  MixBlock(T128bit(Key), Work, False);
  sData := DateToStr(ExpandDate(Work.Expiration));

  if EdtContraChave.Text = '49310E52FB0C6FF050FC0A220B3B5CC663FC473119212379' then //TODO - apagar depois do dia 15/12/2013
    Begin
    application.MessageBox(PChar('Código Inválido, Entre em contato com a Odontosis'
        + #13 + #10 + 'Pelo site: www.Odontosis.com.br' + #13 + #10 +
        'Ou pelo Fone: '+frmMain.sFone), 'Erro!!!', mb_ok + MB_ICONERROR);
      Exit;
    End;

  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
      application.MessageBox(PChar('Código Expirado, Entre em contato com a Odontosis'
        + #13 + #10 + 'Pelo site: www.Odontosis.com.br' + #13 + #10 +
        'Ou pelo Fone: '+frmMain.sFone), 'Erro!!!', mb_ok + MB_ICONERROR)
    else
    Begin
      application.MessageBox('Código Válido, Obrigado por utilizar o Sistema!',
        'Sucesso!!!', mb_ok + MB_ICONINFORMATION);
      bFechar := True;
      GravaVcto;
      Close;
    End;
  end
  else
    application.MessageBox(PChar('Código Inválido, Entre em contato com a Odontosis'
        + #13 + #10 + 'Pelo site: www.Odontosis.com.br' + #13 + #10 +
        'Ou pelo Fone: '+frmMain.sFone), 'Erro!!!', mb_ok + MB_ICONERROR)
end;

end.
