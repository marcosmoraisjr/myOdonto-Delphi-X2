unit P_BancosPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, Data.DB, JvComponentBase,
  JvEnterTab, Data.Win.ADODB, Vcl.StdCtrls, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinsDefaultPainters, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, cxButtons;

type
  TfrmBancosPadrao = class(TfrmPesquisaPadrao)
    qryPesquisaCODIGO: TStringField;
    qryPesquisaNOME: TStringField;
    qryPesquisaID_BANCOSPADRAO: TAutoIncField;
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancosPadrao: TfrmBancosPadrao;

implementation

{$R *.dfm}

uses Main;

procedure TfrmBancosPadrao.btnSelecionarClick(Sender: TObject);
begin
  inherited;
    frmMain.sCod := qryPesquisaID_BANCOSPADRAO.AsString;
    Close;
end;

procedure TfrmBancosPadrao.gListaTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
    if ACol = 0 then
      Begin
        gbNome.Caption := 'C�digo';
        EdtLoc.DataField := 'CODIGO';
      End;

    if ACol = 1 then
      Begin
        gbNome.Caption := 'Nome';
        EdtLoc.DataField := 'NOME';
     End;
end;

end.
