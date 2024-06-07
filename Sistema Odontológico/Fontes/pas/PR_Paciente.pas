unit PR_Paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, F_PainelPadrao, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, QRPDFFilt, QRCtrls,
  QuickRpt;

type
  TfrmPRelPaciente = class(TfrmPainelPadrao)
    rgAtivo: TRadioGroup;
    rgOrdem: TRadioGroup;
    rgTipo: TRadioGroup;
    GroupCategoria: TQRGroup;
    FooterCategoria: TQRBand;
    BandAnalitico: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    lbCNPJ: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel16: TQRLabel;
    lbl1: TQRLabel;
    QRDBText41: TQRDBText;
    BandSintetico: TQRBand;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    BandSinteticoF: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel19: TQRLabel;
    qryRel: TADOQuery;
    qryRelID_PACIENTE: TAutoIncField;
    qryRelID_FILIAL: TIntegerField;
    qryRelNOME: TStringField;
    qryRelCPF: TStringField;
    qryRelRG: TStringField;
    qryRelDTANASC: TDateTimeField;
    qryRelSEXO: TStringField;
    qryRelENDERECO: TStringField;
    qryRelNRO: TStringField;
    qryRelBAIRRO: TStringField;
    qryRelCEP: TStringField;
    qryRelID_CIDADE: TIntegerField;
    qryRelTELEFONE: TStringField;
    qryRelCELULAR: TStringField;
    qryRelTELCOMERCIAL: TStringField;
    qryRelEMAIL: TStringField;
    qryRelNOMEPAI: TStringField;
    qryRelNOMEMAE: TStringField;
    qryRelEMPRESA: TStringField;
    qryRelFUNCAO: TStringField;
    qryRelID_CONVENIO: TIntegerField;
    qryRelTIPO: TIntegerField;
    qryRelOBSERVACAO: TMemoField;
    qryRelAtivo: TStringField;
    qryRelDATACADASTRO: TDateTimeField;
    qryRelULTIMACONSULTA: TDateTimeField;
    qryRelTITULAR_DEPENDENTE: TIntegerField;
    qryRelID_TITULAR: TIntegerField;
    qryRelESTADOCIVIL: TIntegerField;
    qryRelCONJUGE: TStringField;
    qryRelREFERENCIA: TStringField;
    qryRelNUMEROCNS: TStringField;
    qryRelNUMERODACARTEIRA: TStringField;
    qryRelVALIDADECARTEIRA: TDateTimeField;
    qryRelDATADEADESAO: TDateTimeField;
    qryRelCidade: TStringField;
    qryRelUF: TStringField;
    QRLabel20: TQRLabel;
    QRDBText18: TQRDBText;
    qryRelConvenio: TStringField;
    QRLabel24: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    lblTotalCidade: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    procedure btnImprimirClick(Sender: TObject);
    procedure BandAnaliticoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FooterCategoriaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BandSinteticoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    rTotalCidade : Real;
  public
    { Public declarations }
  end;

var
  frmPRelPaciente: TfrmPRelPaciente;

implementation

{$R *.dfm}

procedure TfrmPRelPaciente.BandAnaliticoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rTotalCidade := rTotalCidade + 1;
end;

procedure TfrmPRelPaciente.BandSinteticoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  rTotalCidade := rTotalCidade + 1;
end;

procedure TfrmPRelPaciente.btnImprimirClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor:= crHourGlass;

  With qryRel do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PACIENTE.ID_PACIENTE, PACIENTE.ID_FILIAL, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO,');
      SQL.Add('PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.ID_CIDADE, PACIENTE.TELEFONE,');
      SQL.Add('PACIENTE.CELULAR, PACIENTE.TELCOMERCIAL, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE, PACIENTE.EMPRESA,');
      SQL.Add('PACIENTE.FUNCAO, PACIENTE.ID_CONVENIO, PACIENTE.TIPO, PACIENTE.OBSERVACAO, PACIENTE.Ativo, PACIENTE.DATACADASTRO,');
      SQL.Add('PACIENTE.ULTIMACONSULTA, PACIENTE.TITULAR_DEPENDENTE, PACIENTE.ID_TITULAR, PACIENTE.ESTADOCIVIL, PACIENTE.CONJUGE,');
      SQL.Add('PACIENTE.REFERENCIA, PACIENTE.NUMEROCNS, PACIENTE.NUMERODACARTEIRA, PACIENTE.VALIDADECARTEIRA,');
      SQL.Add('PACIENTE.DATADEADESAO, CIDADE.NOME AS Cidade, CIDADE.UF, CONVENIOS.NOME AS Convenio FROM PACIENTE');
      SQL.Add('INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE');
      SQL.Add('INNER JOIN CONVENIOS ON PACIENTE.ID_CONVENIO = CONVENIOS.ID_CONVENIO');
      SQL.Add('WHERE 1 = 1');

      case rgAtivo.ItemIndex of
      1: SQL.Add('AND PACIENTE.ATIVO = 1');
      2: SQL.Add('AND PACIENTE.ATIVO = 0');
      end;

      case rgOrdem.ItemIndex of
      0: SQL.Add('Order By PACIENTE.ID_PACIENTE, PACIENTE.NOME');
      1: SQL.Add('Order By PACIENTE.NOME, PACIENTE.ID_PACIENTE');
      end;

      Open;

      if RecordCount = 0 then
        Begin
          Exit;
        End;
    End;
  Screen.Cursor:= crDefault;
  Relatorio.RemoveBand(BandAnalitico);
  Relatorio.RemoveBand(BandSintetico);
  Relatorio.RemoveBand(BandSinteticoF);

  case rgTipo.ItemIndex of
    0: Relatorio.AddBand(BandAnalitico);

    1: Begin
        Relatorio.AddBand(BandSintetico);
        Relatorio.AddBand(BandSinteticoF);
       End;
  end;

  Relatorio.Preview;
end;

procedure TfrmPRelPaciente.FooterCategoriaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  lblTotalCidade.Caption := FloatToStr(rTotalCidade);
  rTotalCidade := 0;
end;

end.
