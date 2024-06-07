unit L_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, Data.DB, Data.Win.ADODB,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, JvComponentBase, JvEnterTab,
  Vcl.StdCtrls, cxButtons, cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, Funcoes,
  Vcl.ExtCtrls;

type
  TfrmListaEstoque = class(TfrmListaPadrao)
    cxButton1: TcxButton;
    qryPadraoID_MATERIAIS: TAutoIncField;
    qryPadraoGrupo: TStringField;
    qryPadraoQTDE: TFloatField;
    qryPadraoQTDEMIN: TFloatField;
    qryPadraoDESCRICAO: TStringField;
    qryPadraoUNIDADE: TStringField;
    qryPadraoREFERENCIA: TStringField;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FiltraPorClick(sOrderBy : String);
  end;

var
  frmListaEstoque: TfrmListaEstoque;

implementation

{$R *.dfm}

uses C_Estoque;

procedure TfrmListaEstoque.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  AbreForm(TfrmCMateriais, frmCMateriais);
  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaEstoque.btnEditarClick(Sender: TObject);
var
  sIDAux : String;
begin
  inherited;
  if qryPadraoID_MATERIAIS.AsString = '' then
    Begin
      Exit;
    End;

  sIDAux := qryPadraoID_MATERIAIS.AsString;
  Application.CreateForm(TfrmCMateriais, frmCMateriais);
  frmCMateriais.CarregaFiltro(qryPadraoID_MATERIAIS.AsInteger);
  frmCMateriais.ShowModal;
  FreeAndNil(frmCMateriais);
  qryPadrao.Close;
  qryPadrao.Open;
  qryPadrao.Locate('ID_MATERIAIS', sIDAux, []);
end;

procedure TfrmListaEstoque.FiltraPorClick(sOrderBy: String);
begin
  With qryPadrao do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MATERIAIS.ID_MATERIAIS, GRUPO.DESCRICAO AS Grupo, MATERIAIS.QTDE, MATERIAIS.QTDEMIN, MATERIAIS.DESCRICAO,');
      SQL.Add('MATERIAIS.UNIDADE, MATERIAIS.REFERENCIA FROM MATERIAIS');
      SQL.Add('INNER JOIN GRUPO ON MATERIAIS.ID_GRUPO = GRUPO.ID_GRUPO');
      SQL.Add(sOrderBy);
      Open;
    End;
end;

procedure TfrmListaEstoque.FormActivate(Sender: TObject);
begin
  EdtPesquisa.DataField := 'DESCRICAO';
  FiltraPorClick('Order By MATERIAIS.ID_MATERIAIS, MATERIAIS.DESCRICAO');
  GroupBox1.Caption := 'Descri��o';
end;

procedure TfrmListaEstoque.gListaTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
    case aCol of
      0: Begin
        EdtPesquisa.DataField := 'ID_MATERIAIS';
        GroupBox1.Caption := 'Cod.';
        FiltraPorClick('Order By MATERIAIS.ID_MATERIAIS');
      End;

      1: Begin
        EdtPesquisa.DataField := 'DESCRICAO';
        GroupBox1.Caption := 'Descri��o';
        FiltraPorClick('Order By MATERIAIS.DESCRICAO, MATERIAIS.ID_MATERIAIS');
      End;

      2: Begin
        EdtPesquisa.DataField := 'UNIDADE';
        GroupBox1.Caption := 'Unidade';
        FiltraPorClick('Order By MATERIAIS.UNIDADE, MATERIAIS.DESCRICAO, MATERIAIS.ID_MATERIAIS');
      End;

      3: Begin
        EdtPesquisa.DataField := 'REFERENCIA';
        GroupBox1.Caption := 'Refer�ncia';
        FiltraPorClick('Order By MATERIAIS.REFERENCIA, MATERIAIS.DESCRICAO, MATERIAIS.ID_MATERIAIS');
      End;

      4: Begin
        EdtPesquisa.DataField := 'GRUPO';
        GroupBox1.Caption := 'Grupo';
        FiltraPorClick('Order By GRUPO.DESCRICAO, MATERIAIS.DESCRICAO, MATERIAIS.ID_MATERIAIS');
      End;
    end;
end;

end.
