inherited frmData: TfrmData
  ClientWidth = 420
  OnCreate = FormCreate
  ExplicitWidth = 426
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnSalvar: TSpeedButton
    Left = 277
    Top = 43
    ExplicitLeft = 277
    ExplicitTop = 43
  end
  inherited Panel1: TPanel
    Width = 420
    Caption = 'Data de Recebimento do Conv'#234'nio'
    ExplicitWidth = 420
  end
  inherited StatusBar1: TStatusBar
    Width = 420
    ExplicitWidth = 420
  end
  inherited EdtDescricao: TEdit
    Left = 84
    Top = 135
    ExplicitLeft = 84
    ExplicitTop = 135
  end
  object EdtData: TJvDateEdit [4]
    Left = 143
    Top = 49
    Width = 97
    Height = 21
    DefaultToday = True
    DialogTitle = 'Selecione uma Data'
    TabOrder = 3
  end
  inherited Enter: TJvEnterAsTab
    Left = 56
    Top = 40
  end
end
