unit Descricao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmDescricao = class(TfrmPadrao)
    EdtDescricao: TEdit;
    btnSalvar: TSpeedButton;
    cmbContas: TComboBox;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bOK : Boolean;
  end;

var
  frmDescricao: TfrmDescricao;

implementation

{$R *.dfm}

uses Main;

procedure TfrmDescricao.btnSalvarClick(Sender: TObject);
begin
  inherited;
  bOK := True;
  if EdtDescricao.Text <> '' then
  Begin
    frmMain.sDescricao := EdtDescricao.Text;
    Close;
  End
  Else
  Begin
    frmMain.sDescricao := '';
    Close;
  End;

end;

procedure TfrmDescricao.FormCreate(Sender: TObject);
begin
  inherited;
  bOK := False;
end;

end.
