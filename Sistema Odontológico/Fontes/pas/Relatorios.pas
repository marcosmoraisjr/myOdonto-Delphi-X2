unit Relatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ImgList, Funcoes,
  Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmRelatorios = class(TfrmPadrao)
    pnLista: TPanel;
    Relatorio: TTreeView;
    GroupBox1: TGroupBox;
    btnFechar: TSpeedButton;
    PainelRel: TPanel;
    ImageList1: TImageList;
    procedure btnFecharClick(Sender: TObject);
    procedure RelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fFormAntigo : TForm;
    Procedure AbreRelatorio(aClassForm: TComponentClass; aForm: TForm);
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

uses PR_Paciente, PR_HistoricoPaciente, PR_PrevisaoReceberPlanoTratamento;

procedure TfrmRelatorios.AbreRelatorio(aClassForm: TComponentClass;
  aForm: TForm);
begin
  Application.CreateForm(aClassForm, aForm);
  aForm.Parent := PainelRel;
  fFormAntigo := aForm;
  aForm.Show;
end;

procedure TfrmRelatorios.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  If fFormAntigo <> nil  then
    Begin
      FreeAndNil(fFormAntigo);
    End;
end;

procedure TfrmRelatorios.RelatorioClick(Sender: TObject);
begin
  inherited;
  If fFormAntigo <> nil  then
    Begin
      FreeAndNil(fFormAntigo);
    End;

  case Relatorio.Selected.SelectedIndex of
  100: Begin
         PainelRel.Caption := 'ACESSO NEGADO !';
         AbreRelatorio(TfrmPRelPaciente, frmPRelPaciente);
  End;
  103: Begin
          PainelRel.Caption := 'ACESSO NEGADO !';
         AbreRelatorio(TfrmPReHistoricoPaciente, frmPReHistoricoPaciente);
  End;
  200: Begin
      PainelRel.Caption := 'ACESSO NEGADO !';
  End;



  202: Begin
      AbreRelatorio(TfrmRelPrevisaoReceberPlanoTratamento, frmRelPrevisaoReceberPlanoTratamento);
  End;
  end;
end;

end.
