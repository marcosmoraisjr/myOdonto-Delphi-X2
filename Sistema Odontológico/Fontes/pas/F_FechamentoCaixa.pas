unit F_FechamentoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvToolEdit, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  Funcoes,
  Data.DB, Data.Win.ADODB, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvEdit, JvDBSearchEdit, QuickRpt, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmFechamentoCaixa = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdtData: TJvDateEdit;
    lblHora: TLabel;
    lblOperador: TLabel;
    lblCaixa: TLabel;
    qryAux: TADOQuery;
    EdtNumero: TJvDBSearchComboBox;
    qryCaixa: TADOQuery;
    qryCaixaID_CAIXAS: TAutoIncField;
    qryCaixaID_OPERADORES: TIntegerField;
    qryCaixaDTACAIXA: TDateTimeField;
    qryCaixaDATAABERTURA: TDateTimeField;
    qryCaixaDATAFECHAMENTO: TDateTimeField;
    qryCaixaSALDOINICIAL: TFloatField;
    qryCaixaNUMERO: TIntegerField;
    qryCaixaABERTO: TBooleanField;
    qryCaixaOBSERVACOES: TStringField;
    dsCaixa: TDataSource;
    GroupBox2: TGroupBox;
    rgTipo: TRadioGroup;
    rgDestino: TRadioGroup;
    GroupBox3: TGroupBox;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    gridPagamento: TJvDBUltimGrid;
    qryValores: TADOQuery;
    qryValoresDescricao: TStringField;
    qryValoresValor: TFloatField;
    qryValoresValorCaixa: TFloatField;
    qryValoresValorDiferenca: TFloatField;
    dsValores: TDataSource;
    EdtNomeOperador: TJvDBSearchEdit;
    qryCaixaNOME: TStringField;
    Rels: TQRCompositeReport;
    procedure FormCreate(Sender: TObject);
    procedure EdtNumeroClick(Sender: TObject);
    procedure EdtNumeroChange(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure RelsAddReports(Sender: TObject);
  private
    Procedure CarregaDetalhesCaixa(IDCaixa: Integer);
    Procedure PreviaFechamento;
    Procedure FechaCaixa;
  public
    { Public declarations }
  end;

var
  frmFechamentoCaixa: TfrmFechamentoCaixa;

implementation

{$R *.dfm}

uses R_FechamentoCaixa;

procedure TfrmFechamentoCaixa.btnFecharClick(Sender: TObject);
begin
  inherited;

  Close;
end;

procedure TfrmFechamentoCaixa.btnSalvarClick(Sender: TObject);
begin
  inherited;
  case rgTipo.ItemIndex of
    1:
      Begin
        if not Operador.CaixaF then
        Begin
          application.MessageBox
            ('Operador n�o tem permiss�o para fechar o Caixa!',
            'Acesso Negado', mb_ok + MB_ICONWARNING);
          Exit;
        End;

        if Caixa.IDCaixa <> -1 then
        Begin
          application.MessageBox
            ('Fechamento do caixa definitivo somente � permitido no Caixa Geral!',
            'Aten��o!', mb_ok + MB_ICONWARNING);
          Exit;
        End;

        If application.MessageBox
          (PChar('Ao fechar definitivamente o caixa n�o haver� possibilidade da realiza��o de lan�amentos. Deseja Continuar?'),
          'Aten��o', MB_YESNO OR MB_DEFBUTTON2 OR MB_ICONEXCLAMATION)
          = IDYES Then
        Begin
          FechaCaixa;
        End
        Else
        Begin
          Exit;
        End;
      End;
  end;

  application.CreateForm(TfrmRelFechamentoCaixa, frmRelFechamentoCaixa);
  PreviaFechamento;

  case rgDestino.ItemIndex of
    0:
      frmRelFechamentoCaixa.relPrevia.Preview;
    1:
      frmRelFechamentoCaixa.relPrevia.Print;
  end;

  FreeAndNil(frmRelFechamentoCaixa);
end;

procedure TfrmFechamentoCaixa.CarregaDetalhesCaixa(IDCaixa: Integer);
var
  rValor: Real;
begin
  With qryValores do
  Begin
    Close;
    Open;

    Append;
    FieldByName('DESCRICAO').AsString := 'Dinheiro';

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 1');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := FieldByName('SALDO').AsFloat;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 0');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := rValor + FieldByName('SALDO').AsFloat;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 7');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := rValor + FieldByName('SALDO').AsFloat;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 9');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := rValor + FieldByName('SALDO').AsFloat;

      qryValoresValor.AsFloat := 0;
      qryValoresValorDiferenca.AsFloat := 0;
      qryValoresValorCaixa.AsFloat := rValor;
    End;
    Post;

    Append;
    FieldByName('DESCRICAO').AsString := 'Cheque � Vista';

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 2');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := FieldByName('SALDO').AsFloat;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 8');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := rValor + FieldByName('SALDO').AsFloat;

      qryValoresValor.AsFloat := 0;
      qryValoresValorDiferenca.AsFloat := 0;
      qryValoresValorCaixa.AsFloat := rValor;
    End;
    Post;

    Append;
    FieldByName('DESCRICAO').AsString := 'Cheque � Prazo';

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 3');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := FieldByName('SALDO').AsFloat;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 12');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := rValor + FieldByName('SALDO').AsFloat;

      qryValoresValor.AsFloat := 0;
      qryValoresValorDiferenca.AsFloat := 0;
      qryValoresValorCaixa.AsFloat := rValor;
    End;
    Post;

    Append;
    FieldByName('DESCRICAO').AsString := 'Outras Entradas';

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 4');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := FieldByName('SALDO').AsFloat;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA = 10');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := rValor + FieldByName('SALDO').AsFloat;

      Close;
      SQL.Clear;
      SQL.Add('SELECT SUM(VlrEntrada - VlrSaida) As Saldo FROM LCTOSCAIXA');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      SQL.Add('AND TIPODESPESA > 12');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      rValor := rValor + FieldByName('SALDO').AsFloat;

      qryValoresValorCaixa.AsFloat := rValor;
      qryValoresValor.AsFloat := 0;
      qryValoresValorDiferenca.AsFloat := 0;
    End;
    Post;
  End;
end;

procedure TfrmFechamentoCaixa.EdtNumeroChange(Sender: TObject);
begin
  inherited;
  EdtData.Date := qryCaixaDTACAIXA.AsDateTime;
  CarregaDetalhesCaixa(qryCaixaID_CAIXAS.AsInteger);
end;

procedure TfrmFechamentoCaixa.EdtNumeroClick(Sender: TObject);
begin
  inherited;
  EdtData.Date := qryCaixaDTACAIXA.AsDateTime;
  CarregaDetalhesCaixa(qryCaixaID_CAIXAS.AsInteger);
end;

procedure TfrmFechamentoCaixa.FechaCaixa;
var
  iTipo: Integer;
  rDiferenca: Real;
begin
  rDiferenca := 0;
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SALDOCAIXA');
    SQL.Add('WHERE ID_SALDOCAIXA = 0');
    Open;

    qryValores.First;

    while not qryValores.Eof do
    Begin
      if qryValoresDescricao.AsString = 'Dinheiro' then
      Begin
        iTipo := 1;
      End
      Else if qryValoresDescricao.AsString = 'Cheque � Vista' then
      Begin
        iTipo := 2;
      End
      Else if qryValoresDescricao.AsString = 'Cheque � Prazo' then
      Begin
        iTipo := 3;
      End
      Else
      Begin
        iTipo := 4;
      End;

      if qryValoresValor.AsFloat > 0 then
      Begin
        Append;
        FieldByName('TIPODESPESA').AsInteger := iTipo;
        FieldByName('ENTRADA_SAIDA').AsInteger := 0;
        FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
        FieldByName('ID_CAIXAS').AsInteger := qryCaixaID_CAIXAS.AsInteger;
        FieldByName('HISTORICO').AsString := 'Saldo do caixa: ' +
          qryCaixaID_CAIXAS.AsString;
        FieldByName('DATA').AsDateTime := Now;
        FieldByName('VLRENTRADA').AsFloat := qryValoresValor.AsFloat;
        rDiferenca := (qryValoresValor.AsFloat - qryValoresValorCaixa.AsFloat) +
          rDiferenca;
        Post;
      End;
      qryValores.Next;
    End;

    if rDiferenca < 0 then
    Begin
      Append;
      FieldByName('TIPODESPESA').AsInteger := iTipo;
      FieldByName('ENTRADA_SAIDA').AsInteger := 14;
      FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
      FieldByName('ID_CAIXAS').AsInteger := qryCaixaID_CAIXAS.AsInteger;
      FieldByName('HISTORICO').AsString := 'Saldo faltando do caixa: ' +
        qryCaixaID_CAIXAS.AsString;
      FieldByName('DATA').AsDateTime := Now;
      rDiferenca := rDiferenca * -1;
      FieldByName('VLRSAIDA').AsFloat := rDiferenca;
      Post;
    End;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CAIXAS');
    SQL.Add('WHERE ID_CAIXAS = :pID');
    Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
    Open;

    Edit;
    FieldByName('DATAFECHAMENTO').AsDateTime := Now;
    FieldByName('ABERTO').AsBoolean := False;
    FieldByName('Observacoes').AsString := 'Fechado pelo operador: ' +
      Operador.Nome;
    Post;
  End;
end;

procedure TfrmFechamentoCaixa.FormCreate(Sender: TObject);
var
  iOperador: Integer;
begin
  inherited;

  if Caixa.IDCaixa = -1 then
  Begin
    lblCaixa.Caption := 'Caixa Geral';
    iOperador := Operador.ID;
  End
  Else
  Begin
    lblCaixa.Caption := DateToStr(Caixa.DataCaixa) + ' - ' +
      IntToStr(Caixa.Numero);
    iOperador := Caixa.IDOperador;
  End;

  lblHora.Caption := FormatDateTime('HH:MM:SS', Now);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM OPERADORES');
    SQL.Add('WHERE ID_OPERADORES = :pID');
    Parameters.ParamByName('pID').Value := iOperador;
    Open;

    lblOperador.Caption := IntToStr(iOperador) + ' - ' +
      FieldByName('NOME').AsString;
  End;

  With qryCaixa do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CAIXAS.ID_CAIXAS, CAIXAS.ID_OPERADORES, CAIXAS.DTACAIXA, CAIXAS.DATAABERTURA, CAIXAS.DATAFECHAMENTO,');
    SQL.Add(' CAIXAS.SALDOINICIAL, CAIXAS.NUMERO, CAIXAS.OBSERVACOES, CAIXAS.ABERTO, OPERADORES.NOME FROM CAIXAS');
    SQL.Add('INNER JOIN OPERADORES ON CAIXAS.ID_OPERADORES = OPERADORES.ID_OPERADORES');
    SQL.Add('WHERE (CAIXAS.ABERTO = 1)');
    Open;

    First;
    EdtNumero.Text := FieldByName('NUMERO').AsString;
    EdtNumero.Tag := FieldByName('ID_CAIXAS').AsInteger;
    EdtData.Date := FieldByName('DTACAIXA').AsDateTime;
    CarregaDetalhesCaixa(EdtNumero.Tag);
  End;

end;

procedure TfrmFechamentoCaixa.PreviaFechamento;
var
  rEntrada, rSaida, rReforco, rSaque, rInformado, rDiferenca, rValor: Real;
begin
  With frmRelFechamentoCaixa do
  Begin

    case rgTipo.ItemIndex of
      0:
        Begin
          relPrevia.ReportTitle := 'PR�VIA DO CAIXA';
        End;
      1:
        Begin
          relPrevia.ReportTitle := 'FECHAMENTO DEFINITIVO';
        End;
    end;

    With qryRel do
    Begin
      Close;
      Open;

      Append;
      FieldByName('FORMAPAGAMENTO').AsString := 'Dinheiro';

      With qryAux do
      Begin
        lblEmpCab.Caption := Empresa.Nome + '( ' + Empresa.RazaoSocial + ' )';

        Close;
        SQL.Clear;
        SQL.Add('SELECT CAIXAS.ID_CAIXAS, CAIXAS.ID_OPERADORES, CAIXAS.DTACAIXA, CAIXAS.DATAABERTURA, CAIXAS.DATAFECHAMENTO, CAIXAS.SALDOINICIAL, CAIXAS.NUMERO,');
        SQL.Add('CAIXAS.ABERTO, CAIXAS.OBSERVACOES, OPERADORES.NOME FROM CAIXAS ');
        SQL.Add('INNER JOIN OPERADORES ON CAIXAS.ID_OPERADORES = OPERADORES.ID_OPERADORES');
        SQL.Add('WHERE (CAIXAS.ID_CAIXAS = :pID)');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        lblCaixaCab.Caption := 'Caixa: ' + FieldByName('DTACAIXA').AsString +
          ' - ' + FieldByName('NUMERO').AsString + ' - Respons�vel: ' +
          FieldByName('NOME').AsString + ' - Hora: ' +
          FormatDateTime('HH:MM:SS', Now);

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 1');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := FieldByName('Entrada').AsFloat;
        rSaida := FieldByName('Saida').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 0');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := rEntrada + FieldByName('Entrada').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 7');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rReforco := FieldByName('ENTRADA').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 9');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rSaque := FieldByName('Saida').AsFloat;

        qryValores.First;

        While not qryValores.Eof do
        Begin
          if qryValoresDescricao.AsString = 'Dinheiro' then
          Begin
            rInformado := qryValoresValor.AsFloat;
            rDiferenca := rInformado - qryValoresValorCaixa.AsFloat;
          End;
          qryValores.Next;
        End;

        qryRelEntrada.AsFloat := rEntrada;
        qryRelSaida.AsFloat := rSaida;
        qryRelReforco.AsFloat := rReforco;
        qryRelSaques.AsFloat := rSaque;
        qryRelInformado.AsFloat := rInformado;
        qryRelDiferenca.AsFloat := rDiferenca;
        qryrelIDCaixa.AsInteger := qryCaixaID_CAIXAS.AsInteger;
      End;

      Post;

      Append;
      FieldByName('FORMAPAGAMENTO').AsString := 'Cheque � Vista';

      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 2');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := FieldByName('Entrada').AsFloat;
        rSaida := FieldByName('Saida').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 8');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := rEntrada + FieldByName('Entrada').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 11');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rSaque := FieldByName('Saida').AsFloat;

        qryValores.First;

        While not qryValores.Eof do
        Begin
          if qryValoresDescricao.AsString = 'Cheque � Vista' then
          Begin
            rInformado := qryValoresValor.AsFloat;
            rDiferenca := rInformado - qryValoresValorCaixa.AsFloat;
          End;
          qryValores.Next;
        End;

        qryRelEntrada.AsFloat := rEntrada;
        qryRelSaida.AsFloat := rSaida;
        qryRelReforco.AsFloat := rReforco;
        qryRelSaques.AsFloat := rSaque;
        qryRelInformado.AsFloat := rInformado;
        qryRelDiferenca.AsFloat := rDiferenca;
        qryrelIDCaixa.AsInteger := qryCaixaID_CAIXAS.AsInteger;
      End;
      Post;

      Append;
      FieldByName('FORMAPAGAMENTO').AsString := 'Cheque � Prazo';

      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 3');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := FieldByName('Entrada').AsFloat;
        rSaida := FieldByName('Saida').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 12');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rSaque := FieldByName('Saida').AsFloat;

        qryValores.First;

        While not qryValores.Eof do
        Begin
          if qryValoresDescricao.AsString = 'Cheque � Prazo' then
          Begin
            rInformado := qryValoresValor.AsFloat;
            rDiferenca := rInformado - qryValoresValorCaixa.AsFloat;
          End;
          qryValores.Next;
        End;

        qryRelEntrada.AsFloat := rEntrada;
        qryRelSaida.AsFloat := rSaida;
        qryRelReforco.AsFloat := 0;
        qryRelSaques.AsFloat := rSaque;
        qryRelInformado.AsFloat := rInformado;
        qryRelDiferenca.AsFloat := rDiferenca;
        qryrelIDCaixa.AsInteger := qryCaixaID_CAIXAS.AsInteger;
      End;
      Post;

      Append;
      FieldByName('FORMAPAGAMENTO').AsString := 'Outras Entradas';

      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 4');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := FieldByName('Entrada').AsFloat;
        rSaida := FieldByName('Saida').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA = 10');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := rEntrada + FieldByName('Entrada').AsFloat;
        rSaida := rSaida + FieldByName('Saida').AsFloat;

        Close;
        SQL.Clear;
        SQL.Add('SELECT Sum(VlrEntrada) As Entrada, Sum(VlrSaida) As Saida FROM LCTOSCAIXA');
        SQL.Add('WHERE ID_CAIXAS = :pID');
        SQL.Add('AND TIPODESPESA > 12');
        Parameters.ParamByName('pID').Value := qryCaixaID_CAIXAS.AsInteger;
        Open;

        rEntrada := rEntrada + FieldByName('Entrada').AsFloat;
        rSaida := rSaida + FieldByName('Saida').AsFloat;
        // rSaque := FieldByName('Saida').AsFloat;

        qryValores.First;

        While not qryValores.Eof do
        Begin
          if qryValoresDescricao.AsString = 'Outras Entradas' then
          Begin
            rInformado := qryValoresValor.AsFloat;
            rDiferenca := rInformado - qryValoresValorCaixa.AsFloat;
          End;
          qryValores.Next;
        End;

        qryRelEntrada.AsFloat := rEntrada;
        qryRelSaida.AsFloat := rSaida;
        qryRelReforco.AsFloat := 0;
        qryRelSaques.AsFloat := rSaque;
        qryRelInformado.AsFloat := rInformado;
        qryRelDiferenca.AsFloat := rDiferenca;
        qryrelIDCaixa.AsInteger := qryCaixaID_CAIXAS.AsInteger;
      End;
      Post;
    End;
  End;
end;

procedure TfrmFechamentoCaixa.RelsAddReports(Sender: TObject);
begin
  inherited;
  Rels.Reports.Add(frmRelFechamentoCaixa.Cabecalho);
  Rels.Reports.Add(frmRelFechamentoCaixa.relPrevia);
end;

end.
