unit F_LancamentoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.Buttons, Funcoes, Data.DB, Data.Win.ADODB;

type
  TfrmLancamentoCaixa = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtHistorico: TEdit;
    Label2: TLabel;
    EdtDocumento: TEdit;
    Label3: TLabel;
    cbTipo: TComboBox;
    Label4: TLabel;
    EdtData: TJvDateEdit;
    EdtValor: TcxCurrencyEdit;
    Label5: TLabel;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    qryAux: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    Procedure GravaCaixaGeral;
    Procedure GravaCaixaDiario;
  public
    { Public declarations }
  end;

var
  frmLancamentoCaixa: TfrmLancamentoCaixa;

implementation

{$R *.dfm}

procedure TfrmLancamentoCaixa.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLancamentoCaixa.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if Caixa.IDCaixa = -1 then
    Begin
      GravaCaixaGeral;
    End
  Else
    Begin
      GravaCaixaDiario
    End;

    Close;
end;

procedure TfrmLancamentoCaixa.GravaCaixaDiario;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_LCTOSCAIXA = 0');
      Open;

      Append;
      FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
      FieldByName('ID_Operador').AsInteger := Operador.ID;
      FieldByName('TIPODESPESA').AsInteger := 10;
      FieldByName('ENTRADA_SAIDA').AsInteger := cbTipo.ItemIndex;
      FieldByName('HISTORICO').AsString := EdtHistorico.Text;
      FieldByName('DOCUMENTO').AsString := EdtDocumento.Text;
      FieldByName('DATA').AsDateTime := EdtData.Date;

      if cbTipo.ItemIndex = 0 then
        Begin
          FieldByName('VLRENTRADA').AsFloat := EdtValor.Value;
          FieldBYName('VLRSAIDA').AsFloat := 0;
        End
      Else
        Begin
          FieldByName('VLRENTRADA').AsFloat := 0;
          FieldBYName('VLRSAIDA').AsFloat := EdtValor.Value;
        End;

      Post;
    End;
end;

procedure TfrmLancamentoCaixa.GravaCaixaGeral;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SALDOCAIXA');
      SQL.Add('WHERE ID_SALDOCAIXA = 0');
      Open;

      Append;
      FieldByName('ID_CAIXAS').AsInteger := 0;
      FieldByName('TIPODESPESA').AsInteger := 10;
      FieldByName('ENTRADA_SAIDA').AsInteger := cbTipo.ItemIndex;
      FieldByName('HISTORICO').AsString := EdtHistorico.Text;
      FieldByName('DOCUMENTO').AsString := EdtDocumento.Text;
      FieldByName('DATA').AsDateTime := EdtData.Date;

      if cbTipo.ItemIndex = 0 then
        Begin
          FieldByName('VLRENTRADA').AsFloat := EdtValor.Value;
          FieldBYName('VLRSAIDA').AsFloat := 0;
        End
      Else
        Begin
          FieldByName('VLRENTRADA').AsFloat := 0;
          FieldBYName('VLRSAIDA').AsFloat := EdtValor.Value;
        End;

      Post;
    End;
end;

end.
