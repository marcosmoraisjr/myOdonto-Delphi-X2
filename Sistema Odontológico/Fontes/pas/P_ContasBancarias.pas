unit P_ContasBancarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, JvComponentBase, JvEnterTab,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Funcoes,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  cxButtons;

type
  TfrmPesquisaContasBancarias = class(TfrmPesquisaPadrao)
    qryPesquisaDESCRICAO: TStringField;
    qryPesquisaNROCONTA: TStringField;
    qryPesquisaID_CONTASBANCARIAS: TAutoIncField;
    qryPesquisaID_BANCOSPADRAO: TIntegerField;
    qryPesquisaID_FILIAL: TIntegerField;
    qryPesquisaID_CIDADE: TIntegerField;
    qryPesquisaVLRLIMITE: TFloatField;
    qryPesquisaDTAVCTO: TDateTimeField;
    qryPesquisaNROAGENCIA: TStringField;
    qryPesquisaGERENTE: TStringField;
    qryPesquisaATIVO: TBooleanField;
    qryPesquisaJUROSMORA: TFloatField;
    qryPesquisaACEITE: TBooleanField;
    qryPesquisaCODCEDENTE: TStringField;
    qryPesquisaLOCALPAGAMENTO: TStringField;
    qryPesquisaINSTRUCOES: TStringField;
    qryPesquisaCNPJ: TStringField;
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure CarregaSQL;
  end;

var
  frmPesquisaContasBancarias: TfrmPesquisaContasBancarias;

implementation

{$R *.dfm}

uses Main, C_ContasBancarias;

procedure TfrmPesquisaContasBancarias.btnAdicionarClick(Sender: TObject);
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

  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPesquisaContasBancarias.btnEditarClick(Sender: TObject);
begin
  inherited;
  if qryPesquisaID_CONTASBANCARIAS.AsString = '' then
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

  Application.CreateForm(TfrmCadContasBancarias, frmCadContasBancarias);
  frmCadContasBancarias.iIDConta := qryPesquisaID_CONTASBANCARIAS.AsInteger;
  frmCadContasBancarias.CarregaConta;
  frmCadContasBancarias.ShowModal;
  FreeAndNil(frmCadContasBancarias);

  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPesquisaContasBancarias.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod := qryPesquisaID_CONTASBANCARIAS.AsString;
  Close;
end;

procedure TfrmPesquisaContasBancarias.CarregaSQL;
begin
  With qryPesquisa do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID_CONTASBANCARIAS, ID_BANCOSPADRAO, ID_FILIAL, ID_CIDADE, DESCRICAO, VLRLIMITE, DTAVCTO, NROCONTA, NROAGENCIA, GERENTE, ATIVO, JUROSMORA,');
      SQL.Add('ACEITE, CODCEDENTE, LOCALPAGAMENTO, INSTRUCOES, CNPJ FROM CONTASBANCARIAS WHERE (ATIVO = 1)');
      SQL.Add('AND ID_FILIAL = :pIDFilial');
      Parameters.ParamByName('pIDFilial').Value := Empresa.ID;
      Open;
    End;
end;

procedure TfrmPesquisaContasBancarias.FormActivate(Sender: TObject);
begin
  inherited;
  CarregaSQL;
end;

procedure TfrmPesquisaContasBancarias.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  case aCol of
    0: Begin
      gbNome.Caption := 'Descri��o';
      EdtLoc.DataField := 'DESCRICAO';
    End;
    1: Begin
      gbNome.Caption := 'N� Conta';
      EdtLoc.DataField := 'NROCONTA';
    End;
  end;
end;

end.
