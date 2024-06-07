unit Funcoes;

interface

uses Windows, SysUtils, Forms, DB, DBCtrls, Dialogs, DbClient, Classes,
  IniFiles, DBGrids, Grids, SqlExpr,
  WinSock, WinInet, StdCtrls, Messages, Variants, Graphics, Controls, TypInfo,
  Data.Win.ADODB, UDM, Registry, ShellApi, Vcl.Menus, Mensagem, Zip;

type
  TTypeLocalizar = (fsInteger, fsString);

  TpCfgAcessoSistema = Record
    Base, Servidor, Usuario, Senha: string;
    bMostrar: Boolean;
  end;

  TpCfgGeral = Record
    ImpCabReceituario, ImpCabAtestado: Boolean;
    ViasRecibo: Integer;
  End;

  TpCaixa = Record
    IDCaixa, IDOperador, Numero: Integer;
    DataAbertura, DataFechamento, DataCaixa: TDateTime;
    Geral, Aberto: Boolean;
    Observacoes: String;
    SaldoInicial: Double;
  End;

  TpCfgEmpresa = Record
    ID, Filial, CODIBGE, IDCidade: Integer;
    Nome, RazaoSocial, Endereco, Numero, Bairro, CEP, Cidade, UF, Telefone, Fax,
      Contato, CNPJ, IE, Email: String;
  end;

  TpCfgOperador = Record
    ID: Integer;
    Nome: String;

    // Paciente
    ListaPacienteV, ListaPacienteC, ListaPacienteE, AnamneseV, AnamneseC,
      AnamneseE, ExameOralV, ExameOralC, ExameOralE, PlanoTratamentoV,
      PlanoTratamentoC, PlanoTratamentoE, FotoPacienteV, FotoPacienteC,
      FotoPacienteE: Boolean;

    // Cadastros
    OperadorSistemaV, OperadorSistemaC, OperadorSIstemaE, ProcedimentosV,
      ProcedimentosC, ProcedimentosE, CidadesV, CidadesC, CidadesE, ConveniosV,
      COnveniosC, ConveniosE, DentistasV, DentistasC, DentistasE, AgendaV,
      AgendaC, AgendaE, EncaixeV, EncaixeC, EncaixeE: Boolean;
  End;

  TpCfgAgenda = Record
    Intervalo, Atendido, Confirmado, NaEspera, Encaixe, Cancelado, HorarioDe,
      HorarioAte: string;
  End;

Function Compactar(const Files: TStrings; const ZipName: string): Boolean;
Function Descompactar(const ZipName, Destino: string): Boolean;
Procedure CarregaAcessoSistema;
Procedure CarregaCFGAgenda;
Procedure CarregaCFGEmpresa;
Procedure CarregaCFGGeral;
Procedure CarregaDadosCaixa(IDCaixa: Integer);
Procedure CarregaOperador(ID: Integer);
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
function DiaSemana(Data: TDateTime): ShortString;
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
procedure RoundDecimal(var AValue: Double; const ADecimal: Integer);
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
function RemoveVirgula(Edit: TEdit): Double;
Procedure DeletaLixos;
function VerificaProximaReferencia: Integer;
function IntBol(Numero: Integer): Boolean;
Function BolInt(Verdadeiro: Boolean): Integer;
Function NomeDente(Dente: String): String;
Function PastaArquivo: String;
Procedure VersoesSistema;
Function VersaoWindows: String;
Function RetornaIDConvenioDoPaciente(IDPaciente: Integer): Integer;
Procedure AbrePortaFirewall;
function valorPorExtenso(vlr: real): string;

// Gera Categoria e Procedimento das categorias
Procedure GeraCategoriaProcedimentos(IDConvenio: Integer);
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
// Final das funções de criar procedimentos

var
  CFGAcesso: TpCfgAcessoSistema;
  CFGAgenda: TpCfgAgenda;
  CFGGeral: TpCfgGeral;
  Operador: TpCfgOperador;
  Empresa: TpCfgEmpresa;
  Caixa: TpCaixa;
  dDataExe: TDateTime;
  dDataDLL: TDateTime;

implementation

uses ComCtrls;

const
  MSG_OK = 'Informação cadastrada com sucesso!';
  MSG_PERMISSOES = 'Você não tem permissão para executar essa ação';
  MSG_CAMPO_OBR = 'Campo obrigatório';
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

// Função para trocar , por pontos.

Procedure VersoesSistema;
var
  Dados: TSearchRec;
  sAux: string;
Begin
  sAux := Application.ExeName;

  FindFirst(sAux, faAnyFile, Dados);
  dDataExe := FileDateToDateTime(Dados.Time);

  Delete(sAux, Length(sAux) - 3, 4);
  { sAux := sAux + '.DLL';
    FindFirst(sAux,faAnyFile, Dados);
    dDataDLL := FileDateToDateTime(Dados.Time) }
End;

function Compactar(const Files: TStrings; const ZipName: string): Boolean;
var
  I: Integer;
  Zipper: TZipFile;
begin
  Zipper := TZipFile.Create();
  try
    Zipper.Open(ZipName, zmWrite);
    for I := 0 to Files.Count - 1 do
    begin
      if FileExists(Files[I]) then
        Zipper.Add(Files[I]);
    end;
    Zipper.Close;
  finally
    FreeAndNil(Zipper);
  end;
  Result := True;
End;

Function Descompactar(const ZipName, Destino: string): Boolean;
var
  UnZipper: TZipFile;
begin
  UnZipper := TZipFile.Create();
  try
    UnZipper.Open(ZipName, zmRead);
    UnZipper.ExtractAll(Destino);
    UnZipper.Close;
  finally
    FreeAndNil(UnZipper);
  end;
  Result := True;
End;

Function RetornaIDConvenioDoPaciente(IDPaciente: Integer): Integer;
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

// Função para pedir confirmação de uma operação.
function Confirma(strTexto: string): Integer;
begin
  Result := Application.MessageBox(pchar(strTexto), 'Confirmação',
    mb_YesNo + mb_DefButton2 + mb_IconQuestion);
end;

Function VersaoWindows: String;
var
  VersionInfo: TOSVersionInfo;
Begin
  VersionInfo.dwOSVersionInfoSize := SizeOf(VersionInfo);
  GetVersionEx(VersionInfo);
  Result := '';

  With VersionInfo do
  Begin
    case dwPlatformId of
      1:
        case dwMinorVersion of
          0:
            Result := 'Windows 95';
          10:
            Result := 'Windows 98';
          90:
            Result := 'Windows Me';
        end;
      2:
        case dwMajorVersion of
          3:
            Result := 'Windows NT 3.51';
          4:
            Result := 'Windows NT 4.0';
          5:
            case dwMinorVersion of
              0:
                Result := 'Windows 2000';
              1:
                Result := 'Windows XP';
            end;
          6:
            Case dwMinorVersion of
              0:
                Result := 'Windows Vista';
              1:
                Result := 'Windows 7';
              2:
                Result := 'Windows 8';
            End;
        end;
    end;
  End;
End;

function Runprocess(Filename: string; Showcmd: Dword; Wait: Boolean;
  Procid: Pdword): Longword;
var
  Startupinfo: Tstartupinfo;
  Processinfo: Tprocessinformation;
begin
  Fillchar(Startupinfo, SizeOf(Startupinfo), #0);
  Startupinfo.Cb := SizeOf(Startupinfo);
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

// Função para apresentação de uma data no formato 'Dia da semanada - Dia do mês/Mês/Ano'.
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
        strDiaSemana := 'Terça-feira - ';
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
        strDiaSemana := 'Sábado - ';
      end;
  end;
  Result := strDiaSemana + DateToStr(dtData);
end;

// Funcao para converte valor numerico inteiro em string com zeros a esquerda
// mode de usar Edit1.Text := strzeros(edit1.text, 6);
Function StrZeros(Texto: String; Qtde: Integer): String;
var
  I, Tam: Integer;
  Aux: String;
begin
  Aux := '';
  Tam := Length(Texto);
  for I := Tam to (Qtde - 1) do
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

// Checa se o Simbolo da UF é Valido}
function ChecaEstado(Dado: string): Boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
  Posicao: Integer;
begin
  Result := True;
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
{ Testa se uma data é válida ou não }
begin
  try

    StrToDate(Data);
    Result := True;
  except

    Result := False;
    ShowMessage('Data Inválida!');

  end;
end;

function Empty(inString: string): Boolean;
{ Testa se a variavel está vazia ou não }
var
  index: byte;
begin
  index := 1;
  Empty := True;
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
  DiaDaSemana[3] := 'Terça-feira';
  DiaDaSemana[4] := 'Quarta-feira';
  DiaDaSemana[5] := 'Quinta-feira';
  DiaDaSemana[6] := 'Sexta-feira';
  DiaDaSemana[7] := 'Sábado';
  { Meses do ano }
  Meses[1] := 'Janeiro';
  Meses[2] := 'Fevereiro';
  Meses[3] := 'Março';
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

function DiaSemana(Data: TDateTime): ShortString;
{ Retorna o dia da semana em Extenso de uma determinada data }
const
  Dias: array [1 .. 7] of string[07] = ('DOMINGO', 'SEGUNDA', 'TERCA', 'QUARTA',
    'QUINTA', 'SEXTA', 'SABADO');
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
    Result := 'A data data atual não pode ser menor que a data inicial';
  end
  else
  begin
    Data := DataAtual - DataVenc;
    DecodeDate(Data, Ano, Mes, Dia);
    Result := FloatToStr(Data);
  end;
end;

function DifHora(Inicio, Fim: string): string;
{ Retorna a diferença entre duas horas }
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

function MapeaRede(Letra, Path, provedor: pchar): string;
// mapea um Drive via programação
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
        Result := 'Tipo de dispositivo local ou recurso inválido';
      end;
    67:
      begin
        Result := 'Caminho não encontrado ou inválido';
      end;
    85:
      begin
        Result := 'Este mapeamento já existe';
      end;
    86:
      begin
        Result := 'Senha não encontrada ou inválida';
      end;
    1200:
      begin
        Result := 'Letra atribuída a unidade já é reservada ou inválida';
      end;
    1202:
      begin
        Result := 'Um mapeamento com esta letra já existe';
      end;
    1203:
      begin
        Result := 'Rede ou caminho não encontrado ou inválido';
      end;
    1204:
      begin
        Result := 'Provedor não encontrado ou inválido';
      end;
    1205:
      begin
        Result := 'Não foi possível abrir o perfil';
      end;
    1206:
      begin
        Result := 'Perfil do usuário não encontrado ou inválido';
      end;
    1208:
      begin
        Result := 'Ocorreu um Erro específico na rede';
      end;
    170:
      begin
        Result := 'Rede congestionada';
      end;
    2138:
      begin
        Result := 'Rede não encontrada ou fora do ar';
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
{ Permite que você altere a data e a hora do sistema }
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
// DesligaWindows(EWX_FORCE); //sair forçado
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
  I: Integer;
  { : verifica quais os campos que estão em branco no cadastro }
begin
  Result := True; { : assume que estão todos preenchidos }
  for I := 0 to DtSrc.FieldCount - 1 do
  begin
    if DtSrc.Fields[I].Required then
    begin
      if (DtSrc.Fields[I].IsNull) or (DtSrc.Fields[I].AsString = '') then
      begin
        MessageDlg('Preencha o campo " ' + DtSrc.Fields[I].DisplayLabel + '"',
          mtWarning, [mbOk], 0);
        Result := False;
        DtSrc.Fields[I].FocusControl;
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
// como usar  label1.Caption := 'Versão ' + GetVersaoArq;
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
      MessageDlg('Erro ao tentar capturar a versão do aplicativo!', mtError,
        [mbOk], 0);
    end;
  end;
end;

procedure RoundDecimal(var AValue: Double; const ADecimal: Integer);
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
  I: longint;
begin
  case Length(S) of
    2:
      begin
        I := Map[S[1]] + (Map[S[2]] shl 6);
        SetLength(Result, 1);
        Move(I, Result[1], Length(Result))
      end;
    3:
      begin
        I := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12);
        SetLength(Result, 2);
        Move(I, Result[1], Length(Result))
      end;
    4:
      begin
        I := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12) +
          (Map[S[4]] shl 18);
        SetLength(Result, 3);
        Move(I, Result[1], Length(Result))
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
  I: word;
  Seed: word;
begin
  Result := S;
  Seed := Key;
  for I := 1 to Length(Result) do
  begin
    Result[I] := AnsiChar(byte(Result[I]) xor (Seed shr 8));
    Seed := (byte(S[I]) + Seed) * word(C1) + word(C2)
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
  I: longint;
begin
  I := 0;
  Move(S[1], I, Length(S));
  case Length(S) of
    1:
      begin
        Result := ansistring(Map[I mod 64] + Map[(I shr 6) mod 64])
      end;
    2:
      begin
        Result := ansistring(Map[I mod 64] + Map[(I shr 6) mod 64] +
          Map[(I shr 12) mod 64])
      end;
    3:
      begin
        Result := ansistring(Map[I mod 64] + Map[(I shr 6) mod 64] +
          Map[(I shr 12) mod 64] + Map[(I shr 18) mod 64])
      end
  end
end;

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
  I: word;
  Seed: word;
begin
  Result := S;
  Seed := Key;
  for I := 1 to Length(Result) do
  begin
    Result[I] := AnsiChar(byte(Result[I]) xor (Seed shr 8));
    Seed := (byte(Result[I]) + Seed) * word(C1) + word(C2)
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
  aprogressbar := tprogressbar.Create(amsgdialog);
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
          MessageBox(0, 'Processamento Terminado !!!!!!!', 'Atenção',
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

// Função allTrim para remover os espaços em branco de uma string:

Function Alltrim(cStr: String): String;
var
  cCopy: String;
  I: Integer;
begin
  cCopy := '';
  for I := 1 to Length(cStr) do
  begin
    if cStr[I] <> ' ' then
      cCopy := cCopy + cStr[I];
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
  // se não tiver o separador retorna o mesmo texto que foi passado

  // String = Getcombo(dbcombobox1.Items[dbcombobox1.ItemIndex]);
  // retornaria o M
  // se o item selecionado for "EP - Empregado" retornaria EP
end;

function LerIni(AArquivo, ASessao, ASubSessao: String): String;
var
  loIni: TInifile;
begin
  loIni := TInifile.Create(AArquivo);
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
  loIni := TInifile.Create(AArquivo);
  try
    loIni.WriteString(ASessao, ASubSessao, AConteudo);
  finally
    FreeAndNil(loIni);
  end;
end;

// PROCEDURE PARA ORDERNAR GRID
Procedure GridOrdem(fCds: TDataSource; Grid: TDbGrid; Column: TColumn);
var
  I: Integer;
begin
  if fCds.DataSet.Active then
  begin
    for I := 0 to Grid.FieldCount - 1 do
      Grid.Columns.Items[I].Title.Color := clBtnFace;
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
      // raise Exception.Create('Problema com conexão favor verificar !');
      ShowMessage('Erro ao conectar base de dados. Verifique conexão!');
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
  Ds.DataSet.Filtered := True;
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
  I: Integer;
begin
  for I := 0 to Ds.DataSet.Fields.Count - 1 do
    if Ds.DataSet.Fields[I].DataType in [ftString, ftWideString, ftFixedChar]
    then
      campo.Items.AddObject(Ds.DataSet.Fields[I].DisplayName, tobject(I));
  campo.ItemIndex := 0;
end;

// Gravar novos registros nas tabelas
procedure Grava_Dados(fDataAux: array of TDataSet);
var
  I, j: Integer;
  JaEmTransacao: TTransactionDesc;
begin
  I := 0;
  Randomize;
  JaEmTransacao.TransactionID := Random(65635);
  // nivel de isolamento da transacao
  JaEmTransacao.IsolationLevel := xilREADCOMMITTED;
  // dm.sqlConexao.StartTransaction(JaEmTransacao);
  try
    I := Low(fDataAux);
    while I <= High(fDataAux) do
    begin
      if fDataAux[I].Active then
      begin
        if fDataAux[I].State in dsEditModes then
          fDataAux[I].Post;
        if (TClientDataSet(fDataAux[I]).ChangeCount > 0) then
          TClientDataSet(fDataAux[I]).ApplyUpdates(0);
      end;
      inc(I);
    end;
    // dm.sqlConexao.Commit(JaEmTransacao);
  except
    begin
      if not(fDataAux[I].State in [dsBrowse]) then
      begin
        if not CampoBranco(fDataAux[I]) then
          Exit;
        // raise eMyError.CreateFmt('Campos não preenchidos em "%s"', [fDataAux[i].Name]);
      end;
      TClientDataSet(fDataAux[I]).CancelUpdates;
      for j := I downto Low(fDataAux) do
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
    Result := True;
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
    Result := True;
  end;
end;

// funcao a ser colocar no onsettext dos campos datas
function CheckData(Sender: TField; text: String): Boolean;
begin
  Result := False;
  if (text = ' / /  ') or (text = ' / / ') then
  begin
    Sender.Clear;
    Result := True;
  end
  else
  begin
    try
      Sender.AsString := text;
      Result := True;
    except

      ShowMessage('Data inválida, digite novamente !');
      Sender.Clear;
      Result := True;

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
  I: Integer;
begin
  Result := '';
  Aux := Trim(fTermo);
  for I := 1 to fQuant - Length(Aux) do
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

function RemoveVirgula(Edit: TEdit): Double;
var
  Aux: String;
begin
  Aux := StringReplace(Edit.text, '.', '', [rfReplaceAll]);
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
  with TRegistry.Create do
    try
      RootKey := HKey_Local_Machine;
      if OpenKey('Software\OdontoSis', True) then
      begin
        CFGAcesso.Base := Crypt('D', ReadString('Base'));
        CFGAcesso.Servidor := Crypt('D', ReadString('Servidor'));
        CFGAcesso.Usuario := Crypt('D', ReadString('Usuario'));
        CFGAcesso.Senha := Crypt('D', ReadString('Senha'));
        if ReadString('Mostrar') = '' then
          CFGAcesso.bMostrar := True
        else
          CFGAcesso.bMostrar := StrToBool(Crypt('D', ReadString('Mostrar')));
        // ReadBool('Mostrar');
      end;
    finally
      free
    end;
End;

Procedure CarregaDadosCaixa(IDCaixa: Integer);
Begin
  With DM.qryAux do
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
      Caixa.DataFechamento := FieldByName('DATAFECHAMENTO').AsDateTime;
      Caixa.SaldoInicial := FieldByName('SALDOINICIAL').AsFloat;
      Caixa.Aberto := FieldByName('ABERTO').AsBoolean;
      Caixa.Observacoes := FieldByName('OBSERVACOES').AsString;
      Caixa.Geral := False;
    End;

    if IDCaixa = -1 then
    Begin
      Caixa.IDCaixa := -1;
      Caixa.IDOperador := Operador.ID;
      { Caixa.Numero := FieldByName('NUMERO').AsInteger;
        Caixa.DataCaixa := FieldByName('DTACAIXA').AsDateTime;
        Caixa.DataAbertura := FieldByName('DATAABERTURA').AsDateTime;
        Caixa.DataFechamento := FieldByname('DATAFECHAMENTO').AsDateTime;
        Caixa.SaldoInicial := FieldByName('SALDOINICIAL').AsFloat; }
      Caixa.Aberto := True;
      Caixa.Observacoes := 'Caixa GERAL do Sistema.';
      Caixa.Geral := True;
    End;
  End;

End;

Procedure CarregaCFGEmpresa;
Begin

  With DM.qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT EMPRESA.*, CIDADE.CODIBGE, CIDADE.NOME AS Cidade, CIDADE.UF FROM EMPRESA');
    SQL.Add('LEFT JOIN CIDADE ON EMPRESA.ID_CIDADE = CIDADE.ID_CIDADE');
    Open;

    if Not Eof then
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

  With DM.qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CFGGERAL');
    SQL.Add('WHERE ID_CFGGERAL = 1');
    Open;

    if Not Eof then
    Begin
      CFGGeral.ImpCabReceituario := FieldByName('ImpCabReceituario').AsBoolean;
      CFGGeral.ImpCabAtestado := FieldByName('ImpCabAtestado').AsBoolean;
      CFGGeral.ViasRecibo := FieldByName('VIASRECIBO').AsInteger;
    End;

    Close;
  End;
End;

Procedure CarregaOperador(ID: Integer);
Begin

  With DM.qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OPERADORES');
    SQL.Add('WHERE ID_OPERADORES = :pID');
    Parameters.ParamByName('pID').Value := ID;
    Open;

    Operador.ID := FieldByName('ID_OPERADORES').AsInteger;
    Operador.Nome := FieldByName('NOME').AsString;

    // Paciente
    Operador.ListaPacienteV := FieldByName('LISTAPACIENTEV').AsBoolean;
    Operador.ListaPacienteC := FieldByName('LISTAPACIENTEC').AsBoolean;
    Operador.ListaPacienteE := FieldByName('LISTAPACIENTEE').AsBoolean;
    Operador.AnamneseV := FieldByName('ANAMNESEV').AsBoolean;
    Operador.AnamneseC := FieldByName('ANAMNESEC').AsBoolean;
    Operador.AnamneseE := FieldByName('ANAMNESEE').AsBoolean;
    Operador.ExameOralV := FieldByName('EXAMEORALV').AsBoolean;
    Operador.ExameOralC := FieldByName('EXAMEORALC').AsBoolean;
    Operador.ExameOralE := FieldByName('EXAMEORALE').AsBoolean;
    Operador.PlanoTratamentoV := FieldByName('PLANOTRATAMENTOV').AsBoolean;
    Operador.PlanoTratamentoC := FieldByName('PLANOTRATAMENTOC').AsBoolean;
    Operador.PlanoTratamentoE := FieldByName('PLANOTRATAMENTOE').AsBoolean;
    Operador.FotoPacienteV := FieldByName('FOTOPACIENTEV').AsBoolean;
    Operador.FotoPacienteC := FieldByName('FOTOPACIENTEC').AsBoolean;
    Operador.FotoPacienteE := FieldByName('FOTOPACIENTEE').AsBoolean;

    // Cadastros
    Operador.OperadorSistemaV := FieldByName('OPERADORSISTEMAV').AsBoolean;
    Operador.OperadorSistemaC := FieldByName('OPERADORSISTEMAC').AsBoolean;
    Operador.OperadorSIstemaE := FieldByName('OPERADORSISTEMAE').AsBoolean;
    Operador.ProcedimentosV := FieldByName('PROCEDIMENTOSV').AsBoolean;
    Operador.ProcedimentosC := FieldByName('PROCEDIMENTOSC').AsBoolean;
    Operador.ProcedimentosE := FieldByName('PROCEDIMENTOSE').AsBoolean;
    Operador.CidadesV := FieldByName('CIDADESV').AsBoolean;
    Operador.CidadesC := FieldByName('CIDADESC').AsBoolean;
    Operador.CidadesE := FieldByName('CIDADESE').AsBoolean;
    Operador.ConveniosV := FieldByName('CONVENIOSV').AsBoolean;
    Operador.COnveniosC := FieldByName('CONVENIOSC').AsBoolean;
    Operador.ConveniosE := FieldByName('CONVENIOSE').AsBoolean;
    Operador.DentistasV := FieldByName('DENTISTASV').AsBoolean;
    Operador.DentistasC := FieldByName('DENTISTASC').AsBoolean;
    Operador.DentistasE := FieldByName('DENTISTASE').AsBoolean;
    Operador.AgendaV := FieldByName('AGENDAV').AsBoolean;
    Operador.AgendaC := FieldByName('AGENDAC').AsBoolean;
    Operador.AgendaE := FieldByName('AGENDAE').AsBoolean;
    Operador.EncaixeV := FieldByName('ENCAIXEV').AsBoolean;
    Operador.EncaixeC := FieldByName('ENCAIXEC').AsBoolean;
    Operador.EncaixeE := FieldByName('ENCAIXEE').AsBoolean;

    if FieldByName('NOME').AsString = 'admin' then
    Begin
      // Paciente
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

      // Cadastros
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
    End;

    Close;
  End;
End;

Procedure AbrePortaFirewall;
var
  sComando: String;
Begin
  if (VersaoWindows = 'Windows 7') or (VersaoWindows = 'Windows 8') then
  Begin
    sComando :=
      'netsh advfirewall firewall add rule name=OdontosisSQL dir=in action=allow protocol=TCP localport=1433';
    WinExec(PAnsiChar(ansistring(sComando)), SW_HIDE);
    sComando :=
      'netsh advfirewall firewall add rule name=OdontosisSQL dir=out action=allow protocol=TCP localport=1433';
    WinExec(PAnsiChar(ansistring(sComando)), SW_HIDE);
  End
  Else
  Begin
    sComando := 'netsh firewall add portopening TCP 1433 OdontosisSQL';
    WinExec(PAnsiChar(ansistring(sComando)), SW_HIDE);
  End;
End;

Function IntBol(Numero: Integer): Boolean;
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

Function BolInt(Verdadeiro: Boolean): Integer;
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
  sDente: String;
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
    sDente := 'Cúspide superior direito';
  End;

  if Dente = 'D14' then
  Begin
    sDente := '1º pré molar superior direito';
  End;

  if Dente = 'D15' then
  Begin
    sDente := '2º pré molar superior direito';
  End;

  if Dente = 'D16' then
  Begin
    sDente := '1º molar superior direito';
  End;

  if Dente = 'D17' then
  Begin
    sDente := '2º molar superior direito';
  End;

  if Dente = 'D18' then
  Begin
    sDente := '3º molar superior direito';
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
    sDente := 'Cúspide superior esquerdo';
  End;

  if Dente = 'D24' then
  Begin
    sDente := '1º pré molar superior esquerdo';
  End;

  if Dente = 'D25' then
  Begin
    sDente := '2º pré molar superior esquerdo';
  End;

  if Dente = 'D26' then
  Begin
    sDente := '1º molar superior esquerdo';
  End;

  if Dente = 'D27' then
  Begin
    sDente := '2º molar superior esquerdo';
  End;

  if Dente = 'D28' then
  Begin
    sDente := '3º molar superior esquerdo';
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
    sDente := 'Cúspide inferior direito';
  End;

  if Dente = 'D44' then
  Begin
    sDente := '1º pré molar inferior direito';
  End;

  if Dente = 'D45' then
  Begin
    sDente := '2º pré molar inferior direito';
  End;

  if Dente = 'D46' then
  Begin
    sDente := '1º molar inferior direito';
  End;

  if Dente = 'D47' then
  Begin
    sDente := '2º molar inferior direito';
  End;

  if Dente = 'D48' then
  Begin
    sDente := '3º molar inferior direito';
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
    sDente := 'Cúspide inferior esquerdo';
  End;

  if Dente = 'D34' then
  Begin
    sDente := '1º pré molar inferior esquerdo';
  End;

  if Dente = 'D35' then
  Begin
    sDente := '2º pré molar inferior esquerdo';
  End;

  if Dente = 'D36' then
  Begin
    sDente := '1º molar inferior esquerdo';
  End;

  if Dente = 'D37' then
  Begin
    sDente := '2º molar inferior esquerdo';
  End;

  if Dente = 'D38' then
  Begin
    sDente := '3º molar inferior esquerdo';
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
    sDente := 'Cúpide superior direito';
  End;

  if Dente = 'D54' then
  Begin
    sDente := '1º molar superior direito';
  End;

  if Dente = 'D55' then
  Begin
    sDente := '2º molar superior direito';
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
    sDente := 'Cúpide inferior direito';
  End;

  if Dente = 'D84' then
  Begin
    sDente := '1º molar inferior direito';
  End;

  if Dente = 'D85' then
  Begin
    sDente := '2º molar inferior direito';
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
    sDente := 'Cúpide superior esquerdo';
  End;

  if Dente = 'D64' then
  Begin
    sDente := '1º molar superior esquerdo';
  End;

  if Dente = 'D65' then
  Begin
    sDente := '2º molar superior esquerdo';
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
    sDente := 'Cúpide inferior esquerdo';
  End;

  if Dente = 'D74' then
  Begin
    sDente := '1º molar inferior esquerdo';
  End;

  if Dente = 'D75' then
  Begin
    sDente := '2º molar inferior esquerdo';
  End;

  Result := sDente;
end;

Function PastaArquivo: String;
var
  sPasta: String;
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
  while FileExists(PastaArquivo + 'Anexar.sql') do
  begin
    Sleep(2000);
    DeleteFile(PastaArquivo + 'Anexar.sql');
    DeleteFile(PastaArquivo + 'INS.odsis');
  end;
End;

Procedure GeraCategoriaProcedimentos(IDConvenio: Integer);
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
      frmMensagem.lblDescricao.caption := 'Gerando Procedimentos TUSS...';
      frmMensagem.Barra.Properties.Min := 0;
      frmMensagem.Barra.Properties.max := 12;
      frmMensagem.Barra.position := 0;
      frmMensagem.Show;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Diagnóstico e Avaliação Técnica';
      Post;

      frmMensagem.Update;
      frmMensagem.Barra.Properties.text :=
        'Gerando: Diagnóstico e Avaliação Técnica';
      frmMensagem.Update;
      GeraAvaliacaoTecnica;
      frmMensagem.Update;
      frmMensagem.Barra.position := 1;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Radiologia';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Radiologia';
      frmMensagem.Update;
      GeraRadiologia;
      frmMensagem.Barra.position := 2;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Testes e Exames de Laboratórios';
      Post;

      frmMensagem.Barra.Properties.text :=
        'Gerando: Testes e Exames de Laboratórios';
      frmMensagem.Update;
      GeraExamesLaboratorios;
      frmMensagem.Barra.position := 3;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Prevenção';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Prevenção';
      frmMensagem.Update;
      GeraPrevencao;
      frmMensagem.Barra.position := 4;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Odontopediatria';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Odontopediatria';
      frmMensagem.Update;
      GeraOdontopediatria;
      frmMensagem.Barra.position := 5;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Dentística';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Odontopediatria';
      frmMensagem.Update;
      GeraDentistica;
      frmMensagem.Barra.position := 6;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Endodontia';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Endodontia';
      frmMensagem.Update;
      GeraEndodontia;
      frmMensagem.Barra.position := 7;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Periodontia';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Periodontia';
      frmMensagem.Update;
      GeraPeriodontia;
      frmMensagem.Barra.position := 8;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Prótese';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Prótese';
      frmMensagem.Update;
      GeraProtese;
      frmMensagem.Barra.position := 9;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Cirurgia';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Cirurgia';
      frmMensagem.Update;
      GeraCirurgia;
      frmMensagem.Barra.position := 10;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Ortodontia';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Ortodontia';
      frmMensagem.Update;
      GeraOrtodontia;
      frmMensagem.Barra.position := 11;
      frmMensagem.Update;

      Append;
      FieldByName('ID_CONVENIO').AsInteger := IDConvenio;
      FieldByName('DESCRICAO').AsString := 'Implantodontia';
      Post;

      frmMensagem.Barra.Properties.text := 'Gerando: Implantodontia';
      frmMensagem.Update;
      GeraImplantodontia;

      frmMensagem.Close;
      FreeAndNil(frmMensagem);
      // CursorType(crDefault);
    End;

    Close;
  End;
End;

Procedure GeraAvaliacaoTecnica;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000065';
    FieldByName('DESCRICAO').AsString := 'Consulta Odontológica Inicial';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000049';
    FieldByName('DESCRICAO').AsString := 'Consulta Odontológica de Urgência';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000073';
    FieldByName('DESCRICAO').AsString :=
      'Consulta Odontológica para Avaliação técnica de Auditoria / Perícia';
    Post;

    Close;
  End;
End;

Procedure GeraRadiologia;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000421';
    FieldByName('DESCRICAO').AsString := 'Radiografia Periapical';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000375';
    FieldByName('DESCRICAO').AsString :=
      'Radiografia Interproximal – Bite-Wing';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000383';
    FieldByName('DESCRICAO').AsString := 'Radiografia Oclusal';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000430';
    FieldByName('DESCRICAO').AsString := 'Radiografia Postero-anterior';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000340';
    FieldByName('DESCRICAO').AsString := 'Radiografia da ATM';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000405';
    FieldByName('DESCRICAO').AsString :=
      'Radiografia Panorâmica de mandíbula / maxila (ortopantomografia)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000480';
    FieldByName('DESCRICAO').AsString :=
      'Telerradiografia com Traçado Cefalométrico';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000472';
    FieldByName('DESCRICAO').AsString := 'Telerradiografia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000367';
    FieldByName('DESCRICAO').AsString := 'Radiografia da mão e punho – carpal';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000308';
    FieldByName('DESCRICAO').AsString := 'Modelos Ortodônticos';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000456';
    FieldByName('DESCRICAO').AsString := 'Slides';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000278';
    FieldByName('DESCRICAO').AsString := 'Fotografia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000529';
    FieldByName('DESCRICAO').AsString :=
      'Tomografia Convencional – Linear ou Multi-Direcional';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000413';
    FieldByName('DESCRICAO').AsString :=
      'Radiografia Panorâmica de Mandíbula / Maxila (ortopantomografia) com Traçado Cefalométrico';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90020140';
    FieldByName('DESCRICAO').AsString :=
      'Protocolo de TOMOGRAFIA COMPUTADORIZADA - primeira tomada - por segmento';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90020142';
    FieldByName('DESCRICAO').AsString :=
      'Protocolo de TOMOGRAFIA COMPUTADORIZADA – unilateral';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90020143';
    FieldByName('DESCRICAO').AsString :=
      'Protocolo de TOMOGRAFIA COMPUTADORIZADA - Por área específica da mandíbula (mento = queixo)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90020144';
    FieldByName('DESCRICAO').AsString :=
      'Protocolo de TOMOGRAFIA COMPUTADORIZADA para ATM – unilateral';
    Post;

    Close;
  End;
End;

Procedure GeraExamesLaboratorios;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000252';
    FieldByName('DESCRICAO').AsString := 'Teste de PH Salivar';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000244';
    FieldByName('DESCRICAO').AsString := 'Teste Fluxo Salivar';
    Post;
    Close;
  End;
End;

Procedure GeraPrevencao;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000198';
    FieldByName('DESCRICAO').AsString := 'Profilaxia – Polimento Coronário';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000090';
    FieldByName('DESCRICAO').AsString := 'Aplicação Tópica de Flúor';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85300047';
    FieldByName('DESCRICAO').AsString := 'Raspagem Supra-Gengival';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000163';
    FieldByName('DESCRICAO').AsString :=
      'Controle de Biofilme (Placa Bacteriana)';
    Post;
    Close;
  End;
End;

Procedure GeraOdontopediatria;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000112';
    FieldByName('DESCRICAO').AsString :=
      'Aplicação Tópica de Verniz Fluoretado';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000074';
    FieldByName('DESCRICAO').AsString :=
      'Aplicação de Selante de Fossulas e Fissuras';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000058';
    FieldByName('DESCRICAO').AsString :=
      'Aplicação de Selante – Técnica Invasiva';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000031';
    FieldByName('DESCRICAO').AsString := 'Aplicação de Cariostático';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '84000201';
    FieldByName('DESCRICAO').AsString := 'Remineralizacão';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90050215';
    FieldByName('DESCRICAO').AsString :=
      'Adequação do meio bucal c/ ionômero de vidro (por hemiarcada)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90050216';
    FieldByName('DESCRICAO').AsString :=
      'Adequação do meio bucal c/ IRM (por hemiarcada)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100137';
    FieldByName('DESCRICAO').AsString := 'Restauração em Ionômero de vidro';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '83000135';
    FieldByName('DESCRICAO').AsString :=
      'Restauração Atraumática em dente decíduo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '83000046';
    FieldByName('DESCRICAO').AsString := 'Coroa de Aço em dente decíduo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100013';
    FieldByName('DESCRICAO').AsString := 'Capeamento Pulpar direto';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '83000127';
    FieldByName('DESCRICAO').AsString := 'Pulpotomia em dente decíduo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '83000151';
    FieldByName('DESCRICAO').AsString :=
      'Tratamento Endodôntico em dente decíduo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '83000089';
    FieldByName('DESCRICAO').AsString := 'Exodontia de Decíduos';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000014';
    FieldByName('DESCRICAO').AsString := 'Condicionamento em Odontologia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001707';
    FieldByName('DESCRICAO').AsString := 'Ulectomia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '87000024';
    FieldByName('DESCRICAO').AsString :=
      'Atividade Educativa para Pais e/ou cuidadores';
    Post;
  End;
End;

Procedure GeraDentistica;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100099';
    FieldByName('DESCRICAO').AsString := 'Restauração de Amálgama – 1 face';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100102';
    FieldByName('DESCRICAO').AsString := 'Restauração de Amálgama – 2 faces';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100110';
    FieldByName('DESCRICAO').AsString := 'Restauração de Amálgama – 3 faces';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100129';
    FieldByName('DESCRICAO').AsString := 'Restauração de Amálgama – 4 faces';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100196';
    FieldByName('DESCRICAO').AsString :=
      'Restauração de Resina Fotopolimerizável – 1 faces';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100200';
    FieldByName('DESCRICAO').AsString :=
      'Restauração de Resina Fotopolimerizável – 2 faces';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100218';
    FieldByName('DESCRICAO').AsString :=
      'Restauração de Resina Fotopolimerizável – 3 ou 4 faces';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85100064';
    FieldByName('DESCRICAO').AsString :=
      'Faceta Direta em Resina Fotopolimerizável';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90060322';
    FieldByName('DESCRICAO').AsString :=
      'Núcleo de Preenchimento em Ionomero de Vidro';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400211';
    FieldByName('DESCRICAO').AsString := 'Núcleo de Preenchimento';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90060325';
    FieldByName('DESCRICAO').AsString :=
      'Pinos de retenção (excluindo a restauração)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85300020';
    FieldByName('DESCRICAO').AsString :=
      'mobilização Dentária em Dentes Permanentes';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400025';
    FieldByName('DESCRICAO').AsString := 'Ajuste Oclusal por Desgaste Seletivo';
    Post;

  End;
End;

Procedure GeraEndodontia;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200166';
    FieldByName('DESCRICAO').AsString := 'Tratamento Endodôntico Unirradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200140';
    FieldByName('DESCRICAO').AsString := 'Tratamento Endodôntico Birradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200158';
    FieldByName('DESCRICAO').AsString :=
      'Tratamento Endodôntico Multirradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90070413';
    FieldByName('DESCRICAO').AsString := 'Tratamento Endodôntico 04 condutos';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200115';
    FieldByName('DESCRICAO').AsString :=
      'Retratamento Endodôntico Unirradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200093';
    FieldByName('DESCRICAO').AsString :=
      'Retratamento Endodôntico Birradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200107';
    FieldByName('DESCRICAO').AsString :=
      'Retratamento Endodôntico Multirradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90070417';
    FieldByName('DESCRICAO').AsString := 'Retratamento Endodôntico 04 condutos';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200123';
    FieldByName('DESCRICAO').AsString := 'Tratamento de Perfuração Endodontica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200077';
    FieldByName('DESCRICAO').AsString := 'Remoção de Núcleo Intrarradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90070420';
    FieldByName('DESCRICAO').AsString :=
      'Capeamento Pulpar (excluindo restauração final)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200042';
    FieldByName('DESCRICAO').AsString := 'Pulpotomia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200018';
    FieldByName('DESCRICAO').AsString := 'Clareamento de Dente Desvitalizado';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200026';
    FieldByName('DESCRICAO').AsString := 'Preparo para Núcleo Intrarradicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200131';
    FieldByName('DESCRICAO').AsString :=
      'Tratamento Endodôntico de Dente com Rizogenese Incompleta';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85200034';
    FieldByName('DESCRICAO').AsString := 'Pulpectomia';
    Post;
  End;
End;

Procedure GeraPeriodontia;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85300039';
    FieldByName('DESCRICAO').AsString :=
      'Raspagem Sub-Gengival / Alisamento Radicular';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90080511';
    FieldByName('DESCRICAO').AsString :=
      'Tratamento não cirúrgico da Periodontite avançada p/ seguimento';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85300063';
    FieldByName('DESCRICAO').AsString :=
      'Tratamento de Obscesso Periodontal Agudo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85300012';
    FieldByName('DESCRICAO').AsString :=
      'Dessensibilização Dentária - p/ segmento';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85300055';
    FieldByName('DESCRICAO').AsString :=
      'Remoção Fatores de Retenção do Biofilme Dental e Placa Bacteriana';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000921';
    FieldByName('DESCRICAO').AsString := 'Gengivectomia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000417';
    FieldByName('DESCRICAO').AsString := 'Cirurgia Periodontal a Retalho';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000557';
    FieldByName('DESCRICAO').AsString := 'Cunha Proximal';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000190';
    FieldByName('DESCRICAO').AsString :=
      'Aprofundamento / Aumento de vestíbulo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000689';
    FieldByName('DESCRICAO').AsString := 'Enxerto Pediculado';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000662';
    FieldByName('DESCRICAO').AsString := 'Enxerto Gengival Livre';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001073';
    FieldByName('DESCRICAO').AsString := 'Odonto-Secção';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000069';
    FieldByName('DESCRICAO').AsString :=
      'Amputação Radicular s/ Obturação Retrógrada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000050';
    FieldByName('DESCRICAO').AsString :=
      'Amputação Radicular c/ Obturação Retrógrada';
    Post;
  End;
End;

Procedure GeraProtese;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90090610';
    FieldByName('DESCRICAO').AsString :=
      'Planejamento em Prótese (modelo de Estudos - par, mont. em articul. semi-austável – Acima de 4 elementos de Prótese Fixa)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '81000243';
    FieldByName('DESCRICAO').AsString := 'Diagnóstico por meio de encerramento';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90090612';
    FieldByName('DESCRICAO').AsString :=
      'Ajuste Oclusal Protético (valor total)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400556';
    FieldByName('DESCRICAO').AsString := 'Restauração Metálica Fundida';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400513';
    FieldByName('DESCRICAO').AsString := 'Restauração em Cerâmica Pura – Inlay';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400521';
    FieldByName('DESCRICAO').AsString := 'Restauração em Cerâmica Pura – Onlay';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400505';
    FieldByName('DESCRICAO').AsString := 'Remoção de Trabalho Protético';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400467';
    FieldByName('DESCRICAO').AsString := 'Recimentação de Trabalho Protético';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400220';
    FieldByName('DESCRICAO').AsString := 'Núcleo Metálico Fundido';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400084';
    FieldByName('DESCRICAO').AsString := 'Coroa Provisória sem Pino';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400076';
    FieldByName('DESCRICAO').AsString := 'Coroa Provisória com Pino';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400475';
    FieldByName('DESCRICAO').AsString := 'Reembasamento de Coroa Provisória';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400092';
    FieldByName('DESCRICAO').AsString := 'Coroa Total Acrílica Prensada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400106';
    FieldByName('DESCRICAO').AsString := 'Coroa Total em Cerâmica Pura';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400157';
    FieldByName('DESCRICAO').AsString := 'Coroa Total Metalo-Cerâmica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400173';
    FieldByName('DESCRICAO').AsString :=
      'Coroa Total Metaloplástica Resina Acrílica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400149';
    FieldByName('DESCRICAO').AsString := 'Coroa Total Metálica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90090626';
    FieldByName('DESCRICAO').AsString := 'Coroa 3/4 ou 4/5';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400181';
    FieldByName('DESCRICAO').AsString := 'Faceta em Cerâmica Pura';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400335';
    FieldByName('DESCRICAO').AsString :=
      'Prótese Parcial Fixa em Metalo Cerâmica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400343';
    FieldByName('DESCRICAO').AsString :=
      'Prótese Parcial Fixa em Metalo Plástica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400289';
    FieldByName('DESCRICAO').AsString := 'Prótese Fixa Adesiva Direta (Prov.)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400300';
    FieldByName('DESCRICAO').AsString :=
      'Prótese Fixa Adesiva Indireta Metalo-Cerâmica (até 3 elementos)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400319';
    FieldByName('DESCRICAO').AsString :=
      'Prótese Fixa Adesiva Indireta Metalo-Plástica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400394';
    FieldByName('DESCRICAO').AsString :=
      'Prótese Parcial Removível Provisória em Acrílico com ou sem Grampos';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400386';
    FieldByName('DESCRICAO').AsString :=
      'Prótese Parcial Removível com Grampos Bilateral';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400378';
    FieldByName('DESCRICAO').AsString :=
      'Prótese Parcial Removível com Encaixes de Precisão ou de Semi Precisão';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90090636';
    FieldByName('DESCRICAO').AsString := 'Encaixe Fêmea ou Macho por Elemento';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400483';
    FieldByName('DESCRICAO').AsString :=
      'Reembasamento de Prótese Total ou Parcial – imediato (em consultório)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400408';
    FieldByName('DESCRICAO').AsString := 'Prótese Total';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400424';
    FieldByName('DESCRICAO').AsString := 'Prótese Total Incolor';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '54004168';
    FieldByName('DESCRICAO').AsString := 'Prótese Total Imediata';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400491';
    FieldByName('DESCRICAO').AsString :=
      'Reembasamento de Prótese Total ou Parcial – imediato (em laboratório)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400203';
    FieldByName('DESCRICAO').AsString := 'Guia Cirúrgico para Prótese Imediata';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90090645';
    FieldByName('DESCRICAO').AsString := 'Jig ou Front-Plato';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400050';
    FieldByName('DESCRICAO').AsString :=
      'Conserto em Prótese Total (em Consultório e em Laboratório)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85400246';
    FieldByName('DESCRICAO').AsString :=
      'Órtese Miorrelaxante (Placa Oclusal Estabilizadora)';
    Post;
  End;

End;

Procedure GeraCirurgia;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000298';
    FieldByName('DESCRICAO').AsString := 'Bridectomia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000026';
    FieldByName('DESCRICAO').AsString :=
      'Acompanhamento de Tratamento / Procedimento Cirúrgico em Ontologia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000875';
    FieldByName('DESCRICAO').AsString := 'Exodontia Simples de Permanente';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000816';
    FieldByName('DESCRICAO').AsString := 'Exodontia a Retalho';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000859';
    FieldByName('DESCRICAO').AsString := 'Exodontia de Raiz Residual';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000034';
    FieldByName('DESCRICAO').AsString := 'Alveoloplastia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000239';
    FieldByName('DESCRICAO').AsString := 'Biópsia de Boca';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000247';
    FieldByName('DESCRICAO').AsString := 'Biópsia de Glândula Salivar';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000255';
    FieldByName('DESCRICAO').AsString := 'Biópsia de Lábio';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000263';
    FieldByName('DESCRICAO').AsString := 'Biópsia de Língua';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000271';
    FieldByName('DESCRICAO').AsString := 'Biópsia de Mandíbula';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000280';
    FieldByName('DESCRICAO').AsString := 'Biópsia de Maxila';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001154';
    FieldByName('DESCRICAO').AsString := 'Reconstrução de Sulco Gengivo-Labial';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000182';
    FieldByName('DESCRICAO').AsString :=
      'Apicetomia Unirradiculares sem Obturação Retrógrada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000174';
    FieldByName('DESCRICAO').AsString :=
      'Apicetomia Unirradiculares com Obturação Retrógrada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000085';
    FieldByName('DESCRICAO').AsString :=
      'Apicetomia Birradiculares sem Obturação Retrógrada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000077';
    FieldByName('DESCRICAO').AsString :=
      'Apicetomia Birradiculares com Obturação Retrógrada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000166';
    FieldByName('DESCRICAO').AsString :=
      'Apicetomia Multirradiculares sem Obturação Retrógrada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000158';
    FieldByName('DESCRICAO').AsString :=
      'Apicetomia Multirradiculares com Obturação Retrógrada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000883';
    FieldByName('DESCRICAO').AsString := 'Frenulectomia Labial';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000905';
    FieldByName('DESCRICAO').AsString := 'Frenulotomia Labial';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000891';
    FieldByName('DESCRICAO').AsString := 'Frenulectomia Lingual';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000913';
    FieldByName('DESCRICAO').AsString := 'Frenulotomia Lingual';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001545';
    FieldByName('DESCRICAO').AsString :=
      'Tratamento Cirúrgico de Bridas Constritivas da Região Buco-Maxilo-Facial';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001286';
    FieldByName('DESCRICAO').AsString :=
      'Remoção de Dentes Inclusos / Impactados';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001367';
    FieldByName('DESCRICAO').AsString := 'Remoção de Odontoma';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001596';
    FieldByName('DESCRICAO').AsString :=
      'Tratamento Cirúrgico de Tumores Benignos de Tecidos Osseos/Cartinagilosos na Região Buco-Maxilo-Facial-Osteoma';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000786';
    FieldByName('DESCRICAO').AsString :=
      'Exerese ou Excisão de Cistos Odontológicos';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000794';
    FieldByName('DESCRICAO').AsString := 'Exerese ou Excisão de Mucocele';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000778';
    FieldByName('DESCRICAO').AsString :=
      'Exerese ou Excisão de Cálculo Salivar';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001022';
    FieldByName('DESCRICAO').AsString :=
      'Incisão e Drenagem Extra-Oral de Abscesso, Hematoma e/ou Flegmão da Região Buco-Maxilo-Facial';
    Post;
  End;
End;

Procedure GeraOrtodontia;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000098';
    FieldByName('DESCRICAO').AsString := 'Aparelho Ortodôntico Fixo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90110814';
    FieldByName('DESCRICAO').AsString := 'Anéis ortodônticos c/ gancho';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000535';
    FieldByName('DESCRICAO').AsString := 'Placa Lábio-Ativa (Bumper)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000055';
    FieldByName('DESCRICAO').AsString := 'Aparelho Extra-Bucal';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '83000097';
    FieldByName('DESCRICAO').AsString := 'Mantenedor de Espaço Fixo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '83000100';
    FieldByName('DESCRICAO').AsString := 'Mantenedor de Espaço Removível';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000390';
    FieldByName('DESCRICAO').AsString := 'Mentoneira';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000551';
    FieldByName('DESCRICAO').AsString := 'Plano Inclinado';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000560';
    FieldByName('DESCRICAO').AsString := 'Quadrihélice';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000373';
    FieldByName('DESCRICAO').AsString :=
      'Manutenção de Aparelho Ortodôntico – Aparelho Removível';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000357';
    FieldByName('DESCRICAO').AsString :=
      'Manutenção de Aparelho Ortodôntico – Aparelho Fixo';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000411';
    FieldByName('DESCRICAO').AsString := 'Monobloco';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90110837';
    FieldByName('DESCRICAO').AsString :=
      'Modelo de estudos e plano de tratamento';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000462';
    FieldByName('DESCRICAO').AsString := 'Placa Hawley';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000470';
    FieldByName('DESCRICAO').AsString := 'Placa Hawley – com Torno Expansor';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000144';
    FieldByName('DESCRICAO').AsString := 'Arco Lingual';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000209';
    FieldByName('DESCRICAO').AsString := 'Contenção Fixa – por Arcada';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000225';
    FieldByName('DESCRICAO').AsString := 'Disjuntor Palatino – Hyrax';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000233';
    FieldByName('DESCRICAO').AsString := 'Disjuntor Palatino – Macnamara';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000403';
    FieldByName('DESCRICAO').AsString := 'Modelador Elástico de Bimler';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000179';
    FieldByName('DESCRICAO').AsString := 'Bionator de Balters';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000110';
    FieldByName('DESCRICAO').AsString :=
      'Aparelho Ortodôntico Fixo Metálico Parcial';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000195';
    FieldByName('DESCRICAO').AsString := 'Botão de Nance Fixo Superior';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000314';
    FieldByName('DESCRICAO').AsString := 'Grade Palatina Fixa';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000322';
    FieldByName('DESCRICAO').AsString := 'Grade Palatina Removível';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000578';
    FieldByName('DESCRICAO').AsString := 'Regulador de função Frankel';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000160';
    FieldByName('DESCRICAO').AsString := 'Barra Transpalatina Removível';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000152';
    FieldByName('DESCRICAO').AsString := 'Barra Transpalatina Fixa';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000284';
    FieldByName('DESCRICAO').AsString := 'Distalizador tipo Jones Jig';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000330';
    FieldByName('DESCRICAO').AsString := 'Herbst Encapsulado';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000438';
    FieldByName('DESCRICAO').AsString := 'Pistas Diretas de Planas';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000381';
    FieldByName('DESCRICAO').AsString :=
      'Máscara Facial – Delaire e Tração Reserva';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000489';
    FieldByName('DESCRICAO').AsString := 'Placa de Mordida Ortodôntica';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000128';
    FieldByName('DESCRICAO').AsString :=
      'Aparelho Removível com Alças Bionator Invertida ou de Escheler';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000047';
    FieldByName('DESCRICAO').AsString := 'Aparelho de Thurow';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90110863';
    FieldByName('DESCRICAO').AsString :=
      'Aparelho de Disfunção Têmpero-Mandibular (DTM)';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '86000250';
    FieldByName('DESCRICAO').AsString := 'Distalizador de Hilgers';
    Post;
  End;
End;

function valorPorExtenso(vlr: real): string;
const
  unidade: array [1 .. 19] of string = ('um', 'dois', 'três', 'quatro', 'cinco',
    'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze', 'quatorze',
    'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  centena: array [1 .. 9] of string = ('cento', 'duzentos', 'trezentos',
    'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
    'novecentos');
  dezena: array [2 .. 9] of string = ('vinte', 'trinta', 'quarenta',
    'cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array [0 .. 4] of string = ('', 'mil', 'milhão', 'bilhão',
    'trilhão');
  qualificaP: array [0 .. 4] of string = ('', 'mil', 'milhões', 'bilhões',
    'trilhões');
var
  inteiro: Int64;
  resto: real;
  vlrS, S, sAux, vlrP, centavos: string;
  n, unid, dez, cent, Tam, I: Integer;
  umReal, tem: Boolean;
begin
  if (vlr = 0) then
  begin
    valorPorExtenso := 'zero';
    Exit;
  end;

  inteiro := trunc(vlr); // parte inteira do valor
  resto := vlr - inteiro; // parte fracionária do valor
  vlrS := IntToStr(inteiro);
  if (Length(vlrS) > 15) then
  begin
    valorPorExtenso := 'Erro: valor superior a 999 trilhões.';
    Exit;
  end;

  S := '';
  centavos := IntToStr(round(resto * 100));

  // definindo o extenso da parte inteira do valor
  I := 0;
  umReal := False;
  tem := False;
  while (vlrS <> '0') do
  begin
    Tam := Length(vlrS);
    // retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
    // 1a. parte = 789 (centena)
    // 2a. parte = 456 (mil)
    // 3a. parte = 123 (milhões)
    if (Tam > 3) then
    begin
      vlrP := Copy(vlrS, Tam - 2, Tam);
      vlrS := Copy(vlrS, 1, Tam - 3);
    end
    else
    begin // última parte do valor
      vlrP := vlrS;
      vlrS := '0';
    end;
    if (vlrP <> '000') then
    begin
      sAux := '';
      if (vlrP = '100') then
        sAux := 'cem'
      else
      begin
        n := StrToInt(vlrP); // para n = 371, tem-se:
        cent := n div 100; // cent = 3 (centena trezentos)
        dez := (n mod 100) div 10; // dez  = 7 (dezena setenta)
        unid := (n mod 100) mod 10; // unid = 1 (unidade um)
        if (cent <> 0) then
          sAux := centena[cent];
        if ((dez <> 0) or (unid <> 0)) then
        begin
          if ((n mod 100) <= 19) then
          begin
            if (Length(sAux) <> 0) then
              sAux := sAux + ' e ' + unidade[n mod 100]
            else
              sAux := unidade[n mod 100];
          end
          else
          begin
            if (Length(sAux) <> 0) then
              sAux := sAux + ' e ' + dezena[dez]
            else
              sAux := dezena[dez];
            if (unid <> 0) then
              if (Length(sAux) <> 0) then
                sAux := sAux + ' e ' + unidade[unid]
              else
                sAux := unidade[unid];
          end;
        end;
      end;
      if ((vlrP = '1') or (vlrP = '001')) then
      begin
        if (I = 0) // 1a. parte do valor (um real)
        then
          umReal := True
        else
          sAux := sAux + ' ' + qualificaS[I];
      end
      else if (I <> 0) then
        sAux := sAux + ' ' + qualificaP[I];
      if (Length(S) <> 0) then
        S := sAux + ', ' + S
      else
        S := sAux;
    end;
    if (((I = 0) or (I = 1)) and (Length(S) <> 0)) then
      tem := True; // tem centena ou mil no valor
    I := I + 1; // próximo qualificador: 1- mil, 2- milhão, 3- bilhão, ...
  end;

  if (Length(S) <> 0) then
  begin
    if (umReal) then
      S := S + ' real'
    else if (tem) then
      S := S + ' reais'
    else
      S := S + ' de reais';
  end;
  // definindo o extenso dos centavos do valor
  if (centavos <> '0') // valor com centavos
  then
  begin
    if (Length(S) <> 0) // se não é valor somente com centavos
    then
      S := S + ' e ';
    if (centavos = '1') then
      S := S + 'um centavo'
    else
    begin
      n := StrToInt(centavos);
      if (n <= 19) then
        S := S + unidade[n]
      else
      begin // para n = 37, tem-se:
        unid := n mod 10; // unid = 37 % 10 = 7 (unidade sete)
        dez := n div 10; // dez  = 37 / 10 = 3 (dezena trinta)
        S := S + dezena[dez];
        if (unid <> 0) then
          S := S + ' e ' + unidade[unid];
      end;
      S := S + ' centavos';
    end;
  end;
  valorPorExtenso := S;
end;

Procedure GeraImplantodontia;
var
  IDCategoria: Integer;
Begin
  With DM.qryAux2 do
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
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82000980';
    FieldByName('DESCRICAO').AsString := 'Implante Ósseo Integrado';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85500038';
    FieldByName('DESCRICAO').AsString :=
      'Coroa Total Metalo-Cerâmica sobre Implante';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001456';
    FieldByName('DESCRICAO').AsString :=
      'Sedação Medicamentosa Ambulatorial em Odontologia';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85500062';
    FieldByName('DESCRICAO').AsString := 'Guia Cirúrgico para Implante';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '82001049';
    FieldByName('DESCRICAO').AsString :=
      'Levantamento de Seio Maxilar com Osso Autógeno';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85500178';
    FieldByName('DESCRICAO').AsString := 'Protocolo Branemark 5 Implantes';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '85500160';
    FieldByName('DESCRICAO').AsString := 'Protocolo Branemark 4 Implantes';
    Post;
    Append;
    FieldByName('ID_CATEGORIAPROCEDIMENTO').AsInteger := IDCategoria;
    FieldByName('CODPROCEDIMENTO').AsString := '90120935';
    FieldByName('DESCRICAO').AsString :=
      'Elemento suspenso de prótese fixa em metalo ceramica – Pontico';
    Post;

    Close;
  End;
End;

end.
