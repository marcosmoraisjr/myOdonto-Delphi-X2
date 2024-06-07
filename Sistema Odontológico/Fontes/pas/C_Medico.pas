unit C_Medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Buttons, Vcl.StdCtrls,
  JvToolEdit, JvExMask, Vcl.Mask, Vcl.ComCtrls, JvComponentBase, JvEnterTab,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmCadMedico = class(TfrmPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EdtNome: TEdit;
    EdtCPF: TMaskEdit;
    EdtRG: TMaskEdit;
    EdtDtNasc: TJvDateEdit;
    EdtSexo: TComboBox;
    EdtEnd: TEdit;
    EdtNro: TEdit;
    EdtBairro: TEdit;
    EdtTel: TMaskEdit;
    EdtCel: TMaskEdit;
    EdtEmail: TEdit;
    EdtCodCidade: TJvComboEdit;
    EdtCid: TEdit;
    EdtUf: TEdit;
    cbAtivo: TCheckBox;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    EdtObs: TMemo;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    EdtNroConcelho: TEdit;
    Label14: TLabel;
    EdtUFCon: TEdit;
    Label15: TLabel;
    qryAux: TADOQuery;
    Label10: TLabel;
    Label16: TLabel;
    qryCadastro: TADOQuery;
    Label17: TLabel;
    cbEspecialidade: TComboBox;
    cbCodCBOS: TComboBox;
    EdtVlr: TcxCurrencyEdit;
    EdtCodCNES: TEdit;
    EdtCep: TMaskEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodCidadeButtonClick(Sender: TObject);
    procedure EdtCodCidadeExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure cbCodCBOSClick(Sender: TObject);
    procedure cbEspecialidadeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtUFConExit(Sender: TObject);
    procedure EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMedico: TfrmCadMedico;

implementation

{$R *.dfm}

uses L_Cidade, Main;

procedure TfrmCadMedico.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadMedico.btnSalvarClick(Sender: TObject);
var
sAtivo             ,
sRemoveVirgula     : String;
rValor             : Real;
begin
  inherited;

  if cbAtivo.Checked then
    Begin
      sAtivo := '1';
    End
  Else
    Begin
      sAtivo := '0';
    End;

  if EdtNroConcelho.Text = '' then
    Begin
      application.MessageBox('O Campo "CRO" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if EdtUFCon.Text = '' then
    Begin
      application.MessageBox('O Campo "UF Conselho" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if (EdtNome.Text = '') and (EdtDtNasc.Text = '  /  /    ') and (EdtSexo.Text = '') and (EdtCodCidade.Text = '') then
    Begin
      application.MessageBox('Os campos em azul s�o obrigat�rios!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  With qryCadastro do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MEDICOS');
      SQL.Add('WHERE ID_MEDICO = 0');
      Open;
    End;

      qryCadastro.Append;
      qryCadastro.FieldByName('Nome').AsString          := EdtNome.Text;
      qryCadastro.FieldByName('CPF').AsString           := EdtCpf.Text;
      qryCadastro.FieldByName('RG').AsString            := EdtRg.Text;
      qryCadastro.FieldByName('DTANASC').AsString       := EdtDtNasc.Text;
      qryCadastro.FieldByName('SEXO').AsString          := EdtSexo.Text;
      qryCadastro.FieldByName('Endereco').AsString      := EdtEnd.Text;
      qryCadastro.FieldByName('NRO').AsString           := EdtNro.Text;
      qryCadastro.FieldByName('BAIRRO').AsString        := EdtBairro.Text;
      qryCadastro.FieldByName('CEP').AsString           := EdtCep.Text;
      qryCadastro.FieldByName('ID_CIDADE').AsString     := EdtCodCidade.Text;
      qryCadastro.FieldByName('TELEFONE').AsString      := EdtTel.Text;
      qryCadastro.FieldByName('CELULAR').AsString       := EdtCel.Text;
      qryCadastro.FieldByName('EMAIL').AsString         := EdtEmail.Text;
      qryCadastro.FieldByName('CRO').ASString := EdtNroConcelho.Text;
      qryCadastro.FieldByName('UFCONSELHO').AsString := EdtUFCon.Text;
      qryCadastro.FieldByName('CodCNES').AsString := EdtCodCNES.Text;
      qryCadastro.FieldByName('CBOS').AsInteger := cbCodCBOS.ItemIndex;
      qryCadastro.FieldByName('SALARIO').AsFloat := EdtVlr.Value;
      qryCadastro.FieldByName('OBSERVACAO').AsString    := EdtObs.Lines.Text;
      qryCadastro.FieldByName('ATIVO').AsString         := sAtivo;
      qryCadastro.Post;


      EdtNome.Text      := '';
      EdtCPF.Text       := '';
      EdtRG.Text        := '';
      EdtDtNasc.Text    := '';
      EdtSexo.ItemIndex := -1;
      EdtEnd.Text       := '';
      EdtNro.Text       := '';
      EdtBairro.Text    := '';
      EdtCep.Text       := '';
      EdtObs.Lines.Clear;
      EdtTel.Text       := '';
      EdtCel.Text       := '';
      EdtEmail.Text     := '';
      EdtNroConcelho.Text := '';
  {    rgConselho.ItemIndex := -1;
      EdtUfCon.Text     := '';
      EdtCodCBOS.Text   := '';
      EdtEsp.Text       := '';
      EdtVlr.Text       := '';  }

  Close;


end;

procedure TfrmCadMedico.cbCodCBOSClick(Sender: TObject);
begin
  inherited;
  cbEspecialidade.ItemIndex := cbCodCBOS.ItemIndex;
end;

procedure TfrmCadMedico.cbEspecialidadeClick(Sender: TObject);
begin
  inherited;
  cbCodCBOS.ItemIndex := cbEspecialidade.ItemIndex;
end;

procedure TfrmCadMedico.EdtCodCidadeButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmListaCidade, frmListaCidade);
  frmListaCidade.bFechar := True;
  frmListaCidade.ShowModal;
  FreeAndNil(frmListaCidade);
  EdtCodCidade.Text := frmMain.sCodCid;
  EdtCodCidadeExit(Sender);
end;

procedure TfrmCadMedico.EdtCodCidadeExit(Sender: TObject);
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
    EdtUF.Text  := FieldByName('UF').AsString;

  if EdtCid.Text = '' then
    Begin
      EdtCodCidade.Text := '';
    End;

    End;
end;

procedure TfrmCadMedico.EdtCodCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCadMedico.EdtUFConExit(Sender: TObject);
begin
  inherited;
  EdtUFCon.Text := UpperCase(EdtUFCon.Text);
end;

procedure TfrmCadMedico.FormActivate(Sender: TObject);
begin
  inherited;
PageControl1.TabIndex := 0;
end;

end.
