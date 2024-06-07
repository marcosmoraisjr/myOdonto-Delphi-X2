unit R_TermoConsentimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, R_Padrao, QRPDFFilt, Data.DB,
  Data.Win.ADODB, QRCtrls, QuickRpt, Vcl.ExtCtrls, Funcoes{, frxClass};

type
  TfrmRelTermoConsentimento = class(TfrmRelatorioPadrao)
    QRGroup1: TQRGroup;
    qryRelID_TERMOCONSENTIMENTO: TAutoIncField;
    qryRelID_PACIENTE: TIntegerField;
    qryRelID_MEDICO: TIntegerField;
    qryRelRESPONSAVEL: TStringField;
    qryRelRGRESPONSAVEL: TStringField;
    qryRelDATA: TDateTimeField;
    qryRelPaciente: TStringField;
    qryRelDentista: TStringField;
    qryRelRG: TStringField;
    qryRelDTANASC: TDateTimeField;
    qryRelCRO: TStringField;
    qryRelIdade: TIntegerField;
    QRBand4: TQRBand;
    QRMemo1: TQRMemo;
    lblNomeRM: TQRLabel;
    lblNomeMenor: TQRLabel;
    lblNomeDentistaM: TQRLabel;
    lblCROMENOR: TQRLabel;
    qryRelUFCONSELHO: TStringField;
  {  frMenor: TfrxReport;
    frMaior: TfrxReport;}
    procedure aGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    sNomePaciente,
    sNomeResponsavel,
    sRGResponsavel,
    sRGPaciente,
    sUFCRO,
    sNroCRO,
    sDentista : String;
    dData : TDateTime;
    Procedure CarregaTermos(ID: Integer);
  end;

var
  frmRelTermoConsentimento: TfrmRelTermoConsentimento;

implementation

{$R *.dfm}

procedure TfrmRelTermoConsentimento.CarregaTermos(ID: Integer);
var
  i: Integer;
begin

  With qryRel do
  Begin
    CLose;
    SQL.Clear;
    SQL.Add('SELECT TERMOCONSENTIMENTO.ID_TERMOCONSENTIMENTO, UFCONSELHO,TERMOCONSENTIMENTO.ID_PACIENTE, TERMOCONSENTIMENTO.ID_MEDICO, TERMOCONSENTIMENTO.RESPONSAVEL, TERMOCONSENTIMENTO.RGRESPONSAVEL,');
    SQL.Add('TERMOCONSENTIMENTO.DATA, PACIENTE.NOME AS Paciente, MEDICOS.NOME AS Dentista, PACIENTE.RG, PACIENTE.DTANASC, MEDICOS.CRO, DateDiff(yy,PACIENTE.DTANASC, GetDate()) As Idade FROM TERMOCONSENTIMENTO');
    SQL.Add('INNER JOIN PACIENTE ON TERMOCONSENTIMENTO.ID_PACIENTE = PACIENTE.ID_PACIENTE');
    SQL.Add('INNER JOIN MEDICOS ON TERMOCONSENTIMENTO.ID_MEDICO = MEDICOS.ID_MEDICO');
    SQL.Add('WHERE TERMOCONSENTIMENTO.ID_TERMOCONSENTIMENTO = :pID');
    Parameters.ParamByName('pID').Value := ID;
    Open;

    sNomePaciente := FieldByName('PACIENTE').AsString;
    sNomeResponsavel := FieldByName('RESPONSAVEL').AsString;
    sRGPaciente := FieldByName('RG').AsString;
    sRGResponsavel := FieldByName('RGRESPONSAVEL').AsString;
    sDentista := FieldByName('DENTISTA').AsString;
    sUFCRO := FieldByName('UFCONSELHO').AsString;
    sNroCRO := FieldByname('CRO').AsString;
    dData := FieldByName('DATA').AsDateTime;

    {if FieldByname('IDADE').AsInteger > 17 then
    Begin
      frMaior.ShowReport;
    End
    Else
    Begin
      frMenor.ShowReport;
    End;

  }
  End;
end;

procedure TfrmRelTermoConsentimento.aGetValue(const VarName: string;
  var Value: Variant);
var
  sData : String;
begin
  inherited;
  if CompareText(VarName, 'RESPONSAVEL') = 0 then
  begin
    Value := sNomeResponsavel;
  end;
  if CompareText(VarName, 'PACIENTE') = 0 then
  begin
    Value := sNomePaciente;
  end;
  if CompareText(VarName, 'DENTISTA') = 0 then
  begin
    Value := sDentista;
  end;
  if CompareText(VarName, 'UFCRO') = 0 then
  begin
    Value := sUFCRO;
  end;
  if CompareText(VarName, 'NUMEROCRO') = 0 then
  begin
    Value := sNroCRO;
  end;
  if CompareText(VarName, 'CIDADE') = 0 then
  begin
    Value := Empresa.Cidade;
  end;
  if CompareText(VarName, 'DATAEHORA') = 0 then
  begin
    sData := FormatDateTime('DD', dData);
    sData := sData + ' de ' + FormatDateTime('MMMM', dData) + ' de ' +FormatDateTime('YYYY', dData);
    Value := sData;
  end;
  if CompareText(VarName, 'RGRESPONSAVEL') = 0 then
  begin
    Value := sRGResponsavel;
  end;
  if CompareText(VarName, 'RGPACIENTE') = 0 then
  begin
    Value := sRGPaciente;
  end;
end;

end.
