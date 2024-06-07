unit P_Medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, P_Padrao, JvComponentBase, JvEnterTab,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask,
  Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, Funcoes,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxButtons;

type
  TfrmPesquisaMedico = class(TfrmPesquisaPadrao)
    qryPesquisaID_MEDICO: TAutoIncField;
    qryPesquisaNOME: TStringField;
    qryPesquisaCPF: TStringField;
    Cod: TDBEdit;
    qryPesquisaCRO: TStringField;
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaMedico: TfrmPesquisaMedico;

implementation

{$R *.dfm}

uses Main, C_Medico, E_Medico;

procedure TfrmPesquisaMedico.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if Not Operador.DentistasC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para cadastrar um dentista!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmCadMedico, frmCadMedico);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPesquisaMedico.btnEditarClick(Sender: TObject);
begin
  inherited;
  if Not Operador.DentistasC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para editar um dentista!', 'Acesso Negado',
      mb_ok + MB_ICONWARNING);
    Exit;
  End;

  application.CreateForm(TfrmEdtMedico, frmEdtMedico);
  frmEdtMedico.sCod := qryPesquisaID_MEDICO.AsString;
  frmEdtMedico.ShowModal;
  FreeAndNil(frmEdtMedico);
  qryPesquisa.Close;
  qryPesquisa.Open;
end;

procedure TfrmPesquisaMedico.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  frmMain.sCod  := Cod.Text;
  Close;
end;

end.
