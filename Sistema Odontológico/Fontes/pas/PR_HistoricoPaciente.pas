unit PR_HistoricoPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, F_PainelPadrao, QRPDFFilt, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, Vcl.StdCtrls, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  JvToolEdit, Vcl.Mask, JvExMask;

type
  TfrmPReHistoricoPaciente = class(TfrmPainelPadrao)
    qryRel: TADOQuery;
    qryRelPaciente: TStringField;
    qryRelOperador: TStringField;
    qryRelID_HISTORICOPACIENTE: TAutoIncField;
    qryRelID_PACIENTE: TIntegerField;
    qryRelDESCRICAO: TStringField;
    qryRelDATA: TDateTimeField;
    qryRelTIPO: TIntegerField;
    qryRelID_OPERADOR: TIntegerField;
    GroupBox2: TGroupBox;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    EdtDtInicial: TJvDateEdit;
    Label2: TLabel;
    EdtDtFinal: TJvDateEdit;
    rgOrdem: TRadioGroup;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    procedure btnImprimirClick(Sender: TObject);
    procedure EdtDtInicialExit(Sender: TObject);
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPReHistoricoPaciente: TfrmPReHistoricoPaciente;

implementation

{$R *.dfm}

uses P_Paciente, Main;

procedure TfrmPReHistoricoPaciente.btnImprimirClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor:= crHourGlass;

  if (EdtDtFinal.Text = '  /  /    ') and (EdtDtInicial.Text <> '  /  /    ') then
    Begin
      EdtDtFinal.Date := EdtDtInicial.Date
    End;

  With qryRel do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.NOME AS Paciente, OPERADORES.NOME AS Operador, HISTORICOPACIENTE.ID_HISTORICOPACIENTE,');
      SQL.Add('HISTORICOPACIENTE.ID_PACIENTE, HISTORICOPACIENTE.DESCRICAO, HISTORICOPACIENTE.DATA, HISTORICOPACIENTE.TIPO,');
      SQL.Add('HISTORICOPACIENTE.ID_OPERADOR FROM HISTORICOPACIENTE');
      SQL.Add('INNER JOIN PACIENTE ON HISTORICOPACIENTE.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('INNER JOIN OPERADORES ON HISTORICOPACIENTE.ID_OPERADOR = OPERADORES.ID_OPERADORES');
      SQL.Add('WHERE 1 = 1');

      if EdtCodP.Text <> '' then
        Begin
          SQL.Add('AND HISTORICOPACIENTE.ID_PACIENTE = :pIDPaciente');
          Parameters.ParamByName('pIDPaciente').Value := EdtCodP.Text;
        End;

      if EdtDtInicial.Text <> '  /  /    ' then
        Begin
          SQL.Add('HISTORICOPACIENTE.DATA BETWEEN :pDataInicial AND :pDataFinal');
          Parameters.ParamByName('pDataInicial').Value := EdtDtInicial.Text;
          Parameters.ParamByName('pDataFinal').Value := EdtDtFinal.Text;
        End;

      case rgOrdem.ItemIndex of
      0: SQL.Add('Order By HISTORICOPACIENTE.ID_PACIENTE, PACIENTE.NOME');
      1: SQL.Add('Order By PACIENTE.NOME, HISTORICOPACIENTE.ID_PACIENTE');
      end;

      Open;

      if RecordCount = 0 then
        Begin
          Exit;
        End;
    End;

    Screen.Cursor:= crDefault;
    Relatorio.Preview;
end;

procedure TfrmPReHistoricoPaciente.EdtCodPButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmPReHistoricoPaciente.EdtCodPExit(Sender: TObject);
begin
  inherited;
  if EdtCodP.Text = '' then
  Begin
    EdtNome.Text := 'Todos';
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT NOME FROM PACIENTE');
    SQL.Add('WHERE ID_PACIENTE = :pID');
    Parameters.ParamByName('pID').Value := EdtCodP.Text;

    Open;

    if Not Eof then
      Begin
        EdtNome.Text := FieldByName('NOME').AsString;
      End
    Else
      Begin
        EdtNome.Text := 'Todos';
        EdtCodP.Text := '';
      End;
  End;

end;

procedure TfrmPReHistoricoPaciente.EdtCodPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmPReHistoricoPaciente.EdtDtInicialExit(Sender: TObject);
begin
  inherited;
  if (EdtDtFinal.Text = '  /  /    ') and (EdtDtInicial.Text <> '  /  /    ') then
    Begin
      EdtDtFinal.Date := EdtDtInicial.Date
    End;
end;

end.
