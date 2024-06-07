unit F_ProcedimentoDente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvComponentBase, JvEnterTab, Vcl.ComCtrls,
  Vcl.Buttons, Data.DB, Data.Win.ADODB, Funcoes, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup;

type
  TfrmProcedimentoDente = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtCodP: TJvComboEdit;
    EdtProcedimento: TEdit;
    GroupBox2: TGroupBox;
    lblDente: TLabel;
    EdtDente: TEdit;
    rgSituação: TRadioGroup;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    mmoTiSS: TMemo;
    cbProcGlosado: TCheckBox;
    Label3: TLabel;
    EdtDtGlosa: TJvDateEdit;
    mmoObs: TMemo;
    gbRegiao: TGroupBox;
    Label4: TLabel;
    cbTISS: TComboBox;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    qryAux: TADOQuery;
    qryAux2: TADOQuery;
    rgDenteRegiao: TRadioGroup;
    gbFace: TGroupBox;
    Label5: TLabel;
    cbFace: TComboBox;
    procedure btnFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtCodPExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgDenteRegiaoClick(Sender: TObject);
  private
    bEditar: Boolean;
    Procedure VerificaCampos;
    Procedure GravaPropostas;
  public
    iProcedimentoDentes, iPlanoTratamento, iOdontograma, iProcedimento, iDente,
      ParticularConvenio: Integer;
  end;

var
  frmProcedimentoDente: TfrmProcedimentoDente;

implementation

{$R *.dfm}

procedure TfrmProcedimentoDente.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmProcedimentoDente.btnSalvarClick(Sender: TObject);
begin
  inherited;

  VerificaCampos;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOSDENTES');
    SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = :pID');
    Parameters.ParamByName('pID').Value := iProcedimentoDentes;
    Open;

    if bEditar then
    Begin
      Edit;
    End
    Else
    Begin
      Append;
    End;

    FieldByName('DENTE').AsInteger := iDente;
    FieldByName('ID_PROCEDIMENTOS').AsString := EdtCodP.Text;
    FieldByName('ID_ODONTOGRAMA').AsInteger := iOdontograma;
    FieldByName('SITUACAO').AsInteger := rgSituação.ItemIndex;
    FieldByName('OBSERVACAO').AsString := mmoObs.Lines.Text;
    FieldByName('OBSERVACAOGLOSA').AsString := mmoTiSS.Lines.Text;
    FieldByName('DATADAGLOSA').AsDateTime := EdtDtGlosa.Date;
    FieldByName('PROCEDIMENTOGLOSADO').AsInteger :=
      BolInt(cbProcGlosado.Checked);
    FieldByName('PARTICULAR_CONVENIO').AsInteger := ParticularConvenio;
    FieldByName('DENTE_REGIAO').AsInteger := rgDenteRegiao.ItemIndex;

    if FieldByName('DENTE_REGIAO').AsInteger = 0 then
      Begin
        FieldByName('TISSFACE').AsInteger := cbFace.ItemIndex;
        FieldByName('DESCRICAOFACEREGIAO').AsString := cbFace.Text;
        FieldByName('TISSREGIAO').AsInteger := 0;
      End
    Else
      Begin
        FieldByName('TISSFACE').AsInteger := 0;
        FieldByName('DESCRICAOFACEREGIAO').AsString := cbTISS.Text;
        FieldByName('TISSREGIAO').AsInteger := cbTISS.ItemIndex;
      End;

    Post;
  End;

  if Not bEditar then
  Begin
    GravaPropostas;
  End;

  Close;
end;

procedure TfrmProcedimentoDente.EdtCodPExit(Sender: TObject);
begin
  inherited;
  { }
end;

procedure TfrmProcedimentoDente.FormActivate(Sender: TObject);
begin
  inherited;
  EdtCodP.Text := IntToStr(iProcedimento);
  EdtCodPExit(Self);
  EdtDente.Text := IntToStr(iDente);

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCRICAO FROM PROCEDIMENTOS');
    SQL.Add('WHERE ID_PROCEDIMENTOS = :pID');
    Parameters.ParamByName('pID').Value := iProcedimento;
    Open;

    EdtProcedimento.Text := FieldByName('DESCRICAO').AsString;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROCEDIMENTOSDENTES');
    SQL.Add('WHERE ID_PROCEDIMENTOSDENTES = :pID');
    Parameters.ParamByName('pID').Value := iProcedimentoDentes;
    Open;

    if Not Eof then
    Begin
      bEditar := True;
      rgDenteRegiao.ItemIndex := FieldByname('DENTE_REGIAO').AsInteger;
      rgDenteRegiaoClick(Self);
      rgSituação.ItemIndex := FieldByName('SITUACAO').AsInteger;
      cbTISS.ItemIndex := FieldByName('TISSREGIAO').AsInteger;
      mmoObs.Lines.Text := FieldByName('OBSERVACAO').AsString;
      mmoTiSS.Lines.Text := FieldByName('OBSERVACAOGLOSA').AsString;
      EdtDtGlosa.Date := FieldByName('DATADAGLOSA').AsDateTime;
      cbProcGlosado.Checked := IntBol(FieldByName('PROCEDIMENTOGLOSADO')
        .AsInteger);
      ParticularConvenio := FieldByName('PARTICULAR_CONVENIO').AsInteger;
      cbFace.ItemIndex := FieldByName('TISSFACE').AsInteger;

      if FieldByname('DENTE_REGIAO').AsInteger = 0 then
        Begin
          cbTISS.ItemIndex := 0;
        End
      Else
        Begin
          cbFace.ItemIndex := 0;
          EdtDente.Text := '0';
        End;
    End
    Else
    Begin
      bEditar := False;
    End;
  End;
end;

procedure TfrmProcedimentoDente.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0;
end;

procedure TfrmProcedimentoDente.GravaPropostas;
var
  iProcedimentoDente: Integer;
begin
  qryAux2.Close;
  qryAux2.SQL.Clear;
  qryAux2.SQL.Add('SELECT * FROM ITENSPROPOSTATRATAMENTO');
  qryAux2.SQL.Add('WHERE ID_ITENSPROPOSTATRATAMENTO = 0');
  qryAux2.Open;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Max(ID_PROCEDIMENTOSDENTES) as ID FROM PROCEDIMENTOSDENTES');
    Open;

    iProcedimentoDente := FieldByName('ID').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PROPOSTATRATAMENTO');
    SQL.Add('WHERE ID_PLANOTRATAMENTO  = :pID');
    Parameters.ParamByName('pID').Value := iPlanoTratamento;
    Open;

    while not Eof do
    Begin
      qryAux2.Append;
      qryAux2.FieldByName('ID_PROPOSTATRATAMENTO').AsInteger :=
        FieldByName('ID_PROPOSTATRATAMENTO').AsInteger;
      qryAux2.FieldByName('ID_PROCEDIMENTOSDENTES').AsInteger :=
        iProcedimentoDente;
      qryAux2.FieldByName('ValorAcrescimo').AsFloat := 0;
      qryAux2.FieldByName('ValorDesconto').AsFloat := 0;
      qryAux2.FieldByName('FATURADO').AsBoolean := False;
      qryAux2.FieldByName('SELECIONADO').AsBoolean := True;
      qryAux2.Post;
      Next;
    End;
  End;
end;

procedure TfrmProcedimentoDente.rgDenteRegiaoClick(Sender: TObject);
begin
  inherited;
  case rgDenteRegiao.ItemIndex of
    0:
      Begin
        gbRegiao.Visible := False;
        gbFace.Visible := True;
        EdtDente.Visible := True;
        lblDente.Visible := True;
      End;
    1:
      Begin
        gbRegiao.Visible := True;
        gbFace.Visible := False;
        EdtDente.Visible := False;
        lblDente.Visible := False;
      End;
  end;
end;

procedure TfrmProcedimentoDente.VerificaCampos;
begin
  if StrToInt(EdtCodP.Text) < 1 then
  Begin

    Exit;
  End;
end;

end.
