unit Mensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxProgressBar, Data.DB, Data.Win.ADODB;

type
  TfrmMensagem = class(TForm)
    Barra: TcxProgressBar;
    lblDescricao: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}
{ TfrmMensagem }


end.
