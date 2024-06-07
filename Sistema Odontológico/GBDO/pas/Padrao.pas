unit Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Funcoes,
  JvComponentBase, JvEnterTab;

type
  TfrmPadrao = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Enter: TJvEnterAsTab;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
    TabEnter(Self, Key);
end;

end.
