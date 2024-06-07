unit E_FotoPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Funcoes, Padrao, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Mask, JvExMask, JvToolEdit, Vcl.StdCtrls,
  cxButtons, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, JvComponentBase,
  JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TfrmEditarFotoPaciente = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    btnFechar: TcxButton;
    btnSalvar: TcxButton;
    Label1: TLabel;
    EdtDescricao: TEdit;
    Label2: TLabel;
    EdtDt: TJvDateEdit;
    ImagemPaciente: TADOConnection;
    qryAux: TADOQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    iID : Integer;
  public
    { Public declarations }
    Procedure CarregaFoto(ID : Integer);
  end;

var
  frmEditarFotoPaciente: TfrmEditarFotoPaciente;

implementation

{$R *.dfm}

procedure TfrmEditarFotoPaciente.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmEditarFotoPaciente.btnSalvarClick(Sender: TObject);
begin
  inherited;
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO, DATA FROM FOTOSPACIENTE');
      SQL.Add('WHERE ID_FOTOSPACIENTE  = :pID');
      Parameters.ParamByName('pID').Value := iID;
      Open;

      Edit;
      FieldByName('DESCRICAO').AsString := EdtDescricao.Text;
      FieldByName('DATA').AsDateTime    := EdtDt.Date;
      Post;
    End;
  Close;
end;

procedure TfrmEditarFotoPaciente.CarregaFoto(ID: Integer);
begin

  iID := ID;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DESCRICAO, DATA FROM FOTOSPACIENTE');
      SQL.Add('WHERE ID_FOTOSPACIENTE  = :pID');
      Parameters.ParamByName('pID').Value := ID;
      Open;

      EdtDescricao.Text := FieldByName('DESCRICAO').AsString;
      EdtDt.Date        := FieldByName('DATA').AsDateTime;
    End;
end;

procedure TfrmEditarFotoPaciente.FormCreate(Sender: TObject);
var
  sConect : String;
begin
  inherited;
    sConect := '';
    sConect := sConect + ' Provider=SQLOLEDB.1; ';
    sConect := sConect + ' Persist Security Info=True; ';
    sConect := sConect + ' User ID=' + CfgAcesso.Usuario + '; ';
    sConect := sConect + ' Password=' + CfgAcesso.Senha + '; ';
    sConect := sConect + ' Initial Catalog=ODSIMAGENS; ';
    sConect := sConect + ' Data Source=' + CfgAcesso.Servidor;

    ImagemPaciente.ConnectionString := sConect;
    ImagemPaciente.Connected := True;
end;

end.
