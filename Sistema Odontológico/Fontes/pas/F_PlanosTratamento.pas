unit F_PlanosTratamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Funcoes, Data.DB,
  Data.Win.ADODB, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, cxButtons;

type
  TfrmPlanosTratamento = class(TfrmPadrao)
    Paci�nte: TGroupBox;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    GroupBox1: TGroupBox;
    gLista: TJvDBGrid;
    qryAux: TADOQuery;
    qryPlanoTratamento: TADOQuery;
    qryPlanoTratamentoID_PLANOTRATAMENTO: TAutoIncField;
    qryPlanoTratamentoDTAINICIO: TDateTimeField;
    qryPlanoTratamentoDTAPREVISAOTERMINO: TDateTimeField;
    qryPlanoTratamentoDTATERMINO: TDateTimeField;
    qryPlanoTratamentoSTATUS: TStringField;
    qryPlanoTratamentoVALOR: TFloatField;
    qryPlanoTratamentoMedico: TStringField;
    dsPlanoTratamento: TDataSource;
    btnAdicionar: TcxButton;
    btnEditar: TcxButton;
    btnFechar: TcxButton;
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure gListaDblClick(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    bCadastrado : Boolean;
    iPaciente : Integer;
    Procedure CarregaPlanos;
  end;

var
  frmPlanosTratamento: TfrmPlanosTratamento;

implementation

{$R *.dfm}

uses P_Paciente, Main, C_PlanoTratamento, F_Historicos;

procedure TfrmPlanosTratamento.btnAdicionarClick(Sender: TObject);
begin
  inherited;

  if not Operador.PlanoTratamentoC then
    Begin
      application.MessageBox('Operador n�o tem permiss�o para cadastrar um plano de tratamento!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
      Exit;
    End;

  if EdtCodP.Text = '' then
    Begin
      application.MessageBox('Selecione um  paciente para cadastrar um plano de tratamento!', 'Aten��o!',
      mb_ok + MB_ICONEXCLAMATION);
      EdtCodP.SetFocus;
      Exit;
    End;

  Application.CreateForm(TfrmCPlanoTratamento, frmCPlanoTratamento);
  frmCPlanoTratamento.iIDPaciente := StrToInt(EdtCodP.Text);
  frmCPlanoTratamento.ShowModal;

  CarregaPlanos;

    if frmCPlanoTratamento.bCadastrado then
    Begin
      btnEditarClick(Sender);
    End;

  FreeAndNil(frmCPlanoTratamento);
end;

procedure TfrmPlanosTratamento.btnEditarClick(Sender: TObject);
begin
  inherited;
    if not Operador.PlanoTratamentoV then
    Begin
      application.MessageBox('Operador n�o tem permiss�o para editar um plano de tratamento!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
      Exit;
    End;

  if qryPlanoTratamentoID_PLANOTRATAMENTO.AsString = '' then
    Begin
      Exit;
    End;

  Application.CreateForm(TfrmHistoricos, frmHistoricos);
  frmHistoricos.iPlanoTratamento := qryPlanoTratamentoID_PLANOTRATAMENTO.AsInteger;
  frmHistoricos.CarregaPlanoTratamento;
  frmHistoricos.ShowModal;
  FreeAndNil(frmHistoricos);

  CarregaPlanos;

end;

procedure TfrmPlanosTratamento.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPlanosTratamento.CarregaPlanos;
begin
  With qryPlanoTratamento do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PLANOTRATAMENTO.ID_PACIENTE, PLANOTRATAMENTO.ID_PLANOTRATAMENTO, PLANOTRATAMENTO.ID_MEDICO, PLANOTRATAMENTO.DTAINICIO,');
      SQL.Add('PLANOTRATAMENTO.DTAPREVISAOTERMINO, PLANOTRATAMENTO.DTATERMINO, PLANOTRATAMENTO.STATUS, PLANOTRATAMENTO.VALOR, MEDICOS.NOME As Medico FROM PLANOTRATAMENTO');
      SQL.Add('INNER JOIN MEDICOS ON PLANOTRATAMENTO.ID_MEDICO = MEDICOS.ID_MEDICO');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      SQL.Add('Order By PLANOTRATAMENTO.DTAINICIO DESC');
      Parameters.ParamByName('pID').Value := EdtCodp.Text;
      Open;
    End;
end;

procedure TfrmPlanosTratamento.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
end;

procedure TfrmPlanosTratamento.EdtCodPExit(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
  Begin
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME, ID_PACIENTE FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;
    Open;

    if Not qryAux.eof then
    Begin
      EdtNome.Text := FieldByName('Nome').AsString
    End
    Else
    Begin
      EdtCodP.Text := '';
    End;
  End;

  CarregaPlanos;

end;

procedure TfrmPlanosTratamento.EdtCodPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmPlanosTratamento.FormCreate(Sender: TObject);
begin
  inherited;
  EdtCodP.Text := '0';
  CarregaPlanos;
  EdtCodP.Text := '';
end;

procedure TfrmPlanosTratamento.gListaDblClick(Sender: TObject);
begin
  inherited;
  btnEditarClick(Sender);
end;

end.
