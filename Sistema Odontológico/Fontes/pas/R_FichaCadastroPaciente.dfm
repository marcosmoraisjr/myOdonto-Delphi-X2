﻿object frmRFichaPaciente: TfrmRFichaPaciente
  Left = 0
  Top = 0
  Caption = 'frmRFichaPaciente'
  ClientHeight = 485
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TQuickRep
    Left = -22
    Top = 42
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
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 113
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        298.979166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRSysData1: TQRSysData
        Left = 0
        Top = 84
        Width = 718
        Height = 27
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
      object LogoEmpresa: TQRImage
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
      object QRShape12: TQRShape
        Left = 2
        Top = 79
        Width = 718
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
        Width = 718
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
      object mmoCabeçalho: TQRMemo
        Left = 120
        Top = 5
        Width = 593
        Height = 71
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
      Left = 38
      Top = 288
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
      BandType = rbPageFooter
      object QRLabel1: TQRLabel
        Left = 513
        Top = 6
        Width = 205
        Height = 17
        Size.Values = (
          44.979166666666670000
          1357.312500000000000000
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
      object QRSysData3: TQRSysData
        Left = 76
        Top = 6
        Width = 119
        Height = 17
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          15.875000000000000000
          314.854166666666700000)
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
        Left = 355
        Top = 6
        Width = 8
        Height = 17
        Size.Values = (
          44.979166666666670000
          939.270833333333300000
          15.875000000000000000
          21.166666666666670000)
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
    object QRBand2: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 716
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
        Top = 80
        Width = 718
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
      Left = 33
      Top = 151
      Width = 718
      Height = 137
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        362.479166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel3: TQRLabel
        Left = 33
        Top = 3
        Width = 60
        Height = 16
        Size.Values = (
          42.333333333333330000
          87.312500000000000000
          7.937500000000000000
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
        Left = 53
        Top = 22
        Width = 40
        Height = 16
        Size.Values = (
          42.333333333333330000
          140.229166666666700000
          58.208333333333330000
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
      object QRLabel5: TQRLabel
        Left = 46
        Top = 41
        Width = 47
        Height = 16
        Size.Values = (
          42.333333333333330000
          121.708333333333300000
          108.479166666666700000
          124.354166666666700000)
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
      object QRLabel7: TQRLabel
        Left = 38
        Top = 60
        Width = 55
        Height = 16
        Size.Values = (
          42.333333333333330000
          100.541666666666700000
          158.750000000000000000
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
      object QRLabel8: TQRLabel
        Left = 62
        Top = 78
        Width = 31
        Height = 16
        Size.Values = (
          42.333333333333330000
          164.041666666666700000
          206.375000000000000000
          82.020833333333330000)
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
      object lbCNPJ: TQRLabel
        Left = 32
        Top = 94
        Width = 61
        Height = 16
        Size.Values = (
          42.333333333333330000
          84.666666666666670000
          248.708333333333300000
          161.395833333333300000)
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
      object lbl1: TQRLabel
        Left = 511
        Top = 3
        Width = 52
        Height = 16
        Size.Values = (
          42.333333333333330000
          1352.020833333333000000
          7.937500000000000000
          137.583333333333300000)
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
      object QRLabel6: TQRLabel
        Left = 531
        Top = 22
        Width = 32
        Height = 16
        Size.Values = (
          42.333333333333330000
          1404.937500000000000000
          58.208333333333330000
          84.666666666666670000)
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
      object QRLabel12: TQRLabel
        Left = 540
        Top = 41
        Width = 23
        Height = 16
        Size.Values = (
          42.333333333333330000
          1428.750000000000000000
          108.479166666666700000
          60.854166666666670000)
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
      object QRLabel9: TQRLabel
        Left = 516
        Top = 60
        Width = 47
        Height = 16
        Size.Values = (
          42.333333333333330000
          1365.250000000000000000
          158.750000000000000000
          124.354166666666700000)
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
      object QRLabel13: TQRLabel
        Left = 538
        Top = 78
        Width = 25
        Height = 16
        Size.Values = (
          42.333333333333330000
          1423.458333333333000000
          206.375000000000000000
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
      object QRLabel14: TQRLabel
        Left = 480
        Top = 94
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1270.000000000000000000
          248.708333333333300000
          219.604166666666700000)
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
      object QRLabel15: TQRLabel
        Left = 467
        Top = 112
        Width = 96
        Height = 16
        Size.Values = (
          42.333333333333330000
          1235.604166666667000000
          296.333333333333300000
          254.000000000000000000)
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
      object QRLabel11: TQRLabel
        Left = 54
        Top = 112
        Width = 39
        Height = 16
        Size.Values = (
          42.333333333333330000
          142.875000000000000000
          296.333333333333300000
          103.187500000000000000)
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
      object QRDBText2: TQRDBText
        Left = 98
        Top = 3
        Width = 344
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          7.937500000000000000
          910.166666666666700000)
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
      object QRDBText3: TQRDBText
        Left = 98
        Top = 22
        Width = 344
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          58.208333333333330000
          910.166666666666700000)
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
      object QRDBText4: TQRDBText
        Left = 98
        Top = 41
        Width = 344
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          108.479166666666700000
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
      object QRDBText7: TQRDBText
        Left = 98
        Top = 60
        Width = 344
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          158.750000000000000000
          910.166666666666700000)
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
      object QRDBText8: TQRDBText
        Left = 98
        Top = 94
        Width = 344
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          248.708333333333300000
          910.166666666666700000)
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
      object QRDBText13: TQRDBText
        Left = 98
        Top = 75
        Width = 201
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          198.437500000000000000
          531.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'CPF'
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
        Left = 98
        Top = 112
        Width = 344
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          296.333333333333300000
          910.166666666666700000)
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
      object QRDBText5: TQRDBText
        Left = 568
        Top = 3
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1502.833333333333000000
          7.937500000000000000
          383.645833333333300000)
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
      object QRDBText6: TQRDBText
        Left = 568
        Top = 22
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1502.833333333333000000
          58.208333333333330000
          383.645833333333300000)
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
      object QRDBText9: TQRDBText
        Left = 568
        Top = 41
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1502.833333333333000000
          108.479166666666700000
          383.645833333333300000)
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
      object QRDBText10: TQRDBText
        Left = 568
        Top = 60
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1502.833333333333000000
          158.750000000000000000
          383.645833333333300000)
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
      object QRDBText11: TQRDBText
        Left = 568
        Top = 78
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1502.833333333333000000
          206.375000000000000000
          383.645833333333300000)
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
      object QRDBText12: TQRDBText
        Left = 568
        Top = 94
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1502.833333333333000000
          248.708333333333300000
          383.645833333333300000)
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
      object QRDBText14: TQRDBText
        Left = 568
        Top = 112
        Width = 145
        Height = 16
        Size.Values = (
          42.333333333333330000
          1502.833333333333000000
          296.333333333333300000
          383.645833333333300000)
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
  end
  object qryRel: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT PACIENTE.ID_PACIENTE, PACIENTE.NOME, PACIENTE.CPF, PACIEN' +
        'TE.RG, PACIENTE.DTANASC, PACIENTE.SEXO,                 '
      
        'PACIENTE.ENDERECO, PACIENTE.NRO, PACIENTE.BAIRRO, PACIENTE.CEP, ' +
        'PACIENTE.TELEFONE, PACIENTE.CELULAR, '
      
        'PACIENTE.TELCOMERCIAL, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENT' +
        'E.NOMEMAE, PACIENTE.EMPRESA, PACIENTE.FUNCAO, '
      
        'PACIENTE.TIPO, PACIENTE.OBSERVACAO, PACIENTE.DATACADASTRO, PACIE' +
        'NTE.ULTIMACONSULTA, CIDADE.NOME AS Cidade, CIDADE.UF FROM PACIEN' +
        'TE '
      'INNER JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE')
    Left = 680
    Top = 48
    object qryRelID_PACIENTE: TAutoIncField
      FieldName = 'ID_PACIENTE'
      ReadOnly = True
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
      DisplayFormat = 'DD/MM/YYYY'
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
    object qryRelTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qryRelOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryRelDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryRelULTIMACONSULTA: TDateTimeField
      FieldName = 'ULTIMACONSULTA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryRelCidade: TStringField
      FieldName = 'Cidade'
      Size = 255
    end
    object qryRelUF: TStringField
      FieldName = 'UF'
      Size = 255
    end
  end
  object qryAux: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 632
    Top = 8
  end
  object SalvarPDF: TQRPDFFilter
    CompressionOn = True
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 680
  end
end
