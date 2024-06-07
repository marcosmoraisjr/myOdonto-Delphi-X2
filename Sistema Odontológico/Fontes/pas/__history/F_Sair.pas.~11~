unit F_Sair;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, cxButtons;

type
  TfrmFazerBackup = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    btnFechar: TcxButton;
    btnCancelar: TcxButton;
    btnFazerBackup: TcxButton;
    PopupActionBar1: TPopupActionBar;
    Fechar1: TMenuItem;
    FazerBackup1: TMenuItem;
    procedure btnFecharClick(Sender: TObject);
    procedure btnFazerBackupClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iStatus : Integer;
  end;

var
  frmFazerBackup: TfrmFazerBackup;

implementation

{$R *.dfm}

procedure TfrmFazerBackup.btnCancelarClick(Sender: TObject);
begin
  iStatus := 1;
  Close;
end;

procedure TfrmFazerBackup.btnFazerBackupClick(Sender: TObject);
begin
  iStatus := 0;
  WinExec('C:\Odontosis\GBDO.exe BACKUP', SW_SHOWNORMAL);
  Close;
end;

procedure TfrmFazerBackup.btnFecharClick(Sender: TObject);
begin
  iStatus := 2;
  Close;
end;

end.
