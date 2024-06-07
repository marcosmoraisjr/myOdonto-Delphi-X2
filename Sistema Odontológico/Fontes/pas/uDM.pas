unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TDM = class(TDataModule)
    Conexao: TADOConnection;
    qryAux: TADOQuery;
    qryAux2: TADOQuery;
    Envia: TIdHTTP;
    OdontosisWeb: TADOConnection;
    qryOdontosis: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}


procedure TDM.DataModuleCreate(Sender: TObject);
begin
  Conexao.Connected := False;
  Conexao.ConnectionString := '';
  Conexao.Close;
 // IdHTTP1.Get('http://system.human.com.br/GatewayIntegration/msgSms.do?dispatch=send&account=alessandro.tec&code=E5k7B6c861&to=554699009419&msg=fooooooooooooooooi');
end;

end.
