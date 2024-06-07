inherited frmPReHistoricoPaciente: TfrmPReHistoricoPaciente
  Caption = 'frmPReHistoricoPaciente'
  ClientWidth = 1050
  ExplicitWidth = 1050
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TQuickRep
    Left = 11
    Top = 145
    Width = 952
    Height = 1347
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
    PrinterSettings.PrintMetaFile = True
    ReportTitle = 'Hist'#243'rico de Pacientes'
    Zoom = 120
    ExplicitLeft = 11
    ExplicitTop = 145
    ExplicitWidth = 952
    ExplicitHeight = 1347
    inherited QRBand1: TQRBand
      Left = 45
      Top = 45
      Width = 861
      Height = 141
      Size.Values = (
        310.885416666666700000
        1898.385416666667000000)
      ExplicitLeft = 45
      ExplicitTop = 45
      ExplicitWidth = 861
      ExplicitHeight = 141
      inherited QRSysData1: TQRSysData
        Left = 5
        Top = 106
        Width = 851
        Height = 32
        Size.Values = (
          71.437500000000000000
          10.583333333333330000
          232.833333333333300000
          1875.895833333333000000)
        FontSize = 14
        ExplicitLeft = 5
        ExplicitTop = 106
        ExplicitWidth = 851
        ExplicitHeight = 32
      end
      inherited LogoEmpresa: TQRImage
        Left = 10
        Top = 6
        Width = 127
        Height = 85
        Size.Values = (
          187.854166666666700000
          21.166666666666670000
          13.229166666666670000
          280.458333333333300000)
        ExplicitLeft = 10
        ExplicitTop = 6
        ExplicitWidth = 127
        ExplicitHeight = 85
      end
      inherited QRShape12: TQRShape
        Top = 95
        Width = 862
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          209.020833333333300000
          1899.708333333333000000)
        ExplicitTop = 95
        ExplicitWidth = 862
      end
      inherited QRShape5: TQRShape
        Width = 862
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          0.000000000000000000
          1899.708333333333000000)
        ExplicitWidth = 862
      end
      inherited mmoCabeçalho: TQRMemo
        Left = 144
        Top = 6
        Width = 712
        Height = 85
        Size.Values = (
          187.854166666666700000
          317.500000000000000000
          13.229166666666670000
          1568.979166666667000000)
        FontSize = 10
        ExplicitLeft = 144
        ExplicitTop = 6
        ExplicitWidth = 712
        ExplicitHeight = 85
      end
    end
    inherited QRBand3: TQRBand
      Left = 45
      Top = 266
      Width = 861
      Height = 39
      Size.Values = (
        85.989583333333330000
        1898.385416666667000000)
      ExplicitLeft = 45
      ExplicitTop = 266
      ExplicitWidth = 861
      ExplicitHeight = 39
      inherited QRLabel1: TQRLabel
        Left = 617
        Top = 7
        Width = 244
        Height = 21
        Size.Values = (
          46.302083333333330000
          1360.399305555556000000
          15.434027777777780000
          537.986111111111100000)
        FontSize = 10
        ExplicitLeft = 617
        ExplicitTop = 7
        ExplicitWidth = 244
        ExplicitHeight = 21
      end
      inherited QRSysData3: TQRSysData
        Left = 93
        Top = 7
        Width = 82
        Height = 21
        Size.Values = (
          46.302083333333330000
          205.052083333333300000
          15.434027777777780000
          180.798611111111100000)
        FontSize = 10
        ExplicitLeft = 93
        ExplicitTop = 7
        ExplicitWidth = 82
        ExplicitHeight = 21
      end
      inherited QRSysData2: TQRSysData
        Left = 403
        Top = 7
        Width = 55
        Height = 21
        Size.Values = (
          46.302083333333330000
          888.559027777777800000
          15.434027777777780000
          121.267361111111100000)
        FontSize = 10
        ExplicitLeft = 403
        ExplicitTop = 7
        ExplicitWidth = 55
        ExplicitHeight = 21
      end
      inherited QRLabel2: TQRLabel
        Left = 6
        Top = 7
        Width = 78
        Height = 21
        Size.Values = (
          46.302083333333330000
          13.229166666666670000
          15.434027777777780000
          171.979166666666700000)
        FontSize = 10
        ExplicitLeft = 6
        ExplicitTop = 7
        ExplicitWidth = 78
        ExplicitHeight = 21
      end
    end
    inherited QRBand2: TQRBand
      Left = 45
      Top = 45
      Width = 861
      Size.Values = (
        0.000000000000000000
        1898.385416666667000000)
      ExplicitLeft = 45
      ExplicitTop = 45
      ExplicitWidth = 861
      inherited QRShape1: TQRShape
        Width = 859
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1894.416666666667000000)
        ExplicitWidth = 859
      end
      inherited QRShape2: TQRShape
        Top = 96
        Width = 862
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
        ExplicitTop = 96
        ExplicitWidth = 862
      end
    end
    object QRGroup1: TQRGroup
      Left = 45
      Top = 212
      Width = 861
      Height = 29
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.940972222222220000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryRel.ID_PACIENTE'
      Master = Relatorio
      ReprintOnNewPage = False
      object QRLabel33: TQRLabel
        Left = 10
        Top = 5
        Width = 85
        Height = 19
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          10.583333333333330000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Paciente.:'
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
        Left = 97
        Top = 5
        Width = 42
        Height = 19
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
        DataField = 'ID_PACIENTE'
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
        Left = 144
        Top = 4
        Width = 637
        Height = 20
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
        DataField = 'Paciente'
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
    object QRBand4: TQRBand
      Left = 45
      Top = 241
      Width = 861
      Height = 25
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
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 4
        Top = 2
        Width = 597
        Height = 21
        Size.Values = (
          46.302083333333330000
          9.921875000000000000
          3.307291666666667000
          1316.302083333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'DESCRICAO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 615
        Top = 2
        Width = 93
        Height = 21
        Size.Values = (
          46.302083333333330000
          1355.989583333333000000
          3.307291666666667000
          205.052083333333300000)
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
      object QRDBText4: TQRDBText
        Left = 720
        Top = 2
        Width = 137
        Height = 21
        Size.Values = (
          46.302083333333330000
          1587.500000000000000000
          3.307291666666667000
          300.963541666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'Operador'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 45
      Top = 186
      Width = 861
      Height = 26
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        57.326388888888890000
        1898.385416666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 4
        Top = 2
        Width = 597
        Height = 21
        Size.Values = (
          46.302083333333330000
          9.921875000000000000
          3.307291666666667000
          1316.302083333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Descri'#231#227'o'
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
        Left = 615
        Top = 2
        Width = 93
        Height = 21
        Size.Values = (
          46.302083333333330000
          1355.989583333333000000
          3.307291666666667000
          205.052083333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
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
        Left = 720
        Top = 2
        Width = 621
        Height = 21
        Size.Values = (
          46.302083333333330000
          1587.500000000000000000
          3.307291666666667000
          1369.218750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Operador'
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
  inherited GroupBox1: TGroupBox
    Width = 1050
    ExplicitWidth = 1050
    inherited btnImprimir: TSpeedButton
      Left = 508
      Top = 3
      ExplicitLeft = 508
      ExplicitTop = 3
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 0
    Top = 35
    Width = 1050
    Height = 41
    Align = alTop
    Caption = 'Paciente'
    TabOrder = 2
    object EdtCodP: TJvComboEdit
      Left = 8
      Top = 15
      Width = 49
      Height = 21
      Flat = False
      ParentFlat = False
      ButtonWidth = 17
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
      Left = 63
      Top = 15
      Width = 578
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
  end
  object GroupBox3: TGroupBox [3]
    Left = 0
    Top = 76
    Width = 1050
    Height = 40
    Align = alTop
    Caption = 'Per'#237'odo'
    TabOrder = 3
    object Label1: TLabel
      Left = 11
      Top = 18
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 525
      Top = 18
      Width = 21
      Height = 13
      Caption = 'At'#233':'
    end
    object EdtDtInicial: TJvDateEdit
      Left = 34
      Top = 15
      Width = 91
      Height = 21
      TabOrder = 0
      OnExit = EdtDtInicialExit
    end
    object EdtDtFinal: TJvDateEdit
      Left = 550
      Top = 15
      Width = 91
      Height = 21
      TabOrder = 1
    end
  end
  object rgOrdem: TRadioGroup [4]
    Left = 0
    Top = 0
    Width = 1050
    Height = 35
    Align = alTop
    Caption = ' Ordem '
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 4
  end
  inherited qryAux: TADOQuery
    Left = 352
    Top = 145
  end
  inherited SalvarPDF: TQRPDFFilter
    CompressionOn = False
    Left = 824
  end
  object qryRel: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT PACIENTE.NOME AS Paciente, OPERADORES.NOME AS Operador, H' +
        'ISTORICOPACIENTE.ID_HISTORICOPACIENTE, '
      
        'HISTORICOPACIENTE.ID_PACIENTE, HISTORICOPACIENTE.DESCRICAO, HIST' +
        'ORICOPACIENTE.DATA, HISTORICOPACIENTE.TIPO, '
      'HISTORICOPACIENTE.ID_OPERADOR FROM HISTORICOPACIENTE '
      
        'INNER JOIN PACIENTE ON HISTORICOPACIENTE.ID_PACIENTE = PACIENTE.' +
        'ID_PACIENTE '
      
        'INNER JOIN OPERADORES ON HISTORICOPACIENTE.ID_OPERADOR = OPERADO' +
        'RES.ID_OPERADORES')
    Left = 584
    Top = 129
    object qryRelPaciente: TStringField
      FieldName = 'Paciente'
      Size = 255
    end
    object qryRelOperador: TStringField
      FieldName = 'Operador'
      Size = 30
    end
    object qryRelID_HISTORICOPACIENTE: TAutoIncField
      FieldName = 'ID_HISTORICOPACIENTE'
      ReadOnly = True
    end
    object qryRelID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object qryRelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object qryRelDATA: TDateTimeField
      FieldName = 'DATA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryRelTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qryRelID_OPERADOR: TIntegerField
      FieldName = 'ID_OPERADOR'
    end
  end
end
