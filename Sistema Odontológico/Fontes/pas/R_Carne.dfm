inherited frmRCarne: TfrmRCarne
  ClientHeight = 589
  ClientWidth = 827
  Scaled = False
  OnCreate = FormCreate
  ExplicitWidth = 833
  ExplicitHeight = 613
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 827
    ExplicitWidth = 827
  end
  inherited StatusBar1: TStatusBar
    Top = 565
    Width = 827
    ExplicitTop = 565
    ExplicitWidth = 827
  end
  object Relatorio: TQuickRep [2]
    Left = 8
    Top = 39
    Width = 794
    Height = 1123
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
    ReportTitle = 'Relat'#243'rio Padr'#227'o'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRGroup1: TQRGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 32
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryRel.ID'
      Master = Relatorio
      ReprintOnNewPage = False
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 70
      Width = 718
      Height = 229
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Style = psDash
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        605.895833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRGroup1
      PrintOrder = cboAfterParent
      object QRPShape1: TQRPShape
        Left = 0
        Top = 5
        Width = 213
        Height = 29
        Size.Values = (
          76.729166666666670000
          0.000000000000000000
          13.229166666666670000
          563.562500000000000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape2: TQRPShape
        Left = 0
        Top = 33
        Width = 213
        Height = 29
        Size.Values = (
          76.729166666666670000
          0.000000000000000000
          87.312500000000000000
          563.562500000000000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape3: TQRPShape
        Left = 0
        Top = 61
        Width = 213
        Height = 29
        Size.Values = (
          76.729166666666670000
          0.000000000000000000
          161.395833333333300000
          563.562500000000000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape4: TQRPShape
        Left = 0
        Top = 89
        Width = 213
        Height = 29
        Size.Values = (
          76.729166666666670000
          0.000000000000000000
          235.479166666666700000
          563.562500000000000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape5: TQRPShape
        Left = 0
        Top = 117
        Width = 213
        Height = 29
        Size.Values = (
          76.729166666666670000
          0.000000000000000000
          309.562500000000000000
          563.562500000000000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape6: TQRPShape
        Left = 0
        Top = 145
        Width = 213
        Height = 29
        Size.Values = (
          76.729166666666670000
          0.000000000000000000
          383.645833333333300000
          563.562500000000000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape7: TQRPShape
        Left = 0
        Top = 173
        Width = 213
        Height = 29
        Size.Values = (
          76.729166666666670000
          0.000000000000000000
          457.729166666666700000
          563.562500000000000000)
        XLColumn = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRLabel1: TQRLabel
        Left = 5
        Top = 207
        Width = 205
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          547.687500000000000000
          542.395833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Odontosis - www.odontosis.com.br'
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
      object QRShape1: TQRShape
        Left = 220
        Top = 0
        Width = 1
        Height = 226
        Size.Values = (
          597.958333333333300000
          582.083333333333300000
          0.000000000000000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 227
        Top = 0
        Width = 486
        Height = 90
        Size.Values = (
          238.125000000000000000
          600.604166666666700000
          0.000000000000000000
          1285.875000000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object LogoEmpresa: TQRImage
        Left = 235
        Top = 10
        Width = 106
        Height = 71
        Size.Values = (
          187.854166666666700000
          621.770833333333300000
          26.458333333333330000
          280.458333333333300000)
        XLColumn = 0
        Center = True
        Stretch = True
      end
      object lblEmpresa: TQRLabel
        Left = 347
        Top = 10
        Width = 277
        Height = 25
        Size.Values = (
          66.145833333333330000
          918.104166666666700000
          26.458333333333330000
          732.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Nome do Consult'#243'rio'
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
      object lblRua: TQRLabel
        Left = 347
        Top = 35
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          92.604166666666670000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblRua'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCidade: TQRLabel
        Left = 347
        Top = 53
        Width = 54
        Height = 17
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          140.229166666666700000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblCidade'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lbltelefone: TQRLabel
        Left = 347
        Top = 70
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          185.208333333333300000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lbltelefone'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 10
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          26.458333333333330000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cod. Paciente:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 5
        Top = 40
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          105.833333333333300000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 5
        Top = 68
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          179.916666666666700000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Emiss'#227'o:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 5
        Top = 94
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          248.708333333333300000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Vencto.:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 5
        Top = 124
        Width = 99
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          328.083333333333300000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#250'mero Docum.:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 5
        Top = 152
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          402.166666666666700000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Documento:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 5
        Top = 180
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          476.250000000000000000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 128
        Top = 68
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          179.916666666666700000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DataEmissao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 104
        Top = 94
        Width = 106
        Height = 17
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          248.708333333333300000
          280.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DataVencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 115
        Top = 124
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          304.270833333333300000
          328.083333333333300000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'NroDocumento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 137
        Top = 152
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          362.479166666666700000
          402.166666666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 175
        Top = 180
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          463.020833333333300000
          476.250000000000000000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 224
        Width = 718
        Height = 9
        Size.Values = (
          23.812500000000000000
          0.000000000000000000
          592.666666666666700000
          1899.708333333333000000)
        XLColumn = 0
        Pen.Style = psDash
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRPShape8: TQRPShape
        Left = 227
        Top = 93
        Width = 287
        Height = 25
        Size.Values = (
          66.145833333333330000
          600.604166666666700000
          246.062500000000000000
          759.354166666666700000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRLabel9: TQRLabel
        Left = 232
        Top = 97
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          256.645833333333300000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape10: TQRPShape
        Left = 227
        Top = 120
        Width = 287
        Height = 25
        Size.Values = (
          66.145833333333330000
          600.604166666666700000
          317.500000000000000000
          759.354166666666700000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape11: TQRPShape
        Left = 227
        Top = 147
        Width = 287
        Height = 25
        Size.Values = (
          66.145833333333330000
          600.604166666666700000
          388.937500000000000000
          759.354166666666700000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape12: TQRPShape
        Left = 227
        Top = 174
        Width = 287
        Height = 25
        Size.Values = (
          66.145833333333330000
          600.604166666666700000
          460.375000000000000000
          759.354166666666700000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape13: TQRPShape
        Left = 227
        Top = 201
        Width = 287
        Height = 25
        Size.Values = (
          66.145833333333330000
          600.604166666666700000
          531.812500000000000000
          759.354166666666700000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape9: TQRPShape
        Left = 523
        Top = 93
        Width = 190
        Height = 25
        Size.Values = (
          66.145833333333330000
          1383.770833333333000000
          246.062500000000000000
          502.708333333333300000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape14: TQRPShape
        Left = 523
        Top = 120
        Width = 190
        Height = 25
        Size.Values = (
          66.145833333333330000
          1383.770833333333000000
          317.500000000000000000
          502.708333333333300000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape15: TQRPShape
        Left = 523
        Top = 147
        Width = 190
        Height = 25
        Size.Values = (
          66.145833333333330000
          1383.770833333333000000
          388.937500000000000000
          502.708333333333300000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape16: TQRPShape
        Left = 523
        Top = 174
        Width = 190
        Height = 25
        Size.Values = (
          66.145833333333330000
          1383.770833333333000000
          460.375000000000000000
          502.708333333333300000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRPShape17: TQRPShape
        Left = 523
        Top = 201
        Width = 190
        Height = 25
        Size.Values = (
          66.145833333333330000
          1383.770833333333000000
          531.812500000000000000
          502.708333333333300000)
        XLColumn = 0
        Pen.Mode = pmNotXor
        Pen.Style = psInsideFrame
        Shape = qrpsRectangle
        VertAdjust = 213
        FixBottomPosition = False
        StretchHeightWithBand = True
      end
      object QRLabel10: TQRLabel
        Left = 529
        Top = 97
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1399.645833333333000000
          256.645833333333300000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Emiss'#227'o:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 628
        Top = 97
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          256.645833333333300000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DataEmissao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 529
        Top = 123
        Width = 81
        Height = 17
        Size.Values = (
          44.979166666666670000
          1399.645833333333000000
          325.437500000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Vencto.:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 604
        Top = 124
        Width = 106
        Height = 17
        Size.Values = (
          44.979166666666670000
          1598.083333333333000000
          328.083333333333300000
          280.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DataVencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 529
        Top = 151
        Width = 99
        Height = 17
        Size.Values = (
          44.979166666666670000
          1399.645833333333000000
          399.520833333333300000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#250'mero Docum.:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 615
        Top = 151
        Width = 95
        Height = 17
        Size.Values = (
          44.979166666666670000
          1627.187500000000000000
          399.520833333333300000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'NroDocumento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 529
        Top = 178
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          1399.645833333333000000
          470.958333333333300000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Documento:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 637
        Top = 178
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1685.395833333333000000
          470.958333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 529
        Top = 204
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          1399.645833333333000000
          539.750000000000000000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 675
        Top = 205
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          1785.937500000000000000
          542.395833333333300000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object lblCliente: TQRLabel
        Left = 280
        Top = 97
        Width = 231
        Height = 17
        Size.Values = (
          44.979166666666670000
          740.833333333333300000
          256.645833333333300000
          611.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Alessandro Levartoski'
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
        Left = 232
        Top = 124
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          328.083333333333300000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 232
        Top = 151
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          399.520833333333300000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Munic'#237'pio:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 232
        Top = 178
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          470.958333333333300000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CPF:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 232
        Top = 205
        Width = 53
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          542.395833333333300000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblEnderecoCliente: TQRLabel
        Left = 295
        Top = 124
        Width = 216
        Height = 17
        Size.Values = (
          44.979166666666670000
          780.520833333333300000
          328.083333333333300000
          571.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Francisco Xavier, 620'
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
      object lblCidadeCliente: TQRLabel
        Left = 295
        Top = 151
        Width = 216
        Height = 17
        Size.Values = (
          44.979166666666670000
          780.520833333333300000
          399.520833333333300000
          571.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Pato Branco - PR'
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
      object lblCPFCliente: TQRLabel
        Left = 269
        Top = 178
        Width = 242
        Height = 17
        Size.Values = (
          44.979166666666670000
          711.729166666666700000
          470.958333333333300000
          640.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '084.987.289-71'
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
      object lblTelefoneCliente: TQRLabel
        Left = 289
        Top = 205
        Width = 222
        Height = 17
        Size.Values = (
          44.979166666666670000
          764.645833333333300000
          542.395833333333300000
          587.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '(46) 9900-9419'
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
      object lblCliente2: TQRLabel
        Left = 47
        Top = 40
        Width = 163
        Height = 17
        Size.Values = (
          44.979166666666670000
          124.354166666666700000
          105.833333333333300000
          431.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Alessandro Levartoski'
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
      object lblCodCliente: TQRLabel
        Left = 137
        Top = 10
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          362.479166666666700000
          26.458333333333330000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0000000000'
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
  end
  inherited Enter: TJvEnterAsTab
    Left = 600
    Top = 0
  end
  object qryAux: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 133
    Top = 65528
  end
  object qryRel: TADOQuery
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source='#39#39 +
      ';Data Provider=NONE'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SHAPE APPEND'
      'NEW adInteger ID,'
      'NEW adDate DataEmissao,'
      'NEW AdDate DataVencimento,'
      'NEW AdVarChar(100) NroDocumento,'
      'NEW AdVarChar(100) Documento,'
      'NEW AdDouble Valor')
    Left = 187
    Top = 32
    object qryRelID: TIntegerField
      FieldName = 'ID'
    end
    object qryRelDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryRelDataVencimento: TDateTimeField
      FieldName = 'DataVencimento'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryRelNroDocumento: TStringField
      FieldName = 'NroDocumento'
      Size = 100
    end
    object qryRelDocumento: TStringField
      FieldName = 'Documento'
      Size = 100
    end
    object qryRelValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
    end
  end
  object SalvarPDF: TQRPDFFilter
    CompressionOn = True
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 712
    Top = 376
  end
end
