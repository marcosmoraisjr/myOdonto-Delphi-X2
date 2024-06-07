inherited frmROrcamento: TfrmROrcamento
  Caption = 'frmROrcamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TQuickRep
    Left = 8
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
    ReportTitle = 'Or'#231'amento - Previs'#227'o de Honor'#225'rios'
    ExplicitLeft = 8
    inherited QRBand1: TQRBand
      Top = 37
      Size.Values = (
        306.916666666666700000
        1899.708333333333000000)
      ExplicitTop = 37
      inherited QRSysData1: TQRSysData
        Left = 2
        Top = 86
        Width = 709
        Size.Values = (
          71.437500000000000000
          5.291666666666667000
          227.541666666666700000
          1875.895833333333000000)
        FontSize = 14
        ExplicitLeft = 2
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
      Top = 500
      Size.Values = (
        84.666666666666670000
        1899.708333333333000000)
      ExplicitTop = 500
      inherited QRLabel1: TQRLabel
        Size.Values = (
          44.979166666666670000
          1357.312500000000000000
          15.875000000000000000
          542.395833333333300000)
        FontSize = 10
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
        Size.Values = (
          44.979166666666670000
          889.000000000000000000
          15.875000000000000000
          121.708333333333300000)
        FontSize = 10
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
      Size.Values = (
        -2.645833333333333000
        1899.708333333333000000)
      inherited QRShape1: TQRShape
        Top = 172
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          455.083333333333300000
          1894.416666666667000000)
        ExplicitTop = 172
      end
      inherited QRShape2: TQRShape
        Left = -762
        Frame.Width = -1
        Size.Values = (
          2.645833333333333000
          -2016.125000000000000000
          211.666666666666700000
          1899.708333333333000000)
        ExplicitLeft = -762
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 153
      Width = 718
      Height = 31
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = True
      KeepOnOnePage = False
      Expression = 'qryOrcamento.IDProposta'
      FooterBand = QRBand4
      Master = Relatorio
      ReprintOnNewPage = False
      object QRLabel13: TQRLabel
        Left = 11
        Top = 8
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          21.166666666666670000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Dente'
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
      object QRLabel3: TQRLabel
        Left = 70
        Top = 8
        Width = 143
        Height = 17
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          21.166666666666670000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'd. do Procedimento'
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
        Left = 237
        Top = 8
        Width = 90
        Height = 17
        Size.Values = (
          44.979166666666670000
          627.062500000000000000
          21.166666666666670000
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
        Left = 469
        Top = 8
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          1240.895833333333000000
          21.166666666666670000
          166.687500000000000000)
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
      object QRLabel6: TQRLabel
        Left = 541
        Top = 8
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1431.395833333333000000
          21.166666666666670000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desconto (R$)'
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
        Left = 641
        Top = 8
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1695.979166666667000000
          21.166666666666670000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tipo'
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
      Top = 212
      Width = 718
      Height = 288
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        762.000000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape3: TQRShape
        Left = 398
        Top = -2
        Width = 321
        Height = 8
        Size.Values = (
          21.166666666666670000
          1053.041666666667000000
          -5.291666666666667000
          849.312500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 398
        Top = 12
        Width = 192
        Height = 17
        Size.Values = (
          44.979166666666670000
          1053.041666666667000000
          31.750000000000000000
          508.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total em Procedimentos (R$): '
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
        Left = 433
        Top = 35
        Width = 157
        Height = 17
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          92.604166666666670000
          415.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total de Descontos (R$): '
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
        Left = 478
        Top = 58
        Width = 112
        Height = 17
        Size.Values = (
          44.979166666666670000
          1264.708333333333000000
          153.458333333333300000
          296.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total Geral (R$):  '
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
      object lblTotalProcedimentos: TQRLabel
        Left = 688
        Top = 12
        Width = 26
        Height = 17
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          31.750000000000000000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTotalDescontos: TQRLabel
        Left = 688
        Top = 35
        Width = 26
        Height = 17
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          92.604166666666670000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lblTotalGeral: TQRLabel
        Left = 688
        Top = 58
        Width = 26
        Height = 17
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          153.458333333333300000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 5
        Top = 82
        Width = 162
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          216.958333333333300000
          428.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Condi'#231#227'o de Pagamento:'
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
      object lblCondicaoPagamento: TQRLabel
        Left = 173
        Top = 82
        Width = 536
        Height = 17
        Size.Values = (
          44.979166666666670000
          457.729166666666700000
          216.958333333333300000
          1418.166666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'ijsdoasoijdoisajdioasjiodjaisojdiosajiodjasiodjiasojdoisajiodasj' +
          'iodjasoijdoiasjiodjasiodjsaiojdsa'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object mmoMsgRodape: TQRMemo
        Left = 19
        Top = 113
        Width = 674
        Height = 65
        Size.Values = (
          171.979166666666700000
          50.270833333333330000
          298.979166666666700000
          1783.291666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Lines.Strings = (
          
            'O tratamento odontol'#243'gico '#233' fundamental para se ter e manter uma' +
            ' sa'#250'de geral. Parab'#233'ns por cuidar de sua sa'#250'de. '
          
            '                                                                ' +
            '       Voc'#234' merece esse carinho!')
        Transparent = False
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 19
        Top = 196
        Width = 274
        Height = 17
        Size.Values = (
          44.979166666666670000
          50.270833333333330000
          518.583333333333300000
          724.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ciente e de acordo com o tratamento proposto,'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 11
        Top = 250
        Width = 307
        Height = 1
        Size.Values = (
          2.645833333333333000
          29.104166666666670000
          661.458333333333300000
          812.270833333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lblNomePacienteRodape: TQRLabel
        Left = 11
        Top = 251
        Width = 307
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          664.104166666666700000
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
      object LblCPFRodape: TQRLabel
        Left = 11
        Top = 265
        Width = 307
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          701.145833333333300000
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
      object QRShape10: TQRShape
        Left = 400
        Top = 250
        Width = 307
        Height = 1
        Size.Values = (
          2.645833333333333000
          1058.333333333333000000
          661.458333333333300000
          812.270833333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lblNomeMedicoRodape: TQRLabel
        Left = 400
        Top = 251
        Width = 307
        Height = 17
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          664.104166666666700000
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
      object lblCRORodape: TQRLabel
        Left = 400
        Top = 265
        Width = 307
        Height = 17
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          701.145833333333300000
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
    object QRBand5: TQRBand
      Left = 38
      Top = 184
      Width = 718
      Height = 28
      AlignToBottom = False
      BeforePrint = QRBand5BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object d2: TQRDBText
        Left = 11
        Top = 6
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          15.875000000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'Dente'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 70
        Top = 6
        Width = 143
        Height = 17
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          15.875000000000000000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'CodProcedimento'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 237
        Top = 6
        Width = 207
        Height = 17
        Size.Values = (
          44.979166666666670000
          627.062500000000000000
          15.875000000000000000
          547.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'DescricaoProcedimento'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 450
        Top = 6
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1190.625000000000000000
          15.875000000000000000
          216.958333333333300000)
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
        Left = 546
        Top = 6
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          15.875000000000000000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'ValorDesconto'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 641
        Top = 6
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          1695.979166666667000000
          15.875000000000000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = qryOrcamento
        DataField = 'Tipo'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
  end
  inherited qryRel: TADOQuery
    Active = True
    SQL.Strings = (
      
        '    SELECT ITENSPROPOSTATRATAMENTO.ID_ITENSPROPOSTATRATAMENTO, I' +
        'D_PROPOSTATRATAMENTO, PROCEDIMENTOS.VALOR, ITENSPROPOSTATRATAMEN' +
        'TO.ValorAcrescimo, ITENSPROPOSTATRATAMENTO.ValorDesconto, '
      
        '    ITENSPROPOSTATRATAMENTO.Faturado, ITENSPROPOSTATRATAMENTO.SE' +
        'LECIONADO, PROCEDIMENTOSDENTES.DENTE, PROCEDIMENTOSDENTES.PARTIC' +
        'ULAR_CONVENIO, '
      
        '    ITENSPROPOSTATRATAMENTO.ID_PROCEDIMENTOSDENTES, PROCEDIMENTO' +
        'S.DESCRICAO, PROCEDIMENTOS.CODPROCEDIMENTO FROM  ITENSPROPOSTATR' +
        'ATAMENTO '
      
        '    INNER JOIN PROCEDIMENTOSDENTES ON ITENSPROPOSTATRATAMENTO.ID' +
        '_PROCEDIMENTOSDENTES = PROCEDIMENTOSDENTES.ID_PROCEDIMENTOSDENTE' +
        'S '
      
        '    INNER JOIN PROCEDIMENTOS ON PROCEDIMENTOSDENTES.ID_PROCEDIME' +
        'NTOS = PROCEDIMENTOS.ID_PROCEDIMENTOS')
    object qryRelID_ITENSPROPOSTATRATAMENTO: TAutoIncField
      FieldName = 'ID_ITENSPROPOSTATRATAMENTO'
      ReadOnly = True
    end
    object qryRelID_PROPOSTATRATAMENTO: TIntegerField
      FieldName = 'ID_PROPOSTATRATAMENTO'
    end
    object qryRelVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '##,##0.00'
    end
    object qryRelValorAcrescimo: TFloatField
      FieldName = 'ValorAcrescimo'
      DisplayFormat = '##,##0.00'
    end
    object qryRelValorDesconto: TFloatField
      FieldName = 'ValorDesconto'
      DisplayFormat = '##,##0.00'
    end
    object qryRelFaturado: TBooleanField
      FieldName = 'Faturado'
    end
    object qryRelSELECIONADO: TBooleanField
      FieldName = 'SELECIONADO'
    end
    object qryRelDENTE: TIntegerField
      FieldName = 'DENTE'
    end
    object qryRelPARTICULAR_CONVENIO: TIntegerField
      FieldName = 'PARTICULAR_CONVENIO'
    end
    object qryRelID_PROCEDIMENTOSDENTES: TIntegerField
      FieldName = 'ID_PROCEDIMENTOSDENTES'
    end
    object qryRelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object qryRelCODPROCEDIMENTO: TStringField
      FieldName = 'CODPROCEDIMENTO'
      Size = 100
    end
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
      'NEW adInteger Dente,'
      'NEW AdBoolean Selecionado,'
      'NEW AdVarChar(60) CodProcedimento,'
      'NEW AdVarChar(60) DescricaoProcedimento,'
      'NEW AdDouble ValorTabela,'
      'NEW AdDouble ValorAcrescimo,'
      'NEW AdDouble ValorDesconto,'
      'NEW AdBoolean Faturado,'
      'NEW AdVarChar(16) Tipo,'
      'NEW adInteger IDProposta')
    Left = 584
    Top = 272
    object qryOrcamentoIDProcedimento: TIntegerField
      FieldName = 'IDProcedimento'
    end
    object qryOrcamentoSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object qryOrcamentoCodProcedimento: TStringField
      FieldName = 'CodProcedimento'
      Size = 60
    end
    object qryOrcamentoDescricaoProcedimento: TStringField
      FieldName = 'DescricaoProcedimento'
      Size = 60
    end
    object qryOrcamentoValorTabela: TFloatField
      FieldName = 'ValorTabela'
      DisplayFormat = '#,###,##0.00'
    end
    object qryOrcamentoValorAcrescimo: TFloatField
      FieldName = 'ValorAcrescimo'
      DisplayFormat = '#,###,##0.00'
    end
    object qryOrcamentoValorDesconto: TFloatField
      FieldName = 'ValorDesconto'
      DisplayFormat = '#,###,##0.00'
    end
    object qryOrcamentoFaturado: TBooleanField
      FieldName = 'Faturado'
    end
    object qryOrcamentoDente: TIntegerField
      FieldName = 'Dente'
    end
    object qryOrcamentoIDProposta: TIntegerField
      FieldName = 'IDProposta'
    end
    object qryOrcamentoTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
  end
end
