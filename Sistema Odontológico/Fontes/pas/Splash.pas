unit Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Funcoes, dxGDIPlusClasses;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    TimerBar: TTimer;
    ProgressBar1: TProgressBar;
    procedure TimerBarTimer(Sender: TObject);
    Procedure VerificaDB;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bPulatelaInicio : Boolean;
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

uses SelecionaServidor, uDM, TelaLogin;

procedure TfrmSplash.FormActivate(Sender: TObject);
begin
  frmSplash.Update;

end;

procedure TfrmSplash.TimerBarTimer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;

    if ProgressBar1.Position = 100 then
      TimerBar.Enabled := False;
end;

procedure TfrmSplash.VerificaDB;
var
  sMsg    ,
  sConect : string;
Begin

  CarregaAcessoSistema;

  if CfgAcesso.Servidor = '' then
    begin
      if frmSelecionaServidor=nil then
        frmSelecionaServidor:=TfrmSelecionaServidor.Create(Application);
      frmSelecionaServidor.bFechar := True;
      frmSelecionaServidor.ShowModal;

      bPulatelaInicio := True;
      VerificaDB;
    end
  else
    begin
      if CfgAcesso.bMostrar then
        begin
          if not bPulatelaInicio then
            begin
              if frmSelecionaServidor=nil then
                frmSelecionaServidor:=TfrmSelecionaServidor.Create(Application);
              frmSelecionaServidor.bFechar := True;
              frmSelecionaServidor.ShowModal;
            end;
        end;

  CarregaAcessoSistema;

      if Empty(CfgAcesso.Base) then
        CfgAcesso.Base := Application.Title;

      sConect := '';
      sConect := sConect + ' Provider=SQLOLEDB.1; ';
      sConect := sConect + ' Persist Security Info=True; ';
      sConect := sConect + ' User ID='+CfgAcesso.Usuario+'; ';
      sConect := sConect + ' Password='+CfgAcesso.Senha+'; ';
      sConect := sConect + ' Initial Catalog='+CfgAcesso.Base+'; ';
      sConect := sConect + ' Data Source='+CfgAcesso.Servidor;

      try
        DM.Conexao.Close;
        DM.Conexao.ConnectionString := sConect;
        DM.Conexao.Open;
        except
          on e:exception do
            begin
              sMsg := 'Impossível conectar o banco de dados! '+#10#13+
                      '"'+e.message+'"'+#10#13+#10#13+
                      'Reeinicie o sistema e tente novamente!';

              Application.MessageBox(PChar(sMsg),'Atenção',MB_OK or MB_ICONEXCLAMATION);
              //Application.Terminate;
              //Halt;

              if frmSelecionaServidor=nil then
                frmSelecionaServidor:=TfrmSelecionaServidor.Create(Application);
              frmSelecionaServidor.bFechar := True;
              frmSelecionaServidor.ShowModal;

              VerificaDB;
            end;
      end;

    end;
end;

end.
