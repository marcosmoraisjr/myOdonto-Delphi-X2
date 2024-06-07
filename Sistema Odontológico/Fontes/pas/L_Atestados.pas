unit L_Atestados;

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
  TfrmListaAtestados = class(TfrmListaPadrao)
    qryPadraoPaciente: TStringField;
    qryPadraoDentista: TStringField;
    qryPadraoID_ATESTADOS: TAutoIncField;
    qryPadraoDATA: TDateTimeField;
    qryPadraoHORAINI: TStringField;
    qryPadraoFINSS: TStringField;
    qryPadraoOperador: TStringField;
    qryPadraoOBSERVACAO: TMemoField;
    qryPadraoID_PACIENTE: TIntegerField;
    qryPadraoID_MEDICO: TIntegerField;
    qryPadraoID_OPERADOR: TIntegerField;
    qryPadraoFINS: TIntegerField;
    qryPadraoHORAFIM: TStringField;
    btnImprimir: TcxButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaAtestados: TfrmListaAtestados;

implementation

{$R *.dfm}

uses F_Atestados, R_Atestados;

procedure TfrmListaAtestados.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  AbreForm(TfrmAtestado, frmAtestado);
  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaAtestados.btnEditarClick(Sender: TObject);
var
  sAux : String;
begin
  inherited;
  if qryPadraoID_ATESTADOS.AsString = '' then Exit;

  sAux := qryPadraoID_ATESTADOS.AsString;
  Application.CreateForm(TfrmAtestado, frmAtestado);
  frmAtestado.CarregaFiltros(qryPadraoID_ATESTADOS.AsInteger);
  frmAtestado.ShowModal;
  FreeAndNil(frmAtestado);
  qryPadrao.Close;
  qryPadrao.Open;
  qryPadrao.Locate('ID_ATESTADOS', sAux, []);
end;

procedure TfrmListaAtestados.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if qryPadraoID_ATESTADOS.AsString = '' then Exit;
  Application.CreateForm(TfrmRelAtestados, frmRelAtestados);
  frmRelAtestados.CarregaRelatorio(qryPadraoID_ATESTADOS.AsInteger);
  FreeAndNil(frmRelAtestados);

end;

procedure TfrmListaAtestados.FormActivate(Sender: TObject);
begin
  //inherited;
  qryPadrao.Close;
  qryPadrao.Open;
  qryPadrao.Active := True;
end;

end.
