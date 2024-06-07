unit SelecionaServidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Funcoes,
  JvExControls, JvGradientHeaderPanel, Registry,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmSelecionaServidor = class(TfrmPadrao)
    bvBar: TBevel;
    gbAcesso: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    gbServidor: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cbServidor: TComboBox;
    EdtBase: TEdit;
    gbInformacoes: TGroupBox;
    Label1: TLabel;
    cbMostrar: TCheckBox;
    PopupMenu: TPopupMenu;
    UsuarioSenha1: TMenuItem;
    JvGradientHeaderPanel1: TJvGradientHeaderPanel;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    mmoScript: TMemo;
    procedure UsuarioSenha1Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    bOK: Boolean;
    procedure GravaDados;
  public
    bFechar: Boolean;
    { Public declarations }
  end;

var
  frmSelecionaServidor: TfrmSelecionaServidor;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmSelecionaServidor.btnFecharClick(Sender: TObject);
begin
  inherited;
  Halt;
  bFechar := True;
  bOK := False;
  Close;
end;

procedure TfrmSelecionaServidor.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if cbServidor.Text = '' then
  begin
    Application.MessageBox('Servidor inv�lido!! Verifique!!',
      'Erro!!!', MB_OK or MB_ICONEXCLAMATION);
    ActiveControl := cbServidor;
    Exit;
  end;
  if EdtUsuario.Text = '' then
  begin
    Application.MessageBox('Usu�rio inv�lido!! Verifique!!',
      'Erro!!!', MB_OK or MB_ICONEXCLAMATION);
    gbAcesso.Visible := True;
    gbServidor.Visible := False;
    ActiveControl := EdtUsuario;
    Exit;
  end;
  if EdtSenha.Text = '' then
  begin
    Application.MessageBox('Senha inv�lida!! Verifique!!', 'Erro!!!',
      MB_OK or MB_ICONEXCLAMATION);
    gbAcesso.Visible := True;
    gbServidor.Visible := False;
    ActiveControl := EdtSenha;
    Exit;
  end;

  bFechar := False;

  GravaDados;
  bOK := True;
  Close;
end;

procedure TfrmSelecionaServidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if not bOK then
  begin
    if bFechar then
    begin
      Application.MessageBox('Sistema Fechado!!', 'Aten��o!!!',
        MB_OK or MB_ICONINFORMATION);
      Application.Terminate;
      // Halt;
    end
    else
      Application.MessageBox('Altera��es canceladas!!', 'Aten��o',
        MB_OK or MB_ICONINFORMATION);
  end;
end;

procedure TfrmSelecionaServidor.FormCreate(Sender: TObject);
var
  sComando : String;
begin
  inherited;

  gbAcesso.Visible := False;
  cbServidor.Text := CfgAcesso.Servidor;
  EdtUsuario.Text := CfgAcesso.Usuario;
  if Empty(EdtUsuario.Text) then
    EdtUsuario.Text := 'sa';

  EdtSenha.Text := CfgAcesso.Senha;
  if Empty(EdtSenha.Text) then
    EdtSenha.Text := '12345';

  cbMostrar.Checked := CfgAcesso.bMostrar;

  EdtBase.Text := CFGAcesso.Base;
  if Empty(EdtBase.Text) then
    EdtBase.Text := 'ODONTOSIS';

  if Empty(cbServidor.Text) then
    cbServidor.Text := '.\ODONTOSIS';
end;

procedure TfrmSelecionaServidor.GravaDados;
var
  sAplic: string;
begin

  if Application.Title = 'TAG' then
    sAplic := 'Software\OdontoSisTAG'
  else
    sAplic := 'Software\OdontoSis';

  with TRegistry.Create do
    try
      RootKey := HKey_Local_Machine;
      if OpenKey(PChar(sAplic), True) then
      begin
        WriteString('Base', Crypt('C', EdtBase.Text));
        WriteString('Servidor', Crypt('C', cbServidor.Text));
        WriteString('Usuario', Crypt('C', EdtUsuario.Text));
        WriteString('Senha', Crypt('C', EdtSenha.Text));

        if cbMostrar.Checked then
        Begin
          WriteString('Mostrar', Crypt('C', 'TRUE'));
        End
        else
        Begin
          WriteString('Mostrar', Crypt('C', 'FALSE'));
        End;
      end;
    finally
      Free
    end;

end;

procedure TfrmSelecionaServidor.UsuarioSenha1Click(Sender: TObject);
begin
  inherited;
  if gbAcesso.Visible then
  begin
    gbAcesso.Visible := False;
    gbServidor.Visible := True;

    ActiveControl := cbServidor;
  end
  else
  begin
    gbAcesso.Visible := True;
    gbServidor.Visible := False;

    ActiveControl := EdtUsuario;
  end;
end;

end.
