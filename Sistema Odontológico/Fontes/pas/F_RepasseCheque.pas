unit F_RepasseCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Mask, Vcl.StdCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, Funcoes,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, cxButtons,
  Data.DB, Data.Win.ADODB;

type
  TfrmRepasseCheque = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtNome: TEdit;
    Label2: TLabel;
    EdtTelefone: TMaskEdit;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    qryAux: TADOQuery;
    GroupBox2: TGroupBox;
    mmoObservacao: TMemo;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iIDCheque : Integer;
  end;

var
  frmRepasseCheque: TfrmRepasseCheque;

implementation

{$R *.dfm}

procedure TfrmRepasseCheque.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRepasseCheque.btnSalvarClick(Sender: TObject);
var
  rValor : Double;
  sHistorico,
  sDataCheque,
  sDataAtual : String;
begin
  inherited;

  sHistorico := 'Cheque repassado para: ' +EdtNome.Text+'.';

  if mmoObservacao.Lines.Text <> '' then
    Begin
      sHistorico := sHistorico + ' Obs: '+ mmoObservacao.Lines.Text;
    End;


  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHEQUESRECEBIDO');
      SQL.Add('WHERE ID_CHEQUESRECEBIDO = :pID');
      Parameters.ParamByName('pID').Value := iIDCheque;
      Open;

      Edit;
      FieldByName('NOMEREP').AsString           := EdtNome.Text;
      FieldByName('TELREP').AsString            := EdtTelefone.Text;
      FieldByName('DTACOMPENSADO').AsDateTime   := Now;
      FieldByName('SITUACAO').AsInteger         := 3;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOCHEQUE');
      SQL.Add('WHERE ID_HISTORICOCHEQUE = 0');
      Open;

      Append;
      FieldByName('HISTORICO').AsString             := sHistorico;
      FieldByName('ID_OPERADOR').ASInteger          := Operador.ID;
      FieldByName('ID_CHEQUESRECEBIDO').AsInteger   := iIDCheque;
      FieldByName('ID_FILIAL').AsInteger            := Empresa.ID;
      FieldByName('DATA').AsDateTime                := Now;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT DTACONTA, VALOR FROM CHEQUESRECEBIDO');
      SQL.Add('WHERE ID_CHEQUESRECEBIDO = :pID');
      Parameters.ParamByName('pID').Value := iIDCheque;
      Open;

      sDataCheque := FormatDateTime('DD/MM/YYYY', FieldByName('DTACONTA').AsDateTime);
      sDataAtual  := FormatDateTime('DD/MM/YYYY', Now);
      rValor      := FieldByName('VALOR').AsFloat;
    End;

    if (Caixa.IDCaixa > 0) and (sDataCheque = sDataAtual) then
      Begin
        With qryAux do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM LCTOSCAIXA');
            SQL.Add('WHERE ID_LCTOSCAIXA = 0');
            Open;

            Append;
            FieldByName('TIPODESPESA').AsInteger    := 42;
            FieldByName('ENTRADA_SAIDA').AsInteger  := 1;
            FieldByName('ID_OPERADOR').AsInteger    := Operador.ID;
            FieldByName('HISTORICO').AsString       := sHistorico;
            FieldByName('DATA').AsDateTime          := Now;
            FieldByName('VLRSAIDA').AsFloat         := rValor;
            Post;
          End;
      End
    Else
      Begin
        With qryAux do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM SALDOCAIXA');
            SQL.Add('WHERE ID_SALDOCAIXA = 0');
            Open;

            Append;
            FieldByName('TIPODESPESA').AsInteger    := 42;
            FieldByName('ENTRADA_SAIDA').AsInteger  := 1;
            FieldByName('ID_OPERADORES').AsInteger  := Operador.ID;
            FieldByName('HISTORICO').AsString       := sHistorico;
            FieldByName('DATA').AsDateTime          := Now;
            FieldByName('VLRSAIDA').AsFloat         := rValor;
            Post;
          End;
      End;
end;

end.
