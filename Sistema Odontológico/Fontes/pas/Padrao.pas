unit Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Funcoes,
  JvComponentBase, JvEnterTab, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmPadrao = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Enter: TJvEnterAsTab;
    Acoes: TPopupActionBar;
    Fechar1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

procedure TfrmPadrao.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
    TabEnter(Self, Key);
end;

end.
