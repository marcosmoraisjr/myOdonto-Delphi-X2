unit C_Anamnese;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls,
  JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, cxButtons;

type
  TfrmCadastroAnamnese = class(TfrmPadrao)
    Paci�nte: TGroupBox;
    GroupBox1: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    qryPerguntas: TADOQuery;
    dsPerguntas: TDataSource;
    qryPerguntasDescricao: TStringField;
    qryPerguntasObrigatorio: TBooleanField;
    qryAux: TADOQuery;
    EdtDescricao: TEdit;
    qryPerguntasIDAnamnese: TIntegerField;
    qryPerguntasIDPergunta: TIntegerField;
    btnSalvar: TcxButton;
    btnDeletar: TcxButton;
    btnFechar: TcxButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    iIDAnamnese: Integer;
    bEditar: Boolean;
  end;

var
  frmCadastroAnamnese: TfrmCadastroAnamnese;

implementation

{$R *.dfm}

uses Main;

procedure TfrmCadastroAnamnese.btnDeletarClick(Sender: TObject);
begin
  inherited;
if qryPerguntasDescricao.AsString <> '' then
  Begin
    If application.MessageBox(PChar('Deseja realmente deletar a pergunta: '+ qryPerguntasDescricao.AsString +'?'), 'Aten��o!',
        MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES Then
      Begin
        if qryPerguntasIDPergunta.AsString <> '' then
          Begin
            With qryAux do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('DELETE FROM PERGUNTASANAMNESE');
                SQL.Add('WHERE ID_PERGUNTASANAMNESE = :pID');
                Parameters.ParamByName('pID').Value := qryPerguntasIDPergunta.AsInteger;
                ExecSQL;
              End;
          End;
          qryPerguntas.Delete;
      End;
  End;
end;

procedure TfrmCadastroAnamnese.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadastroAnamnese.btnSalvarClick(Sender: TObject);
var
  dData: TDateTime;
begin
  inherited;

  dData := Now;

  if EdtDescricao.Text = '' then
  Begin
    application.MessageBox('O campo descri��o � obrigat�rio!', 'Erro!',
      mb_ok + MB_ICONERROR);
    Exit;
  End;

  if qryPerguntas.RecordCount = 0 then
  Begin
    application.MessageBox('� obrigat�rio inserir pelo menos uma pergunta.',
      'Erro!', mb_ok + MB_ICONERROR);
    Exit;
  End;

  qryPerguntas.First;

  if Not bEditar then
  Begin

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ANAMNESE');
      SQL.Add('WHERE ID_ANAMNESE = 0');
      Open;

      Append;
      FieldByName('DESCRICAO').AsString := EdtDescricao.Text;
      FieldByName('DATA').AsDateTime := dData;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ANAMNESE');
      SQL.Add('WHERE DESCRICAO = :pDesc');
      SQL.Add('AND DATA = :pData');
      Parameters.ParamByName('pDesc').Value := EdtDescricao.Text;
      Parameters.ParamByName('pData').Value := dData;
      Open;

      iIDAnamnese := FieldByName('ID_ANAMNESE').AsInteger;
      bEditar := True;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASANAMNESE');
      SQL.Add('WHERE ID_PERGUNTASANAMNESE = 0');
      Open;

      while not qryPerguntas.Eof do
      Begin

        Append;
        FieldByName('ID_ANAMNESE').AsInteger := iIDAnamnese;
        FieldByName('PERGUNTA').AsString :=
          qryPerguntas.FieldByName('DESCRICAO').AsString;
        FieldByName('OBRIGATORIO').AsBoolean :=
          qryPerguntas.FieldByName('OBRIGATORIO').AsBoolean;
        Post;

        qryPerguntas.Next;
      End;
    End;

  End
  Else
  Begin
    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ANAMNESE');
      SQL.Add('WHERE ID_ANAMNESE = :pID');
      Parameters.ParamByName('pID').Value := iIDAnamnese;
      Open;

      Edit;
      FieldByName('DESCRICAO').AsString := EdtDescricao.Text;
      FieldByName('DATA').AsDateTime := dData;
      Post;

      qryPerguntas.First;

      while Not qryPerguntas.Eof do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM PERGUNTASANAMNESE');
          SQL.Add('WHERE ID_ANAMNESE = :pID');
          SQL.Add('AND ID_PERGUNTASANAMNESE = :pAnam');
          Parameters.ParamByName('pID').Value := iIDAnamnese;
          Parameters.ParamByName('pAnam').Value := qryPerguntasIDPergunta.AsInteger;
          Open;

          if qryAux.Eof then
            Begin
              Append;
            End
          Else
            Begin
              Edit;
            End;

          FieldByName('ID_ANAMNESE').AsInteger := iIDAnamnese;
          FieldByName('PERGUNTA').AsString := qryPerguntasDescricao.AsString;
          FieldByName('OBRIGATORIO').AsBoolean := qryPerguntasObrigatorio.AsBoolean;

          Post;

          qryPerguntas.Next;
        End;
    End;
  End;

  Close;
end;

procedure TfrmCadastroAnamnese.FormCreate(Sender: TObject);
begin
  inherited;
  if frmMain.bEditar then
  Begin

    bEditar := True;
    iIDAnamnese := StrToInt(frmMain.sCod);
    frmMain.bEditar := False;

    With qryAux do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM ANAMNESE');
        SQL.Add('WHERE ID_ANAMNESE = :pID');
        Parameters.ParamByName('pID').Value := iIDAnamnese;
        Open;

        EdtDescricao.Text := FieldByName('DESCRICAO').AsString;

        Close;
        SQL.Clear;
        SQL.Add('select * from PERGUNTASANAMNESE');
        SQL.Add('WHERE ID_ANAMNESE = :pID');
        Parameters.ParamByName('pID').Value := iIDAnamnese;
        Open;

        qryPerguntas.Close;
        qryPerguntas.Open;

        while Not Eof do
          Begin

            qryPerguntas.Append;
            qryPerguntasDescricao.AsString := FieldByName('PERGUNTA').AsString;
            qryPerguntasIDPergunta.AsInteger := FieldByName('ID_PERGUNTASANAMNESE').AsInteger;
            qryPerguntasObrigatorio.AsBoolean := FieldByName('OBRIGATORIO').AsBoolean;
            qryPerguntas.Post;

            Next;
          End;
      End;
  End;
end;

end.
