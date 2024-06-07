unit C_TitulosReceberConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Funcoes, Padrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Data.DB, Data.Win.ADODB, cxTextEdit, cxCurrencyEdit,
  JvToolEdit, Vcl.StdCtrls, Vcl.Mask, JvExMask, Vcl.Buttons, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadTitulosReceberConvenios = class(TfrmPadrao)
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdtCodC: TJvComboEdit;
    EdtConvenio: TEdit;
    EdtHistorico: TEdit;
    EdtDocumento: TEdit;
    EdtDtConta: TJvDateEdit;
    EdtDtVencimento: TJvDateEdit;
    EdtValor: TcxCurrencyEdit;
    EdtDtPagamento: TJvDateEdit;
    EdtVlrPago: TcxCurrencyEdit;
    qryAux: TADOQuery;
    procedure EdtCodCButtonClick(Sender: TObject);
    procedure EdtCodCExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodCKeyPress(Sender: TObject; var Key: Char);
  private
    bEditar : Boolean;
  public
    iIDContaReceber : Integer;
    Procedure CarregaConta;
  end;

var
  frmCadTitulosReceberConvenios: TfrmCadTitulosReceberConvenios;

implementation

{$R *.dfm}

uses L_Convenios, Main;

procedure TfrmCadTitulosReceberConvenios.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadTitulosReceberConvenios.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if EdtCodC.Text = '' then
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

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTARECEBERCONVENIO');
      SQL.Add('WHERE ID_CONTARECEBERCONVENIO = :pID');
      Parameters.ParamByName('pID').Value := iIDContaReceber;
      Open;

      if bEditar then
        Begin
          Edit;
        End
      Else
        Begin
          Append;
          FieldByName('VALORRESTANTE').AsFloat := EdtValor.Value;
          FieldByName('SITUACAO').AsInteger := 0;
        End;
      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
      FieldByName('ID_CONVENIO').AsString := EdtCodC.Text;
      FieldByName('HISTORICO').AsString := EdtHistorico.Text;
      FieldByName('DOCUMENTO').AsString := EdtDocumento.Text;
      FieldByName('DTACONTA').AsDateTime := EdtDtConta.Date;
      FieldByName('DTAVENCIMENTO').AsDateTime := EdtDtVencimento.Date;
      FieldByName('VALOR').AsFloat := EdtValor.Value;
      Post;
    End;

  Close;
end;

procedure TfrmCadTitulosReceberConvenios.CarregaConta;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTARECEBERCONVENIO');
      SQL.Add('WHERE ID_CONTARECEBERCONVENIO = :pID');
      Parameters.ParamByName('pID').Value := iIDContaReceber;
      Open;

      EdtCodC.Text := FieldByName('ID_CONVENIO').AsString;
      EdtHistorico.Text := FieldByName('HISTORICO').AsString;
      EdtDocumento.Text := FieldByName('DOCUMENTO').AsString;
      EdtDtConta.Date := FieldByName('DTACONTA').AsDateTime;
      EdtDtVencimento.Date := FieldByName('DTAVENCIMENTO').AsDateTime;
      EdtDtPagamento.Text := FieldByName('DTAPAGAMENTO').AsString;
      EdtValor.Value := FieldByName('VALOR').AsFloat;
      EdtVlrPago.Value := FieldByName('VALORPAGO').AsFloat;


      EdtValor.Style.Color := clGradientInactiveCaption;
      EdtValor.Style.Font.Color := clNavy;
      EdtValor.Properties.ReadOnly := True;

      EdtCodC.Color := clGradientInactiveCaption;
      EdtCodC.Font.Color := clNavy;
      EdtCodC.ReadOnly := True;
      EdtCodCExit(Self);

      bEditar := True;
    End;
end;

procedure TfrmCadTitulosReceberConvenios.EdtCodCButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmListaConvenios, frmListaConvenios);
  frmListaConvenios.bFechar := True;
  frmListaConvenios.ShowModal;
  EdtCodC.Text := IntToStr(frmMain.iCodConvenio);
  EdtCodCExit(Sender)
end;

procedure TfrmCadTitulosReceberConvenios.EdtCodCExit(Sender: TObject);
begin
  inherited;
  if (EdtCodC.Text = '') or (EdtCodC.Text = '1') then
  Begin
    EdtConvenio.Text := '';
    EdtCodC.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CONVENIO, NOME FROM CONVENIOS');
    SQL.Add('WHERE ID_CONVENIO = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodC.Text);
    Open;

    if not Eof then
      Begin
        EdtConvenio.Text := FieldByName('NOME').AsString;
      End
    Else
      Begin
        EdtCodC.Text := '';
        EdtConvenio.Text := '';
      End;
  End;
end;

procedure TfrmCadTitulosReceberConvenios.EdtCodCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

end.
