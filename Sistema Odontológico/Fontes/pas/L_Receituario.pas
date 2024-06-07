unit L_Receituario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Data.DB, Data.Win.ADODB, JvComponentBase, JvEnterTab,
  cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Funcoes, Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxButtons;

type
  TfrmListaReceituario = class(TfrmListaPadrao)
    qryPadraoDentista: TStringField;
    qryPadraoID_RECEITUARIO: TAutoIncField;
    qryPadraoID_PACIENTE: TIntegerField;
    qryPadraoID_MEDICO: TIntegerField;
    qryPadraoDATA: TDateTimeField;
    qryPadraoDESCRICAO: TMemoField;
    qryPadraoPaciente: TStringField;
    btnImprimir: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FiltraPorClick(OrderBy: String);
  public
    { Public declarations }
  end;

var
  frmListaReceituario: TfrmListaReceituario;

implementation

{$R *.dfm}

uses F_Receituario, R_Receituario;

procedure TfrmListaReceituario.btnAdicionarClick(Sender: TObject);
begin
  inherited;

  if not Operador.ReceituarioC then
  Begin
    application.MessageBox
      ('Operador não tem permissão para emitir uma receita!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmReceituario, frmReceituario);
  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaReceituario.btnEditarClick(Sender: TObject);
begin
  inherited;

  if qryPadraoID_RECEITUARIO.AsString = '' then
  Begin
    Exit;
  End;

  if not Operador.ReceituarioE then
  Begin
    application.MessageBox
      ('Operador não tem permissão para editar uma receita!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  application.CreateForm(TfrmReceituario, frmReceituario);
  frmReceituario.IDReceituario := qryPadraoID_RECEITUARIO.AsInteger;
  frmReceituario.bEditar := True;
  frmReceituario.Carregar;
  frmReceituario.ShowModal;
  FreeAndNil(frmReceituario);

  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaReceituario.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if qryPadraoID_RECEITUARIO.AsString = '' then
  Begin
    Exit;
  End;

  application.CreateForm(TfrmRreceituario, frmRreceituario);
  frmRreceituario.iMedico := qryPadraoID_MEDICO.AsInteger;
  frmRreceituario.iPaciente := qryPadraoID_PACIENTE.AsInteger;
  frmRreceituario.CarregaDadosPaciente;
  frmRreceituario.CarregaReceituario(qryPadraoID_RECEITUARIO.AsInteger);

  if CFGGeral.ImpCabReceituario then
  Begin
    frmRreceituario.mmoDescricao.Lines.Clear;
    frmRreceituario.mmoDescricao.Lines.Text := qryPadraoDESCRICAO.AsString;
    frmRreceituario.RelatorioCab.ReportTitle := 'Receituário';
    frmRreceituario.RelatorioCab.Preview;
  End
  Else
  Begin
    frmRreceituario.mmoDescricaoSemCab.Lines.Clear;
    frmRreceituario.mmoDescricaoSemCab.Lines.Text :=
      qryPadraoDESCRICAO.AsString;
    frmRreceituario.RelatorioSemCab.Preview;
  End;
  FreeAndNil(frmRreceituario);
end;

procedure TfrmListaReceituario.FiltraPorClick(OrderBy: String);
begin
  With qryPadrao do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MEDICOS.NOME AS Dentista, RECEITUARIO.ID_RECEITUARIO, RECEITUARIO.ID_PACIENTE, RECEITUARIO.ID_MEDICO, RECEITUARIO.DATA,');
    SQL.Add('RECEITUARIO.DESCRICAO, PACIENTE.NOME AS Paciente FROM RECEITUARIO');
    SQL.Add('INNER JOIN PACIENTE ON RECEITUARIO.ID_PACIENTE = PACIENTE.ID_PACIENTE');
    SQL.Add('INNER JOIN MEDICOS ON RECEITUARIO.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add(OrderBy);
    Open;
  End;
end;

procedure TfrmListaReceituario.FormActivate(Sender: TObject);
begin
  // inherited;
  qryPadrao.Close;
  qryPadrao.Open;
  qryPadrao.Active := True;
end;

procedure TfrmListaReceituario.FormCreate(Sender: TObject);
begin
  inherited;
  EdtPesquisa.DataField := 'PACIENTE';
  GroupBox1.Caption := 'Paciente';
  FiltraPorClick('Order By ID_RECEITUARIO, ID_PACIENTE');
end;

procedure TfrmListaReceituario.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  case ACol of
    0:
      Begin
        EdtPesquisa.DataField := 'ID_RECEITUARIO';
        GroupBox1.Caption := 'Cod. Receituário';
        FiltraPorClick('Order By ID_RECEITUARIO');
      End;
    1:
      Begin
        EdtPesquisa.DataField := 'PACIENTE';
        GroupBox1.Caption := 'Paciente';
        FiltraPorClick('Order By ID_RECEITUARIO, ID_PACIENTE');
      End;
    2:
      Begin
        EdtPesquisa.DataField := 'DENTISTA';
        GroupBox1.Caption := 'Dentista';
        FiltraPorClick('Order By ID_MEDICO, ID_PACIENTE');
      End;
    3:
      Begin
        EdtPesquisa.DataField := 'Data';
        GroupBox1.Caption := 'Data';
        FiltraPorClick('Order By Data, ID_PACIENTE');
      End;
  end;
end;

end.
