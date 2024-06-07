unit P_Grupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, JvComponentBase, JvEnterTab,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, cxButtons, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Funcoes,
  JvExDBGrids, JvDBGrid;

type
  TfrmPGrupos = class(TfrmPesquisaPadrao)
    qryPesquisaID_GRUPO: TAutoIncField;
    qryPesquisaDESCRICAO: TStringField;
    procedure btnAdicionarClick(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FiltraPorClick(sGrupo : String);
  end;

var
  frmPGrupos: TfrmPGrupos;

implementation

{$R *.dfm}

uses C_Grupos, Main;

procedure TfrmPGrupos.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  AbreForm(TfrmCadGrupos, frmCadGrupos);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPGrupos.btnEditarClick(Sender: TObject);
var
  sIDAux : String;
begin
  inherited;
  if qryPesquisaID_GRUPO.AsString = '' then
    Begin
      Exit;
    End;

  sIDAux := qryPesquisaID_GRUPO.AsString;
  Application.CreateForm(TfrmCadGrupos, frmCadGrupos);
  frmCadGrupos.CarregaFiltros(qryPesquisaID_GRUPO.AsInteger);
  frmCadGrupos.ShowModal;
  FreeAndNil(frmCadGrupos);
  qryPesquisa.Close;
  qryPesquisa.Open;
  qryPesquisa.Locate('ID_GRUPO', sIDAux, []);
end;

procedure TfrmPGrupos.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod := qryPesquisaID_GRUPO.AsString;
  Close;
end;

procedure TfrmPGrupos.FiltraPorClick(sGrupo: String);
begin
  With qryPesquisa do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM GRUPO') ;
      SQL.Add(sGrupo);
      Open;
    End;
end;

procedure TfrmPGrupos.FormCreate(Sender: TObject);
begin
  inherited;
    gbNome.Caption := 'Descri��o';
    EdtLoc.DataField := 'DESCRICAO';
    FiltraPorClick('Order By ID_GRUPO');
end;

procedure TfrmPGrupos.gListaTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
  case aCol of
  0: Begin
    gbNome.Caption := 'Cod.';
    EdtLoc.DataField := 'ID_GRUPO';
    FiltraPorClick('Order By ID_GRUPO');
  End;
  1: Begin
    gbNome.Caption := 'Descri��o';
    EdtLoc.DataField := 'DESCRICAO';
    FiltraPorClick('Order By DESCRICAO, ID_GRUPO');
  End;
  end;
end;

end.
