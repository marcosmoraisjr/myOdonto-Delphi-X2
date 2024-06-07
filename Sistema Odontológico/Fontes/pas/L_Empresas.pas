unit L_Empresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Data.DB, Data.Win.ADODB, JvComponentBase, JvEnterTab,
  cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Funcoes, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Menus,
  cxButtons;

type
  TfrmListaConsultorios = class(TfrmListaPadrao)
    qryPadraoID_EMPRESA: TAutoIncField;
    qryPadraoNOME: TStringField;
    qryPadraoRAZAOSOCIAL: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCELULAR: TStringField;
    qryPadraoCidade: TStringField;
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FiltraPorClick(OrderBy: String);
  public
    { Public declarations }
  end;

var
  frmListaConsultorios: TfrmListaConsultorios;

implementation

{$R *.dfm}

uses C_Empresa;
{ TfrmListaConsultorios }

procedure TfrmListaConsultorios.btnEditarClick(Sender: TObject);
var
  sIDAux : String;
begin
  inherited;
  if qryPadraoID_EMPRESA.AsString = '' then
  Begin
    Exit;
  End;

  Application.CreateForm(TfrmCadastroConsultorio, frmCadastroConsultorio);
  frmCadastroConsultorio.iIDEmpresa := qryPadraoID_EMPRESA.AsInteger;
  frmCadastroConsultorio.CarregaDados;
  frmCadastroConsultorio.ShowModal;
  FreeAndNil(frmCadastroConsultorio);
  sIDAux := qryPadraoID_EMPRESA.AsString;

  if Empresa.ID = qryPadraoID_EMPRESA.AsInteger then
    Begin
      CarregaCFGEmpresa(qryPadraoID_EMPRESA.AsInteger);
    End;

  qryPadrao.Close;
  qryPadrao.Open;
  qryPadrao.Locate('ID_EMPRESA', sIDAux , []);
end;

procedure TfrmListaConsultorios.FiltraPorClick(OrderBy: String);
begin
  With qryPadrao do
  Begin
    Close;
    SQL.Add('SELECT EMPRESA.ID_EMPRESA, EMPRESA.ID_FILIAL, EMPRESA.ID_CIDADE, EMPRESA.NOME, EMPRESA.RAZAOSOCIAL, EMPRESA.ENDERECO,');
    SQL.Add('EMPRESA.NUMERO, EMPRESA.BAIRRO, EMPRESA.CEP, EMPRESA.TELEFONE, EMPRESA.FAX, EMPRESA.CONTATO, EMPRESA.CNPJ,');
    SQL.Add('EMPRESA.IE, EMPRESA.EMAIL, EMPRESA.TIPO, EMPRESA.CELULAR, CIDADE.NOME AS Cidade FROM EMPRESA');
    SQL.Add('INNER JOIN CIDADE ON EMPRESA.ID_CIDADE = CIDADE.ID_CIDADE');
    SQL.Add(OrderBy);
    Open;
  End;
end;

procedure TfrmListaConsultorios.FormActivate(Sender: TObject);
begin
  EdtPesquisa.DataField := 'NOME';
  GroupBox1.Caption := 'Nome';
  FiltraPorClick('Order By EMPRESA.NOME');
end;

procedure TfrmListaConsultorios.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  case ACol of
    0:
      Begin
        EdtPesquisa.DataField := 'ID_EMPRESA';
        GroupBox1.Caption := 'Filial';
        FiltraPorClick('Order By EMPRESA.ID_EMPRESA');
      End;

    1:
      Begin
        EdtPesquisa.DataField := 'NOME';
        GroupBox1.Caption := 'Nome';
        FiltraPorClick('Order By EMPRESA.NOME');
      End;

    2:
      Begin
        EdtPesquisa.DataField := 'RAZAOSOCIAL';
        GroupBox1.Caption := 'Raz�o Social';
        FiltraPorClick('Order By EMPRESA.RAZAOSOCIAL');
      End;

    3:
      Begin
        EdtPesquisa.DataField := 'TELEFONE';
        GroupBox1.Caption := 'Telefone';
        FiltraPorClick('Order By EMPRESA.TELEFONE, EMPRESA.NOME');
      End;

    4:
      Begin
        EdtPesquisa.DataField := 'CELULAR';
        GroupBox1.Caption := 'Celular';
        FiltraPorClick('Order By EMPRESA.CELULAR, EMPRESA.NOME');
      End;

    5:
      Begin
        EdtPesquisa.DataField := 'CIDADE';
        GroupBox1.Caption := 'Cidade';
        FiltraPorClick('Order By CIDADE, EMPRESA.NOME');
      End;

  end;
end;

end.
