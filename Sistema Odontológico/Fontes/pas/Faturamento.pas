unit Faturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, cxTextEdit, cxCurrencyEdit, JvExControls, JvXPCore,
  JvXPButtons, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, JvToolEdit, Vcl.Mask, JvExMask, JvSpin, Data.DB, Data.Win.ADODB,
  Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmRecebimento = class(TfrmPadrao)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblTotal: TLabel;
    lblRecebido: TLabel;
    lblRestante: TLabel;
    GroupBox1: TGroupBox;
    btnAvista: TJvXPButton;
    btnAprazo: TJvXPButton;
    rgAVista: TGroupBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    EdtVlVista: TcxCurrencyEdit;
    rgAprazo: TGroupBox;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    JvDBUltimGrid3: TJvDBUltimGrid;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnChequeAvista: TJvXPButton;
    rgChequeAVista: TGroupBox;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    EdtCodBCA: TJvComboEdit;
    EdtBancoCA: TEdit;
    Label8: TLabel;
    EdtNomeCA: TEdit;
    EdtNroContaCA: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    EdtAgenciaCA: TEdit;
    Label11: TLabel;
    EdtNumeroCA: TEdit;
    Label12: TLabel;
    EdtCPFCA: TMaskEdit;
    Label13: TLabel;
    EdtTelCA: TMaskEdit;
    Label14: TLabel;
    EdtValorCA: TcxCurrencyEdit;
    Label15: TLabel;
    EdtDataBonificacaoCA: TJvDateEdit;
    btnChequePreDatado: TJvXPButton;
    rgChequePredatado: TGroupBox;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    GroupBox8: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EdtCodBCP: TJvComboEdit;
    EdtBancoCP: TEdit;
    EdtNomeCP: TEdit;
    EdtNroContaCP: TEdit;
    EdtAgenciaCP: TEdit;
    EdtNumeroCP: TEdit;
    EdtCPFCP: TMaskEdit;
    EdtTelCP: TMaskEdit;
    EdtValorCP: TcxCurrencyEdit;
    EdtDataCP: TJvDateEdit;
    btnDepositoBancario: TJvXPButton;
    rgDepositoBancario: TGroupBox;
    GroupBox9: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    EdtCodBDB: TJvComboEdit;
    EdtBancoDB: TEdit;
    Label34: TLabel;
    EdtValorDB: TcxCurrencyEdit;
    btnCartaoCredito: TJvXPButton;
    btnCartaoDebito: TJvXPButton;
    rgCartaoCredito: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    GroupBox10: TGroupBox;
    Label30: TLabel;
    JvComboEdit1: TJvComboEdit;
    Edit1: TEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label31: TLabel;
    EdtQtdeParcelas: TJvSpinEdit;
    Label32: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    rgCartaoDebito: TGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    GroupBox11: TGroupBox;
    Label38: TLabel;
    JvComboEdit2: TJvComboEdit;
    Edit2: TEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    qryParcelas: TADOQuery;
    qryParcelasDataLcto: TDateTimeField;
    qryParcelasNroDocumento: TStringField;
    qryParcelasDocumento: TStringField;
    qryParcelasDataVcto: TDateTimeField;
    qryParcelasVlrReceber: TFloatField;
    dsParcelas: TDataSource;
    qryAux: TADOQuery;
    procedure btnAvistaClick(Sender: TObject);
    procedure btnAprazoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnChequeAvistaClick(Sender: TObject);
    procedure btnChequePreDatadoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDepositoBancarioClick(Sender: TObject);
    procedure btnCartaoCreditoClick(Sender: TObject);
    procedure btnCartaoDebitoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtValorCPExit(Sender: TObject);
    procedure EdtValorCAExit(Sender: TObject);
    procedure EdtVlVistaExit(Sender: TObject);
    procedure EdtCodBCPButtonClick(Sender: TObject);
    procedure EdtCodBCPExit(Sender: TObject);
    procedure EdtCodBCAButtonClick(Sender: TObject);
    procedure EdtCodBCAExit(Sender: TObject);
    procedure EdtCodBCAKeyPress(Sender: TObject; var Key: Char);
    procedure JvComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure JvComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBDBKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBCPKeyPress(Sender: TObject; var Key: Char);
  private

  public
    bFaturamento,
    bBaixa : Boolean;
    rValorPago,
    rPago,
    rValorPagoProcedimento,
    rValor,
    rDesconto,
    rJuros,
    rRestante : Double;
    iIDPaciente,
    iCondi��o : Integer;
    Function TipoPagamento : Integer;
    Procedure CalculaRestante;
  end;

var
  frmRecebimento: TfrmRecebimento;

implementation

{$R *.dfm}

uses Main, P_ContasBancarias, P_BancosPadrao, R_Recibo;

procedure TfrmRecebimento.btnAprazoClick(Sender: TObject);
begin
  inherited;

  iCondi��o := 0;

  if not btnAprazo.Down then
    Begin
      btnAprazo.Down := True;
      btnAvista.Down := False;
      btnChequeAvista.Down := False;
      btnChequePreDatado.Down := False;
      btnDepositoBancario.Down := False;
      btnCartaoCredito.Down := False;
      btnCartaoDebito.Down := False;

      rgAprazo.Visible := True;
      rgAVista.Visible := False;
      rgChequeAVista.Visible := False;
      rgChequePredatado.Visible := False;
      rgDepositoBancario.Visible := False;
      rgCartaoCredito.Visible := False;
      rgCartaoDebito.Visible := False;

      btnAvista.Font.Color := clNavy;
      btnAprazo.Font.Color := clBlue;
      btnChequeAvista.Font.Color := clNavy;
      btnChequePreDatado.Font.Color := clNavy;
      btnDepositoBancario.Font.Color := clNavy;
      btnCartaoCredito.Font.Color := clNavy;
      btnCartaoDebito.Font.Color := clNavy;
    End;
end;

procedure TfrmRecebimento.btnAvistaClick(Sender: TObject);
begin
  inherited;

  iCondi��o := 1;

  if not btnAvista.Down then
    Begin
      btnAvista.Down := True;
      btnAprazo.Down := False;
      btnChequeAvista.Down := False;
      btnChequePreDatado.Down := False;
      btnDepositoBancario.Down := False;
      btnCartaoCredito.Down := False;
      btnCartaoDebito.Down := False;

      rgAVista.Visible := True;
      rgAprazo.Visible := False;
      rgChequeAVista.Visible := False;
      rgChequePredatado.Visible := False;
      rgDepositoBancario.Visible := False;
      rgCartaoCredito.Visible := False;
      rgCartaoDebito.Visible := False;

      btnAvista.Font.Color := clBlue;
      btnAprazo.Font.Color := clNavy;
      btnChequeAvista.Font.Color := clNavy;
      btnChequePreDatado.Font.Color := clNavy;
      btnDepositoBancario.Font.Color := clNavy;
      btnCartaoCredito.Font.Color := clNavy;
      btnCartaoDebito.Font.Color := clNavy;
    End;
end;

procedure TfrmRecebimento.btnCartaoCreditoClick(Sender: TObject);
begin
  inherited;
      btnAprazo.Down := False;
      btnAvista.Down := False;
      btnChequeAvista.Down := False;
      btnChequePreDatado.Down := False;
      btnDepositoBancario.Down := False;
      btnCartaoCredito.Down := True;
      btnCartaoDebito.Down := False;

      rgAprazo.Visible := False;
      rgAVista.Visible := False;
      rgChequeAVista.Visible := False;
      rgChequePredatado.Visible := False;
      rgDepositoBancario.Visible := False;
      rgCartaoCredito.Visible := True;
      rgCartaoDebito.Visible := False;

      btnAvista.Font.Color := clNavy;
      btnAprazo.Font.Color := clNavy;
      btnChequeAvista.Font.Color := clNavy;
      btnChequePreDatado.Font.Color := clNavy;
      btnDepositoBancario.Font.Color := clNavy;
      btnCartaoCredito.Font.Color := clBlue;
      btnCartaoDebito.Font.Color := clNavy;
end;

procedure TfrmRecebimento.btnCartaoDebitoClick(Sender: TObject);
begin
  inherited;
      btnAprazo.Down := False;
      btnAvista.Down := False;
      btnChequeAvista.Down := False;
      btnChequePreDatado.Down := False;
      btnDepositoBancario.Down := False;
      btnCartaoCredito.Down := False;
      btnCartaoDebito.Down := True;

      rgAprazo.Visible := False;
      rgAVista.Visible := False;
      rgChequeAVista.Visible := False;
      rgChequePredatado.Visible := False;
      rgDepositoBancario.Visible := False;
      rgCartaoCredito.Visible := False;
      rgCartaoDebito.Visible := True;

      btnAvista.Font.Color := clNavy;
      btnAprazo.Font.Color := clNavy;
      btnChequeAvista.Font.Color := clNavy;
      btnChequePreDatado.Font.Color := clNavy;
      btnDepositoBancario.Font.Color := clNavy;
      btnCartaoCredito.Font.Color := clNavy;
      btnCartaoDebito.Font.Color := clBlue;
end;

procedure TfrmRecebimento.btnChequeAvistaClick(Sender: TObject);
begin
  inherited;

    iCondi��o := 2;

      btnAprazo.Down := False;
      btnAvista.Down := False;
      btnChequeAvista.Down := True;
      btnChequePreDatado.Down := False;
      btnDepositoBancario.Down := False;
      btnCartaoCredito.Down := False;
      btnCartaoDebito.Down := False;

      rgAprazo.Visible := False;
      rgAVista.Visible := False;
      rgChequeAVista.Visible := True;
      rgChequePredatado.Visible := False;
      rgDepositoBancario.Visible := False;
      rgCartaoCredito.Visible := False;
      rgCartaoDebito.Visible := False;

      btnAvista.Font.Color := clNavy;
      btnAprazo.Font.Color := clNavy;
      btnChequeAvista.Font.Color := clBlue;
      btnChequePreDatado.Font.Color := clNavy;
      btnDepositoBancario.Font.Color := clNavy;
      btnCartaoCredito.Font.Color := clNavy;
      btnCartaoDebito.Font.Color := clNavy;
end;

procedure TfrmRecebimento.btnChequePreDatadoClick(Sender: TObject);
begin
  inherited;

      iCondi��o := 3;

      btnAprazo.Down := False;
      btnAvista.Down := False;
      btnChequeAvista.Down := False;
      btnChequePreDatado.Down := True;
      btnDepositoBancario.Down := False;
      btnCartaoCredito.Down := False;
      btnCartaoDebito.Down := False;

      rgAprazo.Visible := False;
      rgAVista.Visible := False;
      rgChequeAVista.Visible := False;
      rgChequePredatado.Visible := True;
      rgDepositoBancario.Visible := False;
      rgCartaoCredito.Visible := False;
      rgCartaoDebito.Visible := False;

      btnAvista.Font.Color := clNavy;
      btnAprazo.Font.Color := clNavy;
      btnChequeAvista.Font.Color := clNavy;
      btnChequePreDatado.Font.Color := clBlue;
      btnDepositoBancario.Font.Color := clNavy;
      btnCartaoCredito.Font.Color := clNavy;
      btnCartaoDebito.Font.Color  := clNavy;
end;

procedure TfrmRecebimento.btnDepositoBancarioClick(Sender: TObject);
begin
  inherited;
      btnAprazo.Down := False;
      btnAvista.Down := False;
      btnChequeAvista.Down := False;
      btnChequePreDatado.Down := False;
      btnDepositoBancario.Down := True;
      btnCartaoCredito.Down := False;
      btnCartaoDebito.Down := False;

      rgAprazo.Visible := False;
      rgAVista.Visible := False;
      rgChequeAVista.Visible := False;
      rgChequePredatado.Visible := False;
      rgDepositoBancario.Visible := True;
      rgCartaoCredito.Visible := False;
      rgCartaoDebito.Visible := False;

      btnAvista.Font.Color := clNavy;
      btnAprazo.Font.Color := clNavy;
      btnChequeAvista.Font.Color := clNavy;
      btnChequePreDatado.Font.Color := clNavy;
      btnDepositoBancario.Font.Color := clBlue;
      btnCartaoCredito.Font.Color := clNavy;
      btnCartaoDebito.Font.Color := clNavy;
end;

procedure TfrmRecebimento.btnFecharClick(Sender: TObject);
begin
  inherited;
  frmMain.bOK := False;
  Close;
end;

procedure TfrmRecebimento.btnSalvarClick(Sender: TObject);
var
  rTotal : Double;
begin
  inherited;
  frmMain.bOK := True;

  if (EdtValorCP.Value > 0) And (EdtCodBCP.Text = '') then
    Begin
      application.MessageBox('Para Pagamentos com Cheque Pr�-Datado o campo "Banco" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if (EdtValorCP.Value > 0) And (EdtNomeCP.Text = '') then
    Begin
      application.MessageBox('Para Pagamentos com Cheque Pr�-Datado o campo "Nome" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if (EdtValorCA.Value > 0) And (EdtCodBCA.Text = '') then
    Begin
      application.MessageBox('Para Pagamentos com Cheque � Vista o campo "Banco" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if (EdtValorCA.Value > 0) And (EdtNomeCA.Text = '') then
    Begin
      application.MessageBox('Para Pagamentos com Cheque � Vista o campo "Nome" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

    if bBaixa then
      Begin
        rTotal := rValor + rJuros;
        rTotal := rTotal - rDesconto;
        rRestante := rTotal - rPago;
        rRestante := rRestante - EdtVlVista.Value - EdtValorCA.Value - EdtValorCP.Value;
        rValorPago := EdtVlVista.Value + EdtValorCA.Value + EdtValorCP.Value;
        rPago := rPago + rValorPago;
        Close;
      End;

    if bFaturamento then
      Begin
        case iCondi��o of
          0: rValor := 1;
          1: rValor := EdtVlVista.Value;
          2: rValor := EdtValorCA.Value;
          3: rValor := EdtValorCP.Value;

        end;
        Close;
      End;

end;

procedure TfrmRecebimento.CalculaRestante;
var
  rRestanteAux,
  rTotal : Double;
begin
  rTotal := rValor + rJuros;
  rTotal := rTotal - rDesconto;
  rTotal := rTotal - rValorPagoProcedimento;

  lblTotal.Caption := FormatFloat('#,##0.00', rTotal);
  lblRecebido.Caption := FormatFloat('#,##0.00', rPago);
  rRestanteAux := rTotal - rPago;
  rRestanteAux := rRestanteAux - EdtVlVista.Value - EdtValorCA.Value - EdtValorCP.Value;
  lblRestante.Caption := FormatFloat('#,##0.00', rRestanteAux);
end;

procedure TfrmRecebimento.EdtCodBCAButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmBancosPadrao, frmBancosPadrao);
  frmBancosPadrao.bFechar := True;
  frmBancosPadrao.ShowModal;
  EdtCodBCA.Text := frmMain.sCod;
  EdtCodBCAExit(Sender);
  FreeAndNil(frmBancosPadrao);
end;

procedure TfrmRecebimento.EdtCodBCAExit(Sender: TObject);
begin
  inherited;
  if EdtCodBCA.Text = '' then
  Begin
    EdtBancoCA.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME, CODIGO, ID_BANCOSPADRAO FROM BANCOSPADRAO');
    SQL.Add('WHERE ID_BANCOSPADRAO = :pID');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodBCA.Text);
    Open;

    EdtBancoCA.Text := FieldByName('NOME').AsString;

    if EdtBancoCA.Text = '' then
    Begin
      EdtCodBCA.Text := '';
    End;

  End;
end;

procedure TfrmRecebimento.EdtCodBCAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmRecebimento.EdtCodBCPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmBancosPadrao, frmBancosPadrao);
  frmBancosPadrao.bFechar := True;
  frmBancosPadrao.ShowModal;
  EdtCodBCP.Text := frmMain.sCod;
  EdtCodBCPExit(Sender);
  FreeAndNil(frmBancosPadrao);
end;

procedure TfrmRecebimento.EdtCodBCPExit(Sender: TObject);
begin
  inherited;
  if EdtCodBCP.Text = '' then
  Begin
    EdtBancoCP.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME, CODIGO, ID_BANCOSPADRAO FROM BANCOSPADRAO');
    SQL.Add('WHERE ID_BANCOSPADRAO = :pID');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodBCP.Text);
    Open;

    EdtBancoCP.Text := FieldByName('NOME').AsString;

    if EdtBancoCP.Text = '' then
    Begin
      EdtCodBCP.Text := '';
    End;

  End;
end;

procedure TfrmRecebimento.EdtCodBCPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmRecebimento.EdtCodBDBKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmRecebimento.EdtValorCAExit(Sender: TObject);
begin
  inherited;
  CalculaRestante;
end;

procedure TfrmRecebimento.EdtValorCPExit(Sender: TObject);
begin
  inherited;
  CalculaRestante;
end;

procedure TfrmRecebimento.EdtVlVistaExit(Sender: TObject);
begin
  inherited;
  CalculaRestante;
end;

procedure TfrmRecebimento.FormCreate(Sender: TObject);
begin
  inherited;
  EdtDataCP.Date := IncMonth(EdtDataCP.Date, 1);
  bFaturamento := False;
  bBaixa := False;
end;

procedure TfrmRecebimento.JvComboEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmRecebimento.JvComboEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

function TfrmRecebimento.TipoPagamento: Integer;
var
  i : Integer;
begin
  if (EdtVlVista.Value > 0) and (EdtValorCP.Value = 0) And (EdtValorCA.Value = 0) then
    Begin
      i := 5;     //Dinheiro
    End;

  if (EdtVlVista.Value = 0) and (EdtValorCP.Value = 0) And (EdtValorCA.Value > 0) then
    Begin
      i := 6;     //Cheque a vista
    End;

  if (EdtVlVista.Value = 0) and (EdtValorCP.Value > 0) And (EdtValorCA.Value = 0) then
    Begin
      i := 29;     //Cheque Pr�-datado
    End;

  if (EdtVlVista.Value > 0) and (EdtValorCP.Value = 0) And (EdtValorCA.Value > 0) then
    Begin
      i := 30;     //Dinheiro e Cheque � Vista
    End;

  if (EdtVlVista.Value > 0) and (EdtValorCP.Value > 0) And (EdtValorCA.Value = 0) then
    Begin
      i := 31;     //Dinheiro e Cheque Pr�-datado
    End;

  if (EdtVlVista.Value = 0) and (EdtValorCP.Value > 0) And (EdtValorCA.Value > 0) then
    Begin
      i := 32;     //Cheque � Vista e Cheque Pr�-Datado
    End;

  if (EdtVlVista.Value > 0) and (EdtValorCP.Value > 0) And (EdtValorCA.Value > 0) then
    Begin
      i := 33;     //Dinheiro, Cheque � Vista e Cheque Pr�-Datado
    End;
  Result := i;
end;

end.
