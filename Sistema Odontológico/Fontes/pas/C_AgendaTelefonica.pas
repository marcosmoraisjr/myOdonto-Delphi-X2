unit C_AgendaTelefonica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Buttons, Vcl.Mask,
  Vcl.StdCtrls, JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, cxButtons;

type
  TfrmCadAgendaTel = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdtNome: TEdit;
    EdtTelefone: TMaskEdit;
    EdtCelular: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdtObservacao: TEdit;
    qryAux: TADOQuery;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    bEditar : Boolean;
  public
    { Public declarations }
    iIDAgenda : Integer;
    Procedure CarregaDados;
  end;

var
  frmCadAgendaTel: TfrmCadAgendaTel;

implementation

{$R *.dfm}

procedure TfrmCadAgendaTel.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadAgendaTel.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if EdtNome.Text = '' then
    Begin
      application.MessageBox('O Campo "Nome" � obrigat�rio o preenchimento!','Erro!!!',mb_ok+MB_ICONERROR);
      EdtNome.SetFocus;
      Exit;
    End;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID_AGENDATELEFONE, NOME, TELEFONE, CELULAR, DESCRICAO FROM AGENDATELEFONE');
      SQL.Add('WHERE ID_AGENDATELEFONE = :pID');
      Parameters.ParamByName('pID').Value := iIDAgenda;
      Open;

      if bEditar then
        Begin
          Edit;
        End
      Else
        Begin
          Append;
        End;

      FieldByName('NOME').AsString := EdtNome.Text;
      FieldByName('TELEFONE').AsString := EdtTelefone.Text;
      FieldByname('CELULAR').ASString := EdtCelular.Text;
      FieldByName('DESCRICAO').AsString := EdtObservacao.Text;
      Post;
    End;

    Close;
end;

procedure TfrmCadAgendaTel.CarregaDados;
begin
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID_AGENDATELEFONE, NOME, TELEFONE, CELULAR, DESCRICAO FROM AGENDATELEFONE');
      SQL.Add('WHERE ID_AGENDATELEFONE = :pID');
      Parameters.ParamByName('pID').Value := iIDAgenda;
      Open;

      EdtNome.Text := FieldByname('NOME').AsString;
      EdtTelefone.Text := FieldByName('TELEFONE').AsString;
      EdtCelular.Text := FieldByName('CELULAR').AsString;
      EdtObservacao.Text := FieldByName('DESCRICAO').AsString;

      bEditar := True;
    End;
end;

procedure TfrmCadAgendaTel.FormCreate(Sender: TObject);
begin
  inherited;
  bEditar := False;
  iIDAgenda := 0;
end;

end.
