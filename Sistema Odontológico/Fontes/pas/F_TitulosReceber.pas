unit F_TitulosReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvToolEdit, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, Funcoes,
  JvDBGrid, JvDBUltimGrid, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmTitulosReceber = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbFiltrar: TSpeedButton;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    rgTipo: TRadioGroup;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EdtDataInicial: TJvDateEdit;
    EdtDataFinal: TJvDateEdit;
    GroupBox3: TGroupBox;
    EdtDocumento: TEdit;
    GroupBox6: TGroupBox;
    EdtNota: TEdit;
    qryAux: TADOQuery;
    GroupBox4: TGroupBox;
    gridPagamento: TJvDBUltimGrid;
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
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    qryContas: TADOQuery;
    qryContasID_CONTARECEBER: TAutoIncField;
    qryContasID_FILIAL: TIntegerField;
    qryContasID_PACIENTE: TIntegerField;
    qryContasSITUACAO: TIntegerField;
    qryContasHISTORICO: TStringField;
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
    qryContasNOME: TStringField;
    dsContas: TDataSource;
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridPagamentoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rgTipoClick(Sender: TObject);
    procedure EdtDataFinalExit(Sender: TObject);
    procedure EdtDataInicialExit(Sender: TObject);
    procedure EdtDocumentoExit(Sender: TObject);
    procedure EdtNotaExit(Sender: TObject);
    procedure cbFiltrarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure CarregaFiltros;
  end;

var
  frmTitulosReceber: TfrmTitulosReceber;

implementation

{$R *.dfm}

uses P_Paciente, Main, C_TitulosReceber, F_ParcelamentoContaReceber,
  Faturamento, R_Recibo, R_RelacaoFinanceira;

procedure TfrmTitulosReceber.btnEditarClick(Sender: TObject);
begin
  inherited;
  if Not Operador.TitulosReceberPE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Editar um T�tulos a Receber Particular!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;
  if qryContasID_CONTARECEBER.AsString = '' then
    Begin
      Exit;
    End;

  Application.CreateForm(TfrmCadTitulosReceber, frmCadTitulosReceber);
  frmCadTitulosReceber.iIDContaReceber := qryContasID_CONTARECEBER.AsInteger;
  frmCadTitulosReceber.CarregaConta;
  frmCadTitulosReceber.ShowModal;
  FreeAndNil(frmCadTitulosReceber);
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTitulosReceber.CarregaFiltros;
var
  sTexto : String;
  sDataIni,
  sDataFin : String;
  iContas : Integer;
  rPagas,
  rTotal,
  rVencidas,
  rAPagar : Real;
begin

  rPagas     := 0;
  rTotal     := 0;
  rVencidas  := 0;
  rAPagar    := 0;

  With qryContas do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTARECEBER.ID_CONTARECEBER, CONTARECEBER.ID_FILIAL, CONTARECEBER.ID_PACIENTE, CONTARECEBER.SITUACAO, CONTARECEBER.HISTORICO, CONTARECEBER.NRONOTA, CONTARECEBER.DOCUMENTO, CONTARECEBER.DTACONTA,');
      SQL.Add('CONTARECEBER.DTAVENCIMENTO, CONTARECEBER.DTAPAGAMENTO, CONTARECEBER.VALOR, CONTARECEBER.VALORPAGO, CONTARECEBER.VALORJUROS, CONTARECEBER.VALORDESCONTO, CONTARECEBER.VALORRESTANTE, PACIENTE.NOME FROM CONTARECEBER ');
      SQL.Add('INNER JOIN PACIENTE ON CONTARECEBER.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('WHERE CONTARECEBER.ID_FILIAL = :pFilial');
      Parameters.ParamByName('pFilial').Value := Empresa.ID;

      if EdtCodP.Text <> '' then
        Begin
          SQL.Add('AND CONTARECEBER.ID_PACIENTE = :pPaciente');
          Parameters.ParamByName('pPaciente').Value := EdtCodP.Text;
        End;

          sDataIni := DateToStr(Now);
          sDataIni := sDataIni + ' 00:00:00';

      case rgTipo.ItemIndex of
        0: Begin
          SQL.Add('AND SITUACAO = 1');
        End;

        1: Begin
          SQL.Add('AND SITUACAO IN (0,2)');
          SQL.Add('AND DTAVENCIMENTO >= :pVencimento');
          Parameters.ParamByName('pVencimento').Value := sDataIni;
        End;

        2: Begin
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

      if (EdtDataInicial.Text <> '  /  /    ') And (EdtDataFinal.Text <> '  /  /    ') then
        Begin
          sDataIni := EdtDataInicial.Text + ' 00:00:00';
          sDataFin := EdtDataFinal.Text + ' 23:59:59';
          SQL.Add('AND DTAVENCIMENTO BETWEEN :pDataIni AND :pDataFin');
          Parameters.ParamByName('pDataIni').Value := sDataIni;
          Parameters.ParamByName('pDataFin').Value := sDataFin;
        End;

      SQL.Add('Order by DTAVENCIMENTO, PACIENTE.NOME');
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
       sTexto := sTexto + ' - Total: R$ '+ FormatFloat('#,##0.00', rTotal);
       sTexto := sTexto + ' - Recebidas: R$ '+ FormatFloat('#,##0.00', rPagas);
       sTexto := sTexto + ' - A Receber: R$ '+ FormatFloat('#,##0.00', rAPagar);
       sTexto := sTexto + ' - Vencidas: R$ '+ FormatFloat('#,##0.00', rVencidas);
       PainelTotalContas.Caption := sTexto;

       First;
    End;
end;

procedure TfrmTitulosReceber.cbFiltrarClick(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmTitulosReceber.EdtCodPExit(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
  Begin
    EdtNome.Text := '';
    CarregaFiltros;
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pCod');
    SQL.Add('AND ATIVO <> 0');
    Parameters.ParamByName('pCod').Value := StrToInt(EdtCodP.Text);
    Open;

    if Not Eof then
      Begin
        EdtNome.Text := FieldByName('NOME').AsString;
        CarregaFiltros;
      End
    Else
      Begin
        EdtNome.Text := '';
        EdtCodP.Text := '';
        CarregaFiltros;
      End;
  End;

end;

procedure TfrmTitulosReceber.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmTitulosReceber.EdtDataFinalExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.EdtDataInicialExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.EdtDocumentoExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.EdtNotaExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.FormCreate(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.gridPagamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  sDataAux   ,
  sDataAtual : String;
begin
  inherited;

  sDataAtual := DateToStr(Now);
  sDataAux := sDataAtual;
  sDataAtual := sDataAtual + ' 23:59:59';

  if qryContasID_CONTARECEBER.AsString <> '' then
    Begin
      if (qryContasSITUACAO.AsInteger = 0) or (qryContasSITUACAO.AsInteger = 2) then
        Begin
          if qryContasDTAVENCIMENTO.AsDateTime < StrToDateTime(sDataAtual) then
            Begin
              if qryContasDTAVENCIMENTO.AsDateTime = StrToDate(sDataAux) then
                Begin
                  gridPagamento.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
                  gridPagamento.Canvas.Brush.Color:= clCream;
                  gridPagamento.DefaultDrawDataCell(Rect, gridPagamento.columns[datacol].field, State);
                End
              Else
                Begin
                  gridPagamento.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
                  gridPagamento.Canvas.Brush.Color:= clCream;
                  gridPagamento.DefaultDrawDataCell(Rect, gridPagamento.columns[datacol].field, State);
                End;
            End
          Else
            Begin
              gridPagamento.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
              gridPagamento.Canvas.Brush.Color:= clCream;
              gridPagamento.DefaultDrawDataCell(Rect, gridPagamento.columns[datacol].field, State);
            End;
        End
      Else
        Begin
          gridPagamento.Canvas.Font.Color:= clGreen; // coloque aqui a cor desejada
          gridPagamento.Canvas.Brush.Color:= clCream;
          gridPagamento.DefaultDrawDataCell(Rect, gridPagamento.columns[datacol].field, State);
        End;
    End;
end;

procedure TfrmTitulosReceber.rgTipoClick(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if Not Operador.TitulosReceberPC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Cadastrar um T�tulos a Receber Particular!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadTitulosReceber, frmCadTitulosReceber);
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.SpeedButton2Click(Sender: TObject);
var
  iRef : Integer;
  iTipo : Integer;
  rPago,
  rValorPago,
  rValor,
  rDesconto,
  rJuros,
  rRestante : Double;
begin
  inherited;
  if Not Operador.TitulosReceberPB then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Baixar um T�tulos a Receber Particular!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if (qryContasID_CONTARECEBER.AsString <> '') And (qryContasSITUACAO.AsInteger <> 1) then
    Begin
      frmMain.bOk := False;
      Application.CreateForm(TfrmRecebimento, frmRecebimento);
      frmRecebimento.btnAprazo.Enabled := False;
      frmRecebimento.Panel1.Caption := 'Baixa da Conta do Paciente: ' + qryContasNOME.AsString;
      frmRecebimento.rPago := qryContasVALORPAGO.AsFloat;
      frmRecebimento.rValor := qryContasVALOR.AsFloat;
      frmRecebimento.rDesconto := qryContasVALORDESCONTO.AsFloat;
      frmRecebimento.rJuros := qryContasVALORJUROS.AsFloat;
      frmRecebimento.rRestante := qryContasVALORRESTANTE.AsFloat;
      frmRecebimento.bBaixa := True;
      frmRecebimento.CalculaRestante;
      frmRecebimento.ShowModal;

      if frmMain.bOK then
        Begin
          rRestante := frmRecebimento.rRestante;
          rPago := frmRecebimento.rPago;
          rValorPago := frmRecebimento.rValorPago;
          rValor := frmRecebimento.rValor;
          rDesconto := frmRecebimento.rDesconto;
          rJuros := frmRecebimento.rJuros;
          iTipo := frmRecebimento.TipoPagamento;
          iRef := VerificaProximaReferencia;

          If Application.MessageBox
          ('Imprimir o Recibo?', 'Aten��o!',
          MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
            Begin
              Application.CreateForm(TfrmRelRecibo, frmRelRecibo);
              frmRelRecibo.CarregaRelatorio(qryContasID_PACIENTE.AsInteger, frmRecebimento.rValorPago, 'conta n�mero: ' + qryContasID_CONTARECEBER.AsString);
              FreeAndNil(frmRelRecibo);
          End;

          With qryAux do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM HISTORICOCONTASRECEBER');
              SQL.Add('WHERE ID_HISTORICOCONTASRECEBER = 0');
              Open;

              Append;
              FieldByName('ID_CAIXA').AsInteger := Caixa.IDCaixa;
              FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
              FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
              FieldByName('ID_CONTASRECEBER').AsInteger := qryContasID_CONTARECEBER.AsInteger;
              FieldByName('REFERENCIA').AsInteger := iRef;
              FieldByName('TIPO').AsInteger := iTipo;
              FieldByName('VLRRECEBIDO').AsFloat := rValorPago;
              FieldByName('DATA').AsDateTime := Now;
              Post;

              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM CONTARECEBER');
              SQL.Add('WHERE ID_CONTARECEBER = :pID');
              Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBER.AsInteger;
              Open;

              Edit;
              FieldByName('VALORPAGO').AsFloat := rPago;
              FieldByName('VALORRESTANTE').AsFloat := rRestante;
              FieldByName('DTAPAGAMENTO').AsDateTime := Now;

              if rRestante > 0 then
                Begin
                  FieldByName('SITUACAO').AsInteger := 2;
                End
              Else
                Begin
                  FieldByName('SITUACAO').AsInteger := 1;
                End;

              Post;

             if Caixa.IDCaixa = -1 then
              Begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM SALDOCAIXA');
                SQL.Add('WHERE ID_SALDOCAIXA = 0');
                Open;

                Append;
                FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
                FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
                FieldByName('TIPODESPESA').AsInteger := iTipo;
                FieldByName('ENTRADA_SAIDA').AsInteger := 0;
                FieldByName('Historico').AsString :=qryContasID_PACIENTE.AsString + ' - ' + qryContasNOME.AsString + ' - Recebimento do T�tulo: '+ qryContasID_CONTARECEBER.AsString + ', Operador: ' + Operador.Nome;
                FieldByName('DATA').AsDateTime := Now;
                FieldByName('VLRENTRADA').AsFloat := rValorPago;
                Post;
              End
             Else
              Begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM LCTOSCAIXA');
                SQL.Add('WHERE ID_LCTOSCAIXA = 0');
                Open;

                Append;
                FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
                FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
                FieldByName('TIPODESPESA').AsInteger := iTipo;
                FieldByName('ENTRADA_SAIDA').AsInteger := 0;
                FieldByName('Historico').AsString := qryContasID_PACIENTE.AsString + ' - ' + qryContasNOME.AsString + ' - Recebimento do T�tulo: '+ qryContasID_CONTARECEBER.AsString + ', Operador: ' + Operador.Nome;
                FieldByName('DATA').AsDateTime := Now;
                FieldByName('VLRENTRADA').AsFloat := rValorPago;
                Post;
              End;
            End;

          if (iTipo <> 5) then
            Begin
              With qryAux do
                Begin
                  Close;
                  SQL.Clear;
                  SQL.Add('SELECT * FROM CHEQUESRECEBIDO');
                  SQL.Add('WHERE ID_CHEQUESRECEBIDO = 0');
                  Open;

                  if frmRecebimento.EdtValorCA.Value > 0 then
                    Begin
                      Append;
                      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
                      FieldByName('ID_BANCOSPADRAO').AsString := frmRecebimento.EdtCodBCA.Text;
                      FieldByName('ID_CAIXA').AsInteger := Caixa.IDCaixa;
                      FieldByName('ID_PACIENTE').AsInteger := qryContasID_PACIENTE.AsInteger;
                      FieldByName('REFERENCIA').AsInteger := iRef;
                      FieldBYName('HISTORICO').AsString := qryContasID_PACIENTE.AsString + ' - ' + qryContasNOME.AsString + ' - Cheque recebido pelo operador: ' + Operador.Nome;
                      FieldByName('VALOR').AsFloat := frmRecebimento.EdtValorCA.Value;
                      FieldByName('DTACONTA').AsDateTime := Now;
                      FieldByName('DTABOM').AsDateTime := frmRecebimento.EdtDataBonificacaoCA.Date;
                      FieldByName('SITUACAO').AsInteger := 0;
                      FieldByName('NROAGENCIA').AsString := frmRecebimento.EdtAgenciaCA.Text;
                      FieldByName('NROCONTA').AsString := frmRecebimento.EdtNroContaCA.Text;
                      FieldByName('NUMERO').AsString := frmRecebimento.EdtNumeroCA.Text;
                      FieldByName('CORRENTISTA').AsString := frmRecebimento.EdtNomeCA.Text;
                      FieldByName('CNPJCPF').AsString := frmRecebimento.EdtCPFCA.Text;
                      FieldByName('TELEFONE').AsString := frmRecebimento.EdtTelCA.Text;
                      Post;
                    End;

                  if frmRecebimento.EdtValorCP.Value > 0 then
                    Begin
                      Append;
                      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
                      FieldByName('ID_BANCOSPADRAO').AsString := frmRecebimento.EdtCodBCP.Text;
                      FieldByName('ID_CAIXA').AsInteger := Caixa.IDCaixa;
                      FieldByName('REFERENCIA').AsInteger := iRef;
                      FieldByName('ID_PACIENTE').AsInteger := qryContasID_PACIENTE.AsInteger;
                      FieldBYName('HISTORICO').AsString := qryContasID_PACIENTE.AsString + ' - ' + qryContasNOME.AsString + ' - Cheque recebido pelo operador: ' + Operador.Nome;
                      FieldByName('VALOR').AsFloat := frmRecebimento.EdtValorCP.Value;
                      FieldByName('DTACONTA').AsDateTime := Now;
                      FieldByName('DTABOM').AsDateTime := frmRecebimento.EdtDataCP.Date;
                      FieldByName('SITUACAO').AsInteger := 0;
                      FieldByName('NROAGENCIA').AsString := frmRecebimento.EdtAgenciaCP.Text;
                      FieldByName('NROCONTA').AsString := frmRecebimento.EdtNroContaCP.Text;
                      FieldByName('NUMERO').AsString := frmRecebimento.EdtNumeroCP.Text;
                      FieldByName('CORRENTISTA').AsString := frmRecebimento.EdtNomeCP.Text;
                      FieldByName('CNPJCPF').AsString := frmRecebimento.EdtCPFCP.Text;
                      FieldByName('TELEFONE').AsString := frmRecebimento.EdtTelCP.Text;
                      Post;
                    End;
                End;
            End;
        End;

      CarregaFiltros;
      FreeAndNil(frmRecebimento);
    End;

end;

procedure TfrmTitulosReceber.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if Not Operador.TitulosReceberPD then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Deletar um T�tulos a Receber Particular!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

 if qryContasDTAPAGAMENTO.ASString <> '' then
  Begin
    application.MessageBox('S� � poss�vel deletar uma conta que ainda n�o foi baixada','Aten��o!',mb_ok+MB_ICONWARNING);
    Exit;
  End;

 If application.MessageBox(PChar('Deseja realmente deletar a conta: '+ qryContasID_CONTARECEBER.AsString +'?'), 'Aten��o!',
    MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then

  Begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM CONTARECEBER');
      SQL.Add('WHERE ID_CONTARECEBER = :pID');
      Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBER.AsInteger;
      ExecSQL;
    End;
  End;

  CarregaFiltros;
end;

procedure TfrmTitulosReceber.SpeedButton4Click(Sender: TObject);
var
  rValorPago,
  rValorRestante,
  rValor : Double;
  iRef ,
  IDAux ,
  iTipo : Integer;
  sData : String;
begin
  inherited;

  if Not Operador.TitulosReceberPEstornar then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Estornar um T�tulos a Receber Particular!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

 if qryContasDTAPAGAMENTO.ASString = '' then
  Begin
    application.MessageBox('S� � poss�vel estornar um t�tulo que j� foi baixado','Aten��o!',mb_ok+MB_ICONWARNING);
    Exit;
  End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOCONTASRECEBER');
      SQL.Add('WHERE ID_CONTASRECEBER = :pID');
      SQL.Add('Order By DATA DESC');
      Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBER.AsInteger;
      Open;

      If application.MessageBox('Ser� apenas estornado o �ltimo pagamento, Deseja Continuar ?', 'Aten��o!',
        MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then
      Begin
        If application.MessageBox('O saldo vai para o Caixa Geral, Deseja Continuar ?', 'Aten��o!',
          MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then
        Begin
          iTipo := FieldByName('TIPO').AsInteger;
          rValor := FieldByName('VLRRECEBIDO').AsFloat;
          iRef := FieldByName('REFERENCIA').AsInteger;

          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM HISTORICOCONTASRECEBER');
          SQL.Add('WHERE REFERENCIA  = :pRef');
          Parameters.ParamByName('pRef').Value := iRef;
          ExecSQL;

          if (iTipo <> 5) then
            Begin
              Close;
              SQL.Clear;
              SQL.Add('DELETE FROM CHEQUESRECEBIDO');
              SQL.Add('WHERE REFERENCIA  = :pRef');
              Parameters.ParamByName('pRef').Value := iRef;
              ExecSQL;
            End;

            Close;
            SQL.Clear;
            SQL.Add('SELECT * FROM HISTORICOCONTASRECEBER');
            SQL.Add('WHERE ID_HISTORICOCONTASRECEBER = :pID');
            SQL.Add('Order By DATA DESC');
            Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBER.AsInteger;
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
            SQL.Add('SELECT * FROM CONTARECEBER');
            SQL.Add('WHERE ID_CONTARECEBER = :pID');
            Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBER.AsInteger;
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
              5 : FieldByName('TIPODESPESA').AsInteger := 34;
              6 : FieldByName('TIPODESPESA').AsInteger := 35;
              29 : FieldByName('TIPODESPESA').AsInteger := 36;
              30 : FieldByName('TIPODESPESA').AsInteger := 37;
              31 : FieldByName('TIPODESPESA').AsInteger := 38;
              32 : FieldByName('TIPODESPESA').AsInteger := 39;
              33 : FieldByName('TIPODESPESA').AsInteger := 40;
            end;

            FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
            FieldByName('ENTRADA_SAIDA').AsInteger := 1;
            FieldByName('VLRSAIDA').AsFloat := rValor;
            FieldByName('DATA').AsDateTime := Now;
            FieldByName('HISTORICO').AsString := qryContasID_PACIENTE.AsString + ' - ' + qryContasNOME.AsString + ' - Conta: '+qryContasID_CONTARECEBER.AsString + ' estornada, Operador: ' + Operador.Nome;
            Post;
        End;

        CarregaFiltros;
      End;
    End;
end;

procedure TfrmTitulosReceber.SpeedButton5Click(Sender: TObject);
var
  sDataIni,
  sDataFin : String;
begin
  inherited;
  if qryContasID_CONTARECEBER.AsString = '' then Exit;


  Application.CreateForm(TfrmRRelacaoFinanceira, frmRRelacaoFinanceira);

  With qryContas do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTARECEBER.ID_CONTARECEBER, CONTARECEBER.ID_FILIAL, CONTARECEBER.ID_PACIENTE, CONTARECEBER.SITUACAO, CONTARECEBER.HISTORICO, CONTARECEBER.NRONOTA, CONTARECEBER.DOCUMENTO, CONTARECEBER.DTACONTA,');
      SQL.Add('CONTARECEBER.DTAVENCIMENTO, CONTARECEBER.DTAPAGAMENTO, CONTARECEBER.VALOR, CONTARECEBER.VALORPAGO, CONTARECEBER.VALORJUROS, CONTARECEBER.VALORDESCONTO, CONTARECEBER.VALORRESTANTE, PACIENTE.NOME FROM CONTARECEBER ');
      SQL.Add('INNER JOIN PACIENTE ON CONTARECEBER.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('WHERE CONTARECEBER.ID_FILIAL = :pFilial');
      Parameters.ParamByName('pFilial').Value := Empresa.ID;

      if EdtCodP.Text <> '' then
        Begin
          SQL.Add('AND CONTARECEBER.ID_PACIENTE = :pPaciente');
          Parameters.ParamByName('pPaciente').Value := EdtCodP.Text;
        End;

          sDataIni := DateToStr(Now);
          sDataIni := sDataIni + ' 00:00:00';

      case rgTipo.ItemIndex of
        0: Begin
          SQL.Add('AND SITUACAO = 1');
        End;

        1: Begin
          SQL.Add('AND SITUACAO IN (0,2)');
          SQL.Add('AND DTAVENCIMENTO >= :pVencimento');
          Parameters.ParamByName('pVencimento').Value := sDataIni;
        End;

        2: Begin
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

      if (EdtDataInicial.Text <> '  /  /    ') And (EdtDataFinal.Text <> '  /  /    ') then
        Begin
          sDataIni := EdtDataInicial.Text + ' 00:00:00';
          sDataFin := EdtDataFinal.Text + ' 23:59:59';
          SQL.Add('AND DTAVENCIMENTO BETWEEN :pDataIni AND :pDataFin');
          Parameters.ParamByName('pDataIni').Value := sDataIni;
          Parameters.ParamByName('pDataFin').Value := sDataFin;
        End;

      SQL.Add('Order by PACIENTE.NOME, DTAVENCIMENTO');
      Open;

      First;
    End;

  frmRRelacaoFinanceira.qryContasReceber.Close;
  frmRRelacaoFinanceira.qryContasReceber.Open;

  frmRRelacaoFinanceira.RelatorioAReceber.ReportTitle := 'Rela��o T�tulos a Receber';

  while Not qryContas.Eof do
    Begin
      frmRRelacaoFinanceira.qryContasReceber.Append;
      frmRRelacaoFinanceira.qryContasReceberIDPaciente.AsInteger  := qryContasID_PACIENTE.AsInteger;
      frmRRelacaoFinanceira.qryContasReceberHistorico.AsString    := qryContasHISTORICO.AsString;
      frmRRelacaoFinanceira.qryContasReceberDocumento.AsString    := qryContasDOCUMENTO.AsString;
      frmRRelacaoFinanceira.qryContasReceberNroNota.AsString      := qryContasNRONOTA.AsString;
      frmRRelacaoFinanceira.qryContasReceberValor.AsFloat         := qryContasVALOR.AsFloat;
      frmRRelacaoFinanceira.qryContasReceberValorRecebido.AsFloat := qryContasVALORPAGO.AsFloat;
      frmRRelacaoFinanceira.qryContasReceberDataConta.AsDateTime  := qryContasDTACONTA.AsDateTime;
      frmRRelacaoFinanceira.qryContasReceberDataVcto.AsDateTime   := qryContasDTAVENCIMENTO.AsDateTime;
      frmRRelacaoFinanceira.qryContasReceberPaciente.AsString     := qryContasNOME.AsString;
      frmRRelacaoFinanceira.qryContasReceberiAux.AsInteger        := 1;
      frmRRelacaoFinanceira.qryContasReceber.Post;
      qryContas.Next;
    End;

  frmRRelacaoFinanceira.RelatorioAReceber.Preview;
  FreeAndNil(frmRRelacaoFinanceira);
  CarregaFiltros;
end;

procedure TfrmTitulosReceber.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if Not Operador.TitulosReceberPP then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Estornar um T�tulos a Receber Particular!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  If qryContasID_CONTARECEBER.AsString = '' then
    Begin
      Exit;
    End;

  if qryContasVALORPAGO.AsFloat > 0 then
    Begin
      application.MessageBox('S� � poss�vel efetuar o parcelamento em contas que ainda n�o foi efetuado o pagamento','Aten��o!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  Application.CreateForm(TfrmParcelamentoContaReceber, frmParcelamentoContaReceber);
  frmParcelamentoContaReceber.iIDContaReceber := qryContasID_CONTARECEBER.AsInteger;
  frmParcelamentoContaReceber.CarregaConta;
  frmParcelamentoContaReceber.ShowModal;
  FreeAndNil(frmParcelamentoContaReceber);
  CarregaFiltros;

end;

end.
