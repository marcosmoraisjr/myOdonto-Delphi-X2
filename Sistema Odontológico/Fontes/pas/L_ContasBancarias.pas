unit L_ContasBancarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Data.DB, Data.Win.ADODB, JvComponentBase, JvEnterTab,
  cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Funcoes,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Menus, cxButtons;

type
  TfrmListaContasBancarias = class(TfrmListaPadrao)
    qryPadraoID_CONTASBANCARIAS: TAutoIncField;
    qryPadraoDESCRICAO: TStringField;
    qryPadraoVLRLIMITE: TFloatField;
    qryPadraoDTAVCTO: TDateTimeField;
    qryPadraoNROCONTA: TStringField;
    qryPadraoNROAGENCIA: TStringField;
    qryPadraoGERENTE: TStringField;
    qryPadraoID_BANCOSPADRAO: TIntegerField;
    qryPadraoID_FILIAL: TIntegerField;
    qryPadraoID_CIDADE: TIntegerField;
    qryPadraoATIVO: TBooleanField;
    qryPadraoJUROSMORA: TFloatField;
    qryPadraoACEITE: TBooleanField;
    qryPadraoCODCEDENTE: TStringField;
    qryPadraoLOCALPAGAMENTO: TStringField;
    qryPadraoINSTRUCOES: TStringField;
    qryPadraoCNPJ: TStringField;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    sOrderBy : String;
    Procedure CarregaFiltros;
  public
    { Public declarations }
  end;

var
  frmListaContasBancarias: TfrmListaContasBancarias;

implementation

{$R *.dfm}

uses C_ContasBancarias;

procedure TfrmListaContasBancarias.btnAdicionarClick(Sender: TObject);
begin
  inherited;

  if not Operador.BancoC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar uma conta banc�ria!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadContasBancarias, frmCadContasBancarias);
  CarregaFiltros;
end;

procedure TfrmListaContasBancarias.btnEditarClick(Sender: TObject);
var
  sIDAux : String;
begin
  inherited;
  if qryPadraoID_CONTASBANCARIAS.AsString = '' then
    Begin
      Exit;
    End;

  if not Operador.BancoC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para editar uma conta banc�ria!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  sIDAux := qryPadraoID_CONTASBANCARIAS.AsString;
  Application.CreateForm(TfrmCadContasBancarias, frmCadContasBancarias);
  frmCadContasBancarias.iIDConta := qryPadraoID_CONTASBANCARIAS.AsInteger;
  frmCadContasBancarias.CarregaConta;
  frmCadContasBancarias.ShowModal;
  FreeAndNil(frmCadContasBancarias);
  CarregaFiltros;
  qryPadrao.Locate('ID_CONTASBANCARIAS', sIDAux, []);
end;

procedure TfrmListaContasBancarias.CarregaFiltros();
begin
  With qryPadrao do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE ATIVO = :pAtivo');
      SQL.Add('AND ID_FILIAL = :pFilial');
      SQL.Add(sOrderBy);
      Parameters.ParamByName('pAtivo').Value := cbAtivo.Checked;
      Parameters.ParamByName('pFIlial').Value := Empresa.ID;
      Open;
    End;
end;

procedure TfrmListaContasBancarias.FormActivate(Sender: TObject);
begin
  inherited;
  sOrderBy := 'Order by DESCRICAO, ID_CONTASBANCARIAS';
  CarregaFiltros;
end;

procedure TfrmListaContasBancarias.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
    if ACol = 0 then
      Begin
        GroupBox1.Caption := 'C�digo';
        EdtPesquisa.DataField := 'ID_CONTASBANCARIAS';
        sOrderBy := 'Order by ID_CONTASBANCARIAS, DESCRICAO';
        CarregaFiltros;
      End;

    if ACol = 1 then
      Begin
        GroupBox1.Caption := 'Descri��o';
        EdtPesquisa.DataField := 'DESCRICAO';
        sOrderBy := 'Order by DESCRICAO, ID_CONTASBANCARIAS';
        CarregaFiltros;
     End;

    if ACol = 3 then
      Begin
        GroupBox1.Caption := 'Data Vencimento';
        EdtPesquisa.DataField := 'DTAVCTO';
        sOrderBy := 'Order by DTAVCTO, DESCRICAO, ID_CONTASBANCARIAS';
        CarregaFiltros;
      End;

    if ACol = 4 then
      Begin
        GroupBox1.Caption := 'N�mero da Conta';
        EdtPesquisa.DataField := 'NROCONTA';
        sOrderBy := 'Order by NROCONTA, DESCRICAO, ID_CONTASBANCARIAS';
        CarregaFiltros;
     End;

    if ACol = 5 then
      Begin
        GroupBox1.Caption := 'N�mero da Ag�ncia';
        EdtPesquisa.DataField := 'NROAGENCIA';
        sOrderBy := 'Order by NROAGENCIA, DESCRICAO, ID_CONTASBANCARIAS';
        CarregaFiltros;
      End;

    if ACol = 6 then
      Begin
        GroupBox1.Caption := 'Gerente';
        EdtPesquisa.DataField := 'GERENTE';
        sOrderBy := 'Order by GERENTE, DESCRICAO, ID_CONTASBANCARIAS';
        CarregaFiltros;
     End;
end;

end.
