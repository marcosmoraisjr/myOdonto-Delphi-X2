unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Funcoes,
  Vcl.Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, cxButtons, Vcl.Mask, JvExMask,
  JvToolEdit,
  cxControls, cxContainer, cxEdit, cxProgressBar, JvBaseDlg, JvSelectDirectory,
  JvComponentBase, JvZlibMultiple;

type
  TfrmMain = class(TForm)
    gbAnexar: TGroupBox;
    lblDescricao: TLabel;
    Conexao: TADOConnection;
    qryAux: TADOQuery;
    gbBackup: TGroupBox;
    GroupBox2: TGroupBox;
    btnGerarBackup: TcxButton;
    Barra: TcxProgressBar;
    Label1: TLabel;
    lblStatusBackup: TLabel;
    ListaArquivos: TListBox;
    EdtDestino: TEdit;
    SpeedButton1: TSpeedButton;
    AbrePasta: TJvSelectDirectory;
    gbRestaurar: TGroupBox;
    Label2: TLabel;
    lblStatusRestauracao: TLabel;
    GroupBox3: TGroupBox;
    SpeedButton2: TSpeedButton;
    EdtDestinoRestauracao: TEdit;
    btnRestaurar: TcxButton;
    BarraRestauracao: TcxProgressBar;
    AbreArquivo: TOpenDialog;
    Compactador: TJvZlibMultiple;
    Button1: TButton;
    procedure btnGerarBackupClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnRestaurarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure AnexaDB;
    Procedure ConectaBanco(Banco: String);
    Procedure ValidaCampo;
    Procedure CompactaPastas;
    Procedure AnexaDBO;
    Procedure AnexaODSIMG;
    Procedure AnexaODSWord;
    Procedure AnexaODSUpdate;

  public
    { Public declarations }
    Procedure MontaForm(iTipo: Integer);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
{ TfrmMain }

procedure TfrmMain.AnexaDB;
begin
  Conexao.ConnectionString :=
    'Provider=SQLOLEDB.1;Password=12345;Persist Security Info=True;User ID=sa;Initial Catalog=master;Data Source=.\ODONTOSIS';
  Conexao.Connected := True;

  AnexaDBO;
  AnexaODSIMG;
  AnexaODSWord;
  AnexaODSUpdate;

  Conexao.Connected := False;
  Close;
end;

procedure TfrmMain.AnexaDBO;
begin
    With qryAux do
    Try
      Close;
      SQL.Clear;
      SQL.Add('CREATE DATABASE [ODONTOSIS] ON');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODONTOSIS.mdf') + ' ),');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODONTOSIS_log.ldf') + ' )');
      SQL.Add('FOR ATTACH');
      ExecSQL;
    Except
     On E: Exception do
     //Ignora os Erros
    End;
end;

procedure TfrmMain.AnexaODSIMG;
begin
    With qryAux do
    Try
      Close;
      SQL.Clear;
      SQL.Add('CREATE DATABASE [ODSIMAGENS] ON');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODSIMAGENS.mdf') + ' ),');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODSIMAGENS_log.ldf') + ' )');
      SQL.Add('FOR ATTACH');
      ExecSQL;
    Except
     On E: Exception do
     //Ignora os Erros
    End;
end;

procedure TfrmMain.AnexaODSUpdate;
begin
    With qryAux do
    Try
      Close;
      SQL.Clear;
      SQL.Add('CREATE DATABASE [ODSUPDATE] ON');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODSUPDATE.mdf') + ' ),');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODSUPDATE_log.ldf') + ' )');
      SQL.Add('FOR ATTACH');
      ExecSQL;
    Except
     On E: Exception do
     //Ignora os Erros
    End;
end;

procedure TfrmMain.AnexaODSWord;
begin
    With qryAux do
    Try
      Close;
      SQL.Clear;
      SQL.Add('CREATE DATABASE [ODSWORD] ON');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODSWORD.mdf') + ' ),');
      SQL.Add('( FILENAME = N' + QuotedStr(PastaArquivo +
        'Data\ODSWORD_log.ldf') + ' )');
      SQL.Add('FOR ATTACH');
      ExecSQL;
    Except
     On E: Exception do
     //Ignora os Erros
    End;
end;

procedure TfrmMain.btnGerarBackupClick(Sender: TObject);
var
  sBase: String;
begin
  if EdtDestino.Text = '' then
  Begin
    application.MessageBox('O Campo "Destino" � obrigat�rio o preenchimento!',
      'Erro!', mb_ok + MB_ICONERROR);
    EdtDestino.SetFocus;
    Exit;
  End;

  ValidaCampo;
  lblStatusBackup.Caption := 'Gerando C�pia de Seguran�a...';
  Barra.Properties.Text := 'Gerando...';
  btnGerarBackup.Enabled := False;
  Barra.Properties.Max := 5;
  Barra.Position := 0;
  ConectaBanco('ODONTOSIS');
  frmMain.Update;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM OPINT');
    Open;

    sBase := FieldByName('CODCLIENTE').AsString;
  End;

  ConectaBanco('MASTER');
  sBase := sBase + '-Odontosis.zip';
  Barra.Position := Barra.Position + 1;
  frmMain.Update;

  With qryAux do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('BACKUP DATABASE :pBase TO DISK = :pDir1 WITH INIT');
    Parameters.ParamByName('pBASE').Value := CFGAcesso.Base;
    Parameters.ParamByName('pDir1').Value := EdtDestino.Text + '\' +CFGAcesso.Base + '.bak';
    ExecSQL;

    Barra.Position := Barra.Position + 1;

    frmMain.Update;
    Close;
    SQL.Clear;
    SQL.Add('BACKUP DATABASE ODSIMAGENS TO DISK = :pDir1 WITH INIT');
    Parameters.ParamByName('pDir1').Value := EdtDestino.Text + '\ODSIMAGENS.bak';
    ExecSQL;

    Barra.Position := Barra.Position + 1;

    frmMain.Update;
    Close;
    SQL.Clear;
    SQL.Add('BACKUP DATABASE ODSWORD TO DISK = :pDir1 WITH INIT');
    Parameters.ParamByName('pDir1').Value := EdtDestino.Text + '\ODSWORD.bak';
    ExecSQL;

    Barra.Position := Barra.Position + 1;

    frmMain.Update;
    ListaArquivos.Clear;
    ListaArquivos.Items.Add(EdtDestino.Text + '\' + CFGAcesso.Base + '.bak');
    ListaArquivos.Items.Add(EdtDestino.Text +'\ODSIMAGENS.bak');
    ListaArquivos.Items.Add(EdtDestino.Text +'\ODSWORD.bak');
    Compactar(ListaArquivos.Items, EdtDestino.Text + '\' + sBase);
    Barra.Position := Barra.Position + 1;
    DeleteFile(EdtDestino.Text +'\ODSIMAGENS.bak');
    DeleteFile(EdtDestino.Text +'\ODSWORD.bak');
    DeleteFile(EdtDestino.Text + '\' + CFGAcesso.Base + '.bak');
    Barra.Properties.Text := 'Completo!';
  End;
  EdtDestino.Text := EdtDestino.Text + '\';
  lblStatusBackup.Caption := 'Gerado com sucesso!';
  btnGerarBackup.Enabled := True;
  frmMain.Update;
end;

procedure TfrmMain.btnRestaurarClick(Sender: TObject);
begin
  if EdtDestinoRestauracao.Text = '' then
  Begin
    application.MessageBox('O Campo "Destino" � obrigat�rio o preenchimento!',
      'Erro!', mb_ok + MB_ICONERROR);
    EdtDestino.SetFocus;
    Exit;
  End;


  lblStatusRestauracao.Caption := 'Restaurando C�pia de Seguran�a...';
  BarraRestauracao.Properties.Text := 'Restaurando...';
  frmMain.Update;
  btnRestaurar.Enabled := False;
  BarraRestauracao.Properties.Max := 5;
  BarraRestauracao.Position := 0;
  frmMain.Update;
  if not DirectoryExists('C:\Odontosis\Temp\') then
    Begin
      ForceDirectories('C:\Odontosis\Temp\');
    End;

  Descompactar(EdtDestinoRestauracao.Text, 'C:\Odontosis\Temp\');
  ConectaBanco('MASTER');
  BarraRestauracao.Position := BarraRestauracao.Position  + 1;
  frmMain.Update;
  With qryAux do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('RESTORE DATABASE [ODSIMAGENS] FROM  DISK = :pLocal WITH REPLACE');
      Parameters.ParamByName('pLocal').Value := 'C:\Odontosis\Temp\ODSIMAGENS.BAK';
      ExecSQL;

      BarraRestauracao.Position := BarraRestauracao.Position  + 1;
      frmMain.Update;

      Close;
      SQL.Clear;
      SQL.Add('RESTORE DATABASE [ODONTOSIS] FROM  DISK = :pLocal WITH REPLACE');
      Parameters.ParamByName('pLocal').Value := 'C:\Odontosis\Temp\ODONTOSIS.BAK';
      ExecSQL;

      BarraRestauracao.Position := BarraRestauracao.Position  + 1;
      frmMain.Update;

      Close;
      SQL.Clear;
      SQL.Add('RESTORE DATABASE [ODSWORD] FROM  DISK = :pLocal WITH REPLACE');
      Parameters.ParamByName('pLocal').Value := 'C:\Odontosis\Temp\ODSWORD.BAK';
      ExecSQL;

      BarraRestauracao.Position := BarraRestauracao.Position  + 1;
    End;
     frmMain.Update;
  if DirectoryExists('C:\Odontosis\Temp\') then
    Begin
      DeleteFile('C:\Odontosis\Temp\ODSIMAGENS.BAK');
      DeleteFile('C:\Odontosis\Temp\ODONTOSIS.BAK');
      DeleteFile('C:\Odontosis\Temp\ODSWORD.BAK');
      RemoveDir('C:\Odontosis\Temp\');
    End;

    BarraRestauracao.Position := BarraRestauracao.Position  + 1;
    BarraRestauracao.Properties.Text := 'Completo!';
    lblStatusRestauracao.Caption := 'Restaurado com sucesso!';
    btnRestaurar.Enabled := True;
    frmMain.Update;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
 // CompactaPastas;
end;

procedure TfrmMain.CompactaPastas;
begin
  With Compactador do
    Begin
      CompressDirectory('C:\Odontosis\Img\', True, 'C:\Odontosis\Temp\Img.ods');
      CompressDirectory('C:\Odontosis\Schema\', True, 'C:\Odontosis\Temp\Schema.ods');
      CompressDirectory('C:\Odontosis\', False, 'C:\Odontosis\Temp\Sistema.ods');
      CompressDirectory('C:\Odontosis\Temp\', False, 'C:\Odontosis\Update.ods');
      DeleteFile('C:\Odontosis\Temp\Img.ods');
      DeleteFile('C:\Odontosis\Temp\Schema.ods');
      DeleteFile('C:\Odontosis\Temp\Sistema.ods');
      RemoveDir('C:\Odontosis\Temp\');
    End;
end;

procedure TfrmMain.ConectaBanco(Banco: String);
var
  sConect: string;
begin
  sConect := '';
  sConect := sConect + ' Provider=SQLOLEDB.1; ';
  sConect := sConect + ' Persist Security Info=True; ';
  sConect := sConect + ' User ID=' + CFGAcesso.Usuario + '; ';
  sConect := sConect + ' Password=' + CFGAcesso.Senha + '; ';
  sConect := sConect + ' Initial Catalog=' + Banco + '; ';
  sConect := sConect + ' Data Source=' + CFGAcesso.Servidor;

  Conexao.Close;
  Conexao.ConnectionString := sConect;
  Conexao.Open;
  Conexao.Connected := True;
end;

procedure TfrmMain.MontaForm(iTipo: Integer);
begin
  case iTipo of
    0:
      Begin
        gbAnexar.Visible := True;
        gbAnexar.Align := alTop;
        frmMain.BorderStyle := bsNone;
        frmMain.Height := 64;
        frmMain.Width := 438;
        AnexaDB;
      End;

    1:
      Begin
        CarregaAcessoSistema;
        gbBackup.Visible := True;
        gbBackup.Align := alTop;
        frmMain.BorderStyle := bsSizeable;
        frmMain.Height := 171;
        frmMain.Width := 459;
      End;

    2:
      Begin
        CarregaAcessoSistema;
        gbRestaurar.Visible := True;
        gbRestaurar.Align := alTop;
        frmMain.BorderStyle := bsSizeable;
        frmMain.Height := 171;
        frmMain.Width := 459;
      End;
    3:
      Begin

      End;
  end;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  AbrePasta.Execute;
  EdtDestino.Text := AbrePasta.Directory;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
  AbreArquivo.Execute;
  EdtDestinoRestauracao.Text := AbreArquivo.FileName;
end;

procedure TfrmMain.ValidaCampo;
var
  sAux : String;
begin
 sAux := Copy(EdtDestino.Text,Length(EdtDestino.Text), 1);

 if sAux = '\' then
  Begin
    EdtDestino.Text := Copy(EdtDestino.Text, 0, Length(EdtDestino.Text) -1);
  End;
end;

end.
