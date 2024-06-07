unit F_ReforcoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Funcoes, Vcl.Dialogs, Padrao, Data.DB,
  Data.Win.ADODB, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Vcl.Buttons, cxTextEdit,
  cxCurrencyEdit, Vcl.StdCtrls;

type
  TfrmReforcoCaixa = class(TfrmPadrao)
    qryAux: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbMoeda: TComboBox;
    Label2: TLabel;
    EdtValor: TcxCurrencyEdit;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    Label3: TLabel;
    EdtObs: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReforcoCaixa: TfrmReforcoCaixa;

implementation

{$R *.dfm}

procedure TfrmReforcoCaixa.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmReforcoCaixa.btnSalvarClick(Sender: TObject);
var
  iDespesa : Integer;
begin
  inherited;
  if EdtValor.Value = 0 then
    Begin
      Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_LCTOSCAIXA = 0 ');
      Open;

      case cbMoeda.ItemIndex of
        0: Begin
          iDespesa := 7;
        End;
        1: Begin
          iDespesa := 8;
        End;
      end;

      Append;
      FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPODESPESA').AsInteger := iDespesa;
      FieldByName('ENTRADA_SAIDA').AsInteger := 0;
      FieldByName('HISTORICO').AsString := 'Operador: '+ Operador.Nome + ', Obs: ' + EdtObs.Text;;
      FieldByName('DATA').AsDateTime := Now;
      FieldByName('VLRENTRADA').AsFloat := EdtValor.Value;
      FieldByName('VLRSAIDA').AsFloat := 0;
      Post;
    End;

    Close;
end;

procedure TfrmReforcoCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  EdtValor.Value := 0;
end;

end.
