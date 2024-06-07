unit F_TitulosPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Funcoes,
  Data.DB, Data.Win.ADODB, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmTitulosPagar = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtCodF: TJvComboEdit;
    EdtFornecedor: TEdit;
    rgTipo: TRadioGroup;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    EdtDataInicial: TJvDateEdit;
    Label3: TLabel;
    EdtDataFinal: TJvDateEdit;
    GroupBox3: TGroupBox;
    EdtDocumento: TEdit;
    cbFiltrar: TSpeedButton;
    GroupBox4: TGroupBox;
    PainelTotalContas: TPanel;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnFechar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    btnEditar: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    qryAux: TADOQuery;
    GroupBox6: TGroupBox;
    EdtNota: TEdit;
    qryContas: TADOQuery;
    qryContasHISTORICO: TStringField;
    qryContasFORNECEDOR: TStringField;
    qryContasNRONOTA: TStringField;
    qryContasDOCUMENTO: TStringField;
    qryContasDTACONTA: TDateTimeField;
    qryContasDTAVENCIMENTO: TDateTimeField;
    qryContasDTAPAGAMENTO: TDateTimeField;
    qryContasVALOR: TFloatField;
    qryContasVALORPAGO: TFloatField;
    qryContasVALORJUROS: TFloatField;
    qryContasVALORDESCONTO: TFloatField;
    qryContasVALORRESTANTE: TFloatField;
    dsContas: TDataSource;
    qryContasID_CONTAPAGAR: TAutoIncField;
    qryContasID_FILIAL: TIntegerField;
    qryContasID_FORNECEDOR: TIntegerField;
    qryContasSITUACAO: TIntegerField;
    SpeedButton6: TSpeedButton;
    gridPagamento: TJvDBUltimGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodFButtonClick(Sender: TObject);
    procedure EdtCodFExit(Sender: TObject);
    procedure gridPagamentoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbFiltrarClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure EdtDocumentoExit(Sender: TObject);
    procedure EdtNotaExit(Sender: TObject);
    procedure EdtDataInicialExit(Sender: TObject);
    procedure EdtDataFinalExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EdtCodFKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure CarregaFiltros;
  end;

var
  frmTitulosPagar: TfrmTitulosPagar;

implementation

{$R *.dfm}

uses P_Fornecedor, Main, C_TituloAPagar, F_Parcelamento, F_Pagamento,
  R_RelacaoFinanceira;

procedure TfrmTitulosPagar.btnEditarClick(Sender: TObject);
begin
  inherited;

  if not Operador.TitulosPagarE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Editar um T�tulos a Pagar!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  If qryContasID_CONTAPAGAR.AsString = '' then
  Begin
    Exit;
  End;

  Application.CreateForm(TfrmCadContaPagar, frmCadContaPagar);
  frmCadContaPagar.iIDContaPagar := qryContasID_CONTAPAGAR.AsInteger;
  frmCadContaPagar.CarregaConta;
  frmCadContaPagar.ShowModal;
  FreeAndNil(frmCadContaPagar);
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTitulosPagar.CarregaFiltros;
var
  sTexto: String;
  sDataIni, sDataFin: String;
  iContas: Integer;
  rPagas, rTotal, rVencidas, rAPagar: Real;
begin

  rPagas := 0;
  rTotal := 0;
  rVencidas := 0;
  rAPagar := 0;

  With qryContas do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CONTAPAGAR.ID_CONTAPAGAR, CONTAPAGAR.ID_FILIAL, CONTAPAGAR.ID_FORNECEDOR, CONTAPAGAR.SITUACAO, CONTAPAGAR.HISTORICO, CONTAPAGAR.NRONOTA, CONTAPAGAR.DOCUMENTO,');
    SQL.Add('CONTAPAGAR.DTACONTA, CONTAPAGAR.DTAVENCIMENTO, CONTAPAGAR.DTAPAGAMENTO, CONTAPAGAR.VALOR, CONTAPAGAR.VALORPAGO, CONTAPAGAR.VALORJUROS, CONTAPAGAR.VALORDESCONTO,');
    SQL.Add('CONTAPAGAR.VALORRESTANTE, FORNECEDOR.NOME AS FORNECEDOR FROM CONTAPAGAR');
    SQL.Add('INNER JOIN FORNECEDOR ON CONTAPAGAR.ID_FORNECEDOR = FORNECEDOR.ID_FORNECEDOR');
    SQL.Add('WHERE CONTAPAGAR.ID_FILIAL = :pFilial');
    Parameters.ParamByName('pFilial').Value := Empresa.ID;

    if EdtCodF.Text <> '' then
    Begin
      SQL.Add('AND CONTAPAGAR.ID_FORNECEDOR = :pFornecedor');
      Parameters.ParamByName('pFornecedor').Value := EdtCodF.Text;
    End;

    sDataIni := DateToStr(Now);
    sDataIni := sDataIni + ' 00:00:00';

    case rgTipo.ItemIndex of
      0:
        Begin
          SQL.Add('AND SITUACAO = 1');
        End;

      1:
        Begin
          SQL.Add('AND SITUACAO IN (0,2)');
          SQL.Add('AND DTAVENCIMENTO >= :pVencimento');
          Parameters.ParamByName('pVencimento').Value := sDataIni;
        End;

      2:
        Begin
          SQL.Add('AND SITUACAO IN (0,2)');
          SQL.Add('AND DTAVENCIMENTO < :pVencimento');
          Parameters.ParamByName('pVencimento').Value := sDataIni;
        End;
    end;

    if EdtDocumento.Text <> '' then
    Begin
      SQL.Add('AND DOCUMENTO = :pDocumento');
      Parameters.ParamByName('pDocumento').Value := EdtDocumento.Text;
    End;

    if EdtNota.Text <> '' then
    Begin
      SQL.Add('AND DOCUMENTO = :pNota');
      Parameters.ParamByName('pNota').Value := EdtNota.Text;
    End;

    if (EdtDataInicial.Text <> '  /  /    ') And
      (EdtDataFinal.Text <> '  /  /    ') then
    Begin
      sDataIni := EdtDataInicial.Text + ' 00:00:00';
      sDataFin := EdtDataFinal.Text + ' 23:59:59';
      SQL.Add('AND DTAVENCIMENTO BETWEEN :pDataIni AND :pDataFin');
      Parameters.ParamByName('pDataIni').Value := sDataIni;
      Parameters.ParamByName('pDataFin').Value := sDataFin;
    End;

    SQL.Add('Order by DTAVENCIMENTO, FORNECEDOR.NOME');
    Open;

    First;
    iContas := RecordCount;
    sTexto := 'Total de Contas Selecionadas: ' + IntToStr(iContas);

    sDataIni := DateToStr(Now);
    sDataIni := sDataIni + ' 23:59:59';

    while Not Eof do
    Begin
      if qryContasDTAPAGAMENTO.AsString = '' then
      Begin
        if qryContasDTAVENCIMENTO.AsDateTime < StrToDateTime(sDataIni) then
        Begin
          rVencidas := rVencidas + qryContasVALORRESTANTE.AsFloat;
        End
        Else
        Begin
          rAPagar := rAPagar + qryContasVALORRESTANTE.AsFloat;
        End;
      End;

      rPagas := rPagas + qryContasVALORPAGO.AsFloat;
      Next;
    End;

    rTotal := rPagas + rAPagar + rVencidas;
    sTexto := sTexto + ' - Total: R$ ' + FormatFloat('#,##0.00', rTotal);
    sTexto := sTexto + ' - Pagas: R$ ' + FormatFloat('#,##0.00', rPagas);
    sTexto := sTexto + ' - A Pagar: R$ ' + FormatFloat('#,##0.00', rAPagar);
    sTexto := sTexto + ' - Vencidas: R$ ' + FormatFloat('#,##0.00', rVencidas);
    PainelTotalContas.Caption := sTexto;

    First;
  End;
end;

procedure TfrmTitulosPagar.cbFiltrarClick(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.EdtCodFButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaFornecedor, frmPesquisaFornecedor);
  frmPesquisaFornecedor.bFechar := True;
  frmPesquisaFornecedor.ShowModal;
  EdtCodF.Text := frmMain.sCod;
  EdtCodFExit(Sender);
  FreeAndNil(frmPesquisaFornecedor);
end;

procedure TfrmTitulosPagar.EdtCodFExit(Sender: TObject);
begin
  inherited;
  if EdtCodF.Text = '' then
  Begin
    EdtFornecedor.Text := '';
    CarregaFiltros;
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM FORNECEDOR');
    SQL.Add('WHERE ID_FORNECEDOR = :pId');
    SQL.Add('AND ATIVO = 1');
    SQL.Add('AND ID_FILIAL = :pEmp');
    Parameters.ParamByName('pEmp').Value := Empresa.ID;
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodF.Text);
    Open;

    EdtFornecedor.Text := FieldByName('NOME').AsString;

    if EdtFornecedor.Text = '' then
    Begin
      EdtCodF.Text := '';
    End;

    CarregaFiltros;

  End;
end;

procedure TfrmTitulosPagar.EdtCodFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmTitulosPagar.EdtDataFinalExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.EdtDataInicialExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.EdtDocumentoExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.EdtNotaExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.FormCreate(Sender: TObject);
var
  sDataIni: String;
  dDataIni, dDataFim: TDateTime;
begin
  inherited;

  { sDataIni := FormatDateTime('MM/YYYY', Now);
    sDataIni := '01/' + sDataIni;
    dDataIni := StrToDate(sDataIni);
    dDataFim := IncMonth(dDataIni, 1);
    dDataFim := dDataFim - 1;

    EdtDataInicial.Date := dDataIni;
    EdtDataFinal.Date := dDataFim; }
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.gridPagamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  sDataAux, sDataAtual: String;
begin
  inherited;

  sDataAtual := DateToStr(Now);
  sDataAux := sDataAtual;
  sDataAtual := sDataAtual + ' 23:59:59';

  if qryContasID_CONTAPAGAR.AsString <> '' then
  Begin
    if (qryContasSITUACAO.AsInteger = 0) or (qryContasSITUACAO.AsInteger = 2)
    then
    Begin
      if qryContasDTAVENCIMENTO.AsDateTime < StrToDateTime(sDataAtual) then
      Begin
        if qryContasDTAVENCIMENTO.AsDateTime = StrToDate(sDataAux) then
        Begin
          gridPagamento.Canvas.Font.Color := clBlue;
          // coloque aqui a cor desejada
          gridPagamento.Canvas.Brush.Color := clCream;
          gridPagamento.DefaultDrawDataCell(Rect,
            gridPagamento.columns[DataCol].field, State);
        End
        Else
        Begin
          gridPagamento.Canvas.Font.Color := clRed;
          // coloque aqui a cor desejada
          gridPagamento.Canvas.Brush.Color := clCream;
          gridPagamento.DefaultDrawDataCell(Rect,
            gridPagamento.columns[DataCol].field, State);
        End;
      End
      Else
      Begin
        gridPagamento.Canvas.Font.Color := clBlue;
        // coloque aqui a cor desejada
        gridPagamento.Canvas.Brush.Color := clCream;
        gridPagamento.DefaultDrawDataCell(Rect,
          gridPagamento.columns[DataCol].field, State);
      End;
    End
    Else
    Begin
      gridPagamento.Canvas.Font.Color := clGreen; // coloque aqui a cor desejada
      gridPagamento.Canvas.Brush.Color := clCream;
      gridPagamento.DefaultDrawDataCell(Rect, gridPagamento.columns[DataCol]
        .field, State);
    End;
  End;
end;

procedure TfrmTitulosPagar.rgTipoClick(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not Operador.TitulosPagarC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Cadastrar um T�tulos a Pagar!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadContaPagar, frmCadContaPagar);
  CarregaFiltros;
end;

procedure TfrmTitulosPagar.SpeedButton2Click(Sender: TObject);
var
  rTotal, rPago, rRestante: Double;
begin
  inherited;

  if not Operador.TitulosPagarB then
  Begin
    Application.MessageBox
      ('Operador n�o tem permiss�o para Baixar um T�tulos a Pagar!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryContasID_CONTAPAGAR.AsString = '' then  Exit;
  if qryContasSITUACAO.AsInteger = 1 then Exit;


  rTotal := (qryContasVALOR.AsFloat + qryContasVALORJUROS.AsFloat) -
    qryContasVALORDESCONTO.AsFloat;
  rPago := qryContasVALORPAGO.AsFloat;
  rRestante := rTotal - rPago;
  Application.CreateForm(TfrmPagamento, frmPagamento);
  frmPagamento.rTotal := rTotal;
  frmPagamento.iIDConta := qryContasID_CONTAPAGAR.AsInteger;
  frmPagamento.rPago := rPago;
  frmPagamento.rRestante := rRestante;
  frmPagamento.VerificaRestante;
  frmPagamento.ShowModal;
  CarregaFiltros;
  FreeAndNil(frmPagamento);
end;

procedure TfrmTitulosPagar.SpeedButton3Click(Sender: TObject);
begin
  inherited;

  if not Operador.TitulosPagarD then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Deletar um T�tulos a Pagar!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryContasDTAPAGAMENTO.AsString <> '' then
  Begin
    Application.MessageBox
      ('S� � poss�vel deletar uma conta que ainda n�o foi baixada', 'Aten��o!',
      mb_ok + MB_ICONWARNING);
    Exit;
  End;

  If Application.MessageBox(PChar('Deseja realmente deletar a conta: ' +
    qryContasID_CONTAPAGAR.AsString + '?'), 'Aten��o!',
    MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then

  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CONTAPAGAR');
      SQL.Add('WHERE ID_CONTAPAGAR = :pID');
      Parameters.ParamByName('pID').Value := qryContasID_CONTAPAGAR.AsInteger;
      ExecSQL;
    End;
  End;

  CarregaFiltros;
end;

procedure TfrmTitulosPagar.SpeedButton4Click(Sender: TObject);
var
  rValorPago, rValorRestante, rValor: Double;
  iRef, IDAux, iTipo: Integer;
  sData: String;
begin
  inherited;
  if qryContasDTAPAGAMENTO.AsString = '' then
  Begin
    Application.MessageBox
      ('S� � poss�vel estornar um t�tulo que j� foi baixado', 'Aten��o!',
      mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if not Operador.TitulosPagarEstornar then
  Begin
    Application.MessageBox
      ('Operador n�o tem permiss�o para estornar um T�tulos a Pagar!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM HISTORICOCONTASPAGAR');
    SQL.Add('WHERE ID_CONTASPAGAR = :pID');
    SQL.Add('Order By DATA DESC');
    Parameters.ParamByName('pID').Value := qryContasID_CONTAPAGAR.AsInteger;
    Open;

    If Application.MessageBox
      ('Ser� apenas estornado o �ltimo pagamento, Deseja Continuar ?',
      'Aten��o!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then
    Begin
      If Application.MessageBox
        ('O saldo vai para o Caixa Geral, Deseja Continuar ?', 'Aten��o!',
        MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then
      Begin
        iRef := FieldByName('REFERENCIA').AsInteger;
        iTipo := FieldByName('TIPO').AsInteger;
        rValor := FieldByName('VLRRECEBIDO').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM HISTORICOCONTASPAGAR');
        SQL.Add('WHERE REFERENCIA = :pRef');
        Parameters.ParamByName('pRef').Value := iRef;
        ExecSQL;

        if iTipo <> 0 then
        Begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM MOVCHEQUES');
          SQL.Add('WHERE REFERENCIA = :pRef');
          Parameters.ParamByName('pRef').Value := iRef;
          ExecSQL;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM CHEQUESRECEBIDO');
          SQL.Add('WHERE REFERENCIA = :pRef');
          Parameters.ParamByName('pRef').Value := iRef;
          Open;

          while not Eof do
          Begin
            Edit;
            FieldByName('SITUACAO').AsInteger := 0;
            FieldByName('REFERENCIA').AsString := '';
            FieldByName('DTACOMPENSADO').AsString := '';
            Post;

            Next;
          End;
        End;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM HISTORICOCONTASPAGAR');
        SQL.Add('WHERE ID_CONTASPAGAR = :pID');
        SQL.Add('Order By DATA DESC');
        Parameters.ParamByName('pID').Value := qryContasID_CONTAPAGAR.AsInteger;
        Open;

        if Not Eof then
        Begin
          sData := FieldByName('DATA').AsString;
        End
        Else
        Begin
          sData := '';
        End;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CONTAPAGAR');
        SQL.Add('WHERE ID_CONTAPAGAR = :pID');
        Parameters.ParamByName('pID').Value := qryContasID_CONTAPAGAR.AsInteger;
        Open;

        Edit;
        rValorPago := FieldByName('VALORPAGO').AsFloat;
        rValorRestante := FieldByName('VALORRESTANTE').AsFloat;
        rValorPago := rValorPago - rValor;
        rValorRestante := rValorRestante + rValor;

        FieldByName('VALORPAGO').AsFloat := rValorPago;
        FieldByName('VALORRESTANTE').AsFloat := rValorRestante;
        FieldByName('DTAPAGAMENTO').AsString := sData;

        if rValorPago > 0 then
        Begin
          FieldByName('SITUACAO').AsInteger := 2;
        End
        Else
        Begin
          FieldByName('SITUACAO').AsFloat := 0;
        End;

        Post;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM SALDOCAIXA');
        SQL.Add('WHERE ID_SALDOCAIXA = 0');
        Open;

        Append;

        case iTipo of
          0:
            FieldByName('TIPODESPESA').AsInteger := 22;
          1:
            FieldByName('TIPODESPESA').AsInteger := 23;
          2:
            FieldByName('TIPODESPESA').AsInteger := 24;
          3:
            FieldByName('TIPODESPESA').AsInteger := 25;
          4:
            FieldByName('TIPODESPESA').AsInteger := 26;
          5:
            FieldByName('TIPODESPESA').AsInteger := 27;
          6:
            FieldByName('TIPODESPESA').AsInteger := 28;
        end;

        FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
        FieldByName('ENTRADA_SAIDA').AsInteger := 0;
        FieldByName('VLRENTRADA').AsFloat := rValor;
        FieldByName('DATA').AsDateTime := Now;
        FieldByName('HISTORICO').AsString := 'Conta: ' +
          qryContasID_CONTAPAGAR.AsString + ' estornada, Operador: ' +
          Operador.Nome;
        Post;
      End;

      CarregaFiltros;
    End;
  End;
end;

procedure TfrmTitulosPagar.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if qryContasID_CONTAPAGAR.AsString = '' then Exit;


  Application.CreateForm(TfrmRRelacaoFinanceira, frmRRelacaoFinanceira);

  qryContas.First;

  frmRRelacaoFinanceira.qryContasPagar.Close;
  frmRRelacaoFinanceira.qryContasPagar.Open;

  frmRRelacaoFinanceira.RelatorioAPagar.ReportTitle := 'Rela��o T�tulos a Pagar Atrasados';

  while Not qryContas.Eof do
    Begin
      frmRRelacaoFinanceira.qryContasPagar.Append;
      frmRRelacaoFinanceira.qryContasPagarIDFornecedor.AsInteger      := qryContasID_FORNECEDOR.AsInteger;
      frmRRelacaoFinanceira.qryContasPagarHistorico.AsString          := qryContasHISTORICO.AsString;
      frmRRelacaoFinanceira.qryContasPagarDocumento.AsString          := qryContasDOCUMENTO.AsString;
      frmRRelacaoFinanceira.qryContasPagarNroNota.AsString            := qryContasNRONOTA.AsString;
      frmRRelacaoFinanceira.qryContasPagarFornecedor.AsString         := qryContasFORNECEDOR.AsString;
      frmRRelacaoFinanceira.qryContasPagarValor.AsFloat               := qryContasVALOR.AsFloat;
      frmRRelacaoFinanceira.qryContasPagarValorPago.AsFloat           := qryContasVALORPAGO.AsFloat;
      frmRRelacaoFinanceira.qryContasPagarDataConta.AsDateTime        := qryContasDTACONTA.AsDateTime;
      frmRRelacaoFinanceira.qryContasPagarDataVcto.AsDateTime         := qryContasDTAVENCIMENTO.AsDateTime;
      frmRRelacaoFinanceira.qryContasPagariAux.AsInteger              := 1;
      frmRRelacaoFinanceira.qryContasPagar.Post;
      qryContas.Next;
    End;

  frmRRelacaoFinanceira.RelatorioAPagar.Preview;
  FreeAndNil(frmRRelacaoFinanceira);
end;

procedure TfrmTitulosPagar.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  If qryContasID_CONTAPAGAR.AsString = '' then
  Begin
    Exit;
  End;

  if not Operador.TitulosPagarP then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Parcelar um T�tulos a Pagar!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryContasVALORPAGO.AsFloat > 0 then
  Begin
    Application.MessageBox
      ('S� � poss�vel efetuar o parcelamento em contas que ainda n�o foi efetuado o pagamento',
      'Aten��o!', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  Application.CreateForm(TfrmParcelamento, frmParcelamento);
  frmParcelamento.iIDContaPagar := qryContasID_CONTAPAGAR.AsInteger;
  frmParcelamento.CarregaConta;
  frmParcelamento.ShowModal;
  FreeAndNil(frmParcelamento);
  CarregaFiltros;
end;

end.
