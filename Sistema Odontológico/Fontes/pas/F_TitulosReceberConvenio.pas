unit F_TitulosReceberConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvToolEdit, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, Funcoes,
  JvDBGrid, JvDBUltimGrid, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmTitulosReceberConvenios = class(TfrmPadrao)
    qryAux: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbFiltrar: TSpeedButton;
    EdtCodC: TJvComboEdit;
    EdtConvenio: TEdit;
    rgTipo: TRadioGroup;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EdtDataInicial: TJvDateEdit;
    EdtDataFinal: TJvDateEdit;
    GroupBox3: TGroupBox;
    EdtDocumento: TEdit;
    GroupBox4: TGroupBox;
    gridPagamento: TJvDBUltimGrid;
    PainelTotalContas: TPanel;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnFechar: TSpeedButton;
    Label7: TLabel;
    qryContas: TADOQuery;
    dsContas: TDataSource;
    qryContasHISTORICO: TStringField;
    qryContasDOCUMENTO: TStringField;
    qryContasDTACONTA: TDateTimeField;
    qryContasDTAVENCIMENTO: TDateTimeField;
    qryContasDTAPAGAMENTO: TDateTimeField;
    qryContasVALOR: TFloatField;
    qryContasVALORPAGO: TFloatField;
    qryContasVALORRESTANTE: TFloatField;
    qryContasConvenio: TStringField;
    qryContasID_CONTARECEBERCONVENIO: TAutoIncField;
    qryContasID_FILIAL: TIntegerField;
    qryContasID_CONVENIO: TIntegerField;
    qryContasSITUACAO: TIntegerField;
    SpeedButton1: TSpeedButton;
    btnEditar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure gridPagamentoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure EdtDocumentoExit(Sender: TObject);
    procedure EdtDataInicialExit(Sender: TObject);
    procedure EdtDataFinalExit(Sender: TObject);
    procedure cbFiltrarClick(Sender: TObject);
    procedure EdtCodCButtonClick(Sender: TObject);
    procedure EdtCodCExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure EdtCodCKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure CarregaFiltros;
  public
    { Public declarations }
  end;

var
  frmTitulosReceberConvenios: TfrmTitulosReceberConvenios;

implementation

{$R *.dfm}

uses L_Convenios, Main, C_TitulosReceberConvenio;

procedure TfrmTitulosReceberConvenios.btnEditarClick(Sender: TObject);
begin
  inherited;
  if Not Operador.TitulosReceberCE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Editar um T�tulos a Receber Conv�nio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryContasID_CONTARECEBERCONVENIO.AsString = '' then
    Begin
      Exit;
    End;

  Application.CreateForm(TfrmCadTitulosReceberConvenios, frmCadTitulosReceberConvenios);
  frmCadTitulosReceberConvenios.iIDContaReceber := qryContasID_CONTARECEBERCONVENIO.AsInteger;
  frmCadTitulosReceberConvenios.CarregaConta;
  frmCadTitulosReceberConvenios.ShowModal;
  FreeAndNil(frmCadTitulosReceberConvenios);
  CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTitulosReceberConvenios.CarregaFiltros;
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
      SQL.Add('SELECT CONTARECEBERCONVENIO.ID_CONTARECEBERCONVENIO, CONTARECEBERCONVENIO.ID_FILIAL, CONTARECEBERCONVENIO.ID_CONVENIO, CONTARECEBERCONVENIO.SITUACAO, CONTARECEBERCONVENIO.HISTORICO,');
      SQL.Add('CONTARECEBERCONVENIO.DOCUMENTO, CONTARECEBERCONVENIO.DTACONTA, CONTARECEBERCONVENIO.DTAVENCIMENTO, CONTARECEBERCONVENIO.DTAPAGAMENTO, CONTARECEBERCONVENIO.VALOR, CONTARECEBERCONVENIO.VALORPAGO,');
      SQL.Add('CONTARECEBERCONVENIO.VALORRESTANTE, CONVENIOS.NOME AS Convenio FROM CONTARECEBERCONVENIO');
      SQL.Add('INNER JOIN CONVENIOS ON CONTARECEBERCONVENIO.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
      SQL.Add('WHERE CONTARECEBERCONVENIO.ID_FILIAL = :pFilial');
      Parameters.ParamByName('pFilial').Value := Empresa.ID;

      if EdtCodC.Text <> '' then
        Begin
          SQL.Add('AND CONTARECEBERCONVENIO.ID_CONVENIO = :pCodC');
          Parameters.ParamByName('pCodC').Value := EdtCodC.Text;
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

      if (EdtDataInicial.Text <> '  /  /    ') And (EdtDataFinal.Text <> '  /  /    ') then
        Begin
          sDataIni := EdtDataInicial.Text + ' 00:00:00';
          sDataFin := EdtDataFinal.Text + ' 23:59:59';
          SQL.Add('AND DTAVENCIMENTO BETWEEN :pDataIni AND :pDataFin');
          Parameters.ParamByName('pDataIni').Value := sDataIni;
          Parameters.ParamByName('pDataFin').Value := sDataFin;
        End;

      SQL.Add('Order by DTAVENCIMENTO, CONVENIOS.NOME');
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

procedure TfrmTitulosReceberConvenios.cbFiltrarClick(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.EdtCodCButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmListaConvenios, frmListaConvenios);
  frmListaConvenios.bFechar := True;
  frmListaConvenios.ShowModal;
  EdtCodC.Text := IntToStr(frmMain.iCodConvenio);
  EdtCodCExit(Sender)
end;

procedure TfrmTitulosReceberConvenios.EdtCodCExit(Sender: TObject);
begin
  inherited;
  if (EdtCodC.Text = '') or (EdtCodC.Text = '1') then
  Begin
    EdtConvenio.Text := '';
    EdtCodC.Text := '';
    CarregaFiltros;
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CONVENIO, NOME FROM CONVENIOS');
    SQL.Add('WHERE ID_CONVENIO = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodC.Text);
    Open;

    if not Eof then
      Begin
        EdtConvenio.Text := FieldByName('NOME').AsString;
      End
    Else
      Begin
        EdtCodC.Text := '';
        EdtConvenio.Text := '';
      End;

  CarregaFiltros;
  End;
end;

procedure TfrmTitulosReceberConvenios.EdtCodCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmTitulosReceberConvenios.EdtDataFinalExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.EdtDataInicialExit(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.EdtDocumentoExit(Sender: TObject);
begin
  inherited;
    CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.FormActivate(Sender: TObject);
begin
  inherited;
  CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.gridPagamentoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  sDataAux   ,
  sDataAtual : String;
begin
  inherited;

  sDataAtual := DateToStr(Now);
  sDataAux := sDataAtual;
  sDataAtual := sDataAtual + ' 23:59:59';

  if qryContasID_CONTARECEBERCONVENIO.AsString <> '' then
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

procedure TfrmTitulosReceberConvenios.rgTipoClick(Sender: TObject);
begin
  inherited;
    CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if Not Operador.TitulosReceberCC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Cadastrar um T�tulos a Receber Conv�nio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadTitulosReceberConvenios, frmCadTitulosReceberConvenios);
  CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.SpeedButton2Click(Sender: TObject);
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

  if (qryContasID_CONTARECEBERCONVENIO.AsString <> '') and (qryContasSITUACAO.AsInteger <> 1) then
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
          FieldByName('HISTORICO').AsString := 'Receb. Conv�nio: '+ qryContasConvenio.AsString + ', Operador: ' + Operador.Nome;
          FieldByName('DOCUMENTO').AsString := qryContasDOCUMENTO.AsString;
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('VLRENTRADA').AsFloat := qryContasVALOR.AsFloat;
          Post;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM HISTORICOCONTASRECEBERCONVENIO');
          SQL.Add('WHERE ID_HISTORICOCONTASRECEBERCONVENIO = 0');
          Open;

          Append;
          FieldByname('ID_CONTARECEBERCONVENIO').AsInteger := qryContasID_CONTARECEBERCONVENIO.AsInteger;
          FieldByName('ID_FILIAL').AsInteger := Empresa.ID;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
          FieldByName('REFERENCIA').AsInteger := iRef;
          FieldByName('TIPO').AsInteger := 1;
          FieldByName('VLRRECEBIDO').AsFloat := qryContasVALOR.AsFloat;
          FieldByName('DATA').AsDateTime := Now;
          Post;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM CONTARECEBERCONVENIO');
          SQL.Add('WHERE ID_CONTARECEBERCONVENIO = :pID');
          Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBERCONVENIO.AsInteger;
          Open;

          Edit;
          FieldByName('DTAPAGAMENTO').AsDateTime := Now;
          FieldByName('SITUACAO').AsInteger := 1;
          FieldByName('VALORPAGO').AsFloat := qryContasVALOR.AsFloat;
          FieldByName('VALORRESTANTE').AsFloat := 0;
          Post;
        End;
    End;

    CarregaFiltros;
end;

procedure TfrmTitulosReceberConvenios.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if Not Operador.TitulosReceberCEstornar then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Estornar um T�tulos a Receber Conv�nio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

 if qryContasDTAPAGAMENTO.ASString = '' then
  Begin
    application.MessageBox('S� � poss�vel estornar um t�tulo que j� foi baixado','Aten��o!',mb_ok+MB_ICONWARNING);
    Exit;
  End;

  If application.MessageBox('O saldo vai para o Caixa Geral, Deseja Continuar ?', 'Aten��o!',
    MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then
  Begin
    With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM HISTORICOCONTASRECEBERCONVENIO');
        SQL.Add('WHERE ID_HISTORICOCONTASRECEBERCONVENIO = :pID');
        Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBERCONVENIO.AsInteger;
        ExecSQL;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CONTARECEBERCONVENIO');
        SQL.Add('WHERE ID_CONTARECEBERCONVENIO = :pID');
        Parameters.ParamByName('pID').Value := qryContasID_CONTARECEBERCONVENIO.AsInteger;
        Open;

        Edit;
        FieldByName('DTAPAGAMENTO').AsString := '';
        FieldByName('SITUACAO').AsInteger := 0;
        FieldByName('VALORPAGO').AsFloat := 0;
        FieldByName('VALORRESTANTE').AsFloat := qryContasVALOR.AsFloat;
        Post;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM SALDOCAIXA');
        SQL.Add('WHERE ID_SALDOCAIXA = 0');
        Open;

        Append;
        FieldByName('TIPODESPESA').AsInteger := 1;
        FieldByName('ENTRADA_SAIDA').AsInteger := 1;
        FieldByName('ID_OPERADORES').AsInteger := Operador.ID;
        FieldByName('HISTORICO').AsString := 'Estorno Conv�nio: '+ qryContasConvenio.AsString + ', Operador: ' + Operador.Nome;
        FieldByName('DOCUMENTO').AsString := qryContasDOCUMENTO.AsString;
        FieldByName('DATA').AsDateTime := Now;
        FieldByName('VLRSAIDA').AsFloat := qryContasVALOR.AsFloat;
        Post;
      End;
  End;

  CarregaFiltros;
end;

end.
