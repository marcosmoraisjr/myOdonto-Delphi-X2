unit P_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, JvComponentBase, JvEnterTab,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Funcoes, JvExDBGrids, JvDBGrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  cxButtons;

type
  TfrmPesquisaFornecedor = class(TfrmPesquisaPadrao)
    qryPesquisaID_FORNECEDOR: TAutoIncField;
    qryPesquisaNOME: TStringField;
    qryPesquisaRAZAOSOCIAL: TStringField;
    qryPesquisaID_FILIAL: TIntegerField;
    qryPesquisaID_CIDADE: TIntegerField;
    qryPesquisaFISICA_JURIDICA: TIntegerField;
    qryPesquisaATIVO: TBooleanField;
    qryPesquisaCPFCNPJ: TStringField;
    qryPesquisaRGIE: TStringField;
    qryPesquisaDTANASCIMENTO: TDateTimeField;
    qryPesquisaSEXO: TStringField;
    qryPesquisaNUMERO: TStringField;
    qryPesquisaENDERECO: TStringField;
    qryPesquisaBAIRRO: TStringField;
    qryPesquisaTELEFONE: TStringField;
    qryPesquisaCEP: TStringField;
    qryPesquisaEMAIL: TStringField;
    qryPesquisaCELULAR: TStringField;
    qryPesquisaOBSERVACAO: TMemoField;
    qryPesquisaCidade: TStringField;
    qryPesquisaUF: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaFornecedor: TfrmPesquisaFornecedor;

implementation

{$R *.dfm}

uses Main, C_Fornecedores;

procedure TfrmPesquisaFornecedor.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if not Operador.FornecedorC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar um fornecedor!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadFornecedores, frmCadFornecedores);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPesquisaFornecedor.btnEditarClick(Sender: TObject);
begin
  inherited;
  if qryPesquisaID_FORNECEDOR.AsString = '' then
  Begin
    Exit;
  End;

  if not Operador.FornecedorE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para editar um fornecedor!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
    Exit;
  End;

  application.CreateForm(TfrmCadFornecedores, frmCadFornecedores);
  frmCadFornecedores.iIDFornecedor := qryPesquisaID_FORNECEDOR.AsInteger;
  frmCadFornecedores.CarregaFornecedor;
  frmCadFornecedores.ShowModal;

  FreeAndNil(frmCadFornecedores);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPesquisaFornecedor.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod := qryPesquisaID_FORNECEDOR.AsString;
  Close;
end;

procedure TfrmPesquisaFornecedor.FormActivate(Sender: TObject);
begin
  inherited;
  With qryPesquisa do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT FORNECEDOR.ID_FORNECEDOR, FORNECEDOR.ID_FILIAL, FORNECEDOR.ID_CIDADE, FORNECEDOR.FISICA_JURIDICA, FORNECEDOR.ATIVO,');
      SQL.Add('FORNECEDOR.NOME, FORNECEDOR.RAZAOSOCIAL, FORNECEDOR.CPFCNPJ, FORNECEDOR.RGIE, FORNECEDOR.DTANASCIMENTO, FORNECEDOR.SEXO,');
      SQL.Add('FORNECEDOR.NUMERO, FORNECEDOR.ENDERECO, FORNECEDOR.BAIRRO, FORNECEDOR.TELEFONE, FORNECEDOR.CEP, FORNECEDOR.EMAIL, FORNECEDOR.CELULAR,');
      SQL.Add('FORNECEDOR.OBSERVACAO, CIDADE.NOME AS Cidade, CIDADE.UF FROM FORNECEDOR');
      SQL.Add('INNER JOIN CIDADE ON FORNECEDOR.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('WHERE ID_FILIAL = :pID');
      SQL.Add('AND ATIVO = :pAtivo');
      SQL.Add('Order By FORNECEDOR.Nome, FORNECEDOR.RazaoSocial, FORNECEDOR.ID_Fornecedor');
      Parameters.ParamByName('pID').Value := Empresa.ID;
      Parameters.ParamByName('pAtivo').Value := 1;
      Open;
    End;
end;

end.
