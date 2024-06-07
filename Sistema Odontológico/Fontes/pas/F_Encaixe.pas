unit F_Encaixe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, JvExMask, JvToolEdit, Vcl.Mask, JvExComCtrls, JvDateTimePicker,
  Funcoes, DateUtils, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  JvSpin;

type
  TfrmEncaixe = class(TfrmPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label24: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lblP: TLabel;
    EdtNome: TEdit;
    EdtTel: TMaskEdit;
    EdtCel: TMaskEdit;
    EdtCodP: TJvComboEdit;
    EdtConvenio: TEdit;
    EdtCodC: TJvComboEdit;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    qryAux: TADOQuery;
    EdtDt: TJvDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    rgTipo: TRadioGroup;
    qryAux2: TADOQuery;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    Label7: TLabel;
    EdtObs: TMemo;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    SpeedButton1: TSpeedButton;
    cmbPlanosTratamento: TComboBox;
    GroupBox4: TGroupBox;
    SpeedButton2: TSpeedButton;
    cmbAtendimentos: TComboBox;
    GroupBox5: TGroupBox;
    GrdOrcamento: TJvDBUltimGrid;
    dsProcedimentos: TDataSource;
    qryProcedimentos: TADOQuery;
    qryProcedimentosSelecionado: TBooleanField;
    qryProcedimentosDescricaoProcedimento: TStringField;
    qryProcedimentosTipo: TStringField;
    qryProcedimentosIDProcedimento: TIntegerField;
    qryAux3: TADOQuery;
    qryProcedimentosTempoMedio: TStringField;
    EdtHora: TJvTimeEdit;
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure EdtCodCExit(Sender: TObject);
    procedure EdtCodCButtonClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure cmbPlanosTratamentoClick(Sender: TObject);
    procedure cmbAtendimentosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GrdOrcamentoCellClick(Column: TColumn);
    procedure GrdOrcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdOrcamentoKeyPress(Sender: TObject; var Key: Char);
    procedure GrdOrcamentoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryProcedimentosSelecionadoChange(Sender: TField);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodCKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
  private
    Procedure SalvaProcedimentosDB;
    Procedure MontaComboPlanoTratamento;
    Procedure MontaComboAtendimento;
    Procedure CarregaProcedimentosPlanoTratamento;
  public
    { Public declarations }
    bLoad, bEditar, bAtive, bCadastrado: boolean;
    iIDEncaixe : Integer;
  end;

var
  frmEncaixe: TfrmEncaixe;

implementation

{$R *.dfm}

uses P_Paciente, Main, L_Convenios, P_Medico, C_PlanoTratamento;

procedure TfrmEncaixe.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close
end;

procedure TfrmEncaixe.btnSalvarClick(Sender: TObject);
var
  dDataAgendaIni, dDataAgendaFin: TDateTime;
  sParticularConvenio, sHora: String;
  bTemSelecionado : Boolean;
  HoraAux : TTime;
  iIDAgenda : Integer;
begin
  sHora := DateToStr(EdtDt.Date) + ' ' + TimeToStr(EdtHora.Time);
  dDataAgendaIni := StrToDateTime(sHora);
  EdtHora.Time := EdtHora.Time + StrToTime('00:30:00');
  sHora := DateToStr(EdtDt.Date) + ' ' + TimeToStr(EdtHora.Time);
  dDataAgendaFin := StrToDateTime(sHora);

  EdtObs.Lines.Clear;
  EdtObs.Lines.Add('Telefone: ' + EdtTel.Text + ' | Celular: ' + EdtCel.Text);

  if EdtCodC.Text = '1' then
    Begin
      EdtObs.Lines.Add('Atendimento: Particular');
    End
  Else
    Begin
      EdtObs.Lines.Add('Atendimento: Conv�nio - '+ EdtConvenio.Text);
    End;

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
          EdtObs.Lines.Add('Procedimentos a Realizar no Atendimento: ' + cmbAtendimentos.Text);
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

              EdtObs.Lines.Add(qryProcedimentosDescricaoProcedimento.AsString + ' - ' +sParticularConvenio);
            End;
          Next;
        End;
    End;

  if rgTipo.ItemIndex = 0 then
  Begin
    With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM ENCAIXE');
         SQL.Add('WHERE ID_ENCAIXE = :pID');

        if Not bEditar then
          Begin
            Parameters.ParamByName('pID').Value := 0;
            Open;
            Append;
          End
        Else
          Begin
            Parameters.ParamByName('pID').Value := iIDEncaixe;
            Open;
            Edit;
          End;

        FieldByName('ID_PACIENTE').AsString := EdtCodP.Text;
        FieldByName('ID_CONVENIO').AsString := EdtCodC.Text;
        FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
        FieldByName('DATA').AsDateTime := dDataAgendaIni;
        FieldByName('OBSERVACAO').AsString := EdtObs.Lines.Text;
        Post;

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM HISTORICOPACIENTE');
        SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
        Open;

        Append;
        FieldByName('ID_PACIENTE').AsInteger := StrToInt(EdtCodP.Text);
        FieldByName('DESCRICAO').AsString := 'Agendado na fila de encaixe para data: ' + EdtDt.Text;
        FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
        FieldByName('TIPO').AsInteger := 0;
        FieldByName('DATA').AsDateTime := Now;
        Post;
      End;
  End;

  if rgTipo.ItemIndex = 1 then
  Begin
    if bEditar then
    Begin
      With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM ENCAIXE');
        SQL.Add('WHERE ID_ENCAIXE = :pID');
        Parameters.ParamByName('pID').Value := iIDEncaixe;
        ExecSQL;
      End;
    End;

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM AGENDA');
      SQL.Add('WHERE ID_AGENDA = 0');
      Open;

      Append;
      FieldByName('ID_PACIENTE').AsString := EdtCodP.Text;
      FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
      FieldByName('INICIO').AsDateTime := dDataAgendaIni;
      FieldByName('FIM').AsDateTime := dDataAgendaFin;
      FieldByName('STATUS').AsInteger := 4;
      FieldByName('CORLABEL').AsString := '7661308';
      FieldByName('OPCAO').AsInteger := 2;
      FieldByName('TIPOEVENTO').AsInteger := 0;
      FieldByName('OBSERVACAO').AsString := EdtObs.Lines.Text;
      Post;

      if cmbAtendimentos.Text <> '' then
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT MAX(ID_AGENDA) AS ID FROM AGENDA');
          Open;

          iIDAgenda := FieldByname('ID').AsInteger;

          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM ATENDIMENTO');
          SQL.Add('WHERE ID_ATENDIMENTO = :pID');
          Parameters.ParamByName('pID').Value := StrToInt(cmbAtendimentos.Text);
          Open;

          Edit;
          FieldByName('ID_AGENDA').AsInteger := iIDAgenda;
          Post;
        End;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOPACIENTE');
      SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
      Open;

      Append;
      FieldByName('ID_PACIENTE').AsInteger := StrToInt(EdtCodP.Text);
      FieldByName('DESCRICAO').AsString := 'Agendado Com Status: Encaixe para data: ' + EdtDt.Text;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPO').AsInteger := 0;
      FieldByName('DATA').AsDateTime := Now;
      Post;
    End;
  End;

  Close;

end;

procedure TfrmEncaixe.CarregaProcedimentosPlanoTratamento;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PROCEDIMENTOS.TEMPOMEDIO, ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, PROCEDIMENTOS.DESCRICAO FROM ITENSPROPOSTATRATAMENTO');
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
          qryProcedimentosIDProcedimento.AsInteger := FieldByName('ID_ITENSPROPOSTATRATAMENTO').AsInteger;
          qryProcedimentosSelecionado.AsBoolean := False;
          qryProcedimentosDescricaoProcedimento.AsString := FieldByName('DESCRICAO').AsString;

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
              qryProcedimentosTempoMedio.AsString := FieldByName('TEMPOMEDIO').AsString;
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

procedure TfrmEncaixe.cmbAtendimentosClick(Sender: TObject);
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
              Parameters.ParamByName('pProc').Value := qryProcedimentosIDProcedimento.AsInteger;
              Open;

              if Not Eof then
                Begin
                  qryProcedimentos.Edit;
                  qryProcedimentosSelecionado.AsBoolean := FieldByName('SELECIONADO').AsBoolean;
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

procedure TfrmEncaixe.cmbPlanosTratamentoClick(Sender: TObject);
begin
  inherited;
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

procedure TfrmEncaixe.EdtCodCButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmListaConvenios, frmListaConvenios);
  frmListaConvenios.bFechar := True;
  frmListaConvenios.ShowModal;
  EdtCodC.Text := IntToStr(frmMain.iCodConvenio);
end;

procedure TfrmEncaixe.EdtCodCExit(Sender: TObject);
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

procedure TfrmEncaixe.EdtCodCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmEncaixe.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
end;

procedure TfrmEncaixe.EdtCodMExit(Sender: TObject);
begin
  inherited;
  if EdtCodM.Text = '' then
  Begin
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

    EdtMedico.Text := FieldByName('NOME').AsString;

    if EdtMedico.Text = '' then
    Begin
      EdtCodM.Text := '';
    End;

  End;
end;

procedure TfrmEncaixe.EdtCodMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmEncaixe.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
end;

procedure TfrmEncaixe.EdtCodPExit(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
  Begin
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
    Parameters.ParamByName('pCod').Value := StrToInt(EdtCodP.Text);
    Open;

    EdtNome.Text := FieldByName('NOME').AsString;
    EdtTel.Text := FieldByName('TELEFONE').AsString;
    EdtCel.Text := FieldByName('CELULAR').AsString;
    EdtCodC.Text := FieldByName('ID_CONVENIO').AsString;
    EdtConvenio.Text := FieldByName('CONVENIO').AsString;
    MontaComboPlanoTratamento;

    if EdtCodP.Text = '' then
    Begin
      EdtNome.Text := '';
      EdtTel.Text := '';
      EdtCel.Text := '';
      EdtCodC.Text := '';
      EdtConvenio.Text := '';
    End;

  End;
end;

procedure TfrmEncaixe.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmEncaixe.FormActivate(Sender: TObject);
begin
  inherited;

  if bAtive then
  Begin

    bAtive := False;

    if bEditar then
    Begin
      With qryAux2 do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ID_PACIENTE, ID_CONVENIO, ID_MEDICO, DATA, OBSERVACAO FROM ENCAIXE');
        SQL.Add('WHERE ID_ENCAIXE = :pId');
        Parameters.ParamByName('pId').Value := iIDEncaixe;
        Open;

        EdtCodP.Text := FieldByName('ID_PACIENTE').AsString;
        EdtCodPExit(Sender);

        EdtCodC.Text := FieldByName('ID_CONVENIO').AsString;
        EdtCodCExit(Sender);

        EdtHora.Time := FieldByName('DATA').AsDateTime;
        EdtDt.Date := FieldByName('DATA').AsDateTime;

        EdtCodM.Text := FieldByName('ID_MEDICO').AsString;
        EdtCodMExit(Sender);

        EdtObs.Lines.Text := FieldByName('OBSERVACAO').AsString;
      End;
    End;
  End;
end;

procedure TfrmEncaixe.FormCreate(Sender: TObject);
begin
  inherited;
  bAtive := True;
  PageControl1.TabIndex := 0;
end;

procedure TfrmEncaixe.GrdOrcamentoCellClick(Column: TColumn);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmEncaixe.GrdOrcamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmEncaixe.GrdOrcamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmEncaixe.GrdOrcamentoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SalvaProcedimentosDB;
end;

procedure TfrmEncaixe.MontaComboAtendimento;
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
            cmbAtendimentos.Items.Add(FormatFloat('000000', FieldByName('ID_ATENDIMENTO').AsFloat));
            Next;
          End;

          cmbAtendimentos.ItemIndex := 0;
     End;
end;

procedure TfrmEncaixe.MontaComboPlanoTratamento;
var
  bOK : Boolean;
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
          cmbPlanosTratamento.Items.Add(FormatFloat('000000', FieldByName('ID_PLANOTRATAMENTO').AsFloat));
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

procedure TfrmEncaixe.qryProcedimentosSelecionadoChange(Sender: TField);
begin
  inherited;
  if not bLoad then SalvaProcedimentosDB;
end;

procedure TfrmEncaixe.SalvaProcedimentosDB;
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
              Parameters.ParamByName('pItem').Value := qryProcedimentosIDProcedimento.AsInteger;
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
              FieldByName('ID_ITENSPROPOSTATRATAMENTO').ASInteger := qryProcedimentosIDProcedimento.AsInteger;
              FieldByName('SELECIONADO').AsBoolean := qryProcedimentosSelecionado.AsBoolean;
              Post;
            End;
        End
      Else
        Begin
          With qryAux3 do
            Begin
              CLose;
              SQL.Clear;
              SQL.Add('DELETE FROM ATENDIMENTOITENS');
              SQL.Add('WHERE (ID_ITENSPROPOSTATRATAMENTO = :pItem) AND (ID_ATENDIMENTO = :pAtendimento) ');
              Parameters.ParamByName('pAtendimento').Value := cmbAtendimentos.Text;
              Parameters.ParamByName('pItem').Value := qryProcedimentosIDProcedimento.AsInteger;
              ExecSQL;
            End;
        End;

    End;
end;

procedure TfrmEncaixe.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not Operador.PlanoTratamentoC then
    Begin
      application.MessageBox('Operador n�o tem permiss�o para cadastra um plano de tratamento!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
      Exit;
    End;

  Application.CreateForm(TfrmCPlanoTratamento, frmCPlanoTratamento);
  frmCPlanoTratamento.iIDPaciente := StrToInt(EdtCodP.Text);
  frmCPlanoTratamento.ShowModal;
  FreeAndNil(frmCPlanoTratamento);
  MontaComboPlanoTratamento;
end;

procedure TfrmEncaixe.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if cmbPlanosTratamento.Text <> '' then
    Begin

      if cmbAtendimentos.Text <> '' then
        Begin
          application.MessageBox('S� � poss�vel abrir um atendimento novo ap�s fechar o antigo!', 'Aten��o!',
          mb_ok + MB_ICONWARNING);
          Exit;
        End;

      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM ATENDIMENTO');
          SQL.Add('WHERE ID_ATENDIMENTO = 0');
          Open;

          Append;
          FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
          FieldByName('STATUS').AsInteger := 0;
          FieldByName('DATA').AsDateTime := Now;
          FieldByName('ID_PLANOTRATAMENTO').AsString := cmbPlanosTratamento.Text;
          FieldByName('STATUSTEXTO').AsString := 'A Realizar';
          Post;
        End;

      MontaComboAtendimento;
      cmbPlanosTratamentoClick(Self);

    End;
end;

end.
