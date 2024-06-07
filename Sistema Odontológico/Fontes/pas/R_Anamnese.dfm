inherited frmRelAnamnese: TfrmRelAnamnese
  Caption = 'frmRelAnamnese'
  ClientWidth = 1092
  ExplicitLeft = -272
  ExplicitTop = -260
  ExplicitWidth = 1108
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TQuickRep
    Width = 1032
    Height = 1459
    DataSet = qryRelAnamnse
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1'
      '')
    Functions.DATA = (
      '0'
      '0'
      #39#39
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
    ReportTitle = 'Anamnese'
    Zoom = 130
    ExplicitWidth = 1032
    ExplicitHeight = 1459
    inherited QRBand1: TQRBand
      Left = 49
      Top = 49
      Width = 934
      Height = 140
      Size.Values = (
        284.935897435897400000
        1900.929487179487000000)
      ExplicitLeft = 49
      ExplicitTop = 49
      ExplicitWidth = 934
      ExplicitHeight = 140
      inherited QRSysData1: TQRSysData
        Left = 7
        Top = 108
        Width = 922
        Height = 30
        Size.Values = (
          60.854166666666670000
          13.229166666666670000
          219.604166666666700000
          1875.895833333333000000)
        FontSize = 14
        ExplicitLeft = 7
        ExplicitTop = 108
        ExplicitWidth = 922
        ExplicitHeight = 30
      end
      inherited LogoEmpresa: TQRImage
        Left = 14
        Width = 138
        Height = 92
        Size.Values = (
          187.854166666666700000
          29.104166666666670000
          10.583333333333330000
          280.458333333333300000)
        ExplicitLeft = 14
        ExplicitWidth = 138
        ExplicitHeight = 92
      end
      inherited QRShape12: TQRShape
        Left = 3
        Top = 103
        Width = 933
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          209.020833333333300000
          1899.708333333333000000)
        ExplicitLeft = 3
        ExplicitTop = 103
        ExplicitWidth = 933
      end
      inherited QRShape5: TQRShape
        Left = 3
        Width = 933
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          0.000000000000000000
          1899.708333333333000000)
        ExplicitLeft = 3
        ExplicitWidth = 933
      end
      inherited mmoCabeçalho: TQRMemo
        Left = 156
        Width = 771
        Height = 92
        Size.Values = (
          187.854166666666700000
          317.500000000000000000
          10.583333333333330000
          1568.979166666667000000)
        FontSize = 10
        ExplicitLeft = 156
        ExplicitWidth = 771
        ExplicitHeight = 92
      end
    end
    inherited QRBand3: TQRBand
      Left = 49
      Top = 602
      Width = 934
      Height = 42
      Size.Values = (
        85.480769230769230000
        1900.929487179487000000)
      ExplicitLeft = 49
      ExplicitTop = 602
      ExplicitWidth = 934
      ExplicitHeight = 42
      inherited QRLabel1: TQRLabel
        Left = 667
        Top = 8
        Width = 267
        Height = 22
        Size.Values = (
          44.775641025641030000
          1357.516025641026000000
          16.282051282051280000
          543.413461538461500000)
        FontSize = 10
        ExplicitLeft = 667
        ExplicitTop = 8
        ExplicitWidth = 267
        ExplicitHeight = 22
      end
      inherited QRSysData3: TQRSysData
        Left = 99
        Top = 8
        Width = 155
        Height = 22
        Size.Values = (
          44.775641025641030000
          201.490384615384600000
          16.282051282051280000
          315.464743589743600000)
        FontSize = 10
        ExplicitLeft = 99
        ExplicitTop = 8
        ExplicitWidth = 155
        ExplicitHeight = 22
      end
      inherited QRSysData2: TQRSysData
        Left = 462
        Top = 8
        Width = 10
        Height = 22
        Size.Values = (
          44.775641025641030000
          940.288461538461500000
          16.282051282051280000
          20.352564102564100000)
        FontSize = 10
        ExplicitLeft = 462
        ExplicitTop = 8
        ExplicitWidth = 10
        ExplicitHeight = 22
      end
      inherited QRLabel2: TQRLabel
        Left = 6
        Top = 8
        Width = 85
        Height = 22
        Size.Values = (
          44.775641025641030000
          12.211538461538460000
          16.282051282051280000
          172.996794871794900000)
        FontSize = 10
        ExplicitLeft = 6
        ExplicitTop = 8
        ExplicitWidth = 85
        ExplicitHeight = 22
      end
    end
    inherited QRBand2: TQRBand
      Left = 49
      Top = 49
      Width = 934
      Size.Values = (
        0.000000000000000000
        1900.929487179487000000)
      ExplicitLeft = 49
      ExplicitTop = 49
      ExplicitWidth = 934
      inherited QRShape1: TQRShape
        Width = 931
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1894.416666666667000000)
        ExplicitWidth = 931
      end
      inherited QRShape2: TQRShape
        Top = 104
        Width = 933
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
        ExplicitTop = 104
        ExplicitWidth = 933
      end
    end
    object QRGroup1: TQRGroup
      Left = 49
      Top = 318
      Width = 934
      Height = 42
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        85.480769230769230000
        1900.929487179487000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'qryRelAnamnse.ID_PACIENETEANAMNESE'
      FooterBand = QRBand5
      Master = Relatorio
      ReprintOnNewPage = True
      object QRShape11: TQRShape
        Left = 827
        Top = -1
        Width = 106
        Height = 43
        Size.Values = (
          87.516025641025640000
          1683.157051282051000000
          -2.035256410256410000
          215.737179487179500000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 14
        Top = 10
        Width = 77
        Height = 22
        Size.Values = (
          44.775641025641030000
          28.493589743589740000
          20.352564102564100000
          156.714743589743600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pergunta'
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
      object QRShape3: TQRShape
        Left = 616
        Top = -1
        Width = 107
        Height = 43
        Size.Values = (
          87.312500000000000000
          1254.125000000000000000
          -2.645833333333333000
          216.958333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 640
        Top = 8
        Width = 56
        Height = 22
        Size.Values = (
          44.775641025641030000
          1302.564102564103000000
          16.282051282051280000
          113.974358974359000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Afirmo'
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
      object QRShape4: TQRShape
        Left = 722
        Top = -1
        Width = 107
        Height = 43
        Size.Values = (
          87.312500000000000000
          1468.437500000000000000
          -2.645833333333333000
          216.958333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 751
        Top = 8
        Width = 44
        Height = 22
        Size.Values = (
          44.775641025641030000
          1528.477564102564000000
          16.282051282051280000
          89.551282051282050000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nego'
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
        Left = 850
        Top = 8
        Width = 66
        Height = 22
        Size.Values = (
          44.775641025641030000
          1729.967948717949000000
          16.282051282051280000
          134.326923076923100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#227'o Sei'
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
    object ChildBand1: TQRChildBand
      Left = 49
      Top = 189
      Width = 934
      Height = 129
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        262.548076923076900000
        1900.929487179487000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand1
      PrintOrder = cboAfterParent
      object QRLabel3: TQRLabel
        Left = 35
        Top = 8
        Width = 55
        Height = 22
        Size.Values = (
          44.775641025641030000
          71.233974358974360000
          16.282051282051280000
          111.939102564102600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome:'
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
        Left = 6
        Top = 34
        Width = 83
        Height = 22
        Size.Values = (
          44.775641025641030000
          12.211538461538460000
          69.198717948717950000
          168.926282051282100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'End. Res.:'
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
        Left = 644
        Top = 8
        Width = 78
        Height = 22
        Size.Values = (
          44.775641025641030000
          1310.705128205128000000
          16.282051282051280000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Dt. Nasc.:'
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
        Left = 664
        Top = 34
        Width = 57
        Height = 22
        Size.Values = (
          44.775641025641030000
          1351.410256410256000000
          69.198717948717950000
          116.009615384615400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Bairro:'
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
        Left = 25
        Top = 58
        Width = 65
        Height = 22
        Size.Values = (
          44.775641025641030000
          50.881410256410260000
          118.044871794871800000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade:'
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
        Left = 681
        Top = 58
        Width = 40
        Height = 22
        Size.Values = (
          44.775641025641030000
          1386.009615384615000000
          118.044871794871800000
          81.410256410256410000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP:'
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
        Left = 6
        Top = 82
        Width = 83
        Height = 22
        Size.Values = (
          44.775641025641030000
          12.211538461538460000
          166.891025641025600000
          168.926282051282100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tel. Resi.:'
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
        Left = 655
        Top = 82
        Width = 66
        Height = 22
        Size.Values = (
          44.775641025641030000
          1333.092948717949000000
          166.891025641025600000
          134.326923076923100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Celular:'
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
        Left = 49
        Top = 104
        Width = 40
        Height = 22
        Size.Values = (
          44.775641025641030000
          99.727564102564100000
          211.666666666666700000
          81.410256410256410000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CPF:'
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
      object QRLabel12: TQRLabel
        Left = 690
        Top = 104
        Width = 31
        Height = 22
        Size.Values = (
          44.775641025641030000
          1404.326923076923000000
          211.666666666666700000
          63.092948717948720000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'RG:'
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
      object lblNomePaciente: TQRLabel
        Left = 98
        Top = 8
        Width = 129
        Height = 22
        Size.Values = (
          44.775641025641030000
          199.455128205128200000
          16.282051282051280000
          262.548076923076900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblNomePaciente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblEndereco: TQRLabel
        Left = 98
        Top = 34
        Width = 90
        Height = 22
        Size.Values = (
          44.775641025641030000
          199.455128205128200000
          69.198717948717950000
          183.173076923076900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblEndere'#231'o'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCidadePaciente: TQRLabel
        Left = 98
        Top = 58
        Width = 70
        Height = 22
        Size.Values = (
          44.775641025641030000
          199.455128205128200000
          118.044871794871800000
          142.467948717948700000)
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
      object lblTelResiPaciente: TQRLabel
        Left = 98
        Top = 82
        Width = 140
        Height = 22
        Size.Values = (
          44.775641025641030000
          199.455128205128200000
          166.891025641025600000
          284.935897435897400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblTelResiPaciente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCPF: TQRLabel
        Left = 98
        Top = 104
        Width = 52
        Height = 22
        Size.Values = (
          44.775641025641030000
          199.455128205128200000
          211.666666666666700000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblCPF'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblRG: TQRLabel
        Left = 725
        Top = 104
        Width = 43
        Height = 22
        Size.Values = (
          44.775641025641030000
          1475.560897435897000000
          211.666666666666700000
          87.516025641025640000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblRG'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCelular: TQRLabel
        Left = 725
        Top = 82
        Width = 70
        Height = 22
        Size.Values = (
          44.775641025641030000
          1475.560897435897000000
          166.891025641025600000
          142.467948717948700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblCelular'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCEP: TQRLabel
        Left = 725
        Top = 58
        Width = 53
        Height = 22
        Size.Values = (
          44.775641025641030000
          1475.560897435897000000
          118.044871794871800000
          107.868589743589700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblCEP'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblBairro: TQRLabel
        Left = 725
        Top = 34
        Width = 62
        Height = 22
        Size.Values = (
          44.775641025641030000
          1475.560897435897000000
          69.198717948717950000
          126.185897435897400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblBairro'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblDtNasc: TQRLabel
        Left = 725
        Top = 8
        Width = 74
        Height = 22
        Size.Values = (
          44.775641025641030000
          1475.560897435897000000
          16.282051282051280000
          150.608974358974400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lblDtNasc'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 49
      Top = 360
      Width = 934
      Height = 57
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        116.009615384615400000
        1900.929487179487000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 14
        Top = 8
        Width = 69
        Height = 22
        Size.Values = (
          44.775641025641030000
          28.493589743589740000
          16.282051282051280000
          140.432692307692300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRelAnamnse
        DataField = 'Pergunta'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 616
        Top = -1
        Width = 107
        Height = 31
        Size.Values = (
          63.500000000000000000
          1254.125000000000000000
          -2.645833333333333000
          216.958333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 722
        Top = -1
        Width = 107
        Height = 31
        Size.Values = (
          63.500000000000000000
          1468.437500000000000000
          -2.645833333333333000
          216.958333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 828
        Top = -1
        Width = 105
        Height = 31
        Size.Values = (
          63.092948717948720000
          1685.192307692308000000
          -2.035256410256410000
          213.701923076923100000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 131
        Top = 31
        Width = 90
        Height = 22
        Size.Values = (
          44.775641025641030000
          266.618589743589700000
          63.092948717948720000
          183.173076923076900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = qryRelAnamnse
        DataField = 'Observacao'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 14
        Top = 31
        Width = 109
        Height = 22
        Size.Values = (
          44.775641025641030000
          28.493589743589740000
          63.092948717948720000
          221.842948717948700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Observa'#231#227'o: '
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
      object QRDBText3: TQRDBText
        Left = 621
        Top = 4
        Width = 98
        Height = 22
        Size.Values = (
          44.979166666666670000
          1264.708333333333000000
          7.937500000000000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRelAnamnse
        DataField = 'AFIRMO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 728
        Top = 4
        Width = 94
        Height = 22
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          7.937500000000000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRelAnamnse
        DataField = 'NEGO'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 831
        Top = 4
        Width = 96
        Height = 22
        Size.Values = (
          44.775641025641030000
          1691.298076923077000000
          8.141025641025641000
          195.384615384615400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryRelAnamnse
        DataField = 'NAOSEI'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 49
      Top = 417
      Width = 934
      Height = 185
      Frame.DrawTop = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        376.522435897435900000
        1900.929487179487000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel18: TQRLabel
        Left = 7
        Top = 13
        Width = 920
        Height = 22
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          26.458333333333330000
          1873.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 
          'Constitui crime previsto no Art. 299, do c'#243'digo penal brasileiro' +
          ', prestar declara'#231#227'o falsa com fim de criar'
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
        Left = 7
        Top = 34
        Width = 920
        Height = 22
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          68.791666666666670000
          1873.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 
          'obriga'#231#227'o ou alterar a verdade sobre o fato juridicamente releva' +
          'nte.'
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
        Left = 7
        Top = 55
        Width = 920
        Height = 22
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          111.125000000000000000
          1873.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Pena: Reclu'#227'o de um a tr'#234's anos e multa.'
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
      object QRShape9: TQRShape
        Left = 14
        Top = 138
        Width = 399
        Height = 1
        Size.Values = (
          2.645833333333333000
          29.104166666666670000
          280.458333333333300000
          812.270833333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 520
        Top = 138
        Width = 399
        Height = 1
        Size.Values = (
          2.645833333333333000
          1058.333333333333000000
          280.458333333333300000
          812.270833333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lblNomePacienteRodape: TQRLabel
        Left = 14
        Top = 139
        Width = 399
        Height = 22
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          283.104166666666700000
          812.270833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Nome Do Paciente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblNomeMedicoRodape: TQRLabel
        Left = 520
        Top = 139
        Width = 399
        Height = 22
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          283.104166666666700000
          812.270833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Nome Do Medico'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object LblCPFRodape: TQRLabel
        Left = 14
        Top = 159
        Width = 399
        Height = 22
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          322.791666666666700000
          812.270833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CPF:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblCRORodape: TQRLabel
        Left = 520
        Top = 159
        Width = 399
        Height = 22
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          322.791666666666700000
          812.270833333333300000)
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
    end
  end
  inherited qryRel: TADOQuery
    SQL.Strings = ()
    Left = 400
  end
  inherited qryAux: TADOQuery
    Top = 16
  end
  object qryAux2: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 152
    Top = 16
  end
  object qryRelAnamnse: TADOQuery
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source='#39#39 +
      ';Data Provider=NONE'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SHAPE APPEND'
      'NEW AdInteger ID_PACIENETEANAMNESE,'
      'NEW AdVarChar(100) Pergunta,'
      'NEW AdVarChar(1) AFIRMO,'
      'NEW AdVarChar(1) NEGO,'
      'NEW AdVarChar(1) NAOSEI,'
      'NEW AdVarChar(200) Observacao')
    Left = 603
    object qryRelAnamnseID_PACIENETEANAMNESE: TIntegerField
      FieldName = 'ID_PACIENETEANAMNESE'
    end
    object qryRelAnamnsePergunta: TStringField
      FieldName = 'Pergunta'
      Size = 100
    end
    object qryRelAnamnseAFIRMO: TStringField
      FieldName = 'AFIRMO'
      Size = 1
    end
    object qryRelAnamnseNEGO: TStringField
      FieldName = 'NEGO'
      Size = 1
    end
    object qryRelAnamnseNAOSEI: TStringField
      FieldName = 'NAOSEI'
      Size = 1
    end
    object qryRelAnamnseObservacao: TStringField
      FieldName = 'Observacao'
      Size = 200
    end
  end
end
