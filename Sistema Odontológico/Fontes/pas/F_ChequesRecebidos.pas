unit F_ChequesRecebidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Funcoes, JvToolEdit, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Data.DB, Data.Win.ADODB,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, cxButtons;

type
  TfrmChequesRecebidos = class(TfrmPadrao)
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
    EdtCheque: TEdit;
    GroupBox6: TGroupBox;
    EdtConta: TEdit;
    GroupBox4: TGroupBox;
    gridPagamento: TJvDBUltimGrid;
    PainelTotalContas: TPanel;
    qryAux: TADOQuery;
    qryContas: TADOQuery;
    qryContasHISTORICO: TStringField;
    qryContasVALOR: TFloatField;
    qryContasDTACONTA: TDateTimeField;
    qryContasDTABOM: TDateTimeField;
    qryContasDTACOMPENSADO: TDateTimeField;
    qryContasNROAGENCIA: TStringField;
    qryContasNROCONTA: TStringField;
    qryContasNUMERO: TStringField;
    qryContasCORRENTISTA: TStringField;
    qryContasCNPJCPF: TStringField;
    qryContasTELEFONE: TStringField;
    qryContasPaciente: TStringField;
    qryContasBanco: TStringField;
    dsContas: TDataSource;
    qryContasID_CHEQUESRECEBIDO: TAutoIncField;
    qryContasID_BANCOSPADRAO: TIntegerField;
    qryContasID_FILIAL: TIntegerField;
    qryContasID_CAIXA: TIntegerField;
    qryContasID_PACIENTE: TIntegerField;
    qryContasREFERENCIA: TIntegerField;
    qryContasSITUACAO: TIntegerField;
    btnCompensar: TcxButton;
    btnEstornar: TcxButton;
    btnRepasse: TcxButton;
    cxButton1: TcxButton;
    btnHistoricoCheque: TcxButton;
    btnFechar: TcxButton;
    qryContasNOMEREP: TStringField;
    qryContasTELREP: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtDataInicialExit(Sender: TObject);
    procedure EdtDataFinalExit(Sender: TObject);
    procedure EdtContaExit(Sender: TObject);
    procedure EdtChequeExit(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure btnHistoricoChequeClick(Sender: TObject);
    procedure btnRepasseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CarregaFiltros;
  end;

var
  frmChequesRecebidos: TfrmChequesRecebidos;

implementation

{$R *.dfm}

uses P_Paciente, Main, Descricao, F_HistoricoCheques, F_RepasseCheque;

procedure TfrmChequesRecebidos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmChequesRecebidos.btnHistoricoChequeClick(Sender: TObject);
begin
  inherited;
  if qryContasID_CHEQUESRECEBIDO.AsString = '' then Exit;


  Application.CreateForm(TfrmHistoricoCheque, frmHistoricoCheque);
  frmHistoricoCheque.CarregaHistorico(qryContasID_CHEQUESRECEBIDO.AsInteger);

  if frmHistoricoCheque.qryHistoricoCheque.RecordCount = 0 then
    Begin
      application.MessageBox('Esse cheque n�o possui hist�rico!','Aten��o!',mb_ok+MB_ICONWARNING);
    End
  Else
    Begin
      frmHistoricoCheque.ShowModal;
    End;

  FreeAndNil(frmHistoricoCheque);
end;

procedure TfrmChequesRecebidos.btnRepasseClick(Sender: TObject);
begin
  inherited;

  if qryContasDTACOMPENSADO.AsString <> '' then
    Begin
      application.MessageBox('S� � poss�vel repassar um cheque que ainda n�o foi compensado!','Aten��o!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  Application.CreateForm(TfrmRepasseCheque, frmRepasseCheque);
  frmRepasseCheque.iIDCheque := qryContasID_CHEQUESRECEBIDO.AsInteger;
  frmRepasseCheque.Panel1.Caption := 'Repasse do Cheque Nro.: ' + qryContasNUMERO.AsString;
  frmRepasseCheque.ShowModal;
  FreeAndNil(frmRepasseCheque);
  qryContas.Close;
  qryContas.Open;
end;

procedure TfrmChequesRecebidos.CarregaFiltros;
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
      SQL.Add('SELECT CHEQUESRECEBIDO.ID_CHEQUESRECEBIDO, CHEQUESRECEBIDO.ID_BANCOSPADRAO, CHEQUESRECEBIDO.ID_FILIAL, CHEQUESRECEBIDO.ID_CAIXA, CHEQUESRECEBIDO.ID_PACIENTE, CHEQUESRECEBIDO.REFERENCIA, CHEQUESRECEBIDO.HISTORICO,');
      SQL.Add('CHEQUESRECEBIDO.VALOR, CHEQUESRECEBIDO.DTACONTA, CHEQUESRECEBIDO.DTABOM, CHEQUESRECEBIDO.DTACOMPENSADO, CHEQUESRECEBIDO.SITUACAO, CHEQUESRECEBIDO.NROAGENCIA, CHEQUESRECEBIDO.NROCONTA, CHEQUESRECEBIDO.NUMERO, ');
      SQL.Add('CHEQUESRECEBIDO.CORRENTISTA, CHEQUESRECEBIDO.CNPJCPF, CHEQUESRECEBIDO.TELEFONE, PACIENTE.NOME AS Paciente, BANCOSPADRAO.NOME AS Banco, NOMEREP, TELREP FROM CHEQUESRECEBIDO');
      SQL.Add('INNER JOIN PACIENTE ON CHEQUESRECEBIDO.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('INNER JOIN BANCOSPADRAO ON CHEQUESRECEBIDO.ID_BANCOSPADRAO = BANCOSPADRAO.ID_BANCOSPADRAO');
      SQL.Add('WHERE CHEQUESRECEBIDO.ID_FILIAL = :pFilial');
      Parameters.ParamByName('pFilial').Value := Empresa.ID;

      if EdtCodP.Text <> '' then
        Begin
          SQL.Add('AND CHEQUESRECEBIDO.ID_PACIENTE = :pPaciente');
          Parameters.ParamByName('pPaciente').Value := EdtCodP.Text;
        End;

          sDataIni := DateToStr(Now);
          sDataIni := sDataIni + ' 00:00:00';

      case rgTipo.ItemIndex of
        0: Begin
          SQL.Add('AND DTACOMPENSADO IS NOT NULL');
        End;

        1: Begin
          SQL.Add('AND DTACOMPENSADO IS NULL');
        End;
      end;

      if EdtCheque.Text <> '' then
        Begin
          SQL.Add('AND NUMERO = :pNumero');
          Parameters.ParamByName('pNumero').Value := EdtCheque.Text;
        End;

      if EdtConta.Text <> '' then
        Begin
          SQL.Add('AND NROCONTA = :pConta');
          Parameters.ParamByName('pConta').Value := EdtConta.Text;
        End;

      if (EdtDataInicial.Text <> '  /  /    ') And (EdtDataFinal.Text <> '  /  /    ') then
        Begin
          sDataIni := EdtDataInicial.Text + ' 00:00:00';
          sDataFin := EdtDataFinal.Text + ' 23:59:59';
          SQL.Add('AND DTABOM BETWEEN :pDataIni AND :pDataFin');
          Parameters.ParamByName('pDataIni').Value := sDataIni;
          Parameters.ParamByName('pDataFin').Value := sDataFin;
        End;

      SQL.Add('Order by DTABOM, PACIENTE.NOME');
      Open;

      First;
      iContas := RecordCount;
      sTexto := 'Total de Cheques Selecionados: ' + IntToStr(iContas);

      sDataIni := DateToStr(Now);
      sDataIni := sDataIni + ' 23:59:59';

    {  while Not Eof do
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
       sTexto := sTexto + ' - Vencidas: R$ '+ FormatFloat('#,##0.00', rVencidas);}
       PainelTotalContas.Caption := sTexto;

       First;
    End;
end;

procedure TfrmChequesRecebidos.EdtChequeExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmChequesRecebidos.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmChequesRecebidos.EdtCodPExit(Sender: TObject);
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

procedure TfrmChequesRecebidos.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmChequesRecebidos.EdtContaExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmChequesRecebidos.EdtDataFinalExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmChequesRecebidos.EdtDataInicialExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmChequesRecebidos.FormActivate(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmChequesRecebidos.rgTipoClick(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmChequesRecebidos.SpeedButton2Click(Sender: TObject);
var
  iIDConta : Integer;
begin
  inherited;
  if not Operador.ChequesRecebidosC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Compensar um Cheques Recebido!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryContasDTACOMPENSADO.AsString <> '' then
    Begin
      application.MessageBox('S� � poss�vel compensar um cheque que ainda n�o foi compensado!','Aten��o!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  Application.CreateForm(TFrmDescricao, frmDescricao);
  frmDescricao.Panel1.Caption := 'Selecione a Conta Banc�ria';
  frmDescricao.EdtDescricao.Visible := False;
  frmDescricao.cmbContas.Visible := True;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE (ID_FILIAL = :pFil) AND (ATIVO = 1)');
      Parameters.ParamByName('pFil').Value := Empresa.ID;
      Open;

      frmDescricao.cmbContas.Items.Clear;

      while not eof do
        Begin
          frmDescricao.cmbContas.Items.Add(FieldByName('DESCRICAO').AsString);
          frmDescricao.cmbContas.ItemIndex := 0;
          Next;
        End;


    frmDescricao.ShowModal;

    if frmDescricao.bOK = False then
      Begin
        Exit;
      End;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE (ID_FILIAL = :pFil) AND (ATIVO = 1) AND (DESCRICAO = :pDesc)');
      Parameters.ParamByName('pFil').Value := Empresa.ID;
      Parameters.ParamByName('pDesc').Value := frmDescricao.cmbContas.Text;
      Open;

      iIDConta := FieldByName('ID_CONTASBANCARIAS').AsInteger;

    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHEQUESRECEBIDO');
      SQL.Add('WHERE ID_CHEQUESRECEBIDO = :pID');
      Parameters.ParamByName('pID').Value := qryContasID_CHEQUESRECEBIDO.AsInteger;
      Open;

      Edit;
      FieldByName('DTACOMPENSADO').AsDateTime := Now;
      FieldByName('SITUACAO').AsInteger := 1;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SALDOCAIXA');
      SQL.Add('WHERE ID_SALDOCAIXA = 0');
      Open;

      Append;
      FieldByName('TIPODESPESA').AsInteger := 2;
      FieldByName('ENTRADA_SAIDA').AsInteger := 1;
      FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
      FieldByName('HISTORICO').AsString := 'Cheque: ' +qryContasID_CHEQUESRECEBIDO.AsString + ' compensado';
      FieldByName('DATA').AsDateTime := Now;
      FieldByName('VLRSAIDA').AsFloat := qryContasVALOR.AsFloat;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SALDOCONTASBANCARIAS');
      SQL.Add('WHERE ID_SALDOCONTASBANCARIAS = 0');
      Open;

      Append;
      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
      FieldByName('ID_CONTASBANCARIAS').AsInteger := iIDConta;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('ENTRADA_SAIDA').AsInteger := 0;
      FieldByName('HISTORICO').AsString := 'Cheque: ' +qryContasID_CHEQUESRECEBIDO.AsString + ' compensado';
      FieldByName('DATA').AsDateTime := Now;
      FieldByName('VLRENTRADA').AsFloat := qryContasVALOR.AsFloat;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOCHEQUE');
      SQL.Add('WHERE ID_HISTORICOCHEQUE = 0');
      Open;

      Append;
      FieldByName('HISTORICO').AsString             := 'Cheque compensado.';
      FieldByName('ID_OPERADOR').ASInteger          := Operador.ID;
      FieldByName('ID_CHEQUESRECEBIDO').AsInteger   := qryContasID_CHEQUESRECEBIDO.AsInteger;
      FieldByName('ID_FILIAL').AsInteger            := Empresa.ID;
      FieldByName('DATA').AsDateTime                := Now;
      Post;
    End;

    CarregaFiltros;
end;

procedure TfrmChequesRecebidos.SpeedButton4Click(Sender: TObject);
var
  iIDConta : Integer;
begin
  inherited;
  if not Operador.ChequesRecebidosC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Estornar um Cheques Recebido!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryContasDTACOMPENSADO.AsString = '' then
    Begin
      application.MessageBox('S� � poss�vel estornar um cheque que j� foi compensado!','Aten��o!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  if qryContasNOMEREP.AsString <> '' then
    Begin
      application.MessageBox('S� � poss�vel estornar um cheque que n�o foi feito o repasse!','Aten��o!',mb_ok+MB_ICONWARNING);
      Exit;
    End;

  Application.CreateForm(TFrmDescricao, frmDescricao);
  frmDescricao.Panel1.Caption := 'Selecione a Conta Banc�ria';
  frmDescricao.EdtDescricao.Visible := False;
  frmDescricao.cmbContas.Visible := True;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE (ID_FILIAL = :pFil) AND (ATIVO = 1)');
      Parameters.ParamByName('pFil').Value := Empresa.ID;
      Open;

      frmDescricao.cmbContas.Items.Clear;

      while not eof do
        Begin
          frmDescricao.cmbContas.Items.Add(FieldByName('DESCRICAO').AsString);
          frmDescricao.cmbContas.ItemIndex := 0;
          Next;
        End;


    frmDescricao.ShowModal;

    if frmDescricao.bOK = False then
      Begin
        Exit;
      End;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTASBANCARIAS');
      SQL.Add('WHERE (ID_FILIAL = :pFil) AND (ATIVO = 1) AND (DESCRICAO = :pDesc)');
      Parameters.ParamByName('pFil').Value := Empresa.ID;
      Parameters.ParamByName('pDesc').Value := frmDescricao.cmbContas.Text;
      Open;

      iIDConta := FieldByName('ID_CONTASBANCARIAS').AsInteger;

    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHEQUESRECEBIDO');
      SQL.Add('WHERE ID_CHEQUESRECEBIDO = :pID');
      Parameters.ParamByName('pID').Value := qryContasID_CHEQUESRECEBIDO.AsInteger;
      Open;

      Edit;
      FieldByName('DTACOMPENSADO').AsString := '';
      FieldByName('SITUACAO').AsInteger := 0;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SALDOCAIXA');
      SQL.Add('WHERE ID_SALDOCAIXA = 0');
      Open;

      Append;
      FieldByName('TIPODESPESA').AsInteger := 2;
      FieldByName('ENTRADA_SAIDA').AsInteger := 0;
      FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
      FieldByName('HISTORICO').AsString := 'Cheque: ' +qryContasID_CHEQUESRECEBIDO.AsString + ' estornado';
      FieldByName('DATA').AsDateTime := Now;
      FieldByName('VLRENTRADA').AsFloat := qryContasVALOR.AsFloat;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM SALDOCONTASBANCARIAS');
      SQL.Add('WHERE ID_SALDOCONTASBANCARIAS = 0');
      Open;

      Append;
      FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
      FieldByName('ID_CONTASBANCARIAS').AsInteger := iIDConta;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('ENTRADA_SAIDA').AsInteger := 1;
      FieldByName('HISTORICO').AsString := 'Cheque: ' +qryContasID_CHEQUESRECEBIDO.AsString + ' estornado';
      FieldByName('DATA').AsDateTime := Now;
      FieldByName('VLRSAIDA').AsFloat := qryContasVALOR.AsFloat;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOCHEQUE');
      SQL.Add('WHERE ID_HISTORICOCHEQUE = 0');
      Open;

      Append;
      FieldByName('HISTORICO').AsString             := 'Cheque estornado.';
      FieldByName('ID_OPERADOR').ASInteger          := Operador.ID;
      FieldByName('ID_CHEQUESRECEBIDO').AsInteger   := qryContasID_CHEQUESRECEBIDO.AsInteger;
      FieldByName('ID_FILIAL').AsInteger            := Empresa.ID;
      FieldByName('DATA').AsDateTime                := Now;
      Post;
    End;

    CarregaFiltros;
end;

end.
