object frmMensagem: TfrmMensagem
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 134
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblDescricao: TLabel
    Left = 0
    Top = 40
    Width = 388
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'Mensagem.......................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Barra: TcxProgressBar
    Left = 0
    Top = 113
    Position = 100.000000000000000000
    Properties.BarStyle = cxbsAnimation
    Properties.BeginColor = clSkyBlue
    Properties.PeakValue = 100.000000000000000000
    Properties.ShowTextStyle = cxtsText
    Properties.Text = 'Gerando...'
    TabOrder = 0
    Width = 388
  end
end
