inherited frmRelCaixaGeral: TfrmRelCaixaGeral
  ClientHeight = 616
  ClientWidth = 832
  Scaled = False
  OnCreate = FormCreate
  ExplicitWidth = 838
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 832
    ExplicitWidth = 832
  end
  inherited StatusBar1: TStatusBar
    Top = 592
    Width = 832
    ExplicitTop = 592
    ExplicitWidth = 832
  end
  object relPrevia: TQuickRep [2]
    Left = 128
    Top = 32
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
    ReportTitle = 'Relat'#243'rio do Caixa Geral'
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
      Top = 189
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
      Top = 84
      Width = 575
      Height = 37
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        122.369791666666700000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryAux2.ID_OPINT'
      FooterBand = QRBand5
      Master = relPrevia
      ReprintOnNewPage = True
      object QRLabel13: TQRLabel
        Left = 13
        Top = 20
        Width = 24
        Height = 14
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          66.145833333333330000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data'
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
        Left = 431
        Top = 20
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          1425.442708333333000000
          66.145833333333330000
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
        Left = 534
        Top = 20
        Width = 35
        Height = 14
        Size.Values = (
          46.302083333333330000
          1766.093750000000000000
          66.145833333333330000
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
        Left = 62
        Top = 20
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          205.052083333333300000
          66.145833333333330000
          148.828125000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Hist'#243'rico'
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
      object QRLabel16: TQRLabel
        Left = 0
        Top = 1
        Width = 575
        Height = 16
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          3.307291666666667000
          1901.692708333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Demonstrativo da Movimenta'#231#227'o'
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
    object QRBand4: TQRBand
      Left = 30
      Top = 121
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
        Left = 62
        Top = 0
        Width = 339
        Height = 13
        Size.Values = (
          42.994791666666670000
          205.052083333333300000
          0.000000000000000000
          1121.171875000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'HISTORICO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 420
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1389.062500000000000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'VLRENTRADA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 513
        Top = 0
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1696.640625000000000000
          0.000000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'VLRSAIDA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 2
        Top = 0
        Width = 50
        Height = 13
        Size.Values = (
          42.994791666666670000
          6.614583333333333000
          0.000000000000000000
          165.364583333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DATA'
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
      Top = 135
      Width = 575
      Height = 54
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand5BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        178.593750000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel14: TQRLabel
        Left = 380
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          42.994791666666670000
          1256.770833333333000000
          9.921875000000000000
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
      object lblTEntradas: TQRLabel
        Left = 420
        Top = 3
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1389.062500000000000000
          9.921875000000000000
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
        Left = 513
        Top = 3
        Width = 56
        Height = 13
        Size.Values = (
          42.994791666666670000
          1696.640625000000000000
          9.921875000000000000
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
      object QRLabel8: TQRLabel
        Left = 9
        Top = 30
        Width = 88
        Height = 16
        Size.Values = (
          52.916666666666670000
          29.765625000000000000
          99.218750000000000000
          291.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo Anterior.:'
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
      object lblSaldoAnterior: TQRLabel
        Left = 100
        Top = 30
        Width = 65
        Height = 16
        Size.Values = (
          52.916666666666670000
          330.729166666666700000
          99.218750000000000000
          214.973958333333300000)
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
      object QRLabel10: TQRLabel
        Left = 214
        Top = 30
        Width = 87
        Height = 16
        Size.Values = (
          52.916666666666670000
          707.760416666666700000
          99.218750000000000000
          287.734375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo Per'#237'odo.:'
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
      object QRLabel17: TQRLabel
        Left = 420
        Top = 30
        Width = 71
        Height = 16
        Size.Values = (
          52.916666666666670000
          1389.062500000000000000
          99.218750000000000000
          234.817708333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Saldo Total.:'
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
      object lblSaldoPeriodo: TQRLabel
        Left = 306
        Top = 30
        Width = 65
        Height = 16
        Size.Values = (
          52.916666666666670000
          1012.031250000000000000
          99.218750000000000000
          214.973958333333300000)
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
      object lblSaldoTotal: TQRLabel
        Left = 496
        Top = 30
        Width = 65
        Height = 16
        Size.Values = (
          52.916666666666670000
          1640.416666666667000000
          99.218750000000000000
          214.973958333333300000)
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
      Height = 54
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        178.593750000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRSysData4: TQRSysData
        Left = 0
        Top = 1
        Width = 575
        Height = 20
        Size.Values = (
          66.145833333333330000
          0.000000000000000000
          3.307291666666667000
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
      object lblEmpCab: TQRLabel
        Left = 0
        Top = 19
        Width = 575
        Height = 15
        Size.Values = (
          49.609375000000000000
          0.000000000000000000
          62.838541666666670000
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
        Top = 37
        Width = 575
        Height = 15
        Size.Values = (
          49.609375000000000000
          0.000000000000000000
          122.369791666666700000
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
        Top = 55
        Width = 575
        Height = 16
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          181.901041666666700000
          1901.692708333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Demonstrativo Financeiro'
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
      object QRLabel1: TQRLabel
        Left = 9
        Top = 77
        Width = 162
        Height = 16
        Size.Values = (
          52.916666666666670000
          29.765625000000000000
          254.661458333333300000
          535.781250000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Situa'#231#227'o dos T'#237'tulos a Pagar'
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
      object QRLabel2: TQRLabel
        Left = 9
        Top = 99
        Width = 178
        Height = 16
        Size.Values = (
          52.916666666666670000
          29.765625000000000000
          327.421875000000000000
          588.697916666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Situa'#231#227'o dos T'#237'tulos a Receber'
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
      object QRLabel3: TQRLabel
        Left = 9
        Top = 122
        Width = 168
        Height = 16
        Size.Values = (
          52.916666666666670000
          29.765625000000000000
          403.489583333333300000
          555.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Situa'#231#227'o dos Cheques a Vista'
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
      object QRLabel15: TQRLabel
        Left = 9
        Top = 146
        Width = 200
        Height = 16
        Size.Values = (
          52.916666666666670000
          29.765625000000000000
          482.864583333333300000
          661.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Situa'#231#227'o dos Cheques Pr'#233'-datados'
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
  end
  inherited Enter: TJvEnterAsTab
    Left = 96
    Top = 56
  end
  object SalvarPDF: TQRPDFFilter
    CompressionOn = True
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 24
    Top = 18
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
    Top = 186
  end
  object qryRel: TADOQuery
    Active = True
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SALDOCAIXA')
    Left = 55
    Top = 70
    object qryRelID_SALDOCAIXA: TAutoIncField
      FieldName = 'ID_SALDOCAIXA'
      ReadOnly = True
    end
    object qryRelTIPODESPESA: TIntegerField
      FieldName = 'TIPODESPESA'
    end
    object qryRelENTRADA_SAIDA: TIntegerField
      FieldName = 'ENTRADA_SAIDA'
    end
    object qryRelID_OPERADORES: TIntegerField
      FieldName = 'ID_OPERADORES'
    end
    object qryRelID_CAIXAS: TIntegerField
      FieldName = 'ID_CAIXAS'
    end
    object qryRelHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object qryRelDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 100
    end
    object qryRelDATA: TDateTimeField
      FieldName = 'DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryRelVLRENTRADA: TFloatField
      FieldName = 'VLRENTRADA'
      DisplayFormat = '#,##0.00'
    end
    object qryRelVLRSAIDA: TFloatField
      FieldName = 'VLRSAIDA'
      DisplayFormat = '#,##0.00'
    end
  end
  object qryAux2: TADOQuery
    Active = True
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM OPINT')
    Left = 40
    Top = 282
    object qryAux2ID_OPINT: TAutoIncField
      FieldName = 'ID_OPINT'
      ReadOnly = True
    end
    object qryAux2CODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
    end
    object qryAux2CONTRACHAVE: TStringField
      FieldName = 'CONTRACHAVE'
      Size = 100
    end
    object qryAux2DEMO: TBooleanField
      FieldName = 'DEMO'
    end
    object qryAux2ADICIONAL: TBooleanField
      FieldName = 'ADICIONAL'
    end
    object qryAux2VERSAODB: TIntegerField
      FieldName = 'VERSAODB'
    end
  end
end
