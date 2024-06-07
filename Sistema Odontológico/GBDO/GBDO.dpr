program GBDO;

uses
  Windows,
  Dialogs,
  Vcl.Forms,
  Main in 'pas\Main.pas' {frmMain},
  Funcoes in 'pas\Funcoes.pas',
  Mensagem in 'pas\Mensagem.pas' {frmMensagem},
  Padrao in 'pas\Padrao.pas' {frmPadrao},
  uDM in 'pas\uDM.pas' {DM: TDataModule};

{$R *.res}
var
  iTipo : Integer;
begin
  Application.Title := 'GBDO';

  if ParamStr(1) = 'ANEXAR' then
    Begin
      iTipo := 0;
    End
  Else if ParamStr(1) = 'BACKUP' then
    Begin
      iTipo := 1;
    End
  Else if ParamStr(1) = 'RESTAURAR' then
    Begin
      iTipo := 2;
    End
  Else if ParamStr(1) = 'ATUALIZACAO' then
    Begin
      iTipo := 3;
    End
  Else
    Begin
      ShowMessage('o GBDO s� pode ser executado atrav�s do Sistema Odontosis');
      Halt;
    End;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  frmMain.MontaForm(iTipo);
  Application.Run;
end.
