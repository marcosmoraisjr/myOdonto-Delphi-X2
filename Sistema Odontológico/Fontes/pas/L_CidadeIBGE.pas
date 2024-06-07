unit L_CidadeIBGE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, JvComponentBase, JvEnterTab,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask,
  Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxButtons;

type
  TfrmPesquisaCidadeIBGE = class(TfrmPesquisaPadrao)
    qryPesquisaCODIBGE: TStringField;
    qryPesquisaNOME: TStringField;
    qryPesquisaUF: TStringField;
    Cod: TDBEdit;
    procedure gListaDblClick(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FiltraPorClick(OrderBy: String);
  public
    { Public declarations }
  end;

var
  frmPesquisaCidadeIBGE: TfrmPesquisaCidadeIBGE;

implementation

{$R *.dfm}

uses Main;

procedure TfrmPesquisaCidadeIBGE.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCodIBGE := Cod.Text;
  Close;
end;

procedure TfrmPesquisaCidadeIBGE.FiltraPorClick(OrderBy: String);
begin
  With qryPesquisa do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select * from MUNICIPIOIBGE');
    SQL.Add(OrderBy);
    Open;
  End;
end;

procedure TfrmPesquisaCidadeIBGE.FormCreate(Sender: TObject);
begin
  inherited;
  gbNome.Caption := 'Cidade';
  EdtLoc.DataField := 'NOME';
  FiltraPorClick('Order By NOME, UF, CODIBGE');
end;

procedure TfrmPesquisaCidadeIBGE.gListaDblClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPesquisaCidadeIBGE.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  case ACol of
    0:
      Begin
        gbNome.Caption := 'Cod. IBGE';
        EdtLoc.DataField := 'CODIBGE';
        FiltraPorClick('Order By CODIBGE, NOME, UF');
      End;
    1:
      Begin
        gbNome.Caption := 'Cidade';
        EdtLoc.DataField := 'NOME';
        FiltraPorClick('Order By NOME, UF, CODIBGE');
      End;
    2:
      Begin
        gbNome.Caption := 'UF';
        EdtLoc.DataField := 'UF';
        FiltraPorClick('Order By UF, NOME, CODIBGE');
      End;
  end;
end;

end.
