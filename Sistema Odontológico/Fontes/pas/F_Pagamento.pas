unit F_Pagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.StdCtrls, JvExControls,
  JvXPCore, JvXPButtons, Vcl.Buttons, JvComponentBase, JvEnterTab, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvToolEdit, Vcl.Mask,
  JvExMask, cxTextEdit, cxCurrencyEdit, Data.DB, Data.Win.ADODB, Funcoes,
  Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmPagamento = class(TfrmPadrao)
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    GroupBox1: TGroupBox;
    btnDinheiro: TJvXPButton;
    btnChequeRecebido: TJvXPButton;
    btnCheque: TJvXPButton;
    Panel2: TPanel;
    Label1: TLabel;
    lblTotal: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    lblRecebido: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    lblRestante: TLabel;
    gbDinheiro: TGroupBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    EdtVlVista: TcxCurrencyEdit;
    rgCheque: TGroupBox;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    GroupBox8: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EdtCodBCP: TJvComboEdit;
    EdtBancoCP: TEdit;
    EdtNomeCP: TEdit;
    EdtNroContaCP: TEdit;
    EdtAgenciaCP: TEdit;
    EdtNumeroCP: TEdit;
    EdtTelCP: TMaskEdit;
    EdtValorCP: TcxCurrencyEdit;
    EdtDataCP: TJvDateEdit;
    rgCondicao: TRadioGroup;
    gbChequeRecebido: TGroupBox;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    gridPagamento: TJvDBUltimGrid;
    qryAux: TADOQuery;
    qryChequesRecebidos: TADOQuery;
    dsChequesRecebidos: TDataSource;
    qryChequesRecebidosIDCheque: TIntegerField;
    qryChequesRecebidosSelecionado: TBooleanField;
    qryChequesRecebidosIDBancosPadrao: TIntegerField;
    qryChequesRecebidosBanco: TStringField;
    qryChequesRecebidosHistorico: TStringField;
    qryChequesRecebidosValor: TFloatField;
    qryChequesRecebidosDTACONTA: TDateTimeField;
    qryChequesRecebidosDTABOM: TDateTimeField;
    qryChequesRecebidosNROAGENCIA: TStringField;
    qryChequesRecebidosNROCONTA: TStringField;
    qryChequesRecebidosNUMERO: TStringField;
    qryChequesRecebidosCorrentista: TStringField;
    qryChequesRecebidosCNPJCPF: TStringField;
    qryChequesRecebidosTELEFONE: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnDinheiroClick(Sender: TObject);
    procedure btnChequeRecebidoClick(Sender: TObject);
    procedure btnChequeClick(Sender: TObject);
    procedure EdtVlVistaExit(Sender: TObject);
    procedure EdtValorCPExit(Sender: TObject);
    procedure EdtCodBCPExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodBCPButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure qryChequesRecebidosSelecionadoValidate(Sender: TField);
    procedure EdtCodBCPKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Function TipoPagamento : Integer;
  public
    { Public declarations }
    iIDConta : Integer;
    rPago,
    rRestante,
    rRestanteAux,
    rSelecionado,
    rTotal : Double;
    Procedure VerificaRestante;
    Procedure CarregaChequesRecebidos;
  end;

var
  frmPagamento: TfrmPagamento;

implementation

{$R *.dfm}

uses P_ContasBancarias, Main, P_BancosPadrao;

procedure TfrmPagamento.btnChequeClick(Sender: TObject);
begin
  inherited;
  if not btnCheque.Down then
    Begin
      btnDinheiro.Down := False;
      btnChequeRecebido.Down := False;
      btnCheque.Down := True;

      gbDinheiro.Visible := False;
      gbChequeRecebido.Visible := False;
      rgCheque.Visible := True;

      btnDinheiro.Font.Color := clNavy;
      btnChequeRecebido.Font.Color := clNavy;
      btnCheque.Font.Color := clBlue;
    End;
end;

procedure TfrmPagamento.btnChequeRecebidoClick(Sender: TObject);
begin
  inherited;
  if not btnChequeRecebido.Down then
    Begin
      btnDinheiro.Down := False;
      btnChequeRecebido.Down := True;
      btnCheque.Down := False;

      gbDinheiro.Visible := False;
      gbChequeRecebido.Visible := True;
      rgCheque.Visible := False;

      btnDinheiro.Font.Color := clNavy;
      btnChequeRecebido.Font.Color := clBlue;
      btnCheque.Font.Color := clNavy;
    End;
end;

procedure TfrmPagamento.btnDinheiroClick(Sender: TObject);
begin
  inherited;
  if not btnDinheiro.Down then
    Begin
      btnDinheiro.Down := True;
      btnChequeRecebido.Down := False;
      btnCheque.Down := False;

      gbDinheiro.Visible := True;
      gbChequeRecebido.Visible := False;
      rgCheque.Visible := False;

      btnDinheiro.Font.Color := clBlue;
      btnChequeRecebido.Font.Color := clNavy;
      btnCheque.Font.Color := clNavy;
    End;
end;

procedure TfrmPagamento.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPagamento.btnSalvarClick(Sender: TObject);
var
  iRef ,
  iTIpo,
  iIDFornecedor,
  iTipoPagamento : Integer;
  rRestante ,
  rValorPago : Double;
  sTelRep,
  sNomeFornecedor : String;
begin
  inherited;
  if (EdtValorCP.Value > 0) And (EdtCodBCP.Text = '') then
    Begin
      application.MessageBox('Para Pagamentos com  Cheque o campo "Banco" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  if (EdtValorCP.Value > 0) And (EdtNomeCP.Text = '') then
    Begin
      application.MessageBox('Para Pagamentos com  Cheque o campo "Nome" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      Exit;
    End;

  iTipoPagamento := TipoPagamento;

  rValorPago := EdtValorCP.Value + EdtVlVista.Value + rSelecionado;
  iRef := VerificaProximaReferencia;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTAPAGAR');
      SQL.Add('WHERE ID_CONTAPAGAR = :pID');
      Parameters.ParamByName('pID').Value := iIDConta;
      Open;

      iIDFornecedor := FieldByName('ID_FORNECEDOR').AsInteger;

      Edit;
      rRestante := FieldByName('VALOR').AsFloat + FieldByName('VALORJUROS').AsFloat;
      rRestante := rRestante - FieldByName('VALORDESCONTO').AsFloat;
      rRestante := rRestante - rValorPago;
      rRestante := rRestante - FieldByName('VALORPAGO').ASFloat;

      FieldByName('VALORPAGO').AsFloat := rValorPago + FieldByName('VALORPAGO').ASFloat;
      FieldByName('DTAPAGAMENTO').AsDateTime := Now;
      FieldByName('VALORRESTANTE').AsFloat := rRestante;

      if rRestante > 0 then
        Begin
          FieldByName('SITUACAO').AsInteger := 2;
        End
      Else
        Begin
          FieldByName('SITUACAO').AsInteger := 1;
        End;

      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT NOME, TELEFONE FROM FORNECEDOR');
      SQL.Add('WHERE ID_FORNECEDOR = :pID');
      Parameters.ParamByName('pID').Value := iIDFornecedor;
      Open;

      sNomeFornecedor := FieldByName('NOME').AsString;
      sTelRep         := FieldByName('TELEFONE').AsString;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOCONTASPAGAR');
      SQL.Add('WHERE ID_HISTORICOCONTASPAGAR = 0');
      Open;

      Append;
      FieldByName('ID_CAIXA').AsInteger := Caixa.IDCaixa;
      FieldByName('ID_CONTASPAGAR').AsInteger := iIDConta;
      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
      FieldByName('REFERENCIA').AsInteger := iRef;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPO').AsInteger := iTipoPagamento;
      FieldByName('VLRRECEBIDO').AsFloat := rValorPago;
      FieldByName('DATA').AsDateTime := Now;
      Post;

    if iTipoPagamento <> 0 then
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM MOVCHEQUES');
        SQL.Add('WHERE ID_MOVCHEQUES = 0');
        Open;

        Append;
        FieldByName('ID_CONTASBANCARIAS').AsInteger := iIDConta;
        FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
        FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
        FieldByName('REFERENCIA').AsInteger := iRef;
        FieldByName('CONDICAO').AsInteger := rgCondicao.ItemIndex;
        FieldByName('NOME').AsString := EdtNomeCP.Text;
        FieldByName('TELEFONE').AsString := EdtTelCP.Text;
        FieldByName('NUMERO').AsString := EdtNroContaCP.Text;
        FieldByName('VALOR').AsFloat := EdtValorCP.Value;
        FieldByName('DATABONIFICACAO').AsDateTime := EdtDataCP.Date;
        FieldByName('DATA').AsDateTime := Now;
        Post;

        qryChequesRecebidos.First;



        while Not qryChequesRecebidos.Eof do
          Begin
            if qryChequesRecebidosSelecionado.AsBoolean then
              Begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM CHEQUESRECEBIDO');
                SQL.Add('WHERE ID_CHEQUESRECEBIDO = :pID');
                Parameters.ParamByName('pID').Value := qryChequesRecebidosIDCheque.AsInteger;
                Open;

                Edit;
                FieldByName('SITUACAO').AsInteger       := 1;
                FieldByName('DTACOMPENSADO').AsDateTime := Now;
                FieldByName('REFERENCIA').AsInteger     := iRef;
                FieldByName('NOMEREP').AsString         := sNomeFornecedor;
                FieldByName('TELREP').AsString          := sTelRep;
                Post;

                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM MOVCHEQUES');
                SQL.Add('WHERE ID_MOVCHEQUES = 0');
                Open;

                Append;
                FieldByName('ID_CONTASBANCARIAS').AsInteger := qryChequesRecebidosIDBancosPadrao.AsInteger;;
                FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
                FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
                FieldByName('REFERENCIA').AsInteger := iRef;
                FieldByName('CONDICAO').AsInteger := 0;
                FieldByName('NOME').AsString := qryChequesRecebidosCorrentista.AsString;
                FieldByName('TELEFONE').AsString := qryChequesRecebidosTELEFONE.AsString;
                FieldByName('NUMERO').AsString := qryChequesRecebidosNUMERO.AsString;;
                FieldByName('VALOR').AsFloat := qryChequesRecebidosValor.AsFloat;
                FieldByName('DATABONIFICACAO').AsDateTime := qryChequesRecebidosDTABOM.AsDateTime;
                FieldByName('DATA').AsDateTime := Now;
                Post;

                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM HISTORICOCHEQUE');
                SQL.Add('WHERE ID_HISTORICOCHEQUE = 0');
                Open;

                Append;
                FieldByName('HISTORICO').AsString             := 'Cheque repassado para o fornecedor: ' + sNomeFornecedor;
                FieldByName('ID_OPERADOR').ASInteger          := Operador.ID;
                FieldByName('ID_CHEQUESRECEBIDO').AsInteger   := qryChequesRecebidosIDCheque.AsInteger;;
                FieldByName('ID_FILIAL').AsInteger            := Empresa.ID;
                FieldByName('DATA').AsDateTime                := Now;
                Post;
              End;
            qryChequesRecebidos.Next;
          End;
      End;

      if Caixa.IDCaixa > 0 then
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM LCTOSCAIXA');
          SQL.Add('WHERE ID_LCTOSCAIXA = 0');
          Open;

          Append;
          FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;

          case iTipoPagamento of
            0 : FieldByName('TIPODESPESA').AsInteger := 15;
            1 : FieldByName('TIPODESPESA').AsInteger := 16;
            2 : FieldByName('TIPODESPESA').AsInteger := 17;
            3 : FieldByName('TIPODESPESA').AsInteger := 18;
            4 : FieldByName('TIPODESPESA').AsInteger := 19;
            5 : FieldByName('TIPODESPESA').AsInteger := 20;
            6 : FieldByName('TIPODESPESA').AsInteger := 21;
          end;

          FieldByName('ENTRADA_SAIDA').AsInteger := 1;
          FieldByName('Historico').AsString := 'Pagamento do Titulo: '+IntToStr(iIDConta) + ', Operador: ' + Operador.Nome;
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('VLRSAIDA').AsFloat := rValorPago;
          Post;
        End
      Else
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM SALDOCAIXA');
          SQL.Add('WHERE ID_SALDOCAIXA = 0');
          Open;

          Append;
          FieldByName('ID_CAIXAS').AsInteger := Caixa.IDCaixa;
          FieldByName('ID_OPERADORES').AsInteger := Operador.ID;

          case iTipoPagamento of
            0 : FieldByName('TIPODESPESA').AsInteger := 15;
            1 : FieldByName('TIPODESPESA').AsInteger := 16;
            2 : FieldByName('TIPODESPESA').AsInteger := 17;
            3 : FieldByName('TIPODESPESA').AsInteger := 18;
            4 : FieldByName('TIPODESPESA').AsInteger := 19;
            5 : FieldByName('TIPODESPESA').AsInteger := 20;
            6 : FieldByName('TIPODESPESA').AsInteger := 21;
          end;

          FieldByName('ENTRADA_SAIDA').AsInteger := 1;
          FieldByName('Historico').AsString := 'Pagamento do Titulo: '+IntToStr(iIDConta) + ', Operador: ' + Operador.Nome;
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('VLRSAIDA').AsFloat := rValorPago;
          Post;
        End;
    End;

  Close;
end;

procedure TfrmPagamento.CarregaChequesRecebidos;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CHEQUESRECEBIDO.ID_CHEQUESRECEBIDO, CHEQUESRECEBIDO.ID_BANCOSPADRAO, CHEQUESRECEBIDO.ID_FILIAL, CHEQUESRECEBIDO.ID_CAIXA, CHEQUESRECEBIDO.ID_PACIENTE, CHEQUESRECEBIDO.REFERENCIA, CHEQUESRECEBIDO.HISTORICO,');
      SQL.Add('CHEQUESRECEBIDO.VALOR, CHEQUESRECEBIDO.DTACONTA, CHEQUESRECEBIDO.DTABOM, CHEQUESRECEBIDO.DTACOMPENSADO,');
      SQL.Add('CHEQUESRECEBIDO.SITUACAO, CHEQUESRECEBIDO.NROAGENCIA, CHEQUESRECEBIDO.NROCONTA, CHEQUESRECEBIDO.NUMERO, CHEQUESRECEBIDO.CORRENTISTA, CHEQUESRECEBIDO.CNPJCPF, CHEQUESRECEBIDO.TELEFONE, BANCOSPADRAO.NOME AS Banco FROM CHEQUESRECEBIDO');
      SQL.Add('INNER JOIN BANCOSPADRAO ON CHEQUESRECEBIDO.ID_BANCOSPADRAO = BANCOSPADRAO.ID_BANCOSPADRAO');
      SQL.Add('WHERE CHEQUESRECEBIDO.ID_FILIAL = :pID');
      SQL.Add('AND SITUACAO <> 1');
      Parameters.ParamByName('pID').Value := Empresa.ID;
      Open;

      qryChequesRecebidos.Close;
      qryChequesRecebidos.Open;

      while not eof do
        Begin
          qryChequesRecebidos.Append;
          qryChequesRecebidosIDCheque.AsInteger := FieldByName('ID_CHEQUESRECEBIDO').AsInteger;
          qryChequesRecebidosSelecionado.AsBoolean := False;
          qryChequesRecebidosIDBancosPadrao.AsInteger := FieldByName('ID_BANCOSPADRAO').AsInteger;
          qryChequesRecebidosBanco.AsString := FieldByName('BANCO').AsString;
          qryChequesRecebidosHistorico.AsString := FieldByName('HISTORICO').AsString;
          qryChequesRecebidosValor.AsFloat := FieldByName('VALOR').AsFloat;
          qryChequesRecebidosDTACONTA.AsDateTime := FieldByName('DTACONTA').AsDateTime;
          qryChequesRecebidosDTABOM.AsDateTime := FieldByName('DTABOM').AsDateTime;
          qryChequesRecebidosNROAGENCIA.AsString := FieldByName('NROAGENCIA').AsString;
          qryChequesRecebidosNROCONTA.AsString := FieldByName('NROCONTA').AsString;
          qryChequesRecebidosNUMERO.AsString := FieldByName('NUMERO').AsString;
          qryChequesRecebidosCorrentista.AsString := FieldByName('CORRENTISTA').AsString;
          qryChequesRecebidosCNPJCPF.AsString := FieldByName('CNPJCPF').AsString;
          qryChequesRecebidosTELEFONE.AsString := FieldByName('TELEFONE').AsString;
          qryChequesRecebidos.Post;
          Next;
        End;

        qryChequesRecebidos.First;

    End;
end;

procedure TfrmPagamento.EdtCodBCPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaContasBancarias, frmPesquisaContasBancarias);
  frmPesquisaContasBancarias.bFechar := True;
  frmPesquisaContasBancarias.ShowModal;
  EdtCodBCP.Text := frmMain.sCod;
  EdtCodBCPExit(Sender);
  FreeAndNil(frmPesquisaContasBancarias);
end;

procedure TfrmPagamento.EdtCodBCPExit(Sender: TObject);
begin
  inherited;
  if EdtCodBCP.Text = '' then
    Begin
      EdtBancoCP.Text := '';
      EdtAgenciaCP.Text := '';
      EdtNroContaCP.Text := '';
      Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE ID_CONTASBANCARIAS = :pID');
      Parameters.ParamByName('pID').Value := EdtCodBCP.Text;
      Open;

      if Not Eof then
        Begin
          EdtBancoCP.Text := FieldByName('DESCRICAO').AsString;
          EdtAgenciaCP.Text := FieldByName('NROAGENCIA').AsString;
          EdtNroContaCP.Text := FieldByName('NROCONTA').AsString;
        End
      Else
        Begin
          EdtCodBCP.Text := '';
          EdtBancoCP.Text := '';
          EdtAgenciaCP.Text := '';
          EdtNroContaCP.Text := '';
        End;
    End;
end;

procedure TfrmPagamento.EdtCodBCPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmPagamento.EdtValorCPExit(Sender: TObject);
begin
  inherited;
  rRestante := rTotal -rPago;
  rRestante := rRestante - EdtValorCP.Value - EdtVlVista.Value - rSelecionado;
  VerificaRestante;
end;

procedure TfrmPagamento.EdtVlVistaExit(Sender: TObject);
begin
  inherited;
  rRestante := rTotal -rPago;
  rRestante := rRestante - EdtValorCP.Value - EdtVlVista.Value - rSelecionado;
  VerificaRestante;
end;

procedure TfrmPagamento.FormActivate(Sender: TObject);
begin
  inherited;
  CarregaChequesRecebidos;
  rSelecionado := 0;
  rRestante := rTotal -rPago;
  rRestante := rRestante - EdtValorCP.Value - EdtVlVista.Value - rSelecionado;
  VerificaRestante;
end;

procedure TfrmPagamento.qryChequesRecebidosSelecionadoValidate(Sender: TField);
begin
  inherited;
  if qryChequesRecebidosSelecionado.AsBoolean then
    Begin
      rSelecionado := rSelecionado + qryChequesRecebidosValor.AsFloat;
    End
  Else
    Begin
      rSelecionado := rSelecionado - qryChequesRecebidosValor.AsFloat;
    End;

  rRestante := rTotal -rPago;
  rRestante := rRestante - EdtValorCP.Value - EdtVlVista.Value - rSelecionado;
  VerificaRestante;
end;

function TfrmPagamento.TipoPagamento: Integer;
var
  i : Integer;
begin
  if (EdtVlVista.Value > 0) and (EdtValorCP.Value = 0) And (rSelecionado = 0) then
    Begin
      i := 0;     //Dinheiro
    End;

  if (EdtVlVista.Value = 0) and (EdtValorCP.Value > 0) and (rSelecionado = 0) then
    Begin
      i := 1;    //Cheque do cliente
    End;

  if (EdtVlVista.Value = 0) and (EdtValorCP.Value = 0) and (rSelecionado > 0) then
    Begin
      i := 2;
    End;

  if (EdtVlVista.Value > 0) and (EdtValorCP.Value > 0) and (rSelecionado > 0) then
    Begin
      i := 3;
    End;

  if (EdtVlVista.Value > 0) and (EdtValorCP.Value > 0) And (rSelecionado = 0) then
    Begin
      i := 4;
    End;

  if (EdtVlVista.Value > 0) and (EdtValorCP.Value = 0) And (rSelecionado > 0) then
    Begin
      i := 5;
    End;

  if (EdtVlVista.Value = 0) and (EdtValorCP.Value > 0) And (rSelecionado > 0) then
    Begin
      i := 6;
    End;

    Result := i;
end;

procedure TfrmPagamento.VerificaRestante;
begin
  lblTotal.Caption := FormatFloat('#,##0.00', rTotal);
  lblRecebido.Caption := FormatFloat('#,##0.00', rPago);
  lblRestante.Caption := FormatFloat('#,##0.00', rRestante);
end;

end.
