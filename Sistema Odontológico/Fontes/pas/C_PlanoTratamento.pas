unit C_PlanoTratamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Funcoes, Padrao, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, JvToolEdit, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, cxButtons;

type
  TfrmCPlanoTratamento = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox12: TGroupBox;
    EdtCodM: TJvComboEdit;
    EdtMedico: TEdit;
    Label1: TLabel;
    EdtDtInicio: TJvDateEdit;
    Label2: TLabel;
    EdtPrevisaoFim: TJvDateEdit;
    qryAux: TADOQuery;
    qryAux2: TADOQuery;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    procedure EdtCodMButtonClick(Sender: TObject);
    procedure EdtCodMExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodMKeyPress(Sender: TObject; var Key: Char);
  private
    Function GravaOdontograma: Integer;
    Procedure GeraDentesOdontograma(Odontograma, Dente: Integer);
    Procedure GeraPropostaTratamento;
  public
    bCadastrado: boolean;
    iIDPaciente, iIDPlanoTratamento, iUltimoOdontograma: Integer;
    Procedure GravaAnomalias(Odontograma, Dente: Integer);
  end;

var
  frmCPlanoTratamento: TfrmCPlanoTratamento;

implementation

{$R *.dfm}

uses P_Medico, Main, F_PlanosTratamento;

{ TfrmPadrao1 }

procedure TfrmCPlanoTratamento.btnFecharClick(Sender: TObject);
begin
  inherited;
  bCadastrado := False;
  Close;
end;

procedure TfrmCPlanoTratamento.btnSalvarClick(Sender: TObject);
var
  iOdontograma: Integer;
begin
  inherited;
  if Empty(EdtCodM.Text) then
  Begin
    application.MessageBox
      ('� obrigat�rio informar um Dentista Respons�vel pelo plano de tratamento!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCodM.SetFocus;
    Exit;
  End;

  if (EdtDtInicio.Text = '  /  /    ') or Empty(EdtDtInicio.Text) then
  Begin
    application.MessageBox
      ('� obrigat�rio informar a data de incio do plano de tratamento!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtDtInicio.SetFocus;
    Exit;
  End;

  if (EdtPrevisaoFim.Text = '  /  /    ') or Empty(EdtPrevisaoFim.Text) then
  Begin
    application.MessageBox
      ('� obrigat�rio informar a previs�o de t�rmino do plano de tratamento!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtPrevisaoFim.SetFocus;
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_PACIENTE, ID_MEDICO, DTAINICIO, DTAPREVISAOTERMINO, STATUS, CODSTATUS FROM PLANOTRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = 0');
    Open;

    Append;
    FieldByName('ID_PACIENTE').AsInteger := iIDPaciente;
    FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
    FieldByName('DTAINICIO').AsDateTime := EdtDtInicio.Date;
    FieldByName('DTAPREVISAOTERMINO').AsDateTime := EdtPrevisaoFim.Date;
    FieldByName('STATUS').AsString := 'A Realizar';
    FieldByName('CODSTATUS').AsInteger := 0;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM HISTORICOPACIENTE');
    SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
    Open;

    Append;
    FieldByName('ID_PACIENTE').AsInteger := iIDPaciente;
    FieldByName('DESCRICAO').AsString := 'Novo Plano de Tratamento de: '+ EdtDtInicio.Text+ ' at�: ' +EdtPrevisaoFim.Text;
    FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
    FieldByName('TIPO').AsInteger := 0;
    FieldByName('DATA').AsDateTime := Now;
    Post;
  End;

  iOdontograma := GravaOdontograma;

  GeraDentesOdontograma(iOdontograma, 11);
  GeraDentesOdontograma(iOdontograma, 12);
  GeraDentesOdontograma(iOdontograma, 13);
  GeraDentesOdontograma(iOdontograma, 14);
  GeraDentesOdontograma(iOdontograma, 15);
  GeraDentesOdontograma(iOdontograma, 16);
  GeraDentesOdontograma(iOdontograma, 17);
  GeraDentesOdontograma(iOdontograma, 18);

  GeraDentesOdontograma(iOdontograma, 21);
  GeraDentesOdontograma(iOdontograma, 22);
  GeraDentesOdontograma(iOdontograma, 23);
  GeraDentesOdontograma(iOdontograma, 24);
  GeraDentesOdontograma(iOdontograma, 25);
  GeraDentesOdontograma(iOdontograma, 26);
  GeraDentesOdontograma(iOdontograma, 27);
  GeraDentesOdontograma(iOdontograma, 28);

  GeraDentesOdontograma(iOdontograma, 31);
  GeraDentesOdontograma(iOdontograma, 32);
  GeraDentesOdontograma(iOdontograma, 33);
  GeraDentesOdontograma(iOdontograma, 34);
  GeraDentesOdontograma(iOdontograma, 35);
  GeraDentesOdontograma(iOdontograma, 36);
  GeraDentesOdontograma(iOdontograma, 37);
  GeraDentesOdontograma(iOdontograma, 38);

  GeraDentesOdontograma(iOdontograma, 41);
  GeraDentesOdontograma(iOdontograma, 42);
  GeraDentesOdontograma(iOdontograma, 43);
  GeraDentesOdontograma(iOdontograma, 44);
  GeraDentesOdontograma(iOdontograma, 45);
  GeraDentesOdontograma(iOdontograma, 46);
  GeraDentesOdontograma(iOdontograma, 47);
  GeraDentesOdontograma(iOdontograma, 48);

  GeraPropostaTratamento;

  application.MessageBox('Plano de Tratamento cadastrado com sucesso',
    'Sucesso!!!', mb_ok + MB_ICONINFORMATION);

  bCadastrado := True;

  Close;

end;

procedure TfrmCPlanoTratamento.EdtCodMButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmPesquisaMedico, frmPesquisaMedico);
  frmPesquisaMedico.bFechar := True;
  frmPesquisaMedico.ShowModal;
  EdtCodM.Text := frmMain.sCod;
  EdtCodMExit(Sender);
end;

procedure TfrmCPlanoTratamento.EdtCodMExit(Sender: TObject);
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

procedure TfrmCPlanoTratamento.EdtCodMKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmCPlanoTratamento.GeraDentesOdontograma(Odontograma,
  Dente: Integer);
begin

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pID');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pID').Value := iUltimoOdontograma;
    Parameters.ParamByName('pDente').Value := Dente;
    Open;

    if Not Eof then
    Begin
      qryAux2.Close;
      qryAux2.SQL.Clear;
      qryAux2.SQL.Add('SELECT * FROM DENTESODONTOGRAMA');
      qryAux2.SQL.Add('WHERE ID_DENTESODONTOGRAMA = 0');
      qryAux2.Open;

      qryAux2.Append;
      qryAux2.FieldByName('ID_ODONTOGRAMA').AsInteger := Odontograma;
      qryAux2.FieldByName('DENTE').AsInteger := Dente;
      qryAux2.FieldByName('EXISTENTE').AsBoolean := FieldByName('EXISTENTE')
        .AsBoolean;
      qryAux2.FieldByName('PERMANENTE').AsBoolean := FieldByName('PERMANENTE')
        .AsBoolean;
      qryAux2.FieldByName('COROA').AsBoolean := FieldByName('COROA').AsBoolean;
      qryAux2.FieldByName('MICRODENTE').AsBoolean := FieldByName('MICRODENTE')
        .AsBoolean;
      qryAux2.FieldByName('SUPRANUMERARIO').AsBoolean :=
        FieldByName('SUPRANUMERARIO').AsBoolean;
      qryAux2.FieldByName('SEMIINCLUSO').AsBoolean := FieldByName('SEMIINCLUSO')
        .AsBoolean;
      qryAux2.FieldByName('INCLUSO').AsBoolean := FieldByName('INCLUSO')
        .AsBoolean;
      qryAux2.Post;

    End
    Else
    Begin
      Append;
      FieldByName('ID_ODONTOGRAMA').AsInteger := Odontograma;
      FieldByName('DENTE').AsInteger := Dente;
      FieldByName('EXISTENTE').AsBoolean := True;
      FieldByName('PERMANENTE').AsBoolean := True;
      FieldByName('COROA').AsBoolean := True;
      FieldByName('MICRODENTE').AsBoolean := False;
      FieldByName('SUPRANUMERARIO').AsBoolean := False;
      FieldByName('SEMIINCLUSO').AsBoolean := False;
      FieldByName('INCLUSO').AsBoolean := False;
      Post;
    End;
  End;

  GravaAnomalias(Odontograma, Dente);

end;

procedure TfrmCPlanoTratamento.GeraPropostaTratamento;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PROPOSTATRATAMENTO = 0');
    Open;

    Append;
    FieldByName('ID_PLANOTRATAMENTO').AsInteger := iIDPlanoTratamento;
    FieldByName('DESCRICAO').AsString := 'PROPOSTA 1';
    FieldByName('AVISTA_PARCELADO').AsInteger := 0;
    FieldByName('NROPARCELAS').AsInteger := 1;
    FieldByName('PARCELAS').AsInteger := 0;
    FieldByName('ACRESCIMO').AsFloat := 0;
    FieldByName('DESCONTO').AsFloat := 0;
    FieldByName('CORRECAOMENSAL').AsFloat := 0;
    FieldByName('APROVADA').AsBoolean := False;
    Post;
  End;
end;

procedure TfrmCPlanoTratamento.GravaAnomalias(Odontograma, Dente: Integer);
begin

  qryAux2.Close;
  qryAux2.SQL.Clear;
  qryAux2.SQL.Add('SELECT * FROM ANOTACAODENTE');
  qryAux2.SQL.Add('WHERE ID_ODONTOGRAMA = :pID');
  qryAux2.SQL.Add('AND DENTE = :pDente');
  qryAux2.Parameters.ParamByName('pID').Value := iUltimoOdontograma;
  qryAux2.Parameters.ParamByName('pDente').Value := Dente;
  qryAux2.Open;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ANOTACAODENTE');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pID');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pID').Value := Odontograma;
    Parameters.ParamByName('pDente').Value := Dente;
    Open;

    if not Eof then
    Begin
      Append;
      FieldByName('ID_ODONTOGRAMA').AsInteger := Odontograma;
      FieldByName('DENTE').AsInteger := Dente;
      FieldByName('OBSERVACAO').AsString :=
        qryAux2.FieldByName('OBSERVACAO').AsString;

      FieldByName('AUSENTE').AsBoolean := qryAux2.FieldByName('AUSENTE')
        .AsBoolean;
      FieldByName('CARIADO').AsBoolean := qryAux2.FieldByName('CARIADO')
        .AsBoolean;
      FieldByName('EXTRACAOINDICADA').AsBoolean :=
        qryAux2.FieldByName('EXTRACAOINDICADA').AsBoolean;
      FieldByName('HIGIDO').AsBoolean := qryAux2.FieldByName('HIGIDO')
        .AsBoolean;
      FieldByName('RESTAURADO').AsBoolean := qryAux2.FieldByName('RESTAURADO')
        .AsBoolean;
      FieldByName('ABRASAO').AsBoolean := qryAux2.FieldByName('ABRASAO')
        .AsBoolean;
      FieldByName('PERIAPICALAGUDO').AsBoolean :=
        qryAux2.FieldByName('PERIAPICALAGUDO').AsBoolean;
      FieldByName('PERIAPICALCRONICO').AsBoolean :=
        qryAux2.FieldByName('PERIAPICALCRONICO').AsBoolean;
      FieldByName('AMELOBLASTOMA').AsBoolean :=
        qryAux2.FieldByName('AMELOBLASTOMA').AsBoolean;
      FieldByName('AMELOGENESE').AsBoolean := qryAux2.FieldByName('AMELOGENESE')
        .AsBoolean;
      FieldByName('ANODONTIA').AsBoolean := qryAux2.FieldByName('ANODONTIA')
        .AsBoolean;
      FieldByName('ANODONTIAPARCIAL').AsBoolean :=
        qryAux2.FieldByName('ANODONTIAPARCIAL').AsBoolean;
      FieldByName('ANQUILOSE').AsBoolean := qryAux2.FieldByName('ANQUILOSE')
        .AsBoolean;
      FieldByName('ATRICAO').AsBoolean := qryAux2.FieldByName('ATRICAO')
        .AsBoolean;
      FieldByName('AVULSAO').AsBoolean := qryAux2.FieldByName('AVULSAO')
        .AsBoolean;
      FieldByName('CARCINOMAEPIDERMOIDE').AsBoolean :=
        qryAux2.FieldByName('CARCINOMAEPIDERMOIDE').AsBoolean;
      FieldByName('CARCINOMAMETASTATICO').AsBoolean :=
        qryAux2.FieldByName('CARCINOMAMETASTATICO').AsBoolean;
      FieldByName('CEMENTOBLASTOMA').AsBoolean :=
        qryAux2.FieldByName('CEMENTOBLASTOMA').AsBoolean;
      FieldByName('CISTOERUPCAO').AsBoolean :=
        qryAux2.FieldByName('CISTOERUPCAO').AsBoolean;
      FieldByName('CISTORETENCAO').AsBoolean :=
        qryAux2.FieldByName('CISTORETENCAO').AsBoolean;
      FieldByName('CISTOSTAFNE').AsBoolean := qryAux2.FieldByName('CISTOSTAFNE')
        .AsBoolean;
      FieldByName('CISTODENTIGERO').AsBoolean :=
        qryAux2.FieldByName('CISTODENTIGERO').AsBoolean;
      FieldByName('CISTODERMOIDE').AsBoolean :=
        qryAux2.FieldByName('CISTODERMOIDE').AsBoolean;
      FieldByName('CISTOCONDUTO').AsBoolean :=
        qryAux2.FieldByName('CISTOCONDUTO').AsBoolean;
      FieldByName('CISTOMANDIBULAR').AsBoolean :=
        qryAux2.FieldByName('CISTOMANDIBULAR').AsBoolean;
      FieldByName('CISTONASOALVEOLAR').AsBoolean :=
        qryAux2.FieldByName('CISTONASOALVEOLAR').AsBoolean;
      FieldByName('CISTOOSSEOANEURISMATICO').AsBoolean :=
        qryAux2.FieldByName('CISTOOSSEOANEURISMATICO').AsBoolean;
      FieldByName('CISTOOSSEOSIMPLES').AsBoolean :=
        qryAux2.FieldByName('CISTOOSSEOSIMPLES').AsBoolean;
      FieldByName('CISTOOSSEOTRAUMATICO').AsBoolean :=
        qryAux2.FieldByName('CISTOOSSEOTRAUMATICO').AsBoolean;
      FieldByName('CISTOPALATINOMEDIANO').AsBoolean :=
        qryAux2.FieldByName('CISTOPALATINOMEDIANO').AsBoolean;
      FieldByName('CISTOPERIODONTALLATERAL').AsBoolean :=
        qryAux2.FieldByName('CISTOPERIODONTALLATERAL').AsBoolean;
      FieldByName('CISTORADICULAR').AsBoolean :=
        qryAux2.FieldByName('CISTORADICULAR').AsBoolean;
      FieldByName('CISTORESIDUAL').AsBoolean :=
        qryAux2.FieldByName('CISTORESIDUAL').AsBoolean;
      FieldByName('CONCUSSAO').AsBoolean := qryAux2.FieldByName('CONCUSSAO')
        .AsBoolean;
      FieldByName('CONDROMA').AsBoolean := qryAux2.FieldByName('CONDROMA')
        .AsBoolean;
      FieldByName('CONDROSSARCOMA').AsBoolean :=
        qryAux2.FieldByName('CONDROSSARCOMA').AsBoolean;
      FieldByName('DENSINDENTE').AsBoolean := qryAux2.FieldByName('DENSINDENTE')
        .AsBoolean;
      FieldByName('DENTESSUPRANUMERARIO').AsBoolean :=
        qryAux2.FieldByName('DENTESSUPRANUMERARIO').AsBoolean;
      FieldByName('DENTICAOPREDECIDUA').AsBoolean :=
        qryAux2.FieldByName('DENTICAOPREDECIDUA').AsBoolean;
      FieldByName('DENTINOGENESEIMPERFEITA').AsBoolean :=
        qryAux2.FieldByName('DENTINOGENESEIMPERFEITA').AsBoolean;
      FieldByName('DESTRUICAOOSSEA').AsBoolean :=
        qryAux2.FieldByName('DENTINOGENESEIMPERFEITA').AsBoolean;
      FieldByName('DISJUNCAOCRANIOFACIAL').AsBoolean :=
        qryAux2.FieldByName('DISJUNCAOCRANIOFACIAL').AsBoolean;
      FieldByName('DISPLASIACEMENTARIA').AsBoolean :=
        qryAux2.FieldByName('DISPLASIACEMENTARIA').AsBoolean;
      FieldByName('DISPLASIACLEIDOCRANIAL').AsBoolean :=
        qryAux2.FieldByName('DISPLASIACLEIDOCRANIAL').AsBoolean;
      FieldByName('DISPLASIACLEIDOCRANIANA').AsBoolean :=
        qryAux2.FieldByName('DISPLASIACLEIDOCRANIANA').AsBoolean;
      FieldByName('DISPLASIAECTODERMICA').AsBoolean :=
        qryAux2.FieldByName('DISPLASIAECTODERMICA').AsBoolean;
      FieldByName('DISPLASIAFIBROSA').AsBoolean :=
        qryAux2.FieldByName('DISPLASIAFIBROSA').AsBoolean;
      FieldByName('DISPLASIAOSSEAFLORIDA').AsBoolean :=
        qryAux2.FieldByName('DISPLASIAOSSEAFLORIDA').AsBoolean;
      FieldByName('ENFERMIDADEDEPAGET').AsBoolean :=
        qryAux2.FieldByName('ENFERMIDADEDEPAGET').AsBoolean;
      FieldByName('FIBROMAAMELOBLASTICO').AsBoolean :=
        qryAux2.FieldByName('FIBROMAAMELOBLASTICO').AsBoolean;
      FieldByName('FIBROSSARCOMA').AsBoolean :=
        qryAux2.FieldByName('FIBROSSARCOMA').AsBoolean;
      FieldByName('FRATURADECORPO').AsBoolean :=
        qryAux2.FieldByName('FRATURADECORPO').AsBoolean;
      FieldByName('FRATURASCORONARIAS').AsBoolean :=
        qryAux2.FieldByName('FRATURASCORONARIAS').AsBoolean;
      FieldByName('FRATURASCORONORADICULARES').AsBoolean :=
        qryAux2.FieldByName('FRATURASCORONORADICULARES').AsBoolean;
      FieldByName('FRATURASCONEILO').AsBoolean :=
        qryAux2.FieldByName('FRATURASCONEILO').AsBoolean;
      FieldByName('FRATURASDENTECRANIOFACIAIS').AsBoolean :=
        qryAux2.FieldByName('FRATURASDENTECRANIOFACIAIS').AsBoolean;
      FieldByName('FRATURASDOREBORDO').AsBoolean :=
        qryAux2.FieldByName('FRATURASDOREBORDO').AsBoolean;
      FieldByName('FRATURASLEFORT1').AsBoolean :=
        qryAux2.FieldByName('FRATURASDOREBORDO').AsBoolean;
      FieldByName('FRATURASLEFORT2').AsBoolean :=
        qryAux2.FieldByName('FRATURASLEFORT2').AsBoolean;
      FieldByName('FRATURASRADICULARES').AsBoolean :=
        qryAux2.FieldByName('FRATURASRADICULARES').AsBoolean;
      FieldByName('FRATURASRADICULARESVERTICAIS').AsBoolean :=
        qryAux2.FieldByName('FRATURASRADICULARESVERTICAIS').AsBoolean;
      FieldByName('FRATURASZIGOMATICAS').AsBoolean :=
        qryAux2.FieldByName('FRATURASZIGOMATICAS').AsBoolean;
      FieldByName('FUSAO').AsBoolean := qryAux2.FieldByName('FUSAO').AsBoolean;
      FieldByName('GEMINACAO').AsBoolean := qryAux2.FieldByName('GEMINACAO')
        .AsBoolean;
      FieldByName('FRANULOMACENTRAL').AsBoolean :=
        qryAux2.FieldByName('FRANULOMACENTRAL').AsBoolean;
      FieldByName('GRANULOMAEOSINOFILO').AsBoolean :=
        qryAux2.FieldByName('GRANULOMAEOSINOFILO').AsBoolean;
      FieldByName('GRANULOMAPERIAPICAL').AsBoolean :=
        qryAux2.FieldByName('GRANULOMAPERIAPICAL').AsBoolean;
      FieldByName('HEMANGIOMACENTRAL').AsBoolean :=
        qryAux2.FieldByName('HEMANGIOMACENTRAL').AsBoolean;
      FieldByName('HIPEROSTOSECORTICAL').AsBoolean :=
        qryAux2.FieldByName('HIPEROSTOSECORTICAL').AsBoolean;
      FieldByName('LEUCEMIA').AsBoolean := qryAux2.FieldByName('LEUCEMIA')
        .AsBoolean;
      FieldByName('LINFOMA').AsBoolean := qryAux2.FieldByName('LINFOMA')
        .AsBoolean;
      FieldByName('LUXACAO').AsBoolean := qryAux2.FieldByName('LUXACAO')
        .AsBoolean;
      FieldByName('MACRODONTIA').AsBoolean := qryAux2.FieldByName('MACRODONTIA')
        .AsBoolean;
      FieldByName('MELANOMA').AsBoolean := qryAux2.FieldByName('MELANOMA')
        .AsBoolean;
      FieldByName('MICRODONTIA').AsBoolean := qryAux2.FieldByName('MICRODONTIA')
        .AsBoolean;
      FieldByName('MIELOMA').AsBoolean := qryAux2.FieldByName('MIELOMA')
        .AsBoolean;
      FieldByName('MIXOMA').AsBoolean := qryAux2.FieldByName('MIXOMA')
        .AsBoolean;
      FieldByName('NEURILENOMA').AsBoolean := qryAux2.FieldByName('NEURILENOMA')
        .AsBoolean;
      FieldByName('NEURINOMA').AsBoolean := qryAux2.FieldByName('NEURINOMA')
        .AsBoolean;
      FieldByName('NEUROFIBROMA').AsBoolean :=
        qryAux2.FieldByName('NEUROFIBROMA').AsBoolean;
      FieldByName('ODONTOMA').AsBoolean := qryAux2.FieldByName('ODONTOMA')
        .AsBoolean;
      FieldByName('OSTEOBLASTOMA').AsBoolean :=
        qryAux2.FieldByName('OSTEOBLASTOMA').AsBoolean;
      FieldByName('OSTEOMA').AsBoolean := qryAux2.FieldByName('OSTEOMA')
        .AsBoolean;
      FieldByName('OSTEOMAOSTEIDE').AsBoolean :=
        qryAux2.FieldByName('OSTEOMAOSTEIDE').AsBoolean;
      FieldByName('OSTEOMIELITEDEGARRE').AsBoolean :=
        qryAux2.FieldByName('OSTEOMIELITEDEGARRE').AsBoolean;
      FieldByName('OSTEOMIELITEESCLEOSANTE').AsBoolean :=
        qryAux2.FieldByName('OSTEOMIELITEESCLEOSANTE').AsBoolean;
      FieldByName('ESTEOMIELITEESCLEOSANTEDIFUSA').AsBoolean :=
        qryAux2.FieldByName('ESTEOMIELITEESCLEOSANTEDIFUSA').AsBoolean;
      FieldByName('ESTEOMIELITESUPURATIVAAGUDA').AsBoolean :=
        qryAux2.FieldByName('ESTEOMIELITESUPURATIVAAGUDA').AsBoolean;
      FieldByName('ESTEOMIELITESUPURATIVACRONICA').AsBoolean :=
        qryAux2.FieldByName('ESTEOMIELITESUPURATIVACRONICA').AsBoolean;
      FieldByName('OSTEOPETROSE').AsBoolean :=
        qryAux2.FieldByName('OSTEOPETROSE').AsBoolean;
      FieldByName('OSTEOSSARCOMA').AsBoolean :=
        qryAux2.FieldByName('OSTEOSSARCOMA').AsBoolean;
      FieldByName('PEDRASPULPARES').AsBoolean :=
        qryAux2.FieldByName('OSTEOSSARCOMA').AsBoolean;
      FieldByName('PERIDONTITEADULTO').AsBoolean :=
        qryAux2.FieldByName('PERIDONTITEADULTO').AsBoolean;
      FieldByName('PERIODONTITEJUVENIL').AsBoolean :=
        qryAux2.FieldByName('PERIDONTITEADULTO').AsBoolean;
      FieldByName('QUERATOCISTO').AsBoolean :=
        qryAux2.FieldByName('QUERATOCISTO').AsBoolean;
      FieldByName('QUERUBISMO').AsBoolean := qryAux2.FieldByName('QUERUBISMO')
        .AsBoolean;
      FieldByName('RAIZSUPRANUMERARIA').AsBoolean :=
        qryAux2.FieldByName('RAIZSUPRANUMERARIA').AsBoolean;
      FieldByName('REABSORCAOEXTERNA').AsBoolean :=
        qryAux2.FieldByName('RAIZSUPRANUMERARIA').AsBoolean;
      FieldByName('REABSORCAOINTERNA').AsBoolean :=
        qryAux2.FieldByName('REABSORCAOINTERNA').AsBoolean;
      FieldByName('SARCOMA').AsBoolean := qryAux2.FieldByName('SARCOMA')
        .AsBoolean;
      FieldByName('SINDROMEDENERVOS').AsBoolean :=
        qryAux2.FieldByName('SARCOMA').AsBoolean;
      FieldByName('TAURODONTISMO').AsBoolean :=
        qryAux2.FieldByName('TAURODONTISMO').AsBoolean;
      FieldByName('TRANSPOSICAO').AsBoolean :=
        qryAux2.FieldByName('TRANSPOSICAO').AsBoolean;
      FieldByName('TUMORADENOMATOIDE').AsBoolean :=
        qryAux2.FieldByName('TUMORADENOMATOIDE').AsBoolean;
      FieldByName('TUMOREPITELIAL').AsBoolean :=
        qryAux2.FieldByName('TUMOREPITELIAL').AsBoolean;
      FieldByName('TUMORESCAMOSO').AsBoolean :=
        qryAux2.FieldByName('TUMORESCAMOSO').AsBoolean;
      FieldByName('TUMORESMALIGNOSDASGLANDULAS').AsBoolean :=
        qryAux2.FieldByName('TUMORESMALIGNOSDASGLANDULAS').AsBoolean;
      Post;
    End;

  End;
end;

function TfrmCPlanoTratamento.GravaOdontograma: Integer;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Max(ID_PLANOTRATAMENTO) as ID FROM PLANOTRATAMENTO');
    Open;

    iIDPlanoTratamento := FieldByName('ID').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT Max(ID_ODONTOGRAMA) as ID FROM ODONTOGRAMA');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := iIDPaciente;
    Open;

    iUltimoOdontograma := FieldByName('ID').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ODONTOGRAMA');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := iIDPaciente;
    Open;

    Append;
    FieldByName('ID_PLANOTRATAMENTO').AsInteger := iIDPlanoTratamento;
    FieldByName('ID_PACIENTE').AsInteger := iIDPaciente;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ODONTOGRAMA');
    SQL.Add('WHERE ID_PLANOTRATAMENTO = :pID');
    Parameters.ParamByName('pID').Value := iIDPlanoTratamento;
    Open;

    Result := FieldByName('ID_ODONTOGRAMA').AsInteger;
  End;
end;

end.
