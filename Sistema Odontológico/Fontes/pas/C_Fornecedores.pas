unit C_Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, JvToolEdit, JvExMask, Vcl.Mask,
  Vcl.Buttons, Funcoes, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadFornecedores = class(TfrmPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    EdtObs: TMemo;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    lblRG: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lblCPF: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    EdtNome: TEdit;
    EdtCPF: TMaskEdit;
    EdtRG: TMaskEdit;
    EdtDtNasc: TJvDateEdit;
    cbSexo: TComboBox;
    EdtEndereco: TEdit;
    EdtNro: TEdit;
    EdtBairro: TEdit;
    EdtTelefone: TMaskEdit;
    EdtCelular: TMaskEdit;
    EdtEmail: TEdit;
    EdtCodC: TJvComboEdit;
    EdtCidade: TEdit;
    EdtUF: TEdit;
    cbAtivo: TCheckBox;
    EdtCEP: TMaskEdit;
    cbPessoa: TComboBox;
    lblRazaoSocial: TLabel;
    EdtRazaoSocial: TEdit;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    qryAux: TADOQuery;
    procedure cbPessoaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodCButtonClick(Sender: TObject);
    procedure EdtCodCExit(Sender: TObject);
    procedure EdtCodCKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    bEditar : Boolean;
  public
    { Public declarations }
    iIDFornecedor : Integer;
    Procedure CarregaFornecedor;
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

{$R *.dfm}

uses L_Cidade, Main;

procedure TfrmCadFornecedores.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadFornecedores.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if EdtNome.Text = '' then
    Begin
      application.MessageBox('O Campo "Nome" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if (EdtRazaoSocial.Text = '') and (cbPessoa.ItemIndex = 1) then
    Begin
      application.MessageBox('O Campo "Raz�o Social" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if EdtCodC.Text = '' then
    Begin
      application.MessageBox('O Campo "Cidade" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM FORNECEDOR');
      SQL.Add('WHERE ID_FORNECEDOR = :pID');
      Parameters.parambyname('pID').Value := iIDFornecedor;
      Open;

      if bEditar then
        Begin
          Edit;
        End
      Else
        Begin
          Append;
        End;

      FieldByName('NOME').AsString := EdtNome.Text;
      FieldByName('FISICA_JURIDICA').AsInteger := cbPessoa.ItemIndex;
      FieldByName('RAZAOSOCIAL').AsString := EdtRazaoSocial.Text;
      FieldByName('CPFCNPJ').AsString := EdtCPF.Text;
      FieldByName('RGIE').AsString := EdtRG.Text;
      FieldByName('DTANASCIMENTO').AsDateTime := EdtDtNasc.Date;
      FieldByName('SEXO').AsString := cbSexo.Text;
      FieldByName('ENDERECO').AsString := EdtEndereco.Text;
      FieldByName('NUMERO').AsString := EdtNro.Text;
      FieldByName('BAIRRO').AsString := EdtBairro.Text;
      FieldByName('CEP').AsString := EdtCEP.Text;
      FieldByName('TELEFONE').AsString := EdtTelefone.Text;
      FieldByName('CELULAR').AsString := EdtCelular.Text;
      FieldByName('EMAIL').AsString := EdtEmail.Text;
      FieldByName('OBSERVACAO').AsString := EdtObs.Lines.Text;
      FieldByName('ATIVO').AsBoolean := cbAtivo.Checked;
      FieldByName('ID_CIDADE').AsString := EdtCodC.Text;
      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
      Post;

    End;

    Close;
end;

procedure TfrmCadFornecedores.CarregaFornecedor;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM FORNECEDOR');
      SQL.Add('WHERE ID_FORNECEDOR = :pID');
      Parameters.ParamByName('pID').Value := iIDFornecedor;
      Open;

      if Not Eof then
        Begin
          EdtNome.Text := FieldByName('NOME').AsString;
          cbPessoa.ItemIndex := FieldByName('FISICA_JURIDICA').AsInteger;
          cbPessoaClick(Self);

          If FieldByName('SEXO').AsString = 'Masculino' then
            Begin
              cbSexo.ItemIndex := 0;
            End
          Else cbSexo.ItemIndex := 1;

          EdtRazaoSocial.Text := FieldByName('RAZAOSOCIAL').AsString;
          EdtCPF.Text := FieldByName('CPFCNPJ').AsString;
          EdtRG.Text := FieldByName('RGIE').AsString;
          EdtDtNasc.Date := FieldByName('DTANASCIMENTO').AsDateTime;
          EdtEndereco.Text := FieldByName('ENDERECO').AsString;
          EdtNro.Text := FieldByName('NUMERO').AsString;
          EdtBairro.Text := FieldByName('BAIRRO').AsString;
          EdtCEP.Text := FieldByName('CEP').AsString;
          EdtTelefone.Text := FieldByName('TELEFONE').AsString;
          EdtCelular.Text := FieldByName('CELULAR').AsString;
          EdtEmail.Text := FieldByName('EMAIL').AsString;
          EdtObs.Lines.Text := FieldByName('OBSERVACAO').AsString;
          cbAtivo.Checked := FieldByName('ATIVO').AsBoolean;
          EdtCodC.Text := FieldByName('ID_CIDADE').AsString;
          EdtCodCExit(Self);
          bEditar := True;
        End;
    End;
end;

procedure TfrmCadFornecedores.cbPessoaClick(Sender: TObject);
begin
  inherited;
  case cbPessoa.ItemIndex of
    0: Begin
      lblCPF.Caption := 'CPF: ';
      lblRG.Caption := 'RG: ';
      EdtCPF.EditMask := '!999.999.999-99;1;_';
      EdtRG.EditMask := '';
      lblRazaoSocial.Enabled := False;
      EdtRazaoSocial.Enabled := False;
    End;

    1: Begin
      lblCPF.Caption := 'CNPJ: ';
      lblRG.Caption := 'IE: ';
      EdtRG.EditMask := '';
      EdtCPF.EditMask := '!99.999.999/9999-99;1;_';
      lblRazaoSocial.Enabled := True;
      EdtRazaoSocial.Enabled := True;
    End;
  end;
end;

procedure TfrmCadFornecedores.EdtCodCButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmListaCidade, frmListaCidade);
  frmListaCidade.bFechar := True;
  frmListaCidade.ShowModal;
  FreeAndNil(frmListaCidade);
  EdtCodC.Text := frmMain.sCodCid;
  EdtCodCExit(Sender)
end;

procedure TfrmCadFornecedores.EdtCodCExit(Sender: TObject);
begin
  inherited;
  if EdtCodC.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CIDADE, NOME, UF FROM CIDADE');
    SQL.Add('WHERE ID_CIDADE = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodC.Text);
    Open;

    EdtCidade.Text := FieldByName('NOME').AsString;
    EdtUf.Text := FieldByName('UF').AsString;

    if EdtCidade.Text = '' then
    Begin
      EdtCodC.Text := '';
    End;

  End;
end;

procedure TfrmCadFornecedores.EdtCodCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
  iIDFornecedor := 0;
  cbPessoaClick(Self);
end;

end.
