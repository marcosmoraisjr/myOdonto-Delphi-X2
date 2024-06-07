inherited frmRreceituario: TfrmRreceituario
  Caption = 'frmRreceituario'
  ClientHeight = 697
  ClientWidth = 690
  ExplicitWidth = 706
  ExplicitHeight = 735
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TQuickRep
    Left = -5
    Top = 312
    Width = 559
    Height = 794
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.PaperSize = A5
    Page.Continuous = True
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      1480.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ReportTitle = ''
    ExplicitLeft = -5
    ExplicitTop = 312
    ExplicitWidth = 559
    ExplicitHeight = 794
    inherited QRBand1: TQRBand
      Top = 45
      Width = 483
      Size.Values = (
        306.916666666666700000
        1277.937500000000000000)
      ExplicitTop = 45
      ExplicitWidth = 483
      inherited QRSysData1: TQRSysData
        Left = -108
        Top = 86
        Width = 709
        Size.Values = (
          71.437500000000000000
          -285.750000000000000000
          227.541666666666700000
          1875.895833333333000000)
        FontSize = 14
        ExplicitLeft = -108
        ExplicitTop = 86
        ExplicitWidth = 709
      end
      inherited LogoEmpresa: TQRImage
        Size.Values = (
          187.854166666666700000
          21.166666666666670000
          13.229166666666670000
          280.458333333333300000)
      end
      inherited QRShape12: TQRShape
        Width = 483
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          209.020833333333300000
          1277.937500000000000000)
        ExplicitWidth = 483
      end
      inherited QRShape5: TQRShape
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          0.000000000000000000
          1899.708333333333000000)
      end
      inherited mmoCabeçalho: TQRMemo
        Size.Values = (
          187.854166666666700000
          317.500000000000000000
          13.229166666666670000
          1568.979166666667000000)
        FontSize = 10
      end
    end
    inherited QRBand3: TQRBand
      Top = 161
      Width = 483
      Size.Values = (
        84.666666666666670000
        1277.937500000000000000)
      ExplicitTop = 161
      ExplicitWidth = 483
      inherited QRLabel1: TQRLabel
        Left = 278
        Size.Values = (
          44.979166666666670000
          735.541666666666700000
          15.875000000000000000
          542.395833333333300000)
        FontSize = 10
        ExplicitLeft = 278
      end
      inherited QRSysData3: TQRSysData
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          15.875000000000000000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRSysData2: TQRSysData
        Left = 218
        Size.Values = (
          44.979166666666670000
          576.791666666666700000
          15.875000000000000000
          121.708333333333300000)
        FontSize = 10
        ExplicitLeft = 218
      end
      inherited QRLabel2: TQRLabel
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          15.875000000000000000
          171.979166666666700000)
        FontSize = 10
      end
    end
    inherited QRBand2: TQRBand
      Width = 483
      Height = 7
      Size.Values = (
        18.520833333333330000
        1277.937500000000000000)
      ExplicitWidth = 483
      ExplicitHeight = 7
      inherited QRShape1: TQRShape
        Left = -10
        Top = 10
        Size.Values = (
          2.645833333333333000
          -26.458333333333330000
          26.458333333333330000
          1894.416666666667000000)
        ExplicitLeft = -10
        ExplicitTop = 10
      end
      inherited QRShape2: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 161
      Width = 483
      Height = 0
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryRel.ID_RECEITUARIO'
      Master = Relatorio
      ReprintOnNewPage = True
    end
  end
  object RelatorioCab: TQuickRep [1]
    Left = 8
    Top = 18
    Width = 559
    Height = 794
    DataSet = qryRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A5
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      1480.000000000000000000
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomOther
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand6: TQRBand
      Left = 38
      Top = 38
      Width = 483
      Height = 116
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        306.916666666666700000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRSysData4: TQRSysData
        Left = 0
        Top = 85
        Width = 483
        Height = 27
        Size.Values = (
          71.437500000000000000
          0.000000000000000000
          224.895833333333300000
          1277.937500000000000000)
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
      object QRLabel7: TQRLabel
        Left = 1121
        Top = 37
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          2965.979166666667000000
          97.895833333333330000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'lbltelefone'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 1144
        Top = 60
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          3026.833333333333000000
          158.750000000000000000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'lblemail'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object LogoEmpresaCAb: TQRImage
        Left = 8
        Top = 5
        Width = 106
        Height = 71
        Size.Values = (
          187.854166666666700000
          21.166666666666670000
          13.229166666666670000
          280.458333333333300000)
        XLColumn = 0
        Center = True
        Stretch = True
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 79
        Width = 483
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          209.020833333333300000
          1277.937500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 2
        Width = 483
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          1277.937500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRMemo1: TQRMemo
        Left = 115
        Top = 5
        Width = 368
        Height = 71
        Size.Values = (
          187.854166666666700000
          304.270833333333300000
          13.229166666666670000
          973.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 181
      Width = 483
      Height = 419
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1108.604166666667000000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object mmoDescricao: TQRMemo
        Left = 22
        Top = 8
        Width = 444
        Height = 393
        Size.Values = (
          1039.812500000000000000
          58.208333333333330000
          21.166666666666670000
          1174.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 154
      Width = 483
      Height = 27
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      FooterBand = QRBand5
      Master = RelatorioCab
      ReprintOnNewPage = False
      object lblNomePaciente: TQRLabel
        Left = 0
        Top = 2
        Width = 483
        Height = 23
        Size.Values = (
          60.854166666666670000
          0.000000000000000000
          5.291666666666667000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'lblNomePaciente'
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
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 600
      Width = 483
      Height = 114
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        301.625000000000000000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape10: TQRShape
        Left = 107
        Top = 75
        Width = 269
        Height = 1
        Size.Values = (
          2.645833333333333000
          283.104166666666700000
          198.437500000000000000
          711.729166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lblNomeMedicoRodapeCab: TQRLabel
        Left = 0
        Top = 40
        Width = 483
        Height = 20
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          105.833333333333300000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Nome Do Medico'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCRORodapeCab: TQRLabel
        Left = 0
        Top = 76
        Width = 483
        Height = 18
        Size.Values = (
          47.625000000000000000
          0.000000000000000000
          201.083333333333300000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CRO:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCidadeRodaPECab: TQRLabel
        Left = 0
        Top = 25
        Width = 483
        Height = 18
        Size.Values = (
          47.625000000000000000
          0.000000000000000000
          66.145833333333330000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 's'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 714
      Width = 483
      Height = 32
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel6: TQRLabel
        Left = 278
        Top = 6
        Width = 205
        Height = 17
        Size.Values = (
          44.979166666666670000
          735.541666666666700000
          15.875000000000000000
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
        Left = 76
        Top = 6
        Width = 68
        Height = 17
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          15.875000000000000000
          179.916666666666700000)
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
        Left = 218
        Top = 6
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          576.791666666666700000
          15.875000000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 5
        Top = 6
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          15.875000000000000000
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
  end
  object RelatorioSemCab: TQuickRep [2]
    Left = 38
    Top = 226
    Width = 559
    Height = 794
    DataSet = qryRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A5
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      1480.000000000000000000
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomOther
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand8: TQRBand
      Left = 38
      Top = 38
      Width = 483
      Height = 153
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        404.812500000000000000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel10: TQRLabel
        Left = 1121
        Top = 37
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          2965.979166666667000000
          97.895833333333330000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'lbltelefone'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 1144
        Top = 60
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          3026.833333333333000000
          158.750000000000000000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'lblemail'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand9: TQRBand
      Left = 38
      Top = 218
      Width = 483
      Height = 362
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        957.791666666666700000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object mmoDescricaoSemCab: TQRMemo
        Left = 24
        Top = 6
        Width = 442
        Height = 393
        Size.Values = (
          1039.812500000000000000
          63.500000000000000000
          15.875000000000000000
          1169.458333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
    end
    object QRGroup3: TQRGroup
      Left = 38
      Top = 191
      Width = 483
      Height = 27
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      FooterBand = QRBand10
      Master = RelatorioSemCab
      ReprintOnNewPage = False
      object lblNomePacienteSemCab: TQRLabel
        Left = 0
        Top = 2
        Width = 483
        Height = 23
        Size.Values = (
          60.854166666666670000
          0.000000000000000000
          5.291666666666667000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'lblNomePaciente'
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
    end
    object QRBand10: TQRBand
      Left = 38
      Top = 580
      Width = 483
      Height = 114
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        301.625000000000000000
        1277.937500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape8: TQRShape
        Left = 107
        Top = 75
        Width = 269
        Height = 1
        Size.Values = (
          2.645833333333333000
          283.104166666666700000
          198.437500000000000000
          711.729166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lblNomeMedicoRodapeSemCab: TQRLabel
        Left = 0
        Top = 40
        Width = 483
        Height = 20
        Size.Values = (
          52.916666666666670000
          0.000000000000000000
          105.833333333333300000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Nome Do Medico'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCRORodapeSemCab: TQRLabel
        Left = 0
        Top = 76
        Width = 483
        Height = 18
        Size.Values = (
          47.625000000000000000
          0.000000000000000000
          201.083333333333300000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CRO:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCidadeRodaPESemCab: TQRLabel
        Left = 0
        Top = 25
        Width = 483
        Height = 18
        Size.Values = (
          47.625000000000000000
          0.000000000000000000
          66.145833333333330000
          1277.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 's'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
  inherited qryRel: TADOQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM RECEITUARIO')
    Left = 408
    Top = 65528
    object qryRelID_RECEITUARIO: TAutoIncField
      FieldName = 'ID_RECEITUARIO'
      ReadOnly = True
    end
    object qryRelID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object qryRelID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object qryRelDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qryRelDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
    end
  end
  inherited qryAux: TADOQuery
    Left = 304
    Top = 65528
  end
  object qryAux2: TADOQuery [5]
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 360
    Top = 65528
  end
  inherited SalvarPDF: TQRPDFFilter
    Left = 480
    Top = 384
  end
end
