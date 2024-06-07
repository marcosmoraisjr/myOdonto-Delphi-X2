unit F_AbreCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Vcl.Buttons, cxTextEdit,
  cxCurrencyEdit, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Data.DB,
  Data.Win.ADODB, Funcoes;

type
  TfrmAbreCaixa = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtDtaCaixa: TJvDateEdit;
    Label2: TLabel;
    cbSaldoRetirado: TComboBox;
    Label3: TLabel;
    EdtValor: TcxCurrencyEdit;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    Label4: TLabel;
    EdtOperador: TJvDBSearchComboBox;
    qryOperadores: TADOQuery;
    qryOperadoresID_OPERADORES: TAutoIncField;
    qryOperadoresNOME: TStringField;
    dsOperadores: TDataSource;
    EdtNum: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbreCaixa: TfrmAbreCaixa;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmAbreCaixa.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAbreCaixa.btnSalvarClick(Sender: TObject);
var
  sDataAtual : String;
  iCaixa : Integer;
begin
  inherited;

  if EdtDtaCaixa.Date < Now then
    Begin
      if EdtDtaCaixa.Text = DateToStr(Now) then
        Begin
          //ShowMessage('DEEEEEEEEEEU :)');
        End
      Else
        Begin
           application.MessageBox
          ('N�o � poss�vel abrir um caixa com a data menor que a data atual!',
          'Aten��o!', mb_ok + MB_ICONWARNING);
          Exit;
        End;
    End;

  With dm.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CAIXAS');
      SQL.Add('WHERE ID_CAIXAS = -100');
      Open;

      Append;
      FieldByName('ID_OPERADORES').AsInteger := qryOperadoresID_OPERADORES.AsInteger;
      FieldByName('DTACAIXA').AsDateTime := EdtDtaCaixa.Date;
      FieldByName('DATAABERTURA').AsDateTime := Now;
      FieldByName('SALDOINICIAL').AsFloat := EdtValor.Value;
      FieldByName('ABERTO').AsBoolean := True;
      FieldByName('NUMERO').AsString := EdtNum.Text;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CAIXAS) As ID FROM CAIXAS');
      Open;

      iCaixa := FieldByName('ID').AsInteger;

      if EdtValor.Value > 0 then
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM SALDOCAIXA');
          SQL.Add('WHERE ID_SALDOCAIXA = 0');
          Open;

          Append;
          FieldByName('ENTRADA_SAIDA').AsInteger := 1;
          FieldByName('TIPODESPESA').AsInteger := 0;
          FieldByName('DATA').AsDateTime := Now;
          FieldByname('HISTORICO').AsString := 'Saldo retiarado para o caixa: ' + IntToStr(iCaixa);
          FieldByName('VLRSAIDA').AsFloat := EdtValor.Value;
          FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
          FieldByName('ID_CAIXAS').AsInteger := iCaixa;
          Post;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_LCTOSCAIXA = 0');
          Open;

          Append;
          FieldByName('ENTRADA_SAIDA').AsInteger := 0;
          FieldByName('TIPODESPESA').AsInteger := 0;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
          FieldByName('DATA').AsDateTime := Now;
          FieldByname('HISTORICO').AsString := 'Retirado do CAIXA GERAL';
          FieldByName('VLRENTRADA').AsFloat := EdtValor.Value;
  //        FieldByName('VLRSAIDA').ASFloat := 0;
          FieldByName('ID_CAIXAS').AsInteger := iCaixa;
          Post;
        End;
    End;

    CarregaDadosCaixa(iCaixa);
    Close;
end;

procedure TfrmAbreCaixa.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  EdtValor.Value := 0;
  EdtOperador.Text := Operador.Nome;

  With dm.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CAIXAS');
      SQL.Add('WHERE ABERTO = 1');
      Open;

      i := 1;

      while Not Eof do
        Begin
          i := i + 1;
          Next;
        End;

      EdtNum.Text := IntToStr(i);
    End;
end;

end.
