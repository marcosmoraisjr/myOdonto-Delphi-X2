unit F_NotificacaoFinanceira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, JvComponentBase, JvEnterTab, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Data.DB, Data.Win.ADODB, Funcoes;

type
  TfrmNotificacaoFinanceira = class(TfrmPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btnFechar: TcxButton;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    gridPagamento: TJvDBUltimGrid;
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBUltimGrid2: TJvDBUltimGrid;
    btnBaixarContaPagar: TcxButton;
    btnBaixarTitulosReceber: TcxButton;
    btnBaixarConvenio: TcxButton;
    btnImprimirContasPagar: TcxButton;
    btnImprimirTitulosReceber: TcxButton;
    cxButton6: TcxButton;
    dsContasPagar: TDataSource;
    qryContasPagar: TADOQuery;
    qryContasPagarHISTORICO: TStringField;
    qryContasPagarFORNECEDOR: TStringField;
    qryContasPagarNRONOTA: TStringField;
    qryContasPagarDOCUMENTO: TStringField;
    qryContasPagarDTACONTA: TDateTimeField;
    qryContasPagarDTAVENCIMENTO: TDateTimeField;
    qryContasPagarDTAPAGAMENTO: TDateTimeField;
    qryContasPagarVALOR: TFloatField;
    qryContasPagarVALORPAGO: TFloatField;
    qryContasPagarVALORJUROS: TFloatField;
    qryContasPagarVALORDESCONTO: TFloatField;
    qryContasPagarVALORRESTANTE: TFloatField;
    qryContasPagarID_CONTAPAGAR: TAutoIncField;
    qryContasPagarID_FILIAL: TIntegerField;
    qryContasPagarID_FORNECEDOR: TIntegerField;
    qryContasPagarSITUACAO: TIntegerField;
    qryContasReceber: TADOQuery;
    qryContasReceberID_CONTARECEBER: TAutoIncField;
    qryContasReceberID_FILIAL: TIntegerField;
    qryContasReceberID_PACIENTE: TIntegerField;
    qryContasReceberSITUACAO: TIntegerField;
    qryContasReceberHISTORICO: TStringField;
    qryContasReceberNRONOTA: TStringField;
    qryContasReceberDOCUMENTO: TStringField;
    qryContasReceberDTACONTA: TDateTimeField;
    qryContasReceberDTAVENCIMENTO: TDateTimeField;
    qryContasReceberDTAPAGAMENTO: TDateTimeField;
    qryContasReceberVALOR: TFloatField;
    qryContasReceberVALORPAGO: TFloatField;
    qryContasReceberVALORJUROS: TFloatField;
    qryContasReceberVALORDESCONTO: TFloatField;
    qryContasReceberVALORRESTANTE: TFloatField;
    qryContasReceberNOME: TStringField;
    dsContasReceber: TDataSource;
    dsContasReceberConvenio: TDataSource;
    qryAux: TADOQuery;
    qryCheques: TADOQuery;
    qryChequesHISTORICO: TStringField;
    qryChequesVALOR: TFloatField;
    qryChequesDTACONTA: TDateTimeField;
    qryChequesDTABOM: TDateTimeField;
    qryChequesDTACOMPENSADO: TDateTimeField;
    qryChequesNROAGENCIA: TStringField;
    qryChequesNROCONTA: TStringField;
    qryChequesNUMERO: TStringField;
    qryChequesCORRENTISTA: TStringField;
    qryChequesCNPJCPF: TStringField;
    qryChequesTELEFONE: TStringField;
    qryChequesPaciente: TStringField;
    qryChequesBanco: TStringField;
    qryChequesID_CHEQUESRECEBIDO: TAutoIncField;
    qryChequesID_BANCOSPADRAO: TIntegerField;
    qryChequesID_FILIAL: TIntegerField;
    qryChequesID_CAIXA: TIntegerField;
    qryChequesID_PACIENTE: TIntegerField;
    qryChequesREFERENCIA: TIntegerField;
    qryChequesSITUACAO: TIntegerField;
    qryChequesNOMEREP: TStringField;
    qryChequesTELREP: TStringField;
    dsCheques: TDataSource;
    Cheques: TTabSheet;
    GroupBox6: TGroupBox;
    qryContasReceberConvenio: TADOQuery;
    qryContasReceberConvenioHISTORICO: TStringField;
    qryContasReceberConvenioDOCUMENTO: TStringField;
    qryContasReceberConvenioDTACONTA: TDateTimeField;
    qryContasReceberConvenioDTAVENCIMENTO: TDateTimeField;
    qryContasReceberConvenioDTAPAGAMENTO: TDateTimeField;
    qryContasReceberConvenioVALOR: TFloatField;
    qryContasReceberConvenioVALORPAGO: TFloatField;
    qryContasReceberConvenioVALORRESTANTE: TFloatField;
    qryContasReceberConvenioConvenio: TStringField;
    qryContasReceberConvenioID_CONTARECEBERCONVENIO: TAutoIncField;
    qryContasReceberConvenioID_FILIAL: TIntegerField;
    qryContasReceberConvenioID_CONVENIO: TIntegerField;
    qryContasReceberConvenioSITUACAO: TIntegerField;
    GroupBox5: TGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    JvDBUltimGrid3: TJvDBUltimGrid;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBaixarContaPagarClick(Sender: TObject);
    procedure btnBaixarTitulosReceberClick(Sender: TObject);
    procedure btnBaixarConvenioClick(Sender: TObject);
    procedure btnImprimirTitulosReceberClick(Sender: TObject);
    procedure btnImprimirContasPagarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure CarregaContasReceber;
    Procedure CarregaCOntasPagar;
    Procedure CarregaConvenio;
    Procedure CarregaCheques;
  public
    { Public declarations }
  end;

var
  frmNotificacaoFinanceira: TfrmNotificacaoFinanceira;

implementation

{$R *.dfm}

uses F_Pagamento, Main, Faturamento, R_Recibo, R_RelacaoFinanceira;

procedure TfrmNotificacaoFinanceira.btnBaixarContaPagarClick(Sender: TObject);
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

  if qryContasPagarID_CONTAPAGAR.AsString = '' then  Exit;


  rTotal := (qryContasPagarVALOR.AsFloat + qryContasPagarVALORJUROS.AsFloat) -
    qryContasPagarVALORDESCONTO.AsFloat;
  rPago := qryContasPagarVALORPAGO.AsFloat;
  rRestante := rTotal - rPago;
  Application.CreateForm(TfrmPagamento, frmPagamento);
  frmPagamento.rTotal := rTotal;
  frmPagamento.iIDConta := qryContasPagarID_CONTAPAGAR.AsInteger;
  frmPagamento.rPago := rPago;
  frmPagamento.rRestante := rRestante;
  frmPagamento.VerificaRestante;
  frmPagamento.ShowModal;
  FreeAndNil(frmPagamento);
  CarregaCOntasPagar;
end;

procedure TfrmNotificacaoFinanceira.btnBaixarConvenioClick(Sender: TObject);
var
  iRef : Integer;
begin
  inherited;
  if Not Operador.TitulosReceberCB then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Baixar um T�tulos a Receber Conv�nio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if (qryContasReceberConvenioID_CONTARECEBERCONVENIO.AsString <> '') and (qryContasReceberConvenioSITUACAO.AsInteger <> 1) then
    Begin
      iRef := VerificaProximaReferencia;
      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM SALDOCAIXA');
          SQL.Add('WHERE ID_SALDOCAIXA = 0');
          Open;

          Append;
          FieldByName('TIPODESPESA').AsInteger := 1;
          FieldByName('ENTRADA_SAIDA').AsInteger := 0;
          FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
          FieldByName('HISTORICO').AsString := 'Receb. Conv�nio: '+ qryContasReceberConvenioConvenio.AsString + ', Operador: ' + Operador.Nome;
          FieldByName('DOCUMENTO').AsString := qryContasReceberConvenioDOCUMENTO.AsString;
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('VLRENTRADA').AsFloat := qryContasReceberConvenioVALOR.AsFloat;
          Post;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM HISTORICOCONTASRECEBERCONVENIO');
          SQL.Add('WHERE ID_HISTORICOCONTASRECEBERCONVENIO = 0');
          Open;

          Append;
          FieldByname('ID_CONTARECEBERCONVENIO').AsInteger := qryContasReceberConvenioID_CONTARECEBERCONVENIO.AsInteger;
          FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
          FieldByName('REFERENCIA').AsInteger := iRef;
          FieldByName('TIPO').AsInteger := 1;
          FieldByName('VLRRECEBIDO').AsFloat := qryContasReceberConvenioVALOR.AsFloat;
          FieldByName('DATA').AsDateTime := Now;
          Post;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM CONTARECEBERCONVENIO');
          SQL.Add('WHERE ID_CONTARECEBERCONVENIO = :pID');
          Parameters.ParamByName('pID').Value := qryContasReceberConvenioID_CONTARECEBERCONVENIO.AsInteger;
          Open;

          Edit;
          FieldByName('DTAPAGAMENTO').AsDateTime := Now;
          FieldByName('SITUACAO').AsInteger := 1;
          FieldByName('VALORPAGO').AsFloat := qryContasReceberConvenioVALOR.AsFloat;
          FieldByName('VALORRESTANTE').AsFloat := 0;
          Post;
        End;
    End;

    CarregaConvenio;
end;

procedure TfrmNotificacaoFinanceira.btnBaixarTitulosReceberClick(
  Sender: TObject);
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

  if (qryContasReceberID_CONTARECEBER.AsString <> '') And (qryContasReceberSITUACAO.AsInteger <> 1) then
    Begin
      frmMain.bOk := False;
      Application.CreateForm(TfrmRecebimento, frmRecebimento);
      frmRecebimento.btnAprazo.Enabled := False;
      frmRecebimento.Panel1.Caption := 'Baixa da Conta do Paciente: ' + qryContasReceberNOME.AsString;
      frmRecebimento.rPago := qryContasReceberVALORPAGO.AsFloat;
      frmRecebimento.rValor := qryContasReceberVALOR.AsFloat;
      frmRecebimento.rDesconto := qryContasReceberVALORDESCONTO.AsFloat;
      frmRecebimento.rJuros := qryContasReceberVALORJUROS.AsFloat;
      frmRecebimento.rRestante := qryContasReceberVALORRESTANTE.AsFloat;
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
              frmRelRecibo.CarregaRelatorio(qryContasReceberID_PACIENTE.AsInteger, frmRecebimento.rValorPago, 'conta n�mero: ' + qryContasReceberID_CONTARECEBER.AsString);
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
              FieldByName('ID_CONTASRECEBER').AsInteger := qryContasReceberID_CONTARECEBER.AsInteger;
              FieldByName('REFERENCIA').AsInteger := iRef;
              FieldByName('TIPO').AsInteger := iTipo;
              FieldByName('VLRRECEBIDO').AsFloat := rValorPago;
              FieldByName('DATA').AsDateTime := Now;
              Post;

              Close;
              SQL.Clear;
              SQL.Add('SELECT * FROM CONTARECEBER');
              SQL.Add('WHERE ID_CONTARECEBER = :pID');
              Parameters.ParamByName('pID').Value := qryContasReceberID_CONTARECEBER.AsInteger;
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
                FieldByName('Historico').AsString :=qryContasReceberID_PACIENTE.AsString + ' - ' + qryContasReceberNOME.AsString + ' - Recebimento do T�tulo: '+ qryContasReceberID_CONTARECEBER.AsString + ', Operador: ' + Operador.Nome;
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
                FieldByName('Historico').AsString := qryContasReceberID_PACIENTE.AsString + ' - ' + qryContasReceberNOME.AsString + ' - Recebimento do T�tulo: '+ qryContasReceberID_CONTARECEBER.AsString + ', Operador: ' + Operador.Nome;
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
                      FieldByName('ID_PACIENTE').AsInteger := qryContasReceberID_PACIENTE.AsInteger;
                      FieldByName('REFERENCIA').AsInteger := iRef;
                      FieldBYName('HISTORICO').AsString := qryContasReceberID_PACIENTE.AsString + ' - ' + qryContasReceberNOME.AsString + ' - Cheque recebido pelo operador: ' + Operador.Nome;
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
                      FieldByName('ID_PACIENTE').AsInteger := qryContasReceberID_PACIENTE.AsInteger;
                      FieldBYName('HISTORICO').AsString := qryContasReceberID_PACIENTE.AsString + ' - ' + qryContasReceberNOME.AsString + ' - Cheque recebido pelo operador: ' + Operador.Nome;
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

      CarregaContasReceber;
      FreeAndNil(frmRecebimento);
    End;

end;

procedure TfrmNotificacaoFinanceira.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close
end;

procedure TfrmNotificacaoFinanceira.btnImprimirContasPagarClick(
  Sender: TObject);
begin
  inherited;
  if qryContasPagarID_CONTAPAGAR.AsString = '' then Exit;


  Application.CreateForm(TfrmRRelacaoFinanceira, frmRRelacaoFinanceira);

  qryContasPagar.First;

  frmRRelacaoFinanceira.qryContasPagar.Close;
  frmRRelacaoFinanceira.qryContasPagar.Open;

  frmRRelacaoFinanceira.RelatorioAPagar.ReportTitle := 'Rela��o T�tulos a Pagar Atrasados';

  while Not qryContasPagar.Eof do
    Begin
      frmRRelacaoFinanceira.qryContasPagar.Append;
      frmRRelacaoFinanceira.qryContasPagarIDFornecedor.AsInteger      := qryContasPagarID_FORNECEDOR.AsInteger;
      frmRRelacaoFinanceira.qryContasPagarHistorico.AsString          := qryContasPagarHISTORICO.AsString;
      frmRRelacaoFinanceira.qryContasPagarDocumento.AsString          := qryContasPagarDOCUMENTO.AsString;
      frmRRelacaoFinanceira.qryContasPagarNroNota.AsString            := qryContasPagarNRONOTA.AsString;
      frmRRelacaoFinanceira.qryContasPagarFornecedor.AsString         := qryContasPagarFORNECEDOR.AsString;
      frmRRelacaoFinanceira.qryContasPagarValor.AsFloat               := qryContasPagarVALOR.AsFloat;
      frmRRelacaoFinanceira.qryContasPagarValorPago.AsFloat           := qryContasPagarVALORPAGO.AsFloat;
      frmRRelacaoFinanceira.qryContasPagarDataConta.AsDateTime        := qryContasPagarDTACONTA.AsDateTime;
      frmRRelacaoFinanceira.qryContasPagarDataVcto.AsDateTime         := qryContasPagarDTAVENCIMENTO.AsDateTime;
      frmRRelacaoFinanceira.qryContasPagariAux.AsInteger              := 1;
      frmRRelacaoFinanceira.qryContasPagar.Post;
      qryContasPagar.Next;
    End;

  frmRRelacaoFinanceira.RelatorioAPagar.Preview;
  FreeAndNil(frmRRelacaoFinanceira);
end;

procedure TfrmNotificacaoFinanceira.btnImprimirTitulosReceberClick(
  Sender: TObject);
begin
  inherited;
  if qryContasReceberID_CONTARECEBER.AsString = '' then Exit;


  Application.CreateForm(TfrmRRelacaoFinanceira, frmRRelacaoFinanceira);

  qryContasReceber.First;

  frmRRelacaoFinanceira.qryContasReceber.Close;
  frmRRelacaoFinanceira.qryContasReceber.Open;

  frmRRelacaoFinanceira.RelatorioAReceber.ReportTitle := 'Rela��o T�tulos a Receber Atrasados';

  while Not qryContasReceber.Eof do
    Begin
      frmRRelacaoFinanceira.qryContasReceber.Append;
      frmRRelacaoFinanceira.qryContasReceberIDPaciente.AsInteger  := qryContasReceberID_PACIENTE.AsInteger;
      frmRRelacaoFinanceira.qryContasReceberHistorico.AsString    := qryContasReceberHISTORICO.AsString;
      frmRRelacaoFinanceira.qryContasReceberDocumento.AsString    := qryContasReceberDOCUMENTO.AsString;
      frmRRelacaoFinanceira.qryContasReceberNroNota.AsString      := qryContasReceberNRONOTA.AsString;
      frmRRelacaoFinanceira.qryContasReceberValor.AsFloat         := qryContasReceberVALOR.AsFloat;
      frmRRelacaoFinanceira.qryContasReceberValorRecebido.AsFloat := qryContasReceberVALORPAGO.AsFloat;
      frmRRelacaoFinanceira.qryContasReceberDataConta.AsDateTime  := qryContasReceberDTACONTA.AsDateTime;
      frmRRelacaoFinanceira.qryContasReceberDataVcto.AsDateTime   := qryContasReceberDTAVENCIMENTO.AsDateTime;
      frmRRelacaoFinanceira.qryContasReceberPaciente.AsString     := qryContasReceberNOME.AsString;
      frmRRelacaoFinanceira.qryContasReceberiAux.AsInteger        := 1;
      frmRRelacaoFinanceira.qryContasReceber.Post;
      qryContasReceber.Next;
    End;

  frmRRelacaoFinanceira.RelatorioAReceber.Preview;
  FreeAndNil(frmRRelacaoFinanceira);

end;

procedure TfrmNotificacaoFinanceira.CarregaCheques;
var
  sDataIni,
  sDataFim : String;
begin
  sDataIni := FormatDateTime('DD/MM/YYYY', Now);
  sDataIni := sDataIni + ' 23:59:00';

  With qryCheques do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CHEQUESRECEBIDO.ID_CHEQUESRECEBIDO, CHEQUESRECEBIDO.ID_BANCOSPADRAO, CHEQUESRECEBIDO.ID_FILIAL, CHEQUESRECEBIDO.ID_CAIXA, CHEQUESRECEBIDO.ID_PACIENTE, CHEQUESRECEBIDO.REFERENCIA, CHEQUESRECEBIDO.HISTORICO,');
      SQL.Add('CHEQUESRECEBIDO.VALOR, CHEQUESRECEBIDO.DTACONTA, CHEQUESRECEBIDO.DTABOM, CHEQUESRECEBIDO.DTACOMPENSADO, CHEQUESRECEBIDO.SITUACAO, CHEQUESRECEBIDO.NROAGENCIA, CHEQUESRECEBIDO.NROCONTA, CHEQUESRECEBIDO.NUMERO, ');
      SQL.Add('CHEQUESRECEBIDO.CORRENTISTA, CHEQUESRECEBIDO.CNPJCPF, CHEQUESRECEBIDO.TELEFONE, PACIENTE.NOME AS Paciente, BANCOSPADRAO.NOME AS Banco, NOMEREP, TELREP FROM CHEQUESRECEBIDO');
      SQL.Add('INNER JOIN PACIENTE ON CHEQUESRECEBIDO.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('INNER JOIN BANCOSPADRAO ON CHEQUESRECEBIDO.ID_BANCOSPADRAO = BANCOSPADRAO.ID_BANCOSPADRAO');
      SQL.Add('WHERE CHEQUESRECEBIDO.ID_FILIAL = :pFilial');
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      SQL.Add('AND DTACOMPENSADO IS NULL');
      SQL.Add('AND DTABOM <= :pHoje');
      Parameters.ParamByName('pHoje').Value := sDataIni;
      Open;
    End;
end;

procedure TfrmNotificacaoFinanceira.CarregaCOntasPagar;
var
  sDataIni : String;
begin
  inherited;

  sDataIni := DateToStr(Now);
  sDataIni := sDataIni + ' 00:00:00';

  With qryContasPagar do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTAPAGAR.ID_CONTAPAGAR, CONTAPAGAR.ID_FILIAL, CONTAPAGAR.ID_FORNECEDOR, CONTAPAGAR.SITUACAO, CONTAPAGAR.HISTORICO, CONTAPAGAR.NRONOTA, CONTAPAGAR.DOCUMENTO,');
      SQL.Add('CONTAPAGAR.DTACONTA, CONTAPAGAR.DTAVENCIMENTO, CONTAPAGAR.DTAPAGAMENTO, CONTAPAGAR.VALOR, CONTAPAGAR.VALORPAGO, CONTAPAGAR.VALORJUROS, CONTAPAGAR.VALORDESCONTO,');
      SQL.Add('CONTAPAGAR.VALORRESTANTE, FORNECEDOR.NOME AS FORNECEDOR FROM CONTAPAGAR');
      SQL.Add('INNER JOIN FORNECEDOR ON CONTAPAGAR.ID_FORNECEDOR = FORNECEDOR.ID_FORNECEDOR');
      SQL.Add('WHERE CONTAPAGAR.ID_FILIAL = :pFilial');
      SQL.Add('AND SITUACAO IN (0,2)');
      SQL.Add('AND DTAVENCIMENTO < :pVencimento');
      SQL.Add('Order By FORNECEDOR.NOME, DTACONTA');
      Parameters.ParamByName('pVencimento').Value := sDataIni;
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Open;
    End;
end;

procedure TfrmNotificacaoFinanceira.CarregaContasReceber;
var
  sDataIni : String;
begin
  inherited;

  sDataIni := DateToStr(Now);
  sDataIni := sDataIni + ' 00:00:00';

  With qryContasReceber do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTARECEBER.ID_CONTARECEBER, CONTARECEBER.ID_FILIAL, CONTARECEBER.ID_PACIENTE, CONTARECEBER.SITUACAO, CONTARECEBER.HISTORICO, CONTARECEBER.NRONOTA, CONTARECEBER.DOCUMENTO, CONTARECEBER.DTACONTA,');
      SQL.Add('CONTARECEBER.DTAVENCIMENTO, CONTARECEBER.DTAPAGAMENTO, CONTARECEBER.VALOR, CONTARECEBER.VALORPAGO, CONTARECEBER.VALORJUROS, CONTARECEBER.VALORDESCONTO, CONTARECEBER.VALORRESTANTE, PACIENTE.NOME FROM CONTARECEBER ');
      SQL.Add('INNER JOIN PACIENTE ON CONTARECEBER.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('WHERE CONTARECEBER.ID_FILIAL = :pFilial');
      SQL.Add('AND SITUACAO IN (0,2)');
      SQL.Add('AND DTAVENCIMENTO < :pVencimento');
      SQL.Add('Order By PACIENTE.NOME, DTACONTA');
      Parameters.ParamByName('pVencimento').Value := sDataIni;
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Open;
    End;

end;

procedure TfrmNotificacaoFinanceira.CarregaConvenio;
var
  sDataIni : String;
begin
  inherited;

  sDataIni := DateToStr(Now);
  sDataIni := sDataIni + ' 00:00:00';

  With qryContasReceberConvenio do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTARECEBERCONVENIO.ID_CONTARECEBERCONVENIO, CONTARECEBERCONVENIO.ID_FILIAL, CONTARECEBERCONVENIO.ID_CONVENIO, CONTARECEBERCONVENIO.SITUACAO, CONTARECEBERCONVENIO.HISTORICO,');
      SQL.Add('CONTARECEBERCONVENIO.DOCUMENTO, CONTARECEBERCONVENIO.DTACONTA, CONTARECEBERCONVENIO.DTAVENCIMENTO, CONTARECEBERCONVENIO.DTAPAGAMENTO, CONTARECEBERCONVENIO.VALOR, CONTARECEBERCONVENIO.VALORPAGO,');
      SQL.Add('CONTARECEBERCONVENIO.VALORRESTANTE, CONVENIOS.NOME AS Convenio FROM CONTARECEBERCONVENIO');
      SQL.Add('INNER JOIN CONVENIOS ON CONTARECEBERCONVENIO.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
      SQL.Add('WHERE CONTARECEBERCONVENIO.ID_FILIAL = :pFilial');
      SQL.Add('AND SITUACAO IN (0,2)');
      SQL.Add('AND DTAVENCIMENTO < :pVencimento');
      SQL.Add('Order By CONVENIOS.NOME, DTACONTA');
      Parameters.ParamByName('pVencimento').Value := sDataIni;
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Open;
    End;

end;

procedure TfrmNotificacaoFinanceira.FormCreate(Sender: TObject);
var
  sDataIni : String;
begin
  inherited;
  PageControl1.TabIndex := 0;
  sDataIni              := DateToStr(Now);
  sDataIni              := sDataIni + ' 00:00:00';

  With qryContasPagar do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTAPAGAR.ID_CONTAPAGAR, CONTAPAGAR.ID_FILIAL, CONTAPAGAR.ID_FORNECEDOR, CONTAPAGAR.SITUACAO, CONTAPAGAR.HISTORICO, CONTAPAGAR.NRONOTA, CONTAPAGAR.DOCUMENTO,');
      SQL.Add('CONTAPAGAR.DTACONTA, CONTAPAGAR.DTAVENCIMENTO, CONTAPAGAR.DTAPAGAMENTO, CONTAPAGAR.VALOR, CONTAPAGAR.VALORPAGO, CONTAPAGAR.VALORJUROS, CONTAPAGAR.VALORDESCONTO,');
      SQL.Add('CONTAPAGAR.VALORRESTANTE, FORNECEDOR.NOME AS FORNECEDOR FROM CONTAPAGAR');
      SQL.Add('INNER JOIN FORNECEDOR ON CONTAPAGAR.ID_FORNECEDOR = FORNECEDOR.ID_FORNECEDOR');
      SQL.Add('WHERE CONTAPAGAR.ID_FILIAL = :pFilial');
      SQL.Add('AND SITUACAO IN (0,2)');
      SQL.Add('AND DTAVENCIMENTO < :pVencimento');
      SQL.Add('Order By DTACONTA');
      Parameters.ParamByName('pVencimento').Value := sDataIni;
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Open;
    End;

  With qryContasReceber do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTARECEBER.ID_CONTARECEBER, CONTARECEBER.ID_FILIAL, CONTARECEBER.ID_PACIENTE, CONTARECEBER.SITUACAO, CONTARECEBER.HISTORICO, CONTARECEBER.NRONOTA, CONTARECEBER.DOCUMENTO, CONTARECEBER.DTACONTA,');
      SQL.Add('CONTARECEBER.DTAVENCIMENTO, CONTARECEBER.DTAPAGAMENTO, CONTARECEBER.VALOR, CONTARECEBER.VALORPAGO, CONTARECEBER.VALORJUROS, CONTARECEBER.VALORDESCONTO, CONTARECEBER.VALORRESTANTE, PACIENTE.NOME FROM CONTARECEBER ');
      SQL.Add('INNER JOIN PACIENTE ON CONTARECEBER.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('WHERE CONTARECEBER.ID_FILIAL = :pFilial');
      SQL.Add('AND SITUACAO IN (0,2)');
      SQL.Add('AND DTAVENCIMENTO < :pVencimento');
      SQL.Add('Order By DTACONTA');
      Parameters.ParamByName('pVencimento').Value := sDataIni;
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Open;
    End;

  With qryContasReceberConvenio do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CONTARECEBERCONVENIO.ID_CONTARECEBERCONVENIO, CONTARECEBERCONVENIO.ID_FILIAL, CONTARECEBERCONVENIO.ID_CONVENIO, CONTARECEBERCONVENIO.SITUACAO, CONTARECEBERCONVENIO.HISTORICO,');
      SQL.Add('CONTARECEBERCONVENIO.DOCUMENTO, CONTARECEBERCONVENIO.DTACONTA, CONTARECEBERCONVENIO.DTAVENCIMENTO, CONTARECEBERCONVENIO.DTAPAGAMENTO, CONTARECEBERCONVENIO.VALOR, CONTARECEBERCONVENIO.VALORPAGO,');
      SQL.Add('CONTARECEBERCONVENIO.VALORRESTANTE, CONVENIOS.NOME AS Convenio FROM CONTARECEBERCONVENIO');
      SQL.Add('INNER JOIN CONVENIOS ON CONTARECEBERCONVENIO.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
      SQL.Add('WHERE CONTARECEBERCONVENIO.ID_FILIAL = :pFilial');
      SQL.Add('AND SITUACAO IN (0,2)');
      SQL.Add('AND DTAVENCIMENTO < :pVencimento');
      SQL.Add('Order By DTACONTA');
      Parameters.ParamByName('pVencimento').Value := sDataIni;
      Parameters.ParamByName('pFilial').Value := Empresa.ID;
      Open;
    End;

    CarregaCheques;

end;

end.
