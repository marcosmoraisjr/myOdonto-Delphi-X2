﻿inherited frmRRelacaoFinanceira: TfrmRRelacaoFinanceira
  Caption = 'frmRRelacaoFinanceira'
  ClientHeight = 569
  ClientWidth = 1004
  Scaled = False
  OnCreate = FormCreate
  ExplicitWidth = 1010
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1004
    ExplicitWidth = 1004
  end
  inherited StatusBar1: TStatusBar
    Top = 545
    Width = 1004
    ExplicitTop = 545
    ExplicitWidth = 1004
  end
  object RelatorioAReceber: TQuickRep [2]
    Left = -113
    Top = 198
    Width = 635
    Height = 898
    DataSet = qryContasReceber
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
    ReportTitle = 'Rela'#231#227'o T'#237'tulos a Receber'
    SnapToGrid = True
    Units = MM
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 90
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        297.656250000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRSysData1: TQRSysData
        Left = 0
        Top = 67
        Width = 574
        Height = 22
        Size.Values = (
          71.437500000000000000
          0.000000000000000000
          222.250000000000000000
          1899.708333333333000000)
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
      object LogoEmpresaReceber: TQRImage
        Left = 6
        Top = 4
        Width = 85
        Height = 57
        Size.Values = (
          187.854166666666700000
          21.166666666666670000
          13.229166666666670000
          280.458333333333300000)
        XLColumn = 0
        Center = True
        Stretch = True
      end
      object QRShape12: TQRShape
        Left = 2
        Top = 63
        Width = 574
        Height = 1
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          209.020833333333300000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 2
        Top = 0
        Width = 574
        Height = 1
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          0.000000000000000000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object mmoCabeçalhoReceber: TQRMemo
        Left = 96
        Top = 4
        Width = 474
        Height = 57
        Size.Values = (
          187.854166666666700000
          317.500000000000000000
          13.229166666666670000
          1568.979166666667000000)
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
    object QRBand3: TQRBand
      Left = 30
      Top = 237
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
      object QRLabel1: TQRLabel
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
      object QRSysData3: TQRSysData
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
      object QRSysData2: TQRSysData
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
      object QRLabel2: TQRLabel
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
    object QRBand2: TQRBand
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
    object QRBand4: TQRBand
      Left = 30
      Top = 157
      Width = 575
      Height = 16
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 2
        Top = 1
        Width = 154
        Height = 14
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          2.645833333333333000
          510.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'Historico'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 166
        Top = 1
        Width = 58
        Height = 14
        Size.Values = (
          44.979166666666670000
          550.333333333333300000
          2.645833333333333000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'NroNota'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 237
        Top = 1
        Width = 58
        Height = 14
        Size.Values = (
          44.979166666666670000
          783.166666666666700000
          2.645833333333333000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'Documento'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 310
        Top = 1
        Width = 52
        Height = 14
        Size.Values = (
          44.979166666666670000
          1023.937500000000000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'DataConta'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 374
        Top = 1
        Width = 52
        Height = 14
        Size.Values = (
          44.979166666666670000
          1235.604166666667000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'DataVcto'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 431
        Top = 1
        Width = 63
        Height = 14
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          2.645833333333333000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'Valor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 502
        Top = 1
        Width = 70
        Height = 14
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          2.645833333333333000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'ValorRecebido'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object ChildBand1: TQRChildBand
      Left = 30
      Top = 120
      Width = 575
      Height = 18
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        59.531250000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand1
      PrintOrder = cboAfterParent
      object QRLabel3: TQRLabel
        Left = 2
        Top = 3
        Width = 45
        Height = 14
        Size.Values = (
          46.302083333333330000
          6.614583333333333000
          9.921875000000000000
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
      object QRLabel4: TQRLabel
        Left = 166
        Top = 3
        Width = 48
        Height = 14
        Size.Values = (
          46.302083333333330000
          549.010416666666700000
          9.921875000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nro. Nota'
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
        Left = 237
        Top = 3
        Width = 58
        Height = 14
        Size.Values = (
          46.302083333333330000
          783.828125000000000000
          9.921875000000000000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Documento'
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
        Left = 307
        Top = 3
        Width = 57
        Height = 14
        Size.Values = (
          46.302083333333330000
          1015.338541666667000000
          9.921875000000000000
          188.515625000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Conta'
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
        Left = 374
        Top = 3
        Width = 53
        Height = 14
        Size.Values = (
          46.302083333333330000
          1236.927083333333000000
          9.921875000000000000
          175.286458333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Vcto.'
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
        Left = 444
        Top = 3
        Width = 50
        Height = 14
        Size.Values = (
          46.302083333333330000
          1468.437500000000000000
          9.921875000000000000
          165.364583333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor (R$)'
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
        Left = 502
        Top = 3
        Width = 70
        Height = 14
        Size.Values = (
          46.302083333333330000
          1660.260416666667000000
          9.921875000000000000
          231.510416666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Pg. (R$)'
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
    object QRBand5: TQRBand
      Left = 30
      Top = 173
      Width = 575
      Height = 34
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand5BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        112.447916666666700000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel10: TQRLabel
        Left = 349
        Top = 2
        Width = 78
        Height = 14
        Size.Values = (
          46.302083333333330000
          1154.244791666667000000
          6.614583333333333000
          257.968750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Paciente:'
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
      object lblTotValor: TQRLabel
        Left = 431
        Top = 2
        Width = 63
        Height = 14
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          5.291666666666667000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
      object lblTotPago: TQRLabel
        Left = 502
        Top = 2
        Width = 72
        Height = 14
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          5.291666666666667000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
      object QRLabel11: TQRLabel
        Left = 352
        Top = 16
        Width = 142
        Height = 14
        Size.Values = (
          46.302083333333330000
          1164.166666666667000000
          52.916666666666670000
          469.635416666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Restante do Paciente:'
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
      object lblTotRestante: TQRLabel
        Left = 502
        Top = 16
        Width = 72
        Height = 14
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          52.916666666666670000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
    object QRBand6: TQRBand
      Left = 30
      Top = 207
      Width = 575
      Height = 30
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand6BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        99.218750000000000000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel12: TQRLabel
        Left = 365
        Top = 2
        Width = 61
        Height = 14
        Size.Values = (
          46.302083333333330000
          1207.161458333333000000
          6.614583333333333000
          201.744791666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Geral:'
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
      object lblTotValorGeral: TQRLabel
        Left = 431
        Top = 2
        Width = 63
        Height = 14
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          5.291666666666667000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
      object lblTotGeralPago: TQRLabel
        Left = 502
        Top = 2
        Width = 72
        Height = 14
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          5.291666666666667000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
        Left = 369
        Top = 15
        Width = 110
        Height = 14
        Size.Values = (
          46.302083333333330000
          1220.390625000000000000
          49.609375000000000000
          363.802083333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Restante Geral:'
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
      object lblTotGeralRestante: TQRLabel
        Left = 502
        Top = 15
        Width = 72
        Height = 14
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          50.270833333333330000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
    object QRGroup2: TQRGroup
      Left = 30
      Top = 138
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
      Expression = 'qryContasReceber.iAux'
      FooterBand = QRBand6
      Master = RelatorioAReceber
      ReprintOnNewPage = False
    end
    object QRGroup1: TQRGroup
      Left = 30
      Top = 138
      Width = 575
      Height = 19
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        62.838541666666670000
        1901.692708333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryContasReceber.IDPaciente'
      FooterBand = QRBand5
      Master = RelatorioAReceber
      ReprintOnNewPage = False
      object QRLabel13: TQRLabel
        Left = 2
        Top = 2
        Width = 49
        Height = 14
        Size.Values = (
          46.302083333333330000
          6.614583333333333000
          6.614583333333333000
          162.057291666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Paciente:'
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
      object QRDBText8: TQRDBText
        Left = 53
        Top = 2
        Width = 524
        Height = 14
        Size.Values = (
          44.979166666666670000
          174.625000000000000000
          7.937500000000000000
          1733.020833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasReceber
        DataField = 'Paciente'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
  end
  object RelatorioAPagar: TQuickRep [3]
    Left = -26
    Top = -40
    Width = 952
    Height = 1347
    DataSet = qryContasPagar
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
    ReportTitle = 'Rela'#231#227'o T'#237'tulos a Receber'
    SnapToGrid = True
    Units = MM
    Zoom = 120
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand7: TQRBand
      Left = 45
      Top = 45
      Width = 861
      Height = 135
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        297.656250000000000000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRSysData4: TQRSysData
        Left = 0
        Top = 101
        Width = 862
        Height = 32
        Size.Values = (
          71.437500000000000000
          0.000000000000000000
          222.250000000000000000
          1899.708333333333000000)
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
      object LogoEmpresaPagar: TQRImage
        Left = 10
        Top = 6
        Width = 127
        Height = 85
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
        Left = 2
        Top = 95
        Width = 862
        Height = 1
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          209.020833333333300000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 2
        Top = 0
        Width = 862
        Height = 1
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          0.000000000000000000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object mmoCabecalhoPagar: TQRMemo
        Left = 144
        Top = 6
        Width = 712
        Height = 85
        Size.Values = (
          187.854166666666700000
          317.500000000000000000
          13.229166666666670000
          1568.979166666667000000)
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
    object QRBand8: TQRBand
      Left = 45
      Top = 352
      Width = 861
      Height = 39
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        85.989583333333330000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel14: TQRLabel
        Left = 615
        Top = 7
        Width = 246
        Height = 21
        Size.Values = (
          46.302083333333330000
          1355.989583333333000000
          15.434027777777780000
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
        Left = 92
        Top = 7
        Width = 143
        Height = 21
        Size.Values = (
          46.302083333333330000
          202.847222222222200000
          15.434027777777780000
          315.295138888888900000)
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
        Left = 425
        Top = 7
        Width = 10
        Height = 21
        Size.Values = (
          46.302083333333330000
          937.065972222222200000
          15.434027777777780000
          22.048611111111110000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 6
        Top = 7
        Width = 78
        Height = 21
        Size.Values = (
          46.302083333333330000
          13.229166666666670000
          15.434027777777780000
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
    object QRBand9: TQRBand
      Left = 45
      Top = 45
      Width = 861
      Height = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 859
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
        Top = 96
        Width = 862
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
    object QRBand10: TQRBand
      Left = 45
      Top = 232
      Width = 861
      Height = 24
      AlignToBottom = False
      BeforePrint = QRBand10BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 2
        Top = 1
        Width = 232
        Height = 20
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          2.645833333333333000
          510.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'Historico'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 250
        Top = 1
        Width = 88
        Height = 20
        Size.Values = (
          44.979166666666670000
          550.333333333333300000
          2.645833333333333000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'NroNota'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 355
        Top = 1
        Width = 88
        Height = 20
        Size.Values = (
          44.979166666666670000
          783.166666666666700000
          2.645833333333333000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'Documento'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 464
        Top = 1
        Width = 78
        Height = 20
        Size.Values = (
          44.979166666666670000
          1023.937500000000000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'DataConta'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 560
        Top = 1
        Width = 78
        Height = 20
        Size.Values = (
          44.979166666666670000
          1235.604166666667000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'DataVcto'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 647
        Top = 1
        Width = 95
        Height = 20
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          2.645833333333333000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'Valor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 754
        Top = 1
        Width = 106
        Height = 20
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          2.645833333333333000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'ValorPago'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRChildBand1: TQRChildBand
      Left = 45
      Top = 180
      Width = 861
      Height = 27
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        59.531250000000000000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand7
      PrintOrder = cboAfterParent
      object QRLabel17: TQRLabel
        Left = 3
        Top = 4
        Width = 67
        Height = 21
        Size.Values = (
          46.302083333333330000
          6.614583333333333000
          8.819444444444444000
          147.725694444444400000)
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
      object QRLabel18: TQRLabel
        Left = 249
        Top = 4
        Width = 72
        Height = 21
        Size.Values = (
          46.302083333333330000
          549.010416666666700000
          8.819444444444444000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nro. Nota'
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
      object QRLabel19: TQRLabel
        Left = 356
        Top = 4
        Width = 88
        Height = 21
        Size.Values = (
          46.302083333333330000
          784.930555555555600000
          8.819444444444444000
          194.027777777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Documento'
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
      object QRLabel20: TQRLabel
        Left = 460
        Top = 4
        Width = 85
        Height = 21
        Size.Values = (
          46.302083333333330000
          1014.236111111111000000
          8.819444444444444000
          187.413194444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Conta'
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
        Left = 561
        Top = 4
        Width = 79
        Height = 21
        Size.Values = (
          46.302083333333330000
          1236.927083333333000000
          8.819444444444444000
          174.184027777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Vcto.'
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
      object QRLabel22: TQRLabel
        Left = 666
        Top = 4
        Width = 76
        Height = 21
        Size.Values = (
          46.302083333333330000
          1468.437500000000000000
          8.819444444444444000
          167.569444444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor (R$)'
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
      object QRLabel23: TQRLabel
        Left = 753
        Top = 4
        Width = 106
        Height = 21
        Size.Values = (
          46.302083333333330000
          1660.260416666667000000
          8.819444444444444000
          233.715277777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Pg. (R$)'
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
    object QRBand11: TQRBand
      Left = 45
      Top = 256
      Width = 861
      Height = 51
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand11BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        112.447916666666700000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel24: TQRLabel
        Left = 524
        Top = 3
        Width = 116
        Height = 21
        Size.Values = (
          46.302083333333330000
          1155.347222222222000000
          6.614583333333333000
          255.763888888888900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Paciente:'
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
      object lblPagarValor: TQRLabel
        Left = 647
        Top = 2
        Width = 95
        Height = 20
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          5.291666666666667000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
      object lblPagarPago: TQRLabel
        Left = 754
        Top = 2
        Width = 108
        Height = 20
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          5.291666666666667000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
      object QRLabel27: TQRLabel
        Left = 528
        Top = 24
        Width = 214
        Height = 21
        Size.Values = (
          46.302083333333330000
          1164.166666666667000000
          52.916666666666670000
          471.840277777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Restante do Paciente:'
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
      object lblRestantePagar: TQRLabel
        Left = 754
        Top = 24
        Width = 108
        Height = 20
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          52.916666666666670000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
    object QRBand12: TQRBand
      Left = 45
      Top = 307
      Width = 861
      Height = 45
      Frame.DrawTop = True
      AlignToBottom = False
      BeforePrint = QRBand12BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        99.218750000000000000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel29: TQRLabel
        Left = 547
        Top = 3
        Width = 91
        Height = 21
        Size.Values = (
          46.302083333333330000
          1206.059027777778000000
          6.614583333333333000
          200.642361111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Geral:'
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
      object lblTotalPagarValor: TQRLabel
        Left = 647
        Top = 2
        Width = 95
        Height = 20
        Size.Values = (
          44.979166666666670000
          1426.104166666667000000
          5.291666666666667000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
      object lblPagarTotalPago: TQRLabel
        Left = 754
        Top = 2
        Width = 108
        Height = 20
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          5.291666666666667000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
      object QRLabel32: TQRLabel
        Left = 554
        Top = 22
        Width = 164
        Height = 21
        Size.Values = (
          46.302083333333330000
          1221.493055555556000000
          48.506944444444440000
          361.597222222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Restante Geral:'
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
      object lblPagarTotalRestante: TQRLabel
        Left = 754
        Top = 23
        Width = 108
        Height = 20
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          50.270833333333330000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '555.555,55'
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
    object QRGroup3: TQRGroup
      Left = 45
      Top = 207
      Width = 861
      Height = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryContasPagar.iAux'
      FooterBand = QRBand12
      Master = RelatorioAPagar
      ReprintOnNewPage = False
    end
    object QRGroup4: TQRGroup
      Left = 45
      Top = 207
      Width = 861
      Height = 25
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.121527777777780000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryContasPagar.IDFornecedor'
      FooterBand = QRBand11
      Master = RelatorioAPagar
      ReprintOnNewPage = False
      object QRLabel34: TQRLabel
        Left = 3
        Top = 3
        Width = 94
        Height = 21
        Size.Values = (
          46.302083333333330000
          6.614583333333333000
          6.614583333333333000
          207.256944444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fornecedor:'
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
      object QRDBText16: TQRDBText
        Left = 100
        Top = 3
        Width = 701
        Height = 21
        Size.Values = (
          46.302083333333330000
          220.486111111111100000
          6.614583333333333000
          1545.607638888889000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryContasPagar
        DataField = 'Fornecedor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
  end
  inherited Enter: TJvEnterAsTab
    Left = 192
    Top = 48
  end
  object qryAux: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 112
  end
  object SalvarPDF: TQRPDFFilter
    CompressionOn = True
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 192
    Top = 65528
  end
  object qryContasReceber: TADOQuery
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source='#39#39 +
      ';Data Provider=NONE'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SHAPE APPEND'
      'NEW adInteger IDPaciente,'
      'NEW AdVarChar(60) Historico,'
      'NEW AdVarChar(60) Documento,'
      'NEW AdVarChar(60) NroNota,'
      'NEW AdVarChar(160) Paciente,'
      'NEW AdDouble Valor,'
      'NEW AdDouble ValorRecebido,'
      'NEW AdDate DataConta,'
      'NEW AdDate DataVcto,'
      'NEW AdInteger iAux')
    Left = 104
    Top = 104
    object qryContasReceberIDPaciente: TIntegerField
      FieldName = 'IDPaciente'
    end
    object qryContasReceberHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object qryContasReceberDocumento: TStringField
      FieldName = 'Documento'
      Size = 60
    end
    object qryContasReceberNroNota: TStringField
      FieldName = 'NroNota'
      Size = 60
    end
    object qryContasReceberValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,###,##0.00'
    end
    object qryContasReceberValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
      DisplayFormat = '#,###,##0.00'
    end
    object qryContasReceberDataConta: TDateTimeField
      FieldName = 'DataConta'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryContasReceberDataVcto: TDateTimeField
      FieldName = 'DataVcto'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryContasReceberPaciente: TStringField
      FieldName = 'Paciente'
      Size = 160
    end
    object qryContasReceberiAux: TIntegerField
      FieldName = 'iAux'
    end
  end
  object qryContasPagar: TADOQuery
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source='#39#39 +
      ';Data Provider=NONE'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SHAPE APPEND'
      'NEW adInteger IDFornecedor,'
      'NEW AdVarChar(60) Historico,'
      'NEW AdVarChar(60) Documento,'
      'NEW AdVarChar(60) NroNota,'
      'NEW AdVarChar(160) Fornecedor,'
      'NEW AdDouble Valor,'
      'NEW AdDouble ValorPago,'
      'NEW AdDate DataConta,'
      'NEW AdDate DataVcto,'
      'NEW AdInteger iAux')
    Left = 216
    Top = 120
    object qryContasPagarIDFornecedor: TIntegerField
      FieldName = 'IDFornecedor'
    end
    object qryContasPagarHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object qryContasPagarDocumento: TStringField
      FieldName = 'Documento'
      Size = 60
    end
    object qryContasPagarNroNota: TStringField
      FieldName = 'NroNota'
      Size = 60
    end
    object qryContasPagarFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 160
    end
    object qryContasPagarValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
    end
    object qryContasPagarValorPago: TFloatField
      FieldName = 'ValorPago'
      DisplayFormat = '#,##0.00'
    end
    object qryContasPagarDataConta: TDateTimeField
      FieldName = 'DataConta'
    end
    object qryContasPagarDataVcto: TDateTimeField
      FieldName = 'DataVcto'
    end
    object qryContasPagariAux: TIntegerField
      FieldName = 'iAux'
    end
  end
end
