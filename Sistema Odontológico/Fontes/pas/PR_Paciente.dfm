﻿inherited frmPRelPaciente: TfrmPRelPaciente
  Caption = 'frmPRelPaciente'
  ClientHeight = 719
  ClientWidth = 832
  ExplicitWidth = 832
  ExplicitHeight = 719
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TQuickRep
    Left = 112
    Top = 76
    Width = 635
    Height = 898
    DataSet = qryRel
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ReportTitle = 'Pacientes'
    Zoom = 80
    ExplicitLeft = 112
    ExplicitTop = 76
    ExplicitWidth = 635
    ExplicitHeight = 898
    inherited QRBand1: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 94
      Frame.DrawBottom = True
      Size.Values = (
        310.885416666666700000
        1901.692708333333000000)
      ExplicitLeft = 30
      ExplicitTop = 30
      ExplicitWidth = 575
      ExplicitHeight = 94
      inherited QRSysData1: TQRSysData
        Left = 2
        Top = 67
        Width = 567
        Height = 22
        Size.Values = (
          71.437500000000000000
          5.291666666666667000
          222.250000000000000000
          1875.895833333333000000)
        FontSize = 14
        ExplicitLeft = 2
        ExplicitTop = 67
        ExplicitWidth = 567
        ExplicitHeight = 22
      end
      inherited LogoEmpresa: TQRImage
        Left = 6
        Top = 4
        Width = 85
        Height = 57
        Size.Values = (
          187.854166666666700000
          21.166666666666670000
          13.229166666666670000
          280.458333333333300000)
        ExplicitLeft = 6
        ExplicitTop = 4
        ExplicitWidth = 85
        ExplicitHeight = 57
      end
      inherited QRShape12: TQRShape
        Top = 63
        Width = 574
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          209.020833333333300000
          1899.708333333333000000)
        ExplicitTop = 63
        ExplicitWidth = 574
      end
      inherited QRShape5: TQRShape
        Width = 574
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          0.000000000000000000
          1899.708333333333000000)
        ExplicitWidth = 574
      end
      inherited mmoCabeçalho: TQRMemo
        Left = 96
        Top = 4
        Width = 474
        Height = 57
        Size.Values = (
          187.854166666666700000
          317.500000000000000000
          13.229166666666670000
          1568.979166666667000000)
        FontSize = 10
        ExplicitLeft = 96
        ExplicitTop = 4
        ExplicitWidth = 474
        ExplicitHeight = 57
      end
    end
    inherited QRBand3: TQRBand
      Left = 30
      Top = 315
      Width = 575
      Height = 26
      Size.Values = (
        85.989583333333330000
        1901.692708333333000000)
      ExplicitLeft = 30
      ExplicitTop = 315
      ExplicitWidth = 575
      ExplicitHeight = 26
      inherited QRLabel1: TQRLabel
        Left = 413
        Top = 5
        Width = 162
        Height = 14
        Size.Values = (
          46.302083333333330000
          1365.911458333333000000
          16.536458333333330000
          535.781250000000000000)
        FontSize = 10
        ExplicitLeft = 413
        ExplicitTop = 5
        ExplicitWidth = 162
        ExplicitHeight = 14
      end
      inherited QRSysData3: TQRSysData
        Left = 62
        Top = 5
        Width = 54
        Height = 14
        Size.Values = (
          46.302083333333330000
          205.052083333333300000
          16.536458333333330000
          178.593750000000000000)
        FontSize = 10
        ExplicitLeft = 62
        ExplicitTop = 5
        ExplicitWidth = 54
        ExplicitHeight = 14
      end
      inherited QRSysData2: TQRSysData
        Left = 269
        Top = 5
        Width = 37
        Height = 14
        Size.Values = (
          46.302083333333330000
          889.661458333333300000
          16.536458333333330000
          122.369791666666700000)
        FontSize = 10
        ExplicitLeft = 269
        ExplicitTop = 5
        ExplicitWidth = 37
        ExplicitHeight = 14
      end
      inherited QRLabel2: TQRLabel
        Left = 4
        Top = 5
        Width = 52
        Height = 14
        Size.Values = (
          46.302083333333330000
          13.229166666666670000
          16.536458333333330000
          171.979166666666700000)
        FontSize = 10
        ExplicitLeft = 4
        ExplicitTop = 5
        ExplicitWidth = 52
        ExplicitHeight = 14
      end
    end
    inherited QRBand2: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Size.Values = (
        0.000000000000000000
        1901.692708333333000000)
      ExplicitLeft = 30
      ExplicitTop = 30
      ExplicitWidth = 575
      inherited QRShape1: TQRShape
        Width = 573
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1894.416666666667000000)
        ExplicitWidth = 573
      end
      inherited QRShape2: TQRShape
        Top = 64
        Width = 574
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
        ExplicitTop = 64
        ExplicitWidth = 574
      end
    end
    object GroupCategoria: TQRGroup
      Left = 30
      Top = 143
      Width = 575
      Height = 16
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryRel.ID_CIDADE'
      FooterBand = FooterCategoria
      Master = Relatorio
      ReprintOnNewPage = False
      object QRLabel33: TQRLabel
        Left = 6
        Top = 3
        Width = 57
        Height = 13
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          10.583333333333330000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Cidade.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText33: TQRDBText
        Left = 65
        Top = 3
        Width = 28
        Height = 13
        Size.Values = (
          42.333333333333330000
          214.312500000000000000
          10.583333333333330000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'ID_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText34: TQRDBText
        Left = 96
        Top = 3
        Width = 425
        Height = 13
        Size.Values = (
          42.994791666666670000
          317.500000000000000000
          9.921875000000000000
          1405.598958333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object FooterCategoria: TQRBand
      Left = 30
      Top = 300
      Width = 575
      Height = 15
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      BeforePrint = FooterCategoriaBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        49.609375000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel24: TQRLabel
        Left = 445
        Top = 2
        Width = 75
        Height = 13
        Size.Values = (
          42.994791666666670000
          1471.744791666667000000
          6.614583333333333000
          248.046875000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total na Cidade.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object lblTotalCidade: TQRLabel
        Left = 518
        Top = 1
        Width = 54
        Height = 13
        Size.Values = (
          42.994791666666670000
          1713.177083333333000000
          3.307291666666667000
          178.593750000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'TotalCidade'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    object BandAnalitico: TQRBand
      Left = 32
      Top = 155
      Width = 575
      Height = 141
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = BandAnaliticoBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        466.328125000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = 78
        Top = 11
        Width = 35
        Height = 14
        Size.Values = (
          46.302083333333340000
          257.968750000000000000
          36.380208333333340000
          115.755208333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'ID_PACIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText1: TQRDBText
        Left = 119
        Top = 11
        Width = 451
        Height = 14
        Size.Values = (
          46.302083333333330000
          393.567708333333300000
          36.380208333333330000
          1491.588541666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 30
        Top = 11
        Width = 44
        Height = 13
        Size.Values = (
          42.994791666666670000
          99.218750000000000000
          36.380208333333330000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Paciente.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 78
        Top = 25
        Width = 275
        Height = 14
        Size.Values = (
          46.302083333333340000
          257.968750000000000000
          82.682291666666680000
          909.505208333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 26
        Top = 25
        Width = 48
        Height = 13
        Size.Values = (
          42.994791666666670000
          85.989583333333330000
          82.682291666666670000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Endere'#231'o.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 42
        Top = 40
        Width = 32
        Height = 13
        Size.Values = (
          42.994791666666670000
          138.906250000000000000
          132.291666666666700000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Bairro.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 78
        Top = 40
        Width = 275
        Height = 14
        Size.Values = (
          46.302083333333340000
          257.968750000000000000
          132.291666666666700000
          909.505208333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 36
        Top = 55
        Width = 38
        Height = 13
        Size.Values = (
          42.994791666666670000
          119.062500000000000000
          181.901041666666700000
          125.677083333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Cidade.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 78
        Top = 55
        Width = 275
        Height = 13
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          182.562500000000000000
          910.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 392
        Top = 40
        Width = 26
        Height = 13
        Size.Values = (
          42.994791666666670000
          1296.458333333333000000
          132.291666666666700000
          85.989583333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'CEP.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 422
        Top = 40
        Width = 148
        Height = 14
        Size.Values = (
          47.625000000000000000
          1394.354166666667000000
          132.291666666666700000
          489.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 30
        Top = 70
        Width = 44
        Height = 13
        Size.Values = (
          42.994791666666670000
          99.218750000000000000
          231.510416666666700000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Telefone.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 78
        Top = 70
        Width = 275
        Height = 13
        Size.Values = (
          42.740384615384620000
          258.477564102564100000
          232.019230769230800000
          909.759615384615400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 49
        Top = 85
        Width = 25
        Height = 13
        Size.Values = (
          42.994791666666670000
          162.057291666666700000
          281.119791666666700000
          82.682291666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'CPF.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 78
        Top = 85
        Width = 275
        Height = 13
        Size.Values = (
          42.740384615384620000
          258.477564102564100000
          280.865384615384600000
          909.759615384615400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DTANASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 422
        Top = 70
        Width = 243
        Height = 13
        Size.Values = (
          42.740384615384620000
          1394.150641025641000000
          232.019230769230800000
          803.926282051282100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'CELULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 380
        Top = 70
        Width = 38
        Height = 13
        Size.Values = (
          42.994791666666670000
          1256.770833333333000000
          231.510416666666700000
          125.677083333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Celular.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 42
        Top = 126
        Width = 31
        Height = 13
        Size.Values = (
          42.994791666666670000
          138.906250000000000000
          416.718750000000000000
          102.526041666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Email.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 78
        Top = 126
        Width = 243
        Height = 13
        Size.Values = (
          42.740384615384620000
          258.477564102564100000
          417.227564102564100000
          803.926282051282100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object lbCNPJ: TQRLabel
        Left = 25
        Top = 98
        Width = 49
        Height = 13
        Size.Values = (
          42.994791666666670000
          82.682291666666670000
          324.114583333333300000
          162.057291666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Dta. Nasc.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 78
        Top = 98
        Width = 161
        Height = 13
        Size.Values = (
          42.740384615384620000
          258.477564102564100000
          325.641025641025600000
          531.201923076923100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DTANASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 397
        Top = 85
        Width = 20
        Height = 13
        Size.Values = (
          42.994791666666670000
          1312.994791666667000000
          281.119791666666700000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'RG.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 422
        Top = 85
        Width = 147
        Height = 13
        Size.Values = (
          42.740384615384620000
          1394.150641025641000000
          280.865384615384600000
          486.426282051282100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 351
        Top = 98
        Width = 66
        Height = 13
        Size.Values = (
          42.994791666666670000
          1160.859375000000000000
          324.114583333333300000
          218.281250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Dta. Cadastro.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 422
        Top = 98
        Width = 75
        Height = 13
        Size.Values = (
          42.740384615384620000
          1394.150641025641000000
          325.641025641025600000
          248.301282051282100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DATACADASTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 78
        Top = 112
        Width = 275
        Height = 13
        Size.Values = (
          42.994791666666670000
          257.968750000000000000
          370.416666666666700000
          909.505208333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Convenio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 26
        Top = 112
        Width = 47
        Height = 13
        Size.Values = (
          42.994791666666670000
          85.989583333333330000
          370.416666666666700000
          155.442708333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Conv'#234'nio.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object lbl1: TQRLabel
        Left = 376
        Top = 25
        Width = 42
        Height = 13
        Size.Values = (
          42.994791666666670000
          1243.541666666667000000
          82.682291666666670000
          138.906250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'N'#250'mero.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText41: TQRDBText
        Left = 422
        Top = 24
        Width = 147
        Height = 14
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          79.375000000000000000
          486.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'NRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 399
        Top = 55
        Width = 18
        Height = 13
        Size.Values = (
          42.994791666666670000
          1319.609375000000000000
          181.901041666666700000
          59.531250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'UF.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 422
        Top = 55
        Width = 63
        Height = 13
        Size.Values = (
          42.333333333333330000
          1394.354166666667000000
          182.562500000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 340
        Top = 112
        Width = 77
        Height = 13
        Size.Values = (
          42.994791666666670000
          1124.479166666667000000
          370.416666666666700000
          254.661458333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Ultima Consulta.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 422
        Top = 112
        Width = 75
        Height = 13
        Size.Values = (
          42.994791666666670000
          1395.677083333333000000
          370.416666666666700000
          248.046875000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'ULTIMACONSULTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object BandSintetico: TQRBand
      Left = 30
      Top = 341
      Width = 575
      Height = 18
      AlignToBottom = False
      BeforePrint = BandSinteticoBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        59.531250000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText24: TQRDBText
        Left = 8
        Top = 1
        Width = 25
        Height = 13
        Size.Values = (
          42.994791666666670000
          26.458333333333330000
          3.307291666666666000
          82.682291666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'ID_PACIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText25: TQRDBText
        Left = 38
        Top = 1
        Width = 147
        Height = 13
        Size.Values = (
          42.333333333333330000
          127.000000000000000000
          2.645833333333333000
          486.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText26: TQRDBText
        Left = 187
        Top = 1
        Width = 159
        Height = 13
        Size.Values = (
          42.333333333333330000
          619.125000000000000000
          2.645833333333333000
          526.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText29: TQRDBText
        Left = 351
        Top = 1
        Width = 79
        Height = 14
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          2.645833333333333000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText18: TQRDBText
        Left = 448
        Top = 2
        Width = 116
        Height = 14
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          5.291666666666667000
          383.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Convenio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object BandSinteticoF: TQRBand
      Left = 30
      Top = 124
      Width = 575
      Height = 19
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        62.838541666666670000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel21: TQRLabel
        Left = 8
        Top = 3
        Width = 25
        Height = 13
        Size.Values = (
          42.994791666666670000
          26.458333333333330000
          9.921875000000000000
          82.682291666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'C'#243'd.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 38
        Top = 3
        Width = 27
        Height = 13
        Size.Values = (
          42.994791666666670000
          125.677083333333300000
          9.921875000000000000
          89.296875000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 187
        Top = 3
        Width = 44
        Height = 13
        Size.Values = (
          42.994791666666670000
          618.463541666666700000
          9.921875000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 351
        Top = 3
        Width = 40
        Height = 13
        Size.Values = (
          42.994791666666670000
          1160.859375000000000000
          9.921875000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Left = 448
        Top = 3
        Width = 42
        Height = 13
        Size.Values = (
          42.994791666666670000
          1481.666666666667000000
          9.921875000000000000
          138.906250000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Conv'#234'nio'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
  end
  inherited GroupBox1: TGroupBox
    Top = 673
    Width = 832
    ExplicitTop = 673
    ExplicitWidth = 832
    inherited btnImprimir: TSpeedButton
      Left = 512
      ExplicitLeft = 512
    end
  end
  object rgAtivo: TRadioGroup [2]
    Left = 0
    Top = 35
    Width = 832
    Height = 35
    Align = alTop
    Caption = ' Ativos'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Ativos'
      'Inativos')
    TabOrder = 2
  end
  object rgOrdem: TRadioGroup [3]
    Left = 0
    Top = 0
    Width = 832
    Height = 35
    Align = alTop
    Caption = ' Ordem '
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 3
  end
  object rgTipo: TRadioGroup [4]
    Left = 0
    Top = 70
    Width = 832
    Height = 35
    Align = alTop
    Caption = ' Tipo'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Anal'#237'tico'
      'Sint'#233'tico')
    TabOrder = 4
  end
  inherited qryAux: TADOQuery
    Left = 448
    Top = 65529
  end
  inherited SalvarPDF: TQRPDFFilter
    Left = 600
    Top = 0
  end
  object qryRel: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT PACIENTE.ID_PACIENTE, PACIENTE.ID_FILIAL, PACIENTE.NOME, ' +
        'PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO, '
      
        'PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, PACIENTE.CEP, ' +
        'PACIENTE.ID_CIDADE, PACIENTE.TELEFONE, '
      
        'PACIENTE.CELULAR, PACIENTE.TELCOMERCIAL, PACIENTE.EMAIL, PACIENT' +
        'E.NOMEPAI, PACIENTE.NOMEMAE, PACIENTE.EMPRESA, '
      
        'PACIENTE.FUNCAO, PACIENTE.ID_CONVENIO, PACIENTE.TIPO, PACIENTE.O' +
        'BSERVACAO, PACIENTE.Ativo, PACIENTE.DATACADASTRO, '
      
        'PACIENTE.ULTIMACONSULTA, PACIENTE.TITULAR_DEPENDENTE, PACIENTE.I' +
        'D_TITULAR, PACIENTE.ESTADOCIVIL, PACIENTE.CONJUGE, '
      
        'PACIENTE.REFERENCIA, PACIENTE.NUMEROCNS, PACIENTE.NUMERODACARTEI' +
        'RA, PACIENTE.VALIDADECARTEIRA, '
      
        'PACIENTE.DATADEADESAO, CIDADE.NOME AS Cidade, CIDADE.UF, CONVENI' +
        'OS.NOME AS Convenio FROM PACIENTE '
      'INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE '
      
        'INNER JOIN CONVENIOS ON PACIENTE.ID_CONVENIO = CONVENIOS.ID_CONV' +
        'ENIO')
    Left = 384
    Top = 113
    object qryRelID_PACIENTE: TAutoIncField
      FieldName = 'ID_PACIENTE'
      ReadOnly = True
    end
    object qryRelID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object qryRelNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryRelCPF: TStringField
      FieldName = 'CPF'
      Size = 255
    end
    object qryRelRG: TStringField
      FieldName = 'RG'
      Size = 255
    end
    object qryRelDTANASC: TDateTimeField
      FieldName = 'DTANASC'
    end
    object qryRelSEXO: TStringField
      FieldName = 'SEXO'
      Size = 255
    end
    object qryRelENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 255
    end
    object qryRelNRO: TStringField
      FieldName = 'NRO'
      Size = 255
    end
    object qryRelBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 255
    end
    object qryRelCEP: TStringField
      FieldName = 'CEP'
      Size = 255
    end
    object qryRelID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qryRelTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 255
    end
    object qryRelCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 255
    end
    object qryRelTELCOMERCIAL: TStringField
      FieldName = 'TELCOMERCIAL'
      Size = 255
    end
    object qryRelEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object qryRelNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 255
    end
    object qryRelNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 255
    end
    object qryRelEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 255
    end
    object qryRelFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 255
    end
    object qryRelID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object qryRelTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qryRelOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryRelAtivo: TStringField
      FieldName = 'Ativo'
      Size = 1
    end
    object qryRelDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
    end
    object qryRelULTIMACONSULTA: TDateTimeField
      FieldName = 'ULTIMACONSULTA'
    end
    object qryRelTITULAR_DEPENDENTE: TIntegerField
      FieldName = 'TITULAR_DEPENDENTE'
    end
    object qryRelID_TITULAR: TIntegerField
      FieldName = 'ID_TITULAR'
    end
    object qryRelESTADOCIVIL: TIntegerField
      FieldName = 'ESTADOCIVIL'
    end
    object qryRelCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 100
    end
    object qryRelREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 100
    end
    object qryRelNUMEROCNS: TStringField
      FieldName = 'NUMEROCNS'
      Size = 50
    end
    object qryRelNUMERODACARTEIRA: TStringField
      FieldName = 'NUMERODACARTEIRA'
      Size = 100
    end
    object qryRelVALIDADECARTEIRA: TDateTimeField
      FieldName = 'VALIDADECARTEIRA'
    end
    object qryRelDATADEADESAO: TDateTimeField
      FieldName = 'DATADEADESAO'
    end
    object qryRelCidade: TStringField
      FieldName = 'Cidade'
      Size = 255
    end
    object qryRelUF: TStringField
      FieldName = 'UF'
      Size = 255
    end
    object qryRelConvenio: TStringField
      FieldName = 'Convenio'
      Size = 200
    end
  end
end
