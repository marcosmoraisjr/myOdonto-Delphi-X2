object frmPadrao: TfrmPadrao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 216
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 33
    Align = alTop
    Caption = 'Padr'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 192
    Width = 457
    Height = 24
    Panels = <
      item
        Alignment = taCenter
        Text = 'Odontosis - Sistema de Gest'#227'o Para Cl'#237'nicas Odontol'#243'gicas'
        Width = 50
      end>
  end
  object Enter: TJvEnterAsTab
    Left = 200
    Top = 120
  end
end
