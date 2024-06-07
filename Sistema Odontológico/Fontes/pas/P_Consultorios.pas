unit P_Consultorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, JvComponentBase, JvEnterTab,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Funcoes, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  cxButtons;

type
  TfrmPesquisaConsultorio = class(TfrmPesquisaPadrao)
    qryPesquisaID_EMPRESA: TAutoIncField;
    qryPesquisaNOME: TStringField;
    qryPesquisaRAZAOSOCIAL: TStringField;
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaConsultorio: TfrmPesquisaConsultorio;

implementation

{$R *.dfm}

uses Main, C_Empresa;

procedure TfrmPesquisaConsultorio.btnEditarClick(Sender: TObject);
begin
  inherited;
  if qryPesquisaID_EMPRESA.AsString = '' then
  Begin
    Exit;
  End;

  Application.CreateForm(TfrmCadastroConsultorio, frmCadastroConsultorio);
  frmCadastroConsultorio.iIDEmpresa := qryPesquisaID_EMPRESA.AsInteger;
  frmCadastroConsultorio.CarregaDados;
  frmCadastroConsultorio.ShowModal;
  FreeAndNil(frmCadastroConsultorio);

  if Empresa.ID = qryPesquisaID_EMPRESA.AsInteger then
    Begin
      CarregaCFGEmpresa(qryPesquisaID_EMPRESA.AsInteger);
    End;

  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPesquisaConsultorio.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod := qryPesquisaID_EMPRESA.AsString;
  Close;
end;

procedure TfrmPesquisaConsultorio.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  case aCol of
  0: Begin
    gbNome.Caption := 'Filial';
    EdtLoc.DataField := 'ID_EMPRESA';
  End;
  1: Begin
    gbNome.Caption := 'Nome Fantasia';
    EdtLoc.DataField := 'NOME';
  End;
  2: Begin
    gbNome.Caption := 'Razão Social';
    EdtLoc.DataField := 'RAZAOSOCIAL';
  End;

  end;
end;

end.
