unit C_ContasBancarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.DBCtrls, JvExMask,
  JvToolEdit, Vcl.Mask, Vcl.StdCtrls, JvComponentBase, JvEnterTab, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Vcl.Buttons,
  cxTextEdit, cxCurrencyEdit, Data.DB, Data.Win.ADODB, Funcoes, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadContasBancarias = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdtCarteira: TEdit;
    cbAceite: TCheckBox;
    EdtLocalPgt: TEdit;
    EdtInstrucoes: TEdit;
    EdtCedente: TEdit;
    EdtCNPJ: TMaskEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbAtivo: TCheckBox;
    EdtDesc: TEdit;
    EdtGerente: TEdit;
    EdtNum: TEdit;
    EdtAg: TEdit;
    EdtDtVcto: TJvDateEdit;
    EdtUf: TEdit;
    Label15: TLabel;
    EdtCid: TEdit;
    EdtCodCidade: TJvComboEdit;
    Label16: TLabel;
    EdtCodB: TJvComboEdit;
    EdtBanco: TEdit;
    EdtLimite: TcxCurrencyEdit;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    qryAux: TADOQuery;
    EdtJuros: TcxCurrencyEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodCidadeButtonClick(Sender: TObject);
    procedure EdtCodCidadeExit(Sender: TObject);
    procedure EdtCodBButtonClick(Sender: TObject);
    procedure EdtCodBExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCodBKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    bEditar : Boolean;
  public
    { Public declarations }
    iIDConta : Integer;
    Procedure CarregaConta;
  end;

var
  frmCadContasBancarias: TfrmCadContasBancarias;

implementation

{$R *.dfm}

uses L_Cidade, Main, P_BancosPadrao;

procedure TfrmCadContasBancarias.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadContasBancarias.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if EdtDesc.Text = '' then
    Begin
      application.MessageBox('O Campo "Descri��o" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
       Exit;
    End;

  if EdtCodB.Text = '' then
    Begin
      application.MessageBox('O Campo "Banco" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
       Exit;
    End;

  if EdtCodCidade.Text = '' then
    Begin
      application.MessageBox('O Campo "Cidade" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
       Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE ID_CONTASBANCARIAS = :pID');
      Parameters.ParamByName('pID').Value := iIDConta;
      Open;

      if bEditar then
        Begin
          Edit;
        End
      Else
        Begin
          Append;
        End;

      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
      FieldByName('ID_CIDADE').AsString := EdtCodCidade.Text;
      FieldByName('DESCRICAO').AsString := EdtDesc.Text;
      FieldByName('VLRLIMITE').AsFloat :=  EdtLimite.Value;
      FieldByName('DTAVCTO').AsDateTime := EdtDtVcto.Date;
      FieldByName('NROCONTA').AsString := EdtNum.Text;
      FieldByName('NROAGENCIA').AsString := EdtAg.Text;
      FieldByName('GERENTE').AsString := EdtGerente.Text;
      FieldByName('ATIVO').AsBoolean := cbAtivo.Checked;
      FieldByName('JUROSMORA').AsFloat := EdtJuros.Value;
      FieldByName('ACEITE').AsBoolean := cbAceite.Checked;
      FieldByName('CODCEDENTE').AsString := EdtCedente.Text;
      FieldByName('LOCALPAGAMENTO').AsString := EdtLocalPgt.Text;
      FieldByName('INSTRUCOES').AsString := EdtInstrucoes.Text;
      FieldByName('CNPJ').AsString := EdtCNPJ.Text;
      FieldByName('ID_BANCOSPADRAO').AsString := EdtCodB.Text;
      Post;
    End;

  Close;
end;

procedure TfrmCadContasBancarias.CarregaConta;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE ID_CONTASBANCARIAS = :pID');
      Parameters.ParamByName('pID').Value := iIDConta;
      Open;

      EdtCodCidade.Text := FieldByName('ID_CIDADE').AsString;
      EdtDesc.Text := FieldByName('DESCRICAO').AsString;
      EdtLimite.Value := FieldByName('VLRLIMITE').AsFloat;
      EdtDtVcto.Date := FieldByName('DTAVCTO').AsDateTime;
      EdtNum.Text := FieldByName('NROCONTA').AsString;
      EdtAg.Text := FieldByName('NROAGENCIA').AsString;
      EdtGerente.Text := FieldByName('GERENTE').AsString;
      cbAtivo.Checked := FieldByName('ATIVO').AsBoolean;
      EdtJuros.Value := FieldByName('JUROSMORA').AsFloat;
      cbAceite.Checked := FieldByName('ACEITE').AsBoolean;
      EdtCedente.Text := FieldByName('CODCEDENTE').AsString;
      EdtLocalPgt.Text := FieldByName('LOCALPAGAMENTO').AsString;
      EdtInstrucoes.Text := FieldByName('INSTRUCOES').AsString;
      EdtCNPJ.Text := FieldByName('CNPJ').AsString;
      EdtCodB.Text := FieldByName('ID_BANCOSPADRAO').AsString;
      EdtCodBExit(Self);
      EdtCodCidadeExit(Self);
      bEditar := True;
    End;
end;

procedure TfrmCadContasBancarias.EdtCodBButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmBancosPadrao, frmBancosPadrao);
  frmBancosPadrao.bFechar := True;
  frmBancosPadrao.ShowModal;
  FreeAndNil(frmBancosPadrao);
  EdtCodB.Text := frmMain.sCod;
  EdtCodBExit(Sender);
end;

procedure TfrmCadContasBancarias.EdtCodBExit(Sender: TObject);
begin
  inherited;
  if EdtCodB.Text = '' then
  Begin
    EdtBanco.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME, CODIGO, ID_BANCOSPADRAO FROM BANCOSPADRAO');
    SQL.Add('WHERE ID_BANCOSPADRAO = :pID');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodB.Text);
    Open;

    EdtBanco.Text := FieldByName('NOME').AsString;

    if EdtBanco.Text = '' then
    Begin
      EdtCodB.Text := '';
    End;

  End;
end;

procedure TfrmCadContasBancarias.EdtCodBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadContasBancarias.EdtCodCidadeButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmListaCidade, frmListaCidade);
  frmListaCidade.bFechar := True;
  frmListaCidade.ShowModal;
  FreeAndNil(frmListaCidade);
  EdtCodCidade.Text := frmMain.sCodCid;
  EdtCodCidadeExit(Sender);
end;

procedure TfrmCadContasBancarias.EdtCodCidadeExit(Sender: TObject);
begin
  inherited;
  if EdtCodCidade.Text = '' then
  Begin
    EdtCid.Text := '';
    EdtUf.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CIDADE, NOME, UF FROM CIDADE');
    SQL.Add('WHERE ID_CIDADE = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodCidade.Text);
    Open;

    EdtCid.Text := FieldByName('NOME').AsString;
    EdtUf.Text := FieldByName('UF').AsString;

    if EdtCid.Text = '' then
    Begin
      EdtCodCidade.Text := '';
    End;

  End;
end;

procedure TfrmCadContasBancarias.EdtCodCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadContasBancarias.FormCreate(Sender: TObject);
begin
  inherited;
  bEditar := False;
  iIDConta := 0;
end;

end.
