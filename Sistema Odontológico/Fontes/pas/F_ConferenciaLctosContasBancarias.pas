unit F_ConferenciaLctosContasBancarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Funcoes, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfrmConfContas = class(TfrmPadrao)
    btnFechar: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblEntrada: TLabel;
    lblSaida: TLabel;
    lblSaldo: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbFiltrar: TSpeedButton;
    EdtDataInicial: TJvDateEdit;
    EdtDataFinal: TJvDateEdit;
    cbTipo: TComboBox;
    cbConta: TComboBox;
    qryAux: TADOQuery;
    GroupBox2: TGroupBox;
    GrdOrcamento: TJvDBUltimGrid;
    dsSaldos: TDataSource;
    qrySaldos: TADOQuery;
    qrySaldosID_SALDOCONTASBANCARIAS: TAutoIncField;
    qrySaldosID_FILIAL: TIntegerField;
    qrySaldosID_CONTASBANCARIAS: TIntegerField;
    qrySaldosID_OPERADOR: TIntegerField;
    qrySaldosENTRADA_SAIDA: TIntegerField;
    qrySaldosHISTORICO: TStringField;
    qrySaldosVLRSAIDA: TFloatField;
    qrySaldosVLRENTRADA: TFloatField;
    qrySaldosDATA: TDateTimeField;
    qrySaldosBanco: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbContaClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure EdtDataInicialExit(Sender: TObject);
    procedure EdtDataFinalExit(Sender: TObject);
    procedure cbFiltrarClick(Sender: TObject);
  private
    Procedure CarregaFiltros;
  public
    { Public declarations }
  end;

var
  frmConfContas: TfrmConfContas;

implementation

{$R *.dfm}

procedure TfrmConfContas.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConfContas.CarregaFiltros;
var
  dDataInicial,
  dDataFinal : TDateTime;
  iTipoFiltro : Integer;
  rEntrada ,
  rSaida ,
  rSaldo : Double;
begin

  rEntrada := 0;
  rSaida := 0;
  rSaldo := 0;

  dDataInicial := StrToDateTime(EdtDataInicial.Text + ' 00:00:00');
  dDataFinal := StrToDateTime(EdtDataFinal.Text + ' 23:59:59');

  With qrySaldos do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SALDOCONTASBANCARIAS.ID_SALDOCONTASBANCARIAS, SALDOCONTASBANCARIAS.ID_FILIAL, SALDOCONTASBANCARIAS.ID_CONTASBANCARIAS,');
      SQL.Add('SALDOCONTASBANCARIAS.ID_OPERADOR, SALDOCONTASBANCARIAS.ENTRADA_SAIDA, SALDOCONTASBANCARIAS.HISTORICO, SALDOCONTASBANCARIAS.VLRSAIDA,');
      SQL.Add('SALDOCONTASBANCARIAS.VLRENTRADA, SALDOCONTASBANCARIAS.DATA, CONTASBANCARIAS.DESCRICAO AS Banco FROM SALDOCONTASBANCARIAS');
      SQL.Add('INNER JOIN CONTASBANCARIAS ON SALDOCONTASBANCARIAS.ID_CONTASBANCARIAS = CONTASBANCARIAS.ID_CONTASBANCARIAS');
      SQL.Add('WHERE DATA BETWEEN :pDataIni AND :pDataFim');
      SQL.Add('AND SALDOCONTASBANCARIAS.ID_FILIAL = :pFilial');
      Parameters.ParamByName('pDataIni').Value := dDataInicial;
      Parameters.ParamByName('pDataFim').Value := dDataFinal;
      Parameters.ParamByName('pFilial').Value := Empresa.ID;

      if cbTipo.ItemIndex > 0 then
        Begin
          iTipoFiltro := cbTipo.ItemIndex - 1;
          SQL.Add('AND SALDOCONTASBANCARIAS.ENTRADA_SAIDA = :pEntSaida');
          Parameters.ParamByName('pEntSaida').Value := iTIpoFiltro;
        end;

      if cbConta.ItemIndex > 0 then
        Begin
          SQL.Add('AND CONTASBANCARIAS.DESCRICAO = :pBanco');
          Parameters.ParamByName('pBanco').Value := cbConta.Text;
        End;

      SQL.Add('ORDER BY DATA');
      Open;

      while Not Eof do
        Begin
          rEntrada := rEntrada + FieldByName('VLRENTRADA').AsFloat;
          rSaida := rSaida +  FieldByName('VLRSAIDA').AsFloat;
          Next;
        End;

        lblEntrada.Caption := FormatFloat('#,##0.00', rEntrada);
        lblSaida.Caption := FormatFloat('#,##0.00', rSaida);
        rSaldo := rEntrada - rSaida;

        if rSaldo > 0 then
          Begin
            lblSaldo.Font.Color := clGreen;
          End
        Else if rSaldo = 0 then
          Begin
            lblSaldo.Font.Color := clBlue;
          End
        Else
          Begin
            lblSaldo.Font.Color := clRed;
          End;

        lblSaldo.Caption := FormatFloat('#,##0.00', rSaldo);

    End;
end;

procedure TfrmConfContas.cbContaClick(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmConfContas.cbFiltrarClick(Sender: TObject);
begin
  inherited;
   CarregaFiltros;
end;

procedure TfrmConfContas.cbTipoClick(Sender: TObject);
begin
  inherited;
   CarregaFiltros;
end;

procedure TfrmConfContas.EdtDataFinalExit(Sender: TObject);
begin
  inherited;
   CarregaFiltros;
end;

procedure TfrmConfContas.EdtDataInicialExit(Sender: TObject);
begin
  inherited;
   CarregaFiltros;
end;

procedure TfrmConfContas.FormActivate(Sender: TObject);
begin
  inherited;
  cbConta.Items.Clear;

  cbConta.Items.Add('Todas');

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
          cbConta.Items.Add(FieldByName('DESCRICAO').AsString);
          Next;
        End;
    End;

  cbConta.ItemIndex := 0;
  CarregaFiltros;
end;

procedure TfrmConfContas.FormCreate(Sender: TObject);
var
sDataIni : String;
dDataIni,
dDataFim : TDateTime;
begin
  inherited;

  sDataIni := FormatDateTime('MM/YYYY', Now);
  sDataIni := '01/' + sDataIni;
  dDataIni := StrToDate(sDataIni);
  dDataFim := IncMonth(dDataIni, 1);
  dDataFim := dDataFim - 1;

  EdtDataInicial.Date := dDataIni;
  EdtDataFinal.Date := dDataFim;
end;

end.
