unit L_Anamnese;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons, Funcoes, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, cxButtons, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmLAnmenese = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    gLista: TJvDBGrid;
    JvDBGrid1: TJvDBGrid;
    qryPesquisa: TADOQuery;
    dsPesquisa: TDataSource;
    qryPerguntas: TADOQuery;
    qryPerguntasID_PERGUNTASANAMNESE: TAutoIncField;
    qryPerguntasID_ANAMNESE: TIntegerField;
    qryPerguntasPERGUNTA: TStringField;
    qryPesquisaID_ANAMNESE: TAutoIncField;
    qryPesquisaDESCRICAO: TStringField;
    qryPesquisaDATA: TDateTimeField;
    dsPerguntas: TDataSource;
    qryPerguntasOBRIGATORIO: TBooleanField;
    btnSelecionar: TcxButton;
    btnAdicionar: TcxButton;
    btnEditar: TcxButton;
    btnFechar: TcxButton;
    procedure gListaCellClick(Column: TColumn);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure gListaDblClick(Sender: TObject);
  private
    Procedure CarregaAnamneses;
    Procedure CarregaPerguntas;
  public
    { Public declarations }
  end;

var
  frmLAnmenese: TfrmLAnmenese;

implementation

{$R *.dfm}

uses C_Anamnese, Main;

procedure TfrmLAnmenese.btnAdicionarClick(Sender: TObject);
begin
  inherited;

  if not Operador.AnamneseC then
    Begin
      application.MessageBox('Operador n�o tem permiss�o para cadastrar anamnese!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
      Exit;
    End;

  AbreForm(TfrmCadastroAnamnese, frmCadastroAnamnese);
  CarregaAnamneses;
  CarregaPerguntas;
end;

procedure TfrmLAnmenese.btnEditarClick(Sender: TObject);
begin
  inherited;

  if not Operador.AnamneseE then
    Begin
      application.MessageBox('Operador n�o tem permiss�o para editar uma anamnese!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
      Exit;
    End;

  if qryPesquisaID_ANAMNESE.AsString <> '' then
  Begin
    frmMain.bEditar := True;
    frmMain.sCod := qryPesquisaID_ANAMNESE.AsString;
    Application.CreateForm(TfrmCadastroAnamnese, frmCadastroAnamnese);
    frmCadastroAnamnese.ShowModal;
    FreeAndNil(frmCadastroAnamnese);

    CarregaAnamneses;
    CarregaPerguntas;
  End;
end;

procedure TfrmLAnmenese.btnFecharClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod := '';
  Close;
end;

procedure TfrmLAnmenese.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod := qryPesquisaID_ANAMNESE.AsString;
  Close;
end;

procedure TfrmLAnmenese.CarregaAnamneses;
begin
  With qryPesquisa do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ANAMNESE');
    SQL.Add('ORDER BY DATA, DESCRICAO');
    Open;
  End;
end;

procedure TfrmLAnmenese.CarregaPerguntas;
begin
  With qryPerguntas do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PERGUNTASANAMNESE');
    SQL.Add('WHERE ID_ANAMNESE = :pID');
    Parameters.ParamByName('pID').Value := qryPesquisaID_ANAMNESE.AsInteger;
    Open;
  End;
end;

procedure TfrmLAnmenese.FormCreate(Sender: TObject);
begin
  inherited;
  CarregaAnamneses;
  CarregaPerguntas;
end;

procedure TfrmLAnmenese.gListaCellClick(Column: TColumn);
begin
  inherited;
  if qryPesquisaID_ANAMNESE.AsString = '' then
  Begin
    Exit;
  End;

  With qryPerguntas do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PERGUNTASANAMNESE');
    SQL.Add('WHERE ID_ANAMNESE = :pID');
    Parameters.ParamByName('pID').Value := qryPesquisaID_ANAMNESE.AsInteger;
    Open;
  End;
end;

procedure TfrmLAnmenese.gListaDblClick(Sender: TObject);
begin
  inherited;
  btnEditarClick(Sender);
end;

end.
