unit C_Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.Buttons, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Funcoes,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, JvExMask, JvToolEdit,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, cxButtons;

type
  TfrmCadCidades = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    qryCadastro: TADOQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    EdtCodIb: TJvComboEdit;
    EdtCidade: TEdit;
    EdtUF: TEdit;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodIbButtonClick(Sender: TObject);
    procedure EdtCodIbExit(Sender: TObject);
    procedure EdtCodIbKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

{$R *.dfm}

uses L_CidadeIBGE, L_Cidade, Main;

procedure TfrmCadCidades.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadCidades.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if EdtCodIb.Text = '' then
    Begin
      application.MessageBox('Os campos em azul s�o obrigat�rios!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

      With qryCadastro do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO CIDADE(NOME, UF, CODIBGE)');
          SQL.Add('VALUES(:pNome, :pUF, :pCodIBGE)');
          Parameters.ParamByName('pNome').Value      := EdtCidade.Text;
          Parameters.ParamByName('pUF').Value        := EdtUF.Text;
          Parameters.ParamByName('pCodIBGE').Value   := EdtCodIb.Text;
          ExecSQL;
        End;

    EdtCodIb.Text   := '';
    EdtCidade.Text  := '';
    EdtUF.Text      := '';
    application.MessageBox('Cidade cadastrada com sucesso','Sucesso!!!',mb_ok+MB_ICONINFORMATION);
    Close;
end;

procedure TfrmCadCidades.EdtCodIbButtonClick(Sender: TObject);
begin
  inherited;
  Abreform(TfrmPesquisaCidadeIBGE, frmPesquisaCidadeIBGE);
  FreeAndNil(frmPesquisaCidadeIBGE);
  EdtCodIb.Text := frmMain.sCodIBGE;
  EdtCodIbExit(Sender);
end;

procedure TfrmCadCidades.EdtCodIbExit(Sender: TObject);
begin
  inherited;
 if EdtCodIb.Text = '' then
  Begin
    Exit;
  End;

  With qryCadastro do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CODIBGE, NOME, UF, ID_MUNICIPIO FROM MUNICIPIOIBGE');
      SQL.Add('WHERE CODIBGE = :pId');
      Parameters.ParamByName('pId').Value := StrToInt(EdtCodIb.Text);
      Open;

    EdtCidade.Text := FieldByName('NOME').AsString;
    EdtUF.Text     := FieldByName('UF').AsString;

  if EdtCidade.Text = '' then
    Begin
      EdtCodIb.Text := '';
    End;

    End;
end;

procedure TfrmCadCidades.EdtCodIbKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

End.
