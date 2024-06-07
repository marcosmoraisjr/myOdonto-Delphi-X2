unit C_SMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, Funcoes,
  Data.DB, Data.Win.ADODB;

type
  TfrmCadSMS = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    btnFechar: TcxButton;
    btnSalvar: TcxButton;
    Label1: TLabel;
    EdtChave: TEdit;
    qryAux: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSMS: TfrmCadSMS;

implementation

{$R *.dfm}

function IsNumeric(S : String) : Boolean;
begin
Result := True;
Try
   StrToInt(S);
Except
Result := False;
end;
end;

procedure TfrmCadSMS.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadSMS.btnSalvarClick(Sender: TObject);
var
  sSMS : String;
  iSMS,
  iSMSAux : Integer;
begin
  inherited;

  if IsNumeric(Crypt('D', EdtChave.Text)) then
    Begin
      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM CFGGERAL');
          Open;

          iSMS := FieldByName('SQTDESMS').AsInteger;
          iSMSAux := StrToInt(Crypt('D', EdtChave.Text));

      //    iSMS := iSSMS


        End;
    End
  Else
    Begin
    application.MessageBox
      ('Chave inválida, verifique!',
      'Atenção', mb_ok + MB_ICONWARNING);
    Exit;
    End;



end;

end.
