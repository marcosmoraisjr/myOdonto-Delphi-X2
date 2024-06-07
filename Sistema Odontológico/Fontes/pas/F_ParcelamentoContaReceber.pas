unit F_ParcelamentoContaReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, cxTextEdit, cxCurrencyEdit, Vcl.Buttons, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmParcelamentoContaReceber = class(TfrmPadrao)
    btnSalvar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton6: TSpeedButton;
    EdtValor: TcxCurrencyEdit;
    EdtDtConta: TJvDateEdit;
    EdtParcelas: TEdit;
    GroupBox2: TGroupBox;
    gridPagamento: TJvDBUltimGrid;
    btnFechar: TSpeedButton;
    qryParcelas: TADOQuery;
    qryParcelasDataPgto: TDateTimeField;
    qryParcelasValor: TFloatField;
    dsParcelas: TDataSource;
    qryAux: TADOQuery;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure EdtDtContaExit(Sender: TObject);
    procedure EdtParcelasExit(Sender: TObject);
  private
    { Private declarations }
  public
    iIDContaReceber : Integer;
    Procedure CarregaConta;
  end;

var
  frmParcelamentoContaReceber: TfrmParcelamentoContaReceber;

implementation

{$R *.dfm}

procedure TfrmParcelamentoContaReceber.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmParcelamentoContaReceber.btnSalvarClick(Sender: TObject);
var
  iFilial ,
  iIDPaciente,
  iSituacao  : Integer;
  sHistorico,
  sNroNota,
  sDocumeto : String;
  dDataVencimento,
  dDataConta : TDatetime;
  rValorJuros,
  rValor,
  rValorDesconto : Double;
begin
  inherited;

    SpeedButton6Click(Self);

  if qryParcelas.RecordCount < 2 then
    Begin
      Close;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTARECEBER');
      SQL.Add('WHERE ID_CONTARECEBER = :pID');
      Parameters.ParamByName('pID').Value := iIDContaReceber;
      Open;

      iFilial := FieldByName('ID_FILIAL').AsInteger;
      iIDPaciente := FieldByName('ID_PACIENTE').AsInteger;
      iSituacao := FieldByName('SITUACAO').AsInteger;
      sHistorico := FieldByName('HISTORICO').AsString;
      sNroNota := FieldByName('NRONOTA').AsString;
      sDocumeto := FieldByName('DOCUMENTO').AsString;
      dDataConta := FieldByName('DTACONTA').AsDateTime;

      rValorJuros := FieldByName('VALORJUROS').AsFloat;
      rValor := FieldByName('VALOR').AsFloat;
      rValorDesconto := FieldByName('VALORDESCONTO').AsFloat;


      if rValorJuros > 0 then
         Begin
           rValorJuros := rValorJuros / StrToFloat(EdtParcelas.Text);
         End;

      if rValor > 0 then
        Begin
          rValor := rValor  / StrToFloat(EdtParcelas.Text);
        End;

      if rValorDesconto > 0 then
        Begin
          rValorDesconto := rValorDesconto / StrToFloat(EdtParcelas.Text);
        End;

      qryParcelas.First;

      while not qryParcelas.Eof do
        Begin
          Append;
          FieldByName('ID_FILIAL').AsInteger := iFilial;
          FieldByName('ID_PACIENTE').AsInteger := iIDPaciente;
          FieldByName('SITUACAO').AsInteger := iSituacao;
          FieldByName('HISTORICO').AsString := sHistorico;
          FieldByName('NRONOTA').AsString := sNroNota;
          FieldByName('DOCUMENTO').AsString := sDocumeto;
          FieldByName('DTACONTA').AsDateTime := dDataConta;

          FieldByName('VALORJUROS').AsFloat := rValorJuros;
          FieldByName('VALOR').AsFloat := rValor;
          FieldByName('VALORDESCONTO').AsFloat := rValorDesconto;
          FieldByName('DTAVENCIMENTO').AsDateTime := qryParcelasDataPgto.AsDateTime;
          FieldByName('VALORRESTANTE').AsFloat := qryParcelasValor.AsFloat;
          Post;
          qryParcelas.Next;
        End;

      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CONTARECEBER');
      SQL.Add('WHERE ID_CONTARECEBER = :pID');
      Parameters.ParamByName('pID').Value := iIDContaReceber;
      ExecSQL;
    End;

    Close;

end;

procedure TfrmParcelamentoContaReceber.CarregaConta;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTARECEBER');
      SQL.Add('WHERE ID_CONTARECEBER = :pID');
      Parameters.ParamByName('pID').Value := iIDContaReceber;
      Open;

      EdtValor.Value := FieldByName('VALORRESTANTE').AsFloat;
      EdtDtConta.Date := FieldByName('DTAVENCIMENTO').AsDateTime;
    End;
end;

procedure TfrmParcelamentoContaReceber.EdtDtContaExit(Sender: TObject);
begin
  inherited;
  SpeedButton6Click(Self);
end;

procedure TfrmParcelamentoContaReceber.EdtParcelasExit(Sender: TObject);
begin
  inherited;
  SpeedButton6Click(Self);
end;

procedure TfrmParcelamentoContaReceber.FormActivate(Sender: TObject);
begin
  inherited;
  SpeedButton6Click(self);
  EdtParcelas.SetFocus;
end;

procedure TfrmParcelamentoContaReceber.SpeedButton6Click(Sender: TObject);
var
  i : integer;
  dDataVcto : TDate;
  rValor : Double;
begin
  inherited;
  i := 0;
  dDataVcto := EdtDtConta.Date;

  With qryParcelas do
    Begin
      Close;
      Open;

      rValor := EdtValor.Value / StrToFloat(EdtParcelas.Text);

      for i := 1 to StrToInt(EdtParcelas.Text) do
        Begin
          Append;
          FieldByName('DataPgto').AsDateTime := dDataVcto;
          FieldByName('Valor').AsFloat := rValor;
          Post;

          dDataVcto := IncMonth(dDataVcto, 1);
        End;
    End;
end;

end.
