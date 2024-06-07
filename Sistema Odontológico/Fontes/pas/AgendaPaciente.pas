unit AgendaPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, JvExMask, JvToolEdit, Vcl.Mask,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Funcoes, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit, JvExComCtrls,
  JvDateTimePicker, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  JvSpin, Menus, cxButtons;

type
  TfrmAgendaPaciente = class(TfrmPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label24: TLabel;
    EdtNome: TEdit;
    EdtTel: TMaskEdit;
    EdtCel: TMaskEdit;
    EdtCodP: TJvComboEdit;
    EdtConvenio: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cbStatus: TComboBox;
    Label4: TLabel;
    lblP: TLabel;
    Label7: TLabel;
    EdtCodC: TJvComboEdit;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    Label8: TLabel;
    cbTipo: TComboBox;
    asd222: TLabel;
    qryAux: TADOQuery;
    EdtServico: TEdit;
    Label6: TLabel;
    EdtDt: TJvDateEdit;
    Label9: TLabel;
    qryAux2: TADOQuery;
    Label5: TLabel;
    EdtObs: TMemo;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    cmbPlanosTratamento: TComboBox;
    cmbAtendimentos: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GrdOrcamento: TJvDBUltimGrid;
    qryProcedimentos: TADOQuery;
    dsProcedimentos: TDataSource;
    qryProcedimentosSelecionado: TBooleanField;
    qryProcedimentosDescricaoProcedimento: TStringField;
    qryProcedimentosTipo: TStringField;
    SpeedButton3: TSpeedButton;
    qryProcedimentosIDProcedimento: TIntegerField;
    qryAux3: TADOQuery;
    qryProcedimentosTempoMedio: TStringField;
    EdtHora: TJvTimeEdit;
    EdtHoraFinal: TJvTimeEdit;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodCButtonClick(Sender: TObject);
    procedure EdtCodCExit(Sender: TObject);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbPlanosTratamentoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cmbAtendimentosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GrdOrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdOrcamentoKeyPress(Sender: TObject; var Key: Char);
    procedure GrdOrcamentoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdOrcamentoCellClick(Column: TColumn);
    procedure qryProcedimentosSelecionadoChange(Sender: TField);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodCKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    bCanceladoNaoCompareceu: Boolean;
    Procedure VerificaID;
    Function CorAgenda(Status: Integer): String;
    Procedure MontaComboPlanoTratamento;
    Procedure CarregaProcedimentosPlanoTratamento;
    Procedure MontaComboAtendimento;
    Procedure SalvaProcedimentosDB;
    Procedure CarregaAtendimentosSalvos;
    Procedure SalvaAgenda;
  public
    bAtendido, bLoad, bPago, bEditar, bFaturado, bCadastrado: Boolean;
    sCod, sCodPaciente: String;
    iIDAgenda: Integer;
  end;

var
  frmAgendaPaciente: TfrmAgendaPaciente;

implementation

{$R *.dfm}

uses L_Convenios, Main, P_Medico, P_Paciente, F_Obs, F_Historicos,
  C_PlanoTratamento;

procedure TfrmAgendaPaciente.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAgendaPaciente.btnSalvarClick(Sender: TObject);
Begin
  if EdtCodM.Text = '' then
  Begin
    Application.MessageBox('O Campo "Dentista" � obrigat�rio o preenchimento!',
      'Erro!', mb_ok + MB_ICONERROR);
    EdtCodM.SetFocus;
    Exit;
  End;

  if EdtCodP.Text = '' then
  Begin
    Application.MessageBox('O Campo "Paciente" � obrigat�rio o preenchimento!',
    'Erro!', mb_ok + MB_ICONERROR);
    EdtCodP.SetFocus;
    Exit;
  End;

  SalvaAgenda;



  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM HISTORICOPACIENTE');
    SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
    Open;

    Append;
    FieldByName('ID_PACIENTE').AsInteger := StrToInt(EdtCodP.Text);
    FieldByName('DESCRICAO').AsString := 'Agendado Com Status: ' + cbStatus.Text
      + ' para data: ' + EdtDt.Text;
    FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
    FieldByName('TIPO').AsInteger := 0;
    FieldByName('DATA').AsDateTime := Now;
    Post;
  End;

  Close;
End;

procedure TfrmAgendaPaciente.CarregaAtendimentosSalvos;
var
  iIDAtendimento, iIDPlanoTratamento: Integer;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ATENDIMENTO');
    SQL.Add('WHERE ID_AGENDA = :pID');
    Parameters.ParamByName('pID').Value := iIDAgenda;
    Open;

    iIDAtendimento := FieldByName('ID_ATENDIMENTO').AsInteger;
    iIDPlanoTratamento := FieldByName('ID_PLANOTRATAMENTO').AsInteger;

    cmbAtendimentos.Items.Clear;
    cmbAtendimentos.Items.Add(FormatFloat('000000',
      FieldByName('ID_ATENDIMENTO').AsFloat));
    cmbAtendimentos.ItemIndex := 0;
    cmbPlanosTratamento.Items.Clear;
    cmbPlanosTratamento.Items.Add(FormatFloat('000000',
      FieldByName('ID_PLANOTRATAMENTO').AsFloat));
    cmbPlanosTratamento.ItemIndex := 0;

    Close;
    SQL.Clear;
    SQL.Add('SELECT PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, ATENDIMENTOITENS.SELECIONADO FROM ATENDIMENTO');
    SQL.Add('INNER JOIN ATENDIMENTOITENS ON ATENDIMENTO.ID_ATENDIMENTO = ATENDIMENTOITENS.ID_ATENDIMENTO');
    SQL.Add('INNER JOIN ITENSPROPOSTATRATAMENTO ON ATENDIMENTOITENS.ID_ITENSPROPOSTATRATAMENTO = ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO');
    SQL.Add('INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS');
    SQL.Add('WHERE (ATENDIMENTO.ID_ATENDIMENTO = :pAtendimento)');
    Parameters.ParamByName('pAtendimento').Value := iIDAtendimento;
    Open;

    qryProcedimentos.Close;
    qryProcedimentos.Open;

    while Not Eof do
    Begin
      qryProcedimentos.Append;
      qryProcedimentosSelecionado.AsBoolean := FieldByName('SELECIONADO')
        .AsBoolean;
      qryProcedimentosDescricaoProcedimento.AsString :=
        FieldByName('DESCRICAO').AsString;

      if FieldByName('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryProcedimentosTipo.AsString := 'P';
      End
      Else
      Begin
        qryProcedimentosTipo.AsString := 'C';
      End;

      qryProcedimentos.Post;
      Next;
    End;
  End;
end;

procedure TfrmAgendaPaciente.CarregaProcedimentosPlanoTratamento;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, PROCEDIMENTOS.TEMPOMEDIO, PROCEDIMENTOS.DESCRICAO FROM ITENSPROPOSTATRATAMENTO');
    SQL.Add('INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS');
    SQL.Add('INNER JOIN PROPOSTATRATAMENTO ON ITENSPROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO = PROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO');
    SQL.Add('WHERE (PROCEDIMENTOSDENTES.SITUACAO <> 1) AND (PROPOSTATRATAMENTO.ID_PLANOTRATAMENTO = :pPlano)');
    Parameters.ParamByName('pPlano').Value := cmbPlanosTratamento.Text;
    Open;

    qryProcedimentos.Close;
    qryProcedimentos.Open;
    bLoad := True;
    while Not Eof do
    Begin
      qryProcedimentos.Append;
      qryProcedimentosIDProcedimento.AsInteger :=
        FieldByName('ID_ITENSPROPOSTATRATAMENTO').AsInteger;
      qryProcedimentosSelecionado.AsBoolean := False;
      qryProcedimentosDescricaoProcedimento.AsString :=
        FieldByName('DESCRICAO').AsString;

      if FieldByName('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryProcedimentosTipo.AsString := 'P';
      End
      Else
      Begin
        qryProcedimentosTipo.AsString := 'C';
      End;

      if FieldByName('TEMPOMEDIO').AsString <> '' then
      Begin
        qryProcedimentosTempoMedio.AsString :=
          FieldByName('TEMPOMEDIO').AsString;
      End
      Else
      Begin
        qryProcedimentosTempoMedio.AsString := '00:00:00';
      End;

      qryProcedimentos.Post;
      Next;
    End;

    qryProcedimentos.First;
    bLoad := False;
    cmbAtendimentosClick(Self);

  End;
end;

procedure TfrmAgendaPaciente.cmbAtendimentosClick(Sender: TObject);
begin
  inherited;

  if (cmbAtendimentos.Text <> '') and (qryProcedimentos.RecordCount > 0) then
  Begin
    qryProcedimentos.First;

    while Not qryProcedimentos.Eof do
    Begin
      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID_ATENDIMENTOITENS, ID_ATENDIMENTO, ID_ITENSPROPOSTATRATAMENTO, SELECIONADO FROM ATENDIMENTOITENS');
        SQL.Add('WHERE (ID_ATENDIMENTO = :pID) AND (ID_ITENSPROPOSTATRATAMENTO = :pProc)');
        Parameters.ParamByName('pID').Value := cmbAtendimentos.Text;
        Parameters.ParamByName('pProc').Value :=
          qryProcedimentosIDProcedimento.AsInteger;
        Open;

        if Not Eof then
        Begin
          qryProcedimentos.Edit;
          qryProcedimentosSelecionado.AsBoolean := FieldByName('SELECIONADO')
            .AsBoolean;
          qryProcedimentos.Post;
        End
        Else
        Begin
          qryProcedimentos.Edit;
          qryProcedimentosSelecionado.AsBoolean := False;
          qryProcedimentos.Post;
        End;
      End;
      qryProcedimentos.Next;
    End;
  End;
end;

procedure TfrmAgendaPaciente.cmbPlanosTratamentoClick(Sender: TObject);
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PLANOTRATAMENTO.CODSTATUS, PLANOTRATAMENTO.STATUS, PLANOTRATAMENTO.DTATERMINO, PLANOTRATAMENTO.DTAPREVISAOTERMINO, PLANOTRATAMENTO.DTAINICIO, PLANOTRATAMENTO.ID_MEDICO,');
    SQL.Add('PLANOTRATAMENTO.ID_PACIENTE, PLANOTRATAMENTO.ID_PLANOTRATAMENTO, MEDICOS.NOME AS Dentista FROM PLANOTRATAMENTO');
    SQL.Add('INNER JOIN MEDICOS ON PLANOTRATAMENTO.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pPlano');
    SQL.Add('AND CODSTATUS <> 2');
    Parameters.ParamByName('pPlano').Value := cmbPlanosTratamento.Text;
    Open;

    EdtCodM.Text := FieldByName('ID_MEDICO').AsString;
    EdtCodMExit(Self);
  End;

  MontaComboAtendimento;
  CarregaProcedimentosPlanoTratamento;

end;

function TfrmAgendaPaciente.CorAgenda(Status: Integer): String;
begin
  case Status of
    0:
      Begin
        Result := '6610596';
      End;

    1:
      Begin
        Result := '8689404';
      End;

    2:
      Begin
        Result := '$00F0CBA6';
      End;

    3:
      Begin
        Result := '14982788';
      End;

    4:
      Begin
        Result := '7661308';
      End;
    5:
      Begin
        Result := '16033476';
      End;
    6:
      Begin
        Result := '$00008A8A';
      End;
  End;
end;

procedure TfrmAgendaPaciente.EdtCodCButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmListaConvenios, frmListaConvenios);
  frmListaConvenios.bFechar := True;
  frmListaConvenios.ShowModal;
  EdtCodC.Text := IntToStr(frmMain.iCodConvenio);
end;

procedure TfrmAgendaPaciente.EdtCodCExit(Sender: TObject);
begin
  inherited;
  if EdtCodC.Text = '' then
  Begin
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

    EdtConvenio.Text := FieldByName('NOME').AsString;

    if EdtCodC.Text = '' then
    Begin
      EdtConvenio.Text := '';
    End;

  End;
end;

procedure TfrmAgendaPaciente.EdtCodCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmAgendaPaciente.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
  FreeAndNil(frmPesquisaMedico);
end;

procedure TfrmAgendaPaciente.EdtCodMExit(Sender: TObject);
begin
  inherited;
  if EdtCodM.Text = '' then
  Begin
    EdtMedico.Text := '';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_MEDICO, NOME FROM MEDICOS');
    SQL.Add('WHERE ID_MEDICO = :pId');
    Parameters.ParamByName('pId').Value := StrToInt(EdtCodM.Text);
    Open;

    If Not Eof then
    Begin
      EdtMedico.Text := FieldByName('NOME').AsString;
    End
    Else
    Begin
      EdtCodM.Text := '';
      EdtMedico.Text := '';
    End;
  End;
end;

procedure TfrmAgendaPaciente.EdtCodMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmAgendaPaciente.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmAgendaPaciente.EdtCodPExit(Sender: TObject);
var
  sConvenio: String;
begin
  inherited;
  if EdtCodP.Text = '' then
  Begin
    EdtNome.Text := '';
    Exit;
  End;

  qryProcedimentos.Open;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PACIENTE.ID_PACIENTE, PACIENTE.ID_CIDADE, PACIENTE.ID_CONVENIO, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO, PACIENTE.ENDERECO, PACIENTE.NRO,');
    SQL.Add('PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE,');
    SQL.Add('PACIENTE.EMPRESA, PACIENTE.FUNCAO, CONVENIOS.NOME AS CONVENIO, CIDADE.NOME AS CIDADE, CIDADE.UF, PACIENTE.ATIVO FROM PACIENTE');
    SQL.Add('LEFT JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
    SQL.Add('LEFT JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = PACIENTE.ID_CONVENIO');
    SQL.Add('WHERE ID_PACIENTE = :pCod');
    SQL.Add('AND PACIENTE.ATIVO <> 0');
    Parameters.ParamByName('pCod').Value := StrToInt(EdtCodP.Text);
    Open;

    sConvenio := FieldByName('ID_CONVENIO').AsString;

    EdtNome.Text := FieldByName('NOME').AsString;
    EdtTel.Text := FieldByName('TELEFONE').AsString;
    EdtCel.Text := FieldByName('CELULAR').AsString;
    EdtCodC.Text := sConvenio;
    EdtConvenio.Text := FieldByName('CONVENIO').AsString;
    MontaComboPlanoTratamento;

    if EdtNome.Text = '' then
    Begin
      EdtCodP.Text := '';
      EdtTel.Text := '';
      EdtCel.Text := '';
      EdtCodC.Text := '';
      EdtConvenio.Text := '';
    End;

  End;
end;

procedure TfrmAgendaPaciente.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmAgendaPaciente.FormActivate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
  EdtObs.Lines.Clear;

  if iIDAgenda = 0 then
  Begin
    bEditar := False;
  End;

  if iIDAgenda > 0 then
  Begin
    With qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT	AGENDA.ID_AGENDA, AGENDA.ID_PACIENTE, AGENDA.ID_MEDICO, AGENDA.INICIO, AGENDA.FIM, AGENDA.OPCAO, AGENDA.TIPOEVENTO, ');
      SQL.Add('AGENDA.STATUS, AGENDA.CORLABEL, AGENDA.TIPO, AGENDA.VALOR, AGENDA.SERVICO, AGENDA.FATURADO, AGENDA.OBSERVACAO, ');
      SQL.Add('PACIENTE.NOME, PACIENTE.ID_CONVENIO FROM AGENDA');
      SQL.Add('INNER JOIN PACIENTE ON AGENDA.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('WHERE ID_AGENDA = :pID');
      Parameters.ParamByName('pID').Value := iIDAgenda;
      Open;

      EdtCodP.Text := FieldByName('ID_PACIENTE').AsString;
      EdtCodPExit(Sender);
      cbStatus.ItemIndex := FieldByName('STATUS').AsInteger;
      EdtHora.Time := FieldByName('INICIO').AsDateTime;
      EdtDt.Date := FieldByName('INICIO').AsDateTime;
      EdtHoraFinal.Time := FieldByName('FIM').AsDateTime;
      EdtCodM.Text := FieldByName('ID_MEDICO').AsString;
      EdtCodMExit(Sender);
      EdtCodC.Text := FieldByName('ID_CONVENIO').AsString;
      EdtCodCExit(Sender);

      EdtServico.Text := FieldByName('SERVICO').AsString;
      cbTipo.ItemIndex := FieldByName('TIPO').AsInteger;

      EdtObs.Lines.Text := FieldByName('OBSERVACAO').AsString;
      bEditar := True;

      case cbStatus.ItemIndex of
        1:
          bCanceladoNaoCompareceu := True;
        6:
          bCanceladoNaoCompareceu := True;
      end;

      if (cbStatus.ItemIndex = 0) or (cbStatus.ItemIndex = 1) or
        (cbStatus.ItemIndex = 6) then
      Begin
        EdtCodP.Enabled := False;
        EdtNome.Enabled := False;
        EdtTel.Enabled := False;
        EdtCel.Enabled := False;
        EdtConvenio.Enabled := False;
        EdtObs.Enabled := False;
        EdtCodC.Enabled := False;
        EdtMedico.Enabled := False;
        EdtCodM.Enabled := False;
        EdtHora.Enabled := False;
        EdtServico.Enabled := False;
        EdtDt.Enabled := False;
        EdtHoraFinal.Enabled := False;
        btnSalvar.Enabled := False;
        cbStatus.Enabled := False;
        cbTipo.Enabled := False;
        cmbPlanosTratamento.Enabled := False;
        SpeedButton1.Enabled := False;
        SpeedButton3.Enabled := False;
        cmbAtendimentos.Enabled := False;
        SpeedButton2.Enabled := False;
        GrdOrcamento.ReadOnly := True;
        CarregaAtendimentosSalvos;
      End;

    End;
  End;
end;

procedure TfrmAgendaPaciente.FormCreate(Sender: TObject);
begin
  inherited;
  bAtendido := False;
  bCanceladoNaoCompareceu := False;
end;

procedure TfrmAgendaPaciente.GrdOrcamentoCellClick(Column: TColumn);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmAgendaPaciente.GrdOrcamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmAgendaPaciente.GrdOrcamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmAgendaPaciente.GrdOrcamentoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmAgendaPaciente.MontaComboAtendimento;
begin
  cmbAtendimentos.Items.Clear;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_ATENDIMENTO, ID_AGENDA, ID_PLANOTRATAMENTO, ID_OPERADOR, STATUS, STATUSTEXTO, DATA FROM ATENDIMENTO');
    SQL.Add('WHERE (STATUS <> 1) AND (ID_PLANOTRATAMENTO = :pPlano)');
    Parameters.ParamByName('pPlano').Value := cmbPlanosTratamento.Text;
    Open;

    while Not Eof do
    Begin
      cmbAtendimentos.Items.Add(FormatFloat('000000',
        FieldByName('ID_ATENDIMENTO').AsFloat));
      Next;
    End;

    cmbAtendimentos.ItemIndex := 0;
  End;
end;

procedure TfrmAgendaPaciente.MontaComboPlanoTratamento;
var
  bOK: Boolean;
begin
  cmbPlanosTratamento.Items.Clear;

  bOK := False;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PLANOTRATAMENTO.CODSTATUS, PLANOTRATAMENTO.STATUS, PLANOTRATAMENTO.DTATERMINO, PLANOTRATAMENTO.DTAPREVISAOTERMINO, PLANOTRATAMENTO.DTAINICIO, PLANOTRATAMENTO.ID_MEDICO,');
    SQL.Add('PLANOTRATAMENTO.ID_PACIENTE, PLANOTRATAMENTO.ID_PLANOTRATAMENTO, MEDICOS.NOME AS Dentista FROM PLANOTRATAMENTO');
    SQL.Add('INNER JOIN MEDICOS ON PLANOTRATAMENTO.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE ID_PACIENTE = :pPaciente');
    SQL.Add('AND CODSTATUS <> 2');
    Parameters.ParamByName('pPaciente').Value := EdtCodP.Text;
    Open;

    while Not Eof do
    Begin
      cmbPlanosTratamento.Items.Add(FormatFloat('000000',
        FieldByName('ID_PLANOTRATAMENTO').AsFloat));
      bOK := True;
      Next;
    End;

    if bOK then
    Begin
      cmbPlanosTratamento.ItemIndex := 0;
      cmbAtendimentosClick(Self);
      cmbPlanosTratamentoClick(Self);
    End;
  End;
end;

procedure TfrmAgendaPaciente.qryProcedimentosSelecionadoChange(Sender: TField);
begin
  inherited;
  if not bLoad then
    SalvaProcedimentosDB;
end;

procedure TfrmAgendaPaciente.SalvaAgenda;
var
  bTemSelecionado: Boolean;
  HoraAux: TTime;
  dDataAgendaIni, dDataAgendaFin: TDateTime;
  sParticularConvenio, sHora: String;
begin
  sHora := DateToStr(EdtDt.Date) + ' ' + TimeToStr(EdtHora.Time);
  dDataAgendaIni := StrToDateTime(sHora);
  sHora := DateToStr(EdtDt.Date) + ' ' + TimeToStr(EdtHoraFinal.Time);
  dDataAgendaFin := StrToDateTime(sHora);
  frmMain.iRef := VerificaProximaReferencia;
  EdtObs.Lines.Clear;
  EdtObs.Lines.Add('Telefone: ' + EdtTel.Text + ' | Celular: ' + EdtCel.Text);

  if EdtCodC.Text = '1' then
  Begin
    EdtObs.Lines.Add('Atendimento: Particular');
  End
  Else
  Begin
    EdtObs.Lines.Add('Atendimento: Conv�nio - ' + EdtConvenio.Text);
  End;

  if EdtCodM.Text = '' then
  Begin
    Exit;
  End;

  HoraAux := StrToTime('00:00:00');

  With qryProcedimentos do
  Begin
    First;
    bTemSelecionado := False;
    while Not Eof do
    Begin
      if qryProcedimentosSelecionado.AsBoolean then
      Begin
        bTemSelecionado := True;
        HoraAux := HoraAux + StrToTime(qryProcedimentosTempoMedio.AsString);
      End;
      Next;
    End;

    if bTemSelecionado then
    Begin
      EdtObs.Lines.Add('Procedimentos a Realizar no Atendimento: ' +
        cmbAtendimentos.Text);
    End;

    if TimeToStr(HoraAux) <> '00:00:00' then
    Begin
      HoraAux := EdtHora.Time + HoraAux;
      sHora := DateToStr(EdtDt.Date) + ' ' + TimeToStr(HoraAux);
      dDataAgendaFin := StrToDateTime(sHora);
    End;

    First;
    while Not Eof do
    Begin
      if qryProcedimentosSelecionado.AsBoolean then
      Begin
        if qryProcedimentosTipo.AsString = 'P' then
        Begin
          sParticularConvenio := 'Particular';
        End
        Else
        Begin
          sParticularConvenio := 'Conv�nio';
        End;

        EdtObs.Lines.Add(qryProcedimentosDescricaoProcedimento.AsString + ' - '
          + sParticularConvenio);
      End;
      Next;
    End;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM AGENDA');
    SQL.Add('WHERE ID_AGENDA = :pID');
    Parameters.ParamByName('pID').Value := iIDAgenda;
    Open;

    if (cbStatus.ItemIndex = 1) or (cbStatus.ItemIndex = 6) then
    Begin
      if Not bCanceladoNaoCompareceu then
      Begin
        Application.CreateForm(TfrmObservacao, frmObservacao);
        frmObservacao.Panel1.Caption := 'Informe o Motivo';
        frmObservacao.ShowModal;

        if frmObservacao.MMO.Lines.Text = '' then
        Begin
          Application.MessageBox
            ('Para cancelar um hor�rio voc� deve informar o motivo do cancelamento!',
            'Erro!', mb_ok + MB_ICONERROR);
          Exit;
        End
        Else
        Begin
          EdtObs.Lines.Add('Motivo: ' + frmObservacao.MMO.Lines.Text);
        End;

        FreeAndNil(frmObservacao);
      End;
    End;

    if bEditar then
    Begin
      if not Operador.AgendaV then
      Begin
        Application.MessageBox
          ('Operador n�o tem permiss�o para editar um hor�rio da agenda!',
          'Acesso Negado', mb_ok + MB_ICONWARNING);
        Exit;
      End;
      Edit;
    End
    Else
    Begin
      if not Operador.AgendaC then
      Begin
        Application.MessageBox
          ('Operador n�o tem permiss�o para cadastrar um novo hor�rio na agenda!',
          'Acesso Negado', mb_ok + MB_ICONWARNING);
        Exit;
      End;
      Append;
    End;

    FieldByName('ID_PACIENTE').AsString := EdtCodP.Text;
    FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
    FieldByName('Status').AsInteger := cbStatus.ItemIndex;
    FieldByName('CORLABEL').AsString := CorAgenda(cbStatus.ItemIndex);
    FieldByName('OPCAO').AsInteger := 2;
    FieldByName('INICIO').AsDateTime := dDataAgendaIni;
    FieldByName('FIM').AsDateTime := dDataAgendaFin;
    FieldByName('TIPOEVENTO').AsInteger := 0;
    FieldByName('OBSERVACAO').AsString := EdtObs.Lines.Text;
    FieldByName('SERVICO').AsString := EdtServico.Text;
    FieldByName('TIPO').AsInteger := cbTipo.ItemIndex;
    Post;

    if (CFGGeral.SPacienteAgendamento) and (not FieldByName('SAGENDAMENTO').AsBoolean) then
      Begin
        if CFGGeral.QTDESMS < 1 then Exit;
        EnviaSMSAgenda(FieldByName('ID_AGENDA').AsInteger);
      End;


    if cbStatus.ItemIndex = 0 then
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ULTIMACONSULTA FROM PACIENTE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := EdtCodP.Text;
      Open;

      Edit;
      FieldByName('ULTIMACONSULTA').AsDateTime := dDataAgendaIni;
      Post;
    End;

  End;
end;

procedure TfrmAgendaPaciente.SalvaProcedimentosDB;
begin
  if cmbAtendimentos.Text <> '' then
  Begin

    if qryProcedimentosSelecionado.AsBoolean then
    Begin
      With qryAux3 do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID_ATENDIMENTOITENS, ID_ATENDIMENTO, ID_ITENSPROPOSTATRATAMENTO, SELECIONADO FROM ATENDIMENTOITENS');
        SQL.Add('WHERE (ID_ITENSPROPOSTATRATAMENTO = :pItem) AND (ID_ATENDIMENTO = :pAtendimento) ');
        Parameters.ParamByName('pAtendimento').Value := cmbAtendimentos.Text;
        Parameters.ParamByName('pItem').Value :=
          qryProcedimentosIDProcedimento.AsInteger;
        Open;

        if Not Eof then
        Begin
          Edit;
        End
        Else
        Begin
          Append;
        End;

        FieldByName('ID_ATENDIMENTO').AsString := cmbAtendimentos.Text;
        FieldByName('ID_ITENSPROPOSTATRATAMENTO').AsInteger :=
          qryProcedimentosIDProcedimento.AsInteger;
        FieldByName('SELECIONADO').AsBoolean :=
          qryProcedimentosSelecionado.AsBoolean;
        Post;
      End;
    End
    Else
    Begin
      With qryAux3 do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ATENDIMENTOITENS');
        SQL.Add('WHERE (ID_ITENSPROPOSTATRATAMENTO = :pItem) AND (ID_ATENDIMENTO = :pAtendimento) ');
        Parameters.ParamByName('pAtendimento').Value := cmbAtendimentos.Text;
        Parameters.ParamByName('pItem').Value :=
          qryProcedimentosIDProcedimento.AsInteger;
        ExecSQL;
      End;
    End;

  End;
end;

procedure TfrmAgendaPaciente.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not Operador.PlanoTratamentoC then
  Begin
    Application.MessageBox
      ('Operador n�o tem permiss�o para cadastra um plano de tratamento!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if EdtCodP.Text = '' then
    Begin
      Application.MessageBox
        ('Para criar um novo plano de tratamento � preciso que tenha selecionado um paciente!',
        'Aten��o!', mb_ok + MB_ICONINFORMATION);
      Exit;
    End;

  Application.CreateForm(TfrmCPlanoTratamento, frmCPlanoTratamento);
  frmCPlanoTratamento.iIDPaciente := StrToInt(EdtCodP.Text);
  frmCPlanoTratamento.ShowModal;
  FreeAndNil(frmCPlanoTratamento);
  MontaComboPlanoTratamento;
end;

procedure TfrmAgendaPaciente.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if cmbPlanosTratamento.Text <> '' then
  Begin

    if cmbAtendimentos.Text <> '' then
    Begin
      Application.MessageBox
        ('S� � poss�vel abrir um atendimento novo ap�s fechar o antigo!',
        'Aten��o!', mb_ok + MB_ICONWARNING);
      Exit;
    End;

    if iIDAgenda = 0 then
    Begin
      SalvaAgenda;
      bEditar := True;
      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT MAX(ID_AGENDA) AS ID FROM AGENDA');
        Open;

        iIDAgenda := FieldByName('ID').AsInteger;
      End;
    End;

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ATENDIMENTO');
      SQL.Add('WHERE ID_ATENDIMENTO = 0');
      Open;

      Append;
      FieldByName('ID_AGENDA').AsInteger := iIDAgenda;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('STATUS').AsInteger := 0;
      FieldByName('DATA').AsDateTime := Now;
      FieldByName('ID_PLANOTRATAMENTO').AsString := cmbPlanosTratamento.Text;
      FieldByName('STATUSTEXTO').AsString := 'A Realizar';
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOPACIENTE');
      SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
      Open;

      Append;
      FieldByName('ID_PACIENTE').AsInteger := StrToInt(EdtCodP.Text);
      FieldByName('DESCRICAO').AsString := 'Novo Atendimento';
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPO').AsInteger := 0;
      FieldByName('DATA').AsDateTime := Now;
      Post;
    End;

    MontaComboAtendimento;
    cmbPlanosTratamentoClick(Self);

  End;

end;

procedure TfrmAgendaPaciente.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not Operador.PlanoTratamentoV then
  Begin
    Application.MessageBox
      ('Operador n�o tem permiss�o para editar um plano de tratamento!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if cmbPlanosTratamento.Text = '' then
  Begin
    Exit;
  End;

  Application.CreateForm(TfrmHistoricos, frmHistoricos);
  frmHistoricos.iPlanoTratamento := StrToInt(cmbPlanosTratamento.Text);
  frmHistoricos.iIDAgenda := iIDAgenda;
  frmHistoricos.CarregaPlanoTratamento;

  if cmbAtendimentos.Text <> '' then
  Begin
    frmHistoricos.qryAtendimentos.Locate('ID_ATENDIMENTO',
      StrToInt(cmbAtendimentos.Text), []);
    frmHistoricos.PageControl1.TabIndex := 1;
    frmHistoricos.CarregaAtendimentosItens;
  End;
  frmHistoricos.ShowModal;
  FreeAndNil(frmHistoricos);

  if bAtendido then
  Begin
    cbStatus.ItemIndex := 0;
    cbStatus.Enabled := False;
  End;
end;

procedure TfrmAgendaPaciente.Timer1Timer(Sender: TObject);
begin
  inherited;
  if EdtCodC.Text <> '' then
  Begin
    cbTipo.ItemIndex := 0;
  End
  Else
  Begin
    cbTipo.ItemIndex := 1;
  End;

end;

procedure TfrmAgendaPaciente.VerificaID;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PACIENTE');
    SQL.Add('WHERE NOME = :pNome');
    SQL.Add('AND TELEFONE = :pTel');
    SQL.Add('AND CELULAR = :pCel');
    Parameters.ParamByName('pNome').Value := EdtNome.Text;
    Parameters.ParamByName('pTel').Value := EdtTel.Text;
    Parameters.ParamByName('pCel').Value := EdtCel.Text;
    Open;

    sCodPaciente := FieldByName('ID_PACIENTE').AsString;
  End;
end;

end.
