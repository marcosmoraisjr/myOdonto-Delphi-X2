unit F_HistoricoCheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Data.DB, Data.Win.ADODB;

type
  TfrmHistoricoCheque = class(TfrmPadrao)
    btnFechar: TcxButton;
    gridPagamento: TJvDBUltimGrid;
    qryHistoricoCheque: TADOQuery;
    qryHistoricoChequeHISTORICO: TMemoField;
    qryHistoricoChequeDATA: TDateTimeField;
    qryHistoricoChequeNOME: TStringField;
    dsHistoricoCheque: TDataSource;
    qryHistoricoChequeID_HISTORICOCHEQUE: TAutoIncField;
    qryHistoricoChequeID_CHEQUESRECEBIDO: TIntegerField;
    qryHistoricoChequeID_OPERADOR: TIntegerField;
    qryHistoricoChequeNUMERO: TStringField;
    qryHistoricoChequeID_FILIAL: TIntegerField;
    groupbox1: TGroupBox;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CarregaHistorico(IDCheque : Integer);
  end;

var
  frmHistoricoCheque: TfrmHistoricoCheque;

implementation

{$R *.dfm}

procedure TfrmHistoricoCheque.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmHistoricoCheque.CarregaHistorico(IDCheque: Integer);
begin
  With qryHistoricoCheque do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT HISTORICOCHEQUE.ID_HISTORICOCHEQUE, HISTORICOCHEQUE.ID_CHEQUESRECEBIDO, HISTORICOCHEQUE.ID_OPERADOR, CHEQUESRECEBIDO.NUMERO,');
      SQL.Add('HISTORICOCHEQUE.ID_FILIAL, HISTORICOCHEQUE.DATA, HISTORICOCHEQUE.HISTORICO, OPERADORES.NOME FROM HISTORICOCHEQUE');
      SQL.Add('INNER JOIN OPERADORES ON HISTORICOCHEQUE.ID_OPERADOR = OPERADORES.ID_OPERADORES');
      SQL.Add('INNER JOIN CHEQUESRECEBIDO ON HISTORICOCHEQUE.ID_CHEQUESRECEBIDO = CHEQUESRECEBIDO.ID_CHEQUESRECEBIDO');
      SQL.Add('WHERE HISTORICOCHEQUE.ID_CHEQUESRECEBIDO = :pID');
      Parameters.ParamByName('pID').Value := IDCheque;
      SQL.Add('Order By HISTORICOCHEQUE.DATA');
      Open;

      Panel1.Caption := 'Cheque Nro.: '+ FieldByName('NUMERO').AsString;
    End;
end;

end.
