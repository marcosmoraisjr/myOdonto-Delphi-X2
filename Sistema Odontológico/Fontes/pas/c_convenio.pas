unit C_Convenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, JvComponentBase, JvEnterTab, Data.DB, Data.Win.ADODB, funcoes,
  Vcl.Buttons, JvToolEdit, JvExMask, Vcl.Mask, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxCurrencyEdit;

type
  TfrmCadConvenio = class(TfrmPadrao)
    qryAux: TADOQuery;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtConvenio: TEdit;
    Label2: TLabel;
    EdtRegistroANS: TEdit;
    Label3: TLabel;
    cbTabelaRef: TComboBox;
    cbAtivo: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    iID: Integer;
    bEditar: Boolean;
    Procedure VerificaFiltros;
  public

  end;

var
  frmCadConvenio: TfrmCadConvenio;

implementation

{$R *.dfm}

uses L_Cidade, Main, L_Convenios;

procedure TfrmCadConvenio.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadConvenio.btnSalvarClick(Sender: TObject);
var
  bAdd : Boolean;
begin
  inherited;

  if EdtConvenio.Text = '' then
  Begin
    application.MessageBox
      ('O campo "Conv�nio/Tabela" � obrigat�rio o preenchimento!', 'Erro!!!',
      mb_ok + MB_ICONERROR);
    EdtConvenio.SetFocus;
    Exit;
  End;

  if EdtRegistroANS.Text = '' then
  Begin
    application.MessageBox
      ('O campo "Registro ANS" � obrigat�rio o preenchimento!', 'Erro!!!',
      mb_ok + MB_ICONERROR);
    EdtRegistroANS.SetFocus;
    Exit;
  End;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CONVENIOS');
    SQL.Add('WHERE ID_CONVENIO = :pID');
    Parameters.ParamByName('pID').Value := iID;
    Open;

    if bEditar then
    Begin
      Edit;
      bAdd := False;
    End
    Else
    Begin
      Append;
      bAdd := True;
    End;

    FieldByName('ATIVO').AsInteger := BolInt(cbAtivo.Checked);
    FieldByName('NOME').AsString := EdtConvenio.Text;
    FieldByName('REGISTROANS').AsString := EdtRegistroANS.Text;
    FieldByName('TABELADEREF').AsInteger := cbTabelaRef.ItemIndex;
    FieldByName('NOMETABELA').AsString := cbTabelaRef.Text;
    Post;


    if (bAdd) and (cbTabelaRef.ItemIndex = 0) then
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT MAX(ID_CONVENIO) as ID FROM CONVENIOS');
        Open;

        GeraCategoriaProcedimentos(FieldByName('ID').AsInteger);
      End;

  End;

  Close;
end;

procedure TfrmCadConvenio.FormActivate(Sender: TObject);
begin
  inherited;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CONVENIOS');
    SQL.Add('WHERE ID_CONVENIO = :pID');
    Parameters.ParamByName('pID').Value := frmMain.sCod;
    Open;

    if not Eof then
    Begin
      bEditar := True;
      cbAtivo.Checked := IntBol(FieldByName('ATIVO').AsInteger);
      iID := FieldByName('ID_CONVENIO').AsInteger;
    End
    Else
    Begin
      bEditar := False;
      iID := 0;
    End;

    if iID = 1 then
      Begin
        EdtConvenio.ReadOnly := True;
        cbAtivo.Enabled := False;
      End;

    EdtConvenio.Text := FieldByName('NOME').AsString;
    EdtRegistroANS.Text := FieldByName('REGISTROANS').AsString;
    cbTabelaRef.ItemIndex := FieldByName('TABELADEREF').AsInteger;
  End;

End;

procedure TfrmCadConvenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmCadConvenio.VerificaFiltros;
begin

end;

end.
