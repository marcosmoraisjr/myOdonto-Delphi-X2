﻿inherited frmRelFechamentoCaixa: TfrmRelFechamentoCaixa
  ClientHeight = 767
  ClientWidth = 1306
  Scaled = False
  OnCreate = FormCreate
  ExplicitWidth = 1312
  ExplicitHeight = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1306
    ExplicitWidth = 1306
  end
  inherited StatusBar1: TStatusBar
    Top = 743
    Width = 1306
    ExplicitTop = 743
    ExplicitWidth = 1306
  end
  object relPrevia: TQuickRep [2]
    Left = 120
    Top = 72
    Width = 635
    Height = 898
    DataSet = qryRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'PR'#201'VIA DO CAIXA'
    SnapToGrid = True
    Units = MM
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand6: TQRBand
      Left = 30
      Top = 280
      Width = 575
      Height = 26
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        85.989583333333330000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel11: TQRLabel
        Left = 411
        Top = 5
        Width = 164
        Height = 14
        Size.Values = (
          46.302083333333330000
          1359.296875000000000000
          16.536458333333330000
          542.395833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = True
        Caption = 'OdontoSis - www.odontosis.com.br'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRSysData5: TQRSysData
        Left = 61
        Top = 5
        Width = 54
        Height = 14
        Size.Values = (
          46.302083333333330000
          201.744791666666700000
          16.536458333333330000
          178.593750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData6: TQRSysData
        Left = 269
        Top = 5
        Width = 37
        Height = 14
        Size.Values = (
          46.302083333333330000
          889.661458333333300000
          16.536458333333330000
          122.369791666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 4
        Top = 5
        Width = 52
        Height = 14
        Size.Values = (
          46.302083333333330000
          13.229166666666670000
          16.536458333333330000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Impress'#227'o:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand7: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 573
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1894.416666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 64
        Width = 574
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRGroup1: TQRGroup
      Left = 30
      Top = 128
      Width = 575
      Height = 26
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        85.989583333333330000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryRel.ID_EMPRESA'
      FooterBand = QRBand5
      Master = relPrevia
      ReprintOnNewPage = True
      object QRLabel13: TQRLabel
        Left = 9
        Top = 6
        Width = 111
        Height = 14
        Size.Values = (
          46.302083333333330000
          29.765625000000000000
          19.843750000000000000
          367.109375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Forma de Pagamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 183
        Top = 6
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          605.234375000000000000
          19.843750000000000000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Entradas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 262
        Top = 6
        Width = 35
        Height = 14
        Size.Values = (
          46.302083333333330000
          866.510416666666700000
          19.843750000000000000
          115.755208333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saidas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 325
        Top = 6
        Width = 40
        Height = 14
        Size.Values = (
          46.302083333333330000
          1074.869791666667000000
          19.843750000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Refor'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 397
        Top = 6
        Width = 38
        Height = 14
        Size.Values = (
          46.302083333333330000
          1312.994791666667000000
          19.843750000000000000
          125.677083333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saques'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 452
        Top = 6
        Width = 53
        Height = 14
        Size.Values = (
          46.302083333333330000
          1494.895833333333000000
          19.843750000000000000
          175.286458333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Informado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 522
        Top = 6
        Width = 50
        Height = 14
        Size.Values = (
          46.302083333333330000
          1726.406250000000000000
          19.843750000000000000
          165.364583333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Diferen'#231'a'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 30
      Top = 154
      Width = 575
      Height = 14
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        46.302083333333330000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 9
        Top = 0
        Width = 136
        Height = 13
        Size.Values = (
          42.994791666666670000
          29.765625000000000000
          0.000000000000000000
          449.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'FormaPagamento'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 172
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          568.854166666666700000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Entrada'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 241
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          797.057291666666700000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Saida'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 309
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1021.953125000000000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Reforco'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 379
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1253.463541666667000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Saques'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 449
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1484.973958333333000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Informado'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 516
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1706.562500000000000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Diferenca'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 30
      Top = 168
      Width = 575
      Height = 112
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand5BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        370.416666666666700000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel14: TQRLabel
        Left = 107
        Top = 1
        Width = 34
        Height = 13
        Size.Values = (
          42.994791666666670000
          353.880208333333300000
          3.307291666666667000
          112.447916666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Totais:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTDiferença: TQRLabel
        Left = 516
        Top = 2
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1706.562500000000000000
          6.614583333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTInformado: TQRLabel
        Left = 449
        Top = 2
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1484.973958333333000000
          6.614583333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTSaques: TQRLabel
        Left = 379
        Top = 2
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1253.463541666667000000
          6.614583333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTReforço: TQRLabel
        Left = 309
        Top = 2
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1021.953125000000000000
          6.614583333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTSaidas: TQRLabel
        Left = 241
        Top = 2
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          797.057291666666700000
          6.614583333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTEntradas: TQRLabel
        Left = 172
        Top = 2
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          568.854166666666700000
          6.614583333333333000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 295
        Top = 26
        Width = 210
        Height = 16
        Size.Values = (
          52.916666666666670000
          975.651041666666700000
          85.989583333333330000
          694.531250000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Entradas (Entradas + Refor'#231'o).:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 323
        Top = 43
        Width = 182
        Height = 16
        Size.Values = (
          52.916666666666670000
          1068.255208333333000000
          142.213541666666700000
          601.927083333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total Saidas (Saidas + Saques).:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 417
        Top = 60
        Width = 88
        Height = 16
        Size.Values = (
          52.916666666666670000
          1379.140625000000000000
          198.437500000000000000
          291.041666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total no Caixa.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel24: TQRLabel
        Left = 409
        Top = 77
        Width = 96
        Height = 16
        Size.Values = (
          52.916666666666670000
          1352.682291666667000000
          254.661458333333300000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Total Informado.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel25: TQRLabel
        Left = 443
        Top = 94
        Width = 62
        Height = 16
        Size.Values = (
          52.916666666666670000
          1465.130208333333000000
          310.885416666666700000
          205.052083333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'Diferen'#231'a.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object LblTotalEntrada: TQRLabel
        Left = 507
        Top = 26
        Width = 66
        Height = 16
        Size.Values = (
          52.916666666666670000
          1676.796875000000000000
          85.989583333333330000
          218.281250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object lblTotalSaida: TQRLabel
        Left = 507
        Top = 43
        Width = 66
        Height = 16
        Size.Values = (
          52.916666666666670000
          1676.796875000000000000
          142.213541666666700000
          218.281250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object lblTotalCaixa: TQRLabel
        Left = 507
        Top = 60
        Width = 66
        Height = 16
        Size.Values = (
          52.916666666666670000
          1676.796875000000000000
          198.437500000000000000
          218.281250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object lblTotalInformado: TQRLabel
        Left = 507
        Top = 77
        Width = 66
        Height = 16
        Size.Values = (
          52.916666666666670000
          1676.796875000000000000
          254.661458333333300000
          218.281250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object lblTotalDiferença: TQRLabel
        Left = 507
        Top = 94
        Width = 66
        Height = 16
        Size.Values = (
          52.916666666666670000
          1676.796875000000000000
          310.885416666666700000
          218.281250000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
    end
    object QRBand8: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 98
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        324.114583333333300000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRSysData4: TQRSysData
        Left = 0
        Top = 59
        Width = 575
        Height = 20
        Size.Values = (
          66.145833333333330000
          0.000000000000000000
          195.130208333333300000
          1901.692708333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel17: TQRLabel
        Left = 0
        Top = 5
        Width = 575
        Height = 18
        Size.Values = (
          59.531250000000000000
          0.000000000000000000
          16.536458333333330000
          1901.692708333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Fechamento do Caixa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object lblEmpCab: TQRLabel
        Left = 0
        Top = 24
        Width = 575
        Height = 15
        Size.Values = (
          49.609375000000000000
          0.000000000000000000
          79.375000000000000000
          1901.692708333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Empresa de Teste ( Raz'#227'o de Teste )'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object lblCaixaCab: TQRLabel
        Left = 0
        Top = 40
        Width = 575
        Height = 15
        Size.Values = (
          49.609375000000000000
          0.000000000000000000
          132.291666666666700000
          1901.692708333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Caixa: 01/01/2012 - 01 - Respons'#225'vel: admin - Hora: 12:00:00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 0
        Top = 81
        Width = 575
        Height = 16
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          267.890625000000000000
          1901.692708333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Consilia'#231#227'o dos Saldos'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
    end
  end
  object Cabecalho: TQuickRep [3]
    Left = 663
    Top = 47
    Width = 635
    Height = 898
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'PR'#201'VIA DO CAIXA'
    SnapToGrid = True
    Units = MM
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand3: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 573
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1894.416666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 64
        Width = 574
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  inherited Enter: TJvEnterAsTab
    Left = 232
    Top = 0
  end
  object SalvarPDF: TQRPDFFilter
    CompressionOn = True
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 40
    Top = 48
  end
  object qryAux: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID_PACIENTE, PACIENTE.NOME, PACIENTE.CPF, PACIENTE.RG, PA' +
        'CIENTE.DTANASC, PACIENTE.SEXO, PACIENTE.ENDERECO, PACIENTE.NRO,'
      
        'PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELUL' +
        'AR, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE,'
      
        'PACIENTE.EMPRESA, PACIENTE.FUNCAO, CONVENIOS.NOME as CONVEIO, CI' +
        'DADE.NOME AS CIDADE, OBSERVACAO FROM PACIENTE'
      'LEFT JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE'
      
        'LEFT JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = PACIENTE.ID_CONVE' +
        'NIO')
    Left = 48
    Top = 112
  end
  object qryRel: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source='#39#39 +
      ';Data Provider=NONE'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SHAPE APPEND'
      'NEW AdVarChar(60) FormaPagamento,'
      'NEW AdDouble Entrada,'
      'NEW AdDouble Saida,'
      'NEW AdDouble Reforco,'
      'NEW AdDouble Saques,'
      'NEW AdDouble Informado,'
      'NEW AdDouble Diferenca,'
      'NEW AdInteger IDCaixa')
    Left = 71
    Top = 100
    object qryRelFormaPagamento: TStringField
      FieldName = 'FormaPagamento'
      Size = 60
    end
    object qryRelEntrada: TFloatField
      FieldName = 'Entrada'
      DisplayFormat = '#,##0.00'
    end
    object qryRelSaida: TFloatField
      FieldName = 'Saida'
      DisplayFormat = '#,##0.00'
    end
    object qryRelReforco: TFloatField
      FieldName = 'Reforco'
      DisplayFormat = '#,##0.00'
    end
    object qryRelSaques: TFloatField
      FieldName = 'Saques'
      DisplayFormat = '#,##0.00'
    end
    object qryRelInformado: TFloatField
      FieldName = 'Informado'
      DisplayFormat = '#,##0.00'
    end
    object qryRelDiferenca: TFloatField
      FieldName = 'Diferenca'
      DisplayFormat = '#,##0.00'
    end
    object qryRelIDCaixa: TIntegerField
      FieldName = 'IDCaixa'
      DisplayFormat = '#,##0.00'
    end
  end
end
