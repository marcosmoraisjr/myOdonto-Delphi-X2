unit C_Grupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

type
  TfrmCadGrupos = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtDescricao: TEdit;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    qryAux: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iIDGrupo : Integer;
    Procedure CarregaFiltros(IDGrupo : Integer);
  end;

var
  frmCadGrupos: TfrmCadGrupos;

implementation

{$R *.dfm}

procedure TfrmCadGrupos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadGrupos.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if EdtDescricao.Text = '' then
    Begin
      application.MessageBox('O campo "Descri��o" � obrigat�rio o preenchimento!', 'Erro!',
        mb_ok + MB_ICONERROR);
      Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM GRUPO');
      SQL.Add('WHERE ID_GRUPO = :pID');
      Parameters.ParamByName('pID').Value := iIDGrupo;
      Open;

      if iIDGrupo > 0 then Edit Else Append;

      FieldByName('DESCRICAO').AsString := EdtDescricao.Text;

      Post;
    End;

    Close;
end;

procedure TfrmCadGrupos.CarregaFiltros(IDGrupo: Integer);
begin
  iIDGrupo := IDGrupo;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM GRUPO');
      SQL.Add('WHERE ID_GRUPO = :pID');
      Parameters.ParamByName('pID').Value := iIDGrupo;
      Open;

      EdtDescricao.Text := FieldByName('DESCRICAO').AsString;
    End;
end;

procedure TfrmCadGrupos.FormCreate(Sender: TObject);
begin
  inherited;
  iIDGrupo := 0;
end;

end.
