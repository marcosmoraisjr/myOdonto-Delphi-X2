unit F_TransferenciaSaldos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Funcoes, Padrao, Data.DB,
  Data.Win.ADODB, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmTransferenciaSaldos = class(TfrmPadrao)
    qryAux: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cmbContaOrigem: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cmbContaDestino: TComboBox;
    EdtValorSaldo: TcxCurrencyEdit;
    Label4: TLabel;
    EdtValor: TcxCurrencyEdit;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    qryAux2: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbContaOrigemClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure MontaCombos;
    Function RetornaIDBanco(Descricao : String) : Integer;
  public
    { Public declarations }
  end;

var
  frmTransferenciaSaldos: TfrmTransferenciaSaldos;

implementation

{$R *.dfm}

procedure TfrmTransferenciaSaldos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTransferenciaSaldos.btnSalvarClick(Sender: TObject);
var
  iIDConta : Integer;
begin
  inherited;

  if cmbContaOrigem.Text = cmbContaDestino.Text then
    Begin
      application.MessageBox('Selecione contas diferentes para transferência de saldos!','Atenção!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  if EdtValorSaldo.Value < 0 then
    Begin
      application.MessageBox('Impossível fazer transferência de saldo negativo, selecione outra conta de origem!','Atenção!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  if EdtValor.Value < 0 then
    Begin
      application.MessageBox('Informe um valor positivo para transferência de saldos!','Atenção!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  if cmbContaOrigem.ItemIndex = 0 then
    Begin
      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM SALDOCAIXA');
          SQL.Add('WHERE ID_SALDOCAIXA = 0');
          Open;

          Append;
          FieldByName('TIPODESPESA').AsInteger := 41;
          FieldByName('ENTRADA_SAIDA').AsInteger := 1;
          FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
          FieldByName('HISTORICO').AsString := 'Transferência de saldo para a conta: '+ cmbContaDestino.Text;
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('VLRSAIDA').AsFloat := EdtValor.Value;
          Post;

          iIDConta := RetornaIDBanco(cmbContaDestino.Text);

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM SALDOCONTASBANCARIAS');
          SQL.Add('WHERE ID_SALDOCONTASBANCARIAS = 0');
          Open;

          Append;
          FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
          FieldByName('ID_CONTASBANCARIAS').AsInteger := iIDConta;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
          FieldByName('ENTRADA_SAIDA').AsInteger := 0;
          FieldByName('HISTORICO').AsString := 'Saldo Retirado do Caixa GERAL';
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('VLRENTRADA').AsFloat := EdtValor.Value;
          Post;
        End;
    End
  Else
    Begin
      With qryAux2 do
        Begin
          if cmbContaDestino.ItemIndex = 0 then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM SALDOCAIXA');
              SQL.Add('WHERE ID_SALDOCAIXA = 0');
              Open;

              Append;
              FieldByName('TIPODESPESA').AsInteger := 41;
              FieldByName('ENTRADA_SAIDA').AsInteger := 0;
              FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
              FieldByName('HISTORICO').AsString := 'Saldo Retirado da Conta: '+ cmbContaOrigem.Text;
              FieldByName('DATA').AsDateTime := Now;
              FieldByName('VLRENTRADA').AsFloat := EdtValor.Value;
              Post;
            End
          Else
            Begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM SALDOCONTASBANCARIAS');
              SQL.Add('WHERE ID_SALDOCONTASBANCARIAS = 0');
              Open;

              iIDConta := RetornaIDBanco(cmbContaDestino.Text);

              Append;
              FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
              FieldByName('ID_CONTASBANCARIAS').AsInteger := iIDConta;
              FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
              FieldByName('ENTRADA_SAIDA').AsInteger := 0;
              FieldByName('HISTORICO').AsString := 'Saldo Retirado do Conta: ' + cmbContaOrigem.Text;
              FieldByName('DATA').AsDateTime := Now;
              FieldByName('VLRENTRADA').AsFloat := EdtValor.Value;
              Post;
            End;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM SALDOCONTASBANCARIAS');
          SQL.Add('WHERE ID_SALDOCONTASBANCARIAS = 0');
          Open;

          iIDConta := RetornaIDBanco(cmbContaOrigem.Text);

          Append;
          FieldByName('ID_CONTASBANCARIAS').AsInteger := iIDConta;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
          FieldByName('ENTRADA_SAIDA').AsInteger := 1;
          FieldByName('HISTORICO').AsString := 'Transferência de saldo para a conta: '+ cmbContaDestino.Text;
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('VLRSAIDA').AsFloat := EdtValor.Value;
          FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
          Post;
        End;
    End;

  application.MessageBox('Saldo transferido com sucesso!','Sucesso!',mb_ok+MB_ICONINFORMATION);
  cmbContaOrigemClick(Self);
  EdtValor.Value := 0;
end;

procedure TfrmTransferenciaSaldos.cmbContaOrigemClick(Sender: TObject);
var
  iIDConta : Integer;
begin
  inherited;
  if cmbContaOrigem.ItemIndex = 0 then
    Begin
      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VLRENTRADA - VLRSAIDA) AS SALDO FROM SALDOCAIXA');
          Open;

          EdtValorSaldo.Value := FieldByName('SALDO').AsFloat;
        End;
    End
  Else
    Begin
      iIDConta := RetornaIDBanco(cmbContaOrigem.Text);
      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VLRENTRADA - VLRSAIDA) AS SALDO FROM SALDOCONTASBANCARIAS');
          SQL.Add('WHERE ID_CONTASBANCARIAS = :pID');
          Parameters.ParamByName('pID').Value := iIDConta;
          Open;

          EdtValorSaldo.Value := FieldByName('SALDO').AsFloat;
        End;
    End;
end;

procedure TfrmTransferenciaSaldos.FormCreate(Sender: TObject);
begin
  inherited;
  MontaCombos;
end;

procedure TfrmTransferenciaSaldos.MontaCombos;
begin
  cmbContaOrigem.Items.Clear;
  cmbContaDestino.Items.Clear;

  cmbContaOrigem.Items.Add('Caixa GERAL');
  cmbContaDestino.Items.Add('Caixa GERAL');

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE ATIVO = 1');
      SQL.Add('AND ID_FILIAL = :pFilial');
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Open;

      while not eof do
        Begin
          cmbContaOrigem.Items.Add(FieldByName('DESCRICAO').AsString);
          cmbContaDestino.Items.Add(FieldByName('DESCRICAO').AsString);
          Next;
        End;

        cmbContaOrigem.ItemIndex := 0;
        cmbContaDestino.ItemIndex := 1;
        cmbContaOrigemClick(Self);
    End;
end;

function TfrmTransferenciaSaldos.RetornaIDBanco(Descricao: String): Integer;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID_CONTASBANCARIAS FROM CONTASBANCARIAS');
      SQL.Add('WHERE ATIVO = 1');
      SQL.Add('AND ID_FILIAL = :pFilial');
      SQL.Add('AND DESCRICAO = :pDesc');
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Parameters.ParamByName('pDesc').Value := Descricao;
      Open;

      Result := FieldByName('ID_CONTASBANCARIAS').AsInteger;
    End;
end;

end.
