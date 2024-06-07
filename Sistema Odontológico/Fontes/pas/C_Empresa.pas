unit C_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Buttons, Data.DB,
  Data.Win.ADODB, Vcl.Mask, JvExMask, JvToolEdit, Vcl.StdCtrls, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Funcoes, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadastroConsultorio = class(TfrmPadrao)
    qryAux: TADOQuery;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    mmoScript: TMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    lblRazaoSocial: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblCPF: TLabel;
    lblRG: TLabel;
    Label14: TLabel;
    EdtNome: TEdit;
    EdtCodCidade: TJvComboEdit;
    EdtCid: TEdit;
    EdtUf: TEdit;
    EdtRazao: TEdit;
    EdtEndereco: TEdit;
    EdtNumero: TEdit;
    EdtBairro: TEdit;
    EdtCep: TMaskEdit;
    EdtTel: TMaskEdit;
    EdtFax: TMaskEdit;
    EdtContato: TEdit;
    EdtCPF: TMaskEdit;
    EdtEmail: TEdit;
    cbPessoa: TComboBox;
    EdtCel: TMaskEdit;
    Label15: TLabel;
    EdtRG: TMaskEdit;
    Label2: TLabel;
    EdtComplemento: TEdit;
    procedure EdtCodCidadeButtonClick(Sender: TObject);
    procedure EdtCodCidadeExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cbPessoaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    Procedure VerificaCampos;
    Procedure GeraSQL;
  public
    { Public declarations }
    bNovo: Boolean;
    iIDEmpresa: Integer;
    Procedure CarregaDados;
  end;

var
  frmCadastroConsultorio: TfrmCadastroConsultorio;

implementation

{$R *.dfm}

uses L_Cidade, Main;

procedure TfrmCadastroConsultorio.btnFecharClick(Sender: TObject);
begin
  inherited;
  if bNovo then
  Begin
    If Application.MessageBox('Deseja Realmente Sair ?', 'Confirma��o!!!',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
    Begin
      Application.Terminate;
    End
    Else
    Begin
      Exit;
    End;
  End
  Else
  Begin
    Close;
  End;
end;

procedure TfrmCadastroConsultorio.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if Empty(EdtNome.Text) then
  Begin
    Application.MessageBox('O campo "Nome" � obrigat�rio o preenchimento !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtNome.SetFocus;
    Exit;
  End;

  if Empty(EdtRazao.Text) And (cbPessoa.ItemIndex = 1) then
  Begin
    Application.MessageBox
      ('O campo "Raz�o Social" � obrigat�rio o preenchimento !', 'Erro!!!',
      mb_ok + MB_ICONERROR);
    EdtRazao.SetFocus;
    Exit;
  End;

  if Empty(EdtCodCidade.Text) then
  Begin
    Application.MessageBox('O campo "Cidade" � obrigat�rio o preenchimento !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCodCidade.SetFocus;
    Exit;
  End;

  if Empty(EdtEndereco.Text) then
  Begin
    Application.MessageBox('O campo "Endere�o" � obrigat�rio o preenchimento !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtEndereco.SetFocus;
    Exit;
  End;

  if Empty(EdtNumero.Text) then
  Begin
    Application.MessageBox('O campo "N�mero" � obrigat�rio o preenchimento !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtNumero.SetFocus;
    Exit;
  End;

  if Empty(EdtBairro.Text) then
  Begin
    Application.MessageBox('O campo "Bairro" � obrigat�rio o preenchimento !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtBairro.SetFocus;
    Exit;
  End;

  if EdtCep.Text = '  .   -   ' then
  Begin
    Application.MessageBox('O campo "CEP" � obrigat�rio o preenchimento !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCep.SetFocus;
    Exit;
  End;

  if EdtTel.Text = '(  )     -    ' then
  Begin
    Application.MessageBox('O campo "CEP" � obrigat�rio o preenchimento !',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtTel.SetFocus;
    Exit;
  End;

  If bNovo then
    GeraSQL;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM EMPRESA');
    SQL.Add('WHERE ID_EMPRESA = :pID');
    Parameters.ParamByName('pID').Value := iIDEmpresa;
    Open;

    if bNovo then
    Begin
      Append;
      FieldByName('ID_FILIAL').AsInteger := qryAux.RecordCount + 1;
    End
    Else
    Begin
      Edit;
    End;

    FieldByName('NOME').AsString := EdtNome.Text;
    FieldByName('RAZAOSOCIAL').AsString := EdtRazao.Text;
    FieldByName('ID_CIDADE').AsString := EdtCodCidade.Text;
    FieldByName('ENDERECO').AsString := EdtEndereco.Text;
    FieldByName('NUMERO').AsString := EdtNumero.Text;
    FieldByName('BAIRRO').AsString := EdtBairro.Text;
    FieldByName('CEP').AsString := EdtCep.Text;
    FieldByName('TELEFONE').AsString := EdtTel.Text;
    FieldByName('FAX').AsString := EdtFax.Text;
    FieldByName('CONTATO').AsString := EdtContato.Text;
    FieldByName('CNPJ').AsString := EdtCPF.Text;
    FieldByName('IE').AsString := EdtRG.Text;
    FieldByName('EMAIL').AsString := EdtEmail.Text;
    FieldByName('CELULAR').AsString := EdtCel.Text;
    FieldByName('TIPO').AsInteger := cbPessoa.ItemIndex;
    FieldByName('COMPLEMENTO').AsString := EdtComplemento.Text;
    Post;
  End;

  Close;
end;

procedure TfrmCadastroConsultorio.CarregaDados;
begin

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM EMPRESA');
    SQL.Add('WHERE ID_EMPRESA = :pID');
    Parameters.ParamByName('pID').Value := iIDEmpresa;
    Open;

    cbPessoa.ItemIndex := FieldByName('TIPO').AsInteger;
    cbPessoaClick(Self);
    EdtNome.Text := FieldByName('NOME').AsString;
    EdtRazao.Text := FieldByName('RAZAOSOCIAL').AsString;
    EdtCodCidade.Text := FieldByName('ID_CIDADE').AsString;
    EdtEndereco.Text := FieldByName('ENDERECO').AsString;
    EdtNumero.Text := FieldByName('NUMERO').AsString;
    EdtBairro.Text := FieldByName('BAIRRO').AsString;
    EdtCep.Text := FieldByName('CEP').AsString;
    EdtTel.Text := FieldByName('TELEFONE').AsString;
    EdtFax.Text := FieldByName('FAX').AsString;
    EdtContato.Text := FieldByName('CONTATO').AsString;
    EdtCPF.Text := FieldByName('CNPJ').AsString;
    EdtRG.Text := FieldByName('IE').AsString;
    EdtEmail.Text := FieldByName('EMAIL').AsString;
    EdtCel.Text := FieldByName('CELULAR').AsString;
    EdtComplemento.Text := FieldByName('COMPLEMENTO').AsString;

    EdtCodCidadeExit(Self);
  End;
end;

procedure TfrmCadastroConsultorio.cbPessoaClick(Sender: TObject);
begin
  inherited;
  case cbPessoa.ItemIndex of
    0:
      Begin
        lblCPF.Caption := 'CPF: ';
        lblRG.Caption := 'RG: ';
        EdtCPF.EditMask := '!999.999.999-99;1;_';
        EdtRG.EditMask := '';
        lblRazaoSocial.Enabled := False;
        EdtRazao.Enabled := False;
        EdtRazao.Clear;
      End;

    1:
      Begin
        lblCPF.Caption := 'CNPJ: ';
        lblRG.Caption := 'IE: ';
        EdtRG.EditMask := '';
        EdtCPF.EditMask := '!99.999.999/9999-99;1;_';
        lblRazaoSocial.Enabled := True;
        EdtRazao.Enabled := True;
      End;
  end;
end;

procedure TfrmCadastroConsultorio.EdtCodCidadeButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmListaCidade, frmListaCidade);
  frmListaCidade.bFechar := True;
  frmListaCidade.ShowModal;
  FreeAndNil(frmListaCidade);
  EdtCodCidade.Text := frmMain.sCodCid;
  EdtCodCidadeExit(Sender)
end;

procedure TfrmCadastroConsultorio.EdtCodCidadeExit(Sender: TObject);
begin
  inherited;
  if EdtCodCidade.Text = '' then
  Begin
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

procedure TfrmCadastroConsultorio.EdtCodCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadastroConsultorio.FormActivate(Sender: TObject);
begin
  inherited;
  cbPessoaClick(Self);
end;

procedure TfrmCadastroConsultorio.FormCreate(Sender: TObject);
begin
  inherited;
  bNovo := False;
end;

procedure TfrmCadastroConsultorio.GeraSQL;
var
  sSerialHd, sCodIBGE: String;
  sConsulta: String;
  sCampos: String;
  sVencimento: String;
  dDataAux: Tdate;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CIDADE');
    SQL.Add('WHERE ID_CIDADE = :pID');
    Parameters.ParamByName('pID').Value := EdtCodCidade.Text;
    Open;

    sCodIBGE := FieldByName('CODIBGE').AsString;
  End;

  dDataAux := Now + 30;
  sSerialHd := Crypt('C', FormatDateTime('zzz', Now));

  SalvarIni(PastaArquivo + '\CFGEmpresa.Ini', 'Empresa', 'CodEmpresa',
    sSerialHd);

  sConsulta :=
    'Insert Into Clientes(CODHD, CODIBGE, NOME, TIPO, RAZAOSOCIAL, ENDERECO, NUMERO, BAIRRO, CEP, COMPLEMENTO, TELEFONE, CELULAR, FAX, CONTATO, CNPJ, IE, EMAIL, VENCIMENTO) ';
  sCampos := 'Values(' + QuotedStr(sSerialHd) + ', ' + QuotedStr(sCodIBGE) +
    ', ' + QuotedStr(EdtNome.Text) + ', ' +QuotedStr(IntToStr(cbPessoa.ItemIndex)) +', '+ QuotedStr(EdtRazao.Text) + ', ' +
    QuotedStr(EdtEndereco.Text) + ', ' + QuotedStr(EdtNumero.Text) + ', ' +
    QuotedStr(EdtBairro.Text) + ', ' + QuotedStr(EdtCep.Text) + ', ' + QuotedStr(EdtComplemento.Text) + ', ' +
    QuotedStr(EdtTel.Text) + ', '+ QuotedStr(EdtCel.Text) +', ' + QuotedStr(EdtFax.Text) + ', ' +
    QuotedStr(EdtContato.Text) + ', ' + QuotedStr(EdtCPF.Text) + ', ' +
    QuotedStr(EdtRG.Text) + ', ' + QuotedStr(EdtEmail.Text) + ', ' +
    QuotedStr(DateTimeToStr(dDataAux)) + ')';

  mmoScript.Lines.Clear;
  mmoScript.Lines.Add(sConsulta);
  mmoScript.Lines.Add(sCampos);

  mmoScript.Lines.SaveToFile(PastaArquivo + '\CadEmpresa.sql');
end;

procedure TfrmCadastroConsultorio.VerificaCampos;
begin

end;

end.
