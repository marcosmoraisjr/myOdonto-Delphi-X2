unit P_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Buttons,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.ComCtrls, Vcl.ExtCtrls, JvComponentBase, JvEnterTab, JvAppHotKey, Funcoes,
  JvExStdCtrls, JvEdit, JvDBSearchEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, cxButtons,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmPesquisaPadrao = class(TfrmPadrao)
    gLista: TJvDBGrid;
    gbNome: TGroupBox;
    dsAux: TDataSource;
    qryPesquisa: TADOQuery;
    EdtLoc: TJvDBSearchEdit;
    GroupBox1: TGroupBox;
    btnAdicionar: TcxButton;
    btnEditar: TcxButton;
    btnSelecionar: TcxButton;
    btnFechar: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    bFechar     : Boolean;
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPesquisaPadrao.FormActivate(Sender: TObject);
begin
  inherited;
    EdtLoc.setfocus;
    EdtLoc.text:='';
    qryPesquisa.Active := True;
end;

end.
