unit C_TitulosReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit, JvToolEdit, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, Vcl.Buttons, Data.DB, Data.Win.ADODB, JvComponentBase, Funcoes,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadTitulosReceber = class(TfrmPadrao)
    qryAux: TADOQuery;
    btnSalvar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    EdtHistorico: TEdit;
    EdtDocumento: TEdit;
    EdtDtConta: TJvDateEdit;
    EdtDtVencimento: TJvDateEdit;
    EdtNroNota: TEdit;
    EdtValor: TcxCurrencyEdit;
    EdtDesconto: TcxCurrencyEdit;
    EdtJuros: TcxCurrencyEdit;
    EdtDtPagamento: TJvDateEdit;
    EdtVlrPago: TcxCurrencyEdit;
    btnFechar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
  private
    iSituacao : Integer;
    bEditar : Boolean;
    rValorPago,
    rValorRestante : Real;
  public
    iIDContaReceber : Integer;
    Procedure CarregaConta;
  end;

var
  frmCadTitulosReceber: TfrmCadTitulosReceber;

implementation

{$R *.dfm}

uses P_Paciente, Main;

procedure TfrmCadTitulosReceber.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadTitulosReceber.btnSalvarClick(Sender: TObject);
var
  rRestanteAux : Real;
begin
  inherited;
  if EdtCodP.Text = '' then
    Begin
      application.MessageBox('O Campo "Paciente" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
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
      SQL.Add('SELECT * FROM CONTARECEBER');
      SQL.Add('WHERE ID_CONTARECEBER = :pID');
      Parameters.ParamByName('pID').Value := iIDContaReceber;
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
      FieldByName('ID_PACIENTE').AsString := EdtCodP.Text;
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

procedure TfrmCadTitulosReceber.CarregaConta;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTARECEBER');
      SQL.Add('WHERE ID_CONTARECEBER = :pID');
      Parameters.ParamByName('pID').Value := iIDContaReceber;
      Open;

      EdtCodP.Text := FieldByName('ID_PACIENTE').AsString;
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

      EdtCodP.Color := clGradientInactiveCaption;
      EdtCodP.Font.Color := clNavy;
      EdtCodP.ReadOnly := True;
      EdtCodPExit(Self);

      bEditar := True;
    End;
end;

procedure TfrmCadTitulosReceber.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmCadTitulosReceber.EdtCodPExit(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
  Begin
    EdtNome.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pCod');
    SQL.Add('AND ATIVO <> 0');
    Parameters.ParamByName('pCod').Value := StrToInt(EdtCodP.Text);
    Open;

    if Not Eof then
      Begin
        EdtNome.Text := FieldByName('NOME').AsString;
      End
    Else
      Begin
        EdtNome.Text := '';
        EdtCodP.Text := '';
      End;
  End;
end;

procedure TfrmCadTitulosReceber.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadTitulosReceber.FormCreate(Sender: TObject);
begin
  inherited;
  iIDContaReceber := 0;
  bEditar := False;
end;

end.
