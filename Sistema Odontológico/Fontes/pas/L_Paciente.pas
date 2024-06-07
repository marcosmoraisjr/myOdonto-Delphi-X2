unit L_Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListaPadrao, Data.Win.ADODB, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.ComCtrls, Vcl.ExtCtrls, Funcoes, JvComponentBase, JvEnterTab,
  JvExControls, JvXPCore, JvXPButtons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Menus, cxButtons;

type
  TfrmListaPacientes = class(TfrmListaPadrao)
    SpeedButton2: TSpeedButton;
    qryPadraoID_PACIENTE: TAutoIncField;
    qryPadraoID_CIDADE: TIntegerField;
    qryPadraoID_CONVENIO: TIntegerField;
    qryPadraoNOME: TStringField;
    qryPadraoCPF: TStringField;
    qryPadraoRG: TStringField;
    qryPadraoDTANASC: TDateTimeField;
    qryPadraoSEXO: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoNRO: TStringField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCEP: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCELULAR: TStringField;
    qryPadraoEMAIL: TStringField;
    qryPadraoNOMEPAI: TStringField;
    qryPadraoNOMEMAE: TStringField;
    qryPadraoEMPRESA: TStringField;
    qryPadraoFUNCAO: TStringField;
    qryPadraoCONVENIO: TStringField;
    qryPadraoCIDADE: TStringField;
    qryPadraoUF: TStringField;
    qryPadraoOBSERVACAO: TMemoField;
    qryPadraoATIVO: TStringField;
    btnPlanoTratamento: TcxButton;
    btnImprimirFicha: TcxButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure gListaDblClick(Sender: TObject);
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    Procedure FiltraPorClick(OrderBy : String);
    procedure btnPlanoTratamentoClick(Sender: TObject);
    procedure btnImprimirFichaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaPacientes: TfrmListaPacientes;

implementation

{$R *.dfm}

uses C_Paciente, E_Paciente, F_PlanosTratamento, R_FichaCadastroPaciente;

procedure TfrmListaPacientes.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if not Operador.ListaPacienteC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar um paci�nte!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadPaciente, frmCadPaciente);
  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaPacientes.btnEditarClick(Sender: TObject);
var
  sIDAux : String;
begin
  inherited;

  if not Operador.ListaPacienteE then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para editar um paci�nte!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  if qryPadraoID_PACIENTE.AsString = '' then
    Begin
      Exit;
    End;

  sIDAux := qryPadraoID_PACIENTE.AsString;
  application.CreateForm(TfrmEdtPaciente, frmEdtPaciente);
  frmEdtPaciente.sCod := qryPadrao.FieldByName('ID_PACIENTE').AsString;
  frmEdtPaciente.ShowModal;
  FreeAndNil(frmEdtPaciente);
  qryPadrao.Close;
  qryPadrao.Open;
  qryPadrao.Locate('ID_PACIENTE', sIDAux, []);
end;

procedure TfrmListaPacientes.btnImprimirFichaClick(Sender: TObject);
begin
  inherited;
  if qryPadraoID_PACIENTE.AsString = '' then Exit;

  Application.CreateForm(TfrmRFichaPaciente, frmRFichaPaciente);
  frmRFichaPaciente.CarregaPaciente(qryPadraoID_PACIENTE.AsInteger);
  frmRFichaPaciente.Relatorio.Preview;
  FreeAndNil(frmRFichaPaciente);
end;

procedure TfrmListaPacientes.btnPlanoTratamentoClick(Sender: TObject);
begin
  inherited;

  if not Operador.PlanoTratamentoV then
    Begin
      application.MessageBox('Operador n�o tem permiss�o para acessar os planos de tratamentos!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
      Exit;
    End;

  if qryPadraoID_PACIENTE.AsString <> '' then
  Begin
    application.CreateForm(TfrmPlanosTratamento, frmPlanosTratamento);
    frmPlanosTratamento.EdtCodP.Text := qryPadraoID_PACIENTE.AsString;
    frmPlanosTratamento.EdtCodPExit(Sender);
    frmPlanosTratamento.ShowModal;
    FreeAndNil(frmPlanosTratamento);
  End;
end;

procedure TfrmListaPacientes.FiltraPorClick(OrderBy: String);
begin
  With qryPadrao do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.ID_PACIENTE, PACIENTE.ID_CIDADE, PACIENTE.ID_CONVENIO, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO, PACIENTE.ENDERECO, PACIENTE.NRO,');
      SQL.Add('PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE,');
      SQL.Add('PACIENTE.EMPRESA, PACIENTE.FUNCAO, CONVENIOS.NOME as CONVENIO, CIDADE.NOME AS CIDADE, CIDADE.UF, PACIENTE.OBSERVACAO, PACIENTE.ATIVO FROM PACIENTE');
      SQL.Add('LEFT JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('LEFT JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = PACIENTE.ID_CONVENIO');
      SQL.Add(OrderBy);
      Open;
    End;
end;

procedure TfrmListaPacientes.gListaDblClick(Sender: TObject);
begin
  inherited;
  btnEditarClick(Sender);
end;

procedure TfrmListaPacientes.gListaTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
    case aCol of
      0: Begin
        EdtPesquisa.DataField := 'ID_PACIENTE';
        GroupBox1.Caption := 'Cod.';
        FiltraPorClick('Order By PACIENTE.ID_PACIENTE');
      End;

      1: Begin
        EdtPesquisa.DataField := 'Nome';
        GroupBox1.Caption := 'Nome';
        FiltraPorClick('Order By PACIENTE.NOME');
      End;

      2: Begin
        EdtPesquisa.DataField := 'CPF';
        GroupBox1.Caption := 'CPF';
        FiltraPorClick('Order By CPF');
        FiltraPorClick('Order By PACIENTE.CPF');
      End;

      3: Begin
        EdtPesquisa.DataField := 'TELEFONE';
        GroupBox1.Caption := 'Telefone';
        FiltraPorClick('Order By PACIENTE.TELEFONE');
      End;

      4: Begin
        EdtPesquisa.DataField := 'CELULAR';
        GroupBox1.Caption := 'Celular';
        FiltraPorClick('Order By PACIENTE.CELULAR');
      End;

      5: Begin
        EdtPesquisa.DataField := 'CONVENIO';
        GroupBox1.Caption := 'Conv�nio';
        FiltraPorClick('Order By CONVENIOS.NOME, PACIENTE.NOME');
      End;
    end;
end;

end.
