unit C_TituloAPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab, Funcoes,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadContaPagar = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtCodF: TJvComboEdit;
    EdtFornecedor: TEdit;
    Label2: TLabel;
    EdtHistorico: TEdit;
    EdtDocumento: TEdit;
    Label3: TLabel;
    EdtDtConta: TJvDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdtDtVencimento: TJvDateEdit;
    Label6: TLabel;
    EdtNroNota: TEdit;
    Label7: TLabel;
    EdtValor: TcxCurrencyEdit;
    Label8: TLabel;
    EdtDesconto: TcxCurrencyEdit;
    Label9: TLabel;
    EdtJuros: TcxCurrencyEdit;
    Label10: TLabel;
    EdtDtPagamento: TJvDateEdit;
    Label11: TLabel;
    EdtVlrPago: TcxCurrencyEdit;
    qryAux: TADOQuery;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodFButtonClick(Sender: TObject);
    procedure EdtCodFExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodFKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    iSituacao : Integer;
    bEditar : Boolean;
    rValorPago,
    rValorRestante : Real;
  public
    { Public declarations }
    iIDContaPagar : Integer;
    Procedure CarregaConta;
  end;

var
  frmCadContaPagar: TfrmCadContaPagar;

implementation

{$R *.dfm}

uses P_Fornecedor, Main;

procedure TfrmCadContaPagar.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadContaPagar.btnSalvarClick(Sender: TObject);
var
  rRestanteAux : Real;
begin
  inherited;

  if EdtCodF.Text = '' then
    Begin
      application.MessageBox('O Campo "Fornecedor" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if EdtHistorico.Text = '' then
    Begin
      application.MessageBox('O Campo "Hist�rico" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if EdtDtVencimento.Text = '  /  /    ' then
    Begin
      application.MessageBox('O Campo "Data Vencimento" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if EdtValor.Value = 0 then
    Begin
      application.MessageBox('O Campo "Valor" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  rRestanteAux := EdtValor.Value - EdtDesconto.Value + EdtJuros.Value;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTAPAGAR');
      SQL.Add('WHERE ID_CONTAPAGAR = :pID');
      Parameters.ParamByName('pID').Value := iIDContaPagar;
      Open;

      if bEditar then
        Begin
          Edit;
        End
      Else
        Begin
          Append;
          FieldByName('VALORRESTANTE').AsFloat := rRestanteAux;
          FieldByName('SITUACAO').AsInteger := 0;
        End;

      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
      FieldByName('ID_FORNECEDOR').AsString := EdtCodF.Text;
      FieldByName('HISTORICO').AsString := EdtHistorico.Text;
      FieldByName('NRONOTA').AsString := EdtNroNota.Text;
      FieldByName('DOCUMENTO').AsString := EdtDocumento.Text;
      FieldByName('DTACONTA').AsDateTime := EdtDtConta.Date;
      FieldByName('DTAVENCIMENTO').AsDateTime := EdtDtVencimento.Date;
      FieldByName('VALOR').AsFloat := EdtValor.Value;
      FieldByName('VALORJUROS').AsFloat := EdtJuros.Value;
      FieldByName('VALORDESCONTO').AsFloat := EdtDesconto.Value;
      Post;
    End;

  Close;

end;

procedure TfrmCadContaPagar.CarregaConta;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTAPAGAR');
      SQL.Add('WHERE ID_CONTAPAGAR = :pID');
      Parameters.ParamByName('pID').Value := iIDContaPagar;
      Open;

      EdtCodF.Text := FieldByName('ID_FORNECEDOR').AsString;
      EdtHistorico.Text := FieldByName('HISTORICO').AsString;
      EdtNroNota.Text := FieldByName('NRONOTA').AsString;
      EdtDocumento.Text := FieldByName('DOCUMENTO').AsString;
      EdtDtConta.Date := FieldByName('DTACONTA').AsDateTime;
      EdtDtVencimento.Date := FieldByName('DTAVENCIMENTO').AsDateTime;
      EdtDtPagamento.Text := FieldByName('DTAPAGAMENTO').AsString;
      EdtValor.Value := FieldByName('VALOR').AsFloat;
      EdtVlrPago.Value := FieldByName('VALORPAGO').AsFloat;
      EdtJuros.Value := FieldByName('VALORJUROS').AsFloat;
      EdtDesconto.Value := FieldByName('VALORDESCONTO').AsFloat;

      rValorRestante := EdtValor.Value - EdtVlrPago.Value - EdtDesconto.Value + EdtJuros.Value;

      EdtValor.Style.Color := clGradientInactiveCaption;
      EdtValor.Style.Font.Color := clNavy;
      EdtValor.Properties.ReadOnly := True;

      EdtJuros.Style.Color := clGradientInactiveCaption;
      EdtJuros.Style.Font.Color := clNavy;
      EdtJuros.Properties.ReadOnly := True;

      EdtDesconto.Style.Color := clGradientInactiveCaption;
      EdtDesconto.Style.Font.Color := clNavy;
      EdtDesconto.Properties.ReadOnly := True;

      EdtCodF.Color := clGradientInactiveCaption;
      EdtCodF.Font.Color := clNavy;
      EdtCodF.ReadOnly := True;
      EdtCodFExit(Self);

      bEditar := True;
    End;
end;

procedure TfrmCadContaPagar.EdtCodFButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaFornecedor, frmPesquisaFornecedor);
  frmPesquisaFornecedor.bFechar := True;
  frmPesquisaFornecedor.ShowModal;
  EdtCodF.Text := frmMain.sCod;
  EdtCodFExit(Sender);
  FreeAndNil(frmPesquisaFornecedor);
end;

procedure TfrmCadContaPagar.EdtCodFExit(Sender: TObject);
begin
  inherited;
  if EdtCodF.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM FORNECEDOR');
    SQL.Add('WHERE ID_FORNECEDOR = :pId');
    SQL.Add('AND ATIVO = 1');
    SQL.Add('AND ID_FILIAL = :pEmp');
    Parameters.ParamByName('pEmp').Value := Empresa.ID;
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodF.Text);
    Open;

    EdtFornecedor.Text := FieldByName('NOME').AsString;

    if EdtFornecedor.Text = '' then
    Begin
      EdtCodF.Text := '';
    End;
  End;
end;

procedure TfrmCadContaPagar.EdtCodFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadContaPagar.FormCreate(Sender: TObject);
begin
  inherited;
  bEditar := False;
  iIDContaPagar := 0;
end;

end.
