unit F_Obs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Padrao, Vcl.Buttons, Vcl.StdCtrls,
  JvComponentBase, JvEnterTab, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmObservacao = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    MMO: TMemo;
    btnFechar: TSpeedButton;
    btnSalvar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObservacao: TfrmObservacao;

implementation

{$R *.dfm}

procedure TfrmObservacao.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmObservacao.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
