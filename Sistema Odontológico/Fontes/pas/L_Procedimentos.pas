unit L_Procedimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit, cxDBEdit, Vcl.Mask,
  Vcl.DBCtrls, Vcl.StdCtrls, JvComponentBase, JvEnterTab, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons,
  Data.DB, Data.Win.ADODB, Datasnap.Provider, Funcoes, JvExComCtrls,
  JvDateTimePicker, Menus, cxButtons, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup;

type
  TfrmProcedimentosMedico = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    EdtProcedimento: TEdit;
    Label3: TLabel;
    EdtCodigoProcedimento: TEdit;
    Label4: TLabel;
    EdtValor: TcxCurrencyEdit;
    Label5: TLabel;
    Label9: TLabel;
    cbSelecaoTISS: TComboBox;
    cbOutrasDespesasTISS: TComboBox;
    gListaCategoria: TJvDBGrid;
    gListaProcedimentos: TJvDBGrid;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dsCategorias: TDataSource;
    dsProcedimentos: TDataSource;
    dsTabela: TDataSource;
    qryTabela: TADOQuery;
    qryCategorias: TADOQuery;
    qryProcedimentos: TADOQuery;
    qryTabelaID_CONVENIO: TAutoIncField;
    qryTabelaNOME: TStringField;
    qryAux: TADOQuery;
    qryCategoriasDESCRICAO: TStringField;
    qryCategoriasID_CATEGORIAPROCEDIMENTO: TAutoIncField;
    qryCategoriasID_CONVENIO: TIntegerField;
    qryProcedimentosID_PROCEDIMENTOS: TAutoIncField;
    qryProcedimentosID_CATEGORIAPROCEDIMENTO: TIntegerField;
    qryProcedimentosDESCRICAO: TStringField;
    qryProcedimentosCODPROCEDIMENTO: TStringField;
    qryProcedimentosVALOR: TFloatField;
    qryProcedimentosTEMPOMEDIO: TStringField;
    qryProcedimentosTIPOCOMISSAO: TIntegerField;
    qryProcedimentosVALORCOMISSAO: TFloatField;
    qryProcedimentosDESPESASCOMPROTETICOS: TFloatField;
    qryProcedimentosSELECAOTISS: TIntegerField;
    qryProcedimentosDESPESATISS: TIntegerField;
    cbTabela: TComboBox;
    EdtHora: TJvDateTimePicker;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure cbSelecaoTISSClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbSelecaoTISSChange(Sender: TObject);
    procedure gListaProcedimentosCellClick(Column: TColumn);
    procedure gListaCategoriaCellClick(Column: TColumn);
    procedure cbTabelaClick(Sender: TObject);
    procedure qryProcedimentosID_PROCEDIMENTOSChange(Sender: TField);
    procedure gListaProcedimentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gListaProcedimentosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gListaCategoriaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gListaCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtProcedimentoExit(Sender: TObject);
    procedure EdtValorExit(Sender: TObject);
    procedure EdtTempoMedioExit(Sender: TObject);
    procedure EdtCodigoProcedimentoExit(Sender: TObject);
    procedure cbOutrasDespesasTISSClick(Sender: TObject);
    procedure EdtHoraExit(Sender: TObject);

  private
    Procedure CarregaDadosProcedimento;
    Procedure CarregaTabelas;
    Procedure CarregaCategorias;
    Procedure CarregaProcedimentos;
    Function IDConvenio: Integer;
    Procedure SalvarProcedimento;
  public

  end;

var
  frmProcedimentosMedico: TfrmProcedimentosMedico;

implementation

{$R *.dfm}

uses Main, c_convenio, Descricao;

procedure TfrmProcedimentosMedico.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmProcedimentosMedico.btnSalvarClick(Sender: TObject);
begin
  inherited;
  SalvarProcedimento;
  CarregaProcedimentos;
end;

procedure TfrmProcedimentosMedico.CarregaCategorias;
begin
  With qryCategorias do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CATEGORIAPROCEDIMENTO');
    SQL.Add('WHERE ID_CONVENIO = :pID');
    Parameters.ParamByName('pID').Value := IDConvenio;
    Open;

    CarregaProcedimentos;
  End;
end;

procedure TfrmProcedimentosMedico.CarregaDadosProcedimento;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOS');
    SQL.Add('WHERE ID_PROCEDIMENTOS = :pID');
    Parameters.ParamByName('pID').Value :=
      qryProcedimentosID_PROCEDIMENTOS.AsInteger;
    Open;

    if Not Eof then
    Begin
      EdtProcedimento.Text := FieldByName('DESCRICAO').AsString;
      EdtCodigoProcedimento.Text := FieldByName('CODPROCEDIMENTO').AsString;
      EdtValor.Value := FieldByName('VALOR').AsFloat;

      if FieldByName('TEMPOMEDIO').AsString <> '' then
        Begin
          EdtHora.Time := StrToTime(FieldByName('TEMPOMEDIO').AsString);
        End
      Else
        Begin
          EdtHora.Time := StrToTime('00:00:00');
        End;

      cbSelecaoTISS.ItemIndex := FieldByName('SELECAOTISS').AsInteger;
      cbOutrasDespesasTISS.ItemIndex := FieldByName('DESPESATISS').AsInteger;
      cbSelecaoTISSClick(Self);
    End
    Else
    Begin
      EdtProcedimento.Text := '';
      EdtCodigoProcedimento.Text := '';
      EdtValor.Text := '';
      EdtHora.Time := StrToTime('00:00:00');
      cbSelecaoTISS.ItemIndex := 0;
      cbSelecaoTISSClick(Self);
      cbOutrasDespesasTISS.ItemIndex := -1;
    End;
  End;
end;

procedure TfrmProcedimentosMedico.CarregaProcedimentos;
begin
  With qryProcedimentos do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOS');
    SQL.Add('WHERE ID_CATEGORIAPROCEDIMENTO = :pID');
    Parameters.ParamByName('pID').Value :=
      qryCategoriasID_CATEGORIAPROCEDIMENTO.AsInteger;
    Open;

    CarregaDadosProcedimento;
  End;
end;

procedure TfrmProcedimentosMedico.CarregaTabelas;
begin

  cbTabela.Items.Clear;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM CONVENIOS');
    Open;

    while not Eof do
    Begin
      cbTabela.Items.Add(FieldByName('NOME').AsString);
      Next;
    End;
  End;

  cbTabela.ItemIndex := 0;
  CarregaCategorias;

end;

procedure TfrmProcedimentosMedico.cbOutrasDespesasTISSClick(Sender: TObject);
begin
  inherited;
  SalvarProcedimento;
end;

procedure TfrmProcedimentosMedico.cbSelecaoTISSChange(Sender: TObject);
begin
  inherited;
  cbSelecaoTISSClick(Sender);
end;

procedure TfrmProcedimentosMedico.cbSelecaoTISSClick(Sender: TObject);
begin
  inherited;
  if cbSelecaoTISS.ItemIndex = 0 then
  begin
    cbOutrasDespesasTISS.Visible := False;
  end
  Else
  Begin
    cbOutrasDespesasTISS.Visible := True;
  End;

  SalvarProcedimento;
end;

procedure TfrmProcedimentosMedico.cbTabelaClick(Sender: TObject);
begin
  inherited;
  CarregaCategorias;
end;

procedure TfrmProcedimentosMedico.EdtCodigoProcedimentoExit(Sender: TObject);
begin
  inherited;
  SalvarProcedimento;
end;

procedure TfrmProcedimentosMedico.EdtHoraExit(Sender: TObject);
var
  sHora : String;
begin
  inherited;
  SalvarProcedimento;
  sHora := TimeToStr(EdtHora.Time);

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE PROCEDIMENTOS SET TEMPOMEDIO = :pTempo');
      SQL.Add('WHERE DESCRICAO = :pDesc');
      Parameters.ParamByName('pTempo').Value := sHora;
      Parameters.ParamByName('pDesc').Value := EdtProcedimento.Text;
      ExecSQL;
    End;
end;

procedure TfrmProcedimentosMedico.EdtProcedimentoExit(Sender: TObject);
begin
  inherited;
  SalvarProcedimento;
end;

procedure TfrmProcedimentosMedico.EdtTempoMedioExit(Sender: TObject);
begin
  inherited;
  SalvarProcedimento;
end;

procedure TfrmProcedimentosMedico.EdtValorExit(Sender: TObject);
begin
  inherited;
  SalvarProcedimento;
end;

procedure TfrmProcedimentosMedico.FormActivate(Sender: TObject);
begin
  inherited;
  cbSelecaoTISSClick(Sender);
end;

procedure TfrmProcedimentosMedico.FormCreate(Sender: TObject);
begin
  inherited;
  CarregaTabelas;
end;

procedure TfrmProcedimentosMedico.gListaCategoriaCellClick(Column: TColumn);
begin
  inherited;
  CarregaProcedimentos;
end;

procedure TfrmProcedimentosMedico.gListaCategoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CarregaProcedimentos;
end;

procedure TfrmProcedimentosMedico.gListaCategoriaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CarregaProcedimentos;
end;

procedure TfrmProcedimentosMedico.gListaProcedimentosCellClick(Column: TColumn);
begin
  inherited;
  CarregaDadosProcedimento;
end;

procedure TfrmProcedimentosMedico.gListaProcedimentosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CarregaDadosProcedimento;
end;

procedure TfrmProcedimentosMedico.gListaProcedimentosKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  CarregaDadosProcedimento;
end;

function TfrmProcedimentosMedico.IDConvenio: Integer;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_CONVENIO FROM CONVENIOS');
    SQL.Add('WHERE NOME = :pNome');
    Parameters.ParamByName('pNome').Value := cbTabela.Text;
    Open;
    Result := FieldByName('ID_CONVENIO').AsInteger;
  End;
end;

procedure TfrmProcedimentosMedico.qryProcedimentosID_PROCEDIMENTOSChange
  (Sender: TField);
begin
  inherited;
  CarregaDadosProcedimento;
end;

procedure TfrmProcedimentosMedico.SalvarProcedimento;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOS');
    SQL.Add('WHERE ID_PROCEDIMENTOS = :pID');
    Parameters.ParamByName('pID').Value :=
      qryProcedimentosID_PROCEDIMENTOS.AsInteger;
    Open;

    Edit;
    FieldByName('DESCRICAO').AsString := EdtProcedimento.Text;
    FieldByName('CODPROCEDIMENTO').AsString := EdtCodigoProcedimento.Text;
    FieldByName('VALOR').AsFloat := EdtValor.Value;
    FieldByName('TEMPOMEDIO').AsString := TimeToStr(EdtHora.Time);
    FieldByName('SELECAOTISS').AsInteger := cbSelecaoTISS.ItemIndex;
    FieldByName('DESPESATISS').AsInteger := cbOutrasDespesasTISS.ItemIndex;
    Post;

  End;
end;

procedure TfrmProcedimentosMedico.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  if qryCategoriasID_CATEGORIAPROCEDIMENTO.AsString = '' then Exit;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOS');
    SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
    Open;

    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger :=
      qryCategoriasID_CATEGORIAPROCEDIMENTO.AsInteger;
    FieldByName('DESCRICAO').AsString := 'Novo Procedimento';
    Post;
  End;

  CarregaProcedimentos;

  EdtProcedimento.SetFocus;
end;

procedure TfrmProcedimentosMedico.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if Not Operador.ConveniosC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar um convenio!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  frmMain.sCod := '0';
  AbreForm(TfrmCadConvenio, frmCadConvenio);
  CarregaTabelas;
end;

procedure TfrmProcedimentosMedico.SpeedButton3Click(Sender: TObject);
var
  iConvenio: Integer;
begin
  inherited;
  application.CreateForm(TfrmDescricao, frmDescricao);
  frmDescricao.Panel1.Caption := 'Nova Categoria';
  frmDescricao.ShowModal;

  if frmMain.sDescricao <> '' then
  Begin

    iConvenio := IDConvenio;

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CATEGORIAPROCEDIMENTO');
      SQL.Add('WHERE ID_CATEGORIAPROCEDIMENTO = 0');
      Open;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := iConvenio;
      FieldByName('Descricao').AsString := frmMain.sDescricao;
      Post;

      CarregaCategorias;

      application.MessageBox('Categoria cadastrada com sucesso!', 'Sucesso!!!',
        mb_ok + MB_ICONINFORMATION);
    End;
  End;

end;

end.
