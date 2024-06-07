unit L_TermoConsentimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ListaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Data.DB, Data.Win.ADODB, JvComponentBase, JvEnterTab,
  cxCheckBox, JvExStdCtrls, JvEdit, JvDBSearchEdit, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Funcoes,
  Menus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxButtons;

type
  TfrmListaTermoConsentimento = class(TfrmListaPadrao)
    qryPadraoID_TERMOCONSENTIMENTO: TAutoIncField;
    qryPadraoRGRESPONSAVEL: TStringField;
    qryPadraoRESPONSAVEL: TStringField;
    qryPadraoDATA: TDateTimeField;
    qryPadraoDentista: TStringField;
    qryPadraoPaciente: TStringField;
    qryPadraoID_PACIENTE: TIntegerField;
    qryPadraoID_MEDICO: TIntegerField;
    qryPadraoRG: TStringField;
    qryPadraoATIVO: TStringField;
    btnImprimir: TcxButton;
    procedure gListaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FiltraPorClick(OrderBy : String);
  public
    { Public declarations }
  end;

var
  frmListaTermoConsentimento: TfrmListaTermoConsentimento;

implementation

{$R *.dfm}

uses C_TermoConsentimento, R_TermoConsentimento;

procedure TfrmListaTermoConsentimento.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if not Operador.TermosC then
  Begin
    application.MessageBox
      ('Operador n�o tem permiss�o para emitir um termo de consentimento!',
      'Acesso Negado', mb_ok + MB_ICONWARNING);
    Exit;
  End;

  AbreForm(TfrmTermoConsentimento, frmTermoConsentimento);
  qryPadrao.Close;
  qryPadrao.Open;
end;

procedure TfrmListaTermoConsentimento.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if qryPadraoID_TERMOCONSENTIMENTO.AsString <> '' then
    Begin
      Application.CreateForm(TfrmRelTermoConsentimento, frmRelTermoConsentimento);
      frmRelTermoConsentimento.CarregaTermos(qryPadraoID_TERMOCONSENTIMENTO.AsInteger);
      FreeAndNil(frmRelTermoConsentimento);
    End;
end;

procedure TfrmListaTermoConsentimento.FiltraPorClick(OrderBy: String);
begin
  With qryPadrao do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TERMOCONSENTIMENTO.ID_TERMOCONSENTIMENTO, TERMOCONSENTIMENTO.ID_PACIENTE, TERMOCONSENTIMENTO.ID_MEDICO, TERMOCONSENTIMENTO.RGRESPONSAVEL, TERMOCONSENTIMENTO.RESPONSAVEL,TERMOCONSENTIMENTO.DATA, MEDICOS.NOME AS Dentista,');
      SQL.Add('PACIENTE.ATIVO, PACIENTE.NOME AS Paciente, PACIENTE.RG FROM TERMOCONSENTIMENTO');
      SQL.Add('INNER JOIN MEDICOS ON TERMOCONSENTIMENTO.ID_MEDICO = MEDICOS.ID_MEDICO');
      SQL.Add('INNER JOIN PACIENTE ON TERMOCONSENTIMENTO.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add(OrderBy);
      Open;
    End;
end;

procedure TfrmListaTermoConsentimento.gListaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  case aCol of
    0: Begin
      EdtPesquisa.DataField := 'ID_TERMOCONSENTIMENTO';
      GroupBox1.Caption := 'Cod.';
      FiltraPorClick('Order By ID_TERMOCONSENTIMENTO');
    End;

    1: Begin
      EdtPesquisa.DataField := 'PACIENTE';
      GroupBox1.Caption := 'Paciente';
      FiltraPorClick('Order By PACIENTE, ID_TERMOCONSENTIMENTO');
    End;

    2: Begin
      EdtPesquisa.DataField := 'DATA';
      GroupBox1.Caption := 'Data';
      FiltraPorClick('Order By DATA, PACIENTE, ID_TERMOCONSENTIMENTO');
    End;

    3: Begin
      EdtPesquisa.DataField := 'RESPONSAVEL';
      GroupBox1.Caption := 'Respons�vel';
      FiltraPorClick('Order By RESPONSAVEL, PACIENTE, ID_TERMOCONSENTIMENTO');
    End;

    4: Begin
      EdtPesquisa.DataField := 'RGRESPONSAVEL';
      GroupBox1.Caption := 'RG Respons�vel';
      FiltraPorClick('Order By RGRESPONSAVEL, RESPONSAVEL, PACIENTE, ID_TERMOCONSENTIMENTO');
    End;

    5: Begin
      EdtPesquisa.DataField := 'DENTISTA';
      GroupBox1.Caption := 'Dentista';
      FiltraPorClick('Order By DENTISTA, PACIENTE, ID_TERMOCONSENTIMENTO');
    End;
  end;
end;

end.
