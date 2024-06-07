unit C_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.StdCtrls, cxButtons, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TfrmCMateriais = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    Label1: TLabel;
    EdtDescricao: TEdit;
    Label2: TLabel;
    EdtReferencia: TEdit;
    Label3: TLabel;
    EdtUnidade: TEdit;
    Label4: TLabel;
    EdtCodGrupo: TJvComboEdit;
    EdtGrupo: TEdit;
    Label5: TLabel;
    EdtValorCompra: TcxCurrencyEdit;
    Label6: TLabel;
    EdtEstoqueMinimo: TEdit;
    qryAux: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure EdtCodGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure EdtCodGrupoButtonClick(Sender: TObject);
    procedure EdtCodGrupoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iIDMaterial : Integer;
    Procedure CarregaFiltro(IDMaterial : Integer);
  end;

var
  frmCMateriais: TfrmCMateriais;

implementation

{$R *.dfm}

uses P_Grupos, Main;

procedure TfrmCMateriais.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCMateriais.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if EdtCodGrupo.Text = '' then
    Begin
      Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MATERIAIS');
      SQL.Add('WHERE ID_MATERIAIS = :pID');
      Parameters.ParamByName('pID').Value := iIDMaterial;
      Open;

      if iIDMaterial > 0 then Edit Else Append;

      FieldByName('DESCRICAO').AsString := EdtDescricao.Text;
      FieldByName('ID_GRUPO').AsString := EdtCodGrupo.Text;
      FieldByName('REFERENCIA').AsString := EdtReferencia.Text;
      FieldByName('UNIDADE').AsString := EdtUnidade.Text;
      FieldByName('PRECOCOMPRA').AsFloat := EdtValorCompra.Value;
      FieldByName('QTDEMIN').AsString := EdtEstoqueMinimo.Text;
      Post;
    End;

  Close;
end;

procedure TfrmCMateriais.CarregaFiltro(IDMaterial: Integer);
begin
  iIDMaterial := IDMaterial;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MATERIAIS');
      SQL.Add('WHERE ID_MATERIAIS = :pID');
      Parameters.ParamByName('pID').Value := iIDMaterial;
      Open;

      EdtDescricao.Text := FieldByName('DESCRICAO').AsString;
      EdtCodGrupo.Text := FieldByName('ID_GRUPO').AsString;
      EdtReferencia.Text := FieldByName('REFERENCIA').AsString;
      EdtUnidade.Text := FieldByName('UNIDADE').AsString;
      EdtValorCompra.Value := FieldByName('PRECOCOMPRA').AsFloat;
      EdtEstoqueMinimo.Text := FieldByName('QTDEMIN').AsString;
      EdtCodGrupoExit(Self);
    End;
end;

procedure TfrmCMateriais.EdtCodGrupoButtonClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmPGrupos, frmPGrupos);
  frmPGrupos.bFechar := True;
  frmPGrupos.ShowModal;
  FreeAndNil(frmPGrupos);
  EdtCodGrupo.Text := frmMain.sCod;
  EdtCodGrupoExit(Self);
end;

procedure TfrmCMateriais.EdtCodGrupoExit(Sender: TObject);
begin
  inherited;
  if EdtCodGrupo.Text = '' then
    Begin
      EdtGrupo.Text := '';
      Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO FROM GRUPO');
      SQL.Add('WHERE ID_GRUPO = :pID');
      Parameters.ParamByName('pID').Value := EdtCodGrupo.Text;
      Open;

      if Not Eof then
        Begin
          EdtGrupo.Text := FieldByName('DESCRICAO').AsString;
        End
      Else
        Begin
          EdtGrupo.Text := '';
          EdtCodGrupo.Text := '';
        End;

    End;
end;

procedure TfrmCMateriais.EdtCodGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (Key in ['0'..'9',Chr(8)]) then Key := #0;
end;

end.
