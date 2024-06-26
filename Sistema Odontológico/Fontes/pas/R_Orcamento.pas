unit R_Orcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, R_Padrao, Data.DB, Data.Win.ADODB,
  QRCtrls, QuickRpt, Vcl.ExtCtrls, QRPDFFilt;

type
  TfrmROrcamento = class(TfrmRelatorioPadrao)
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    lblTotalProcedimentos: TQRLabel;
    lblTotalDescontos: TQRLabel;
    lblTotalGeral: TQRLabel;
    QRLabel11: TQRLabel;
    lblCondicaoPagamento: TQRLabel;
    mmoMsgRodape: TQRMemo;
    QRLabel12: TQRLabel;
    QRShape9: TQRShape;
    lblNomePacienteRodape: TQRLabel;
    LblCPFRodape: TQRLabel;
    QRShape10: TQRShape;
    lblNomeMedicoRodape: TQRLabel;
    lblCRORodape: TQRLabel;
    qryRelID_ITENSPROPOSTATRATAMENTO: TAutoIncField;
    qryRelID_PROPOSTATRATAMENTO: TIntegerField;
    qryRelVALOR: TFloatField;
    qryRelValorAcrescimo: TFloatField;
    qryRelValorDesconto: TFloatField;
    qryRelFaturado: TBooleanField;
    qryRelSELECIONADO: TBooleanField;
    qryRelDENTE: TIntegerField;
    qryRelPARTICULAR_CONVENIO: TIntegerField;
    qryRelID_PROCEDIMENTOSDENTES: TIntegerField;
    qryRelDESCRICAO: TStringField;
    qryRelCODPROCEDIMENTO: TStringField;
    QRBand5: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    d2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qryOrcamento: TADOQuery;
    qryOrcamentoIDProcedimento: TIntegerField;
    qryOrcamentoSelecionado: TBooleanField;
    qryOrcamentoCodProcedimento: TStringField;
    qryOrcamentoDescricaoProcedimento: TStringField;
    qryOrcamentoValorTabela: TFloatField;
    qryOrcamentoValorAcrescimo: TFloatField;
    qryOrcamentoValorDesconto: TFloatField;
    qryOrcamentoFaturado: TBooleanField;
    qryOrcamentoDente: TIntegerField;
    qryOrcamentoIDProposta: TIntegerField;
    qryOrcamentoTipo: TStringField;
    QRDBText5: TQRDBText;
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    rProcedimento ,
    rDesconto : Double;
  public
      sCondicao : String;
      iMedico, iPaciente, iPlanoTratamento : Integer;
      Procedure MontaSQL;
  end;

var
  frmROrcamento: TfrmROrcamento;

implementation

{$R *.dfm}

{ TfrmROrcamento }

procedure TfrmROrcamento.MontaSQL;
var
  sTipo : String;
  rDesconto : Double;
begin
  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO, PROCEDIMENTOS.VALOR, ITENSPROPOSTATRATAMENTO.ValorAcrescimo, ITENSPROPOSTATRATAMENTO.ValorDesconto, ');
    SQL.Add('ITENSPROPOSTATRATAMENTO.Faturado, ITENSPROPOSTATRATAMENTO.SELECIONADO, PROCEDIMENTOSDENTES.DENTE, PROCEDIMENTOSDENTES.PARTICULAR_CONVENIO, ');
    SQL.Add('ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES, PROCEDIMENTOS.DESCRICAO, PROCEDIMENTOS.CODPROCEDIMENTO FROM  ITENSPROPOSTATRATAMENTO ');
    SQL.Add('INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTES ');
    SQL.Add('INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIMENTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS ');
    SQL.Add('WHERE (ITENSPROPOSTATRATAMENTO.ID_PROPOSTATRATAMENTO = :pID)');
    SQL.Add('AND FATURADO = 0');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;

    qryOrcamento.Close;
    qryOrcamento.Open;

    while not eof do
    Begin
      rDesconto := FieldByname('ValorDesconto').AsFloat;
      qryOrcamento.Append;
      qryOrcamentoIDProposta.AsInteger := iPlanoTratamento;
      qryOrcamento.FieldByname('IDProcedimento').AsInteger :=
        FieldByname('ID_ITENSPROPOSTATRATAMENTO').AsInteger;
      qryOrcamento.FieldByname('SELECIONADO').AsBoolean :=
        FieldByname('SELECIONADO').AsBoolean;
      qryOrcamento.FieldByname('CodProcedimento').AsString :=
        FieldByname('CODPROCEDIMENTO').AsString;
      qryOrcamento.FieldByname('DESCRICAOPROCEDIMENTO').AsString :=
        FieldByname('DESCRICAO').AsString;
      qryOrcamento.FieldByname('FATURADO').AsBoolean := FieldByname('FATURADO')
        .AsBoolean;
      qryOrcamento.FieldByname('DENTE').AsInteger := FieldByname('DENTE')
        .AsInteger;

      if FieldByname('PARTICULAR_CONVENIO').AsInteger = 0 then
      Begin
        qryOrcamento.FieldByname('VALORTABELA').AsFloat :=
          FieldByname('VALOR').AsFloat + FieldByname('VALORACRESCIMO').AsFloat;
        qryOrcamento.FieldByname('VALORACRESCIMO').AsFloat :=
          FieldByname('VALORACRESCIMO').AsFloat;
        qryOrcamento.FieldByname('VALORDESCONTO').AsFloat := rDesconto;
        sTipo := 'Particular';
      End
      Else
      Begin
        qryOrcamento.FieldByname('VALORTABELA').AsFloat := 0;
        qryOrcamento.FieldByname('VALORACRESCIMO').AsFloat :=0;
        qryOrcamento.FieldByname('VALORDESCONTO').AsFloat := 0;
        sTipo := 'Conv�nio';
      End;

      qryOrcamento.FieldByname('TIPO').AsString := sTipo;

      qryOrcamento.Post;

      Next;
    End;

  End;


  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, ');
      SQL.Add('PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELULAR, CIDADE.NOME AS Cidade, CIDADE.UF FROM PACIENTE');
      SQL.Add('INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('WHERE ID_PACIENTE = :pID');
      Parameters.ParamByName('pID').Value := iPaciente;
      Open;

      lblNomePacienteRodape.Caption := FieldByName('NOME').AsString;
      LblCPFRodape.Caption := FieldByName('CPF').AsString;

      Close;
      SQL.Clear;
      SQL.Add('SELECT NOME, UFCONSELHO, CRO FROM MEDICOS');
      SQL.Add('WHERE ID_MEDICO = :pID');
      Parameters.ParamByName('pID').Value := iMedico;
      Open;

      lblNomeMedicoRodape.Caption := FieldByName('NOME').AsString;
      lblCRORodape.Caption := 'CRO '+ FieldByName('UFCONSELHO').AsString + ' : ' + FieldByName('CRO').AsString;
    End;

    lblCondicaoPagamento.Caption := sCondicao;

end;

procedure TfrmROrcamento.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
rTotal : Real;
begin
  inherited;
  lblTotalProcedimentos.Caption := FormatFloat('##,##0.00', rProcedimento);
  lblTotalDescontos.Caption := FormatFloat('##,##0.00', rDesconto);
  rTotal := rProcedimento - rDesconto;
  lblTotalGeral.Caption := FormatFloat('##,##0.00', rTotal);
  rProcedimento := 0;
  rDesconto := 0;
end;

procedure TfrmROrcamento.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rProcedimento := rProcedimento + qryOrcamentoValorTabela.AsFloat;
  rDesconto := rDesconto + qryOrcamentoValorDesconto.AsFloat
end;

end.
