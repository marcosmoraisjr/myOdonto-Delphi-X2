﻿inherited frmRelPrevisaoReceberPlanoTratamento: TfrmRelPrevisaoReceberPlanoTratamento
  Caption = 'frmRelPrevisaoReceberPlanoTratamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TQuickRep
    Left = 0
    Top = 92
    DataSet = qryOrcamento
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
    ReportTitle = 'Previs'#227'o a Receber do Plano de Tratamento'
    ExplicitLeft = 0
    ExplicitTop = 92
    inherited QRBand1: TQRBand
      Size.Values = (
        309.562500000000000000
        1899.708333333333000000)
      inherited QRSysData1: TQRSysData
        Size.Values = (
          71.437500000000000000
          10.583333333333330000
          232.833333333333300000
          1875.895833333333000000)
        FontSize = 14
      end
      inherited LogoEmpresa: TQRImage
        Size.Values = (
          187.854166666666700000
          21.166666666666670000
          13.229166666666670000
          280.458333333333300000)
      end
      inherited QRShape12: TQRShape
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          209.020833333333300000
          1899.708333333333000000)
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
      Top = 222
      Size.Values = (
        87.312500000000000000
        1899.708333333333000000)
      ExplicitTop = 222
      inherited QRLabel1: TQRLabel
        Size.Values = (
          47.625000000000000000
          1362.604166666667000000
          15.875000000000000000
          537.104166666666700000)
        FontSize = 10
      end
      inherited QRSysData3: TQRSysData
        Size.Values = (
          47.625000000000000000
          203.729166666666700000
          15.875000000000000000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRSysData2: TQRSysData
        Size.Values = (
          47.625000000000000000
          889.000000000000000000
          15.875000000000000000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRLabel2: TQRLabel
        Size.Values = (
          47.625000000000000000
          13.229166666666670000
          15.875000000000000000
          171.979166666666700000)
        FontSize = 10
      end
    end
    inherited QRBand2: TQRBand
      Size.Values = (
        0.000000000000000000
        1899.708333333333000000)
      inherited QRShape1: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1894.416666666667000000)
      end
      inherited QRShape2: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 155
      Width = 718
      Height = 25
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryOrcamento.iAux'
      FooterBand = QRBand5
      Master = Relatorio
      ReprintOnNewPage = True
      object QRLabel3: TQRLabel
        Left = 4
        Top = 4
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          10.583333333333330000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Paciente'
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
        Left = 226
        Top = 4
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          597.958333333333300000
          10.583333333333330000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Procedimento'
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
        Left = 474
        Top = 4
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          10.583333333333330000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vlr.Tabela'
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
        Left = 543
        Top = 4
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1436.687500000000000000
          10.583333333333330000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vlr. Recebido'
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
        Left = 634
        Top = 4
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1677.458333333333000000
          10.583333333333330000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Vlr. Restante'
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
      Left = 38
      Top = 202
      Width = 718
      Height = 20
      AlignToBottom = False
      BeforePrint = QRBand5BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel14: TQRLabel
        Left = 414
        Top = 2
        Width = 43
        Height = 17
        Size.Values = (
          44.979166666666670000
          1095.375000000000000000
          5.291666666666667000
          113.770833333333300000)
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
      object LblTTabela: TQRLabel
        Left = 471
        Top = 2
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          1246.187500000000000000
          5.291666666666667000
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
      object lblTRecebido: TQRLabel
        Left = 560
        Top = 2
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          5.291666666666667000
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
      object lblTRestante: TQRLabel
        Left = 646
        Top = 2
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          1709.208333333333000000
          5.291666666666667000
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
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 180
      Width = 718
      Height = 22
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 4
        Top = 1
        Width = 210
        Height = 17
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          2.645833333333333000
          555.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'Paciente'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 226
        Top = 1
        Width = 231
        Height = 17
        Size.Values = (
          44.979166666666670000
          597.958333333333300000
          2.645833333333333000
          611.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'Procedimento'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 474
        Top = 1
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          2.645833333333333000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'ValorTabela'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 563
        Top = 1
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
          2.645833333333333000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'ValorRecebido'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 646
        Top = 1
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          1709.208333333333000000
          2.645833333333333000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'ValorRestante'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
  end
  inherited GroupBox1: TGroupBox
    inherited btnImprimir: TSpeedButton
      Left = 504
      Top = 3
      ExplicitLeft = 504
      ExplicitTop = 3
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 0
    Top = 35
    Width = 958
    Height = 41
    Align = alTop
    Caption = 'Paciente'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 332
      Top = 18
      Width = 21
      Height = 13
      Caption = 'At'#233':'
    end
    object EdtCodP: TJvComboEdit
      Left = 39
      Top = 15
      Width = 49
      Height = 21
      Flat = False
      ParentFlat = False
      ButtonWidth = 17
      ClickKey = 113
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageKind = ikEllipsis
      ParentFont = False
      TabOrder = 0
      OnButtonClick = EdtCodPButtonClick
      OnExit = EdtCodPExit
      OnKeyPress = EdtCodPKeyPress
    end
    object EdtNome: TEdit
      Left = 91
      Top = 15
      Width = 230
      Height = 21
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Todos'
    end
    object EdtCodPT: TJvComboEdit
      Left = 357
      Top = 15
      Width = 49
      Height = 21
      Flat = False
      ParentFlat = False
      ButtonWidth = 17
      ClickKey = 113
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageKind = ikEllipsis
      ParentFont = False
      TabOrder = 2
      OnButtonClick = EdtCodPTButtonClick
      OnExit = EdtCodPTExit
      OnKeyPress = EdtCodPKeyPress
    end
    object EdtNomeT: TEdit
      Left = 410
      Top = 15
      Width = 230
      Height = 21
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'Todos'
    end
  end
  object rgOrdem: TRadioGroup [3]
    Left = 0
    Top = 0
    Width = 958
    Height = 35
    Align = alTop
    Caption = ' Ordem '
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Paciente'
      'Procedimento')
    TabOrder = 3
  end
  inherited qryAux: TADOQuery
    Left = 352
    Top = 121
  end
  object qryOrcamento: TADOQuery
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source='#39#39 +
      ';Data Provider=NONE'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SHAPE APPEND'
      'NEW adInteger IDProcedimento,'
      'NEW adInteger IDPlanoTratamento,'
      'NEW AdInteger IDPaciente,'
      'NEW AdVarChar(60) Procedimento,'
      'NEW AdVarChar(60) Paciente,'
      'NEW AdDouble ValorTabela,'
      'NEW AdDouble ValorRecebido,'
      'NEW AdDouble ValorRestante,'
      'NEW AdInteger iAux')
    Left = 392
    Top = 65528
    object qryOrcamentoIDProcedimento: TIntegerField
      FieldName = 'IDProcedimento'
    end
    object qryOrcamentoIDPlanoTratamento: TIntegerField
      FieldName = 'IDPlanoTratamento'
    end
    object qryOrcamentoIDPaciente: TIntegerField
      FieldName = 'IDPaciente'
    end
    object qryOrcamentoProcedimento: TStringField
      FieldName = 'Procedimento'
      Size = 60
    end
    object qryOrcamentoPaciente: TStringField
      FieldName = 'Paciente'
      Size = 60
    end
    object qryOrcamentoValorTabela: TFloatField
      FieldName = 'ValorTabela'
      DisplayFormat = '#,###,##0.00'
    end
    object qryOrcamentoValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
      DisplayFormat = '#,###,##0.00'
    end
    object qryOrcamentoValorRestante: TFloatField
      FieldName = 'ValorRestante'
      DisplayFormat = '#,###,##0.00'
    end
    object qryOrcamentoiAux: TIntegerField
      FieldName = 'iAux'
    end
  end
  object dsOrcamento: TDataSource
    DataSet = qryOrcamento
    Left = 264
    Top = 48
  end
end
