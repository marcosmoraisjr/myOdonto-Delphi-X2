unit F_AutoUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, cxControls,
  cxContainer, cxEdit, cxProgressBar, Vcl.StdCtrls, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxButtons, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, IdAntiFreezeBase, Funcoes,
  Vcl.IdAntiFreeze, Vcl.ComCtrls;

type
  TfrmAutoUpdate = class(TForm)
    btnFechar: TcxButton;
    btnAtualizar: TcxButton;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblStatus: TLabel;
    FTP: TIdFTP;
    Lista: TListBox;
    IdAntiFreeze1: TIdAntiFreeze;
    Barra: TcxProgressBar;
    procedure btnFecharClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure FTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    bytesToTransfer : Integer;
    sArquivo        : String;
  public
    { Public declarations }
    Function VerificaVersao : Boolean;
  end;

var
  frmAutoUpdate: TfrmAutoUpdate;

implementation

{$R *.dfm}

function FormatByteSize(const bytes: Longint): string;
 const
   B = 1; //byte
   KB = 1024 * B; //kilobyte
   MB = 1024 * KB; //megabyte
   GB = 1024 * MB; //gigabyte
 begin
   if bytes > GB then
     result := FormatFloat('#.## GB', bytes / GB)
   else
     if bytes > MB then
       result := FormatFloat('#.## MB', bytes / MB)
     else
       if bytes > KB then
         result := FormatFloat('#.## KB', bytes / KB)
       else
         result := FormatFloat('#.## bytes', bytes) ;
end;

procedure TfrmAutoUpdate.btnAtualizarClick(Sender: TObject);
var
  i : Integer;
  sVerOnline : String;
begin
  btnAtualizar.Enabled  := False;
  FTP.List(Lista.Items,'UPDATE',False);

  if not DirectoryExists('C:\Odontosis\Update') then
    ForceDirectories('C:\Odontosis\Update');

  for i := 0 to Lista.Items.Count -1 do
    begin
      try
        Lista.Selected[i] := true;
        bytesToTransfer   := FTP.Size(Lista.Items.Strings[i]);
        sArquivo          := Copy(Lista.Items.Strings[i],8, 100);
        FTP.Get(Lista.Items.Strings[i],'C:\Odontosis\' + Lista.Items.Strings[i],true);
      except on e:exception do
        showmessage(e.Message);
      end;
    end;

  FTP.Get('UPDATE\Version.ini', 'C:\Odontosis\Version.Ini', True);

  sVerOnline  := LerIni('C:\Odontosis\Version.ini','Version','Odontosis');
  SalvarIni('C:\Odontosis\CFGLocal.ini','Version','Odontosis', sVerOnline);
  DeleteFile('C:\Odontosis\Version.ini');

  WinExec('C:\Odontosis\Update\UpdateOdontosis.exe', SW_SHOWNORMAL);
  Close;
end;

procedure TfrmAutoUpdate.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAutoUpdate.FormCreate(Sender: TObject);
begin
  FTP.Connect;
end;

procedure TfrmAutoUpdate.FTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  Barra.Position    := AWorkCount;
  lblStatus.Caption := FormatByteSize(AWorkCount) + '/' + FormatByteSize(bytesToTransfer) + ' - ' +sArquivo;
end;

procedure TfrmAutoUpdate.FTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  Barra.Position := 0;

  if AWorkCountMax > 0 then
    Barra.Properties.Max := AWorkCountMax
  else
    Barra.Properties.Max := bytesToTransfer;
end;

function TfrmAutoUpdate.VerificaVersao: Boolean;
var
  sVerSistema,
  sVerOnline : String;
begin
  Result := False;

  FTP.Get('UPDATE\Version.ini', 'C:\Odontosis\Version.Ini', True);

  sVerSistema := LerIni('C:\Odontosis\CFGLocal.ini','Version','Odontosis');
  sVerOnline  := LerIni('C:\Odontosis\Version.ini','Version','Odontosis');

  if sVerSistema = '' then
    Begin
      sVerSistema := '1011';
      SalvarIni('C:\Odontosis\CFGLocal.ini','Version','Odontosis', sVerSistema);
    End;

  if StrToInt(sVerOnline) > StrToInt(sVerSistema) then Result := True;

  lblStatus.Caption := 'Aguardando inicialização.';
  Barra.Position    := 0;
  DeleteFile('C:\Odontosis\Version.ini');
end;

end.
