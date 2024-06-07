unit ListaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Data.Win.ADODB, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvComponentBase, JvEnterTab, JvExControls,
  JvXPCore, JvXPButtons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Menus, cxButtons;

type
  TfrmListaPadrao = class(TfrmPadrao)
    gLista: TJvDBGrid;
    GroupBox1: TGroupBox;
    EdtLoc: TEdit;
    qryPadrao: TADOQuery;
    dsPadrao: TDataSource;
    qryAux: TADOQuery;
    btnAtivo: TSpeedButton;
    btnLoc: TSpeedButton;
    EdtPesquisa: TJvDBSearchEdit;
    cbAtivo: TcxCheckBox;
    btnAdicionar: TcxButton;
    btnEditar: TcxButton;
    btnFechar: TcxButton;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAtivoClick(Sender: TObject);
    procedure btnLocClick(Sender: TObject);
    procedure EdtLocExit(Sender: TObject);
    procedure cbAtivoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    sAtivo : String;
  end;

var
  frmListaPadrao: TfrmListaPadrao;

implementation

{$R *.dfm}

procedure TfrmListaPadrao.btnAtivoClick(Sender: TObject);
begin
  inherited;
{  if btnAtivo.Caption = 'Ativos' then
    Begin
      btnAtivo.Caption := 'Inativos';
      sAtivo := '0';
    End
  Else
    Begin
      btnAtivo.Caption := 'Ativos';
      sAtivo := '1';
    End;
  btnLocClick(sender);  }
end;

procedure TfrmListaPadrao.btnEditarClick(Sender: TObject);
begin
  inherited;
{}
end;

procedure TfrmListaPadrao.BtnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmListaPadrao.btnLocClick(Sender: TObject);
begin
  inherited;

  if EdtLoc.Text <> '' then
    Begin
        With qryPadrao do
        Begin
          Filtered := False;
          Filter := 'Nome LIKE ' + QuotedStr(EdtLoc.Text+ '%') + ' AND ATIVO =' + QuotedStr(sAtivo);
          Filtered := True;
        end;
    End
  Else
    Begin
      qryPadrao.Filtered := False;
      qryPadrao.Filter := 'ATIVO =' + QuotedStr(sAtivo);
      qryPadrao.Filtered := True;
    End;
end;

procedure TfrmListaPadrao.cbAtivoClick(Sender: TObject);
begin
  inherited;
   If cbAtivo.Checked = True then
    Begin
      qryPadrao.Filtered := False;
      qryPadrao.Filter := 'ATIVO = 1';
      qryPadrao.Filtered := True;
    End
   Else
    Begin
      qryPadrao.Filtered := False;
      qryPadrao.Filter := 'ATIVO = 0';
      qryPadrao.Filtered := True;
    End;
end;

procedure TfrmListaPadrao.EdtLocExit(Sender: TObject);
begin
  inherited;
  btnLocClick(sender);
end;

procedure TfrmListaPadrao.FormActivate(Sender: TObject);
begin
  inherited;
    qryPadrao.Close;
    qryPadrao.Open;
    qryPadrao.Active := True;
  {  EdtLoc.setfocus;
    EdtLoc.text:='';    }
    sAtivo := '1';
      qryPadrao.Filtered := False;
      qryPadrao.Filter := 'ATIVO =' + QuotedStr(sAtivo);
      qryPadrao.Filtered := True;
end;

end.
