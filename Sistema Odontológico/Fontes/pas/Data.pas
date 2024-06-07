unit Data;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Descricao, Vcl.Mask, JvExMask,
  JvToolEdit, JvComponentBase, JvEnterTab, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmData = class(TfrmDescricao)
    EdtData: TJvDateEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmData: TfrmData;

implementation

{$R *.dfm}

uses Main;

procedure TfrmData.btnSalvarClick(Sender: TObject);
begin
  frmMain.bOk := False;
  if (EdtData.Text <> '') and (EdtData.Text <> '  /  /    ') then
    Begin
      frmMain.bOk := True;
      frmMain.dDataAux := EdtData.Date;
      Close;
    End
  Else
    Begin
      Close;
    End;

end;

procedure TfrmData.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.bOk := False;
end;

end.
