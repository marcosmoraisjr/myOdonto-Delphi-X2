unit E_Medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, C_Medico, Data.DB, Data.Win.ADODB,
  JvComponentBase, JvEnterTab, Vcl.StdCtrls, Vcl.ExtCtrls, JvToolEdit, JvExMask,
  Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmEdtMedico = class(TfrmCadMedico)
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    sAtivo, sCod: String;
  end;

var
  frmEdtMedico: TfrmEdtMedico;

implementation

{$R *.dfm}

procedure TfrmEdtMedico.btnSalvarClick(Sender: TObject);
var
  sRemoveVirgula: String;
  rValor: Real;
begin

  rValor := 0;

  if cbAtivo.Checked then
  Begin
    sAtivo := '1';
  End
  Else
  Begin
    sAtivo := '0';
  End;

  if (EdtNome.Text = '') and (EdtDtNasc.Text = '  /  /    ') and
    (EdtSexo.Text = '') and (EdtCodCidade.Text = '') then
  Begin
    application.MessageBox('Os campos em azul são obrigatórios!', 'Erro!!!',
      mb_ok + MB_ICONERROR);
    Exit;
  End;

  qryCadastro.Edit;
  qryCadastro.FieldByName('Nome').AsString := EdtNome.Text;
  qryCadastro.FieldByName('CPF').AsString := EdtCpf.Text;
  qryCadastro.FieldByName('RG').AsString := EdtRg.Text;
  qryCadastro.FieldByName('DTANASC').AsString := EdtDtNasc.Text;
  qryCadastro.FieldByName('SEXO').AsString := EdtSexo.Text;
  qryCadastro.FieldByName('Endereco').AsString := EdtEnd.Text;
  qryCadastro.FieldByName('NRO').AsString := EdtNro.Text;
  qryCadastro.FieldByName('BAIRRO').AsString := EdtBairro.Text;
  qryCadastro.FieldByName('CEP').AsString := EdtCep.Text;
  qryCadastro.FieldByName('ID_CIDADE').AsString := EdtCodCidade.Text;
  qryCadastro.FieldByName('TELEFONE').AsString := EdtTel.Text;
  qryCadastro.FieldByName('CELULAR').AsString := EdtCel.Text;
  qryCadastro.FieldByName('EMAIL').AsString := EdtEmail.Text;
  qryCadastro.FieldByName('SALARIO').AsFloat :=  EdtVlr.Value;
  qryCadastro.FieldByName('CRO').AsString := EdtNroConcelho.Text;
  qryCadastro.FieldByName('UFCONSELHO').AsString := EdtUFCon.Text;
  qryCadastro.FieldByName('CODCNES').AsString := EdtCodCNES.Text;
  qryCadastro.FieldByName('CBOS').AsInteger := cbCodCBOS.ItemIndex;
  qryCadastro.FieldByName('OBSERVACAO').AsString := EdtObs.Lines.Text;
  qryCadastro.FieldByName('ATIVO').AsString := sAtivo;
  qryCadastro.Post;

  Close;

end;

procedure TfrmEdtMedico.FormActivate(Sender: TObject);
begin
  inherited;

  With qryCadastro do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MEDICOS.NOME, MEDICOS.CPF, MEDICOS.ID_MEDICO, MEDICOS.RG, MEDICOS.DTANASC, MEDICOS.SEXO, MEDICOS.ENDERECO,');
    SQL.Add('MEDICOS.NRO, MEDICOS.BAIRRO, MEDICOS.CEP, MEDICOS.TELEFONE, MEDICOS.CELULAR, MEDICOS.EMAIL, MEDICOS.CRO,');
    SQL.Add('MEDICOS.UFCONSELHO, MEDICOS.CBOS, MEDICOS.ID_CIDADE, MEDICOS.CodCNES, MEDICOS.SALARIO, MEDICOS.OBSERVACAO, MEDICOS.Ativo,');
    SQL.Add('CIDADE.NOME AS Cidade, CIDADE.UF FROM MEDICOS');
    SQL.Add('INNER JOIN CIDADE ON MEDICOS.ID_CIDADE = CIDADE.ID_CIDADE');
    SQL.Add('WHERE ID_MEDICO = :pCod');
    Parameters.ParamByName('pCod').Value := sCod;
    Open;

    EdtNome.Text := FieldByName('Nome').AsString;
    EdtCpf.Text := FieldByName('CPF').AsString;
    EdtRg.Text := FieldByName('RG').AsString;
    EdtDtNasc.Text := FieldByName('DTANASC').AsString;
    EdtSexo.Text := FieldByName('SEXO').AsString;
    EdtEnd.Text := FieldByName('Endereco').AsString;
    EdtNro.Text := FieldByName('NRO').AsString;
    EdtBairro.Text := FieldByName('BAIRRO').AsString;
    EdtCep.Text := FieldByName('CEP').AsString;
    EdtCodCidade.Text := FieldByName('ID_CIDADE').AsString;
    EdtCid.Text := FieldByName('CIDADE').AsString;
    EdtUf.Text := FieldByName('UF').AsString;
    EdtTel.Text := FieldByName('TELEFONE').AsString;
    EdtCel.Text := FieldByName('CELULAR').AsString;
    EdtEmail.Text := FieldByName('EMAIL').AsString;
    EdtObs.Lines.Text := FieldByName('OBSERVACAO').AsString;
    sAtivo := FieldByName('ATIVO').AsString;
    EdtVlr.Value := FieldByName('SALARIO').AsFloat;
    EdtNroConcelho.Text := FieldByName('CRO').AsString;
    EdtUFCon.Text := FieldByName('UFCONSELHO').AsString;
    EdtCodCNES.Text := FieldByName('CODCNES').AsString;
    cbCodCBOS.ItemIndex := FieldByName('CBOS').AsInteger;

    cbCodCBOSClick(Sender);

    if FieldByName('Sexo').AsString = 'Masculino' then
    Begin
      EdtSexo.ItemIndex := 0;
    End
    Else
    Begin
      EdtSexo.ItemIndex := 1;
    End;

    if sAtivo = '1' then
    Begin
      cbAtivo.Checked := True;
    End
    Else
    Begin
      cbAtivo.Checked := False;
    End;

  End;
end;

end.
