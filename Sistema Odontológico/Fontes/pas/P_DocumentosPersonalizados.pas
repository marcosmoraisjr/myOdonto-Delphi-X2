unit P_DocumentosPersonalizados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, Data.DB, JvComponentBase,
  JvEnterTab, Data.Win.ADODB, Vcl.StdCtrls, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Funcoes,
  JvExDBGrids, JvDBGrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinsDefaultPainters, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, cxButtons;

type
  TfrmPDocsPersonalizados = class(TfrmPesquisaPadrao)
    qryPesquisaDESCRICAO: TStringField;
    qryPesquisaID_DOCUMENTOS: TAutoIncField;
    Timer1: TTimer;
    mmoEnvia: TMemo;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPDocsPersonalizados: TfrmPDocsPersonalizados;

implementation

{$R *.dfm}

uses Main, C_EmissaoDocumentoPersonalizado;

procedure TfrmPDocsPersonalizados.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if not Operador.DocPersonalizadoC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar um documento personalizado!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  WinExec('C:\Odontosis\OdsPad.exe ZAK321', SW_SHOWNORMAL);
end;

procedure TfrmPDocsPersonalizados.btnEditarClick(Sender: TObject);
begin
  inherited;
  if qryPesquisaID_DOCUMENTOS.AsString <> '' then
    Begin
      if not Operador.DocPersonalizadoE then
      Begin
        application.MessageBox
          ('Operador n�o tem permiss�o para editar um documento personalizado!',
          'Acesso Negado', mb_ok + MB_ICONWARNING);
        Exit;
      End;

      mmoEnvia.Lines.Text := qryPesquisaID_DOCUMENTOS.AsString;
      mmoEnvia.Lines.SaveToFile('C:\Odontosis\ID.txt');
      WinExec('C:\Odontosis\OdsPad.exe ZAK321', SW_SHOWNORMAL);
    End;
end;

procedure TfrmPDocsPersonalizados.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod := qryPesquisaID_DOCUMENTOS.AsString;
  Close;
end;

procedure TfrmPDocsPersonalizados.Timer1Timer(Sender: TObject);
begin
  inherited;
  if FileExists('C:\Odontosis\Fechou.ods') then
    Begin
      qryPesquisa.Close;
      qryPesquisa.Open;
      DeleteFile('C:\Odontosis\Fechou.ods');
    End;
end;

end.
