unit PR_PrevisaoReceberPlanoTratamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, F_PainelPadrao, QRPDFFilt, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, Vcl.StdCtrls, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmRelPrevisaoReceberPlanoTratamento = class(TfrmPainelPadrao)
    QRGroup2: TQRGroup;
    QRBand5: TQRBand;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    qryOrcamento: TADOQuery;
    dsOrcamento: TDataSource;
    qryOrcamentoIDProcedimento: TIntegerField;
    qryOrcamentoIDPlanoTratamento: TIntegerField;
    qryOrcamentoIDPaciente: TIntegerField;
    qryOrcamentoProcedimento: TStringField;
    qryOrcamentoPaciente: TStringField;
    qryOrcamentoValorTabela: TFloatField;
    qryOrcamentoValorRecebido: TFloatField;
    qryOrcamentoValorRestante: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    GroupBox2: TGroupBox;
    EdtCodP: TJvComboEdit;
    EdtNome: TEdit;
    rgOrdem: TRadioGroup;
    QRLabel14: TQRLabel;
    LblTTabela: TQRLabel;
    lblTRecebido: TQRLabel;
    lblTRestante: TQRLabel;
    Label1: TLabel;
    Label2: TLabel;
    EdtCodPT: TJvComboEdit;
    EdtNomeT: TEdit;
    qryOrcamentoiAux: TIntegerField;
    procedure EdtCodPButtonClick(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure EdtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodPTButtonClick(Sender: TObject);
    procedure EdtCodPTExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    rVlrTabela,
    rVlrRecebido,
    rVlrRestante : Real;
    Procedure MontaRelatorio;
  public
    { Public declarations }
  end;

var
  frmRelPrevisaoReceberPlanoTratamento: TfrmRelPrevisaoReceberPlanoTratamento;

implementation

{$R *.dfm}

uses P_Paciente, Main;

{ TfrmRelPrevisaoReceberPlanoTratamento }

procedure TfrmRelPrevisaoReceberPlanoTratamento.btnImprimirClick(
  Sender: TObject);
begin
  inherited;
  MontaRelatorio;
end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.EdtCodPButtonClick(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodP.Text := frmMain.sCod;
  EdtCodPExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.EdtCodPExit(Sender: TObject);
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
        if EdtNomeT.Text = 'Todos' then
          Begin
            EdtNomeT.Text  := FieldByName('NOME').AsString;
            EdtCodPT.Text := EdtCodP.Text;
          End;
      End
    Else
      Begin
        EdtNome.Text := 'Todos';
        EdtCodP.Text := '';
      End;
  End;

end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.EdtCodPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.EdtCodPTButtonClick(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesquisaPaciente, frmPesquisaPaciente);
  frmPesquisaPaciente.bFechar := True;
  frmPesquisaPaciente.ShowModal;
  EdtCodPT.Text := frmMain.sCod;
  EdtCodPTExit(Sender);
  FreeAndNil(frmPesquisaPaciente);
end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.EdtCodPTExit(Sender: TObject);
begin
  inherited;
  if EdtCodPT.Text = '' then
  Begin
    EdtNomeT.Text := 'Todos';
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
        EdtNomeT.Text := FieldByName('NOME').AsString;
      End
    Else
      Begin
        EdtNomeT.Text := 'Todos';
        EdtCodPT.Text := '';
      End;
  End;
end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.MontaRelatorio;
begin

  rVlrTabela    := 0;
  rVlrRecebido  := 0;
  rVlrRestante  := 0;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PROPOSTATRATAMENTO.ID_PLANOTRATAMENTO, PROCEDIMENTOS.VALOR, PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOS.ID_PROCEDIMENTOS, ITENSPROPOSTATRATAMENTO.ValorPago, PACIENTE.ID_PACIENTE, PACIENTE.NOME AS Paciente FROM PROPOSTATRATAMENTO');
      SQL.Add('INNER JOIN ITENSPROPOSTATRATAMENTO ON PROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO = ITENSPROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO');
      SQL.Add('INNER JOIN PLANOTRATAMENTO ON PROPOSTATRATAMENTO.ID_PLANOTRATAMENTO = PLANOTRATAMENTO.ID_PLANOTRATAMENTO');
      SQL.Add('INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES');
      SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS');
      SQL.Add('INNER JOIN PACIENTE ON PLANOTRATAMENTO.ID_PACIENTE = PACIENTE.ID_PACIENTE');
      SQL.Add('WHERE 1 = 1');


      if EdtCodP.Text <> '' then
        Begin
          SQL.Add('AND ID_PACIENTE BETWEEN :pPacIni AND :pPacFim');
          Parameters.ParamByName('pPacIni').Value := EdtCodP.Text;
          Parameters.ParamByName('pPacFim').Value := EdtCodPT.Text;
        End;

      case rgOrdem.ItemIndex of
        0: SQL.Add('Order By Paciente.Nome, Procedimentos.Descricao');
        1: SQL.Add('Order By Procedimentos.Descricao, Paciente.Nome');
      end;

      Open;

      if RecordCount = 0 then
        Begin
          application.MessageBox
            ('O Relat�rio est� vazio e n�o ser� gerado.',
            'Relat�rio Vazio', mb_ok + MB_ICONINFORMATION);
          Exit;
        End;

        qryOrcamento.Close;
        qryOrcamento.Open;

        while Not Eof do
          Begin

            if FieldByName('Valor').AsFloat <> FieldByName('ValorPago').AsFloat then
              Begin
                qryOrcamento.Append;
                qryOrcamentoIDProcedimento.AsInteger    := FieldByName('ID_PROCEDIMENTOS').AsInteger;
                qryOrcamentoIDPlanoTratamento.AsInteger := FieldByName('ID_PLANOTRATAMENTO').AsInteger;
                qryOrcamentoIDPaciente.AsInteger        := FieldByName('ID_PACIENTE').AsInteger;
                qryOrcamentoProcedimento.AsString       := FieldByName('DESCRICAO').AsString;
                qryOrcamentoPaciente.AsString           := FieldByName('PACIENTE').AsString;
                qryOrcamentoValorTabela.AsFloat         := FieldByName('Valor').AsFloat;
                qryOrcamentoValorRecebido.AsFloat       := FieldByName('ValorPago').AsFloat;
                qryOrcamentoValorRestante.AsFloat       := FieldByName('Valor').AsFloat - FieldByName('ValorPago').AsFloat;
                qryOrcamentoiAux.AsInteger              := 1;
                qryOrcamento.Post;
              End;

            Next;
          End;

        Relatorio.Preview;
    End;
end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.QRBand4BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  rVlrTabela    := rVlrTabela + qryOrcamentoValorTabela.AsFloat;
  rVlrRecebido  := rVlrRecebido + qryOrcamentoValorRecebido.AsFloat;
  rVlrRestante  := rVlrRestante + qryOrcamentoValorRestante.AsFloat;
end;

procedure TfrmRelPrevisaoReceberPlanoTratamento.QRBand5BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  LblTTabela.Caption    := FormatFloat('#,###,##0.00', rVlrTabela);
  lblTRecebido.Caption  := FormatFloat('#,###,##0.00', rVlrRecebido);
  lblTRestante.Caption  := FormatFloat('#,###,##0.00', rVlrRestante);
end;

end.
