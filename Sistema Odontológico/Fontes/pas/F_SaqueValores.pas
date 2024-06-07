unit F_SaqueValores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Funcoes, Vcl.Buttons;

type
  TfrmSaqueValores = class(TfrmPadrao)
    qryAux: TADOQuery;
    GroupBox1: TGroupBox;
    gridPagamento: TJvDBUltimGrid;
    qryValores: TADOQuery;
    qryValoresDescricao: TStringField;
    qryValoresValor: TFloatField;
    qryValoresValorCaixa: TFloatField;
    qryValoresValorDiferenca: TFloatField;
    dsValores: TDataSource;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    GroupBox2: TGroupBox;
    EdtObs: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure qryValoresValorValidate(Sender: TField);
    procedure btnSalvarClick(Sender: TObject);
  private
    isLoad : Boolean;
  public
    Procedure MontaSQL;
    Procedure CarregaCaixaGeral;
    Procedure CarregaCaixaDiario;
  end;

var
  frmSaqueValores: TfrmSaqueValores;

implementation

{$R *.dfm}

procedure TfrmSaqueValores.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSaqueValores.btnSalvarClick(Sender: TObject);
var
  iTipo : integer;
begin
  inherited;

  qryValores.First;

  while not qryValores.Eof do
    Begin

      if qryValoresDescricao.AsString = 'Dinheiro' then
        Begin
          iTipo := 9;
        End
      Else if qryValoresDescricao.AsString = 'Cheque � Vista' then
        Begin
          iTipo := 11;
        End
      Else if qryValoresDescricao.AsString = 'Cheque � Prazo' then
        Begin
          iTipo := 12;
        End
      Else
        Begin
         iTipo := 13;
        End;

      if (qryValoresValor.AsFloat > 0) And (qryValoresValorCaixa.AsFloat = 0) or (qryValoresValor.AsFloat = 0) then
        Begin
          qryValores.Next;
        End
      Else
        Begin

         if qryValoresValor.AsFloat > qryValoresValorCaixa.AsFloat then
          Begin
          application.MessageBox
            (PChar('Imposs�vel tirar uma quantidade de '+qryValoresDescricao.AsString+' maior que tem no Caixa!'),
            'Aten��o!', mb_ok + MB_ICONWARNING);
            qryValores.Next;
          End;



         if Caixa.IDCaixa = - 1 then
          Begin
            With qryAux do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM SALDOCAIXA');
                SQL.Add('WHERE ID_SALDOCAIXA = 0 ');
                Open;

                Append;
                FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
                FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
                FieldByName('TIPODESPESA').AsInteger := iTipo;
                FieldByName('ENTRADA_SAIDA').AsInteger := 1;
                FieldByName('HISTORICO').AsString := 'Operador: '+ Operador.Nome + ', '+ qryValoresDescricao.AsString + ' Obs.: ' + EdtObs.Text;
                FieldByName('DATA').AsDateTime := Now;
                FieldByName('VLRENTRADA').AsFloat := 0;
                FieldByName('VLRSAIDA').AsFloat := qryValoresValor.AsFloat;
                Post;
              End;
          End
         Else
          Begin
            With qryAux do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM LCTOSCAIXA');
                SQL.Add('WHERE ID_LCTOSCAIXA = 0 ');
                Open;

                Append;
                FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
                FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
                FieldByName('TIPODESPESA').AsInteger := iTipo;
                FieldByName('ENTRADA_SAIDA').AsInteger := 1;
                FieldByName('HISTORICO').AsString := 'Operador: '+ Operador.Nome + ', '+ qryValoresDescricao.AsString + ' Obs.: ' + EdtObs.Text;
                FieldByName('DATA').AsDateTime := Now;
                FieldByName('VLRENTRADA').AsFloat := 0;
                FieldByName('VLRSAIDA').AsFloat := qryValoresValor.AsFloat;
                Post;
              End;
          End;

          qryValores.Next
        End;
    End;


    Close;
end;

procedure TfrmSaqueValores.CarregaCaixaDiario;
var
  rValor : Real;
begin
  With qryValores do
    Begin
      Close;
      Open;

      Append;
      FieldByName('DESCRICAO').AsString := 'Dinheiro';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 1');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 0');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 7');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 9');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
          qryValoresValorCaixa.AsFloat := rValor;
        End;
      Post;

      Append;
      FieldByName('DESCRICAO').AsString := 'Cheque � Vista';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 2');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 8');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 11');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
          qryValoresValorCaixa.AsFloat := rValor;
        End;
      Post;

      Append;
      FieldByName('DESCRICAO').AsString := 'Cheque � Prazo';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 3');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 12');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
          qryValoresValorCaixa.AsFloat := rValor;
        End;
      Post;

      Append;
      FieldByName('DESCRICAO').AsString := 'Outras Entradas';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 4');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA = 10');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_CAIXAS = :pID');
          SQL.Add('AND TIPODESPESA > 12');
          Parameters.ParamByName('pID').Value := Caixa.IDCaixa;
          Open;

          rValor := rValor + FieldByName('SALDO').AsFloat;

          qryValoresValorCaixa.AsFloat := rValor;
          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
        End;
      Post;
   End;
end;

procedure TfrmSaqueValores.CarregaCaixaGeral;
begin
  With qryValores do
    Begin
      Close;
      Open;

      Append;
      FieldByName('DESCRICAO').AsString := 'Dinheiro';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM SALDOCAIXA');
          SQL.Add('WHERE TIPODESPESA = 1 or TIPODESPESA = 7 or TIPODESPESA = 0 or TIPODESPESA = 9');
          Open;

          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
          qryValoresValorCaixa.AsFloat := FieldByName('SALDO').AsFloat;
        End;
      Post;

      Append;
      FieldByName('DESCRICAO').AsString := 'Cheque � Vista';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM SALDOCAIXA');
          SQL.Add('WHERE TIPODESPESA = 2 or TIPODESPESA = 8 OR TIPODESPESA = 11');
          Open;

          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
          qryValoresValorCaixa.AsFloat := FieldByName('SALDO').AsFloat;
        End;
      Post;

      Append;
      FieldByName('DESCRICAO').AsString := 'Cheque � Prazo';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM SALDOCAIXA');
          SQL.Add('WHERE TIPODESPESA = 3 OR TIPODESPESA = 12');
          Open;

          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
          qryValoresValorCaixa.AsFloat := FieldByName('SALDO').AsFloat;
        End;
      Post;

      Append;
      FieldByName('DESCRICAO').AsString := 'Outras Entradas';

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM SALDOCAIXA');
          SQL.Add('WHERE TIPODESPESA = 4 OR TIPODESPESA = 10 OR TIPODESPESA > 12');
          Open;

          qryValoresValorCaixa.AsFloat := FieldByName('SALDO').AsFloat;
          qryValoresValor.AsFloat := 0;
          qryValoresValorDiferenca.AsFloat := 0;
        End;
      Post;
   End;
end;

procedure TfrmSaqueValores.FormCreate(Sender: TObject);
begin
  inherited;
  MontaSQL;
end;

procedure TfrmSaqueValores.MontaSQL;
begin
  if Caixa.IDCaixa = -1 then
    Begin
      CarregaCaixaGeral;
    End
  Else
    Begin
      CarregaCaixaDiario;
    End;
end;

procedure TfrmSaqueValores.qryValoresValorValidate(Sender: TField);
var
  rDiferenca : Double;
begin
  inherited;
  if Not IsLoad then
    Begin

    End;
end;

end.
