unit L_Fornecedores;

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
  TfrmListaFornecedores = class(TfrmListaPadrao)
    qryPadraoID_FORNECEDOR: TAutoIncField;
    qryPadraoNOME: TStringField;
    qryPadraoRAZAOSOCIAL: TStringField;
    qryPadraoCPFCNPJ: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoID_FILIAL: TIntegerField;
    qryPadraoID_CIDADE: TIntegerField;
    qryPadraoFISICA_JURIDICA: TIntegerField;
    qryPadraoATIVO: TBooleanField;
    qryPadraoRGIE: TStringField;
    qryPadraoDTANASCIMENTO: TDateTimeField;
    qryPadraoSEXO: TStringField;
    qryPadraoNUMERO: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCEP: TStringField;
    qryPadraoEMAIL: TStringField;
    qryPadraoCELULAR: TStringField;
    qryPadraoOBSERVACAO: TMemoField;
    qryPadraoCidade: TStringField;
    qryPadraoUF: TStringField;
    cbFiltro: TComboBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure cbAtivoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
    sOrderBy: String;
  public
    Procedure CarregaFornecedores;
  end;

var
  frmListaFornecedores: TfrmListaFornecedores;

implementation

{$R *.dfm}

uses C_Fornecedores;

procedure TfrmListaFornecedores.btnAdicionarClick(Sender: TObject);
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
  CarregaFornecedores;
end;

procedure TfrmListaFornecedores.btnEditarClick(Sender: TObject);
var
  sIDAux : String;
begin
  inherited;
  if qryPadraoID_FORNECEDOR.AsString = '' then
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

  sIDAux := qryPadraoID_FORNECEDOR.AsString;
  application.CreateForm(TfrmCadFornecedores, frmCadFornecedores);
  frmCadFornecedores.iIDFornecedor := qryPadraoID_FORNECEDOR.AsInteger;
  frmCadFornecedores.CarregaFornecedor;
  frmCadFornecedores.ShowModal;

  FreeAndNil(frmCadFornecedores);

  CarregaFornecedores;
  qryPadrao.Locate('ID_FORNECEDOR', sIDAux, []);
end;

procedure TfrmListaFornecedores.CarregaFornecedores;
begin
  With qryPadrao do
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
    SQL.Add(sOrderBy);
    Parameters.ParamByName('pID').Value := Empresa.ID;
    Parameters.ParamByName('pAtivo').Value := cbAtivo.Checked;
    Open;
  End;
end;

procedure TfrmListaFornecedores.cbAtivoClick(Sender: TObject);
begin
  // inherited;
  CarregaFornecedores;
end;

procedure TfrmListaFornecedores.FormActivate(Sender: TObject);
begin
  // inherited
end;

procedure TfrmListaFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  EdtPesquisa.DataField := 'NOME';
  GroupBox1.Caption := 'Nome Fantasia';
  sOrderBy :=
    'Order By FORNECEDOR.Nome, FORNECEDOR.ID_Fornecedor, FORNECEDOR.RazaoSocial';
  CarregaFornecedores;
end;

procedure TfrmListaFornecedores.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  case ACol of
    0:
      Begin
        EdtPesquisa.DataField := 'ID_Fornecedor';
        GroupBox1.Caption := 'Cod. Fornecedor';
        sOrderBy :=
          'Order By FORNECEDOR.ID_Fornecedor, FORNECEDOR.Nome, FORNECEDOR.RazaoSocial';
        CarregaFornecedores;
      End;
    1:
      Begin
        EdtPesquisa.DataField := 'NOME';
        GroupBox1.Caption := 'Nome Fantasia';
        sOrderBy :=
          'Order By FORNECEDOR.Nome, FORNECEDOR.ID_Fornecedor, FORNECEDOR.RazaoSocial';
        CarregaFornecedores;
      End;
    2:
      Begin
        EdtPesquisa.DataField := 'RAZAOSOCIAL';
        GroupBox1.Caption := 'Raz�o Social';
        sOrderBy :=
          'Order By FORNECEDOR.RazaoSocial, FORNECEDOR.ID_Fornecedor, FORNECEDOR.Nome';
        CarregaFornecedores;
      End;
    3:
      Begin
        EdtPesquisa.DataField := 'CPFCNPJ';
        GroupBox1.Caption := 'CPF/CNPJ';
        sOrderBy :=
          'Order By CPFCNPJ, FORNECEDOR.Nome, FORNECEDOR.ID_Fornecedor, FORNECEDOR.RazaoSocial';
        CarregaFornecedores;
      End;
    4:
      Begin
        EdtPesquisa.DataField := 'TELEFONE';
        GroupBox1.Caption := 'Telefone';
        sOrderBy :=
          'Order By TELEFONE, FORNECEDOR.Nome, FORNECEDOR.ID_Fornecedor, FORNECEDOR.RazaoSocial';
        CarregaFornecedores;
      End;

  end;
end;

end.
