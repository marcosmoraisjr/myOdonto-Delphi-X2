unit F_Lembretes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.StdCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, JvComponentBase, JvEnterTab,
  Vcl.ComCtrls, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinsDefaultPainters, cxButtons, Vcl.Mask, JvExMask,
  JvToolEdit, Data.DB, Data.Win.ADODB, JvExStdCtrls, JvCombobox, Funcoes,
  JvDBSearchComboBox;

type
  TfrmLembretes = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EdtTitulo: TEdit;
    Label2: TLabel;
    EdtData: TJvDateEdit;
    GroupBox3: TGroupBox;
    mmoMensagem: TMemo;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    qryAux: TADOQuery;
    qryOperadores: TADOQuery;
    qryOperadoresNOME: TStringField;
    qryOperadoresID_OPERADORES: TAutoIncField;
    dsOperadores: TDataSource;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    iIDLembrete : Integer;
  public
    { Public declarations }
    Procedure CarregaLembrete(iLembrete : Integer);
  end;

var
  frmLembretes: TfrmLembretes;

implementation

{$R *.dfm}

procedure TfrmLembretes.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLembretes.btnSalvarClick(Sender: TObject);
begin
  inherited;


  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM LEMBRETES');
      SQL.Add('WHERE ID_LEMBRETES = :pID');
      Parameters.ParamByName('pID').Value := iIDLembrete;
      Open;

      if iIDLembrete > 0 then
        Begin
          Edit;
        End
      Else
        Begin
          Append;
        End;

      FieldByName('TITULO').AsString := EdtTitulo.Text;
      FieldByName('DATA').AsDateTime := EdtData.Date;
      FieldByName('MENSAGEM').AsString := mmoMensagem.Lines.Text;
      FieldByName('ID_OPERADOR').AsInteger := qryOperadoresID_OPERADORES.AsInteger;
      FieldByName('ID_OPERADORMENSAGEM').AsInteger := Operador.ID;
      Post;
    End;

    Close;
end;

procedure TfrmLembretes.CarregaLembrete(iLembrete: Integer);
begin
  iIDLembrete := iLembrete;

  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM LEMBRETES');
      SQL.Add('WHERE ID_LEMBRETES = :pID');
      Parameters.ParamByName('pID').Value := iIDLembrete;
      Open;

      EdtTitulo.Text := FieldByName('TITULO').AsString;
      EdtData.Date := FieldByName('DATA').AsDateTime;
      mmoMensagem.Lines.Text := FieldByName('MENSAGEM').AsString;
      qryOperadores.Locate('ID_OPERADORES', FieldByName('ID_OPERADOR').AsString, []);
    End;
end;

procedure TfrmLembretes.FormCreate(Sender: TObject);
begin
  inherited;
  iIDLembrete := 0;
  qryOperadores.Open;

  qryOperadores.Locate('ID_OPERADORES', Operador.ID, []);
end;

end.
