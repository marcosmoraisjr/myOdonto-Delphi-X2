unit F_AnotacaoDente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls, Vcl.CheckLst,
  Vcl.Buttons,
  Data.DB, Data.Win.ADODB;

type
  TfrmAnotacaoDente = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cbAnomalia: TCheckListBox;
    GroupBox3: TGroupBox;
    mmoObs: TMemo;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    qryAux: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    bDeletar: Boolean;
    Procedure VerificaDeletar;
  public
    bEditar : Boolean;
    iDente, iIDOdontograma: Integer;
    sDente: String;
    Procedure CarregaAnotacoes(iOdontograma, Dente: Integer);
  end;

var
  frmAnotacaoDente: TfrmAnotacaoDente;

implementation

{$R *.dfm}

procedure TfrmAnotacaoDente.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAnotacaoDente.btnSalvarClick(Sender: TObject);
var
  iAux, i: Integer;
Begin

  VerificaDeletar;

  i := 0;

  if bDeletar then
  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM ANOTACAODENTE');
      SQL.Add('WHERE ID_ODONTOGRAMA = :pID');
      SQL.Add('AND DENTE = :pDente');
      Parameters.ParamByName('pID').Value := iIDOdontograma;
      Parameters.ParamByName('pDente').Value := iDente;
      ExecSQL;
    End;
  End
  Else
  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ANOTACAODENTE');
      SQL.Add('WHERE ID_ODONTOGRAMA = :pID');
      SQL.Add('AND DENTE = :pDente');

      if bEditar then
        Begin
          Parameters.ParamByName('pID').Value := iIDOdontograma;
          Parameters.ParamByName('pDente').Value := iDente;
          Open;
          Edit;
        End
      Else
        Begin
          Parameters.ParamByName('pID').Value := 0;
          Parameters.ParamByName('pDente').Value := 0;
          Open;
          Append;
        End;

      FieldByName('ID_ODONTOGRAMA').AsInteger := iIDOdontograma;
      FieldByName('DENTE').AsInteger := iDente;
      FieldByName('OBSERVACAO').AsString := mmoObs.Lines.Text;

      FieldByName('AUSENTE').AsBoolean := cbAnomalia.Checked[0];
      FieldByName('CARIADO').AsBoolean := cbAnomalia.Checked[1];
      FieldByName('EXTRACAOINDICADA').AsBoolean := cbAnomalia.Checked[2];
      FieldByName('HIGIDO').AsBoolean := cbAnomalia.Checked[3];
      FieldByName('RESTAURADO').AsBoolean := cbAnomalia.Checked[4];
      FieldByName('ABRASAO').AsBoolean := cbAnomalia.Checked[5];
      FieldByName('PERIAPICALAGUDO').AsBoolean := cbAnomalia.Checked[6];
      FieldByName('PERIAPICALCRONICO').AsBoolean := cbAnomalia.Checked[7];
      FieldByName('AMELOBLASTOMA').AsBoolean := cbAnomalia.Checked[8];
      FieldByName('AMELOGENESE').AsBoolean := cbAnomalia.Checked[9];
      FieldByName('ANODONTIA').AsBoolean := cbAnomalia.Checked[10];
      FieldByName('ANODONTIAPARCIAL').AsBoolean := cbAnomalia.Checked[11];
      FieldByName('ANQUILOSE').AsBoolean := cbAnomalia.Checked[12];
      FieldByName('ATRICAO').AsBoolean := cbAnomalia.Checked[13];
      FieldByName('AVULSAO').AsBoolean := cbAnomalia.Checked[14];
      FieldByName('CARCINOMAEPIDERMOIDE').AsBoolean := cbAnomalia.Checked[15];
      FieldByName('CARCINOMAMETASTATICO').AsBoolean := cbAnomalia.Checked[16];
      FieldByName('CEMENTOBLASTOMA').AsBoolean := cbAnomalia.Checked[17];
      FieldByName('CISTOERUPCAO').AsBoolean := cbAnomalia.Checked[18];
      FieldByName('CISTORETENCAO').AsBoolean := cbAnomalia.Checked[19];
      FieldByName('CISTOSTAFNE').AsBoolean := cbAnomalia.Checked[20];
      FieldByName('CISTODENTIGERO').AsBoolean := cbAnomalia.Checked[21];
      FieldByName('CISTODERMOIDE').AsBoolean := cbAnomalia.Checked[22];
      FieldByName('CISTOCONDUTO').AsBoolean := cbAnomalia.Checked[23];
      FieldByName('CISTOMANDIBULAR').AsBoolean := cbAnomalia.Checked[24];
      FieldByName('CISTONASOALVEOLAR').AsBoolean := cbAnomalia.Checked[25];
      FieldByName('CISTOOSSEOANEURISMATICO').AsBoolean := cbAnomalia.Checked[26];
      FieldByName('CISTOOSSEOSIMPLES').AsBoolean := cbAnomalia.Checked[27];
      FieldByName('CISTOOSSEOTRAUMATICO').AsBoolean := cbAnomalia.Checked[28];
      FieldByName('CISTOPALATINOMEDIANO').AsBoolean := cbAnomalia.Checked[29];
      FieldByName('CISTOPERIODONTALLATERAL').AsBoolean := cbAnomalia.Checked[30];
      FieldByName('CISTORADICULAR').AsBoolean := cbAnomalia.Checked[31];
      FieldByName('CISTORESIDUAL').AsBoolean := cbAnomalia.Checked[32];
      FieldByName('CONCUSSAO').AsBoolean := cbAnomalia.Checked[33];
      FieldByName('CONDROMA').AsBoolean := cbAnomalia.Checked[34];
      FieldByName('CONDROSSARCOMA').AsBoolean := cbAnomalia.Checked[35];
      FieldByName('DENSINDENTE').AsBoolean := cbAnomalia.Checked[36];
      FieldByName('DENTESSUPRANUMERARIO').AsBoolean := cbAnomalia.Checked[37];
      FieldByName('DENTICAOPREDECIDUA').AsBoolean := cbAnomalia.Checked[38];
      FieldByName('DENTINOGENESEIMPERFEITA').AsBoolean := cbAnomalia.Checked[39];
      FieldByName('DESTRUICAOOSSEA').AsBoolean := cbAnomalia.Checked[40];
      FieldByName('DISJUNCAOCRANIOFACIAL').AsBoolean := cbAnomalia.Checked[41];
      FieldByName('DISPLASIACEMENTARIA').AsBoolean := cbAnomalia.Checked[42];
      FieldByName('DISPLASIACLEIDOCRANIAL').AsBoolean := cbAnomalia.Checked[43];
      FieldByName('DISPLASIACLEIDOCRANIANA').AsBoolean := cbAnomalia.Checked[44];
      FieldByName('DISPLASIAECTODERMICA').AsBoolean := cbAnomalia.Checked[45];
      FieldByName('DISPLASIAFIBROSA').AsBoolean := cbAnomalia.Checked[46];
      FieldByName('DISPLASIAOSSEAFLORIDA').AsBoolean := cbAnomalia.Checked[47];
      FieldByName('ENFERMIDADEDEPAGET').AsBoolean := cbAnomalia.Checked[48];
      FieldByName('FIBROMAAMELOBLASTICO').AsBoolean := cbAnomalia.Checked[49];
      FieldByName('FIBROSSARCOMA').AsBoolean := cbAnomalia.Checked[50];
      FieldByName('FRATURADECORPO').AsBoolean := cbAnomalia.Checked[51];
      FieldByName('FRATURASCORONARIAS').AsBoolean := cbAnomalia.Checked[52];
      FieldByName('FRATURASCORONORADICULARES').AsBoolean := cbAnomalia.Checked[53];
      FieldByName('FRATURASCONEILO').AsBoolean := cbAnomalia.Checked[54];
      FieldByName('FRATURASDENTECRANIOFACIAIS').AsBoolean := cbAnomalia.Checked[55];
      FieldByName('FRATURASDOREBORDO').AsBoolean := cbAnomalia.Checked[56];
      FieldByName('FRATURASLEFORT1').AsBoolean := cbAnomalia.Checked[57];
      FieldByName('FRATURASLEFORT2').AsBoolean := cbAnomalia.Checked[58];
      FieldByName('FRATURASRADICULARES').AsBoolean := cbAnomalia.Checked[59];
      FieldByName('FRATURASRADICULARESVERTICAIS').AsBoolean := cbAnomalia.Checked[60];
      FieldByName('FRATURASZIGOMATICAS').AsBoolean := cbAnomalia.Checked[61];
      FieldByName('FUSAO').AsBoolean := cbAnomalia.Checked[62];
      FieldByName('GEMINACAO').AsBoolean := cbAnomalia.Checked[63];
      FieldByName('FRANULOMACENTRAL').AsBoolean := cbAnomalia.Checked[64];
      FieldByName('GRANULOMAEOSINOFILO').AsBoolean := cbAnomalia.Checked[65];
      FieldByName('GRANULOMAPERIAPICAL').AsBoolean := cbAnomalia.Checked[66];
      FieldByName('HEMANGIOMACENTRAL').AsBoolean := cbAnomalia.Checked[67];
      FieldByName('HIPEROSTOSECORTICAL').AsBoolean := cbAnomalia.Checked[68];
      FieldByName('LEUCEMIA').AsBoolean := cbAnomalia.Checked[69];
      FieldByName('LINFOMA').AsBoolean := cbAnomalia.Checked[70];
      FieldByName('LUXACAO').AsBoolean := cbAnomalia.Checked[71];
      FieldByName('MACRODONTIA').AsBoolean := cbAnomalia.Checked[72];
      FieldByName('MELANOMA').AsBoolean := cbAnomalia.Checked[73];
      FieldByName('MICRODONTIA').AsBoolean := cbAnomalia.Checked[74];
      FieldByName('MIELOMA').AsBoolean := cbAnomalia.Checked[75];
      FieldByName('MIXOMA').AsBoolean := cbAnomalia.Checked[76];
      FieldByName('NEURILENOMA').AsBoolean := cbAnomalia.Checked[77];
      FieldByName('NEURINOMA').AsBoolean := cbAnomalia.Checked[78];
      FieldByName('NEUROFIBROMA').AsBoolean := cbAnomalia.Checked[79];
      FieldByName('ODONTOMA').AsBoolean := cbAnomalia.Checked[80];
      FieldByName('OSTEOBLASTOMA').AsBoolean := cbAnomalia.Checked[81];
      FieldByName('OSTEOMA').AsBoolean := cbAnomalia.Checked[82];
      FieldByName('OSTEOMAOSTEIDE').AsBoolean := cbAnomalia.Checked[83];
      FieldByName('OSTEOMIELITEDEGARRE').AsBoolean := cbAnomalia.Checked[84];
      FieldByName('OSTEOMIELITEESCLEOSANTE').AsBoolean := cbAnomalia.Checked[85];
      FieldByName('ESTEOMIELITEESCLEOSANTEDIFUSA').AsBoolean := cbAnomalia.Checked[86];
      FieldByName('ESTEOMIELITESUPURATIVAAGUDA').AsBoolean := cbAnomalia.Checked[87];
      FieldByName('ESTEOMIELITESUPURATIVACRONICA').AsBoolean := cbAnomalia.Checked[88];
      FieldByName('OSTEOPETROSE').AsBoolean := cbAnomalia.Checked[89];
      FieldByName('OSTEOSSARCOMA').AsBoolean := cbAnomalia.Checked[90];
      FieldByName('PEDRASPULPARES').AsBoolean := cbAnomalia.Checked[91];
      FieldByName('PERIDONTITEADULTO').AsBoolean := cbAnomalia.Checked[92];
      FieldByName('PERIODONTITEJUVENIL').AsBoolean := cbAnomalia.Checked[93];
      FieldByName('QUERATOCISTO').AsBoolean := cbAnomalia.Checked[94];
      FieldByName('QUERUBISMO').AsBoolean := cbAnomalia.Checked[95];
      FieldByName('RAIZSUPRANUMERARIA').AsBoolean := cbAnomalia.Checked[96];
      FieldByName('REABSORCAOEXTERNA').AsBoolean := cbAnomalia.Checked[97];
      FieldByName('REABSORCAOINTERNA').AsBoolean := cbAnomalia.Checked[98];
      FieldByName('SARCOMA').AsBoolean := cbAnomalia.Checked[99];
      FieldByName('SINDROMEDENERVOS').AsBoolean := cbAnomalia.Checked[100];
      FieldByName('TAURODONTISMO').AsBoolean := cbAnomalia.Checked[101];
      FieldByName('TRANSPOSICAO').AsBoolean := cbAnomalia.Checked[102];
      FieldByName('TUMORADENOMATOIDE').AsBoolean := cbAnomalia.Checked[103];
      FieldByName('TUMOREPITELIAL').AsBoolean := cbAnomalia.Checked[104];
      FieldByName('TUMORESCAMOSO').AsBoolean := cbAnomalia.Checked[105];
      FieldByName('TUMORESMALIGNOSDASGLANDULAS').AsBoolean := cbAnomalia.Checked[106];

      Post;

    End;
  End;

  application.MessageBox('Altera��es salvas com sucesso!', 'Sucesso!!!',
    mb_ok + MB_ICONINFORMATION);
    Close;

end;

procedure TfrmAnotacaoDente.CarregaAnotacoes(iOdontograma, Dente: Integer);
var
  i: Integer;
begin

  i := 0;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ANOTACAODENTE');
    SQL.Add('WHERE ID_ODONTOGRAMA = :pID');
    SQL.Add('AND DENTE = :pDente');
    Parameters.ParamByName('pID').Value := iOdontograma;
    Parameters.ParamByName('pDente').Value := Dente;
    Open;

    if Not Eof then
    Begin
      bEditar := True;
      mmoObs.Lines.Text := FieldByName('OBSERVACAO').AsString;
      cbAnomalia.Checked[0] := FieldByName('AUSENTE').AsBoolean;
      cbAnomalia.Checked[1] := FieldByName('CARIADO').AsBoolean;
      cbAnomalia.Checked[2] := FieldByName('EXTRACAOINDICADA').AsBoolean;
      cbAnomalia.Checked[3] := FieldByName('HIGIDO').AsBoolean;
      cbAnomalia.Checked[4] := FieldByName('RESTAURADO').AsBoolean;
      cbAnomalia.Checked[5] := FieldByName('ABRASAO').AsBoolean;
      cbAnomalia.Checked[6] := FieldByName('PERIAPICALAGUDO').AsBoolean;
      cbAnomalia.Checked[7] := FieldByName('PERIAPICALCRONICO').AsBoolean;
      cbAnomalia.Checked[8] := FieldByName('AMELOBLASTOMA').AsBoolean;
      cbAnomalia.Checked[9] := FieldByName('AMELOGENESE').AsBoolean;
      cbAnomalia.Checked[10] := FieldByName('ANODONTIA').AsBoolean;
      cbAnomalia.Checked[11] := FieldByName('ANODONTIAPARCIAL').AsBoolean;
      cbAnomalia.Checked[12] := FieldByName('ANQUILOSE').AsBoolean;
      cbAnomalia.Checked[13] := FieldByName('ATRICAO').AsBoolean;
      cbAnomalia.Checked[14] := FieldByName('AVULSAO').AsBoolean;
      cbAnomalia.Checked[15] := FieldByName('CARCINOMAEPIDERMOIDE')
        .AsBoolean;
      cbAnomalia.Checked[16] := FieldByName('CARCINOMAMETASTATICO')
        .AsBoolean;
      cbAnomalia.Checked[17] := FieldByName('CEMENTOBLASTOMA').AsBoolean;
      cbAnomalia.Checked[18] := FieldByName('CISTOERUPCAO').AsBoolean;
      cbAnomalia.Checked[19] := FieldByName('CISTORETENCAO').AsBoolean;
      cbAnomalia.Checked[20] := FieldByName('CISTOSTAFNE').AsBoolean;
      cbAnomalia.Checked[21] := FieldByName('CISTODENTIGERO').AsBoolean;
      cbAnomalia.Checked[22] := FieldByName('CISTODERMOIDE').AsBoolean;
      cbAnomalia.Checked[23] := FieldByName('CISTOCONDUTO').AsBoolean;
      cbAnomalia.Checked[24] := FieldByName('CISTOMANDIBULAR').AsBoolean;
      cbAnomalia.Checked[25] := FieldByName('CISTONASOALVEOLAR').AsBoolean;
      cbAnomalia.Checked[26] := FieldByName('CISTOOSSEOANEURISMATICO')
        .AsBoolean;
      cbAnomalia.Checked[27] := FieldByName('CISTOOSSEOSIMPLES').AsBoolean;
      cbAnomalia.Checked[28] := FieldByName('CISTOOSSEOTRAUMATICO')
        .AsBoolean;
      cbAnomalia.Checked[29] := FieldByName('CISTOPALATINOMEDIANO')
        .AsBoolean;
      cbAnomalia.Checked[30] := FieldByName('CISTOPERIODONTALLATERAL')
        .AsBoolean;
      cbAnomalia.Checked[31] := FieldByName('CISTORADICULAR').AsBoolean;
      cbAnomalia.Checked[32] := FieldByName('CISTORESIDUAL').AsBoolean;
      cbAnomalia.Checked[33] := FieldByName('CONCUSSAO').AsBoolean;
      cbAnomalia.Checked[34] := FieldByName('CONDROMA').AsBoolean;
      cbAnomalia.Checked[35] := FieldByName('CONDROSSARCOMA').AsBoolean;
      cbAnomalia.Checked[36] := FieldByName('DENSINDENTE').AsBoolean;
      cbAnomalia.Checked[37] := FieldByName('DENTESSUPRANUMERARIO')
        .AsBoolean;
      cbAnomalia.Checked[38] := FieldByName('DENTICAOPREDECIDUA').AsBoolean;
      cbAnomalia.Checked[39] := FieldByName('DENTINOGENESEIMPERFEITA')
        .AsBoolean;
      cbAnomalia.Checked[40] := FieldByName('DESTRUICAOOSSEA').AsBoolean;
      cbAnomalia.Checked[41] := FieldByName('DISJUNCAOCRANIOFACIAL')
        .AsBoolean;
      cbAnomalia.Checked[42] := FieldByName('DISPLASIACEMENTARIA').AsBoolean;
      cbAnomalia.Checked[43] := FieldByName('DISPLASIACLEIDOCRANIAL')
        .AsBoolean;
      cbAnomalia.Checked[44] := FieldByName('DISPLASIACLEIDOCRANIANA')
        .AsBoolean;
      cbAnomalia.Checked[45] := FieldByName('DISPLASIAECTODERMICA')
        .AsBoolean;
      cbAnomalia.Checked[46] := FieldByName('DISPLASIAFIBROSA').AsBoolean;
      cbAnomalia.Checked[47] := FieldByName('DISPLASIAOSSEAFLORIDA')
        .AsBoolean;
      cbAnomalia.Checked[48] := FieldByName('ENFERMIDADEDEPAGET').AsBoolean;
      cbAnomalia.Checked[49] := FieldByName('FIBROMAAMELOBLASTICO')
        .AsBoolean;
      cbAnomalia.Checked[50] := FieldByName('FIBROSSARCOMA').AsBoolean;
      cbAnomalia.Checked[51] := FieldByName('FRATURADECORPO').AsBoolean;
      cbAnomalia.Checked[52] := FieldByName('FRATURASCORONARIAS').AsBoolean;
      cbAnomalia.Checked[53] := FieldByName('FRATURASCORONORADICULARES')
        .AsBoolean;
      cbAnomalia.Checked[54] := FieldByName('FRATURASCONEILO').AsBoolean;
      cbAnomalia.Checked[55] := FieldByName('FRATURASDENTECRANIOFACIAIS')
        .AsBoolean;
      cbAnomalia.Checked[56] := FieldByName('FRATURASDOREBORDO').AsBoolean;
      cbAnomalia.Checked[57] := FieldByName('FRATURASLEFORT1').AsBoolean;
      cbAnomalia.Checked[58] := FieldByName('FRATURASLEFORT2').AsBoolean;
      cbAnomalia.Checked[59] := FieldByName('FRATURASRADICULARES').AsBoolean;
      cbAnomalia.Checked[60] := FieldByName('FRATURASRADICULARESVERTICAIS')
        .AsBoolean;
      cbAnomalia.Checked[61] := FieldByName('FRATURASZIGOMATICAS').AsBoolean;
      cbAnomalia.Checked[62] := FieldByName('FUSAO').AsBoolean;
      cbAnomalia.Checked[63] := FieldByName('GEMINACAO').AsBoolean;
      cbAnomalia.Checked[64] := FieldByName('FRANULOMACENTRAL').AsBoolean;
      cbAnomalia.Checked[65] := FieldByName('GRANULOMAEOSINOFILO').AsBoolean;
      cbAnomalia.Checked[66] := FieldByName('GRANULOMAPERIAPICAL').AsBoolean;
      cbAnomalia.Checked[67] := FieldByName('HEMANGIOMACENTRAL').AsBoolean;
      cbAnomalia.Checked[68] := FieldByName('HIPEROSTOSECORTICAL').AsBoolean;
      cbAnomalia.Checked[69] := FieldByName('LEUCEMIA').AsBoolean;
      cbAnomalia.Checked[70] := FieldByName('LINFOMA').AsBoolean;
      cbAnomalia.Checked[71] := FieldByName('LUXACAO').AsBoolean;
      cbAnomalia.Checked[72] := FieldByName('MACRODONTIA').AsBoolean;
      cbAnomalia.Checked[73] := FieldByName('MELANOMA').AsBoolean;
      cbAnomalia.Checked[74] := FieldByName('MICRODONTIA').AsBoolean;
      cbAnomalia.Checked[75] := FieldByName('MIELOMA').AsBoolean;
      cbAnomalia.Checked[76] := FieldByName('MIXOMA').AsBoolean;
      cbAnomalia.Checked[77] := FieldByName('NEURILENOMA').AsBoolean;
      cbAnomalia.Checked[78] := FieldByName('NEURINOMA').AsBoolean;
      cbAnomalia.Checked[79] := FieldByName('NEUROFIBROMA').AsBoolean;
      cbAnomalia.Checked[80] := FieldByName('ODONTOMA').AsBoolean;
      cbAnomalia.Checked[81] := FieldByName('OSTEOBLASTOMA').AsBoolean;
      cbAnomalia.Checked[82] := FieldByName('OSTEOMA').AsBoolean;
      cbAnomalia.Checked[83] := FieldByName('OSTEOMAOSTEIDE').AsBoolean;
      cbAnomalia.Checked[84] := FieldByName('OSTEOMIELITEDEGARRE').AsBoolean;
      cbAnomalia.Checked[85] := FieldByName('OSTEOMIELITEESCLEOSANTE')
        .AsBoolean;
      cbAnomalia.Checked[86] := FieldByName('ESTEOMIELITEESCLEOSANTEDIFUSA')
        .AsBoolean;
      cbAnomalia.Checked[87] := FieldByName('ESTEOMIELITESUPURATIVAAGUDA')
        .AsBoolean;
      cbAnomalia.Checked[88] := FieldByName('ESTEOMIELITESUPURATIVACRONICA')
        .AsBoolean;
      cbAnomalia.Checked[89] := FieldByName('OSTEOPETROSE').AsBoolean;
      cbAnomalia.Checked[90] := FieldByName('OSTEOSSARCOMA').AsBoolean;
      cbAnomalia.Checked[91] := FieldByName('PEDRASPULPARES').AsBoolean;
      cbAnomalia.Checked[92] := FieldByName('PERIDONTITEADULTO').AsBoolean;
      cbAnomalia.Checked[93] := FieldByName('PERIODONTITEJUVENIL').AsBoolean;
      cbAnomalia.Checked[94] := FieldByName('QUERATOCISTO').AsBoolean;
      cbAnomalia.Checked[95] := FieldByName('QUERUBISMO').AsBoolean;
      cbAnomalia.Checked[96] := FieldByName('RAIZSUPRANUMERARIA').AsBoolean;
      cbAnomalia.Checked[97] := FieldByName('REABSORCAOEXTERNA').AsBoolean;
      cbAnomalia.Checked[98] := FieldByName('REABSORCAOINTERNA').AsBoolean;
      cbAnomalia.Checked[99] := FieldByName('SARCOMA').AsBoolean;
      cbAnomalia.Checked[100] := FieldByName('SINDROMEDENERVOS').AsBoolean;
      cbAnomalia.Checked[101] := FieldByName('TAURODONTISMO').AsBoolean;
      cbAnomalia.Checked[102] := FieldByName('TRANSPOSICAO').AsBoolean;
      cbAnomalia.Checked[103] := FieldByName('TUMORADENOMATOIDE').AsBoolean;
      cbAnomalia.Checked[104] := FieldByName('TUMOREPITELIAL').AsBoolean;
      cbAnomalia.Checked[105] := FieldByName('TUMORESCAMOSO').AsBoolean;
      cbAnomalia.Checked[106] := FieldByName('TUMORESMALIGNOSDASGLANDULAS')
        .AsBoolean;
    End
  Else
    Begin
      bEditar := False;
    End;
  End;
end;

procedure TfrmAnotacaoDente.FormActivate(Sender: TObject);
begin
  inherited;
  Panel1.Caption := 'Anota��es - Dente: ' + sDente;

end;

procedure TfrmAnotacaoDente.VerificaDeletar;
var
  i: Integer;
begin
  bDeletar := True;

  for i := 0 to cbAnomalia.Count - 1 do
  Begin
    if cbAnomalia.Checked[i] then
    Begin
      bDeletar := False;
    End;
  End;

  if Trim(mmoObs.Lines.Text) <> '' then
  Begin
    bDeletar := False;
  End;
end;

end.
