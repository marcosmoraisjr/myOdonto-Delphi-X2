unit F_ConferenciaLctos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Funcoes, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmConfCaixa = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtDataInicial: TJvDateEdit;
    EdtDataFinal: TJvDateEdit;
    cbTipo: TComboBox;
    cbCaixa: TComboBox;
    cbCaixaAtual: TCheckBox;
    cbFiltrar: TSpeedButton;
    GroupBox2: TGroupBox;
    GrdOrcamento: TJvDBUltimGrid;
    dsCaixa: TDataSource;
    qryCaixa: TADOQuery;
    qryCaixaDESCRICAO: TStringField;
    qryCaixaHISTORICO: TStringField;
    qryCaixaVLRSAIDA: TFloatField;
    qryCaixaVLRENTRADA: TFloatField;
    qryCaixaData: TDateTimeField;
    btnFechar: TSpeedButton;
    qryAux: TADOQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblEntrada: TLabel;
    lblSaida: TLabel;
    lblSaldo: TLabel;
    qryCaixaIDCaixa: TIntegerField;
    qryCaixaDocumento: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    EdtCodCaixa: TEdit;
    EdtDocumento: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure cbFiltrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbCaixaClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure EdtCodCaixaExit(Sender: TObject);
    procedure EdtDocumentoExit(Sender: TObject);
  private
    Procedure MontaCaixaDiario;
    Procedure MontaCaixaGeral;
  public
    { Public declarations }
  end;

var
  frmConfCaixa: TfrmConfCaixa;

implementation

{$R *.dfm}

procedure TfrmConfCaixa.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConfCaixa.cbCaixaClick(Sender: TObject);
begin
  inherited;
  cbFiltrarClick(Self);
end;

procedure TfrmConfCaixa.cbFiltrarClick(Sender: TObject);
begin
  inherited;
  case cbCaixa.ItemIndex of
    0: MontaCaixaDiario;
    1: MontaCaixaGeral;
  end;
end;

procedure TfrmConfCaixa.cbTipoClick(Sender: TObject);
begin
  inherited;
  cbFiltrarClick(Self);
end;

procedure TfrmConfCaixa.EdtCodCaixaExit(Sender: TObject);
begin
  inherited;
  cbFiltrarClick(Self);
end;

procedure TfrmConfCaixa.EdtDocumentoExit(Sender: TObject);
begin
  inherited;
  cbFiltrarClick(Self);
end;

procedure TfrmConfCaixa.FormActivate(Sender: TObject);
begin
  inherited;
  cbFiltrarClick(Self);
end;

procedure TfrmConfCaixa.FormCreate(Sender: TObject);
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

procedure TfrmConfCaixa.MontaCaixaDiario;
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

  case cbTipo.ItemIndex of
    0 : Begin
      iTipoFiltro := 10;
    End;

    1 : Begin
      iTipoFiltro := 0;
    End;

    2 : Begin
      iTipoFiltro := 1;
    End;
  end;

  dDataInicial := StrToDateTime(EdtDataInicial.Text + ' 00:00:00');
  dDataFinal := StrToDateTime(EdtDataFinal.Text + ' 23:59:59');

  qryCaixa.Close;
  qryCaixa.Open;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('select * from lctoscaixa');
      SQL.Add('WHERE DATA BETWEEN :pDataIni AND :pDataFim');
      parameters.ParamByName('pDataIni').Value := dDataInicial;
      Parameters.ParamByName('pDataFim').Value := dDataFinal;

      if iTipoFiltro < 8 then
        Begin
          SQL.Add('AND ENTRADA_SAIDA = :pID');
          Parameters.ParamByName('pID').Value := iTipoFiltro;
        End;

      if (cbCaixaAtual.Checked) AND (Caixa.IDCaixa > 0) then
        Begin
          SQL.Add('AND ID_CAIXAS = :pCaixas');
          Parameters.ParamByName('pCaixas').Value := Caixa.IDCaixa;
        End;

      if EdtDocumento.Text  <> '' then
        Begin
          SQL.Add('AND DOCUMENTO = :pDOC');
          Parameters.ParamByName('pDOC').Value := EdtDocumento.Text;
        End;

      if EdtCodCaixa.Text <> '' then
        Begin
          SQL.Add('AND ID_CAIXAS = :pCaix');
          Parameters.ParamByName('pCaix').Value := EdtCodCaixa.Text;
        End;

      SQL.Add('ORDER BY DATA');
      Open;
{0 = Saldo Inicial do Caixa/ retirado do caixa geral para saldo do caixa di�rio
1 = Dinheiro
2 = Cheque A Vista
3 = Cheque A Prazo
4 = Outras Entradas
5 = Recebimento de Divida Dinheiro
6 = Recebimento de Divida Cheque � Vista
7 = Reforco Caixa Dinheiro
8 = Reforco Caixa Cheque
9 = Retirada de Valores Dinheiro
11 = Retirada de Valores Cheque A Vista
12 = Retirada de Valores Cheque a Prazo
13 = Retirada de Valores Outras Entradas
10 = Lan�amento Manual
14 = Saldo faltando do caixa
15 = Pagamento Titulo Dinheiro
16 = Pagamento Titulo Cheque
17 = Pagamento Titulo Cheque Recebido
18 = Pagamento Titulo Dinheiro e Cheque
19 = Pagamento Titulo Dinheiro, Cheque e Cheque Recebido
20 = Pagamento Titulo Dinheiro e Cheque Recebido
21 = Pagamento Titulo Cheque e Cheque Recebido
22 = Estorno Titulo Dinheiro
23 = Estorno Titulo Cheque
24 = Estorno Titulo Cheque Recebido
25 = Estorno Titulo Dinheiro e Cheque
26 = Estorno Titulo Dinheiro, Cheque e Cheque Recebido
27 = Estorno Titulo Dinheiro e Cheque Recebido
28 = Estorno Titulo Cheque e Cheque Recebido
29 = Recebimento de Divida Cheque Pr�-datado
30 = Recebimento de Divida Dinheiro e Cheque � Vista
31 = Recebimento de Divida Dinheiro e Cheque Pr�-Datado
32 = Recebimento de Divida Cheque � Vista e Cheque Pr�-Datado
33 = Recebimento de Divida Dinheiro, Cheque � Vista e Cheque Pr�-Datado
34 = Estorno Titulo Dinheiro
35 = Estorno Titulo Cheque � Vista
36 = Estorno Titulo Cheque Pr�-Datado
37 = Estorno Titulo Dinheiro e Cheque � Vista
38 = Estorno Titulo Dinheiro, Cheque � Vista e Cheque Pr�-Datado
39 = Estorno Titulo Dinheiro e Cheque Pr�-Datado
40 = Estorno Titulo Cheque � Vista e Cheque Pr�-Datado
41 = Transfer�ncia Entre Contas
42 = Repasse Manual de Cheque}
      while not Eof do
        Begin
          qryCaixa.Append;
          Case FieldByname('TIPODESPESA').AsInteger of
            0 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Saldo Inicial do Caixa';
            1 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Dinheiro';
            2 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Cheque';
            3 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Cheque � Prazo';
            4 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Outras Entradas';
            5 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Recebimento de Divida Dinheiro';
            6 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Recebimento de Divida Cheque';
            7 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Refor�o Caixa Dinheiro';
            8 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Refor�o Caixa Cheque';
            9 : qryCaixa.FieldByName('DESCRICAO').AsString  := 'Retirada de Valores Dinheiro';
            10 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Lan�amento Manual';
            11 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Retirada de Valores Cheque � Vista';
            12 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Retirada de Valores Cheque � Prazo';
            13 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Retirada de Valores Outras Entradas';
            14 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Saldo Faltando do Caixa';
            15 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento T�tulo - Dinheiro';
            16 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Cheque';
            17 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Cheque Recebido';
            18 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Dinheiro e Cheque';
            19 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Dinheiro, Cheque e Cheque Recebido';
            20 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Dinheiro e Cheque Recebido';
            21 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Cheque e Cheque Recebido';
            22 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno T�tulo - Dinheiro';
            23 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Cheque';
            24 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Cheque Recebido';
            25 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Dinheiro e Cheque';
            26 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Dinheiro, Cheque e Cheque Recebido';
            27 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Dinheiro e Cheque Recebido';
            28 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Cheque e Cheque Recebido';
            29 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Cheque Pr�-datado';
            30 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Dinheiro e Cheque � Vista';
            31 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Dinheiro e Cheque Pr�-Datado';
            32 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Cheque � Vista e Cheque Pr�-Datado';
            33 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Dinheiro, Cheque � Vista e Cheque Pr�-Datado';
            34 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro';
            35 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Cheque � Vista';
            36 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Cheque Pr�-Datado';
            37 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro e Cheque � Vista';
            38 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro, Cheque � Vista e Cheque Pr�-Datado';
            39 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro e Cheque Pr�-Datado';
            40 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Cheque � Vista e Cheque Pr�-Datado';
            41 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Transfer�ncia Entre Contas';
            42 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Repasse de Cheque Manual';
          End;

          qryCaixaHISTORICO.AsString := FieldByName('HISTORICO').AsString;
          qryCaixaVLRSAIDA.AsFloat := FieldByName('VLRSAIDA').AsFloat;
          qryCaixaVLRENTRADA.AsFloat := FieldByName('VLRENTRADA').AsFloat;
          qryCaixaData.AsDateTime := FieldBYName('DATA').AsDateTime;
          qryCaixaDocumento.AsString := FieldByName('DOCUMENTO').AsString;
          qryCaixaIDCaixa.AsInteger := FieldByName('ID_CAIXAS').AsInteger;
          rEntrada := rEntrada + FieldByName('VLRENTRADA').AsFloat;
          rSaida := rSaida +  FieldByName('VLRSAIDA').AsFloat;
          qryCaixa.Post;

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

procedure TfrmConfCaixa.MontaCaixaGeral;
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

  case cbTipo.ItemIndex of
    0 : Begin
      iTipoFiltro := 10;
    End;

    1 : Begin
      iTipoFiltro := 0;
    End;

    2 : Begin
      iTipoFiltro := 1;
    End;
  end;

  dDataInicial := StrToDateTime(EdtDataInicial.Text + ' 00:00:00');
  dDataFinal := StrToDateTime(EdtDataFinal.Text + ' 23:59:59');

  qryCaixa.Close;
  qryCaixa.Open;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('select * from SALDOCAIXA');
      SQL.Add('WHERE DATA BETWEEN :pDataIni AND :pDataFim');
      parameters.ParamByName('pDataIni').Value := dDataInicial;
      Parameters.ParamByName('pDataFim').Value := dDataFinal;

      if iTipoFiltro < 8 then
        Begin
          SQL.Add('AND ENTRADA_SAIDA = :pID');
          Parameters.ParamByName('pID').Value := iTipoFiltro;
        End;

      if EdtDocumento.Text  <> '' then
        Begin
          SQL.Add('AND DOCUMENTO = :pDOC');
          Parameters.ParamByName('pDOC').Value := EdtDocumento.Text;
        End;

      SQL.Add('ORDER BY DATA');
      Open;

      while not Eof do
        Begin
          qryCaixa.Append;
          Case FieldByname('TIPODESPESA').AsInteger of
            0 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Saldo Inicial para caixa diario';
            1 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Dinheiro';
            2 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Cheque';
            3 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Cheque � Prazo';
            4 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Outras Entradas';
            5 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Dinheiro';
            6 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Cheque';
            7 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Refor�o Caixa Dinheiro';
            8 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Refor�o Caixa Cheque';
            9 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Retirada de Valores';
            10 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Lan�amento Manual';
            11 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Retirada de Valores Cheque � Vista';
            12 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Retirada de Valores Cheque � Prazo';
            13 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Retirada de Valores Outras Entradas';
            14 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Saldo Faltando do Caixa';
            15 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento T�tulo - Dinheiro';
            16 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Cheque';
            17 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Cheque Recebido';
            18 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Dinheiro e Cheque';
            19 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Dinheiro, Cheque e Cheque Recebido';
            20 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Dinheiro e Cheque Recebido';
            21 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Pagamento de T�tulo - Cheque e Cheque Recebido';
            22 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno T�tulo - Dinheiro';
            23 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Cheque';
            24 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Cheque Recebido';
            25 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Dinheiro e Cheque';
            26 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Dinheiro, Cheque e Cheque Recebido';
            27 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Dinheiro e Cheque Recebido';
            28 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno de T�tulo - Cheque e Cheque Recebido';
            29 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Cheque Pr�-datado';
            30 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Dinheiro e Cheque � Vista';
            31 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Dinheiro e Cheque Pr�-Datado';
            32 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Cheque � Vista e Cheque Pr�-Datado';
            33 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Recebimento de Divida Dinheiro, Cheque � Vista e Cheque Pr�-Datado';
            34 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro';
            35 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Cheque � Vista';
            36 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Cheque Pr�-Datado';
            37 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro e Cheque � Vista';
            38 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro, Cheque � Vista e Cheque Pr�-Datado';
            39 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Dinheiro e Cheque Pr�-Datado';
            40 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Estorno Titulo Cheque � Vista e Cheque Pr�-Datado';
            41 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Transfer�ncia Entre Contas';
            42 : qryCaixa.FieldByName('DESCRICAO').AsString := 'Repasse de Cheque Manual';
          End;

          qryCaixaHISTORICO.AsString := FieldByName('HISTORICO').AsString;
          qryCaixaVLRSAIDA.AsFloat := FieldByName('VLRSAIDA').AsFloat;
          qryCaixaVLRENTRADA.AsFloat := FieldByName('VLRENTRADA').AsFloat;
          qryCaixaData.AsDateTime := FieldBYName('DATA').AsDateTime;
          qryCaixaIDCaixa.AsInteger := 0;
          qryCaixaDocumento.AsString := FieldByName('DOCUMENTO').AsString;
          rEntrada := rEntrada + FieldByName('VLRENTRADA').AsFloat;
          rSaida := rSaida +  FieldByName('VLRSAIDA').AsFloat;
          qryCaixa.Post;

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

end.
