unit L_DocumentosPersonalizadosEmitidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Data.DB, Data.Win.ADODB, JvComponentBase, JvEnterTab,
  cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Funcoes,
  {frxClass, frxRich,} Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  cxButtons;

type
  TfrmListaDocumentosPersonalizadosEmitidos = class(TfrmListaPadrao)
   // frxRichObject1: TfrxRichObject;
   // Relatorio: TfrxReport;
    mmoTexto: TRichEdit;
    qryPadraoUsarPaciente: TBooleanField;
    qryPadraoUsarDentista: TBooleanField;
    qryPadraoUsarConsultorio: TBooleanField;
    qryPadraoDESCRICAO: TStringField;
    qryPadraoID_DOCUMENTOSEMITIDOS: TAutoIncField;
    qryPadraoID_DOCUMENTOS: TIntegerField;
    qryPadraoID_PACIENTE: TIntegerField;
    qryPadraoID_MEDICO: TIntegerField;
    qryPadraoID_EMPRESA: TIntegerField;
    qryPadraoDATE: TDateTimeField;
    qryPadraoPaciente: TStringField;
    qryPadraoDentista: TStringField;
    qryPadraoConsultorio: TStringField;
    qryPadraoDOCUMENTO: TBlobField;
    btnImprimir: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure RelatorioGetValue(const VarName: string; var Value: Variant);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    Procedure SubstituiCampos;
    Procedure SubstituiPacientes;
    Procedure SubstituiDentista;
    Procedure SubstituiConsultorio;
    Procedure SubstituiGeral;
    Procedure ProcuraSubstitui(InSearch, InReplace: String);
    Procedure FiltraPorClick(OrderBy : String);
  public
    { Public declarations }
  end;

var
  frmListaDocumentosPersonalizadosEmitidos: TfrmListaDocumentosPersonalizadosEmitidos;

implementation

{$R *.dfm}

uses C_EmissaoDocumentoPersonalizado;

procedure TfrmListaDocumentosPersonalizadosEmitidos.btnAdicionarClick(
  Sender: TObject);
begin
  inherited;
  if not Operador.EmiDocPersonalizadoC then
  Begin
    application.MessageBox
      ('Operador não tem permissão para emitir um documento personalizado!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadDocumentoPersonalizado, frmCadDocumentoPersonalizado);
  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.btnEditarClick(
  Sender: TObject);
begin
  inherited;

  if qryPadraoID_DOCUMENTOSEMITIDOS.AsString = '' then
    Begin
      Exit;
    End;

  if not Operador.EmiDocPersonalizadoE then
  Begin
    application.MessageBox
      ('Operador não tem permissão para editar um documento personalizado!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  Application.CreateForm(TfrmCadDocumentoPersonalizado, frmCadDocumentoPersonalizado);
  frmCadDocumentoPersonalizado.iIDDocPersonalizado := qryPadraoID_DOCUMENTOSEMITIDOS.AsInteger;
  frmCadDocumentoPersonalizado.CarregaFiltros;
  frmCadDocumentoPersonalizado.ShowModal;
  FreeAndNil(frmCadDocumentoPersonalizado);
  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.btnImprimirClick(
  Sender: TObject);
begin
  inherited;
  if qryPadraoID_DOCUMENTOSEMITIDOS.AsString <> '' then
    Begin
      (qryPadrao.FieldByName('DOCUMENTO') As TBlobField).SaveToFile('C:\Odontosis\Backup\tmp.rtf');
      mmoTexto.Lines.LoadFromFile('C:\Odontosis\Backup\tmp.rtf');
      DeleteFile('C:\Odontosis\Backup\tmp.rtf');
      mmoTexto.Visible := True;
      SubstituiCampos;
      mmoTexto.Lines.SaveToFile('C:\RelAux.rtf');
      mmoTexto.Visible := False;
      //Relatorio.ShowReport;
      DeleteFile('C:\RelAux.rtf');
    End;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.FiltraPorClick(
  OrderBy: String);
begin
  With qryPadrao do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ODSWORD.dbo.DOCUMENTOS.PACIENTE As UsarPaciente, ODSWORD.dbo.DOCUMENTOS.DENTISTA As UsarDentista, ODSWORD.dbo.DOCUMENTOS.CONSULTORIO As UsarConsultorio, ODSWORD.dbo.DOCUMENTOS.DESCRICAO,');
      SQL.Add('ODSWORD.dbo.DOCUMENTOS.DOCUMENTO, ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_DOCUMENTOSEMITIDOS, ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_DOCUMENTOS, ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_PACIENTE,');
      SQL.Add('ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_MEDICO, ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_EMPRESA, ODSWORD.dbo.DOCUMENTOSEMITIDOS.DATE, ODONTOSIS.DBO.PACIENTE.NOME AS Paciente,');
      SQL.Add('ODONTOSIS.DBO.MEDICOS.NOME AS Dentista, ODONTOSIS.DBO.EMPRESA.NOME As Consultorio FROM ODSWORD.dbo.DOCUMENTOSEMITIDOS');
      SQL.Add('INNER JOIN ODSWORD.dbo.DOCUMENTOS ON ODSWORD.dbo.DOCUMENTOS.ID_DOCUMENTOS = ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_DOCUMENTOS');
      SQL.Add('LEFT JOIN ODONTOSIS.dbo.PACIENTE ON ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_PACIENTE = ODONTOSIS.dbo.PACIENTE.ID_PACIENTE');
      SQL.Add('LEFT JOIN ODONTOSIS.dbo.MEDICOS ON ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_MEDICO = ODONTOSIS.dbo.MEDICOS.ID_MEDICO');
      SQL.Add('LEFT JOIN ODONTOSIS.dbo.EMPRESA ON ODSWORD.dbo.DOCUMENTOSEMITIDOS.ID_EMPRESA = ODONTOSIS.dbo.EMPRESA.ID_EMPRESA');
      SQL.Add(OrderBy);
      Open;
    End;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.FormActivate(
  Sender: TObject);
begin
   qryPadrao.Close;
   qryPadrao.Open;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.gListaTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
begin
  inherited;
  case ACol of
    0: Begin
       EdtPesquisa.DataField := 'ID_DOCUMENTOSEMITIDOS';
       GroupBox1.Caption := 'Cod.';
       FiltraPorClick('Order By ID_DOCUMENTOSEMITIDOS');
    End;
    1: Begin
       EdtPesquisa.DataField := 'DESCRICAO';
       GroupBox1.Caption := 'Descrição';
       FiltraPorClick('Order By DESCRICAO, ID_DOCUMENTOSEMITIDOS');
    End;
    2: Begin
       EdtPesquisa.DataField := 'DATE';
       GroupBox1.Caption := 'Data';
       FiltraPorClick('Order By Date, ID_DOCUMENTOSEMITIDOS');
    End;
    3: Begin
       EdtPesquisa.DataField := 'ID_PACIENTE';
       GroupBox1.Caption := 'Cod. Paciente';
       FiltraPorClick('Order By ID_PACIENTE, PACIENTE, DESCRICAO, ID_DOCUMENTOSEMITIDOS');
    End;
    4: Begin
       EdtPesquisa.DataField := 'PACIENTE';
       GroupBox1.Caption := 'Nome Paciente';
       FiltraPorClick('Order By PACIENTE, ID_PACIENTE, DESCRICAO, ID_DOCUMENTOSEMITIDOS');
    End;
    5: Begin
       EdtPesquisa.DataField := 'ID_MEDICO';
       GroupBox1.Caption := 'Cod. Dentista';
       FiltraPorClick('Order By ID_MEDICO, DENTISTA, DESCRICAO, ID_DOCUMENTOSEMITIDOS');
    End;
    6: Begin
       EdtPesquisa.DataField := 'DENTISTA';
       GroupBox1.Caption := 'Nome Dentista';
       FiltraPorClick('Order By DENTISTA, ID_MEDICO, DESCRICAO, ID_DOCUMENTOSEMITIDOS');
    End;
    7: Begin
       EdtPesquisa.DataField := 'ID_EMPRESA';
       GroupBox1.Caption := 'Cod. Consultório';
       FiltraPorClick('Order By ID_EMPRESA, CONSULTORIO, DESCRICAO, ID_DOCUMENTOSEMITIDOS');
    End;
    8: Begin
       EdtPesquisa.DataField := 'CONSULTORIO';
       GroupBox1.Caption := 'Nome Consultório';
       FiltraPorClick('Order By CONSULTORIO, ID_EMPRESA, DESCRICAO, ID_DOCUMENTOSEMITIDOS');
    End;
  end;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.ProcuraSubstitui(InSearch,
  InReplace: String);
var
  x,
  ToEnd : Integer;
  OldCursor : Tcursor;
begin
 oldCursor := Screen.Cursor;
   Screen.Cursor := crHourglass;
   with mmoTexto do
   begin
     X := 0;
     ToEnd := length(Text) ;
     X := FindText(inSearch, X, ToEnd, []) ;
     while X <> -1 do
     begin
       SetFocus;
       SelStart := X;
       SelLength := length(inSearch) ;
       SelText := InReplace;
       X := FindText(inSearch,
                     X + length(InReplace),
                     ToEnd, []) ;
     end;
   end;
   Screen.Cursor := oldCursor;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.RelatorioGetValue(
  const VarName: string; var Value: Variant);
var
  sl: TStringList;
begin
  if CompareText(VarName, 'RELATORIO') = 0 then
  begin
    sl := TStringList.Create;
    sl.LoadFromFile('C:\RelAux.rtf');
    Value := sl.Text;
    sl.Free;
  end;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.SubstituiCampos;
begin
  if qryPadraoUsarPaciente.AsBoolean then
    Begin
      SubstituiPacientes;
    End;

  if qryPadraoUsarDentista.AsBoolean then
    Begin
      SubstituiDentista;
    End;

  if qryPadraoUsarConsultorio.AsBoolean then
    Begin
      SubstituiConsultorio;
    End;

    SubstituiGeral;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.SubstituiConsultorio;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT EMPRESA.ID_EMPRESA, EMPRESA.ID_CIDADE, EMPRESA.NOME, EMPRESA.RAZAOSOCIAL, EMPRESA.ENDERECO, EMPRESA.NUMERO, EMPRESA.BAIRRO, EMPRESA.CEP,');
      SQL.Add('EMPRESA.TELEFONE, EMPRESA.FAX, EMPRESA.CONTATO, EMPRESA.CNPJ, EMPRESA.IE, EMPRESA.EMAIL, CIDADE.NOME AS Cidade, CIDADE.UF FROM EMPRESA');
      SQL.Add('INNER JOIN CIDADE ON EMPRESA.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('WHERE (EMPRESA.ID_EMPRESA = :pID)');
      Parameters.ParamByName('pID').Value := qryPadraoID_EMPRESA.AsInteger;
      Open;

      ProcuraSubstitui('[IDFilialConsultorio]', FieldByName('ID_EMPRESA').AsString);
      ProcuraSubstitui('[NomeFantasiaConsultorio]', FieldByName('NOME').AsString);
      ProcuraSubstitui('[RazaoSocialConsultorio]', FieldByName('RAZAOSOCIAL').AsString);
      ProcuraSubstitui('[ENDConsultorio]', FieldByName('ENDERECO').AsString);
      ProcuraSubstitui('[NROConsultorio]', FieldByName('NUMERO').AsString);
      ProcuraSubstitui('[BAIRROConsultorio]', FieldByName('BAIRRO').AsString);
      ProcuraSubstitui('[CEPConsultorio]', FieldByName('CEP').AsString);
      ProcuraSubstitui('[CidadeConsultorio]', FieldByName('CIDADE').AsString);
      ProcuraSubstitui('[UFConsultorio]', FieldByName('UF').AsString);
      ProcuraSubstitui('[TelConsultorio]', FieldByName('TELEFONE').AsString);
      ProcuraSubstitui('[FAXConsultorio]', FieldByName('FAX').AsString);
      ProcuraSubstitui('[ContatoConsultorio]', FieldByName('CONTATO').AsString);
      ProcuraSubstitui('[CNPJConsultorio]', FieldByName('CNPJ').AsString);
      ProcuraSubstitui('[IEConsultorio]', FieldByName('IE').AsString);
      ProcuraSubstitui('[EmailConsultorio]', FieldByName('EMAIL').AsString);
    End;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.SubstituiDentista;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MEDICOS.ID_MEDICO, MEDICOS.ID_CIDADE, MEDICOS.NOME, MEDICOS.CPF, MEDICOS.RG, MEDICOS.DTANASC, MEDICOS.SEXO, MEDICOS.ENDERECO, MEDICOS.NRO, MEDICOS.BAIRRO, MEDICOS.CEP,');
      SQL.Add('MEDICOS.TELEFONE, MEDICOS.CELULAR, MEDICOS.EMAIL, MEDICOS.CRO, MEDICOS.UFCONSELHO, MEDICOS.CBOS, MEDICOS.CodCNES, MEDICOS.SALARIO, MEDICOS.OBSERVACAO, CIDADE.NOME AS Cidade, CIDADE.UF FROM MEDICOS');
      SQL.Add('INNER JOIN CIDADE ON MEDICOS.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('WHERE (ID_MEDICO = :pID)');
      Parameters.ParamByName('pID').Value := qryPadraoID_MEDICO.AsInteger;
      Open;

      ProcuraSubstitui('[IDDentista]', FieldByName('ID_MEDICO').AsString);
      ProcuraSubstitui('[NomeDentista]', FieldByName('NOME').AsString);
      ProcuraSubstitui('[CPFDentista]', FieldByName('CPF').AsString);
      ProcuraSubstitui('[RGDentista]', FieldByname('RG').AsString);
      ProcuraSubstitui('[DTNASCDentista]', FormatDateTime('DD/MM/YYYY', FieldByName('DTANASC').AsDateTime));
      ProcuraSubstitui('[ENDDentista]', FieldByName('ENDERECO').AsString);
      ProcuraSubstitui('[NRODentista]', FieldByName('NRO').AsString);
      ProcuraSubstitui('[BAIRRODentista]', FieldByName('BAIRRO').AsString);
      ProcuraSubstitui('[CEPDentista]', FieldByName('CEP').AsString);
      ProcuraSubstitui('[CidadeDentista]', FieldByName('Cidade').AsString);
      ProcuraSubstitui('[UFDentista]', FieldByName('UF').AsString);
      ProcuraSubstitui('[TelDentista]', FieldByName('TELEFONE').AsString);
      ProcuraSubstitui('[CELDentista]', FieldByName('CELULAR').AsString);
      ProcuraSubstitui('[EmailDentista]', FieldByName('Email').AsString);
      ProcuraSubstitui('[CRODentista]', FieldByName('CRO').AsString);
      ProcuraSubstitui('[UFConselho]', FieldByName('UFCONSELHO').AsString);
      ProcuraSubstitui('[CNES]', FieldByName('CodCNES').AsString);
    End;
end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.SubstituiGeral;
var
  sCaixa ,
  sDataExtenso : String;
begin

  if Caixa.IDCaixa = -1 then
    Begin
      sCaixa := 'Caixa Geral';
    End
  Else
    Begin
      With qryAux do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT NOME FROM OPERADORES');
          SQL.Add('WHERE ID_OPERADORES = :pID');
          Parameters.ParamByName('pID').Value := Caixa.IDOperador;
          Open;
          sCaixa := 'Caixa: '+FormatDateTime('dd/mm/yyyy',Caixa.DataCaixa)+' - '+FormatCurr('00',Caixa.Numero)+' ['+FieldByName('NOME').AsString+']';
        End;
    End;

  sDataExtenso := FormatDateTime('DD', qryPadraoDATE.AsDateTime);
  sDataExtenso := sDataExtenso + ' de ' + FormatDateTime('MMMM', qryPadraoDATE.AsDateTime) +  ' de ' +FormatDateTime('YYYY', qryPadraoDATE.AsDateTime);

  ProcuraSubstitui('[DTEMI]', FormatDateTime('DD/MM/YYYY', qryPadraoDATE.AsDateTime));
  ProcuraSubstitui('[DTEMIEXTENSO]', sDataExtenso);
  ProcuraSubstitui('[HORAEMI]', FormatDateTime('hh:mm:ss', qryPadraoDATE.AsDateTime));
  ProcuraSubstitui('[OPERADORLOGADO]', Operador.Nome);
  ProcuraSubstitui('[CAIXASELECIONADO]', sCaixa);
  ProcuraSubstitui('[CODFILIALCONECTADO]', FormatFloat('00',StrToFloat(IntToStr(Empresa.ID))));
  ProcuraSubstitui('[NOMEFILIALCONECTADO]', Empresa.Nome);

end;

procedure TfrmListaDocumentosPersonalizadosEmitidos.SubstituiPacientes;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.ID_PACIENTE, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO, PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.ID_CIDADE, PACIENTE.TELEFONE,');
      SQL.Add('PACIENTE.CELULAR, PACIENTE.TELCOMERCIAL, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE, PACIENTE.EMPRESA, PACIENTE.FUNCAO, PACIENTE.ID_CONVENIO, PACIENTE.OBSERVACAO, PACIENTE.DATACADASTRO,');
      SQL.Add('PACIENTE.ULTIMACONSULTA, PACIENTE.TITULAR_DEPENDENTE, PACIENTE.ID_TITULAR, PACIENTE.ESTADOCIVIL, PACIENTE.CONJUGE, PACIENTE.REFERENCIA, PACIENTE.NUMEROCNS, PACIENTE.NUMERODACARTEIRA, PACIENTE.VALIDADECARTEIRA,');
      SQL.Add('PACIENTE.DATADEADESAO, CIDADE.NOME AS Cidade, CIDADE.UF, CONVENIOS.NOME AS Convenio FROM PACIENTE');
      SQL.Add('INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('INNER JOIN CONVENIOS ON PACIENTE.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
      SQL.Add('WHERE (PACIENTE.ID_PACIENTE = :pID)');
      Parameters.ParamByName('pID').Value := qryPadraoID_PACIENTE.AsInteger;
      Open;

      ProcuraSubstitui('[IDPaciente]', FieldByName('ID_PACIENTE').AsString);
      ProcuraSubstitui('[NomePaciente]', FieldByName('NOME').AsString);
      ProcuraSubstitui('[CPFPaciente]', FieldByName('CPF').AsString);
      ProcuraSubstitui('[RGPaciente]', FieldByname('RG').AsString);
      ProcuraSubstitui('[DTNASCPaciente]', FormatDateTime('DD/MM/YYYY', FieldByName('DTANASC').AsDateTime));
      ProcuraSubstitui('[ENDPaciente]', FieldByName('ENDERECO').AsString);
      ProcuraSubstitui('[NROPaciente]', FieldByName('NRO').AsString);
      ProcuraSubstitui('[BAIRROPaciente]', FieldByName('BAIRRO').AsString);
      ProcuraSubstitui('[CEPPaciente]', FieldByName('CEP').AsString);
      ProcuraSubstitui('[CidadePaciente]', FieldByName('Cidade').AsString);
      ProcuraSubstitui('[UFPaciente]', FieldByName('UF').AsString);
      ProcuraSubstitui('[TelPaciente]', FieldByName('TELEFONE').AsString);
      ProcuraSubstitui('[CELPaciente]', FieldByName('CELULAR').AsString);
      ProcuraSubstitui('[COMPaciente]', FieldByName('TELCOMERCIAL').AsString);
      ProcuraSubstitui('[EmailPaciente]', FieldByName('Email').AsString);
      ProcuraSubstitui('[IDConvenioPaciente]', FieldByName('ID_CONVENIO').AsString);
      ProcuraSubstitui('[ConvenioPaciente]', FieldByName('Convenio').AsString);
    End;
end;

end.
