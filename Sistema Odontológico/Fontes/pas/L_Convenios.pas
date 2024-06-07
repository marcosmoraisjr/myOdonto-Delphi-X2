unit L_Convenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, JvComponentBase, JvEnterTab,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask, Funcoes,
  Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxButtons;

type
  TfrmListaConvenios = class(TfrmPesquisaPadrao)
    qryAUx: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    Cod: TDBEdit;
    qryPesquisaREGISTROANS: TStringField;
    qryPesquisaNOMETABELA: TStringField;
    qryPesquisaNOME: TStringField;
    qryPesquisaID_CONVENIO: TAutoIncField;
    procedure btnFecharClick(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FiltraPorClick(OrderBy : String);
  public

  end;

var
  frmListaConvenios: TfrmListaConvenios;

implementation

{$R *.dfm}

uses C_Convenio, Main;

procedure TfrmListaConvenios.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if Not Operador.ConveniosC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar um convenio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  frmMain.sCod := '0';
  AbreForm(TfrmCadConvenio, frmCadConvenio);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmListaConvenios.btnEditarClick(Sender: TObject);
begin
  inherited;
  if Not Operador.ConveniosE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para editar convenio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryPesquisaID_CONVENIO.AsString = '' then
    Begin
      Exit;
    End;

  frmMain.sCod    := qryPesquisaID_CONVENIO.AsString;
  AbreForm(TfrmCadConvenio, frmCadConvenio);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmListaConvenios.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmListaConvenios.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  if Cod.Text <> '' then
    Begin
      frmMain.iCodConvenio := StrToInt(Cod.Text);
      Close;
    End;
end;

procedure TfrmListaConvenios.FiltraPorClick(OrderBy: String);
begin
  With qryPesquisa do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONVENIOS');
      SQL.Add(OrderBy);
      Open;
    End;
end;

procedure TfrmListaConvenios.FormCreate(Sender: TObject);
begin
  inherited;
    EdtLoc.DataField := 'NOME';
    gbNome.Caption := 'Conv�nio';
    FiltraPorClick('Order By NOME, ID_CONVENIO');
end;

procedure TfrmListaConvenios.gListaTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
  case aCol of
  0: Begin
    EdtLoc.DataField := 'ID_CONVENIO';
    gbNome.Caption := 'Cod. Conv�nio';
    FiltraPorClick('Order By ID_CONVENIO');
  End;
  1: Begin
    EdtLoc.DataField := 'NOME';
    gbNome.Caption := 'Conv�nio';
    FiltraPorClick('Order By NOME, ID_CONVENIO');
  End;
  2: Begin
    EdtLoc.DataField := 'REGISTROANS';
    gbNome.Caption := 'Registro ANS';
    FiltraPorClick('Order By REGISTROANS, NOME, ID_CONVENIO');
  End;
  3: Begin
    EdtLoc.DataField := 'NOMETABELA';
    gbNome.Caption := 'Tabela de Refer�ncia';
    FiltraPorClick('Order By NOMETABELA, NOME, ID_CONVENIO');
  End;
  end;
end;

end.
