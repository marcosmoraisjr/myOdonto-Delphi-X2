unit Funcoes;

interface

uses Windows, SysUtils, Forms, DB, DBCtrls, Dialogs, DbClient, Classes,
  IniFiles, DBGrids, Grids, SqlExpr, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdMessage, IdAttachmentFile,  WinSock, WinInet, StdCtrls, Messages, Variants, Graphics, Controls, TypInfo,
  Data.Win.ADODB, UDM, Registry, ShellApi, Vcl.Menus, Mensagem, CheckLst, IdHTTP;

type
  TTypeLocalizar = (fsInteger, fsString);

  TpCfgAcessoSistema = Record
    Base, Servidor, Usuario, Senha: string;
    bMostrar: Boolean;
  end;
  TpCfgGeral = Record
    ValidaCPF,
    ImpCabReceituario ,
    ImpCabAtestado : Boolean;
    ViasRecibo : Integer;

    //Email
    ESMTP,
    EEmail,
    EHoraDeEnvio,
    ESenha : String;
    ERequerAutenticacao,
    EConexaoSSL,
    EPacienteAgendamento,
    EPacienteFilaEncaixe,
    EPacienteListaRetorno,
    ELembreteConsulta,
    EEnviaAgenda : Boolean;
    EDiasAntesEnvio,
    EPorta : Integer;

    //SMS
    SPacienteAgendamento,
    SPacienteFilaEncaixe,
    SPacienteListaRetorno,
    SLembreteConsulta : Boolean;
    SDiasAntesEnvio,
    QTDESMS : Integer;
    SMensagem : String;
  End;

  TpCaixa = Record
    IDCaixa,
    IDOperador,
    Numero : Integer;
    DataAbertura ,
    DataFechamento ,
    DataCaixa : TDateTime;
    Geral,
    Aberto : Boolean;
    Observacoes : String;
    SaldoInicial : Double;
  End;

  TpCfgEmpresa = Record
    ID,
    Filial ,
    CODIBGE,
    IDCidade : Integer;
    Nome,
    RazaoSocial,
    Endereco,
    Numero,
    Bairro,
    CEP,
    Cidade,
    UF,
    Telefone,
    Fax,
    Contato,
    CNPJ,
    IE,
    Email : String;
  end;

  TpCfgOperador = Record
    ID : Integer;
    Nome : String;

    //Paciente
    ListaPacienteV,
    ListaPacienteC,
    ListaPacienteE,
    AnamneseV,
    AnamneseC,
    AnamneseE,
    ExameOralV,
    ExameOralC,
    ExameOralE,
    PlanoTratamentoV,
    PlanoTratamentoC,
    PlanoTratamentoE,
    FotoPacienteV,
    FotoPacienteC,
    FotoPacienteE : Boolean;

    //Cadastros
    OperadorSistemaV,
    OperadorSistemaC,
    OperadorSIstemaE,
    ProcedimentosV,
    ProcedimentosC,
    ProcedimentosE,
    CidadesV,
    CidadesC,
    CidadesE,
    ConveniosV,
    COnveniosC,
    ConveniosE,
    DentistasV,
    DentistasC,
    DentistasE,
    AgendaV,
    AgendaC,
    AgendaE,
    EncaixeV,
    EncaixeC,
    EncaixeE,
    RetornoV,
    RetornoC,
    RetornoE,
    FornecedorV,
    FornecedorC,
    FornecedorE,
    BancoV,
    BancoC,
    BancoE,
    DocPersonalizadoV,
    DocPersonalizadoC,
    DocPersonalizadoE,
    EmiDocPersonalizadoV,
    EmiDocPersonalizadoC,
    EmiDocPersonalizadoE,
    ReceituarioV,
    ReceituarioC,
    ReceituarioE,
    AtestadosV,
    AtestadosC,
    AtestadosE,
    TermosV,
    TermosC,
    TermosE ,

    //Financeiro
    CaixaV,
    CaixaA,
    CaixaF,
    TitulosPagarV,
    TitulosPagarC,
    TitulosPagarE,
    TitulosPagarD,
    TitulosPagarB,
    TitulosPagarEstornar,
    TitulosPagarP,
    TitulosReceberPV,
    TitulosReceberPC,
    TitulosReceberPE,
    TitulosReceberPD,
    TitulosReceberPB,
    TitulosReceberPEstornar,
    TitulosReceberPP,
    TitulosReceberCV,
    TitulosReceberCC,
    TitulosReceberCE,
    TitulosReceberCD,
    TitulosReceberCB,
    TitulosReceberCEstornar,
    TitulosReceberCP,
    ChequesRecebidosV,
    ChequesRecebidosE,
    ChequesRecebidosC,
    LancamentoCaixa,
    ConfLancCaixa,
    ConfLancBanco,
    ReforcoCaixa,
    SaqueValores,
    RelCaixaGeral,
    TransfSaldos,
    NotificacaoFinanceira : Boolean;
  End;

  TpCfgAgenda = Record
    Intervalo, Atendido, Confirmado, NaEspera, Encaixe, Cancelado, HorarioDe,
      HorarioAte: string;
  End;
Function DataIdade(DataNascimento : String) : Integer;
Procedure DescontaSMS(Qtde : Integer);
Procedure EnviaSMSAgenda(IDAgenda : Integer);
Function EnviaLembretesSMS : Boolean;
Function EnviarAgendaEmail : Boolean;
function EnviarEmail(aListaEmail, aAssunto, aCorpo: String): Boolean;
Function ConexoesAtivasSQL : Integer;
Procedure CarregaAcessoSistema;
Procedure CarregaCFGAgenda;
Procedure CarregaCFGEmpresa(IDEmpresa : Integer);
Procedure CarregaCFGGeral;
Procedure CarregaDadosCaixa(IDCaixa : Integer);
Procedure CarregaOperador(ID : Integer);
procedure Mensagem(strTexto: string);
function Confirma(strTexto: string): Integer;
function MostraData(dtData: TDateTime): string;
Function StrZeros(Texto: String; Qtde: Integer): String;
procedure PontoDecimal(var Key: char);
function VerificaCpf(fCPF: String): Boolean;
function VerificaCNPJ(fCNPJ: String): Boolean;
function ChecaEstado(Dado: string): Boolean;
function ValiData(Data: string): Boolean;
function Empty(inString: string): Boolean;
function DataExtenso(Data: TDateTime): string;
function DiaSemana(Data: TDateTime): String;
function DifDias(DataVenc: TDateTime; DataAtual: TDateTime): string;
function DifHora(Inicio, Fim: string): string;
function MapeaRede(Letra, Path, provedor: pchar): string;
function NetMapPrinter(Local, Remoto: string): Boolean;
function SystemDateTime(tDate: TDateTime; tTime: TDateTime): Boolean;
procedure DesligaWindows(acao: cardinal);
function CampoBranco(DtSrc: TDataSet): Boolean;
function Runprocess(Filename: string; Showcmd: Dword; Wait: Boolean;
  Procid: Pdword): Longword;
procedure FilterCDS(aCds: TClientDataSet; aType: TTypeLocalizar;
  aBusca: string);
procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
procedure RefreshCDS(aDataSet: TClientDataSet);
function NomeComputador: string;
function GetIP: string; // --> Declare a Winsock na clausula uses da unit
function DetectarInternet: Boolean;
function GetVersaoArq: string;
procedure RoundDecimal(var AValue: double; const ADecimal: Integer);
function Decrypt(const S: ansistring; Key: word): ansistring;
function Encrypt(const S: ansistring; Key: word): ansistring;
function Gerapercentual(valor: real; Percent: real): real;
Function Alltrim(cStr: String): String;
Function VerifyDate(text: TCaption): Boolean;
function Getcombo(dbCb: TDBComboBox): String;
function LerIni(AArquivo, ASessao, ASubSessao: String): String;
procedure SalvarIni(AArquivo, ASessao, ASubSessao, AConteudo: String);
procedure GridOrdem(fCds: TDataSource; Grid: TDbGrid; Column: TColumn);
procedure abretabela(Ds: TDataSource);
procedure fechatabela(Ds: TDataSource);
procedure Pesquisa(cbxField: TComboBox; Ds: TDataSource; Field, Value: string);
procedure GridZebrado(Ds: TDataSource; dbgrid: TDbGrid;
  cor1, cor2, corfonte, corselecao: TColor; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
procedure getcampos(Ds: TDataSource; campo: TComboBox);
procedure Grava_Dados(fDataAux: array of TDataSet);
procedure CancelRevertUpdates(DataSet: TDataSet);
procedure CancelUpdates(DataSet: TDataSet);
function CheckData(Sender: TField; text: String): Boolean;
procedure TabEnter(auxForm: TForm; var Key: char);
Function SerialNum(FDrive: String): String;
function ZeroEsquerda(fTermo: String; fQuant: Integer): String;
function Crypt(Action, Src: String): String;
function RemoveVirgula(Edite: String): double;
Procedure DeletaLixos;
function VerificaProximaReferencia: Integer;
function IntBol(Numero : Integer) : Boolean;
Function BolInt(Verdadeiro : Boolean) : Integer;
Function NomeDente(Dente : String) : String;
Function PastaArquivo : String;
Procedure VersoesSistema;
Function VersaoWindows : String;
Function RetornaIDConvenioDoPaciente(IDPaciente : Integer) : Integer;
Procedure AbrePortaFirewall;
function valorPorExtenso(vlr: real): string;
Function RetornaCombinacaoFace(CheckList : TCheckListBox) : String;
Function RetornaResultadoFace(Lista : TCheckListBox; sCombinacao : String) : TCheckListBox;
Procedure MontaHTMLEmail(Tipo : Integer);
// Gera Categoria e Procedimento das categorias
Procedure GeraCategoriaProcedimentos(IDConvenio : Integer);
Procedure GeraAvaliacaoTecnica;
Procedure GeraRadiologia;
Procedure GeraExamesLaboratorios;
Procedure GeraPrevencao;
Procedure GeraOdontopediatria;
Procedure GeraDentistica;
Procedure GeraEndodontia;
Procedure GeraPeriodontia;
Procedure GeraProtese;
Procedure GeraCirurgia;
Procedure GeraOrtodontia;
Procedure GeraImplantodontia;
//Final das fun��es de criar procedimentos

var
  CFGAcesso: TpCfgAcessoSistema;
  CFGAgenda: TpCfgAgenda;
  CFGGeral: TpCfgGeral;
  Operador: TpCfgOperador;
  Empresa : TpCfgEmpresa;
  Caixa : TpCaixa;
  dDataExe : TDateTime;
  dDataDLL : TDateTime;
  mmoHTML : TMemo;

  sLoginSMS,
  sSenhaSMS : String;

implementation

uses ComCtrls;

const
  MSG_OK = 'Informa��o cadastrada com sucesso!';
  MSG_PERMISSOES = 'Voc� n�o tem permiss�o para executar essa a��o';
  MSG_CAMPO_OBR = 'Campo obrigat�rio';
  MSG_ERRO = 'Ocorreu um erro!';
  C1 = 52845;
  C2 = 22719;
  my_key = 33189;

  // Rotina para apresentar uma caixa de mensagem.

procedure Mensagem(strTexto: string);
begin
  Application.MessageBox(pchar(strTexto), 'Mensagem',
    mb_OK + mb_IconInformation);
end;

// Fun��o para trocar , por pontos.

Procedure VersoesSistema;
var
  Dados : TSearchRec;
  sAux  : string;
Begin
  sAux := Application.ExeName;

  FindFirst(sAux,faAnyFile, Dados);
  dDataExe := FileDateToDateTime(Dados.Time);

  Delete(sAux,Length(sAux)-3,4);
{  sAux := sAux + '.DLL';
  FindFirst(sAux,faAnyFile, Dados);
  dDataDLL := FileDateToDateTime(Dados.Time)}
End;

Procedure MontaHTMLEmail(Tipo : Integer);
begin

  mmoHTML.Lines.Clear;

  case Tipo of

  0: Begin  // Agenda de Email Dentista

  End;



  end;
end;

Function RetornaIDConvenioDoPaciente(IDPaciente : Integer) : Integer;
Begin
  With DM.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID_CONVENIO As ID FROM PACIENTE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := IDPaciente;
      Open;

      Result := FieldByName('ID').AsInteger;
    End;
End;

procedure TiraVirgula(sVirgula, sTexto: string);
begin
  sVirgula := StringReplace(sTexto, '.', '', [rfReplaceAll]);
end;

// Fun��o para pedir confirma��o de uma opera��o.
function Confirma(strTexto: string): Integer;
begin
  Result := Application.MessageBox(pchar(strTexto), 'Confirma��o',
    mb_YesNo + mb_DefButton2 + mb_IconQuestion);
end;

Function VersaoWindows: String;
var
  VersionInfo : TOSVersionInfo;
Begin
  VersionInfo.dwOSVersionInfoSize := SizeOf(VersionInfo);
  GetVersionEx(VersionInfo);
  Result := '';

  With VersionInfo do
    Begin
        case dwPlatformId of
        1:
          case dwMinorVersion of
            0 : Result := 'Windows 95';
            10: Result := 'Windows 98';
            90: Result := 'Windows Me';
          end;
        2:
          case dwMajorVersion of
            3: Result := 'Windows NT 3.51';
            4: Result := 'Windows NT 4.0';
            5:
              case dwMinorVersion of
                0: Result := 'Windows 2000';
                1: Result := 'Windows XP';
              end;
            6:
              Case dwMinorVersion of
                0: Result := 'Windows Vista';
                1: Result := 'Windows 7';
                2: Result := 'Windows 8';
              End;
          end;
        end;
    End;
End;

Function RetornaCombinacaoFace(CheckList : TCheckListBox) : String;
var
  sCombinacao : String;
begin

  if Checklist.Checked[0] then
    Begin
      sCombinacao := 'O';
    End;
  if Checklist.Checked[1] then
    Begin
      sCombinacao := sCombinacao + 'L';
    End;
  if Checklist.Checked[2] then
    Begin
      sCombinacao := sCombinacao + 'M';
    End;
  if Checklist.Checked[3] then
    Begin
      sCombinacao := sCombinacao + 'V';
    End;
  if Checklist.Checked[4] then
    Begin
      sCombinacao := sCombinacao + 'D';
    End;
  if Checklist.Checked[5] then
    Begin
      sCombinacao := sCombinacao + 'I';
    End;
  if Checklist.Checked[6] then
    Begin
      sCombinacao := sCombinacao + 'P';
    End;

  if sCombinacao = '' then
    Begin
      sCombinacao := '<Nenhuma>';
    End;

  Result := sCombinacao;
end;

Function RetornaResultadoFace(Lista : TCheckListBox; sCombinacao : String) : TCheckListBox;
Begin
  if Pos('O', sCombinacao) > 0 then Lista.Checked[0] := True
  Else Lista.Checked[0] := False;
  if Pos('L', sCombinacao) > 0 then Lista.Checked[1] := True
  Else Lista.Checked[1] := False;
  if Pos('M', sCombinacao) > 0 then Lista.Checked[2] := True
  Else Lista.Checked[2] := False;
  if Pos('V', sCombinacao) > 0 then Lista.Checked[3] := True
  Else Lista.Checked[3] := False;
  if Pos('D', sCombinacao) > 0 then Lista.Checked[4] := True
  Else Lista.Checked[4] := False;
  if Pos('I', sCombinacao) > 0 then Lista.Checked[5] := True
  Else Lista.Checked[5] := False;
  if Pos('P', sCombinacao) > 0 then Lista.Checked[6] := True
  Else Lista.Checked[6] := False;

  Result := Lista;
end;

function Runprocess(Filename: string; Showcmd: Dword; Wait: Boolean;
  Procid: Pdword): Longword;
var
  Startupinfo: Tstartupinfo;
  Processinfo: Tprocessinformation;
begin
  Fillchar(Startupinfo, Sizeof(Startupinfo), #0);
  Startupinfo.Cb := Sizeof(Startupinfo);
  Startupinfo.Dwflags := Startf_useshowwindow or Startf_forceonfeedback;
  Startupinfo.Wshowwindow := Showcmd;
  if not Createprocess(nil, @Filename[1], nil, nil, False, Create_new_console or
    Normal_priority_class, nil, nil, Startupinfo, Processinfo) then
    Result := Wait_failed
  else
  begin
    if Wait = False then
    begin
      if Procid <> nil then
        Procid^ := Processinfo.Dwprocessid;
      Result := Wait_failed;
      Exit;
    end;
    Waitforsingleobject(Processinfo.Hprocess, Infinite);
    Getexitcodeprocess(Processinfo.Hprocess, Result);
  end;
  if Processinfo.Hprocess <> 0 then
    Closehandle(Processinfo.Hprocess);
  if Processinfo.Hthread <> 0 then
    Closehandle(Processinfo.Hthread);
end;

// Fun��o para apresenta��o de uma data no formato 'Dia da semanada - Dia do m�s/M�s/Ano'.
function MostraData(dtData: TDateTime): string;
var
  intDiaSemana: Integer;
  strDiaSemana: string;
begin
  intDiaSemana := DayOfWeek(dtData);
  case intDiaSemana of
    1:
      begin
        strDiaSemana := 'Domingo - ';
      end;
    2:
      begin
        strDiaSemana := 'Segunda-feira - ';
      end;
    3:
      begin
        strDiaSemana := 'Ter�a-feira - ';
      end;
    4:
      begin
        strDiaSemana := 'Quarta-feira - ';
      end;
    5:
      begin
        strDiaSemana := 'Quinta-feira - ';
      end;
    6:
      begin
        strDiaSemana := 'Sexta-feira - ';
      end;
    7:
      begin
        strDiaSemana := 'S�bado - ';
      end;
  end;
  Result := strDiaSemana + DateToStr(dtData);
end;

// Funcao para converte valor numerico inteiro em string com zeros a esquerda
// mode de usar Edit1.Text := strzeros(edit1.text, 6);
Function StrZeros(Texto: String; Qtde: Integer): String;
var
  i, Tam: Integer;
  Aux: String;
begin
  Aux := '';
  Tam := Length(Texto);
  for i := Tam to (Qtde - 1) do
    Aux := Aux + '0';
  StrZeros := Aux + Texto;
end;

// Converte o ponto decimal em virgula
procedure PontoDecimal(var Key: char);
begin
  if (Key <> Chr(8)) then
  begin
    if (Key = '.') then
    begin
      Key := ',';
    end
    else if ((Ord(Key) <> Ord(',')) and ((Ord(Key) < Ord('0')) or
      (Ord(Key) > Ord('9')))) then
    begin
      Key := Chr(0);
    end;
  end;
end;

Procedure DescontaSMS(Qtde : Integer);
var
  iQtde : Integer;
Begin
  With DM.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT SQTDESMS FROM CFGGERAL');
      SQL.Add('WHERE ID_CFGGERAL = 1');
      Open;

      iQtde := FieldByName('SQTDESMS').AsInteger;

      iQtde := iQtde - Qtde;
      CFGGeral.QTDESMS := iQtde;

      Edit;
      FieldByName('SQTDESMS').AsInteger := iQtde;
      Post;
    End;
End;

// Checa se o Simbolo da UF � Valido}
function ChecaEstado(Dado: string): Boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
  Posicao: Integer;
begin
  Result := true;
  if Dado <> '' then
  begin
    Posicao := Pos(UpperCase(Dado), Estados);
    if (Posicao = 0) or ((Posicao mod 2) = 0) then
    begin
      Result := False;
    end;
  end;
end;

function ValiData(Data: string): Boolean;
{ Testa se uma data � v�lida ou n�o }
begin
  try

    StrToDate(Data);
    Result := true;
  except

    Result := False;
    ShowMessage('Data Inv�lida!');

  end;
end;

function Empty(inString: string): Boolean;
{ Testa se a variavel est� vazia ou n�o }
var
  index: byte;
begin
  index := 1;
  Empty := true;
  while (index <= Length(inString)) and (index <> 0) do
  begin
    if inString[index] = ' ' then
    begin
      inc(index);
    end
    else
    begin
      Empty := False;
      index := 0;
    end;
  end;
end;

function DataExtenso(Data: TDateTime): string;
{ Para exibir uma data por extenso no Delphi, coloque a seguinte rotina }
var
  NoDia: Integer;
  // Now: TdateTime;
  DiaDaSemana: array [1 .. 7] of string;
  Meses: array [1 .. 12] of string;
  Dia, Mes, Ano: word;
begin
  { Dias da Semana }
  DiaDaSemana[1] := 'Domingo';
  DiaDaSemana[2] := 'Segunda-feira';
  DiaDaSemana[3] := 'Ter�a-feira';
  DiaDaSemana[4] := 'Quarta-feira';
  DiaDaSemana[5] := 'Quinta-feira';
  DiaDaSemana[6] := 'Sexta-feira';
  DiaDaSemana[7] := 'S�bado';
  { Meses do ano }
  Meses[1] := 'Janeiro';
  Meses[2] := 'Fevereiro';
  Meses[3] := 'Mar�o';
  Meses[4] := 'Abril';
  Meses[5] := 'Maio';
  Meses[6] := 'Junho';
  Meses[7] := 'Julho';
  Meses[8] := 'Agosto';
  Meses[9] := 'Setembro';
  Meses[10] := 'Outubro';
  Meses[11] := 'Novembro';
  Meses[12] := 'Dezembro';
  DecodeDate(Data, Ano, Mes, Dia);
  NoDia := DayOfWeek(Data);
  Result := DiaDaSemana[NoDia] + ', ' + IntToStr(Dia) + ' de ' + Meses[Mes] +
    ' de ' + IntToStr(Ano);
end;

function DiaSemana(Data: TDateTime): String;
{ Retorna o dia da semana em Extenso de uma determinada data }
const
  Dias: array [1 .. 7] of string[07] = ('Domingo', 'Segunda', 'Ter�a', 'Quarta',
    'Quinta', 'Sexta', 'Sabado');
begin
  Result := Dias[DayOfWeek(Data)];
end;

function DifDias(DataVenc: TDateTime; DataAtual: TDateTime): string;
{ Retorna a diferenca de dias entre duas datas }
var
  Data: TDateTime;
  Dia, Mes, Ano: word;
begin
  if DataAtual < DataVenc then
  begin
    Result := 'A data data atual n�o pode ser menor que a data inicial';
  end
  else
  begin
    Data := DataAtual - DataVenc;
    DecodeDate(Data, Ano, Mes, Dia);
    Result := FloatToStr(Data);
  end;
end;

function DifHora(Inicio, Fim: string): string;
{ Retorna a diferen�a entre duas horas }
var
  FIni, FFim: TDateTime;
begin
  FIni := StrTotime(Inicio);
  FFim := StrTotime(Fim);
  if (Inicio > Fim) then
  begin
    Result := TimeToStr((StrTotime('23:59:59') - FIni) + FFim);
  end
  else
  begin
    Result := TimeToStr(FFim - FIni);
  end;
end;

Function EnviarAgendaEmail : Boolean;
var
  AuthSSL: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  sAux : String;
  dDataInicio,
  dDataFim : TDateTime;
  i : Integer;
begin
  Result := False;
  IdSMTP := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host := CFGGeral.ESMTP;
    IdSMTP.Port := CFGGeral.EPorta;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username := CFGGeral.EEmail;
    IdSMTP.Password := CFGGeral.ESenha;

    if CFGGeral.EConexaoSSL then
    begin
      AuthSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      IdSMTP.IOHandler := AuthSSL;
      IdSMTP.UseTLS := utUseImplicitTLS;
      AuthSSL.SSLOptions.Method := sslvSSLv3;
      AuthSSL.SSLOptions.Mode := sslmClient;
    end;

    if CFGGeral.ERequerAutenticacao then
      IdSMTP.AuthType := satDefault
    else
      IdSMTP.AuthType := satNone;
    try
      IdSMTP.Connect;

      With DM.qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT NOME, ID_MEDICO, EMAIL FROM MEDICOS');
          SQL.Add('WHERE ATIVO = 1');
          SQL.Add('Order By ID_MEDICO');
          Open;

          dDataInicio := Now + 1;
          sAux        := FormatDateTime('DD/MM/YYYY', dDataInicio);
          sAux        := sAux + ' 00:00:00';
          dDataInicio := StrToDateTime(sAux);
          dDataFim := Now + 1;
          sAux        := FormatDateTime('DD/MM/YYYY', dDataFim);
          sAux        := sAux + ' 23:59:59';
          dDataFim := StrToDateTime(sAux);
          if DiaSemana(Now) = 'Sexta' then i := 0 Else i := 2;

          for i := i to 2 do
          begin
            while Not Eof do
              Begin
                if FieldByName('EMAIL').AsString <> '' then
                  Begin
                    sAux := DiaSemana(dDataInicio);

                    if (sAux <> 'Sabado') and (sAux <> 'Domingo') then
                      Begin
                        sAux := sAux + '-Feira';
                      End;

                    sAux := sAux + ' ' + FormatDateTime('DD/MM/YYYY', dDataInicio);

                    IdMessage.Body.Clear;
                    IdMessage.Body.Add('<html><head><style type="text/css">.dia {font-weight: bold;');
                    IdMessage.Body.Add('color: #FF0000;font-size: medium;}.Dentista {font-weight: bold;color: #099;}</style> <body>');
                    IdMessage.Body.Add('<h2>Agenda do Dentista: <span class="Dentista">'+FieldByName('Nome').AsString+'</span></h2><table width="640" border="1" cellspacing="0"><tr>');
                    IdMessage.Body.Add('<td width="830" align="center" class="dia"><b>'+sAux+'</b></td></tr></table><table width="640" border="1" cellpadding="0" cellspacing="0"><tr>');
                    IdMessage.Body.Add('<td width="79"><strong>Horario</strong></td><td width="426"><strong>Paciente</strong></td><td width="113"><strong>Atendimento</strong></td></tr></table>');

                    With DM.qryAux2 do
                      Begin
                        Close;
                        SQL.Clear;
                        SQL.Add('SELECT AGENDA.ID_MEDICO, AGENDA.INICIO, AGENDA.ID_PACIENTE, PACIENTE.NOME AS Paciente, CONVENIOS.NOME AS Convenio');
                        SQL.Add('FROM AGENDA INNER JOIN PACIENTE ON AGENDA.ID_PACIENTE = PACIENTE.ID_PACIENTE');
                        SQL.Add('INNER JOIN CONVENIOS ON PACIENTE.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
                        SQL.Add('WHERE AGENDA.ID_MEDICO = :pID');
                        SQL.Add('AND AGENDA.INICIO BETWEEN :pIN AND :pFIM');
                        SQL.Add('Order By AGENDA.INICIO');
                        Parameters.ParamByName('pIN').Value := dDataInicio;
                        Parameters.ParamByName('pFIM').Value := dDataFim;
                        Parameters.ParamByName('pID').Value := DM.qryAux.FieldByName('ID_MEDICO').AsInteger;
                        Open;

                        First;

                        while Not Eof do
                          Begin
                            IdMessage.Body.Add('<table width="640" border="1" cellpadding="0" cellspacing="0"><tr>');
                            IdMessage.Body.Add('<td width="79">'+FormatDateTime('HH:MM:SS',FieldByName('INICIO').AsDateTime)+'</td>');
                            IdMessage.Body.Add('<td width="426">'+FieldByName('Paciente').AsString+'</td>');
                            IdMessage.Body.Add('<td width="113">'+FieldByName('Convenio').AsString+'</td> </tr></table>');
                            Next;
                          End;

                      End;
                    IdMessage.CharSet := 'utf8';
                  //  IdMessage.ContentTransferEncoding := meMIME;
                    IdMessage.ContentType := 'text/html';
                    IdMessage.Body.Add('<p><img src="http://static.wix.com/media/6871b2_497440d8763ff9f8c3230da0cf666374.png_srz_587_100_75_22_0.50_1.20_0.00_png_srz" width="641" height="60" /></p></body></html>');
                    IdMessage.From.Address := CFGGeral.EEmail;
                    IdMessage.Recipients.EMailAddresses := DM.qryAux.FieldByName('EMAIL').AsString;
                    IdMessage.Subject := 'Agenda de consultas do dia: '+ FormatDateTime('DD/MM/YYYY',dDataInicio);
                    IdMessage.MessageParts.Clear;
                    IdSMTP.Send(IdMessage);
                  End;

                  if DiaSemana(dDataInicio) = 'Sabado' then
                    Begin
                      dDataInicio := dDataInicio + 2;
                      dDataFim    := dDataFim +2;

                      sAux := DiaSemana(dDataInicio);

                      if (sAux <> 'Sabado') and (sAux <> 'Domingo') then
                        Begin
                          sAux := sAux + '-Feira';
                        End;

                      sAux := sAux + ' ' + FormatDateTime('DD/MM/YYYY', dDataInicio);

                      IdMessage.Body.Clear;
                      IdMessage.Body.Add('<html><head><style type="text/css">.dia {font-weight: bold;');
                      IdMessage.Body.Add('color: #FF0000;font-size: medium;}.Dentista {font-weight: bold;color: #099;}</style> <body>');
                      IdMessage.Body.Add('<h2>Agenda do Dentista: <span class="Dentista">'+FieldByName('Nome').AsString+'</span></h2><table width="640" border="1" cellspacing="0"><tr>');
                      IdMessage.Body.Add('<td width="830" align="center" class="dia"><b>'+sAux+'</b></td></tr></table><table width="640" border="1" cellpadding="0" cellspacing="0"><tr>');
                      IdMessage.Body.Add('<td width="79"><strong>Horario</strong></td><td width="426"><strong>Paciente</strong></td><td width="113"><strong>Atendimento</strong></td></tr></table>');

                      With DM.qryAux2 do
                        Begin
                          Close;
                          SQL.Clear;
                          SQL.Add('SELECT AGENDA.ID_MEDICO, AGENDA.INICIO, AGENDA.ID_PACIENTE, PACIENTE.NOME AS Paciente, CONVENIOS.NOME AS Convenio');
                          SQL.Add('FROM AGENDA INNER JOIN PACIENTE ON AGENDA.ID_PACIENTE = PACIENTE.ID_PACIENTE');
                          SQL.Add('INNER JOIN CONVENIOS ON PACIENTE.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
                          SQL.Add('WHERE AGENDA.ID_MEDICO = :pID');
                          SQL.Add('AND AGENDA.INICIO BETWEEN :pIN AND :pFIM');
                          SQL.Add('Order By AGENDA.INICIO');
                          Parameters.ParamByName('pIN').Value := dDataInicio;
                          Parameters.ParamByName('pFIM').Value := dDataFim;
                          Parameters.ParamByName('pID').Value := DM.qryAux.FieldByName('ID_MEDICO').AsInteger;
                          Open;

                          First;

                          while Not Eof do
                            Begin
                              IdMessage.Body.Add('<table width="640" border="1" cellpadding="0" cellspacing="0"><tr>');
                              IdMessage.Body.Add('<td width="79">'+FormatDateTime('HH:MM:SS',FieldByName('INICIO').AsDateTime)+'</td>');
                              IdMessage.Body.Add('<td width="426">'+FieldByName('Paciente').AsString+'</td>');
                              IdMessage.Body.Add('<td width="113">'+FieldByName('Convenio').AsString+'</td> </tr></table>');
                              Next;
                            End;

                        End;
                      IdMessage.CharSet := 'utf8';
                    //  IdMessage.ContentTransferEncoding := meMIME;
                      IdMessage.ContentType := 'text/html';
                      IdMessage.Body.Add('<p><img src="http://static.wix.com/media/6871b2_497440d8763ff9f8c3230da0cf666374.png_srz_587_100_75_22_0.50_1.20_0.00_png_srz" width="641" height="60" /></p></body></html>');
                      IdMessage.From.Address := CFGGeral.EEmail;
                      IdMessage.Recipients.EMailAddresses := DM.qryAux.FieldByName('EMAIL').AsString;
                      IdMessage.Subject := 'Agenda de consultas do dia: '+ FormatDateTime('DD/MM/YYYY',dDataInicio);
                      IdMessage.MessageParts.Clear;
                      IdSMTP.Send(IdMessage);
                    End
                  Else
                    Begin
                      dDataInicio := dDataInicio + 1;
                      dDataFim    := dDataFim +1;
                    End;

                Next;
              End;
          End;
        End;
    except
      on E: Exception do
      begin
        Exit;
      end;
    end;
  finally
    IdSMTP.Disconnect;
    FreeAndNil(IdSMTP);
    FreeAndNil(IdMessage);
    if AuthSSL <> nil then
      FreeAndNil(AuthSSL);
  end;
  Result := True;
end;

function EnviarEmail(aListaEmail, aAssunto, aCorpo: String): Boolean;
var
  AuthSSL: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
begin
  Result := False;
  IdSMTP := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host := CFGGeral.ESMTP;
    IdSMTP.Port := CFGGeral.EPorta;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username := CFGGeral.EEmail;
    IdSMTP.Password := CFGGeral.ESenha;

    if CFGGeral.EConexaoSSL then
    begin
      AuthSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      IdSMTP.IOHandler := AuthSSL;
      IdSMTP.UseTLS := utUseImplicitTLS;
      AuthSSL.SSLOptions.Method := sslvSSLv3;
      AuthSSL.SSLOptions.Mode := sslmClient;
    end;

    if CFGGeral.ERequerAutenticacao then
      IdSMTP.AuthType := satDefault
    else
      IdSMTP.AuthType := satNone;
    try
      IdSMTP.Connect;

      IdMessage.From.Address := CFGGeral.EEmail;
      IdMessage.Recipients.EMailAddresses := aListaEmail;
      IdMessage.Subject := aAssunto;
      IdMessage.MessageParts.Clear;

      //if Anexo <> '' then TIdAttachmentFile.Create(IdMessage.MessageParts, TFileName(anexo));
      IdSMTP.Send(IdMessage);
    except
      on E: Exception do
      begin
        Exit;
      end;
    end;
  finally
    IdSMTP.Disconnect;
    FreeAndNil(IdSMTP);
    FreeAndNil(IdMessage);
    if AuthSSL <> nil then
      FreeAndNil(AuthSSL);
  end;
  Result := True;
end;

function MapeaRede(Letra, Path, provedor: pchar): string;
// mapea um Drive via programa��o
// Local = Letra atribuida a unidade
// Path =  Caminho do mapeamento
// Provedor = Provedor da rede
var
  NRW: TNetResource;
begin
  with NRW do
  begin
    dwType := RESOURCETYPE_ANY;
    lpLocalName := Letra;
    lpRemoteName := Path;
    lpProvider := provedor;
  end;
  WNetAddConnection2(NRW, ' ', ' ', CONNECT_UPDATE_PROFILE);
  case GetLastError() of
    5:
      begin
        Result := 'Acesso Negado';
      end;
    66:
      begin
        Result := 'Tipo de dispositivo local ou recurso inv�lido';
      end;
    67:
      begin
        Result := 'Caminho n�o encontrado ou inv�lido';
      end;
    85:
      begin
        Result := 'Este mapeamento j� existe';
      end;
    86:
      begin
        Result := 'Senha n�o encontrada ou inv�lida';
      end;
    1200:
      begin
        Result := 'Letra atribu�da a unidade j� � reservada ou inv�lida';
      end;
    1202:
      begin
        Result := 'Um mapeamento com esta letra j� existe';
      end;
    1203:
      begin
        Result := 'Rede ou caminho n�o encontrado ou inv�lido';
      end;
    1204:
      begin
        Result := 'Provedor n�o encontrado ou inv�lido';
      end;
    1205:
      begin
        Result := 'N�o foi poss�vel abrir o perfil';
      end;
    1206:
      begin
        Result := 'Perfil do usu�rio n�o encontrado ou inv�lido';
      end;
    1208:
      begin
        Result := 'Ocorreu um Erro espec�fico na rede';
      end;
    170:
      begin
        Result := 'Rede congestionada';
      end;
    2138:
      begin
        Result := 'Rede n�o encontrada ou fora do ar';
      end
  else
    begin
      Result := 'Unidade mapeada com sucesso';
    end;
  end;
end;

function NetMapPrinter(Local, Remoto: string): Boolean;
{ redireciona a porta de impressao em tempo de execucao }
var
  NRW: TNetResource;
  // vLocal : PChar;
begin
  with NRW do
  begin
    dwType := RESOURCETYPE_PRINT;
    lpLocalName := pchar(Local);
    lpRemoteName := pchar(Remoto);
    lpProvider := '';
  end;
  Result := WNetAddConnection2(NRW, '', '', CONNECT_UPDATE_PROFILE) = 0;
end;

function SystemDateTime(tDate: TDateTime; tTime: TDateTime): Boolean;
{ Permite que voc� altere a data e a hora do sistema }
var
  tSetDate: TDateTime;
  vDateBias: variant;
  tSetTime: TDateTime;
  vTimeBias: variant;
  tTZI: TTimeZoneInformation;
  tST: TSystemTime;
begin
  GetTimeZoneInformation(tTZI);
  vDateBias := tTZI.Bias / 1440;
  tSetDate := tDate + vDateBias;
  vTimeBias := tTZI.Bias / 1440;
  tSetTime := tTime + vTimeBias;
  with tST do
  begin
    wYear := StrToInt(FormatDateTime('yyyy', tSetDate));
    wMonth := StrToInt(FormatDateTime('mm', tSetDate));
    wDay := StrToInt(FormatDateTime('dd', tSetDate));
    wHour := StrToInt(FormatDateTime('hh', tSetTime));
    wMinute := StrToInt(FormatDateTime('nn', tSetTime));
    wSecond := StrToInt(FormatDateTime('ss', tSetTime));
    wMilliseconds := 0;
  end;
  SystemDateTime := SetSystemTime(tST);
end;

procedure DesligaWindows(acao: cardinal);
// Chame-o assim, como nestes exemplos:

// DesligaWindows(EWX_SHUTDOWN); // desligar normal
// DesligaWindows(EWX_FORCE); //sair for�ado
// DesligaWindows(EWX_POWEROFF); //para fontes ATX
// DesligaWindwos(EWX_LOGOFF); //efetua logoff
// DesligaWindows(EWX_REBOOT); //reinicializa o computador
var
  TokenPriv: TTokenPrivileges;
  H: Dword;
  HToken: THandle;
begin

  { * para WIN 2000, XP e NT * }
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES, HToken);
    LookUpPrivilegeValue(nil, 'SeShutdownPrivilege',
      TokenPriv.Privileges[0].Luid);
    TokenPriv.PrivilegeCount := 1;
    TokenPriv.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
    H := 0;
    AdjustTokenPrivileges(HToken, False, TokenPriv, 0,
      PTokenPrivileges(nil)^, H);
    Closehandle(HToken);
  end;
  ExitWindowsEx(acao, 0);
end;

function CampoBranco(DtSrc: TDataSet): Boolean;
var
  i: Integer;
  { : verifica quais os campos que est�o em branco no cadastro }
begin
  Result := true; { : assume que est�o todos preenchidos }
  for i := 0 to DtSrc.FieldCount - 1 do
  begin
    if DtSrc.Fields[i].Required then
    begin
      if (DtSrc.Fields[i].IsNull) or (DtSrc.Fields[i].AsString = '') then
      begin
        MessageDlg('Preencha o campo " ' + DtSrc.Fields[i].DisplayLabel + '"',
          mtWarning, [mbOk], 0);
        Result := False;
        DtSrc.Fields[i].FocusControl;
        { : coloca o foco no controle }
        Break;
      end;
    end;
  end;
end;

procedure FilterCDS(aCds: TClientDataSet; aType: TTypeLocalizar;
  aBusca: string);
begin
  aCds.Close;
  case aType of
    fsInteger:
      begin
        aCds.Params[0].AsInteger := StrToInt(aBusca);
      end;
    fsString:
      begin
        aCds.Params[0].AsString := UpperCase('%' + aBusca + '%');
      end;
  end;
  aCds.Open;
end;

procedure AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
  Application.CreateForm(aClasseForm, aForm);
  try
    aForm.ShowModal;
  finally
    FreeAndNil(aForm);
  end;
end;

procedure RefreshCDS(aDataSet: TClientDataSet);
begin
  aDataSet.Close;
  aDataSet.Open;
end;

function NomeComputador: string;
var
  lpBuffer: pchar;
  nSize: Dword;
const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer, nSize);
  Result := string(lpBuffer);
  StrDispose(lpBuffer);
end;


Function ConexoesAtivasSQL : Integer;
var
  i : integer;
Begin

  i := 0;

  With DM.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SP_WHO2');
      Open;

      while Not Eof do
        Begin
          If FieldByName('ProgramName').AsString = 'Odontosis' then
            Begin
              if FieldByName('DBName').AsString = 'ODONTOSIS' then
                Begin
                  i := i + 1;
                End;
            End;
          Next;
        End;
        Close;
    End;

    Result := i;

End;

function GetIP: string; // --> Declare a Winsock na clausula uses da unit
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: ansistring;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PAnsiChar(Name), 255);
  SetLength(Name, StrLen(PAnsiChar(Name)));
  HostEnt := gethostbyname(PAnsiChar(Name));
  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d', [byte(h_addr^[0]), byte(h_addr^[1]),
      byte(h_addr^[2]), byte(h_addr^[3])]);
  end;
  WSACleanup;
end;

function DetectarInternet;
var
  Flags: Dword;
begin
  Result := InternetGetConnectedState(@Flags, 0);
end;

function GetVersaoArq: string;
// como usar  label1.Caption := 'Vers�o ' + GetVersaoArq;
var
  VerInfoSize: Dword;
  VerInfo: Pointer;
  VerValueSize: Dword;
  VerValue: PVSFixedFileInfo;
  Dummy: Dword;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(pchar(ParamStr(0)), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(pchar(ParamStr(0)), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
    with VerValue^ do
    begin
      Result := IntToStr(dwFileVersionMS shr 16);
      Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
      Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
      Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
    end;
    FreeMem(VerInfo, VerInfoSize);
  except
    on E: Exception do
    begin
      Result := 'Desconhecida';
      MessageDlg('Erro ao tentar capturar a vers�o do aplicativo!', mtError,
        [mbOk], 0);
    end;
  end;
end;

procedure RoundDecimal(var AValue: double; const ADecimal: Integer);
var
  strValue: string;
begin
  strValue := FloatToStrF(AValue, ffFixed, 18, ADecimal);
  AValue := StrToFloat(strValue);
end;

/// ///////ENCRIPTACAO///////////////////////////////////
function Decode(const S: ansistring): ansistring;
const
  Map: array [AnsiChar] of byte = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 62, 0, 0, 0, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 0, 0, 0,
    0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
    18, 19, 20, 21, 22, 23, 24, 25, 0, 0, 0, 0, 0, 0, 26, 27, 28, 29, 30, 31,
    32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
    51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0);
var
  i: longint;
begin
  case Length(S) of
    2:
      begin
        i := Map[S[1]] + (Map[S[2]] shl 6);
        SetLength(Result, 1);
        Move(i, Result[1], Length(Result))
      end;
    3:
      begin
        i := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12);
        SetLength(Result, 2);
        Move(i, Result[1], Length(Result))
      end;
    4:
      begin
        i := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12) +
          (Map[S[4]] shl 18);
        SetLength(Result, 3);
        Move(i, Result[1], Length(Result))
      end
  end
end;

function PreProcess(const S: ansistring): ansistring;
var
  SS: ansistring;
begin
  SS := S;
  Result := '';
  while SS <> '' do
  begin
    Result := Result + Decode(Copy(SS, 1, 4));
    Delete(SS, 1, 4)
  end
end;

function InternalDecrypt(const S: ansistring; Key: word): ansistring;
var
  i: word;
  Seed: word;
begin
  Result := S;
  Seed := Key;
  for i := 1 to Length(Result) do
  begin
    Result[i] := AnsiChar(byte(Result[i]) xor (Seed shr 8));
    Seed := (byte(S[i]) + Seed) * word(C1) + word(C2)
  end
end;

function Decrypt(const S: ansistring; Key: word): ansistring;
begin
  Result := InternalDecrypt(PreProcess(S), Key)
end;

function Encode(const S: ansistring): ansistring;
const
  Map: array [0 .. 63] of char = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' +
    'abcdefghijklmnopqrstuvwxyz0123456789+/';
var
  i: longint;
begin
  i := 0;
  Move(S[1], i, Length(S));
  case Length(S) of
    1:
      begin
        Result := ansistring(Map[i mod 64] + Map[(i shr 6) mod 64])
      end;
    2:
      begin
        Result := ansistring(Map[i mod 64] + Map[(i shr 6) mod 64] +
          Map[(i shr 12) mod 64])
      end;
    3:
      begin
        Result := ansistring(Map[i mod 64] + Map[(i shr 6) mod 64] +
          Map[(i shr 12) mod 64] + Map[(i shr 18) mod 64])
      end
  end
end;

Function DataIdade(DataNascimento : String) : Integer;
Begin
  try
    strtodate(datanascimento); //-- Verifica se a data � valida
  except
    messagedlg('Data de nascimento inv�lida!', MTERROR, [MBOK], 0); 
    abort;
  end;
  result := Trunc((Date - Strtodate(DataNascimento))/365.25);
End;

function PostProcess(const S: ansistring): ansistring;
var
  SS: ansistring;
begin
  SS := S;
  Result := '';
  while SS <> '' do
  begin
    Result := Result + Encode(Copy(SS, 1, 3));
    Delete(SS, 1, 3)
  end
end;

function InternalEncrypt(const S: ansistring; Key: word): ansistring;
var
  i: word;
  Seed: word;
begin
  Result := S;
  Seed := Key;
  for i := 1 to Length(Result) do
  begin
    Result[i] := AnsiChar(byte(Result[i]) xor (Seed shr 8));
    Seed := (byte(Result[i]) + Seed) * word(C1) + word(C2)
  end
end;

function Encrypt(const S: ansistring; Key: word): ansistring;
begin
  Result := PostProcess(InternalEncrypt(S, Key))
end;

/// ///////////////////////////////////////////////////////////////
///
///

function Gerapercentual(valor: real; Percent: real): real;
// Retorna a porcentagem de um valor
begin
  Percent := Percent / 100;
  try
    valor := valor * Percent;
  finally
    Result := valor;
  end;
end;

// modo de usar termometro
// var
// conta : integer ;
// begin
// conta := 100;
// termometro('mensagem sdsdsds sdsdsdsd sdsdsdsd',100,conta);
// conta := conta +1
// end;

procedure termometro(Mensagem: string; totalregistro: Integer;
  registroatual: Integer);
var
  amsgdialog: TForm;
  aprogressbar: tprogressbar;
  // atimer: ttimer; { uses extctrls }
begin
  amsgdialog := createmessagedialog(Mensagem, mtWarning, []);
  // amsgdialog := Tform.Create(self); //(mensagem, mtwarning, []);
  aprogressbar := tprogressbar.create(amsgdialog);
  with amsgdialog do
  begin
    try
      amsgdialog.caption := 'Sistema em Processamento';
      amsgdialog.height := 150;
      amsgdialog.position := poScreenCenter;
      amsgdialog.BorderIcons := [];
      with aprogressbar do
      begin
        name := 'progress';
        parent := amsgdialog;
        max := totalregistro;
        step := 1;
        top := 80;
        left := 8;
        position := registroatual;
        width := amsgdialog.clientwidth - 16;
        if aprogressbar.position < totalregistro then
        begin
          ShowModal
        end
        else
        begin
          MessageBox(0, 'Processamento Terminado !!!!!!!', 'Aten��o',
            mb_OK + mb_IconInformation);
          amsgdialog.Close;
        end;
      end;
    finally
      // atimer.ontimer := nil;
      free;
    end
  end;
end;

Function VerifyDate(text: TCaption): Boolean;
const
  aMes: Array [1 .. 12] of byte = (31, 28, 31, 30, 31, 30, 31, 31, 30,
    31, 30, 31);
var
  ok: Boolean;
  d, m, a: Integer;
  cD, cM, cA: String[4];
  sDate: String;
begin
  sDate := text;
  ok := Length(sDate) = 10;
  if ok then
  begin
    ok := (sDate[3] = '/') and (sDate[6] = '/');
    cD := Alltrim(Copy(sDate, 1, 2));
    cM := Alltrim(Copy(sDate, 4, 2));
    cA := Alltrim(Copy(sDate, 7, 4));
    if ok then
      ok := (Length(cD) = 2) and (Length(cM) = 2) and (Length(cA) = 4);
    if ok then
    begin
      d := StrToIntDef(cD, -1);
      m := StrToIntDef(cM, -1);
      a := StrToIntDef(cA, -1);
      ok := (m > 0) and (m < 13) and (d > 0) and (d < aMes[m] + 1);
      if ok and (a div 4 = 0) then
      begin
        ok := d < 30;
      end;
    End;
  end;
  VerifyDate := ok;
end;

// Fun��o allTrim para remover os espa�os em branco de uma string:

Function Alltrim(cStr: String): String;
var
  cCopy: String;
  i: Integer;
begin
  cCopy := '';
  for i := 1 to Length(cStr) do
  begin
    if cStr[i] <> ' ' then
      cCopy := cCopy + cStr[i];
  end;
  Result := cCopy;
end;

function Getcombo(dbCb: TDBComboBox): String;
var
  iSep: Integer;
begin
  iSep := Pos('-', dbCb.text);
  if iSep > 0 then // se achou o separador -
    Result := Copy(dbCb.text, 1, iSep - 2)
  else
    Result := dbCb.text;
  // se n�o tiver o separador retorna o mesmo texto que foi passado

  // String = Getcombo(dbcombobox1.Items[dbcombobox1.ItemIndex]);
  // retornaria o M
  // se o item selecionado for "EP - Empregado" retornaria EP
end;

function LerIni(AArquivo, ASessao, ASubSessao: String): String;
var
  loIni: TInifile;
begin
  loIni := TInifile.create(AArquivo);
  try
    Result := loIni.ReadString(ASessao, ASubSessao, '');
  finally
    FreeAndNil(loIni);
  end;
end;

procedure SalvarIni(AArquivo, ASessao, ASubSessao, AConteudo: String);
var
  loIni: TInifile;
begin
  loIni := TInifile.create(AArquivo);
  try
    loIni.WriteString(ASessao, ASubSessao, AConteudo);
  finally
    FreeAndNil(loIni);
  end;
end;

Procedure EnviaSMSAgenda(IDAgenda : Integer);
var
  sEnvia,
  sTelefone,
  sMensagem : String;
Begin
  With DM.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT AGENDA.ID_AGENDA, MEDICOS.NOME AS DENTISTA, AGENDA.INICIO, PACIENTE.NOME, PACIENTE.CELULAR, ');
      SQL.Add('SAGENDAMENTO FROM AGENDA INNER JOIN PACIENTE ON AGENDA.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('INNER JOIN MEDICOS ON AGENDA.ID_MEDICO = MEDICOS.ID_MEDICO');
      SQL.Add('WHERE AGENDA.ID_AGENDA = :pID');
      Parameters.ParamByName('pID').Value := IDAgenda;
      Open;

      sMensagem := 'Prezado(a) '+FieldByName('NOME').AsString+', voce foi agendado(a) para o dia '+ FormatDateTime('DD/MM', FieldByName('INICIO').AsDateTime)+' as ';
      sMensagem := sMensagem + FormatDateTime('HH:MM', FieldByName('INICIO').AsDateTime)+'. Att, '+FieldByName('Dentista').AsString;
      sTelefone := FieldByName('CELULAR').AsString;
      sTelefone := StringReplace(sTelefone,'(','',[rfReplaceAll, rfIgnoreCase]);
      sTelefone := StringReplace(sTelefone,')','',[rfReplaceAll, rfIgnoreCase]);
      sTelefone := StringReplace(sTelefone,'-','',[rfReplaceAll, rfIgnoreCase]);
      sTelefone := StringReplace(sTelefone,' ','',[rfReplaceAll, rfIgnoreCase]);
      sMensagem := StringReplace(sMensagem, ' ', '+', [rfReplaceAll, rfIgnoreCase]);
      sMensagem := StringReplace(sMensagem, #13#10, '+', [rfReplaceAll, rfIgnoreCase]);

      if sTelefone <> '' then
        Begin
          sEnvia := 'http://system.human.com.br/GatewayIntegration/msgSms.do?dispatch=send&account=alessandro.tec&code=E5k7B6c861&to=';
          sEnvia := sEnvia +'55'+ sTelefone;
          sEnvia := sEnvia + '&msg=' + sMensagem;
          if (not FieldByName('SAGENDAMENTO').AsBoolean) and (CFGGeral.QTDESMS > 0) then
            Begin
              DM.Envia.Get(sEnvia);

              DM.qryAux2.Close;
              DM.qryAux2.SQL.Clear;
              DM.qryAux2.SQL.Add('SELECT SAGENDAMENTO FROM AGENDA');
              DM.qryAux2.SQL.Add('WHERE ID_AGENDA = :pID');
              DM.qryAux2.Parameters.ParamByName('pID').Value := FieldByName('ID_AGENDA').AsInteger;
              DM.qryAux2.Open;

              DM.qryAux2.Edit;
              DM.qryAux2.FieldByName('SAGENDAMENTO').AsBoolean := True;
              DM.qryAux2.Post;

              DescontaSMS(1);
            End;
        End;
    End;
End;

Function EnviaLembretesSMS : Boolean;
var
  dDataInicio,
  dDataFim : TDateTime;
  sHora,
  sData,
  Mensagem,
  sEnvia,
  sTelefone,
  sAux : String;
Begin
  Result := False;

  dDataInicio := Now;
  dDataInicio := dDataInicio + CFGGeral.EDiasAntesEnvio;
  dDataFim    := dDataInicio;
  sAux        := FormatDateTime('DD/MM/YYYY', dDataInicio);
  sAux        := sAux + ' 00:00:00';
  dDataInicio := StrToDateTime(sAux);
  sAux        := FormatDateTime('DD/MM/YYYY', dDataFim);
  sAux        := sAux + ' 23:59:00';
  dDataFim    := StrToDateTime(sAux);

  With DM.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT AGENDA.ID_AGENDA, MEDICOS.NOME AS DENTISTA, AGENDA.INICIO, PACIENTE.NOME, SLEMBRETE, PACIENTE.CELULAR FROM AGENDA');
      SQL.Add('INNER JOIN PACIENTE ON AGENDA.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('INNER JOIN MEDICOS ON AGENDA.ID_MEDICO = MEDICOS.ID_MEDICO');
      SQL.Add('WHERE AGENDA.INICIO BETWEEN :pDataIni AND :pDataFim');
      Parameters.ParamByName('pDataIni').Value := dDataInicio;
      Parameters.ParamByName('pDataFim').Value := dDataFim;
      Open;

      while Not Eof do
        Begin
           sHora := FormatDateTime('HH:MM', FieldByName('INICIO').AsDateTime);
           sData := FormatDateTime('DD/MM', FieldByName('INICIO').AsDateTime);

           Mensagem := CFGGeral.SMensagem;
           Mensagem := StringReplace(Mensagem,'[NOMEDOPACIENTE]',FieldByName('NOME').AsString,[rfReplaceAll, rfIgnoreCase]);
           Mensagem := StringReplace(Mensagem,'[DENTISTA]',FieldByName('DENTISTA').AsString,[rfReplaceAll, rfIgnoreCase]);
           Mensagem := StringReplace(Mensagem,'[HR]',sHora,[rfReplaceAll, rfIgnoreCase]);
           Mensagem := StringReplace(Mensagem,'[DTAAGEND]',sData,[rfReplaceAll, rfIgnoreCase]);
           Mensagem := StringReplace(Mensagem, ' ', '+', [rfReplaceAll, rfIgnoreCase]);
           Mensagem := StringReplace(Mensagem, #13#10, '+', [rfReplaceAll, rfIgnoreCase]);

           sTelefone := FieldByName('CELULAR').AsString;
           sTelefone := StringReplace(sTelefone,'(','',[rfReplaceAll, rfIgnoreCase]);
           sTelefone := StringReplace(sTelefone,')','',[rfReplaceAll, rfIgnoreCase]);
           sTelefone := StringReplace(sTelefone,'-','',[rfReplaceAll, rfIgnoreCase]);
           sTelefone := StringReplace(sTelefone,' ','',[rfReplaceAll, rfIgnoreCase]);

           if sTelefone <> '' then
            Begin
              sEnvia := 'http://system.human.com.br/GatewayIntegration/msgSms.do?dispatch=send&account=alessandro.tec&code=E5k7B6c861&to=';
              sEnvia := sEnvia +'55'+ sTelefone;
              sEnvia := sEnvia + '&msg=' + Mensagem;
              if (not FieldByName('SLEMBRETE').AsBoolean) and (CFGGeral.QTDESMS > 0) then
                Begin
                  DM.Envia.Get(sEnvia);

                  DM.qryAux2.Close;
                  DM.qryAux2.SQL.Clear;
                  DM.qryAux2.SQL.Add('SELECT SLEMBRETE FROM AGENDA');
                  DM.qryAux2.SQL.Add('WHERE ID_AGENDA = :pID');
                  DM.qryAux2.Parameters.ParamByName('pID').Value := FieldByName('ID_AGENDA').AsInteger;
                  DM.qryAux2.Open;

                  DM.qryAux2.Edit;
                  DM.qryAux2.FieldByName('SLEMBRETE').AsBoolean := True;
                  DM.qryAux2.Post;

                  DescontaSMS(1);
                End;
            End;

           Next;
        End;
    End;
    Result := True;
End;

// PROCEDURE PARA ORDERNAR GRID
Procedure GridOrdem(fCds: TDataSource; Grid: TDbGrid; Column: TColumn);
var
  i: Integer;
begin
  if fCds.DataSet.Active then
  begin
    for i := 0 to Grid.FieldCount - 1 do
      Grid.Columns.Items[i].Title.Color := clBtnFace;
    if not(Column.Field.DataType in [ftBlob, ftMemo]) then
    begin
      if (fCds.DataSet.FieldByName(Column.Field.FieldName).FieldKind <>
        fkCalculated) and (fCds.DataSet.FieldByName(Column.Field.FieldName)
        .FieldKind <> fkLookup) then
      begin
        TClientDataSet(fCds.DataSet).IndexFieldNames := Column.FieldName;
        Column.Title.Color := $00FFBB77;
      end;
    end;
  end;
end;

procedure abretabela(Ds: TDataSource);
begin
  if not Ds.DataSet.Active then
  begin
    try
      Ds.DataSet.Open;
    except
      // raise Exception.Create('Problema com conex�o favor verificar !');
      ShowMessage('Erro ao conectar base de dados. Verifique conex�o!');
      Abort;
    end;
  end;
end;

// PROCEDURE PARA FECAHR TABELAS
procedure fechatabela(Ds: TDataSource);
begin
  Ds.DataSet.Close;
end;

// PROCEDURE PARA FAZER O PESQUISAR DAS TABELAS NO CAMPO EDTVALOR
procedure Pesquisa(cbxField: TComboBox; Ds: TDataSource; Field, Value: string);
begin
  Ds.DataSet.Filter := 'Upper(' + Field + ') like ' +
    QuotedStr('%' + UpperCase(Value) + '%');
  Ds.DataSet.Filtered := true;
  if Value = EmptyStr then
    Ds.DataSet.Filtered := False;
end;

// DEIXA UM DBGRID ZEBRADO
procedure GridZebrado(Ds: TDataSource; dbgrid: TDbGrid;
  cor1, cor2, corfonte, corselecao: TColor; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
  if odd(Ds.DataSet.RecNo) then
  begin
    dbgrid.Canvas.Brush.Color := cor1;
  end
  else
  begin
    dbgrid.Canvas.Brush.Color := cor2;
  end;

  TDbGrid(dbgrid).Canvas.Font.Color := corfonte;

  if gdSelected in State then
  begin
    with (dbgrid as TDbGrid).Canvas do
    begin
      Brush.Color := corselecao;
      FillRect(Rect);
      Font.Style := [];
    end
  end;

  TDbGrid(dbgrid).DefaultDrawDataCell(Rect, TDbGrid(dbgrid).Columns[DataCol]
    .Field, State);
end;

// PROCEDURE PARA MOSTRAS CAMPOS DA TABELA NO COMBOBOX CBXFIELD
procedure getcampos(Ds: TDataSource; campo: TComboBox);
var
  i: Integer;
begin
  for i := 0 to Ds.DataSet.Fields.Count - 1 do
    if Ds.DataSet.Fields[i].DataType in [ftString, ftWideString, ftFixedChar]
    then
      campo.Items.AddObject(Ds.DataSet.Fields[i].DisplayName, tobject(i));
  campo.ItemIndex := 0;
end;

// Gravar novos registros nas tabelas
procedure Grava_Dados(fDataAux: array of TDataSet);
var
  i, j: Integer;
  JaEmTransacao: TTransactionDesc;
begin
  i := 0;
  Randomize;
  JaEmTransacao.TransactionID := Random(65635);
  // nivel de isolamento da transacao
  JaEmTransacao.IsolationLevel := xilREADCOMMITTED;
  // dm.sqlConexao.StartTransaction(JaEmTransacao);
  try
    i := Low(fDataAux);
    while i <= High(fDataAux) do
    begin
      if fDataAux[i].Active then
      begin
        if fDataAux[i].State in dsEditModes then
          fDataAux[i].Post;
        if (TClientDataSet(fDataAux[i]).ChangeCount > 0) then
          TClientDataSet(fDataAux[i]).ApplyUpdates(0);
      end;
      inc(i);
    end;
    // dm.sqlConexao.Commit(JaEmTransacao);
  except
    begin
      if not(fDataAux[i].State in [dsBrowse]) then
      begin
        if not CampoBranco(fDataAux[i]) then
          Exit;
        // raise eMyError.CreateFmt('Campos n�o preenchidos em "%s"', [fDataAux[i].Name]);
      end;
      TClientDataSet(fDataAux[i]).CancelUpdates;
      for j := i downto Low(fDataAux) do
      begin
        CancelRevertUpdates(fDataAux[j]);
      end;
      raise;
    end;
  end;

end;

// Cancelar Gravar Registros Base Dados
procedure CancelRevertUpdates(DataSet: TDataSet);
begin
  if DataSet.Active then
  begin
    CancelUpdates(DataSet);
    (DataSet as TClientDataSet).Refresh;
  end;
end;

// Cancelar Gravar Registros Base Dados
procedure CancelUpdates(DataSet: TDataSet);
var
  ClientDataSet: TClientDataSet;
begin
  if (DataSet.Active) then
  begin
    ClientDataSet := DataSet as TClientDataSet;
    if ClientDataSet.State in dsEditModes then
      ClientDataSet.Cancel;
    if ClientDataSet.ChangeCount > 0 then
      ClientDataSet.CancelUpdates;
  end
end;

// Verificar CNPJ
function VerificaCNPJ(fCNPJ: String): Boolean;
Var
  d1, d4, xx, nCount, fator, resto, digito1, digito2: Integer;
  Check: String;
begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  for nCount := 1 to Length(fCNPJ) - 2 do
  begin
    if Pos(Copy(fCNPJ, nCount, 1), '/-.') = 0 then
    begin
      if xx < 5 then
      begin
        fator := 6 - xx;
      end
      else
      begin
        fator := 14 - xx;
      end;
      d1 := d1 + StrToInt(Copy(fCNPJ, nCount, 1)) * fator;
      if xx < 6 then
      begin
        fator := 7 - xx;
      end
      else
      begin
        fator := 15 - xx;
      end;
      d4 := d4 + StrToInt(Copy(fCNPJ, nCount, 1)) * fator;
      xx := xx + 1;
    end;
  end;
  resto := (d1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;
  d4 := d4 + 2 * digito1;
  resto := (d4 mod 11);
  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;
  Check := IntToStr(digito1) + IntToStr(digito2);
  if Check <> Copy(fCNPJ, succ(Length(fCNPJ) - 2), 2) then
  begin
    Result := False;
  end
  else
  begin
    Result := true;
  end;
end;

// Verificar CPF
function VerificaCpf(fCPF: String): Boolean;
Var
  d1, d4, xx, nCount, resto, digito1, digito2: Integer;
  Check: String;
Begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  for nCount := 1 to Length(fCPF) - 2 do
  begin
    if Pos(Copy(fCPF, nCount, 1), '/-.') = 0 then
    begin
      d1 := d1 + (11 - xx) * StrToInt(Copy(fCPF, nCount, 1));
      d4 := d4 + (12 - xx) * StrToInt(Copy(fCPF, nCount, 1));
      xx := xx + 1;
    end;
  end;
  resto := (d1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;
  d4 := d4 + 2 * digito1;
  resto := (d4 mod 11);
  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;
  Check := IntToStr(digito1) + IntToStr(digito2);
  if Check <> Copy(fCPF, succ(Length(fCPF) - 2), 2) then
  begin
    Result := False;
  end
  else
  begin
    Result := true;
  end;
end;

// funcao a ser colocar no onsettext dos campos datas
function CheckData(Sender: TField; text: String): Boolean;
begin
  Result := False;
  if (text = ' / /  ') or (text = ' / / ') then
  begin
    Sender.Clear;
    Result := true;
  end
  else
  begin
    try
      Sender.AsString := text;
      Result := true;
    except

      ShowMessage('Data inv�lida, digite novamente !');
      Sender.Clear;
      Result := true;

      if Screen.Cursor = crHourGlass then
      begin
        Screen.Cursor := crDefault;
      end;
    end;
  end;
end;

procedure TabEnter(auxForm: TForm; var Key: char);
begin
  with auxForm do
  begin
    if Key = #13 then
    begin
      if not(ActiveControl is TDbGrid) then
      begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
      end
    end;
  end;
end;

Function SerialNum(FDrive: String): String;
Var
  Serial: Dword;
  DirLen, Flags: Dword;
  DLabel: Array [0 .. 11] of char;
begin
  Try
    GetVolumeInformation(pchar(FDrive + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  Except
    Result := '';
  end;
end;

function ZeroEsquerda(fTermo: String; fQuant: Integer): String;
var
  Aux: String;
  i: Integer;
begin
  Result := '';
  Aux := Trim(fTermo);
  for i := 1 to fQuant - Length(Aux) do
  begin
    Result := Result + '0';
  end;
  Result := Result + Aux;

end;

function Crypt(Action, Src: String): String;
Label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;
  Key := 'Holy Soft';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + Copy(Src, 1, 2));
    // <--------------- adiciona o $ entra as aspas simples
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + Copy(Src, SrcPos, 2));
      // <--------------- adiciona o $ entra as aspas simples
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
end;

function RemoveVirgula(Edite : String): double;
var
  Aux: String;
begin
  Aux := StringReplace(Edite, '.', '', [rfReplaceAll]);
  Result := StrToFloat(Aux);
end;

Procedure CarregaCFGAgenda;
begin

  with DM.qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select * from CFGAgenda');
    Open;

    CFGAgenda.Intervalo := FieldByName('Intervalo').AsString;
    CFGAgenda.Atendido := FieldByName('Atendido').AsString;
    CFGAgenda.Confirmado := FieldByName('Confirmado').AsString;
    CFGAgenda.NaEspera := FieldByName('NaEspera').AsString;
    CFGAgenda.Encaixe := FieldByName('Encaixe').AsString;
    CFGAgenda.Cancelado := FieldByName('Cancelado').AsString;
    CFGAgenda.HorarioDe := FieldByName('HORARIODE').AsString;
    CFGAgenda.HorarioAte := FieldByName('HorarioAte').AsString;
    Close;
  end;
End;

Procedure CarregaAcessoSistema;
Begin
  with TRegistry.create do
    try
      RootKey := HKey_Local_Machine;
      if OpenKey('Software\OdontoSis', true) then
      begin
        CFGAcesso.Base := Crypt('D', ReadString('Base'));
        CFGAcesso.Servidor := Crypt('D', ReadString('Servidor'));
        CFGAcesso.Usuario := Crypt('D', ReadString('Usuario'));
        CFGAcesso.Senha := Crypt('D', ReadString('Senha'));
        if ReadString('Mostrar') = '' then
          CFGAcesso.bMostrar := true
        else
          CFGAcesso.bMostrar := StrToBool(Crypt('D', ReadString('Mostrar')));
        // ReadBool('Mostrar');
      end;
    finally
      free
    end;
End;

Procedure CarregaDadosCaixa(IDCaixa : Integer);
Begin
  With dm.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CAIXAS');
      SQL.Add('WHERE ID_CAIXAS = :pID');
      Parameters.ParamByName('pID').Value := IDCaixa;
      Open;

      if Not Eof then
        Begin
          Caixa.IDCaixa := FieldByName('ID_CAIXAS').AsInteger;
          Caixa.IDOperador := FieldByName('ID_OPERADORES').AsInteger;
          Caixa.Numero := FieldByName('NUMERO').AsInteger;
          Caixa.DataCaixa := FieldByName('DTACAIXA').AsDateTime;
          Caixa.DataAbertura := FieldByName('DATAABERTURA').AsDateTime;
          Caixa.DataFechamento := FieldByname('DATAFECHAMENTO').AsDateTime;
          Caixa.SaldoInicial := FieldByName('SALDOINICIAL').AsFloat;
          Caixa.Aberto := FieldByName('ABERTO').AsBoolean;
          Caixa.Observacoes := FieldByName('OBSERVACOES').AsString;
          Caixa.Geral := False;
        End;

      if IDCaixa = -1 then
        Begin
          Caixa.IDCaixa := -1;
          Caixa.IDOperador := Operador.ID;
      {    Caixa.Numero := FieldByName('NUMERO').AsInteger;
          Caixa.DataCaixa := FieldByName('DTACAIXA').AsDateTime;
          Caixa.DataAbertura := FieldByName('DATAABERTURA').AsDateTime;
          Caixa.DataFechamento := FieldByname('DATAFECHAMENTO').AsDateTime;
          Caixa.SaldoInicial := FieldByName('SALDOINICIAL').AsFloat;}
          Caixa.Aberto := True;
          Caixa.Observacoes := 'Caixa GERAL do Sistema.';
          Caixa.Geral := True;
        End;
    End;

End;

Procedure CarregaCFGEmpresa(IDEmpresa : Integer);
Begin

  With dm.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT EMPRESA.*, CIDADE.CODIBGE, CIDADE.NOME AS Cidade, CIDADE.UF FROM EMPRESA');
      SQL.Add('LEFT JOIN CIDADE ON EMPRESA.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('WHERE EMPRESA.ID_EMPRESA = :pID');
      Parameters.ParamByName('pID').Value := IDEmpresa;
      Open;

      if Not Eof  then
        Begin
          Empresa.ID := FieldByName('ID_EMPRESA').AsInteger;
          Empresa.Filial := FieldByName('ID_FILIAL').AsInteger;
          Empresa.IDCidade := FieldByName('ID_CIDADE').AsInteger;
          Empresa.Nome := FieldByName('NOME').AsString;
          Empresa.RazaoSocial := FieldByName('RAZAOSOCIAL').AsString;
          Empresa.Endereco := FieldByName('ENDERECO').AsString;
          Empresa.Numero := FieldByName('NUMERO').AsString;
          Empresa.Bairro := FieldByName('BAIRRO').AsString;
          Empresa.CEP := FieldByName('CEP').AsString;
          Empresa.Telefone := FieldByName('TELEFONE').AsString;
          Empresa.Fax := FieldByName('FAX').AsString;
          Empresa.Contato := FieldByName('CONTATO').AsString;
          Empresa.CNPJ := FieldByName('CNPJ').AsString;
          Empresa.IE := FieldByName('IE').AsString;
          Empresa.Email := FieldByName('EMAIL').AsString;
          Empresa.Cidade := FieldByName('CIDADE').AsString;
          Empresa.UF := FieldByName('UF').AsString;
          Empresa.CODIBGE := FieldByName('CODIBGE').AsInteger;
        End;

      Close;
    End;
End;

Procedure CarregaCFGGeral;
Begin

  With dm.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CFGGERAL');
      SQL.Add('WHERE ID_CFGGERAL = 1');
      Open;

      if Not Eof  then
        Begin
          CFGGeral.ImpCabReceituario      := FieldByName('ImpCabReceituario').AsBoolean;
          CFGGeral.ImpCabAtestado         := FieldBYName('ImpCabAtestado').AsBoolean;
          CFGGeral.ViasRecibo             := FieldByName('VIASRECIBO').AsInteger;
          CFGGeral.ESMTP                  := FieldByName('SMTP').AsString;
          CFGGeral.EPorta                 := FieldByName('PORTA').AsInteger;
          CFGGeral.EEmail                 := FieldByName('EMAIL').AsString;
          CFGGeral.ESenha                 := FieldByName('SENHA').AsString;
          CFGGeral.ERequerAutenticacao    := FieldByName('REQUERAUTENTICACAO').AsBoolean;
          CFGGeral.EConexaoSSL            := FieldByName('CONEXAOSEGURASSL').AsBoolean;
          CFGGeral.EPacienteAgendamento   := FieldByName('EPACIENTEAGENDAMENTO').AsBoolean;
          CFGGeral.EPacienteFilaEncaixe   := FieldByName('EPACIENTEFILAENCAIXE').AsBoolean;
          CFGGeral.EPacienteListaRetorno  := FieldByName('EPACIENTERETORNO').AsBoolean;
          CFGGeral.ELembreteConsulta      := FieldByName('ELEMBRETECONSULTA').AsBoolean;
          CFGGeral.EDiasAntesEnvio        := FieldByName('EDIASANTES').AsInteger;
          CFGGeral.EEnviaAgenda           := FieldByName('EENVIAAGANDA').AsBoolean;
          CFGGeral.EHoraDeEnvio           := FieldByName('EHORARIODEENVIO').AsString;
          CFGGeral.SPacienteAgendamento   := FieldByName('SPACIENTEAGENDAMENTO').AsBoolean;
          CFGGeral.SPacienteFilaEncaixe   := FieldByName('SPACIENTEFILAENCAIXE').AsBoolean;
          CFGGeral.SPacienteListaRetorno  := FieldByName('SPACIENTERETORNO').AsBoolean;
          CFGGeral.SLembreteConsulta      := FieldByName('SLEMBRETECONSULTA').AsBoolean;
          CFGGeral.SDiasAntesEnvio        := FieldByName('SDIASANTES').AsInteger;
          CFGGeral.QTDESMS                := FieldByName('SQTDESMS').AsInteger;
          CFGGeral.SMensagem              := FieldByName('SMENSAGEM').AsString;
          CFGGeral.ValidaCPF              := FieldByName('VALIDACPF').AsBoolean;
        End;

      Close;
    End;
End;

Procedure CarregaOperador(ID : Integer);
Begin

  With dm.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM OPERADORES');
      SQL.Add('WHERE ID_OPERADORES = :pID');
      Parameters.ParamByName('pID').Value := ID;
      Open;

      Operador.ID                         := FieldByName('ID_OPERADORES').AsInteger;
      Operador.Nome                       := FieldByName('NOME').AsString;

      //Paciente
      Operador.ListaPacienteV             := FieldByName('LISTAPACIENTEV').AsBoolean;
      Operador.ListaPacienteC             := FieldByName('LISTAPACIENTEC').AsBoolean;
      Operador.ListaPacienteE             := FieldByName('LISTAPACIENTEE').AsBoolean;
      Operador.AnamneseV                  := FieldByName('ANAMNESEV').AsBoolean;
      Operador.AnamneseC                  := FieldByName('ANAMNESEC').AsBoolean;
      Operador.AnamneseE                  := FieldByName('ANAMNESEE').AsBoolean;
      Operador.ExameOralV                 := FieldByName('EXAMEORALV').AsBoolean;
      Operador.ExameOralC                 := FieldByName('EXAMEORALC').AsBoolean;
      Operador.ExameOralE                 := FieldByName('EXAMEORALE').AsBoolean;
      Operador.PlanoTratamentoV           := FieldByName('PLANOTRATAMENTOV').AsBoolean;
      Operador.PlanoTratamentoC           := FieldByName('PLANOTRATAMENTOC').AsBoolean;
      Operador.PlanoTratamentoE           := FieldByName('PLANOTRATAMENTOE').AsBoolean;
      Operador.FotoPacienteV              := FieldByName('FOTOPACIENTEV').AsBoolean;
      Operador.FotoPacienteC              := FieldByName('FOTOPACIENTEC').AsBoolean;
      Operador.FotoPacienteE              := FieldByName('FOTOPACIENTEE').AsBoolean;
      Operador.OperadorSistemaV           := FieldByName('OPERADORSISTEMAV').AsBoolean;
      Operador.OperadorSistemaC           := FieldByName('OPERADORSISTEMAC').AsBoolean;
      Operador.OperadorSIstemaE           := FieldByName('OPERADORSISTEMAE').AsBoolean;
      Operador.ProcedimentosV             := FieldByName('PROCEDIMENTOSV').AsBoolean;
      Operador.ProcedimentosC             := FieldByName('PROCEDIMENTOSC').AsBoolean;
      Operador.ProcedimentosE             := FieldByName('PROCEDIMENTOSE').AsBoolean;
      Operador.CidadesV                   := FieldByName('CIDADESV').AsBoolean;
      Operador.CidadesC                   := FieldByName('CIDADESC').AsBoolean;
      Operador.CidadesE                   := FieldByName('CIDADESE').AsBoolean;
      Operador.ConveniosV                 := FieldByName('CONVENIOSV').AsBoolean;
      Operador.COnveniosC                 := FieldByName('CONVENIOSC').AsBoolean;
      Operador.ConveniosE                 := FieldByName('CONVENIOSE').AsBoolean;
      Operador.DentistasV                 := FieldByName('DENTISTASV').AsBoolean;
      Operador.DentistasC                 := FieldByName('DENTISTASC').AsBoolean;
      Operador.DentistasE                 := FieldByName('DENTISTASE').AsBoolean;
      Operador.AgendaV                    := FieldByName('AGENDAV').AsBoolean;
      Operador.AgendaC                    := FieldByName('AGENDAC').AsBoolean;
      Operador.AgendaE                    := FieldByName('AGENDAE').AsBoolean;
      Operador.EncaixeV                   := FieldByName('ENCAIXEV').AsBoolean;
      Operador.EncaixeC                   := FieldByName('ENCAIXEC').AsBoolean;
      Operador.EncaixeE                   :=FieldByName('ENCAIXEE').AsBoolean;
      Operador.RetornoV                   := FieldByName('RETORNOV').AsBoolean;
      Operador.RetornoC                   := FieldByName('RETORNOC').AsBoolean;
      Operador.RetornoE                   := FieldByName('RETORNOE').AsBoolean;
      Operador.BancoV                     := FieldByName('BANCOV').AsBoolean;
      Operador.BancoC                     := FieldByName('BANCOC').AsBoolean;
      Operador.BancoE                     := FieldByName('BANCOE').AsBoolean;
      Operador.DocPersonalizadoV          := FieldByName('DOCPERSONALIZADOV').AsBoolean;
      Operador.DocPersonalizadoC          := FieldByName('DOCPERSONALIZADOC').AsBoolean;
      Operador.DocPersonalizadoE          := FieldByName('DOCPERSONALIZADOE').AsBoolean;
      Operador.EmiDocPersonalizadoV       := FieldByName('EMIDOCPERSONALIZADOV').AsBoolean;
      Operador.EmiDocPersonalizadoC       := FieldByName('EMIDOCPERSONALIZADOC').AsBoolean;
      Operador.EmiDocPersonalizadoE       := FieldByName('EMIDOCPERSONALIZADOE').AsBoolean;
      Operador.ReceituarioV               := FieldByName('RECEITUARIOV').AsBoolean;
      Operador.ReceituarioC               := FieldByName('RECEITUARIOC').AsBoolean;
      Operador.ReceituarioE               := FieldByName('RECEITUARIOE').AsBoolean;
      Operador.FornecedorV                := FieldByName('FORNECEDORESV').AsBoolean;
      Operador.FornecedorC                := FieldByName('FORNECEDORESC').AsBoolean;
      Operador.FornecedorE                := FieldByName('FORNECEDORESE').AsBoolean;
      Operador.AtestadosV                 := FieldByName('ATESTADOSV').AsBoolean;
      Operador.AtestadosC                 := FieldByName('ATESTADOSC').AsBoolean;
      Operador.AtestadosE                 := FieldByName('ATESTADOSE').AsBoolean;
      Operador.TermosV                    := FieldByName('TERMOSV').AsBoolean;
      Operador.TermosC                    := FieldByName('TERMOSC').AsBoolean;
      Operador.TermosE                    := FieldByName('TERMOSE').AsBoolean;

      //Financeiro
      Operador.CaixaV                     := FieldByName('CaixaV').AsBoolean;
      Operador.CaixaA                     := FieldByName('CaixaA').AsBoolean;
      Operador.CaixaF                     := FieldByName('CaixaF').AsBoolean;
      Operador.TitulosPagarV              := FieldByName('TitulosPagarV').AsBoolean;
      Operador.TitulosPagarC              := FieldByName('TitulosPagarC').AsBoolean;
      Operador.TitulosPagarE              := FieldByName('TitulosPagarE').AsBoolean;
      Operador.TitulosPagarD              := FieldByName('TitulosPagarD').AsBoolean;
      Operador.TitulosPagarB              := FieldByName('TitulosPagarB').AsBoolean;
      Operador.TitulosPagarEstornar       := FieldByName('TitulosPagarEstornar').AsBoolean;
      Operador.TitulosPagarP              := FieldByName('TitulosPagarP').AsBoolean;
      Operador.TitulosReceberPV           := FieldByName('TitulosReceberPV').AsBoolean;
      Operador.TitulosReceberPC           := FieldByName('TitulosReceberPC').AsBoolean;
      Operador.TitulosReceberPE           := FieldByName('TitulosReceberPE').AsBoolean;
      Operador.TitulosReceberPD           := FieldByName('TitulosReceberPD').AsBoolean;
      Operador.TitulosReceberPB           := FieldByName('TitulosReceberPB').AsBoolean;
      Operador.TitulosReceberPEstornar    := FieldByName('TitulosReceberPEstornar').AsBoolean;
      Operador.TitulosReceberPP           := FieldByName('TitulosReceberPP').AsBoolean;
      Operador.TitulosReceberCV           := FieldByName('TitulosReceberCV').AsBoolean;
      Operador.TitulosReceberCC           := FieldByName('TitulosReceberCC').AsBoolean;
      Operador.TitulosReceberCE           := FieldByName('TitulosReceberCE').AsBoolean;
      Operador.TitulosReceberCD           := FieldByName('TitulosReceberCD').AsBoolean;
      Operador.TitulosReceberCB           := FieldByName('TitulosReceberCB').AsBoolean;
      Operador.TitulosReceberCEstornar    := FieldByName('TitulosReceberCEstornar').AsBoolean;
      Operador.TitulosReceberCP           := FieldByName('TitulosReceberCP').AsBoolean;
      Operador.ChequesRecebidosV          := FieldByName('ChequesRecebidosV').AsBoolean;
      Operador.ChequesRecebidosE          := FieldByName('ChequesRecebidosE').AsBoolean;
      Operador.ChequesRecebidosC          := FieldByName('ChequesRecebidosC').AsBoolean;
      Operador.LancamentoCaixa            := FieldByName('LancamentoCaixa').AsBoolean;
      Operador.ConfLancCaixa              := FieldByName('ConfLancCaixa').AsBoolean;
      Operador.ConfLancBanco              := FieldByName('ConfLancBanco').AsBoolean;
      Operador.ReforcoCaixa               := FieldByName('ReforcoCaixa').AsBoolean;
      Operador.SaqueValores               := FieldByName('SaqueValores').AsBoolean;
      Operador.RelCaixaGeral              := FieldByName('RelCaixaGeral').AsBoolean;
      Operador.TransfSaldos               := FieldByName('TransfSaldos').AsBoolean;
      Operador.NotificacaoFinanceira      := FieldByName('NotificacaoFinanceira').AsBoolean;

      if (FieldByName('NOME').AsString = 'admin') or (ID = 0) then
        Begin
          //Paciente

          if ID = 0 then
            Begin
              Operador.Nome := 'Suporte Odontosis';
              Operador.ID   := 0;
            End;

          Operador.ListaPacienteV := True;
          Operador.ListaPacienteC := True;
          Operador.ListaPacienteE := True;
          Operador.AnamneseV := True;
          Operador.AnamneseC := True;
          Operador.AnamneseE := True;
          Operador.ExameOralV := True;
          Operador.ExameOralC := True;
          Operador.ExameOralE := True;
          Operador.PlanoTratamentoV := True;
          Operador.PlanoTratamentoC := True;
          Operador.PlanoTratamentoE := True;
          Operador.FotoPacienteV := True;
          Operador.FotoPacienteC := True;
          Operador.FotoPacienteE := True;
          Operador.OperadorSistemaV := True;
          Operador.OperadorSistemaC := True;
          Operador.OperadorSIstemaE := True;
          Operador.ProcedimentosV := True;
          Operador.ProcedimentosC := True;
          Operador.ProcedimentosE := True;
          Operador.CidadesV := True;
          Operador.CidadesC := True;
          Operador.CidadesE := True;
          Operador.ConveniosV := True;
          Operador.COnveniosC := True;
          Operador.ConveniosE := True;
          Operador.DentistasV := True;
          Operador.DentistasC := True;
          Operador.DentistasE := True;
          Operador.AgendaV := True;
          Operador.AgendaC := True;
          Operador.AgendaE := True;
          Operador.EncaixeV := True;
          Operador.EncaixeC := True;
          Operador.EncaixeE := True;
          Operador.RetornoV := True;
          Operador.RetornoC := True;
          Operador.RetornoE := True;
          Operador.FornecedorV := True;
          Operador.FornecedorC := True;
          Operador.FornecedorE := True;
          Operador.BancoV := True;
          Operador.BancoC := True;
          Operador.BancoE := True;
          Operador.DocPersonalizadoV := True;
          Operador.DocPersonalizadoC := True;
          Operador.DocPersonalizadoE := True;
          Operador.EmiDocPersonalizadoV := True;
          Operador.EmiDocPersonalizadoC := True;
          Operador.EmiDocPersonalizadoE := True;
          Operador.ReceituarioV := True;
          Operador.ReceituarioC := True;
          Operador.ReceituarioE := True;
          Operador.AtestadosV := True;
          Operador.AtestadosC := True;
          Operador.AtestadosE := True;
          Operador.TermosV := True;
          Operador.TermosC := True;
          Operador.TermosE := True;

          //Financeiro
          Operador.CaixaV := True;
          Operador.CaixaA := True;
          Operador.CaixaF := True;
          Operador.TitulosPagarV := True;
          Operador.TitulosPagarC := True;
          Operador.TitulosPagarE := True;
          Operador.TitulosPagarD := True;
          Operador.TitulosPagarB := True;
          Operador.TitulosPagarEstornar := True;
          Operador.TitulosPagarP := True;
          Operador.TitulosReceberPV := True;
          Operador.TitulosReceberPC := True;
          Operador.TitulosReceberPE := True;
          Operador.TitulosReceberPD := True;
          Operador.TitulosReceberPB := True;
          Operador.TitulosReceberPEstornar := True;
          Operador.TitulosReceberPP := True;
          Operador.TitulosReceberCV := True;
          Operador.TitulosReceberCC := True;
          Operador.TitulosReceberCE := True;
          Operador.TitulosReceberCD := True;
          Operador.TitulosReceberCB := True;
          Operador.TitulosReceberCEstornar := True;
          Operador.TitulosReceberCP := True;
          Operador.ChequesRecebidosV := True;
          Operador.ChequesRecebidosE := True;
          Operador.ChequesRecebidosC := True;
          Operador.LancamentoCaixa := True;
          Operador.ConfLancCaixa := True;
          Operador.ConfLancBanco := True;
          Operador.ReforcoCaixa := True;
          Operador.SaqueValores := True;
          Operador.RelCaixaGeral := True;
          Operador.TransfSaldos := True;
          Operador.NotificacaoFinanceira := True;
        End;

      Close;
    End;
End;

Procedure AbrePortaFirewall;
var
sComando : String;
Begin
  if (VersaoWindows = 'Windows 7') or (VersaoWindows = 'Windows 8') then
    Begin
      sComando := 'netsh advfirewall firewall add rule name=OdontosisSQL dir=in action=allow protocol=TCP localport=1433';
      WinExec(PAnsiChar( AnsiString(sComando)), SW_HIDE);
      sComando := 'netsh advfirewall firewall add rule name=OdontosisSQL dir=out action=allow protocol=TCP localport=1433';
      WinExec(PAnsiChar( AnsiString(sComando)), SW_HIDE);
    End
  Else
    Begin
      sComando := 'netsh firewall add portopening TCP 1433 OdontosisSQL';
      WinExec(PAnsiChar( AnsiString(sComando)), SW_HIDE);
    End;
End;

Function IntBol(Numero : Integer) : Boolean;
Begin
  if Numero = 0 then
    Begin
      Result := False;
    End
  Else
    Begin
      Result := True;
    End;
End;

Function BolInt(Verdadeiro : Boolean) : Integer;
Begin
  if Verdadeiro = False then
    Begin
      Result := 0;
    End
  Else
    Begin
      Result := 1;
    End;
End;

function NomeDente(Dente: String): String;
var
  sDente : String;
begin

  if Dente = 'D11' then
    Begin
      sDente := 'Incisivo central superior direito';
    End;

  if Dente = 'D12' then
    Begin
      sDente := 'Incisivo lateral superior direito';
    End;

  if Dente = 'D13' then
    Begin
      sDente := 'C�spide superior direito';
    End;

  if Dente = 'D14' then
    Begin
      sDente := '1� pr� molar superior direito';
    End;

  if Dente = 'D15' then
    Begin
      sDente := '2� pr� molar superior direito';
    End;

  if Dente = 'D16' then
    Begin
      sDente := '1� molar superior direito';
    End;

  if Dente = 'D17' then
    Begin
      sDente := '2� molar superior direito';
    End;

  if Dente = 'D18' then
    Begin
      sDente := '3� molar superior direito';
    End;

  if Dente = 'D21' then
    Begin
      sDente := 'Incisivo central superior esquerdo';
    End;

  if Dente = 'D22' then
    Begin
      sDente := 'Incisivo lateral superior esquerdo';
    End;

  if Dente = 'D23' then
    Begin
      sDente := 'C�spide superior esquerdo';
    End;

  if Dente = 'D24' then
    Begin
      sDente := '1� pr� molar superior esquerdo';
    End;

  if Dente = 'D25' then
    Begin
      sDente := '2� pr� molar superior esquerdo';
    End;

  if Dente = 'D26' then
    Begin
      sDente := '1� molar superior esquerdo';
    End;

  if Dente = 'D27' then
    Begin
      sDente := '2� molar superior esquerdo';
    End;

  if Dente = 'D28' then
    Begin
      sDente := '3� molar superior esquerdo';
    End;

  if Dente = 'D41' then
    Begin
      sDente := 'Incisivo central inferior direito';
    End;

  if Dente = 'D42' then
    Begin
      sDente := 'Incisivo lateral inferior direito';
    End;

  if Dente = 'D43' then
    Begin
      sDente := 'C�spide inferior direito';
    End;

  if Dente = 'D44' then
    Begin
      sDente := '1� pr� molar inferior direito';
    End;

  if Dente = 'D45' then
    Begin
      sDente := '2� pr� molar inferior direito';
    End;

  if Dente = 'D46' then
    Begin
      sDente := '1� molar inferior direito';
    End;

  if Dente = 'D47' then
    Begin
      sDente := '2� molar inferior direito';
    End;

  if Dente = 'D48' then
    Begin
      sDente := '3� molar inferior direito';
    End;

  if Dente = 'D31' then
    Begin
      sDente := 'Incisivo central inferior esquerdo';
    End;

  if Dente = 'D32' then
    Begin
      sDente := 'Incisivo lateral inferior esquerdo';
    End;

  if Dente = 'D33' then
    Begin
      sDente := 'C�spide inferior esquerdo';
    End;

  if Dente = 'D34' then
    Begin
      sDente := '1� pr� molar inferior esquerdo';
    End;

  if Dente = 'D35' then
    Begin
      sDente := '2� pr� molar inferior esquerdo';
    End;

  if Dente = 'D36' then
    Begin
      sDente := '1� molar inferior esquerdo';
    End;

  if Dente = 'D37' then
    Begin
      sDente := '2� molar inferior esquerdo';
    End;

  if Dente = 'D38' then
    Begin
      sDente := '3� molar inferior esquerdo';
    End;

  if Dente = 'D51' then
    Begin
      sDente := 'Incisivo central superior direito';
    End;

  if Dente = 'D52' then
    Begin
      sDente := 'Incisivo lateral superior direito';
    End;

  if Dente = 'D53' then
    Begin
      sDente := 'C�pide superior direito';
    End;

  if Dente = 'D54' then
    Begin
      sDente := '1� molar superior direito';
    End;

  if Dente = 'D55' then
    Begin
      sDente := '2� molar superior direito';
    End;

  if Dente = 'D81' then
    Begin
      sDente := 'Incisivo central inferior direito';
    End;

  if Dente = 'D82' then
    Begin
      sDente := 'Incisivo lateral inferior direito';
    End;

  if Dente = 'D83' then
    Begin
      sDente := 'C�pide inferior direito';
    End;

  if Dente = 'D84' then
    Begin
      sDente := '1� molar inferior direito';
    End;

  if Dente = 'D85' then
    Begin
      sDente := '2� molar inferior direito';
    End;

  if Dente = 'D61' then
    Begin
      sDente := 'Incisivo central superior esquerdo';
    End;

  if Dente = 'D62' then
    Begin
      sDente := 'Incisivo lateral superior esquerdo';
    End;

  if Dente = 'D63' then
    Begin
      sDente := 'C�pide superior esquerdo';
    End;

  if Dente = 'D64' then
    Begin
      sDente := '1� molar superior esquerdo';
    End;

  if Dente = 'D65' then
    Begin
      sDente := '2� molar superior esquerdo';
    End;

  if Dente = 'D71' then
    Begin
      sDente := 'Incisivo central inferior esquerdo';
    End;

  if Dente = 'D72' then
    Begin
      sDente := 'Incisivo lateral inferior esquerdo';
    End;

  if Dente = 'D73' then
    Begin
      sDente := 'C�pide inferior esquerdo';
    End;

  if Dente = 'D74' then
    Begin
      sDente := '1� molar inferior esquerdo';
    End;

  if Dente = 'D75' then
    Begin
      sDente := '2� molar inferior esquerdo';
    End;

  Result := sDente;
end;

Function PastaArquivo : String;
var
  sPasta : String;
Begin

  sPasta := ParamStr(0);
  sPasta := ExtractFilePath(sPasta);

  Result := sPasta;
End;
function VerificaProximaReferencia: Integer;
Begin
  with DM.qryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' Select Referencia from CfgGeral');
    Open;

    Result := FieldByName('Referencia').AsInteger + 1;

    Edit;
    FieldByName('Referencia').AsInteger := FieldByName('Referencia')
      .AsInteger + 1;
    Post;
    Close;
  end;
End;

Procedure DeletaLixos;
Begin
  while FileExists(PastaArquivo+'Anexar.sql') do
  begin
    Sleep(2000);
    DeleteFile(PastaArquivo+'Anexar.sql');
  end;
End;

Procedure GeraCategoriaProcedimentos(IDConvenio : Integer);
Begin
  With DM.qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CATEGORIAPROCEDIMENTO');
      SQL.Add('WHERE ID_CONVENIO = :pID');
      Parameters.ParamByName('pID').Value := IDConvenio;
      Open;

      if Eof then
        Begin
         // CursorType(crHourGlass);
          Application.CreateForm(TfrmMensagem, frmMensagem);
          frmMensagem.lblDescricao.Caption := 'Gerando Procedimentos TUSS...';
          frmMensagem.Barra.Properties.Min := 0;
          frmMensagem.Barra.Properties.Max := 12;
          frmMensagem.Barra.Position := 0;
          frmMensagem.Show;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Diagn�stico e Avalia��o T�cnica';
          Post;

          frmMensagem.Update;
          frmMensagem.Barra.Properties.Text := 'Gerando: Diagn�stico e Avalia��o T�cnica';
          frmMensagem.Update;
          GeraAvaliacaoTecnica;
          frmMensagem.Update;
          frmMensagem.Barra.Position := 1;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Radiologia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Radiologia';
          frmMensagem.Update;
          GeraRadiologia;
          frmMensagem.Barra.Position := 2;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Testes e Exames de Laborat�rios';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Testes e Exames de Laborat�rios';
          frmMensagem.Update;
          GeraExamesLaboratorios;
          frmMensagem.Barra.Position := 3;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Preven��o';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Preven��o';
          frmMensagem.Update;
          GeraPrevencao;
          frmMensagem.Barra.Position := 4;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Odontopediatria';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Odontopediatria';
          frmMensagem.Update;
          GeraOdontopediatria;
          frmMensagem.Barra.Position := 5;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Dent�stica';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Odontopediatria';
          frmMensagem.Update;
          GeraDentistica;
          frmMensagem.Barra.Position := 6;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Endodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Endodontia';
          frmMensagem.Update;
          GeraEndodontia;
          frmMensagem.Barra.Position := 7;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Periodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Periodontia';
          frmMensagem.Update;
          GeraPeriodontia;
          frmMensagem.Barra.Position := 8;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Pr�tese';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Pr�tese';
          frmMensagem.Update;
          GeraProtese;
          frmMensagem.Barra.Position := 9;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Cirurgia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Cirurgia';
          frmMensagem.Update;
          GeraCirurgia;
          frmMensagem.Barra.Position := 10;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Ortodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Ortodontia';
          frmMensagem.Update;
          GeraOrtodontia;
          frmMensagem.Barra.Position := 11;
          frmMensagem.Update;

          Append;
          FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
          FieldByName('DESCRICAO').AsString := 'Implantodontia';
          Post;

          frmMensagem.Barra.Properties.Text := 'Gerando: Implantodontia';
          frmMensagem.Update;
          GeraImplantodontia;

          frmMensagem.Close;
          FreeAndNil(frmMensagem);
          //CursorType(crDefault);
        End;

        Close;
    End;
End;

Procedure GeraAvaliacaoTecnica;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000065';
      FieldByName('DESCRICAO').AsString := 'Consulta Odontol�gica Inicial';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000049';
      FieldByName('DESCRICAO').AsString := 'Consulta Odontol�gica de Urg�ncia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000073';
      FieldByName('DESCRICAO').AsString := 'Consulta Odontol�gica para Avalia��o t�cnica de Auditoria / Per�cia';
      Post;

      Close;
    End;
End;

Procedure GeraRadiologia;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000421';
      FieldByName('DESCRICAO').AsString := 'Radiografia Periapical';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000375';
      FieldByName('DESCRICAO').AsString := 'Radiografia Interproximal � Bite-Wing';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000383';
      FieldByName('DESCRICAO').AsString := 'Radiografia Oclusal';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000430';
      FieldByName('DESCRICAO').AsString := 'Radiografia Postero-anterior';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000340';
      FieldByName('DESCRICAO').AsString := 'Radiografia da ATM';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000405';
      FieldByName('DESCRICAO').AsString := 'Radiografia Panor�mica de mand�bula / maxila (ortopantomografia)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000480';
      FieldByName('DESCRICAO').AsString := 'Telerradiografia com Tra�ado Cefalom�trico';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000472';
      FieldByName('DESCRICAO').AsString := 'Telerradiografia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000367';
      FieldByName('DESCRICAO').AsString := 'Radiografia da m�o e punho � carpal';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000308';
      FieldByName('DESCRICAO').AsString := 'Modelos Ortod�nticos';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000456';
      FieldByName('DESCRICAO').AsString := 'Slides';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000278';
      FieldByName('DESCRICAO').AsString := 'Fotografia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000529';
      FieldByName('DESCRICAO').AsString := 'Tomografia Convencional � Linear ou Multi-Direcional';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000413';
      FieldByName('DESCRICAO').AsString := 'Radiografia Panor�mica de Mand�bula / Maxila (ortopantomografia) com Tra�ado Cefalom�trico';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90020140';
      FieldByName('DESCRICAO').AsString := 'Protocolo de TOMOGRAFIA COMPUTADORIZADA - primeira tomada - por segmento';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90020142';
      FieldByName('DESCRICAO').AsString := 'Protocolo de TOMOGRAFIA COMPUTADORIZADA � unilateral';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90020143';
      FieldByName('DESCRICAO').AsString := 'Protocolo de TOMOGRAFIA COMPUTADORIZADA - Por �rea espec�fica da mand�bula (mento = queixo)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90020144';
      FieldByName('DESCRICAO').AsString := 'Protocolo de TOMOGRAFIA COMPUTADORIZADA para ATM � unilateral';
      Post;

      Close;
    End;
End;

Procedure GeraExamesLaboratorios;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000252';
      FieldByName('DESCRICAO').AsString := 'Teste de PH Salivar';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000244';
      FieldByName('DESCRICAO').AsString := 'Teste Fluxo Salivar';
      Post;
      Close;
    End;
End;

Procedure GeraPrevencao;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000198';
      FieldByName('DESCRICAO').AsString := 'Profilaxia � Polimento Coron�rio';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000090';
      FieldByName('DESCRICAO').AsString := 'Aplica��o T�pica de Fl�or';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85300047';
      FieldByName('DESCRICAO').AsString := 'Raspagem Supra-Gengival';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000163';
      FieldByName('DESCRICAO').AsString := 'Controle de Biofilme (Placa Bacteriana)';
      Post;
      Close;
    End;
End;

Procedure GeraOdontopediatria;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000112';
      FieldByName('DESCRICAO').AsString := 'Aplica��o T�pica de Verniz Fluoretado';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000074';
      FieldByName('DESCRICAO').AsString := 'Aplica��o de Selante de Fossulas e Fissuras';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000058';
      FieldByName('DESCRICAO').AsString := 'Aplica��o de Selante � T�cnica Invasiva';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000031';
      FieldByName('DESCRICAO').AsString := 'Aplica��o de Cariost�tico';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '84000201';
      FieldByName('DESCRICAO').AsString := 'Remineralizac�o';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90050215';
      FieldByName('DESCRICAO').AsString := 'Adequa��o do meio bucal c/ ion�mero de vidro (por hemiarcada)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90050216';
      FieldByName('DESCRICAO').AsString := 'Adequa��o do meio bucal c/ IRM (por hemiarcada)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100137';
      FieldByName('DESCRICAO').AsString := 'Restaura��o em Ion�mero de vidro';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '83000135';
      FieldByName('DESCRICAO').AsString := 'Restaura��o Atraum�tica em dente dec�duo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '83000046';
      FieldByName('DESCRICAO').AsString := 'Coroa de A�o em dente dec�duo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100013';
      FieldByName('DESCRICAO').AsString := 'Capeamento Pulpar direto';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '83000127';
      FieldByName('DESCRICAO').AsString := 'Pulpotomia em dente dec�duo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '83000151';
      FieldByName('DESCRICAO').AsString := 'Tratamento Endod�ntico em dente dec�duo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '83000089';
      FieldByName('DESCRICAO').AsString := 'Exodontia de Dec�duos';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000014';
      FieldByName('DESCRICAO').AsString := 'Condicionamento em Odontologia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001707';
      FieldByName('DESCRICAO').AsString := 'Ulectomia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '87000024';
      FieldByName('DESCRICAO').AsString := 'Atividade Educativa para Pais e/ou cuidadores';
      Post;
    End;
End;

Procedure GeraDentistica;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100099';
      FieldByName('DESCRICAO').AsString := 'Restaura��o de Am�lgama � 1 face';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100102';
      FieldByName('DESCRICAO').AsString := 'Restaura��o de Am�lgama � 2 faces';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100110';
      FieldByName('DESCRICAO').AsString := 'Restaura��o de Am�lgama � 3 faces';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100129';
      FieldByName('DESCRICAO').AsString := 'Restaura��o de Am�lgama � 4 faces';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100196';
      FieldByName('DESCRICAO').AsString := 'Restaura��o de Resina Fotopolimeriz�vel � 1 faces';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100200';
      FieldByName('DESCRICAO').AsString := 'Restaura��o de Resina Fotopolimeriz�vel � 2 faces';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100218';
      FieldByName('DESCRICAO').AsString := 'Restaura��o de Resina Fotopolimeriz�vel � 3 ou 4 faces';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85100064';
      FieldByName('DESCRICAO').AsString := 'Faceta Direta em Resina Fotopolimeriz�vel';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90060322';
      FieldByName('DESCRICAO').AsString := 'N�cleo de Preenchimento em Ionomero de Vidro';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400211';
      FieldByName('DESCRICAO').AsString := 'N�cleo de Preenchimento';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90060325';
      FieldByName('DESCRICAO').AsString := 'Pinos de reten��o (excluindo a restaura��o)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85300020';
      FieldByName('DESCRICAO').AsString := 'mobiliza��o Dent�ria em Dentes Permanentes';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400025';
      FieldByName('DESCRICAO').AsString := 'Ajuste Oclusal por Desgaste Seletivo';
      Post;

    End;
End;

Procedure GeraEndodontia;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200166';
      FieldByName('DESCRICAO').AsString := 'Tratamento Endod�ntico Unirradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200140';
      FieldByName('DESCRICAO').AsString := 'Tratamento Endod�ntico Birradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200158';
      FieldByName('DESCRICAO').AsString := 'Tratamento Endod�ntico Multirradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90070413';
      FieldByName('DESCRICAO').AsString := 'Tratamento Endod�ntico 04 condutos';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200115';
      FieldByName('DESCRICAO').AsString := 'Retratamento Endod�ntico Unirradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200093';
      FieldByName('DESCRICAO').AsString := 'Retratamento Endod�ntico Birradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200107';
      FieldByName('DESCRICAO').AsString := 'Retratamento Endod�ntico Multirradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90070417';
      FieldByName('DESCRICAO').AsString := 'Retratamento Endod�ntico 04 condutos';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200123';
      FieldByName('DESCRICAO').AsString := 'Tratamento de Perfura��o Endodontica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200077';
      FieldByName('DESCRICAO').AsString := 'Remo��o de N�cleo Intrarradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90070420';
      FieldByName('DESCRICAO').AsString := 'Capeamento Pulpar (excluindo restaura��o final)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200042';
      FieldByName('DESCRICAO').AsString := 'Pulpotomia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200018';
      FieldByName('DESCRICAO').AsString := 'Clareamento de Dente Desvitalizado';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200026';
      FieldByName('DESCRICAO').AsString := 'Preparo para N�cleo Intrarradicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200131';
      FieldByName('DESCRICAO').AsString := 'Tratamento Endod�ntico de Dente com Rizogenese Incompleta';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85200034';
      FieldByName('DESCRICAO').AsString := 'Pulpectomia';
      Post;
    End;
End;

Procedure GeraPeriodontia;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85300039';
      FieldByName('DESCRICAO').AsString := 'Raspagem Sub-Gengival / Alisamento Radicular';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90080511';
      FieldByName('DESCRICAO').AsString := 'Tratamento n�o cir�rgico da Periodontite avan�ada p/ seguimento';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85300063';
      FieldByName('DESCRICAO').AsString := 'Tratamento de Obscesso Periodontal Agudo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85300012';
      FieldByName('DESCRICAO').AsString := 'Dessensibiliza��o Dent�ria - p/ segmento';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85300055';
      FieldByName('DESCRICAO').AsString := 'Remo��o Fatores de Reten��o do Biofilme Dental e Placa Bacteriana';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000921';
      FieldByName('DESCRICAO').AsString := 'Gengivectomia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000417';
      FieldByName('DESCRICAO').AsString := 'Cirurgia Periodontal a Retalho';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000557';
      FieldByName('DESCRICAO').AsString := 'Cunha Proximal';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000190';
      FieldByName('DESCRICAO').AsString := 'Aprofundamento / Aumento de vest�bulo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000689';
      FieldByName('DESCRICAO').AsString := 'Enxerto Pediculado';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000662';
      FieldByName('DESCRICAO').AsString := 'Enxerto Gengival Livre';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001073';
      FieldByName('DESCRICAO').AsString := 'Odonto-Sec��o';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000069';
      FieldByName('DESCRICAO').AsString := 'Amputa��o Radicular s/ Obtura��o Retr�grada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000050';
      FieldByName('DESCRICAO').AsString := 'Amputa��o Radicular c/ Obtura��o Retr�grada';
      Post;
    End;
End;

Procedure GeraProtese;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90090610';
      FieldByName('DESCRICAO').AsString := 'Planejamento em Pr�tese (modelo de Estudos - par, mont. em articul. semi-aust�vel � Acima de 4 elementos de Pr�tese Fixa)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '81000243';
      FieldByName('DESCRICAO').AsString := 'Diagn�stico por meio de encerramento';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90090612';
      FieldByName('DESCRICAO').AsString := 'Ajuste Oclusal Prot�tico (valor total)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400556';
      FieldByName('DESCRICAO').AsString := 'Restaura��o Met�lica Fundida';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400513';
      FieldByName('DESCRICAO').AsString := 'Restaura��o em Cer�mica Pura � Inlay';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400521';
      FieldByName('DESCRICAO').AsString := 'Restaura��o em Cer�mica Pura � Onlay';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400505';
      FieldByName('DESCRICAO').AsString := 'Remo��o de Trabalho Prot�tico';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400467';
      FieldByName('DESCRICAO').AsString := 'Recimenta��o de Trabalho Prot�tico';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400220';
      FieldByName('DESCRICAO').AsString := 'N�cleo Met�lico Fundido';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400084';
      FieldByName('DESCRICAO').AsString := 'Coroa Provis�ria sem Pino';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400076';
      FieldByName('DESCRICAO').AsString := 'Coroa Provis�ria com Pino';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400475';
      FieldByName('DESCRICAO').AsString := 'Reembasamento de Coroa Provis�ria';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400092';
      FieldByName('DESCRICAO').AsString := 'Coroa Total Acr�lica Prensada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400106';
      FieldByName('DESCRICAO').AsString := 'Coroa Total em Cer�mica Pura';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400157';
      FieldByName('DESCRICAO').AsString := 'Coroa Total Metalo-Cer�mica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400173';
      FieldByName('DESCRICAO').AsString := 'Coroa Total Metalopl�stica Resina Acr�lica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400149';
      FieldByName('DESCRICAO').AsString := 'Coroa Total Met�lica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90090626';
      FieldByName('DESCRICAO').AsString := 'Coroa 3/4 ou 4/5';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400181';
      FieldByName('DESCRICAO').AsString := 'Faceta em Cer�mica Pura';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400335';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Parcial Fixa em Metalo Cer�mica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400343';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Parcial Fixa em Metalo Pl�stica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400289';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Fixa Adesiva Direta (Prov.)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400300';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Fixa Adesiva Indireta Metalo-Cer�mica (at� 3 elementos)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400319';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Fixa Adesiva Indireta Metalo-Pl�stica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400394';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Parcial Remov�vel Provis�ria em Acr�lico com ou sem Grampos';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400386';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Parcial Remov�vel com Grampos Bilateral';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400378';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Parcial Remov�vel com Encaixes de Precis�o ou de Semi Precis�o';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90090636';
      FieldByName('DESCRICAO').AsString := 'Encaixe F�mea ou Macho por Elemento';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400483';
      FieldByName('DESCRICAO').AsString := 'Reembasamento de Pr�tese Total ou Parcial � imediato (em consult�rio)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400408';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Total';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400424';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Total Incolor';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '54004168';
      FieldByName('DESCRICAO').AsString := 'Pr�tese Total Imediata';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400491';
      FieldByName('DESCRICAO').AsString := 'Reembasamento de Pr�tese Total ou Parcial � imediato (em laborat�rio)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400203';
      FieldByName('DESCRICAO').AsString := 'Guia Cir�rgico para Pr�tese Imediata';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90090645';
      FieldByName('DESCRICAO').AsString := 'Jig ou Front-Plato';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400050';
      FieldByName('DESCRICAO').AsString := 'Conserto em Pr�tese Total (em Consult�rio e em Laborat�rio)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85400246';
      FieldByName('DESCRICAO').AsString := '�rtese Miorrelaxante (Placa Oclusal Estabilizadora)';
      Post;
    End;

End;

Procedure GeraCirurgia;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000298';
      FieldByName('DESCRICAO').AsString := 'Bridectomia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000026';
      FieldByName('DESCRICAO').AsString := 'Acompanhamento de Tratamento / Procedimento Cir�rgico em Ontologia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000875';
      FieldByName('DESCRICAO').AsString := 'Exodontia Simples de Permanente';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000816';
      FieldByName('DESCRICAO').AsString := 'Exodontia a Retalho';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000859';
      FieldByName('DESCRICAO').AsString := 'Exodontia de Raiz Residual';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000034';
      FieldByName('DESCRICAO').AsString := 'Alveoloplastia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000239';
      FieldByName('DESCRICAO').AsString := 'Bi�psia de Boca';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000247';
      FieldByName('DESCRICAO').AsString := 'Bi�psia de Gl�ndula Salivar';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000255';
      FieldByName('DESCRICAO').AsString := 'Bi�psia de L�bio';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000263';
      FieldByName('DESCRICAO').AsString := 'Bi�psia de L�ngua';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000271';
      FieldByName('DESCRICAO').AsString := 'Bi�psia de Mand�bula';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000280';
      FieldByName('DESCRICAO').AsString := 'Bi�psia de Maxila';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001154';
      FieldByName('DESCRICAO').AsString := 'Reconstru��o de Sulco Gengivo-Labial';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000182';
      FieldByName('DESCRICAO').AsString := 'Apicetomia Unirradiculares sem Obtura��o Retr�grada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000174';
      FieldByName('DESCRICAO').AsString := 'Apicetomia Unirradiculares com Obtura��o Retr�grada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000085';
      FieldByName('DESCRICAO').AsString := 'Apicetomia Birradiculares sem Obtura��o Retr�grada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000077';
      FieldByName('DESCRICAO').AsString := 'Apicetomia Birradiculares com Obtura��o Retr�grada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000166';
      FieldByName('DESCRICAO').AsString := 'Apicetomia Multirradiculares sem Obtura��o Retr�grada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000158';
      FieldByName('DESCRICAO').AsString := 'Apicetomia Multirradiculares com Obtura��o Retr�grada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000883';
      FieldByName('DESCRICAO').AsString := 'Frenulectomia Labial';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000905';
      FieldByName('DESCRICAO').AsString := 'Frenulotomia Labial';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000891';
      FieldByName('DESCRICAO').AsString := 'Frenulectomia Lingual';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000913';
      FieldByName('DESCRICAO').AsString := 'Frenulotomia Lingual';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001545';
      FieldByName('DESCRICAO').AsString := 'Tratamento Cir�rgico de Bridas Constritivas da Regi�o Buco-Maxilo-Facial';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001286';
      FieldByName('DESCRICAO').AsString := 'Remo��o de Dentes Inclusos / Impactados';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001367';
      FieldByName('DESCRICAO').AsString := 'Remo��o de Odontoma';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001596';
      FieldByName('DESCRICAO').AsString := 'Tratamento Cir�rgico de Tumores Benignos de Tecidos Osseos/Cartinagilosos na Regi�o Buco-Maxilo-Facial-Osteoma';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000786';
      FieldByName('DESCRICAO').AsString := 'Exerese ou Excis�o de Cistos Odontol�gicos';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000794';
      FieldByName('DESCRICAO').AsString := 'Exerese ou Excis�o de Mucocele';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000778';
      FieldByName('DESCRICAO').AsString := 'Exerese ou Excis�o de C�lculo Salivar';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001022';
      FieldByName('DESCRICAO').AsString := 'Incis�o e Drenagem Extra-Oral de Abscesso, Hematoma e/ou Flegm�o da Regi�o Buco-Maxilo-Facial';
      Post;
    End;
End;

Procedure GeraOrtodontia;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000098';
      FieldByName('DESCRICAO').AsString := 'Aparelho Ortod�ntico Fixo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90110814';
      FieldByName('DESCRICAO').AsString := 'An�is ortod�nticos c/ gancho';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000535';
      FieldByName('DESCRICAO').AsString := 'Placa L�bio-Ativa (Bumper)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000055';
      FieldByName('DESCRICAO').AsString := 'Aparelho Extra-Bucal';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '83000097';
      FieldByName('DESCRICAO').AsString := 'Mantenedor de Espa�o Fixo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '83000100';
      FieldByName('DESCRICAO').AsString := 'Mantenedor de Espa�o Remov�vel';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000390';
      FieldByName('DESCRICAO').AsString := 'Mentoneira';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000551';
      FieldByName('DESCRICAO').AsString := 'Plano Inclinado';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000560';
      FieldByName('DESCRICAO').AsString := 'Quadrih�lice';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000373';
      FieldByName('DESCRICAO').AsString := 'Manuten��o de Aparelho Ortod�ntico � Aparelho Remov�vel';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000357';
      FieldByName('DESCRICAO').AsString := 'Manuten��o de Aparelho Ortod�ntico � Aparelho Fixo';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000411';
      FieldByName('DESCRICAO').AsString := 'Monobloco';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90110837';
      FieldByName('DESCRICAO').AsString := 'Modelo de estudos e plano de tratamento';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000462';
      FieldByName('DESCRICAO').AsString := 'Placa Hawley';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000470';
      FieldByName('DESCRICAO').AsString := 'Placa Hawley � com Torno Expansor';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000144';
      FieldByName('DESCRICAO').AsString := 'Arco Lingual';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000209';
      FieldByName('DESCRICAO').AsString := 'Conten��o Fixa � por Arcada';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000225';
      FieldByName('DESCRICAO').AsString := 'Disjuntor Palatino � Hyrax';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000233';
      FieldByName('DESCRICAO').AsString := 'Disjuntor Palatino � Macnamara';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000403';
      FieldByName('DESCRICAO').AsString := 'Modelador El�stico de Bimler';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000179';
      FieldByName('DESCRICAO').AsString := 'Bionator de Balters';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000110';
      FieldByName('DESCRICAO').AsString := 'Aparelho Ortod�ntico Fixo Met�lico Parcial';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000195';
      FieldByName('DESCRICAO').AsString := 'Bot�o de Nance Fixo Superior';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000314';
      FieldByName('DESCRICAO').AsString := 'Grade Palatina Fixa';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000322';
      FieldByName('DESCRICAO').AsString := 'Grade Palatina Remov�vel';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000578';
      FieldByName('DESCRICAO').AsString := 'Regulador de fun��o Frankel';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000160';
      FieldByName('DESCRICAO').AsString := 'Barra Transpalatina Remov�vel';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000152';
      FieldByName('DESCRICAO').AsString := 'Barra Transpalatina Fixa';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000284';
      FieldByName('DESCRICAO').AsString := 'Distalizador tipo Jones Jig';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000330';
      FieldByName('DESCRICAO').AsString := 'Herbst Encapsulado';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000438';
      FieldByName('DESCRICAO').AsString := 'Pistas Diretas de Planas';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000381';
      FieldByName('DESCRICAO').AsString := 'M�scara Facial � Delaire e Tra��o Reserva';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000489';
      FieldByName('DESCRICAO').AsString := 'Placa de Mordida Ortod�ntica';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000128';
      FieldByName('DESCRICAO').AsString := 'Aparelho Remov�vel com Al�as Bionator Invertida ou de Escheler';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000047';
      FieldByName('DESCRICAO').AsString := 'Aparelho de Thurow';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90110863';
      FieldByName('DESCRICAO').AsString := 'Aparelho de Disfun��o T�mpero-Mandibular (DTM)';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '86000250';
      FieldByName('DESCRICAO').AsString := 'Distalizador de Hilgers';
      Post;
    End;
End;

function valorPorExtenso(vlr: real): string;
const
  unidade: array[1..19] of string = ('um', 'dois', 'tr�s', 'quatro', 'cinco',
             'seis', 'sete', 'oito', 'nove', 'dez', 'onze',
             'doze', 'treze', 'quatorze', 'quinze', 'dezesseis',
             'dezessete', 'dezoito', 'dezenove');
  centena: array[1..9] of string = ('cento', 'duzentos', 'trezentos',
             'quatrocentos', 'quinhentos', 'seiscentos',
             'setecentos', 'oitocentos', 'novecentos');
  dezena: array[2..9] of string = ('vinte', 'trinta', 'quarenta', 'cinquenta',
             'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array[0..4] of string = ('', 'mil', 'milh�o', 'bilh�o', 'trilh�o');
  qualificaP: array[0..4] of string = ('', 'mil', 'milh�es', 'bilh�es', 'trilh�es');
var
                        inteiro: Int64;
                          resto: real;
  vlrS, s, saux, vlrP, centavos: string;
     n, unid, dez, cent, tam, i: integer;
                    umReal, tem: boolean;
begin
  if (vlr = 0)
     then begin
            valorPorExtenso := 'zero';
            exit;
          end;

  inteiro := trunc(vlr); // parte inteira do valor
  resto := vlr - inteiro; // parte fracion�ria do valor
  vlrS := inttostr(inteiro);
  if (length(vlrS) > 15)
     then begin
            valorPorExtenso := 'Erro: valor superior a 999 trilh�es.';
            exit;
          end;

  s := '';
  centavos := inttostr(round(resto * 100));

// definindo o extenso da parte inteira do valor
  i := 0;
  umReal := false; tem := false;
  while (vlrS <> '0') do
  begin
    tam := length(vlrS);
// retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
// 1a. parte = 789 (centena)
// 2a. parte = 456 (mil)
// 3a. parte = 123 (milh�es)
    if (tam > 3)
       then begin
              vlrP := copy(vlrS, tam-2, tam);
              vlrS := copy(vlrS, 1, tam-3);
            end
    else begin // �ltima parte do valor
           vlrP := vlrS;
           vlrS := '0';
         end;
    if (vlrP <> '000')
       then begin
              saux := '';
              if (vlrP = '100')
                 then saux := 'cem'
              else begin
                     n := strtoint(vlrP);        // para n = 371, tem-se:
                     cent := n div 100;          // cent = 3 (centena trezentos)
                     dez := (n mod 100) div 10;  // dez  = 7 (dezena setenta)
                     unid := (n mod 100) mod 10; // unid = 1 (unidade um)
                     if (cent <> 0)
                        then saux := centena[cent];
                     if ((dez <> 0) or (unid <> 0))
                        then begin
                               if ((n mod 100) <= 19)
                                  then begin
                                         if (length(saux) <> 0)
                                            then saux := saux + ' e ' + unidade[n mod 100]
                                         else saux := unidade[n mod 100];
                                       end
                               else begin
                                      if (length(saux) <> 0)
                                         then saux := saux + ' e ' + dezena[dez]
                                      else saux := dezena[dez];
                                      if (unid <> 0)
                                         then if (length(saux) <> 0)
                                                 then saux := saux + ' e ' + unidade[unid]
                                              else saux := unidade[unid];
                                    end;
                             end;
                   end;
              if ((vlrP = '1') or (vlrP = '001'))
                 then begin
                        if (i = 0) // 1a. parte do valor (um real)
                           then umReal := true
                        else saux := saux + ' ' + qualificaS[i];
                      end
              else if (i <> 0)
                      then saux := saux + ' ' + qualificaP[i];
              if (length(s) <> 0)
                 then s := saux + ', ' + s
              else s := saux;
            end;
    if (((i = 0) or (i = 1)) and (length(s) <> 0))
       then tem := true; // tem centena ou mil no valor
    i := i + 1; // pr�ximo qualificador: 1- mil, 2- milh�o, 3- bilh�o, ...
  end;

  if (length(s) <> 0)
     then begin
            if (umReal)
               then s := s + ' real'
            else if (tem)
                    then s := s + ' reais'
                 else s := s + ' de reais';
          end;
// definindo o extenso dos centavos do valor
  if (centavos <> '0') // valor com centavos
     then begin
            if (length(s) <> 0) // se n�o � valor somente com centavos
               then s := s + ' e ';
            if (centavos = '1')
               then s := s + 'um centavo'
            else begin
                   n := strtoint(centavos);
                   if (n <= 19)
                      then s := s + unidade[n]
                   else begin                 // para n = 37, tem-se:
                          unid := n mod 10;   // unid = 37 % 10 = 7 (unidade sete)
                          dez := n div 10;    // dez  = 37 / 10 = 3 (dezena trinta)
                          s := s + dezena[dez];
                          if (unid <> 0)
                             then s := s + ' e ' + unidade[unid];
                       end;
                   s := s + ' centavos';
                 end;
          end;
  valorPorExtenso := s;
end;

Procedure GeraImplantodontia;
var
  IDCategoria : Integer;
Begin
  With dm.qryAux2 do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_CATEGORIAPROCEDIMENTO) As ID FROM CATEGORIAPROCEDIMENTO');
      Open;

      IDCategoria := FieldByName('ID').AsInteger;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PROCEDIMENTOS');
      SQL.Add('WHERE ID_PROCEDIMENTOS = 0');
      Open;

      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82000980';
      FieldByName('DESCRICAO').AsString := 'Implante �sseo Integrado';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85500038';
      FieldByName('DESCRICAO').AsString := 'Coroa Total Metalo-Cer�mica sobre Implante';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001456';
      FieldByName('DESCRICAO').AsString := 'Seda��o Medicamentosa Ambulatorial em Odontologia';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85500062';
      FieldByName('DESCRICAO').AsString := 'Guia Cir�rgico para Implante';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '82001049';
      FieldByName('DESCRICAO').AsString := 'Levantamento de Seio Maxilar com Osso Aut�geno';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85500178';
      FieldByName('DESCRICAO').AsString := 'Protocolo Branemark 5 Implantes';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '85500160';
      FieldByName('DESCRICAO').AsString := 'Protocolo Branemark 4 Implantes';
      Post;
      Append;
      FieldByname('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
      FieldByName('CODPROCEDIMENTO').AsString := '90120935';
      FieldByName('DESCRICAO').AsString := 'Elemento suspenso de pr�tese fixa em metalo ceramica � Pontico';
      Post;

      Close;
    End;
End;
end.
