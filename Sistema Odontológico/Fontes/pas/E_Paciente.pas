unit E_Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, C_Paciente, Data.DB, Data.Win.ADODB,
  JvComponentBase, JvEnterTab, Vcl.StdCtrls, JvToolEdit, JvExMask, Vcl.Mask,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.DBCtrls, JvDBImage, cxImage, cxDBEdit, Vcl.Imaging.jpeg,
  Funcoes, JvDBUltimGrid, JvAppHotKey,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Menus, cxButtons;

type
  TfrmEdtPaciente = class(TfrmCadPaciente)
    qryCadastroID_PACIENTE: TAutoIncField;
    qryCadastroID_CIDADE: TIntegerField;
    qryCadastroID_CONVENIO: TIntegerField;
    qryCadastroNOME: TStringField;
    qryCadastroCPF: TStringField;
    qryCadastroRG: TStringField;
    qryCadastroSEXO: TStringField;
    qryCadastroENDERECO: TStringField;
    qryCadastroNRO: TStringField;
    qryCadastroBAIRRO: TStringField;
    qryCadastroCEP: TStringField;
    qryCadastroTELEFONE: TStringField;
    qryCadastroCELULAR: TStringField;
    qryCadastroEMAIL: TStringField;
    qryCadastroNOMEPAI: TStringField;
    qryCadastroNOMEMAE: TStringField;
    qryCadastroEMPRESA: TStringField;
    qryCadastroFUNCAO: TStringField;
    qryCadastroCONVENIO: TStringField;
    qryCadastroCIDADE: TStringField;
    qryCadastroUF: TStringField;
    qryCadastroATIVO: TStringField;
    qryCadastroDTANASC: TDateTimeField;
    qryCadastroOBSERVACAO: TMemoField;
    qryCadastroTIPO: TIntegerField;
    qryCadastroFOTO: TBlobField;
    DataSource1: TDataSource;
    qryFotosPacienteID_PACIENTE: TIntegerField;
    qryCadastroTELCOMERCIAL: TStringField;
    qryCadastroDATACADASTRO: TDateTimeField;
    qryCadastroULTIMACONSULTA: TDateTimeField;
    qryCadastroTITULAR_DEPENDENTE: TIntegerField;
    qryCadastroID_TITULAR: TIntegerField;
    btnImprimirAnamnese: TSpeedButton;
    qryCadastroESTADOCIVIL: TIntegerField;
    qryCadastroCONJUGE: TStringField;
    qryCadastroREFERENCIA: TStringField;
    ImagemPaciente: TADOConnection;
    qryCadastroNOMERECADO: TStringField;
    qryCadastroTELRECADO: TStringField;
    qryCadastroCOMPLEMENTO: TStringField;
    qryCadastroCELULAR2: TStringField;
    qryCadastroNOMERESPONSAVEL: TStringField;
    qryCadastroCPFRESPONSAVEL: TStringField;
    qryCadastroRGRESPONSAVEL: TStringField;
    qryCadastroNUMERODACARTEIRA: TStringField;
    btnEditarFotos: TSpeedButton;
    qryCadastroMAOCLUSAOCLASSE: TIntegerField;
    qryCadastroMAOCLUSAOMORDIDA: TIntegerField;
    qryCadastroMAOCLUSAOEXTRACAO: TIntegerField;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure JvDBUltimGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirAnamneseClick(Sender: TObject);
    procedure qryPerguntasAnamneseAFIRMOValidate(Sender: TField);
    procedure qryPerguntasAnamneseNEGOValidate(Sender: TField);
    procedure qryPerguntasAnamneseNAOSEIValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure btnEditarFotosClick(Sender: TObject);
  private
    bCarregado: Boolean;
    Procedure CarregaAnamnese(IDPaciente: String);
    Procedure CarregaPerguntas;
    Procedure GravaAnamnese;
    Procedure EditaAnamnese;
  public
    sCaminhoFotoEdt, sAtivo, sCod: String;

  end;

var
  frmEdtPaciente: TfrmEdtPaciente;

implementation

{$R *.dfm}

uses Descricao, Main, R_Anamnese, uDM, E_FotoPaciente;

procedure TfrmEdtPaciente.BtnCancelarClick(Sender: TObject);
begin
  If application.MessageBox('Deseja salvar antes de sair ?', 'Aten��o!',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  Begin
    btnSalvarClick(Sender);
  End;

  Close;
end;

procedure TfrmEdtPaciente.btnEditarFotosClick(Sender: TObject);
begin
  inherited;
  if qryFotosPacienteID_FOTOSPACIENTE.AsString = '' then  Exit;

  Application.CreateForm(TfrmEditarFotoPaciente, frmEditarFotoPaciente);
  frmEditarFotoPaciente.CarregaFoto(qryFotosPacienteID_FOTOSPACIENTE.AsInteger);
  frmEditarFotoPaciente.ShowModal;
  FreeAndNil(frmEditarFotoPaciente);
  qryFotosPaciente.Close;
  qryFotosPaciente.Open;
end;

procedure TfrmEdtPaciente.btnImprimirAnamneseClick(Sender: TObject);
begin
  inherited;
  if qryPerguntasAnamnese.RecordCount = 0 then
  Begin
    application.MessageBox('A Anamnese est� vazia e n�o ser� gerada!',
      'Erro!', mb_ok + MB_ICONINFORMATION);
    Exit;
  End;

  application.CreateForm(TfrmRelAnamnese, frmRelAnamnese);
  frmRelAnamnese.iPaciente := qryPacienteAnamneseID_PACIENTE.AsInteger;
  frmRelAnamnese.iMedico := qryPacienteAnamneseID_MEDICO.AsInteger;
  frmRelAnamnese.CarregaDadosPaciente;
  frmRelAnamnese.iIDPacienteAnamnese :=
    qryPacienteAnamneseID_PACIENTEANAMNESE.AsInteger;
  frmRelAnamnese.GeraAnamnese;
  frmRelAnamnese.Relatorio.Preview;

  FreeAndNil(frmRelAnamnese);
end;

procedure TfrmEdtPaciente.btnSalvarClick(Sender: TObject);
begin
  if cbAtivo.Checked then
  Begin
    sAtivo := '1';
  End
  Else
  Begin
    sAtivo := '0';
  End;

  if EdtNome.Text = '' then
    begin
      application.MessageBox('O campo "Nome" � obrigat�rio o preenchimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      PageControl1.TabIndex := 0;
      EdtNome.SetFocus;
      Exit;
    End;

  if EdtCodCidade.Text = '' then
    Begin
      application.MessageBox('O campo "Cidade" � obrigat�rio o preenchimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      PageControl1.TabIndex := 0;
      EdtCodCidade.SetFocus;
      Exit;
    End;

  qryCadastro.Edit;
  qryCadastro.FieldByName('Nome').AsString                := EdtNome.Text;
  qryCadastro.FieldByName('CPF').AsString                 := EdtCpf.Text;
  qryCadastro.FieldByName('RG').AsString                  := EdtRg.Text;
  qryCadastro.FieldByName('DTANASC').AsString             := EdtDtNasc.Text;
  qryCadastro.FieldByName('SEXO').AsString                := EdtSexo.Text;
  qryCadastro.FieldByName('Endereco').AsString            := EdtEnd.Text;
  qryCadastro.FieldByName('NRO').AsString                 := EdtNro.Text;
  qryCadastro.FieldByName('BAIRRO').AsString              := EdtBairro.Text;
  qryCadastro.FieldByName('CEP').AsString                 := EdtCep.Text;
  qryCadastro.FieldByName('ID_CIDADE').AsString           := EdtCodCidade.Text;
  qryCadastro.FieldByName('TELEFONE').AsString            := EdtTel.Text;
  qryCadastro.FieldByName('CELULAR').AsString             := EdtCel.Text;
  qryCadastro.FieldByName('EMAIL').AsString               := EdtEmail.Text;
  qryCadastro.FieldByName('NOMEPAI').AsString             := EdtNomePai.Text;
  qryCadastro.FieldByName('NOMEMAE').AsString             := EdtNomeMae.Text;
  qryCadastro.FieldByName('EMPRESA').AsString             := EdtEmpresa.Text;
  qryCadastro.FieldByName('FUNCAO').AsString              := EdtFuncao.Text;
  qryCadastro.FieldByName('ID_CONVENIO').AsString         := EdtCodConvenio.Text;
  qryCadastro.FieldByName('OBSERVACAO').AsString          := EdtObs.Lines.Text;
  qryCadastro.FieldByName('TIPO').AsInteger               := cbTipo.ItemIndex;
  qryCadastro.FieldByName('ATIVO').AsString               := sAtivo;
  qryCadastro.FieldByName('TELCOMERCIAL').AsString        := EdtTelComercial.Text;
  qryCadastro.FieldByName('TITULAR_DEPENDENTE').AsInteger := rgTitular.ItemIndex;
  qryCadastro.FieldByName('ESTADOCIVIL').AsInteger        := cbEstCivil.ItemIndex;
  qryCadastro.FieldByName('CONJUGE').AsString             := EdtConjuge.Text;
  qryCadastro.FieldByName('REFERENCIA').AsString          := EdtReferencia.Text;
  qryCadastro.FieldByName('COMPLEMENTO').AsString         := EdtComplemento.Text;
  qryCadastro.FieldByName('CELULAR2').AsString            := EdtCel2.Text;
  qryCadastro.FieldByName('TELRECADO').AsString           := EdtTelRecado.Text;
  qryCadastro.FieldByName('NOMERECADO').AsString          := EdtNomeRecado.Text;
  qryCadastro.FieldByName('NUMERODACARTEIRA').AsString    := EdtNroCarteira.Text;
  qryCadastroNOMERESPONSAVEL.AsString                     := EdtNomeResponsavel.Text;
  qryCadastroCPFRESPONSAVEL.AsString                      := EdtCPFResponsavel.Text;
  qryCadastroRGRESPONSAVEL.AsString                       := EdtRGResponsavel.Text;
  qryCadastroMAOCLUSAOCLASSE.AsInteger                    := rgClasseMaOclusao.ItemIndex;
  qryCadastroMAOCLUSAOMORDIDA.AsInteger                   := rgMordidaMaOclusao.ItemIndex;


  if bAnamneseNova then
  Begin
    GravaAnamnese;
  End
  else
  begin
     EditaAnamnese;
  end;

  if rgTitular.ItemIndex = 0 then
  Begin
    qryCadastro.FieldByName('ID_TITULAR').AsInteger := 0;
  End
  Else
  Begin
    qryCadastro.FieldByName('ID_TITULAR').AsString := EdtCodTitular.Text;
  End;

  if sCaminhoFoto <> '' then
  Begin
    qryCadastroFOTO.LoadFromFile(sCaminhoFoto);
  End;

  qryCadastro.Post;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOPACIENTE');
      SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
      Open;

      Append;
      FieldByName('ID_PACIENTE').AsInteger := StrToInt(sCod);
      FieldByName('DESCRICAO').AsString := 'Paciente Editado';
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPO').AsInteger := 0;
      FieldByName('DATA').AsDateTime := Now;
      Post;
    End;
  Close;
end;

procedure TfrmEdtPaciente.CarregaAnamnese(IDPaciente: String);
begin
  With qryPacienteAnamnese do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID_PACIENTEANAMNESE, DATA, MEDICOS.ID_MEDICO, ID_PACIENTE, MEDICOS.NOME FROM PACIENTEANAMNESE');
    SQL.Add('INNER JOIN MEDICOS ON PACIENTEANAMNESE.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE ID_PACIENTE = :pID ORDER BY DATA DESC');
    Parameters.ParamByName('pID').Value := IDPaciente;
    Open;

    EdtCodM.Text := FieldByName('ID_MEDICO').AsString;
    EdtMedico.Text := FieldByName('NOME').AsString;
  End;

  bAnamneseNova := False;
  GridAnamnese.ReadOnly := True;
  EdtCodM.ReadOnly := True;

  CarregaPerguntas;

end;

procedure TfrmEdtPaciente.CarregaPerguntas;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OBRIGATORIO, PERGUNTA, AFIRMO, NEGO, NAOSEI, OBSERVACAO FROM PERGUNTASPACIENTEANAMNESE');
    SQL.Add('WHERE ID_PACIENTEANAMNESE = :pID');
    Parameters.ParamByName('pID').Value :=
      qryPacienteAnamneseID_PACIENTEANAMNESE.AsInteger;
    Open;

    qryPerguntasAnamnese.Close;
    qryPerguntasAnamnese.Open;

    while Not eof do
    Begin
      qryPerguntasAnamnese.Append;
      qryPerguntasAnamnese.FieldByName('PERGUNTA').AsString :=
        FieldByName('PERGUNTA').AsString;
      qryPerguntasAnamnese.FieldByName('OBSERVACAO').AsString :=
        FieldByName('OBSERVACAO').AsString;
      qryPerguntasAnamnese.FieldByName('AFIRMO').AsBoolean :=
        FieldByName('AFIRMO').AsBoolean;
      qryPerguntasAnamnese.FieldByName('NEGO').AsBoolean := FieldByName('NEGO')
        .AsBoolean;
      qryPerguntasAnamnese.FieldByName('NAOSEI').AsBoolean :=
        FieldByName('NAOSEI').AsBoolean;
      qryPerguntasAnamnese.FieldByName('OBRIGATORIO').AsBoolean :=
        FieldByName('OBRIGATORIO').AsBoolean;
      qryPerguntasAnamnese.Post;

      if FieldByName('OBRIGATORIO').AsBoolean then
      Begin
        if not FieldByName('AFIRMO').AsBoolean then
        Begin
          if not FieldByName('NEGO').AsBoolean then
          Begin
            if Not FieldByName('NAOSEI').AsBoolean then
            Begin
              GridAnamnese.ReadOnly := False;
            End;
          End;

        End;

      End;

      Next;

    End;
  end;
end;

procedure TfrmEdtPaciente.EditaAnamnese;
var
  IDPacienteAnamense: Integer;
begin

{  if EdtCodM.Text = '' then
  Begin
    application.MessageBox
      ('O campo "Dentista Respons�vel" da Anamnese � obrigat�rio o preenchimento da resposta!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCodM.SetFocus;
    Exit;
  End;
       }
  IDPacienteAnamense := qryPacienteAnamneseID_PACIENTEANAMNESE.AsInteger;;

  qryPerguntasAnamnese.First;
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PERGUNTASPACIENTEANAMNESE');
    SQL.Add('WHERE ID_PACIENTEANAMNESE = :pID');
    Parameters.ParamByName('pID').Value := IDPacienteAnamense;
    Open;

    First;

    while not eof do
    Begin
      Edit;
      FieldByName('ID_PACIENTEANAMNESE').AsInteger := IDPacienteAnamense;
      FieldByName('PERGUNTA').AsString := qryPerguntasAnamnesePergunta.AsString;
      FieldByName('AFIRMO').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('AFIRMO').AsBoolean;
      FieldByName('NEGO').AsBoolean := qryPerguntasAnamnese.FieldByName('NEGO')
        .AsBoolean;
      FieldByName('NAOSEI').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('NAOSEI').AsBoolean;
      FieldByName('OBRIGATORIO').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('OBRIGATORIO').AsBoolean;
      FieldByName('OBSERVACAO').AsString := qryPerguntasAnamnese.FieldByName
        ('OBSERVACAO').AsString;
      Post;
      qryPerguntasAnamnese.Next;
      Next;
    End;
  End;
end;

procedure TfrmEdtPaciente.EdtNomeExit(Sender: TObject);
begin
 // inherited;

end;

procedure TfrmEdtPaciente.FormActivate(Sender: TObject);
var
  sConect : String;
begin
  inherited;
  if Not bCarregado then
  Begin
    With qryCadastro do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.ULTIMACONSULTA, PACIENTE.FOTO, PACIENTE.ID_PACIENTE, PACIENTE.TELCOMERCIAL, PACIENTE.TIPO,');
      SQL.Add('PACIENTE.ID_CIDADE, PACIENTE.ID_CONVENIO, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC,');
      SQL.Add('PACIENTE.SEXO, PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE,');
      SQL.Add('PACIENTE.CELULAR, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE, PACIENTE.ESTADOCIVIL, PACIENTE.CONJUGE,');
      SQL.Add('PACIENTE.REFERENCIA, PACIENTE.TITULAR_DEPENDENTE, PACIENTE.ID_TITULAR, PACIENTE.EMPRESA, PACIENTE.DATACADASTRO,');
      SQL.Add('PACIENTE.FUNCAO, CONVENIOS.NOME AS CONVENIO, CIDADE.NOME AS CIDADE, CIDADE.UF, PACIENTE.OBSERVACAO, PACIENTE.Ativo,');
      SQL.Add('PACIENTE.NOMERECADO, PACIENTE.TELRECADO, PACIENTE.COMPLEMENTO, PACIENTE.CELULAR2, NUMERODACARTEIRA, ');
      SQL.Add('NOMERESPONSAVEL, CPFRESPONSAVEL, RGRESPONSAVEL, PACIENTE.MAOCLUSAOCLASSE, PACIENTE.MAOCLUSAOMORDIDA, PACIENTE.MAOCLUSAOEXTRACAO FROM PACIENTE');
      SQL.Add('LEFT OUTER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('LEFT OUTER JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = PACIENTE.ID_CONVENIO');
      SQL.Add('WHERE PACIENTE.ID_PACIENTE = :pCod');
      Parameters.ParamByName('pCod').Value := sCod;
      Open;

      lblCadastro.Visible := True;
      EdtDtCadastro.Visible := True;

      EdtNome.Text                    := FieldByName('Nome').AsString;
      EdtCpf.Text                     := FieldByName('CPF').AsString;
      EdtRg.Text                      := FieldByName('RG').AsString;
      EdtDtNasc.Text                  := FieldByName('DTANASC').AsString;
      EdtSexo.Text                    := FieldByName('SEXO').AsString;
      EdtEnd.Text                     := FieldByName('Endereco').AsString;
      EdtNro.Text                     := FieldByName('NRO').AsString;
      EdtBairro.Text                  := FieldByName('BAIRRO').AsString;
      EdtCep.Text                     := FieldByName('CEP').AsString;
      EdtCodCidade.Text               := FieldByName('ID_CIDADE').AsString;
      EdtCid.Text                     := FieldByName('CIDADE').AsString;
      EdtUf.Text                      := FieldByName('UF').AsString;
      EdtTel.Text                     := FieldByName('TELEFONE').AsString;
      EdtCel.Text                     := FieldByName('CELULAR').AsString;
      EdtEmail.Text                   := FieldByName('EMAIL').AsString;
      EdtNomePai.Text                 := FieldByName('NOMEPAI').AsString;
      EdtNomeMae.Text                 := FieldByName('NOMEMAE').AsString;
      EdtEmpresa.Text                 := FieldByName('EMPRESA').AsString;
      EdtFuncao.Text                  := FieldByName('FUNCAO').AsString;
      EdtCodConvenio.Text             := FieldByName('ID_CONVENIO').AsString;
      EdtNomeConvenio.Text            := FieldByName('CONVENIO').AsString;
      EdtObs.Lines.Text               := FieldByName('OBSERVACAO').AsString;
      sAtivo                          := FieldByName('ATIVO').AsString;
      cbTipo.ItemIndex                := FieldByName('TIPO').AsInteger;
      EdtTelComercial.Text            := FieldByName('TELCOMERCIAL').AsString;
      EdtDtCadastro.Date              := FieldByName('DATACADASTRO').AsDateTime;
      EdtDtUltimaConsulta.Date        := FieldByName('ULTIMACONSULTA').AsDateTime;
      rgTitular.ItemIndex             := FieldByName('TITULAR_DEPENDENTE').AsInteger;
      cbEstCivil.ItemIndex            := FieldByName('ESTADOCIVIL').AsInteger;
      EdtConjuge.Text                 := FieldByName('CONJUGE').AsString;
      EdtReferencia.Text              := FieldByName('REFERENCIA').AsString;
      EdtComplemento.Text             := FieldByName('COMPLEMENTO').AsString;
      EdtCel2.Text                    := FieldByName('CELULAR2').AsString;
      EdtTelRecado.Text               := FieldByName('TELRECADO').AsString;
      EdtNomeRecado.Text              := FieldByName('NOMERECADO').AsString;
      EdtNroCarteira.Text             := FieldByName('NUMERODACARTEIRA').AsString;
      EdtNomeResponsavel.Text         := FieldByName('NOMERESPONSAVEL').ASString;
      EdtCPFResponsavel.Text          := FieldByName('CPFRESPONSAVEL').ASString;
      EdtRGResponsavel.Text           := FieldByName('RGRESPONSAVEL').ASString;
      rgClasseMaOclusao.ItemIndex     := FieldByName('MAOCLUSAOCLASSE').AsInteger;
      rgMordidaMaOclusao.ItemIndex    := FieldByName('MAOCLUSAOMORDIDA').AsInteger;
      rgExtracaoMaOclusao.ItemIndex   := FieldByName('MAOCLUSAOEXTRACAO').AsInteger;

      case rgTitular.ItemIndex of
        0:
          Begin
            lblTitular.Visible := False;
            EdtCodTitular.Visible := False;
            EdtNomeTitular.Visible := False;
          End;

        1:
          Begin
            lblTitular.Visible := True;
            EdtCodTitular.Visible := True;
            EdtNomeTitular.Visible := True;
            EdtCodTitular.Text := FieldByName('ID_TITULAR').AsString;
            EdtCodTitularExit(Sender);
          End;
      end;

      if qryCadastroFOTO.AsString <> '' then
      Begin
        qryCadastroFOTO.SaveToFile('C:\Paciente.Jpeg');
        imgFoto.Picture.LoadFromFile('C:\Paciente.Jpeg');
        DeleteFile('C:\Paciente.Jpeg');
      End;

      if FieldByName('Sexo').AsString = 'Masculino' then
      Begin
        EdtSexo.ItemIndex := 0;
      End
      Else
      Begin
        EdtSexo.ItemIndex := 1;
      End;

      if sAtivo = '1' then
      Begin
        cbAtivo.Checked := True;
      End
      Else
      Begin
        cbAtivo.Checked := False;
      End;

    End;

    sConect := '';
    sConect := sConect + ' Provider=SQLOLEDB.1; ';
    sConect := sConect + ' Persist Security Info=True; ';
    sConect := sConect + ' User ID=' + CfgAcesso.Usuario + '; ';
    sConect := sConect + ' Password=' + CfgAcesso.Senha + '; ';
    sConect := sConect + ' Initial Catalog=ODSIMAGENS; ';
    sConect := sConect + ' Data Source=' + CfgAcesso.Servidor;

    ImagemPaciente.ConnectionString := sConect;
    ImagemPaciente.Connected := True;

    With qryFotosPaciente do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM FOTOSPACIENTE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := sCod;
      Open;
    End;

    bSalvo := True;

    EdtDtNascExit(Self);
    CarregaAnamnese(sCod);
    GridAnamnese.ReadOnly := True;
    EdtCodM.ReadOnly := True;
    bCarregado := True;
    CarregaPerguntas;
  End;
end;

procedure TfrmEdtPaciente.FormCreate(Sender: TObject);
begin
  inherited;
  bCarregado := False;
end;

procedure TfrmEdtPaciente.GravaAnamnese;
var
  IDPacienteAnamense: Integer;
begin
  if not bAnamneseNova then
  Begin
    Exit;
  End;

  if EdtCodM.Text = '' then
  Begin
    application.MessageBox
      ('O campo "Dentista Respons�vel" da Anamnese � obrigat�rio o preenchimento da resposta!',
      'Erro!!!', mb_ok + MB_ICONERROR);
    EdtCodM.SetFocus;
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PACIENTEANAMNESE');
    SQL.Add('WHERE ID_PACIENTEANAMNESE = 0');
    Open;

    Append;
    FieldByName('ID_PACIENTE').AsString := sCod;
    FieldByName('DATA').AsDateTime := Now;
    FieldByName('ID_MEDICO').AsString := EdtCodM.Text;
    Post;

    Close;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 ID_PACIENTEANAMNESE FROM PACIENTEANAMNESE');
    SQL.Add('ORDER BY ID_PACIENTEANAMNESE DESC');
    Open;

    IDPacienteAnamense := FieldByName('ID_PACIENTEANAMNESE').AsInteger;

    qryPerguntasAnamnese.First;

    while not qryPerguntasAnamnese.eof do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASPACIENTEANAMNESE');
      SQL.Add('WHERE ID_PACIENTEANAMNESE = 0');
      Open;
      Append;

      FieldByName('ID_PACIENTEANAMNESE').AsInteger := IDPacienteAnamense;
      FieldByName('PERGUNTA').AsString := qryPerguntasAnamnesePergunta.AsString;
      FieldByName('AFIRMO').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('AFIRMO').AsBoolean;
      FieldByName('NEGO').AsBoolean := qryPerguntasAnamnese.FieldByName('NEGO')
        .AsBoolean;
      FieldByName('NAOSEI').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('NAOSEI').AsBoolean;
      FieldByName('OBRIGATORIO').AsBoolean := qryPerguntasAnamnese.FieldByName
        ('OBRIGATORIO').AsBoolean;
      FieldByName('OBSERVACAO').AsString := qryPerguntasAnamnese.FieldByName
        ('OBSERVACAO').AsString;
      Post;

      qryPerguntasAnamnese.Next;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOPACIENTE');
      SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
      Open;

      Append;
      FieldByName('ID_PACIENTE').AsInteger := StrToInt(sCod);
      FieldByName('DESCRICAO').AsString := 'Paciente Realizou uma Nova Anamnese.';
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPO').AsInteger := 0;
      FieldByName('DATA').AsDateTime := Now;
      Post;
    End;

    bAnamneseNova := False;
    GridAnamnese.ReadOnly := True;
    EdtCodM.ReadOnly := True;
    CarregaAnamnese(sCod);
  End;
end;

procedure TfrmEdtPaciente.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  inherited;
  bAnamneseNova := False;
  GridAnamnese.ReadOnly := True;
  CarregaPerguntas;
end;

procedure TfrmEdtPaciente.JvDBUltimGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  bAnamneseNova := False;
  GridAnamnese.ReadOnly := True;
  CarregaPerguntas;
end;

procedure TfrmEdtPaciente.JvDBUltimGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  bAnamneseNova := False;
  GridAnamnese.ReadOnly := True;
  CarregaPerguntas;
end;

procedure TfrmEdtPaciente.qryPerguntasAnamneseAFIRMOValidate(Sender: TField);
begin
  if qryPerguntasAnamneseAFIRMO.AsBoolean then
  Begin
    if qryPerguntasAnamneseNEGO.AsBoolean then
    Begin
      qryPerguntasAnamneseNEGO.AsBoolean := False;
    End;

    if qryPerguntasAnamneseNAOSEI.AsBoolean then
    Begin
      qryPerguntasAnamneseNAOSEI.AsBoolean := False;
    End;
  End;
end;

procedure TfrmEdtPaciente.qryPerguntasAnamneseNAOSEIValidate(Sender: TField);
begin
  if qryPerguntasAnamneseNAOSEI.AsBoolean then
  Begin
    if qryPerguntasAnamneseAFIRMO.AsBoolean then
    Begin
      qryPerguntasAnamneseAFIRMO.AsBoolean := False;
    End;

    if qryPerguntasAnamneseNEGO.AsBoolean then
    Begin
      qryPerguntasAnamneseNEGO.AsBoolean := False;
    End;
  End;
end;

procedure TfrmEdtPaciente.qryPerguntasAnamneseNEGOValidate(Sender: TField);
begin
  if qryPerguntasAnamneseNEGO.AsBoolean then
  Begin
    if qryPerguntasAnamneseAFIRMO.AsBoolean then
    Begin
      qryPerguntasAnamneseAFIRMO.AsBoolean := False;
    End;

    if qryPerguntasAnamneseNAOSEI.AsBoolean then
    Begin
      qryPerguntasAnamneseNAOSEI.AsBoolean := False;
    End;
  End;
end;

procedure TfrmEdtPaciente.SpeedButton1Click(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  inherited;

end;

procedure TfrmEdtPaciente.SpeedButton2Click(Sender: TObject);
var
  dData: TDateTime;
begin

  if not Operador.FotoPacienteC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar fotos do paci�nte!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  dData := Now;

  if AbreFoto.Execute then
  Begin
    sCaminhoFotoEdt := AbreFoto.FileName;
    imgFotos.Picture.LoadFromFile(sCaminhoFotoEdt);
    application.CreateForm(TfrmDescricao, frmDescricao);
    frmDescricao.Panel1.Caption := 'Digite a Descri��o da Foto.';
    frmDescricao.ShowModal;
    if frmMain.sDescricao = '' then
    Begin
      Exit;
    End;

    FreeAndNil(frmDescricao);

    qryFotosPaciente.Append;
    qryFotosPacienteFOTOS.LoadFromFile(AbreFoto.FileName);;
    qryFotosPacienteID_PACIENTE.AsString := sCod;
    qryFotosPacienteDESCRICAO.AsString := frmMain.sDescricao;
    qryFotosPacienteDATA.AsDateTime := dData;
    qryFotosPaciente.Post;
  End
  Else
  Begin
    Exit;
  End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOPACIENTE');
      SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
      Open;

      Append;
      FieldByName('ID_PACIENTE').AsInteger := StrToInt(sCod);
      FieldByName('DESCRICAO').AsString := 'Nova Foto: '+ frmMain.sDescricao;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPO').AsInteger := 0;
      FieldByName('DATA').AsDateTime := Now;
      Post;
    End;

  With qryFotosPaciente do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select * from FOTOSPACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := sCod;
    Open;
  End;
end;

procedure TfrmEdtPaciente.SpeedButton3Click(Sender: TObject);
begin

  if not Operador.FotoPacienteE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para Editar fotos do paci�nte!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  If application.MessageBox('Confirma Exclus�o ?', 'Aten��o!!!',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then
  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM HISTORICOPACIENTE');
      SQL.Add('WHERE ID_HISTORICOPACIENTE = 0');
      Open;

      Append;
      FieldByName('ID_PACIENTE').AsInteger := StrToInt(sCod);
      FieldByName('DESCRICAO').AsString := 'Foto Deletada: '+ qryFotosPacienteDESCRICAO.AsString;
      FieldByName('ID_OPERADOR').AsInteger := Operador.ID;
      FieldByName('TIPO').AsInteger := 0;
      FieldByName('DATA').AsDateTime := Now;
      Post;

      Connection := ImagemPaciente;
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM FOTOSPACIENTE');
      SQL.Add('WHERE ID_FOTOSPACIENTE = :pID');
      Parameters.ParamByName('pID').Value :=
        qryFotosPacienteID_FOTOSPACIENTE.AsInteger;
      ExecSQL;

      Connection := DM.Conexao;
    End;

    With qryFotosPaciente do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('select * from FOTOSPACIENTE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := sCod;
      Open;
    End;

  End;
end;

end.
