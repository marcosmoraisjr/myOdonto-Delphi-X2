unit L_Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, JvAppHotKey, JvComponentBase,
  JvEnterTab, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Funcoes,
  Vcl.Mask, Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  cxButtons;

type
  TfrmListaCidade = class(TfrmPesquisaPadrao)
    qryPesquisaID_CIDADE: TAutoIncField;
    qryPesquisaNOME: TStringField;
    qryPesquisaUF: TStringField;
    qryPesquisaCODIBGE: TStringField;
    Cod: TDBEdit;
    qryAUx: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FiltraPorClick(OrderBy: String);
  public
    { Public declarations }
  end;

var
  frmListaCidade: TfrmListaCidade;

implementation

{$R *.dfm}

uses C_Cidade, Main;

procedure TfrmListaCidade.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  AbreForm(TfrmCadCidades, frmCadCidades);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmListaCidade.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmListaCidade.btnSelecionarClick(Sender: TObject);
begin
  inherited;
    frmMain.sCodCid := Cod.Text;
    Close;
end;

procedure TfrmListaCidade.FiltraPorClick(OrderBy: String);
begin
  With qryPesquisa do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CIDADE, NOME, UF, CODIBGE FROM CIDADE');
    SQL.Add(OrderBy);
    Open;
  End;
end;

procedure TfrmListaCidade.FormCreate(Sender: TObject);
begin
  inherited;
  EdtLoc.DataField := 'NOME';
  gbNome.Caption := 'Cidade';
  FiltraPorClick('ORDER BY NOME');
end;

procedure TfrmListaCidade.gListaTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
  case ACol of
    0:
      Begin
        EdtLoc.DataField := 'ID_CIDADE';
        gbNome.Caption := 'Cod. Cidade';
        FiltraPorClick('ORDER BY ID_CIDADE');
      End;
    1:
      Begin
        EdtLoc.DataField := 'NOME';
        gbNome.Caption := 'Cidade';
        FiltraPorClick('ORDER BY NOME');
      End;
    2:
      Begin
        EdtLoc.DataField := 'UF';
        gbNome.Caption := 'UF';
        FiltraPorClick('ORDER BY UF, NOME');
      End;
    3:
      Begin
        EdtLoc.DataField := 'CODIBGE';
        gbNome.Caption := 'Cod. IBGE';
        FiltraPorClick('ORDER BY CODIBGE');
      End;
  end;
end;



end.
