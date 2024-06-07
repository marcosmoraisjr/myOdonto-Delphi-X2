unit C_ExameOral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.StdCtrls, Vcl.Buttons, Funcoes, Data.DB, Data.Win.ADODB;

type
  TfrmCExameOral = class(TfrmPadrao)
    btnFechar: TSpeedButton;
    Paci�nte: TGroupBox;
    EdtDescricao: TEdit;
    GroupBox1: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    btnSalvar: TSpeedButton;
    dsPerguntas: TDataSource;
    qryPerguntas: TADOQuery;
    qryPerguntasDescricao: TStringField;
    qryPerguntasObrigatorio: TBooleanField;
    qryPerguntasIDAnamnese: TIntegerField;
    qryPerguntasIDPergunta: TIntegerField;
    qryAux: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    iIDExameOral: Integer;
    bEditar: Boolean;
  end;

var
  frmCExameOral: TfrmCExameOral;

implementation

{$R *.dfm}

uses Main;

procedure TfrmCExameOral.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCExameOral.btnSalvarClick(Sender: TObject);
var
  dData: TDateTime;
begin
  inherited;

  dData := Now;

  if EdtDescricao.Text = '' then
  Begin
    application.MessageBox('O campo descri��o � obrigat�rio!', 'Erro!!!',
      mb_ok + MB_ICONERROR);
    Exit;
  End;

  if qryPerguntas.RecordCount = 0 then
  Begin
    application.MessageBox('� obrigat�rio inserir pelo menos uma pergunta.',
      'Erro!!!', mb_ok + MB_ICONERROR);
    Exit;
  End;

  qryPerguntas.First;

  if Not bEditar then
  Begin

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM EXAMEORAL');
      SQL.Add('WHERE ID_EXAMEORAL = 0');
      Open;

      Append;
      FieldByName('DESCRICAO').AsString := EdtDescricao.Text;
      FieldByName('DATA').AsDateTime := dData;
      Post;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM EXAMEORAL');
      SQL.Add('WHERE DESCRICAO = :pDesc');
      SQL.Add('AND DATA = :pData');
      Parameters.ParamByName('pDesc').Value := EdtDescricao.Text;
      Parameters.ParamByName('pData').Value := dData;
      Open;

      iIDExameOral := FieldByName('ID_EXAMEORAL').AsInteger;
      bEditar := True;

      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERGUNTASEXAMEORAL');
      SQL.Add('WHERE ID_PERGUNTASEXAMEORAL = 0');
      Open;

      while not qryPerguntas.Eof do
      Begin

        Append;
        FieldByName('ID_EXAMEORAL').AsInteger := iIDExameOral;
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
      SQL.Add('SELECT * FROM EXAMEORAL');
      SQL.Add('WHERE ID_EXAMEORAL = :pID');
      Parameters.ParamByName('pID').Value := iIDExameOral;
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
          SQL.Add('SELECT * FROM PERGUNTASEXAMEORAL');
          SQL.Add('WHERE ID_EXAMEORAL = :pID');
          SQL.Add('AND ID_PERGUNTASEXAMEORAL = :pAnam');
          Parameters.ParamByName('pID').Value := iIDExameOral;
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

          FieldByName('ID_EXAMEORAL').AsInteger := iIDExameOral;
          FieldByName('PERGUNTA').AsString := qryPerguntasDescricao.AsString;
          FieldByName('OBRIGATORIO').AsBoolean := qryPerguntasObrigatorio.AsBoolean;

          Post;

          qryPerguntas.Next;
        End;
    End;
  End;

  Close;

end;

procedure TfrmCExameOral.FormCreate(Sender: TObject);
begin
  inherited;

  if frmMain.bEditar then
  Begin
    bEditar := True;
    iIDExameOral := StrToInt(frmMain.sCod);
    frmMain.bEditar := False;

    With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM EXAMEORAL');
      SQL.Add('WHERE ID_EXAMEORAL = :pID');
      Parameters.ParamByName('pID').Value := iIDExameOral;
      Open;

      EdtDescricao.Text := FieldByName('DESCRICAO').AsString;

      Close;
      SQL.Clear;
      SQL.Add('select * from PERGUNTASEXAMEORAL');
      SQL.Add('WHERE ID_EXAMEORAL = :pID');
      Parameters.ParamByName('pID').Value := iIDExameOral;
      Open;

      qryPerguntas.Close;
      qryPerguntas.Open;

      while Not Eof do
      Begin

        qryPerguntas.Append;
        qryPerguntasDescricao.AsString := FieldByName('PERGUNTA').AsString;
        qryPerguntasIDPergunta.AsInteger := FieldByName('ID_PERGUNTASANAMNESE')
          .AsInteger;
        qryPerguntasObrigatorio.AsBoolean := FieldByName('OBRIGATORIO')
          .AsBoolean;
        qryPerguntas.Post;

        Next;
      End;
    End;
  End;
end;

end.
