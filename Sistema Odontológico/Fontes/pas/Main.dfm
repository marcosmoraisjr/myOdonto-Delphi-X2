object frmMain: TfrmMain
  Left = 400
  Top = 104
  Align = alClient
  Caption = 'Odontosis - Sistema de Gest'#227'o Para Cl'#237'nicas Odontol'#243'gicas'
  ClientHeight = 571
  ClientWidth = 1083
  Color = clBtnFace
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 552
    Width = 1083
    Height = 19
    Panels = <
      item
        Text = ' Odontosis - www.odontosis.com.br'
        Width = 250
      end
      item
        Width = 300
      end
      item
        Text = 'Usu'#225'rio: '
        Width = 60
      end
      item
        Text = 'USUARIO'
        Width = 200
      end
      item
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Text = 'Hora'
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 54
    Width = 1083
    Height = 498
    Align = alClient
    TabOrder = 1
    object GroupBox6: TGroupBox
      Left = 734
      Top = 15
      Width = 347
      Height = 481
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object GroupBox4: TGroupBox
        Left = 2
        Top = 18
        Width = 343
        Height = 287
        Align = alTop
        Caption = 'Fila de Encaixe'
        TabOrder = 0
        object JvDBGrid3: TJvDBGrid
          Left = 2
          Top = 18
          Width = 339
          Height = 267
          Align = alClient
          Ctl3D = True
          DataSource = dsEncaixe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImeMode = imClose
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = MenuFilaEncaixe
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDblClick = JvDBGrid3DblClick
          AlternateRowColor = clWindow
          AlternateRowFontColor = clBlack
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 20
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Paciente'
              Width = 202
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Convenio'
              Title.Caption = 'Conv'#234'nio'
              Width = 122
              Visible = True
            end>
        end
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 305
        Width = 343
        Height = 174
        Align = alClient
        Caption = 'Lista de Retorno'
        TabOrder = 1
        object JvDBGrid1: TJvDBGrid
          Left = 2
          Top = 18
          Width = 339
          Height = 154
          Align = alClient
          Ctl3D = True
          DataSource = dsRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImeMode = imClose
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = MenuListaRetorno
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDblClick = MenuItem2Click
          AlternateRowColor = clWindow
          AlternateRowFontColor = clBlack
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 20
          Columns = <
            item
              Expanded = False
              FieldName = 'Paciente'
              Width = 201
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'M'#234's de Retorno'
              Width = 123
              Visible = True
            end>
        end
      end
    end
    object Agenda: TcxScheduler
      Left = 24
      Top = 15
      Width = 710
      Height = 481
      ParentCustomHint = False
      DateNavigator.ShowDatesContainingHolidaysInColor = True
      ViewDay.Active = True
      ViewDay.AlwaysShowEventTime = True
      ViewDay.TimeRulerMinutes = True
      ViewDay.TimeRulerPopupMenu.Items = []
      ViewDay.TimeScale = 10
      ViewDay.WorkTimeOnly = True
      Align = alClient
      ContentPopupMenu.Items = [cpmiToday, cpmiGoToDate, cpmiGoToThisDay]
      ControlBox.Control = gbAgenda
      EventOperations.Creating = False
      EventOperations.Deleting = False
      EventOperations.DialogEditing = False
      EventOperations.DialogShowing = False
      EventOperations.InplaceEditing = False
      EventOperations.Intersection = False
      EventOperations.Recurrence = False
      EventPopupMenu.Items = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      OptionsView.CurrentTimeZoneDaylightSaving = True
      OptionsView.WorkFinish = 0.750000000000000000
      ResourceNavigator.ShowButtons = False
      ShowHint = True
      Storage = AgendaDB
      Styles.Content = stContent
      Styles.ResourceHeader = Resource
      TabOrder = 1
      OnDblClick = AgendaDblClick
      OnEventSelectionChanged = AgendaEventSelectionChanged
      Splitters = {
        360200007E000000C502000083000000310200000100000036020000E0010000}
      StoredClientBounds = {0100000001000000C5020000E0010000}
      object gbAgenda: TGroupBox
        Left = 0
        Top = 0
        Width = 143
        Height = 349
        Align = alClient
        TabOrder = 0
        object btnAgendaDia: TJvXPButton
          Left = 2
          Top = 15
          Width = 139
          Height = 30
          Caption = 'Agenda do Dia'
          TabOrder = 0
          Down = True
          Align = alTop
          Style.Theme = OfficeXP
          OnClick = btnAgendaDiaClick
        end
        object btnAgendaSemana: TJvXPButton
          Left = 2
          Top = 75
          Width = 139
          Height = 30
          Caption = 'Agenda da Semana'
          TabOrder = 1
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          Style.Theme = OfficeXP
          OnClick = btnAgendaSemanaClick
        end
        object btnAgendaMes: TJvXPButton
          Left = 2
          Top = 105
          Width = 139
          Height = 30
          Caption = 'Agenda do M'#234's'
          TabOrder = 2
          Align = alTop
          Style.Theme = OfficeXP
          OnClick = btnAgendaMesClick
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 192
          Width = 139
          Height = 155
          Align = alBottom
          Caption = 'Legenda de Cores'
          TabOrder = 3
          object Label1: TLabel
            Left = 16
            Top = 24
            Width = 72
            Height = 16
            Caption = #9632' Atendido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6610596
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 16
            Top = 41
            Width = 79
            Height = 16
            Caption = #9632' Cancelado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8689404
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 16
            Top = 58
            Width = 77
            Height = 16
            Caption = #9632' Na Espera'
            FocusControl = Agenda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15780774
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 16
            Top = 75
            Width = 86
            Height = 16
            Caption = #9632' Confirmado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14982788
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 16
            Top = 92
            Width = 61
            Height = 16
            Caption = #9632' Encaixe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7661308
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 16
            Top = 109
            Width = 66
            Height = 16
            Caption = #9632' Retorno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16033476
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 16
            Top = 126
            Width = 109
            Height = 16
            Caption = #9632' N'#227'o Comparec.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 35466
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object btnAgendaSemanaTrabalho: TJvXPButton
          Left = 2
          Top = 45
          Width = 139
          Height = 30
          Caption = 'Semana de Trabalho'
          TabOrder = 4
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          Style.Theme = OfficeXP
          OnClick = btnAgendaSemanaTrabalhoClick
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 135
          Width = 139
          Height = 44
          Align = alTop
          Caption = 'Dentistas'
          TabOrder = 5
          object cmbDentistas: TComboBox
            Left = 3
            Top = 18
            Width = 131
            Height = 21
            Style = csDropDownList
            TabOrder = 0
            OnClick = cmbDentistasClick
          end
        end
      end
    end
    object MenuLembretes: TJvRollOut
      Left = 2
      Top = 15
      Width = 22
      Height = 481
      Align = alLeft
      ButtonFont.Charset = DEFAULT_CHARSET
      ButtonFont.Color = clWindowText
      ButtonFont.Height = -15
      ButtonFont.Name = 'Verdana'
      ButtonFont.Style = [fsBold]
      Caption = 'Lembretes'
      Placement = plLeft
      Collapsed = True
      ImageOptions.IndexCollapsed = 20
      ImageOptions.IndexExpanded = 20
      ImageOptions.Images = Image48
      ImageOptions.Offset = -10
      TabOrder = 2
      FAWidth = 209
      FAHeight = 170
      FCWidth = 22
      FCHeight = 22
      object btnAddNovoLembrete: TcxButton
        Left = 21
        Top = 456
        Width = 0
        Height = 24
        Align = alBottom
        Caption = 'Novo Lembrete'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED8DC
          B6BBB0BBBDB3BABCB3B6BAAFEDE6EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF028F17009B1B00A62800A6270098163EA349FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF06A13011C86B12D77712D6770CC6663AAC50FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37BF608CF8CA88F6C688F6
          C688F7C75CBE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF00C54C
          00F07E00EE7F00EE7D00EF7B36BF5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF03C04900E97A00E87A00E77A00E9773ABC5DFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF03BC4500E37000E17000E16F00E26C3ABA5BFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05B74100DD6906DB6A07DB
          6B00DE693EB85DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA7BCA661956268996968986968996968986968986972956D0AB43E
          32E0802DDC792ADB7728E07A1BA13871986E689968689968689A68689A68689A
          685F9660B7C8B6FFFFFFFFFFFF0E8F27009527009E3100A43700A83A00AA3C00
          AB3E00A63B01C34F3ADA7A33D87631D77435DA7700B54600A83C00AB3E00AA3D
          00A73B00A337009D310093252D9E3EFFFFFFFFFFFF1C9D380AB7510DBD580DC4
          5F0DC8630DCB650CCC670ACA652ACF6B41D6773CD5753BD4743CD47219CB6508
          CA630ACB6409CA6209C65E09C15A09BB5301B34937A74AFFFFFFFFFFFF37A33F
          88D89282D68E80D8907ED9917CDA937CDC947BDD9749D17447D27545D27444D2
          733FD06E6CDA8D6FD98D6DD7896CD5856AD28069D07B68CD775BC96836A43DFF
          FFFFFFFFFF279A305DC86B57C66955C86B53C96D51CB6E50CD6F4ECD7152D075
          51D0754FD0754DCF734CCE7143CB6A40C9653EC7603CC45C3AC15639BE5137BB
          4A35B84439A240FFFFFFFFFFFF14911C79CF7F78D08277D28475D38575D48773
          D58874D78A6CD68659CE7658CE7656CE7452CC7073D98C69D38167D27E66CF7A
          65CD7664CA7264C86F4FBF572A9B30FFFFFFFFFFFFDDEBDF92C59798C89C98C7
          9C98C79D98C79D99C89DA3C8A606951E6CD38161CD7760CC7663D1791B922CA6
          CDA89AC99E9AC99D9ACA9E9ACB9E9ACB9E95C998EAF3EAFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14952574D1826ACD7969CB
          7869CE793E9D4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF139121
          7ED28674CB7D72CC7B74CF7C3B9945FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF148C1D88D28B7DCC807BCB7E7ECF803B9643FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF15891C92D49186CD8684CD8488D1873B9342FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF15881C9CD99C8FD18F8DD1
          8D92D692399141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF188621
          9DD99D95D39594D29492D49144964DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDBE6DEA4C7ABA8CAAFA8CAAFA2C7AAEEF2EFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.AllowAllUp = True
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAddNovoLembreteClick
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1083
    Height = 54
    ParentCustomHint = False
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 50
        Width = 1077
      end>
    Color = clWhite
    ParentColor = False
    object ToolBar1: TToolBar
      Left = 11
      Top = 0
      Width = 1068
      Height = 50
      ButtonHeight = 54
      ButtonWidth = 55
      Caption = 'ToolBar1'
      Color = clGray
      DisabledImages = Image48
      Images = Image48
      ParentColor = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      object btnPaciente: TToolButton
        Left = 0
        Top = 0
        Hint = 'Lista de Pacientes'
        Caption = 'Lista de Pacientes'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = btnPacienteClick
      end
      object btnConvenios: TToolButton
        Left = 55
        Top = 0
        Hint = 'Lista de Convenios'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = btnConveniosClick
      end
      object cbListaDentistas: TToolButton
        Left = 110
        Top = 0
        Hint = 'Lista de Dentistas'
        Caption = 'Lista de Dentistas'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = cbListaDentistasClick
      end
      object btnPlanoTratamento: TToolButton
        Left = 165
        Top = 0
        Hint = 'Plano de Tratamento'
        Caption = 'Plano de Tratamento'
        ImageIndex = 12
        ParentShowHint = False
        ShowHint = True
        OnClick = FPlanodeTratamento1Click
      end
      object btnProcedimento: TToolButton
        Left = 220
        Top = 0
        Hint = 'Procedimentos'
        Caption = 'btnProcedimento'
        ImageIndex = 10
        ParentShowHint = False
        ShowHint = True
        OnClick = Procedimentos1Click
      end
      object ToolButton1: TToolButton
        Left = 275
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnCaixa: TToolButton
        Left = 283
        Top = 0
        Hint = 'Confer'#234'ncia de Lan'#231'amentos'
        ImageIndex = 6
        ParentShowHint = False
        ShowHint = True
        OnClick = CConfernciadeLanamentos1Click
      end
      object btnContasReceber: TToolButton
        Left = 338
        Top = 0
        Hint = 'T'#237'tulos a Receber'
        ImageIndex = 5
        ParentShowHint = False
        ShowHint = True
        OnClick = HTtulosaReceber1Click
      end
      object BtnContasPagar: TToolButton
        Left = 393
        Top = 0
        Hint = 'T'#237'tulos a Pagar'
        Caption = 'BtnContasPagar'
        ImageIndex = 17
        ParentShowHint = False
        ShowHint = True
        OnClick = GTtulosaPagar1Click
      end
      object ToolButton4: TToolButton
        Left = 448
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object btnReceituario: TToolButton
        Left = 456
        Top = 0
        Hint = 'Receitu'#225'rio'
        ImageIndex = 19
        ParentShowHint = False
        ShowHint = True
        OnClick = AReceiturio1Click
      end
      object btnAtestado: TToolButton
        Left = 511
        Top = 0
        Hint = 'Atestados'
        ImageIndex = 16
        ParentShowHint = False
        ShowHint = True
        OnClick = BAtestado1Click
      end
      object BtnTermoCon: TToolButton
        Left = 566
        Top = 0
        Hint = 'Termo de Consentimento'
        Caption = 'BtnTermoCon'
        ImageIndex = 15
        ParentShowHint = False
        ShowHint = True
        OnClick = CTermodeConsentimento1Click
      end
      object ToolButton3: TToolButton
        Left = 621
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object BtnRelatorios: TToolButton
        Left = 629
        Top = 0
        Hint = 'Relat'#243'rios'
        ImageIndex = 4
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnRelatoriosClick
      end
      object ToolButton2: TToolButton
        Left = 684
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object btnAgendaTelefone: TToolButton
        Left = 692
        Top = 0
        Hint = 'Agenda de Telefones'
        Caption = 'Agenda de Telefones'
        ImageIndex = 18
        ParentShowHint = False
        ShowHint = True
        OnClick = AgendaTelefnica1Click
      end
      object ToolButton6: TToolButton
        Left = 747
        Top = 0
        Hint = 'Configura'#231#245'es do Sistema'
        Caption = 'btnConfiguracoes'
        ImageIndex = 9
        ParentShowHint = False
        ShowHint = True
        OnClick = Configuraes1Click
      end
      object ToolButton5: TToolButton
        Left = 802
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object btnSair: TToolButton
        Left = 810
        Top = 0
        Hint = 'Sair do Sistema'
        Caption = 'Sair do Sistema'
        ImageIndex = 7
        ParentShowHint = False
        ShowHint = True
        OnClick = btnSairClick
      end
    end
  end
  object Menu: TMainMenu
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 856
    Top = 265
    object Cadastro1: TMenuItem
      Caption = '&1 - Cadastro'
      object Este1: TMenuItem
        Caption = '&A - Pacientes'
        ShortCut = 112
        OnClick = Este1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Convnios1: TMenuItem
        Caption = '&B - Conv'#234'nios'
        ShortCut = 114
        OnClick = Convnios1Click
      end
      object Mdicos1: TMenuItem
        Caption = '&C - Dentistas'
        ShortCut = 115
        OnClick = Mdicos1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Procedimentos1: TMenuItem
        Caption = '&D - Procedimentos'
        ShortCut = 117
        OnClick = Procedimentos1Click
      end
      object FPlanodeTratamento1: TMenuItem
        Caption = '&E - Plano de Tratamento'
        ShortCut = 116
        OnClick = FPlanodeTratamento1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object FProdutosMateriais1: TMenuItem
        Caption = '&F - Estoque'
        OnClick = FProdutosMateriais1Click
      end
      object FFornecedores1: TMenuItem
        Caption = '&G - Fornecedores'
        OnClick = FFornecedores1Click
      end
      object GBancos1: TMenuItem
        Caption = '&H - Bancos'
        object ABancosPadro1: TMenuItem
          Caption = '&A - Bancos Padr'#227'o'
          OnClick = ABancosPadro1Click
        end
        object BContasBancrias1: TMenuItem
          Caption = '&B - Contas Banc'#225'rias'
          OnClick = BContasBancrias1Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Cidade1: TMenuItem
        Caption = '&I - Cidades'
        OnClick = Cidade1Click
      end
    end
    object Financeiro1: TMenuItem
      Caption = '&2 - Financeiro'
      object mUsarCaixa: TMenuItem
        Caption = '&A - Caixas Dispon'#237'veis'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object BLanamentoCaixa1: TMenuItem
        Caption = '&B - Lan'#231'amento Caixa'
        OnClick = BLanamentoCaixa1Click
      end
      object CConfernciadeLanamentos1: TMenuItem
        Caption = 'C - Confer'#234'ncia dos Lan'#231'amentos'
        OnClick = CConfernciadeLanamentos1Click
      end
      object SaquedeValores1: TMenuItem
        Caption = '&D - Saque de Valores'
        OnClick = SaquedeValores1Click
      end
      object CReforoCaixa1: TMenuItem
        Caption = '&E - Refor'#231'o Caixa'
        OnClick = CReforoCaixa1Click
      end
      object DFechamentoCaixa1: TMenuItem
        Caption = '&F - Fechamento Caixa'
        OnClick = DFechamentoCaixa1Click
      end
      object GRelatrioCaixaGeral1: TMenuItem
        Caption = '&G - Relat'#243'rio Caixa Geral'
        OnClick = GRelatrioCaixaGeral1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object GTtulosaPagar1: TMenuItem
        Caption = '&H - T'#237'tulos a Pagar'
        OnClick = GTtulosaPagar1Click
      end
      object HTtulosaReceber1: TMenuItem
        Caption = '&I - T'#237'tulos a Receber'
        object AParticular1: TMenuItem
          Caption = '&A - Particular'
          OnClick = HTtulosaReceber1Click
        end
        object BConvnio1: TMenuItem
          Caption = '&B- Conv'#234'nio'
          OnClick = BConvnio1Click
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object JCheques1: TMenuItem
        Caption = '&J - Cheques'
        object AChequesRecebidos1: TMenuItem
          Caption = '&A - Cheques Recebidos'
          OnClick = AChequesRecebidos1Click
        end
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object HContasBancrias1: TMenuItem
        Caption = '&H - Contas Banc'#225'rias'
        object AConfernciadeLanamentos1: TMenuItem
          Caption = '&A - Confer'#234'ncia de Lan'#231'amentos'
          OnClick = AConfernciadeLanamentos1Click
        end
        object BTransfernciadeSaldos1: TMenuItem
          Caption = '&B - Transfer'#234'ncia de Saldos'
          OnClick = BTransfernciadeSaldos1Click
        end
      end
    end
    object Documentos1: TMenuItem
      Caption = '&3 - Documentos'
      object AReceiturio1: TMenuItem
        Caption = '&A - Receitu'#225'rio'
        OnClick = AReceiturio1Click
      end
      object BAtestado1: TMenuItem
        Caption = '&B - Atestado'
        OnClick = BAtestado1Click
      end
      object CTermodeConsentimento1: TMenuItem
        Caption = '&C - Termo de Consentimento'
        OnClick = CTermodeConsentimento1Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object DDocumentosPersonalizados1: TMenuItem
        Caption = '&D - Documentos Personalizados'
        object AListadeDocumentosPersonalizados1: TMenuItem
          Caption = '&A - Lista de Documentos Personalizados'
          OnClick = AListadeDocumentosPersonalizados1Click
        end
        object BListadeDocumentosEmitidos1: TMenuItem
          Caption = '&B - Lista de Documentos Emitidos'
          OnClick = BListadeDocumentosEmitidos1Click
        end
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&4 - Relat'#243'rios'
      OnClick = Relatrios1Click
    end
    object Utilitrios1: TMenuItem
      Caption = '&5 - Utilitarios'
      object Configuraes1: TMenuItem
        Caption = '&A - Configura'#231#245'es'
        OnClick = Configuraes1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object AgendaTelefnica1: TMenuItem
        Caption = '&B - Agenda Telef'#244'nica'
        OnClick = AgendaTelefnica1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Operadores1: TMenuItem
        Caption = '&C - Operadores'
        ShortCut = 122
        OnClick = Operadores1Click
      end
      object DConsultrios1: TMenuItem
        Caption = '&D - Consult'#243'rios'
        OnClick = DConsultrios1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object FBancodeDados1: TMenuItem
        Caption = '&F - Banco de Dados'
        object ACpiadeSegurana1: TMenuItem
          Caption = '&A - C'#243'pia de Seguran'#231'a'
          OnClick = ACpiadeSegurana1Click
        end
        object BRestaurarCpiadeSegurana1: TMenuItem
          Caption = '&B - Restaurar C'#243'pia de Seguran'#231'a'
          OnClick = BRestaurarCpiadeSegurana1Click
        end
      end
    end
    object Ajuda1: TMenuItem
      Caption = '&6 - Ajuda'
      object ASobreaOdontosis1: TMenuItem
        Caption = '&A - Sobre a Odontosis'
        OnClick = ASobreaOdontosis1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object BCorreeseMelhoriasOdontosisnaWeb1: TMenuItem
        Caption = '&B - Corre'#231#245'es e Melhorias (Odontosis na Web)'
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object CAdicionarchavedeacesso1: TMenuItem
        Caption = '&C - Adicionar chave de acesso'
        OnClick = CAdicionarchavedeacesso1Click
      end
    end
    object Sair1: TMenuItem
      Caption = '&7 - Sair'
      OnClick = Sair1Click
    end
  end
  object CorMenu: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clHighlight
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = False
    OverrideOwnerDraw = True
    Gradient = True
    FlatMenu = False
    AutoDetect = False
    XPControls = [xcMainMenu, xcPopupMenu]
    Active = True
    Left = 856
    Top = 160
  end
  object dsAgenda: TDataSource
    DataSet = qryAgenda
    Left = 704
    Top = 168
  end
  object Enter: TJvEnterAsTab
    EnterAsTab = False
    Left = 800
    Top = 256
  end
  object qryAux: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ID_OP, DTDEMO, DTULOGIN, DTVENCIMENTO, CCOD, CCCOD, SERIA' +
        'LHD, DEMO from OPINT')
    Left = 835
    Top = 150
  end
  object qryEncaixe: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID_ENCAIXE, ENCAIXE.ID_PACIENTE, ENCAIXE.ID_CONVENIO, ENC' +
        'AIXE.ID_MEDICO, '
      
        'ENCAIXE.DATA, ENCAIXE.OBSERVACAO, PACIENTE.NOME, Convenios.Nome ' +
        'as Convenio,'
      ' PACIENTE.TELEFONE, PACIENTE.CELULAR FROM ENCAIXE'
      'LEFT JOIN PACIENTE ON PACIENTE.ID_PACIENTE = ENCAIXE.ID_PACIENTE'
      
        'Left JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = ENCAIXE.ID_CONVEN' +
        'IO')
    Left = 856
    Top = 128
    object qryEncaixeID_ENCAIXE: TAutoIncField
      FieldName = 'ID_ENCAIXE'
      ReadOnly = True
    end
    object qryEncaixeID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object qryEncaixeID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object qryEncaixeID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object qryEncaixeDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qryEncaixeOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryEncaixeNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryEncaixeConvenio: TStringField
      FieldName = 'Convenio'
      Size = 255
    end
    object qryEncaixeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 255
    end
    object qryEncaixeCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 255
    end
  end
  object dsEncaixe: TDataSource
    DataSet = qryEncaixe
    Left = 744
    Top = 232
  end
  object qryAgenda: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     AGENDA.ID_PACIENTE, AGENDA.ID_MEDICO, AGENDA.ID_AGEND' +
        'A, AGENDA.INICIO, AGENDA.FIM, AGENDA.OPCAO, '
      
        '                      AGENDA.TIPOEVENTO, AGENDA.STATUS, AGENDA.C' +
        'ORLABEL, AGENDA.TIPO, AGENDA.VALOR, AGENDA.SERVICO, AGENDA.FATUR' +
        'ADO, '
      '                      AGENDA.OBSERVACAO, NOME from AGENDA'
      'LEFT JOIN PACIENTE ON PACIENTE.ID_PACIENTE = AGENDA.ID_PACIENTE')
    Left = 768
    Top = 168
    object qryAgendaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object qryAgendaID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object qryAgendaID_AGENDA: TAutoIncField
      FieldName = 'ID_AGENDA'
      ReadOnly = True
    end
    object qryAgendaINICIO: TDateTimeField
      FieldName = 'INICIO'
    end
    object qryAgendaFIM: TDateTimeField
      FieldName = 'FIM'
    end
    object qryAgendaOPCAO: TIntegerField
      FieldName = 'OPCAO'
    end
    object qryAgendaTIPOEVENTO: TIntegerField
      FieldName = 'TIPOEVENTO'
    end
    object qryAgendaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object qryAgendaCORLABEL: TStringField
      FieldName = 'CORLABEL'
    end
    object qryAgendaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qryAgendaSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 200
    end
    object qryAgendaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryAgendaNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
  end
  object Tradutor: TcxLocalizer
    Left = 544
    Top = 104
  end
  object Feriados: TcxSchedulerHolidays
    Locations = <>
    Left = 448
    Top = 88
  end
  object AgendaDB: TcxSchedulerDBStorage
    Reminders.Active = False
    Resources.Items = <>
    Resources.DataSource = dsMedico
    Resources.ResourceID = 'ID_MEDICO'
    Resources.ResourceName = 'NOME'
    CustomFields = <>
    DataSource = dsAgenda
    FieldNames.Caption = 'NOME'
    FieldNames.EventType = 'TIPOEVENTO'
    FieldNames.Finish = 'FIM'
    FieldNames.ID = 'ID_AGENDA'
    FieldNames.LabelColor = 'CORLABEL'
    FieldNames.Message = 'OBSERVACAO'
    FieldNames.Options = 'OPCAO'
    FieldNames.ResourceID = 'ID_MEDICO'
    FieldNames.Start = 'INICIO'
    Left = 408
    Top = 96
  end
  object dsMedico: TDataSource
    DataSet = qryMedico
    Left = 912
    Top = 128
  end
  object qryMedico: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID_MEDICO, NOME FROM MEDICOS'
      'WHERE ATIVO = 1')
    Left = 968
    Top = 168
    object qryMedicoID_MEDICO: TAutoIncField
      FieldName = 'ID_MEDICO'
      ReadOnly = True
    end
    object qryMedicoNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
  end
  object TimerAgenda: TTimer
    Interval = 5000
    OnTimer = TimerAgendaTimer
    Left = 384
    Top = 136
  end
  object lfController: TcxLookAndFeelController
    Kind = lfOffice11
    NativeStyle = True
    Left = 440
    Top = 152
  end
  object EstiloAgenda: TcxStyleRepository
    Left = 512
    Top = 152
    PixelsPerInch = 96
    object Resource: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object stContent: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15920618
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle1: TcxStyle
    end
  end
  object Image48: TImageList
    ColorDepth = cd32Bit
    Height = 48
    Width = 48
    Left = 392
    Top = 112
    Bitmap = {
      494C010115003800EC0330003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000002001000001002000000000000060
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002000000080000000E0000001100000012000000120000
      0012000000120000001200000012000000120000001200000012000000120000
      0012000000120000001200000012000000110000000F00000008000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000008000000220000003F0000004B0000004C0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C0000004B0000004000000023000000090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000110104045F102B30B3123137BF123138C0123138C01231
      38C0123138C0123138C0123138C0102B31C009191CC00B1D21C00D242AC00F2A
      30C0112E34C0123037C0123138C0123137BF102B31B402050665000000130000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000150814178A44C3DFFF44C3DFFF44C3DFFF44C3DFFF44C3
      DFFF44C3DFFF44C3DFFF44C3DFFF44C1DEFF3DADC7FF2C7C8FFF256978FF2C7E
      91FF3599AFFF3CACC5FF41B9D4FF43C0DCFF44C2DFFF091A1E94000000170000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160814178B46C4E0FF46C2DEFE46C2DEFE46C4E0FF46C2
      DEFE46C2DEFE46C4E0FF46C2DEFE46C4E0FF46C0DDFE41B2CCFE3A9EB5FE2E81
      94FF276D7DFE2C7C8DFE3596ABFF3DA8C1FE42B7D1FE091A1D94000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160815178B49C6E2FF49C4E0FE49C4E0FE49C6E2FF49C4
      E0FE49C4E0FE49C6E2FF49C4E0FE49C6E2FF49C4E0FE49C2DEFE44B3CDFE46AD
      C4FF3FA3BBFE32889CFE2A7182FF2C7988FE3794A9FE09171A94000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160815178B4CC8E3FF4CC8E3FF4CC8E3FF4CC8E3FF4CC8
      E3FF4CC8E3FF4CC8E3FF4CC8E3FF4CC8E3FF4CC8E3FF4CC8E3FF4BC5E0FF47B3
      CCFF58BBD3FF4FB4CCFF43AAC1FF3690A4FF2D798BFF07121495000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160915178B4FCAE4FF4FC8E2FE4FC8E2FE4FCAE4FF4FC8
      E2FE4FC8E2FE4FCAE4FF4FC8E2FE4FCAE4FF4FC8E2FE4FC8E2FE4FC8E2FE4CC3
      DDFF4AADC3FE60C1D8FE5DC0D7FF51B4CBFE45AFC7FE0B1A1D95000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160915188B52CCE6FF52CAE4FE52CAE4FE52CCE6FF52CA
      E4FE52CAE4FE52CCE6FF52CAE4FE52CCE6FF52CAE4FE52CAE4FE52CAE4FE52CB
      E5FF4DBCD5FE50B0C6FE5BBDD3FF4AB0C7FE50C5DFFE0C1B1F94000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160915188B56CEE8FF56CEE8FF56CEE8FF56CEE8FF56CE
      E8FF56CEE8FF56CEE8FF56CEE8FF56CEE8FF56CEE8FF56CEE8FF56CEE8FF56CE
      E8FF55CDE6FF4FBDD6FF4EB8CFFF54C9E2FF56CEE8FF0C1B1F94000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160A15188B5AD0EAFF5ACEE7FE5ACEE7FE5AD0EAFF5ACE
      E7FE5ACEE7FE5AD0EAFF5ACEE7FE5AD0EAFF5ACEE7FE5ACEE7FE5ACEE7FE5AD0
      EAFF5ACEE7FE59CDE7FE59CFE8FF5ACEE7FE5ACEE7FE0D1C1F94000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160A16188B5DD2EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2
      EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2
      EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2EBFF5DD2EBFF0D1C1F94000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160A16188B61D4EDFF61D2EBFE61D2EBFE61D4EDFF61D2
      EBFE61D2EBFE61D4EDFF61D2EBFE61D4EDFF61D2EBFE61D2EBFE61D2EBFE61D4
      EDFF61D2EBFE61D2EBFE61D4EDFF61D2EBFE61D2EBFE0D1C2094000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160B16188B65D6EFFF65D4EDFE65D4EDFE65D6EFFF65D4
      EDFE65D4EDFE65D6EFFF65D4EDFE65D6EFFF65D4EDFE65D4EDFE65D4EDFE65D6
      EFFF65D4EDFE65D4EDFE65D6EFFF65D4EDFE65D4EDFE0E1C2094000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160B16198B68D9F1FF68D7EFFE68D7EFFE68D9F1FF68D7
      EFFE68D7EFFE68D9F1FF68D7EFFE68D9F1FF68D7EFFE68D7EFFE68D7EFFE68D9
      F1FF68D7EFFE68D7EFFE68D9F1FF68D7EFFE68D7EFFE0F1C2094000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160B17198B6CDBF2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDB
      F2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDB
      F2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDBF2FF6CDBF2FF0F1D2094000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160C17198B6FDCF4FF6FDAF2FE6FDAF2FE6FDCF4FF6FDA
      F2FE6FDAF2FE6FDCF4FF6FDAF2FE6FDCF4FF6FDAF2FE6FDAF2FE6FDAF2FE6FDC
      F4FF6FDAF2FE6FDAF2FE6FDCF4FF6FDAF2FE6FDAF2FE0F1E2094000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160C17198B72DEF5FF72DCF3FE72DCF3FE72DEF5FF72DC
      F3FE72DCF3FE72DEF5FF72DCF3FE72DEF5FF72DCF3FE72DCF3FE72DCF3FE72DE
      F5FF72DCF3FE72DCF3FE72DEF5FF72DCF3FE72DCF3FE101E2094000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160C17198B73DCF2FF73DCF2FF73DCF2FF73DCF2FF73DC
      F2FF73DCF2FF73DCF2FF73DCF2FF73DCF2FF73DCF2FF73DCF2FF73DCF2FF73DC
      F2FF73DCF2FF73DCF2FF73DCF2FF73DCF2FF73DCF2FF101E2094000000180000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000130911148856A9C4FF57A8C3FE57A8C3FE57AAC5FF57A8
      C3FE57A8C3FE57AAC5FF57A8C3FE57AAC5FF57A8C3FE57A8C3FE57A8C3FE57AA
      C5FF57A8C3FE57A8C3FE57AAC5FF57A8C3FE56A7C2FE0B161A92000000150000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B090E117A6FB6D1FF6FB5D0FE6FB5D0FE6FB7D2FF6FB5
      D0FE6FB5D0FE6FB7D2FF6FB5D0FE6FB7D2FF6FB5D0FE6FB5D0FE6FB5D0FE6FB7
      D2FF6FB5D0FE6FB5D0FE6FB7D2FF6FB5D0FE6FB4CFFE0B1316850000000C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000030000002B0508096105080A6305080A6405080A640508
      0A6405080A6405080A6405080A6405080A6405080A6405080A6405080A640508
      0A6405080A6405080A6405080A6405080A63050809610000002F000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000300000004000000050000000500000005000000050000
      0005000000050000000500000005000000050000000500000005000000050000
      0005000000050000000500000005000000050000000500000005000000050000
      0005000000040000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000040000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000002000000020000
      0002000000020000000200000002000000020000000200000002000000020000
      0002000000020000000200000002000000020000000200000002000000020000
      0002000000020000000200000002000000020000000200000002000000020000
      0002000000020000000200000002000000010000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000030000002500000040000000410000004100000041000000410000
      0041000000410000004100000041000000410000004100000041000000410000
      0041000000410000004100000041000000410000004100000041000000410000
      0041000000400000002C0000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000090001021C0000011C0000011C0000011C0000011C0000011C0000
      011C0000011C0000011C0000021C0000021C0000021C0000021C0000021C0000
      021C0202021C0202021C0101021C0101021C0101021C0201021C0202021C0202
      021C0101021C0000021C0000021C0000021C0000021C0000021C0000011C0000
      021C0101021C0000011C0000011C0000011C0000011C0000011C0000011C0000
      0014000000000000000000000000000000000000000000000000000000000000
      00000000000100000004000000080000000C0000000E00000010000000100000
      0010000000100000001000000010000000100000001000000010000000100000
      0010000000100000001000000010000000100000001000000010000000100000
      0010000000100000001000000010000000100000001000000010000000100000
      00100000001000000010000000100000000F0000000C00000008000000040000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000001000000010000
      0002000000020000000200000003000000030000000300000003000000020000
      0002000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000040000003FFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFCFCFAFFF8F7F4FFF3F1
      ECFFE8E5DDFE787570D6010101420000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000C0002042E0001032E0001032E0001042E0001042E0001032E0001
      042E0001042E0000042E0000052E0000052E0000052E0000062E0000062E0100
      062E0505072E0707072E0707072E0707072E0707072E0707072E0707072E0403
      072E0100062E0000062E0000062E0000052E0000052E0000052E0000052E0001
      052E0002062E0001032E0001032E0001032E0001032E0001032E0001032E0000
      011E000000000000000000000000000000000000000000000000000000000000
      000200000007000000100000001A000000240000002A0000002D0000002E0000
      002E0000002E0000002E0000002E0000002E0000002E0000002E0000002E0000
      002E0000002E0000002E0000002E0000002E0000002E0000002E0000002E0000
      002E0000002E0000002E0000002E0000002E0000002E0000002E0000002E0000
      002E0000002E0000002E0000002D0000002B000000250000001B000000110000
      0008000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000100000002000000030000000500000006000000070000
      0008000000090000000A0000000B0000000C0000000C0000000C0000000B0000
      000A000000090000000800000006000000040000000200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000400000040FDFDFCFFF5F5F4FEF5F5F5FEF8F8F8FFF7F7F7FEFAFA
      FAFFF8F8F8FEF8F8F8FEF9F9F9FEFCFCFCFFF9F9F9FEFAFAFAFEFDFDFDFFFAFA
      FAFEFBFBFBFEFEFEFEFFFCFCFCFEFCFCFCFEFDFDFDFFF9F9F9FEF3F3F3FEECEC
      ECFFD9D9D8FECFCCC7FE8B8A87E20202024D0000000A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000C0003064000020640000306400003064000030840000307400002
      074000020840000209400001094000010A4000000A4000000B4000000B400000
      0C4001000C4002000D4005030D4009080E400F0F0F4008070E4002000D400100
      0C4001000C4000000C4000000B4000000B4000010A4000010940000209400002
      0840000208400002074000020640000206400002064000020640000206400000
      0224000000000000000000000000000000000000000000000000000000000000
      00060000001100000024000000390000004D000000590000005D0000005E0000
      005E0000005E0000005E0000005E0000005E0000005E0000005E0000005E0000
      005E0000005E0000005E0000005E0000005E0000005E0000005E0000005E0000
      005E0000005E0000005E0000005E0000005E0000005E0000005E0000005E0000
      005E0000005E0000005E0000005D000000590000004E0000003B000000260000
      0013000000060000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0002000000040000000500000007000000090000000C0000000E000000110000
      001400000016000000180000001A0000001C0000001D0000001D0000001D0000
      001C0000001A0000001400000012000000110000000C00000007000000030000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000400000040FDFDFCFFF5F5F4FEF5F5F5FEF9F9F8FFF7F7F7FEFAFA
      FAFFF8F8F8FEF8F8F8FEF9F9F9FEFCFCFCFFF9F9F9FEFAFAFAFEFDFDFDFFFAFA
      FAFEFBFBFBFEFEFEFEFFFCFCFCFEFCFCFCFEFDFDFDFFF8F8F8FEF2F2F2FEEBEB
      EBFFD6D6D6FEC1C0BFFEC2C0BDFFA4A6A5EE0506065C0000000A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000900040A5100040A5100040B5100060E5100060D5100040A510004
      0B5100040C5100030D5100030E5100020F510002105100011151000011510000
      1251000012510000135101001351070615511818185109081551000013510000
      12510000125100001251000111510001105100020F5100030E5100030D510003
      0C5100040B5100040A5100040A5100040A5100040A5100040A5100040A510001
      0228000000000000000000000000000000000000000000000000000000020000
      000C00000020000000422D2D2DB2A9A9A9F2BEBEBEF8BEBEBEF8BEBEBEF8BEBE
      BEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBE
      BEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBE
      BEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBE
      BEF8BEBEBEF8BEBEBEF8BEBEBEF8BEBEBEF8AEAEAEF33A3A3ABC000000490000
      00220000000D0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000020000
      0004000000070000000A0000000D0000001100000015000000180000001C0000
      002100000025000000290000002C0000002F00000032000000340000003A0103
      0A70010E2AA4001546BE00123DB600081C8C0001034C000000150000000A0000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000400000040FDFDFCFFF7F7F7FFF8F8F7FFF9F9F8FFF5F5F5FFDEDF
      E0FFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFD
      FDFFFDFDFDFFFEFEFEFFFEFEFEFFFFFFFFFFFDFDFDFFFAFAFAFFF4F4F4FFEBEB
      EBFFD8D7D7FFC2C1C1FFAFAEAEFFCFCFCFFFBBBDBCF80B0B0B6E0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000300060E6000060E6100060E6200060F6400060F6600060F670006
      0F690006116B0005136C0005156E0005166F0004177000031871000219720002
      1A7200011B7300001B7300001D7409092174232425740B0C217400001C740000
      1C7400021A7300021A720003197200041871000416700005156F0006136E0006
      126D0006106C00060F6A00060F6900060F6700060F6600060E6500060E630000
      0228000000000000000000000000000000000000000000000000000000030000
      00120000002E292929A8F1F1F1FFF2F2F2FFECEBEAFEEBE7E5FFEBE7E5FFEBE7
      E5FFE9E5E3FEEBE7E5FFE9E5E3FEEBE7E5FFEBE7E5FFE9E5E3FEEBE7E5FFEBE7
      E5FFE9E5E3FEEBE7E5FFEBE7E5FFE9E5E3FEEBE7E5FFEBE7E5FFE9E5E3FEEBE7
      E5FFEBE7E5FFE9E5E3FEEBE7E5FFEBE7E5FFEBE7E5FFE9E5E3FEEBE7E5FFEBE7
      E5FFE9E5E3FEEBE7E5FFEBE7E5FFECEAE9FEF2F2F2FFF1F1F1FF3E3E3EBA0000
      0031000000140000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000030000
      00070000000A0000000D00000012000000160000001B00000020000000250000
      002B00000030000000350000003A0000003F00000042000309740E2C76E01442
      B0FE0E3EB3FF0A3AB0FF0737ACFF0534A9FF0232A6FC001F6BD6000207520000
      0005000000010000000000000000000000000000000000000000000000000000
      00000000000400000040FDFDFCFFF5F5F4FEF5F5F5FEF9F9F8FFF7F7F7FE4F52
      53FF696B6CFECACBCCFEF8F8F8FEFCFCFCFFF9F9F9FEFAFAFAFEFDFDFDFFFAFA
      FAFEFBFBFBFEFEFEFEFFFCFCFCFEFCFCFCFEFDFDFDFFF8F8F8FEF3F3F3FEECEC
      ECFFD7D7D7FEC2C1C1FEAFAEAEFFAEAEADFEEBEBEBFFC1C3C3FB1213127F0000
      000B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000100040A6E001129BD001128C1001028C3001028C5001128C60011
      28C7001129C700102DC7000F30C8000E33C8000D36C8000B39C8000A3BC80008
      3CC8000740C8000640C8000441C8000342C8000342C8000441C8000441C80007
      40C800093EC8000A3CC8000A3AC8000C37C7000D35C7000F32C700102FC60010
      2BC5001028C5001028C3001127C1001128BE001028BB001128B8000C1CA00000
      0028000000170000000E00000005000000000000000000000000000000050000
      001700000039979797E4F2F2F2FFC29A87FFA3552DFEA55229FFA55229FFA552
      29FFA35229FEA55229FFA35229FEA55229FFA55229FFA35229FEA55229FFA552
      29FFA35229FEA55229FFA55229FFA35229FEA55229FFA55229FFA35229FEA552
      29FFA55229FFA35229FEA55229FFA55229FFA55229FFA35229FEA55229FFA552
      29FFA35229FEA55229FFA55229FFA2542CFEBB8D74FFF2F2F2FFBEBEBEF20000
      003F0000001A0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000040000
      00080000000B0000000F00000014000000190000001E00000023000000290000
      002F000000350000003A000000400000004401051184113CA5F71D4AB8FE1A49
      C0FF1142BCFE0D3EBAFE0B3CB5FE0939B0FE0635A9FE0532A4FF0230A5FA0008
      1B7A000000020000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF5F5F4FEF5F5F5FEF8F8F8FFF7F7F7FE9597
      98FF282828FE1F1F1FFE515253FEC2C5C8FFF8F8F8FEF8F8F8FEFCFCFCFFFAFA
      FAFEFBFBFBFEFEFEFEFFFCFCFCFEFCFCFCFEFEFEFEFFF9F9F9FEF4F4F4FEEEEE
      EEFFDBDBDBFEC7C6C5FEB4B3B2FFA09F9EFEE1E1E0FFEAEAEAFEC4C6C5FD1819
      198B0000000B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006002759F1002B65FE002B65FE002B65FE002B65FE002B65FE002B
      67FE002B70FE00287AFE002581FE00218AFE001F91FE001A99FE0014A0FE000F
      A5FE000BAAFE0007ADFE0006B0FE2126CDFE999EE1FE2F35CFFE0005AFFE0009
      ABFE000EA7FE0012A2FE00189BFE001D94FE00218DFE002485FE00277DFE0029
      75FE002A6BFE002B66FE002B65FE002B65FE002B65FE002B65FE002B65FE0003
      085A000000010000000000000000000000000000000000000000000000060000
      001A0000003FA9A9A9EAEFEFEFFEA45B37FEA7542BFEA7542BFEA7542BFEA754
      2BFEA7542BFEA7542BFEA7542BFEA7542BFEA7542BFEA7542BFEA7552BFEA755
      2BFEA7552BFEA7552BFEA7552BFEA7552BFEA7552BFEA7552BFEA7552BFEA755
      2BFEA7552BFEA7552BFEA7552BFEA7552BFEA7542BFEA7542BFEA7542BFEA754
      2BFEA7542BFEA7542BFEA7542BFEA7542BFEA2542DFEEAE8E7FED1D1D1F70000
      00460000001D0000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000040000
      00070000000A0000000E00000013000000180000001D00000022000000280000
      002D00000033000000380000003D0001035D0A339DF21A48BDFE1F4FC8FE1749
      CCFF0F44C9FE0D42C7FE0D40C4FE0C3EBEFE0A3AB8FE0837B1FF0633A7FE0231
      ACFA00040E530000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF7F7F6FFF7F7F7FFF8F8F8FFF9F9F9FFD7D9
      DAFF353535FF2A2A2AFF314D56FF549FB7FF7EB2C7FFBDCDD6FFE8E8E9FFF1F1
      F1FFF7F7F7FFFAFAFAFFFCFCFCFFFEFEFEFFFEFEFEFFFCFCFCFFF8F8F8FFF0F0
      F0FFE3E3E3FFD0CFCFFFBBBABAFFA7A6A6FFC4C3C3FFF9F9F9FFECEDEDFFCACB
      CBFF1819198B0000000B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000019002B65FE002C66FF002D67FF003A86FE003579FF002C66FF002B
      70FF00287AFE002684FF00208CFE001D96FF00179FFF000FA5FE000BAEFF0004
      B4FF0000B7FE0400BDFF0600C0FF4942D3FEF0F2F0FF5B55D9FF0600BCFE0200
      BBFF0002B6FF0009AEFE0010A9FF0016A2FF001B9AFF00208FFE002587FF0027
      7DFF002A73FE002C69FF002C66FF002B65FE002C66FF002C66FF002B65FE0009
      1679000000000000000000000000000000000000000000000000000000060000
      001B00000041AAAAAAEBF0F0F0FFA25530FFA7562DFEA9562DFFA9562DFFA956
      2DFFA7562DFEA9562DFFA7562DFEA8552CFFA7552CFFA7562DFEA9562DFFAA56
      2DFFA7562DFEAA562DFFAA562DFFA7562DFEAA562DFFAA562DFFA7562DFEAA56
      2DFFAA562DFFA7562DFEA9562DFFA9562DFFA9562DFFA7562DFEA9562DFFA956
      2DFFA7562DFEA9562DFFA9562DFFA7562DFEA4532CFFE7E3E1FFD1D1D1F70000
      00480000001E0000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000030000
      0005000000080000000A0000000E00000012000000170000001B000000200000
      00250000002A0000002E0000003002123CB31040BDFE1C4DCBFE1C4ED1FE1348
      D6FF0E44D4FE0D44D4FE0D43D1FE0D41CBFE0C3FC5FE0B3CBEFF0838B3FE0634
      AEFE01268CDC0000000900000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF4F4F4FEF5F5F5FEF8F8F8FFF7F7F7FEF9F9
      F9FF5A5C5EFE49666FFE56A4BCFE4CA3BEFF4EA2BCFE58A4BCFE6EA1B5FF9BAC
      B4FECACBCBFEDEDEDEFFE8E8E8FEF0F0F0FEF8F8F8FFF7F7F7FEF6F6F6FEF2F2
      F2FFE7E7E7FED6D6D5FEC5C4C4FFAFAEADFEAEAEADFFFBFBFBFEF7F7F7FEECED
      EDFFC4C6C5FD131313800000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001042C002C66FE002C66FF002E6CFF003376FE003F90FF002F77FF0029
      78FF002581FE00238CFF001D94FE0017A0FF0010A9FF0007AFFE0000B9FF0900
      C0FF1000C3FE1500C9FF1D01D2FF6A58DAFEF0F2F0FF6B59DDFF1A00C6FE1000
      C7FF0900C2FF0400BAFE0004B4FF000CACFF0014A4FF001B98FE002091FF0025
      87FF00287CFE002A71FF002C67FF002B65FE002C66FF002C66FF002B65FE000D
      1F8D000000000000000000000000000000000000000000000000000000060000
      001C00000041AAAAAAEBF0F0F0FFA25630FFA7562DFEA9562DFFA9562EFFA956
      2EFFA7562EFEA8562EFF9D512BFE965C40FFA17058FF99502AFEA9572EFFA957
      2EFFA7572EFEA9572EFFA9572EFFA7572EFEAA572EFFA9572EFFA7572EFEA957
      2EFFA9572EFFA7572EFEA9572EFFA9572EFFA9572EFFA7572EFEA9572EFFA957
      2EFFA7562EFEA9562EFFA9562EFFA7562DFEA4542CFFE7E3E1FFD1D1D1F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00170C0C0C591F1F1F8724242491141414770303034000000013000000150000
      00180000001C0000001E00000031062F9AEC1343C5FE1B4DD4FE174CD9FE0E46
      DFFF0B44DFFE0C45DFFE0D45DCFE0D44D8FE0D42D1FE0C3FCAFF0B3CBFFE0738
      BAFE0036C6FE0004114D00000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF6F6F6FFF7F7F7FFF8F8F8FFF9F9F9FFFAFA
      FAFFA6B7C0FF75B4C9FF62ADC4FF4FA4BFFF439FBBFF449FBBFF53A6C0FF64AC
      C3FF6B9CAEFF82969FFFACAFB0FFC3C3C3FFD5D5D5FFE1E1E1FFE9E9E9FFEBEB
      EBFFE9E9E9FFE0E0E0FFD0D0D0FFBEBDBCFFA7A7A6FFFEFEFEFFFDFDFDFFF9F9
      F9FFECECECFFC2C3C3FB0B0B0B6F0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001060C40003B88FE002C66FF002C66FF003379FE00429BFF002C7AFF0028
      80FF002288FE001E95FF00159EFE000EAAFF0004B4FF0400BAFE0E00C5FF1A01
      CFFF7564DCFEC4C0EAFFEDEDEFFFEDEFEDFEF0F2F0FFEAECEFFFB8B0E6FE5339
      DBFF1C00CBFF1500C5FE0900C0FF0000B7FF000BAEFF0012A2FE001B9AFF0025
      A4FF0033B0FE002978FF002B6DFF002B66FE002C66FF002C66FF002B65FE0011
      28A0000000000000000000000000000000000000000000000000000000060000
      001C00000041AAAAAAEBF1F1F1FFA25732FFA6572FFEA8582FFFA9582FFFA958
      2FFFA6572FFE974E2AFFA17F6EFEDFDDDCFFE3E3E3FF9D7662FEA3542EFFA958
      30FFA75830FEAA5830FFAA5830FFA75830FEAA5830FFAA5830FFA75830FEAA58
      30FFAA5830FFA75830FEA95830FFA95830FFA95830FFA7582FFEA9582FFFA958
      2FFFA7582FFEA9582FFFA9582FFFA6582FFEA4552EFFE8E4E2FFD2D2D2F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000092323237B9B9B
      9BE7C7C7C7FDD0D0D0FFD3D3D3FFD4D4D4FFC7C7C7F95E5E5EC00404043C0000
      000B0000000E0000000E000208560A3DC6FE1547D2FF194DDDFF1149E3FF0944
      E7FF0844E9FF0A45E9FF0B46E7FF0C45E3FF0E45DEFF0D42D6FF0C40CCFF043A
      CEFF0037CEFF000E368600000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF4F4F4FEF5F5F5FEF8F8F8FFF7F7F7FEFAFA
      FAFFD9E4EAFE81B6CAFE74B3C8FE5EABC3FF4AA0BBFE3A99B6FE3B9BB8FF4DA1
      BCFE45A8C7FE16C1F6FF3CA4C4FE818282FE979797FFA8A8A8FEB8B8B8FEC9C9
      C9FFD1D1D1FEDADADAFEDAD9D9FFCBCACAFEB2B1B1FFA7A7A6FEAFAFAEFEC7C7
      C6FFE1E1E1FEE9E9E9FEBBBDBCF80506065D0000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070E16530357C3FE002B65FE003172FE003D8EFE002B70FE00287AFE0024
      85FE002090FE00189BFE000EA6FE0005B1FE0400BBFE1200C4FE1E00C8FE3613
      C7FEEAECECFEEEEEEEFECDC6DAFEAA9FC7FEA89DC5FED2CEDDFEEDEFEDFEECEE
      EEFE765DDFFE2000CAFE1700C6FE0B00BFFE0000B5FE000BAAFE0014A0FE153A
      C9FE5678D3FE00267EFE002A73FE002A68FE002B65FE002B65FE002B65FE0015
      32B3000000000000000000000000000000000000000000000000000000060000
      001C00000041AAAAAAEBEFEFEFFEA05833FEA65831FEA65931FEA65931FEA558
      30FE914E2BFEB2998DFEE2E2E2FEE1E1E1FEE1E1E1FED6D1CEFE8C5233FEA658
      30FEA85A31FEA85A31FEA85A31FEA85A31FEA85A31FEA85A31FEA85A31FEA85A
      31FEA85A31FEA85A31FEA85931FEA75931FEA75931FEA75931FEA75931FEA759
      31FEA75931FEA75931FEA75931FEA65931FEA25630FEE6E2E1FED2D2D2F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D4D4D4DB0C6C6C6FDCFCF
      CFFED8D8D8FEDBDBDBFEDCDCDCFEDBDBDBFEDADADAFFD5D5D5FEBCBCBCF31B1C
      1C760000000600000004020F359B0C3EC9FE174ADAFE164CE2FE0B45E6FE0541
      ECFF0542EDFE0744EEFE0945EDFE0B46E9FE0D45E3FE0C43DFFF063EDAFE003A
      D8FE0239D0FE0012469600000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF4F4F4FEF5F5F4FEF8F8F8FFF6F6F6FEF9F9
      F9FFF5F6F7FE93BCCEFE88BDCFFE73B5CAFF5DA9C1FE479FBAFE3398B6FF3287
      A1FE10A9DBFE0EBFF7FF10C4FCFE4293ACFE747474FF808080FE8E8E8EFE9E9E
      9EFFACACACFEC1C1C1FED9D9D8FFD8D7D7FECFCFCEFFC0BFBFFEB5B4B4FEB0AF
      AEFFABAAA9FEB8B8B7FED4D5D4FFA5A6A5EE0202024F0000000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D1722663D7DD0FE003A87FF002D69FF003E91FE00389AFF002783FF0023
      8CFF001A97FE0013A5FF0007AFFE0200BBFF1000C6FF1F00C9FE2A00CFFF3300
      CAFF826BAFFE4F2A93FF37058CFF3C009BFE3E009FFF39078BFF907AB7FEF0F2
      F0FFE9EBF0FF3D11DBFE2300CDFF1500C9FF0900C0FF0003C4FE2032CEFF4C64
      D5FF6982D5FE0037BDFF00297BFF002A6DFE002C66FF002C66FF002B65FE001B
      3EC7000000000000000000000000000000000000000000000000000000060000
      001C00000041AAAAAAEBF1F1F1FFA25935FFA65A32FEA85A32FFA85932FF934F
      2DFFB9A59BFEE4E4E4FFE1E1E1FEE4E4E4FFE4E4E4FFE1E1E1FEBCA9A0FF9750
      2DFFA85A33FEAA5B33FFAA5B33FFA85B33FEAA5B33FFAA5B33FFA85B33FEAA5B
      33FFAA5B33FFA85B33FEAA5B33FFAA5B33FFAA5B33FFA85B33FEAA5B33FFA95A
      33FFA75A33FEA95A33FFA95A33FFA65A32FEA45731FFE8E4E3FFD2D2D2F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000136363693C9C9C9FED5D5D5FFDDDD
      DDFEE0E0E0FEE2E2E2FEE3E3E3FEE2E2E2FEE1E1E1FFDCDCDCFED7D7D7FECCCC
      CCFA191A1C6E0000000D012282DA0B3FCFFE154AE0FE134AE6FE0843EBFE0240
      F2FF0141F3FE0242F4FE0443F3FE0643F0FE0441EBFE023EEAFF003CE2FE003A
      DBFE073DD4FE00103D8B00000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF4F4F3FEF4F4F4FEF7F7F7FFF6F6F6FEF9F9
      F9FFF7F7F7FEB5CEDBFE9FC8D6FE8BBFD1FF74B3C8FE5DA7BFFE335C69FF2326
      27FE18566AFE0AB5EBFF0EBDF5FE11C3FAFE4E8A9DFF767676FE7F7F7FFE8C8C
      8CFF969696FEA9A9A9FEC8C8C8FFDBDBDBFEDFDFDEFFD4D4D3FECBCACAFEC6C5
      C5FFBFBEBDFEBCBBBBFEC0BFBEFFCDCCCAFE8E8D8AE2010101440000000C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00001320317A5D93D8FE0E5EC6FE002C66FE002D74FE002B7FFE002485FE001F
      91FE00179DFE000CA9FE0000B5FE0D00C1FE1E00C8FE2A00CDFE3700D1FE4400
      D5FE3F00AFFE4D00C9FE5A00DEFE5E00DFFE5E00E0FE5B00DCFE4800AFFEDAD6
      E2FEEDEFEDFE7F5CE5FE2E00CFFE2000CAFE1200C5FE807FDAFE7A7FD2FE5F6A
      BCFE6072BFFE7A92D7FE4673CFFE002C78FE002B66FE002B65FE002B65FE0020
      4ADA000000000000000000000000000000000000000000000000000000060000
      001C00000041ABABABEBEFEFEFFE9F5A36FEA65B34FEA65B34FE9C5531FEAE93
      85FEE2E2E2FEE2E2E2FEE2E2E2FEE2E2E2FEE2E2E2FEE2E2E2FEE2E2E2FE9E7C
      69FE9F5732FEA85C35FEA95D35FEA95D35FEA95D35FEA95D35FEA95D35FEA95D
      35FEA95C35FEA85C35FEA85C35FEA85C35FEA85C35FEA85C35FEA85C35FEA85C
      34FEA75C34FEA75B34FEA75B34FEA65B34FEA25832FEE7E3E1FED3D3D3F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A42B7B7B7F5D2D2D2FEE1E1E1FFE3E3
      E3FEE7E7E7FEE8E8E8FEE9E9E9FEE8E8E8FEE7E7E7FFE1E1E1FEDCDCDCFED6D6
      D6FEB8B8B8EE090B115A0133C7FB053CD7FE0F47E5FE0E48EAFE0542EFFE0140
      F6FF0040F6FE0040F7FE0040F6FE0140F3FE003EEFFE013DECFF003CE4FE023B
      DDFE0B40D6FE00071A5A00000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF5F5F5FFF6F6F6FFF7F7F7FFF8F8F8FFF9F9
      F9FFFAFAFAFFD8E3EAFFB0CFDBFFA3CBD8FF8DC0D2FF48636CFF232323FF2323
      23FF232323FF156883FF0AB5ECFF0EBFF7FF14C2F8FF5B8693FF7B7B7BFF8787
      87FF919191FF9D9D9DFFB3B3B3FFD0D0D0FFE4E4E4FFE6E6E6FFE1E1E0FFDADA
      DAFFD6D6D5FFD4D3D3FFD4D4D3FFD6D6D6FFE2E0DCFF7B7974D50000002E0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000192B408D6096D8FE4C8AD5FF00449DFF002B70FE00277DFF00248AFF001B
      98FF0012A2FE0007B1FF0400BBFE1500C9FF2600CEFF3500D0FE4000D8FF4F00
      DCFF5800DEFE6100E4FF6900E6FF6D00E5FE6D00E8FF6A00E7FF6400E1FED7CD
      E6FFF0F2F0FF916BE8FE3800D5FF2C00CFFF1C00C9FF2D2591FE03028DFF000B
      8FFF001582FE1D3492FF7897D9FF0C51C2FE002C69FF002C66FF002B65FE0027
      59EE000000000000000000000000000000000000000000000000000000060000
      001C00000041ABABABEBF2F2F2FFA15B37FFA65C35FEA85C35FF8E5031FFDEDB
      DAFFE2E2E2FEE5E5E5FFE2E2E2FEE5E5E5FFE5E5E5FFE2E2E2FEE5E5E5FFDFDC
      DBFF905F45FEA75C36FFAB5E37FFA95E37FEAC5E37FFAC5E37FFA95E37FEAB5E
      37FFAB5E37FFA95E37FEAB5E37FFAB5E37FFAB5E36FFA95D36FEAA5D36FFAA5D
      36FFA85D36FEA95D36FFA95D36FFA75C36FEA45A34FFE9E5E4FFD3D3D3F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D737373CCCFCFCFFEDEDEDEFEE7E7E7FFE9E9
      E9FEECECECFEEEEEEEFEEEEEEEFEEDEDEDFEECECECFFE6E6E6FEE0E0E0FEDADA
      DAFED3D3D3FE606FA2E90035CFFE013ADFFE033FE9FE0542EEFE0241F3FE0141
      F9FF0041F9FE0041F9FE0141F8FE0140F5FE003FF1FE013EEEFF003CE6FE0940
      DFFE0638C8F60000011800000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF3F3F3FEF4F4F4FEF7F7F7FFF6F6F5FEF8F8
      F8FFF7F7F7FEF4F5F6FEAFCAD7FEB3D1DCFF67ABC2FE24292AFE232323FF2222
      22FE222222FE222424FF127898FE0AB4EAFE0EC0F7FF19BDF0FE68828AFE8282
      82FF8B8B8BFE959595FEA5A5A5FFBABABAFED9D9D9FFE8E8E8FEECECECFEECEC
      ECFFE7E7E7FEE6E6E6FEE8E8E8FFE7E7E7FEEAEAEAFEF1EFEBFE000000400000
      0005000000000000000000000000000000000000000000000000000000000000
      00001E3654A15C92D7FE6A9EDDFF3274CFFF002F80FE002782FF00228EFF001A
      9BFF000EA6FE0002B6FF0B00C0FE1C00CBFF2C00D0FF3D00D3FE4A00DBFF5900
      DFFF6400E2FE6E00E8FF7500EBFF7B00EBFE7D00EDFF7A00ECFF9537F9FEEFF1
      EFFFF0F2F0FF7E48DBFE4200D8FF3300D2FF2300CDFF1200C2FE0200BBFF000B
      AEFF00159EFE001E91FF7591D6FF3167C9FE002B6BFF002C66FF002B65FE002A
      62FA000000060000000000000000000000000000000000000000000000060000
      001C00000041ABABABEBF2F2F2FFA15C39FFA65D37FEA75D37FF996B53FFE5E5
      E5FFE3E3E3FEE5E5E5FFE3E3E3FEE5E5E5FFE5E5E5FFE3E3E3FEE5E5E5FFE5E5
      E5FFCEC5C1FE975736FFAC6038FFAA6039FEAC6039FFAC6039FFAA6039FEAC60
      38FFAC6038FFAA6038FEAC6038FFAC5F38FFAB5F38FFA95F38FEAB5F38FFAB5F
      38FFA85E38FEAA5E37FFA95E37FFA75E37FEA45B36FFE9E6E4FFD3D3D3F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002222227ACCCCCCFDD9D9D9FEE5E5E5FEECECECFFEEEE
      EEFEF1F1F1FEF3F3F3FEF3F3F3FEF1F1F1FEF0F0F0FFEAEAEAFEE4E4E4FEDDDD
      DDFED6D6D6FEACB5D1FF0238D2FE003DE3FE0040EBFE0041F0FE0042F4FE0143
      FAFF0043F9FE0043F9FE0143F8FE0142F5FE0040F0FE013FEDFF003DE4FE0E46
      DEFE01217CC20000000100000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF3F3F3FEF4F4F3FEF7F7F6FFF5F5F5FEF8F8
      F8FFF7F7F7FEF7F7F7FEBDD1DCFE57C5E8FF48C8F1FE207995FE232323FF2222
      22FE222222FE232323FF222628FE0E87AEFE0AB6EDFF0EBEF5FE1FB8E8FE7584
      88FF868686FE919191FE9E9E9EFFABABABFEC6C6C6FFE0E0E0FEEFEFEFFEF4F4
      F4FFF1F1F1FEF1F1F1FEF3F3F3FFF1F1F1FEF3F3F3FEF7F5F3FE000000410000
      0005000000000000000000000000000000000000000000000000000000000000
      000023426AB4558FD7FE669AD9FE6A99DBFE1858C9FE002683FE00208FFE0017
      9CFE000BAAFE0000B7FE1200C4FE2100CBFE3300D0FE4400D5FE5300DBFE6000
      E0FE6D00E5FE7A00EAFE8100EEFE8800F0FE8F01FDFEB76AFBFEEBE8EFFEEDEF
      EDFED5CEDFFE5100CBFE4800D8FE3900D2FE2A00CDFE1A00C6FE0600BCFE0007
      AFFE0015A1FE2041CAFE7B93D8FE1E54B9FE002A6EFE002B66FE002B65FE002B
      65FE000000160000000000000000000000000000000000000000000000060000
      001C00000041ACACACEBF1F1F1FEA05D3AFEA65E38FEA55E38FE9D7661FEE3E3
      E3FEE3E3E3FEE3E3E3FEE3E3E3FEE3E3E3FEE3E3E3FEE3E3E3FEE3E3E3FEE3E3
      E3FEE4E4E4FE9C6A4FFEAB613AFEAC613BFEAC613BFEAC613BFEAC613BFEAB61
      3BFEAB613BFEAB613BFEAB613AFEAB613AFEAA613AFEAA613AFEAA603AFEA960
      3AFEA9603AFEA9603AFEA85F39FEA75F39FEA25C37FEE8E4E3FED4D4D4F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404042BADADADEDD4D4D4FEE3E3E3FEE9E9E9FEF1F1F1FFF2F2
      F2FEF5F5F5FEF6F6F6FEF6F6F6FEF3F3F3FEF2F2F2FFECECECFEE6E6E6FEDFDF
      DFFED7D7D7FEBFC4D2FF0C41D7FE0040E6FE0042EDFE0043F1FE0044F5FE0145
      FBFF0046F9FE0046F9FE0045F7FE0044F3FE0043EFFE0141EBFF0140E2FE0E47
      DCFE000D2F780000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF5F5F4FFF5F5F5FFF6F6F6FFF7F7F7FFF8F8
      F8FFF9F9F9FFF9F9F9FFCCE4EDFF23BDEDFF78DCFBFF64D1F3FF2D6D82FF2323
      24FF232323FF232323FF232323FF212A2EFF0C95C1FF0AB6EDFF0EC0F7FF29B5
      E0FF7E8688FF8E8E8EFF999999FFA4A4A4FFB5B5B5FFCFCFCFFFE9E9E9FFF7F7
      F7FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFFCFCFBFF000000410000
      0005000000000000000000000000000000000000000000000000000000000000
      0000274E81C84E8AD5FE6098DAFF729EDDFF688FDBFE033AC7FF002199FF0016
      A2FF0009ACFE0200BBFF1500C5FE2600CEFF3600D4FF4800D6FE5600DFFF6500
      E5FF7400E8FE8000F0FF9B15FFFFC983FDFEEBE5F1FFF0F2F0FFEDEFEDFED7CB
      E1FF6222A6FF5900DBFE4C00DCFF3C00D6FF2C00D0FF1C00C7FE0900C3FF1D22
      D0FF5B68D6FE7E91DDFF617AC2FF00287DFE002B70FF002C66FF002B65FE002C
      66FF000102290000000000000000000000000000000000000000000000060000
      001C00000041ACACACEBF3F3F3FFA25E3CFFA75F3AFEA85F3AFF946249FFE7E6
      E6FFE4E4E4FEE6E6E6FFE4E4E4FEE6E6E6FFE6E6E6FFE4E4E4FEE6E6E6FFDDDA
      D8FFA48271FEA05B38FFAE633DFFAC633DFEAE633DFFAE633DFFAC633DFEAE63
      3DFFAE633DFFAC633CFEAE633CFFAE633CFFAD633CFFAB623CFEAD623CFFAC62
      3CFFAA613BFEAB613BFFAB613BFFA8603BFEA55D39FFEAE6E5FFD4D4D4F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005545454B5D3D3D3FFE1E1E1FFEBEBEBFFF0F0F0FFF4F4F4FFF7F7
      F7FFF9F9F9FFFAFAFAFFF9F9F9FFF6F6F6FFF3F3F3FFEEEEEEFFE9E9E9FFE2E2
      E2FFDADADAFFBFC4D2FF0B44DFFF0143EAFF0145F0FF0146F5FF0147F8FF0148
      FBFF0148FCFF0148FBFF0148F8FF0146F5FF0145F0FF0043EAFF0645E3FF0943
      D3FA0002072F0000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF2F2F2FEF3F3F3FEF6F6F6FFF5F5F4FEF7F7
      F7FFF6F6F6FEF7F7F7FEF7F7F7FE9FDDF0FF3AC3EFFE8CE0F9FE6DD2F0FF3861
      6FFE232323FE232323FF222222FE222222FE1F333AFF099CCBFE0AB4EBFE0EC0
      F8FF37ACD1FE858888FE949494FF9D9D9DFEABABABFFBBBBBBFED6D6D6FEEFEF
      EFFFF8F8F8FEFAFAFAFEFDFDFDFFFBFBFBFEFBFBFBFEFCFCFCFE000000410000
      0005000000000000000000000000000000000000000000000000000000000000
      0000295A99DB4984D2FE5790D9FF6A9BDDFF7D9FDFFE688ADDFF1940CCFF0017
      ADFF0009ACFE0400BCFF1700C6FE2800CEFF3800D5FF4A00D7FE5800E0FF6600
      E6FF7700E9FEB661FEFFEBEBF0FFEDEFEDFEF0F2F0FFE0D5E6FF9B6CBDFE5A06
      A0FF6500D5FF5E00E0FE4F00DCFF3E00D7FF2E00D0FF2508D2FE736DDDFF878A
      E0FF727DCCFE37489DFF001D7AFF00277DFE002B70FF002C66FF002B65FE002C
      66FF0002053C0000000000000000000000000000000000000000000000060000
      001C00000041ADADADEBF3F3F3FFA25F3DFFA7613BFEAA613CFF935434FFD2CA
      C6FFE4E4E4FEE7E7E7FFE4E4E4FEE7E7E7FFE7E7E7FFE5E5E5FEC0AFA6FF935D
      41FFA5603BFEAF653EFFB0653EFFAE653EFEB0653EFFB0653EFFAE653EFEB065
      3EFFB0653EFFAE653EFEAF653EFFAF653EFFAF643EFFAC643EFEAE643DFFAD63
      3DFFAB633DFEAC633DFFAB623CFFA9623CFEA65F3AFFEAE7E6FFD5D5D5F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001515155EC8C8C8FBD9D9D9FEE6E6E6FEECECECFEF0F0F0FEF6F6F6FFF7F7
      F7FEF8F8F8FEF9F9F9FEF8F8F8FEF5F5F5FEF3F3F3FFECECECFEE6E6E6FEDFDF
      DFFED9D9D9FEA6B3D3FF0143E2FE0047EAFE0049EFFE004AF4FE004BF7FE004C
      FBFF004CF9FE004BF8FE004AF5FE0049F1FE0048ECFE0045E8FF0C4DE0FE0130
      9CD8000000060000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF2F2F1FEF3F3F2FEF6F6F5FFF4F4F4FEF7F7
      F7FFF6F6F6FEF7F7F6FEF7F7F7FEF9F9F9FF84D3ECFE53CCF2FE97E4FCFF74CE
      EAFE3A545DFE232323FF222222FE222222FE232323FF1C3D47FE08A4D6FE0BB6
      EDFF0EBEF6FE46A7C5FE8F8F8FFF989898FEA5A5A5FFAFAFAFFEC3C3C3FEDFDF
      DFFFF2F2F2FEFBFBFBFEFEFEFEFFFCFCFCFEFCFCFCFEFCFCFCFE000000410000
      0005000000000000000000000000000000000000000000000000000000000000
      00002966B3EE3F7ED0FE508AD5FE6293D8FE749ADDFE8EA8E5FE7187DFFE1F38
      CBFE0009BEFE0400BAFE1700C6FE2800CCFE3900D2FE4A00D7FE5900DDFE6800
      E3FEA75BF8FEEDEFEDFEEDEFEDFED6CAE0FE924EB7FE6600A0FE6D00BDFE7700
      E4FE6D00E5FE5E00DFFE4F00DAFE3F00D4FE2E00CEFE7665DDFE8986DDFE393C
      9BFE000D86FE00198DFE002289FE00277DFE002B70FE002B66FE002B65FE002B
      65FE0004094F0000000000000000000000000000000000000000000000060000
      001C00000041ADADADEBF2F2F2FEA1613EFEA8623DFEA9633DFEA25F3BFEA88B
      7CFEE5E5E5FEE5E5E5FEE5E5E5FEE5E5E5FEDEDCDBFE947361FE9B5B39FEAD65
      3FFEAF6740FEAF6740FEB06740FEB06741FEB06741FEB06741FEB06741FEB067
      41FEB06740FEAF6740FEAF6740FEAF6640FEAE6640FEAE6640FEAD653FFEAD65
      3FFEAC653FFEAB643FFEAB643EFEAA633EFEA4603CFEE9E5E4FED5D5D5F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0118929292E0D3D3D3FEE3E3E3FEEAEAEAFEEFEFEFFEF3F3F3FEF8F8F8FFF8F8
      F8FEF9F9F9FEF9F9F9FEF7F7F7FEF4F4F4FEF1F1F1FFEBEBEBFEE4E4E4FEDDDD
      DDFEDAD9D9FE688AD7FF0048E6FE004CECFE004EF1FE004EF5FE004FF8FE0050
      FCFF0050F9FE004FF7FE004EF4FE004DF0FE004BEAFE0049E6FF0E50DEFE0017
      4894000000000000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFCFFF4F4F3FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7
      F6FFF7F7F7FFF8F8F8FFF9F9F9FFFAFAFAFFF8F9F9FF71CFEDFF6AD5F6FF94E3
      FBFF77CDE7FF3A494EFF232323FF232323FF232323FF232323FF184756FF07AA
      DFFF0BB6EDFF0EC0F8FF58A4BCFF959595FF9F9F9FFFAAAAAAFFB7B7B7FFCCCC
      CCFFE5E5E5FFF7F7F7FFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFF000000410000
      0005000000000000000000000000000000000000000000000000000000000000
      0007236BC5FA3678CEFE4784D5FF578ED9FF6B93DCFE7C9BE2FF8CA1E7FF7685
      E1FF1624CCFE0000BAFF1500C5FE2300CDFF3300D4FF4600D6FE5500DEFF6400
      E6FFE0D6EFFEF0F2F0FFC4ACD6FF6704A4FE7A00CDFF8900EFFF8100EEFE7500
      EBFF6900E6FF5A00DEFE4A00DBFF3C00D6FF2C00CFFF8F83E1FE625DC1FF0006
      A7FF0011A3FE001B98FF00248AFF00287CFE002B6EFF002C66FF002B65FE002C
      66FF00060F630000000000000000000000000000000000000000000000060000
      001C00000041ADADADEBF4F4F4FFA36240FFA8633EFEAB643FFFAC643FFF9158
      3BFFDDDAD8FEE8E8E8FFE5E5E5FEE8E8E8FFE7E7E7FF926750FEAF6640FFB368
      42FFB16942FEB36942FFB46942FFB26942FEB46942FFB46942FFB26942FEB469
      42FFB46942FFB16942FEB36942FFB36842FFB26842FFB06841FEB16741FFB067
      41FFAE6640FEAF6640FFAE6540FFAB6540FEA7623DFFEBE8E6FFD5D5D5F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000013939
      3B97D0D0D0FEDDDDDDFEE8E8E8FEEEEEEEFEF2F2F2FEF5F5F5FEFAFAFAFFF9F9
      F9FEF9F9F9FEF8F8F8FEF6F6F6FEF2F2F2FEF0F0F0FFE8E8E8FEE1E1E1FEDEDE
      DEFED5D5D5FEB7C2DAFF396EE6FE014FEEFE0051F2FE0052F6FE0053F9FE0053
      FCFF0053F9FE0052F7FE0051F3FE004FEEFE004DE8FE024DE4FF0A4FD9FD0005
      1149000000000000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFBFFF1F1F1FEF2F2F1FEF5F5F4FFF3F3F3FEF6F6
      F6FFF5F5F5FEF6F6F5FEF6F6F6FEF9F9F9FFF7F7F7FEF2F6F7FE61CBEDFF76D8
      F6FE8CDFF8FE7AC4DBFF374043FE232323FE232323FF222222FE222222FE1355
      6AFF07AADFFE0BB5EBFE11BFF6FF699FB1FE9B9B9BFFA3A3A3FEAEAEAEFEBEBE
      BEFFD1D1D1FEE8E8E8FEF8F8F8FFFBFBFBFEFBFBFBFEFCFCFCFE000000410000
      0005000000000000000000000000000000000000000000000000000000000000
      01161965C8FE2C72CCFE3B7ED3FF4D88D6FF618DD9FE7494DFFF8EA3E7FFA0AC
      EAFF7981E2FE0C0DCEFF1000C3FE2000CCFF3100D1FF4200D4FE4F00DCFF6100
      EDFFEDEFEDFEF0F2F0FF8539C4FF8000E8FE8400F2FF8000F0FF7A00EAFE6E00
      E8FF6100E4FF5500DCFE4600D9FF3600D4FF2800CEFF776ECBFE7272DDFF0007
      BBFF0014A0FE001D96FF0030AFFF00287AFE002B6DFF002C66FF002B65FE002C
      66FF000916760000000000000000000000000000000000000000000000060000
      001C00000041AEAEAEEBF5F5F5FFA46341FFA96540FEAD6540FFAE6641FFA662
      3EFFA98C7EFEE8E8E8FFE6E6E6FEE8E8E8FFE8E8E8FFC6B9B2FE9D5D3BFFB46A
      44FFB36B44FEB66B44FFB66B44FFB46B44FEB66C44FFB66C44FFB46B44FEB66B
      44FFB66B44FFB46B44FEB56B44FFB56B44FFB46A44FFB26A43FEB36943FFB269
      43FFAF6842FEB06842FFAF6742FFAC6741FEA9633FFFECE9E7FFD6D6D6F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030309429696
      B8F6D7D7D7FEE5E5E5FEEBEBEBFEF0F0F0FEF4F4F4FEF7F7F7FEFBFBFBFFF9F9
      F9FEF9F9F9FEF7F7F7FEF5F5F5FEF0F0F0FEEDEDEDFFE6E6E6FEE0E0E0FEDBDB
      DBFED2D2D2FEE2E2E2FFE3E4E8FE99B4ECFE3272F2FE0456F7FE0055F9FE0056
      FCFF0056F8FE0055F6FE0054F2FE0052EDFE004FE7FE0954E2FF0340B6E90000
      0010000000000000000000000000000000000000000000000000000000000000
      00000000000400000040FCFCFBFFF1F1F0FEF1F1F1FEF4F4F4FFF3F3F3FEF6F6
      F5FFF4F4F4FEF5F5F5FEF6F6F6FEF9F9F9FFF7F7F7FEF7F7F7FEEBF4F7FF58C7
      EBFE7DDAF7FE87DEF9FF7EBACEFE333738FE232323FF222222FE222222FE2222
      22FF0E647FFE07ABE1FE0BB7EDFF15BCF1FE7BA1ACFF9F9F9FFEA9A9A9FEB6B6
      B6FFC3C3C3FED8D8D8FEEEEEEEFFF8F8F8FEFBFBFBFEFCFCFCFE000000410000
      0005000000000000000000000000000000000000000000000000000000000002
      04290E5EC6FE206BCAFE3175CEFE407FD1FE5486D6FE7B9ADFFE7E96E0FE8395
      E3FE919AE8FE878AE5FE2D23D2FE1C00C7FE2A00CDFE3900D2FE4700D8FE5400
      DBFEDFDEE5FEEDEFEDFE9D48F4FE7500E9FE7500E9FE7400E8FE6D00E5FE6400
      E1FE5800DEFE4D00D9FE3F00D4FE3100CFFE2000CAFE2A1DA2FE7A79D1FE7B82
      DAFE5E70D4FE6A83D6FE7794D6FE00308AFE002B6BFE003F8EFE002B65FE002B
      65FE000C1D8A0000000000000000000000000000000000000000000000060000
      001C00000041AEAEAEEBF3F3F3FEA36442FEAA6641FEAC6742FEAD6742FEAD68
      43FE965B3BFECFC6C1FEE6E6E6FEE6E6E6FEE6E6E6FEE7E7E7FEA68574FEAB67
      42FEB66D46FEB66D46FEB66D46FEB76E46FEB76E46FEB76E46FEB76E46FEB76E
      46FEB76D46FEB66D46FEB66D46FEB56D46FEB56C45FEB46C45FEB36B45FEB26B
      44FEB16A44FEB06A44FEAF6943FEAE6843FEA86440FEEAE7E5FED6D6D6F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000C010064CD3636
      BEFFDDDDE1FEE9E9E9FEEEEEEEFEF3F3F3FEF6F6F6FEF8F8F8FEFBFBFBFFF9F9
      F9FEF8F8F8FEF6F6F6FEF2F2F2FEEEEEEEFEEAEAEAFFE2E2E2FEE0E0E0FED3D3
      D3FED3D3D3FEE6E6E6FFEBEBEBFEF1F1F0FEEFF1F3FEBFD2F5FE74A0F7FE3376
      FAFF0E5FF7FE0256F4FE0054F0FE0052EBFE0050E5FE145CE1FF142F63AE0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFBFFF2F2F2FFF3F3F3FFF4F4F3FFF5F5F4FFF5F5
      F5FFF6F6F6FFF7F7F6FFF7F7F7FFF8F8F8FFF9F9F9FFF9F9F9FFFAFAFAFFDFF0
      F6FF54C9EEFF80DEFAFF81DCF8FF7EB2C1FF2E3030FF232323FF232323FF2323
      23FF202122FF0A7295FF07ADE3FF0BB7EEFF1BBCEFFF8BA2A9FFA7A7A7FFB1B1
      B1FFBCBCBCFFCBCBCBFFDFDFDFFFF1F1F1FFFAFAFAFFFEFEFEFF000000410000
      0005000000000000000000000000000000000000000000000000000000000004
      0A3D0256C4FF1364C7FE246FCDFF3378D0FF477ED3FE6F94DDFF7090E0FF7E93
      E4FF8794E5FE9397EAFF9493EAFE5749DCFF2400D0FF3100CFFE3C00D6FF4A00
      D8FF977EC0FEF0F2F0FFE2D8F1FF9039F6FE6E00F3FF6900F0FF791CF5FEA977
      F1FF8850EDFF4400D5FE3600D4FF2800CEFF1A00CAFF0600B9FE020590FF3D47
      A1FF7887D2FE263E91FF002680FF002E7EFE00419CFF004198FF003F91FE002C
      66FF0011269D0000000000000000000000000000000000000000000000060000
      001C00000041AFAFAFEBF6F6F6FFA66543FFAC6743FEAF6843FFB16944FFB26A
      44FFAD6843FE9A6C54FFE5E4E3FEE9E9E9FFE9E9E9FFE7E7E7FEE4E1E0FF9C6C
      53FFB36C46FEBB7048FFBC7048FFBA7048FEBC7048FFBC7048FFBA7048FEBC70
      48FFBC7048FFB97048FEBB6F48FFBA6F48FFB96E47FFB76E47FEB86D47FFB76D
      46FFB46C46FEB56B45FFB36B45FFB06A44FEAC6642FFEDEAE8FFD7D7D7F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001E7B0000B6FD0000
      C3FF6D6DDBFFEEEEEFFFF4F4F4FFF7F7F7FFFAFAFAFFFBFBFBFFFCFCFCFFFAFA
      FAFFF9F9F9FFF6F6F6FFF2F2F2FFEDEDEDFFE6E6E6FFE3E3E3FFDBDBDBFFD0D0
      D0FFDADADAFFE9E9E9FFEFEFEFFFF4F4F4FFF8F8F8FFFBFBFBFFFCFCFBFFF6F8
      FAFFDFE8F7FFBDD1F3FFA7C1EEFF9DB8E8FFA9BDE2FFC3CBDAFE191B20630000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFBFFF0F0EFFEF0F0F0FEF3F3F3FFF2F2F2FEF5F5
      F4FFF3F3F3FEF4F4F4FEF5F5F5FEF8F8F7FFF6F6F6FEF7F7F7FEF9F9F9FFF7F7
      F7FECDE9F2FE52CAEFFF7DDBF9FE7DD9F5FE7BA1ADFF2A2B2BFE232323FE2323
      23FF222222FE1C2123FE0781A9FF07ABE1FE0BB7EEFF27B7E6FE96A3A7FEADAD
      ADFFB5B5B5FEC0C0C0FED2D2D2FFE3E3E3FEF2F2F2FEFBFBFBFE000000410000
      0005000000000000000000000000000000000000000000000000000000000007
      10500050B7FF0658C3FE1766CAFF266FCDFF3777CFFE4D7DD6FF6F90DDFF7891
      E1FF7A8AE1FE848EE7FF8E8FE7FE9C99EBFF8473E6FF3710D7FE3300D2FF3C00
      D6FF3C01ADFEAB9DC7FFEFF1EFFFEDEFEDFEEEF0F0FFEEF0F0FFEDEFEDFEF0F2
      F0FFC4B5E9FF3700D1FE2A00CFFF2B0BD4FF1C0FCEFF0000B7FE000BAEFF0A21
      C7FF6C81D5FE002285FF00287CFF002B70FE002C66FF002C66FF00439AFE0030
      70FF001531B10000000000000000000000000000000000000000000000060000
      001C00000041AFAFAFEBF6F6F6FFA76645FFAD6944FEB16A44FFB36B45FFB46C
      46FFB46C46FEAB6642FFAE9283FEEAEAEAFFEAEAEAFFE8E8E8FEEAEAEAFFDAD3
      D0FF9C6649FEBA6F48FFBF724AFFBD724BFEBF734BFFBF734BFFBD734BFEBF73
      4BFFBF724AFFBB714AFEBB7049FFBD7149FFBD714AFFBA7049FEBB7048FFBA6F
      48FFB66E48FEB76D47FFB66D46FFB26C46FEAE6843FFEDEAE8FFD7D7D7F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000032900009EEF0000BFFE0000
      CFFF0301D4FE7777E4FEEFEEF4FEF7F7F7FEF9F9F9FEF9F9F9FEFBFBFBFFF7F7
      F7FEF5F5F5FEF1F1F1FEEDEDEDFEE7E7E7FEE4E4E4FFDDDDDDFDAEAEAEEDCFCF
      CFFEDEDEDEFEEBEBEBFFEEEEEEFEF3F3F3FEF7F7F7FEF9F9F9FEF9F9F9FEFBFB
      FBFFF6F6F6FEF2F2F2FEEEEEEDFEE8E8E7FEE1E1E1FEC9C9C9F5020303210000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFBFFEFEFEFFEF0F0F0FEF3F3F2FFF1F1F1FEF4F4
      F4FFF3F3F3FEF4F4F3FEF4F4F4FEF7F7F7FFF5F5F5FEF6F6F6FEF9F9F9FFF7F7
      F7FEF7F7F7FEBAE4F1FF52C9EEFE79DBF9FE7CD9F6FF758E96FE282828FE2323
      23FF222222FE222222FE172428FF058BB7FE08AEE3FF0BB6ECFE35B5DFFEA4A9
      AAFFB0B0B0FEBBBBBBFEC9C9C9FFD6D6D6FEE8E8E8FEF6F6F6FE000000410000
      000500000000000000000000000000000000000000000000000000000000000A
      16640047A4FE0051BAFE075CC4FE1864C7FE286ECAFE3A73D0FE517DD6FE5C7C
      D9FE697FDCFE7683DFFE8085E3FE8C8BE6FE9892E9FE9E90E9FE6446E1FE3300
      D7FE3700CFFE340298FE5A3B98FEA291C0FEEDEFEDFED0CCDDFEA193C0FE7663
      A7FE36178AFE2A00CDFE1F00C9FE1300C6FE120ECBFE0006B2FE000FA5FE0019
      96FE001F85FE002581FE002977FE002A6BFE002E6CFE003C8AFE00469FFE002D
      67FE001A3BC40000000000000000000000000000000000000000000000060000
      001C00000041AFAFAFEBF4F4F4FEA76746FEAF6A45FEB16B46FEB36C47FEB56D
      47FEB66E48FEB76F48FEA16240FEC6B6AEFEE8E8E8FEE8E8E8FEE8E8E8FEE8E8
      E8FED4CBC7FE9F674AFEBB724AFEC1754CFEC1754DFEC2754DFEC2754DFEC175
      4DFEBF744CFEAA6C4AFEB7917EFEA26545FEB97049FEBD734BFEBC724BFEBB71
      4AFEBA7049FEB87049FEB76F48FEB56E47FEAE6A45FEECE9E7FED8D8D8F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      00000000000000000000000000000000000400004EB40000BFFE0000CCFE0100
      D7FF0000DAFE0200DEFE5454E8FEDFDFF6FEF9F9F9FEF9F9F9FEFAFAFAFFF6F6
      F6FEF3F3F3FEEFEFEFFEEAEAEAFEE4E4E4FEE3E3E3FF7F7F7FD0686868C8D1D1
      D1FEE2E2E2FEECECECFFF0F0F0FEF4F4F4FEF8F8F8FEF9F9F9FEF9F9F9FEFAFA
      FAFFF5F5F5FEF1F1F1FEECECECFEE5E5E5FEE0E0E0FE878787CA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFBFFF1F1F0FFF2F2F1FFF2F2F2FFF3F3F2FFF4F4
      F3FFF4F4F4FFF5F5F5FFF6F6F5FFF6F6F6FFF7F7F7FFF8F8F7FFF8F8F8FFF9F9
      F9FFF9F9F9FFFAFAFAFFA4DDEFFF54CDF2FF73DBFBFF81D9F5FF6B7C82FF2626
      26FF232323FF232323FF222222FF11272EFF0496C5FF08AEE3FF0BB8EEFF45B6
      D9FFACADADFFB7B7B7FFC3C3C3FFCFCFCFFFDDDDDDFFEFEFEFFF000000430000
      000500000000000000000000000000000000000000000000000000000000000C
      1C77004092FF0048A7FE0050BDFF095CC6FF1766C8FE276ACEFF396FD3FF4B73
      D6FF5878D8FE667ADEFF727DDEFE7C81E5FF8484E7FF8E8AE8FE9C91ECFF9381
      EBFF5733DFFE3200D5FF2D00BAFF4723AAFEF0F2F0FF9282C2FF280495FE2600
      ABFF2300C3FF1E00C8FE1000C6FF120ECDFF0005BDFF000EA7FE00179FFF001F
      93FF002387FE00277DFF002A71FF002F6FFE0048A4FF003882FF002C67FE002C
      66FF001F49D70000000000000000000000000000000000000000000000060000
      001C00000041AFAFAFEBF7F7F7FFAB6947FFB16C46FEB56D47FFB86E48FFB96F
      49FFB9704AFEBD714AFFBA714AFEA16546FFD7CEC9FFE9E9E9FEEBEBEBFFEBEB
      EBFFE9E9E9FEDAD2CEFFA46F53FFBC734BFEC8784FFFC9784FFFC7784FFEC878
      4FFFBB704AFFB89C8DFEEBEBEBFFDBD3CFFFA5765EFFB26C47FEC1744CFFC074
      4CFFBD734BFEBD724AFFBC714AFFB87049FEB36B46FFEEEBE9FFD8D8D8F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      00000000000000000000000000000000135C0000BBFB0000C9FE0000D7FE0100
      DEFF0000E1FE0000E4FE0000E5FE201FEAFEA2A2F4FEF3F3F9FEFAFAF9FFF4F4
      F4FEF0F0F0FEECECECFEE6E6E6FEE2E2E2FED3D3D3F818181865ABABABEED5D5
      D5FEE5E5E5FEEDEDEDFFF1F1F1FEF5F5F5FEF8F8F8FEF9F9F9FEF9F9F9FEF9F9
      F9FFF4F4F4FEEFEFEFFEEAEAEAFEE3E3E3FEDDDDDDFE3434347E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFBFFEEEEEEFEEFEFEEFEF2F2F1FFF0F0F0FEF3F3
      F3FFF2F2F1FEF2F2F2FEF3F3F3FEF6F6F5FFF4F4F4FEF5F5F5FEF8F8F7FFF6F6
      F6FEF7F7F6FEF9F9F9FFF7F7F7FE89D3EAFE56CFF4FF6CD7F8FE84D6F0FE5E67
      6AFF242424FE232323FE232323FF202020FE0B2E39FF049CCEFE08ADE2FE0BB8
      EEFF5AB3CFFEB1B1B1FEBEBEBEFFC7C7C7FED3D3D3FEE3E3E3FE000000480000
      000700000000000000000000000000000000000000000000000000000000000E
      208A00377EFF003F92FE0048A9FF0051BCFF065BC3FE1662C9FF2667CFFF3669
      D3FF466ED4FE5572D9FF6074DBFE6A77DFFF737AE3FF7A7CE3FE8883E6FF9188
      E8FF9586E9FE8C76E9FF5435E1FF4522DAFEF0F2F0FF8C7AE3FF2100CBFE1C00
      CBFF1500C9FF0D00C1FE0200BBFF0004CAFF0011C5FF00159EFE001D96FF0023
      8CFF002680FE002975FF002B6BFF003478FE004194FF002C66FF002E69FE002C
      66FF002557EB0000000000000000000000000000000000000000000000060000
      001C00000041B0B0B0EBF7F7F7FFAD6A48FFB46D48FEB86F49FFBA704AFFBD71
      4AFFBD734BFEC1744CFFC0754DFEC0734CFFA56D50FFDDD7D4FEECECECFFECEC
      ECFFE9E9E9FEECECECFFE4E0DEFFAB816DFEB96F49FFCB7A50FFCB7B51FECB7A
      50FFA86D4FFFE4E2E0FEECECECFFECECECFFEAE9E8FFB99E91FEA76745FFC073
      4CFFC1754DFEC1744CFFBF734CFFBB724BFEB66E48FFEFEBEAFFD8D8D8F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      000000000000000000000000011800008BE10000C7FE0000D6FE0000DDFE0100
      E4FF0000E6FE0000E9FE0000EBFE0000ECFE0302ECFE4343EEFEB5B5F5FFEBEB
      F2FEF0F0EEFEE8E8E8FEE2E2E2FEE0E0E0FE5151529D1313135ECECECEFEDADA
      DAFEE6E6E6FEEEEEEEFFF1F1F1FEF6F6F6FEF8F8F8FEF9F9F9FEF9F9F9FEF8F8
      F8FFF2F2F2FEEEEEEEFEE8E8E8FEE1E1E1FED5D5D5FB0A0A0A37000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFBFFEEEEEDFEEFEFEEFEF1F1F1FFF0F0EFFEF3F3
      F2FFF1F1F1FEF2F2F1FEF2F2F2FEF5F5F5FFF4F4F3FEF4F4F4FEF7F7F7FFF5F5
      F5FEF6F6F6FEF8F8F8FFF7F7F7FEF5F7F7FE71CEEBFF57CEF3FE65D5F8FE8CD4
      EBFF4E5456FE232323FE232323FF222222FE1D1D1DFF06394AFE04A1D4FE08AF
      E4FF0DB6ECFE71B3C9FEB9B9B9FFC1C1C1FECDCDCDFEDBDBDBFE0000004E0000
      000C000000010000000000000000000000000000000000000000000000000011
      279E002F6FFE00377EFE004090FE0049A4FE004FB6FE0259C4FE115DC7FE2260
      CCFE3265CFFE4068D3FE4D69D6FE576FD9FE6170DCFE6870DEFE6F73E0FE7875
      E1FE7E79E2FE827BE4FE857CE5FE7F76D8FE60568EFE3829A9FE1000C5FE0B00
      C0FE0400BBFE0000B5FE0007AFFE000EA8FE0018A0FE001C95FE00228CFE0025
      82FE002978FE002B6EFE002B66FE002C66FE003C88FE00469FFE003E8CFE002C
      66FE002A63FC0000000200000000000000000000000000000000000000060000
      001C00000041B0B0B0EBF6F6F6FEAD6C49FEB76F49FEB9714AFEBC724BFEBE74
      4CFEC0754DFEC3764EFEC5774FFEC77950FEC2764EFEA77256FEDFDAD7FEEAEA
      EAFEEAEAEAFEEAEAEAFEEAEAEAFEEAEAEAFEC3ADA1FEAA6D4DFEC6784FFEBE73
      4CFEC3ADA1FEEAEAEAFEEAEAEAFEEAEAEAFEEAEAEAFEEAEAEAFED7CDC9FEA677
      5EFEB66F49FEC2764EFEC1764DFEBF744CFEB87049FEEDEAE8FED9D9D9F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      00000000000000000001000032980100C6FE0100D5FF0100E0FF0100E5FF0100
      EAFF0100EDFF0100F0FF0100F1FF0100F2FF0100F1FF0000EFFF0403EBFF2B2B
      EAFF6F6EE8FFA2A2E4FFBCBCE2FF8B8BAAE20202021E444446A6CFCFCFFFE0E0
      E0FFE9E9E9FFEFEFEFFFF4F4F4FFF8F8F8FFFAFAFAFFFBFBFBFFFAFAFAFFF7F7
      F7FFF3F3F3FFEEEEEEFFE7E7E7FFE2E2E2FFA3A3A3DE00000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFBFFEFEFEFFFF0F0EFFFF1F1F0FFF1F1F1FFF2F2
      F1FFF3F3F2FFF3F3F3FFF4F4F3FFF5F5F4FFF5F5F5FFF6F6F5FFF6F6F6FFF7F7
      F6FFF7F7F7FFF8F8F8FFF8F8F8FFF9F9F9FFF2F6F7FF5CC8EAFF54D1F7FF5DD4
      F9FF90CEE2FF404344FF232323FF232323FF232323FF181818FF03475EFF04A5
      D9FF08AFE4FF0FB8EDFF86B7C6FFBEBEBEFFC9C9C9FFD7D7D7FF000000540000
      0013000000040000000000000000000000000000000000000000000000000015
      31B1002C66FF002F6EFE00367CFF003E8FFF00469FFE004DB2FF0054C2FF0D58
      C7FF1B5CCAFE295ED0FF365FD1FE4263D5FF4D64D8FF5467D9FE5C68DBFF6169
      DEFF656ADDFE6869E0FF6B69E1FF6968DBFE6260C6FF6362D2FF5756DBFE2C2F
      D5FF0810CCFF000BAEFE0013A5FF00189DFF001E95FF00218AFE002685FF0028
      7AFF002B70FE002C67FF002C66FF002B65FE002C66FF003985FF002B65FE002C
      66FF002C66FF0000001200000000000000000000000000000000000000060000
      001C00000041B0B0B0EBF8F8F8FFB26D4AFFBA714AFEBF734BFFC1744DFFC476
      4EFFC5774FFECA7950FFCA7A51FECE7B51FFD07D52FFC87950FEAE7558FFE0D9
      D5FFEAEAEAFEEDEDEDFFEDEDEDFFEAEAEAFEEDEDEDFFE4DFDDFFB89785FE9A6D
      56FFEBEAEAFFEAEAEAFEEDEDEDFFEDEDEDFFEDEDEDFFEAEAEAFEEDEDEDFFEBEA
      EAFFBCA294FEB36E4AFFC8784FFFC4774EFEBD724BFFEFECEAFFD9D9D9F70000
      00480000001E0000000800000000000000000000000000000000000000000000
      000000000000000009420000B9F70000CDFE0000DDFE0000E3FE0000E8FE0100
      EFFF0000F0FE0000F2FE0000F3FE0000F2FE0000F0FE0000EEFE0100ECFF0000
      E6FE0000E0FE0C0BDCFE1F1ED4FC07071E620000000B818181DBCECECEFEDFDF
      DFFEE7E7E7FEEFEFEFFFF1F1F1FEF6F6F6FEF8F8F8FEF8F8F8FEF7F7F7FEF5F5
      F5FFEFEFEFFEEAEAEAFEE3E3E3FEDEDEDEFE4D4D4D9900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FBFBFAFFEDEDECFEEDEDEDFEF0F0EFFFEFEFEEFEF1F1
      F1FFF0F0EFFEF1F1F0FEF1F1F1FEF4F4F3FFF2F2F2FEF3F3F3FEF6F6F5FFF4F4
      F4FEF4F4F4FEF7F7F7FFF5F5F5FEF6F6F6FEF8F8F8FFE4F0F3FE4AC1E7FE52D1
      F8FF57D0F6FE8DC1D2FE333535FF232323FE232323FF222222FE121213FE0159
      76FF05A4D8FE08ADE2FE15B8EBFF99B9C3FEC2C2C2FED0D0D0FE000000590000
      00190000000A0000000200000000000000000000000000000000000000000010
      2582003172FF003376FE003882FF003C90FF0046A0FE004DB2FF0054C3FF0059
      D2FF005DE2FE0A5CECFF195DEAFE275EEEFF315FEEFF3B60EAFE4460EDFF4961
      EDFF4E5FE9FE5461E9FF555FE8FF565EE4FE555DE5FF515BE4FF4E5BDFFE4A59
      DFFF4256DCFF3951D6FE1B3DD1FF002CC8FF002AAAFF002B8EFE002B7EFF002C
      74FF002D6CFE002E69FF002D69FF002D69FE002E69FF002D6AFF002D6AFE002D
      6AFF00214DD20000000400000000000000000000000000000000000000060000
      001C00000041B1B1B1EBF8F8F8FFB56F4BFFBD734CFEC2754DFFC6774EFFC978
      4FFFCA7A50FECF7C51FFCF7D53FED37E54FFD58154FFD58055FED27E53FFB375
      55FFD8CDC7FEEDEDEDFFEDEDEDFFEBEBEBFEEDEDEDFFEDEDEDFFECECECFEECEC
      EBFFEDEDEDFFEBEBEBFEEDEDEDFFEDEDEDFFEDEDEDFFEBEBEBFEEDEDEDFFEDED
      EDFFEBEBEBFEBE9681FFCA7950FFC97950FEC3744DFFF0EDEBFFDADADAF70000
      00480000001E0000000800000000000000000000000000000000000000000000
      000000000004000065C70100CBFF0000D9FE0000E2FE0000E8FE0000EDFE0100
      F3FF0000F3FE0000F5FE0000F5FE0000F4FE0000F2FE0000EEFE0100ECFF0000
      E5FE0201DFFE2524DEFE06056EB800000007000001149A9A9AE8CFCFCFFEDFDF
      DFFEE6E6E6FEEEEEEEFFF0F0F0FEF4F4F4FEF6F6F6FEF6F6F6FEF4F4F4FEF3F3
      F3FFECECECFEE7E7E7FEE0E0E0FED8D8D8FD1515155000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FAFAFAFFEEEEEDFFEFEFEEFFF0F0EFFFF0F0F0FFF1F1
      F0FFF1F1F1FFF2F2F2FFF3F3F2FFF3F3F3FFF4F4F3FFF4F4F4FFF5F5F5FFF5F5
      F5FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8F7FFF8F8F8FFD9EDF3FF3ABF
      EAFF4FD1F9FF52D0F6FF85B2C0FF2A2B2BFF232323FF232323FF202020FF0C0E
      0EFF016C90FF05A6DAFF08AFE5FF20B8E8FFACBFC5FFCDCDCDFF0000005C0000
      001F000000100000000600000001000000000000000000000000000000000000
      0004181B1E642A2F337B3034397B33363B7B33363B7B32363B7B32363B7B3236
      3B7B32353B7B32353A7B3234397B3234397B3234387B3133387B3133377B3133
      377B3132367B3031357B3031347B2F30347B2F30337B2E30337B2E2F327B2D2E
      317B2C2E317B2B2D307B2A2C2F7B2A2C2E7B282B2E7B272A2D7B26292C7B2528
      2B7B24282A7B24272A7B2327297B2327297B2427297B26292C7B292D2F7B1E20
      2370000000110000000000000000000000000000000000000000000000060000
      001C00000041B1B1B1EBF9F9F9FFB8714CFFC1754DFEC7774FFFCB7950FFCE7B
      51FFCF7D53FED48054FFD57F55FED98356FFDB8457FFDC8458FEDF8758FFDD85
      57FFBC7550FECEB7ACFFEEEEEEFFEBEBEBFEEEEEEEFFEEEEEEFFEBEBEBFEEEEE
      EEFFEEEEEEFFEBEBEBFEEEEEEEFFEEEEEEFFEEEEEEFFEBEBEBFEEEEEEEFFEEEE
      EEFFEAEAE9FEB3795CFFD17D53FFCE7C52FEC7774EFFF1EDEBFFDADADAF70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000006370000C3FC0100D2FF0000DFFE0000E6FE0000ECFE0000F1FE0100
      F6FF0000F6FE0000F7FE0000F7FE0000F5FE0000F2FE0000EEFE0100EBFF0000
      E4FE1716E0FE1212BFEF000007310000000000000011919191E4CDCDCDFEDCDC
      DCFEE3E3E3FEEBEBEBFFEEEEEEFEF1F1F1FEF3F3F3FEF3F3F3FEF1F1F1FEEFEF
      EFFFE8E8E8FEE2E2E2FEDDDDDDFEBABABAED0101011500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FAFAFAFFECECEBFEECECEBFEEFEFEEFFEDEDEDFEF0F0
      F0FFEFEFEEFEEFEFEFFEF0F0EFFEF3F3F2FFF1F1F1FEF2F2F1FEF4F4F4FFF2F2
      F2FEF3F3F3FEF6F6F5FFF4F4F4FEF4F4F4FEF7F7F7FFF5F5F5FEF5F5F5FEC5E5
      EFFF31BCE9FE4ACEF7FE4FCEF5FF749AA6FE262626FF222222FE222222FE1E1E
      1EFF060D0FFE017BA1FE05A6DAFF08ADE3FE2DB6E3FEBBC6C9FE000000600000
      0024000000150000000A00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001C00000041B1B1B1EBF7F7F7FEBA734EFEC6774EFECA7950FECE7C52FED17E
      53FED47F54FED88156FEDB8357FEDD8458FEE08659FEE2875AFEE4895BFEE68A
      5CFEE5895CFECF7D52FEC09680FEE7E4E2FEECECECFEECECECFEECECECFEECEC
      ECFEECECECFEECECECFEECECECFEECECECFEECECECFEECECECFEECECECFEECEC
      ECFEC6AC9FFEC87950FED78055FED47F54FECB7A50FEEFECEAFEDADADAF70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000020720001C7FE0101D9FF0001E2FE0001E8FE0001EDFE0001F3FE0101
      F8FF0001F8FE0001F8FE0001F7FE0001F4FE0001F1FE0001EDFE0001E9FF0707
      E1FE2424DEFE01013681000000000000000000000003626263C3C9C9C9FED9D9
      D9FEE0E0E0FEE7E7E7FFEAEAEAFEEDEDEDFEEFEFEFFEEEEEEEFEECECECFEEBEB
      EBFFE4E4E4FEDEDEDEFEDADADAFE6A6A6AB50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FAFAFAFFEBEBEAFEECECEBFEEEEEEEFFEDEDECFEF0F0
      EFFFEEEEEDFEEFEFEEFEEFEFEFFEF2F2F1FFF0F0F0FEF1F1F0FEF3F3F3FFF2F2
      F1FEF2F2F2FEF5F5F4FFF3F3F3FEF4F4F3FEF6F6F6FFF4F4F4FEF5F5F4FEF7F7
      F7FFAADBEAFE2ABCEAFE45CFFAFF4DCAF2FE61828CFF232323FE222222FE2222
      22FF191919FE021116FE0289B5FF05A4D8FE08ADE3FE40BCE3FF000000650000
      0028000000190000000F00000006000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001C00000041B2B2B2EBFAFAFAFFC0754FFFCB7A50FED17C52FFD58053FFD982
      55FFDB8256FEE08658FFE18659FEE68A5BFFE98C5CFFE98B5DFEEE8F5EFFF090
      5FFFF08F5FFEF39260FFE88B5CFFC47F5EFED7C2B8FFEFEFEFFFECECECFEEFEF
      EFFFEFEFEFFFECECECFEEFEFEFFFEFEFEFFFEFEFEFFFECECECFEEFEFEFFFDBCD
      C6FFC07751FEE18758FFE08658FFDA8256FED37D53FFF2EEECFFDBDBDBF70000
      00480000001E0000000800000000000000000000000000000000000000000000
      0000000132880002C7FE0103DBFF0305E1FE0306E8FE0306EDFE0306F1FE0306
      F7FF0306F6FE0306F6FE0205F4FE0103F1FE0003EDFE0003E9FE0103E5FF2224
      E1FE070890D00000000F0000000000000000000000001B1B1B6FC6C6C6FED5D5
      D5FEDCDCDCFEE3E3E3FFE5E5E5FEE8E8E8FEEAEAEAFEE9E9E9FEE8E8E8FEE6E6
      E6FFDFDFDFFEDADADAFED4D4D4FD1F1F1F620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000040FAFAFAFFEDEDECFFEDEDECFFEEEEEDFFEEEEEEFFEFEF
      EEFFF0F0EFFFF0F0EFFFF1F1F0FFF1F1F1FFF2F2F1FFF2F2F2FFF3F3F2FFF3F3
      F3FFF4F4F3FFF4F4F4FFF5F5F4FFF5F5F5FFF5F5F5FFF6F6F5FFF6F6F6FFF6F6
      F6FFF6F7F6FF90D3E8FF25BEEEFF3ECEFAFF4BC9F1FF4F676EFF232323FF2323
      23FF222222FF131313FF001921FF0294C4FF05A7DAFF08B0E5FF023C4DB80000
      002D0000001E0000001300000009000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001C00000041B2B2B2EBFAFAFAFFC57750FFD07C52FED78054FFDB8355FFDF85
      57FFE18659FEE78A5BFFE88B5CFEEE8E5DFFF1905EFFF19060FEF69461FFF895
      62FFF79463FEFA9763FFFA9864FFF49463FEDD8859FFC79477FFDDD1CAFEEFEF
      EFFFEFEFEFFFEDEDEDFEEFEFEFFFEFEFEFFFEFEFEFFFEDEDEDFED8C5BCFFC97C
      56FFE88A5CFEEA8D5CFFE78A5BFFE18659FED98255FFF2EFECFFDBDBDBF70000
      00480000001E0000000800000000000000000000000000000000000000000000
      00000001277B0005C8FF0C10DBFF0F14E3FF0F14E9FF0F14EEFF0F14F2FF0F15
      F5FF0F15F6FF0F15F6FF0F15F4FF0B10F0FF0106EBFF0005E6FF1216E2FF1A1E
      D1F8000010460000000000000000000000000000000000000012787878D4CFCF
      CFFFD9D9D9FFDEDEDEFFE2E2E2FFE5E5E5FFE6E6E6FFE5E5E5FFE3E3E3FFE0E0
      E0FFDCDCDCFFDDDDDDFF939393D60000000E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041FAFAFAFFEAEAE9FEEAEAE9FEEDEDECFFECECEBFEEEEE
      EDFFEDEDECFEEDEDEDFEEEEEEDFEF0F0F0FFEFEFEEFEEFEFEFFEF2F2F1FFF0F0
      F0FEF1F1F0FEF3F3F3FFF2F2F1FEF2F2F2FEF4F4F4FFF3F3F2FEF3F3F3FEF5F5
      F5FFF4F4F3FEF4F4F4FE71C9E5FF23BDEEFE37CCF9FF47C2E8FE3E5157FE2323
      23FF222222FE212121FE0C0C0CFF002532FE0298C9FE05A7DBFF06AADEFC011E
      279000000023000000180000000D000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001C00000041B2B2B2EBF8F8F8FEC77A52FED67E53FEDB8156FEDF8458FEE487
      59FEE88A5BFEEC8C5DFEF08E5FFEF49160FEF79362FEF89563FEF99764FEF998
      65FEF99966FEF99A66FEF99B67FEF99C68FEF99C68FEF29965FED5875AFEC79A
      7FFEDDD2CBFEEEEEEEFEEDEDEDFEEDEDEDFEEDEDECFECDAD9BFED58156FEF491
      61FEF49160FEF08F5FFEED8C5DFEE88A5BFEDE8457FEF1EDEBFEDBDBDBF70000
      00480000001E0000000800000000000000000000000000000000000000000000
      000000000B4A0007C3FD1D23DBFF2026E0FE2026E6FE2027EAFE2027EEFE2027
      F2FF2027F1FE2027F0FE2027EEFE2027EBFE0D15E5FE040CE0FE272EE0FF0104
      519D00000002000000000000000000000000000000000000000008080839A0A0
      A0E9D3D3D3FED9D9D9FFD9D9D9FEDCDCDCFEDDDDDDFEDCDCDCFEDADADAFEDADA
      DAFFDCDCDCFEBDBDBDF00C0C0C3F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041FAFAF9FFE9E9E8FEEAEAE9FEECECECFFEBEBEAFEEEEE
      EDFFECECEBFEEDEDECFEEDEDECFEF0F0EFFFEEEEEEFEEFEFEEFEF1F1F1FFF0F0
      EFFEF0F0F0FEF3F3F2FFF1F1F0FEF1F1F1FEF4F4F3FFF2F2F2FEF2F2F2FEF5F5
      F4FFF3F3F2FEF3F3F3FEF1F3F4FF55BFE1FE22C1F2FF2EC7F6FE42B8DDFE323F
      43FF222222FE222222FE1E1E1EFF060606FE003648FE039FD1FF02A1D4FC06A8
      DBFA000F13720000001D00000012000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001B00000041B3B3B3EBFBFBFBFFCF7C54FFDC8256FEE38758FFE88A5AFFED8D
      5CFFEF8E5EFEF69260FFF89362FEFC9863FFFC9A65FFFA9A66FEFC9D67FFFC9F
      68FFFA9F69FEFCA26AFFFCA36BFFFAA26CFEFCA56CFFFCA56CFFF9A26CFEF4A0
      69FFD98E5DFFC8977AFED5BEAFFFD8C2B4FFCA9574FFE58F5FFEFB9B66FFFC9B
      65FFFA9664FEFB9662FFF79360FFF08E5EFEE78A5AFFF4F0EEFFDBDBDBF70000
      00480000001E0000000700000000000000000000000000000000000000000000
      00000000000B01078EE12630D8FF323CE0FE313CE4FE313CE8FE313CEBFE313C
      EFFF313CEDFE313CEDFE313CEBFE313CE8FE2630E3FE1E29DEFE0F13AAE30000
      031E000000000000000000000000000000000000000000000000000000000606
      0635717171CBCFCFCFFCDADADAFED9D9D9FED8D8D8FED8D8D8FEDCDCDCFEDEDE
      DEFEA3A3A3E00F0F0F4600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041F9F9F9FFEAEAE9FFEBEBEAFFECECEBFFECECEBFFEDED
      ECFFEEEEEDFFEEEEEDFFEFEFEEFFEFEFEEFFF0F0EFFFF0F0EFFFF1F1F0FFF1F1
      F0FFF1F1F1FFF2F2F1FFF2F2F2FFF3F3F2FFF3F3F2FFF3F3F3FFF4F4F3FFF4F4
      F3FFF4F4F4FFF4F4F4FFF5F5F4FFEAF0F2FF3BBAE2FF20C1F4FF25C5F7FF3CAD
      D1FF293133FF232323FF222222FF191919FF020202FF004A62FF009ACBFB02A0
      D4FB069FD0F500060856000000160000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      001A0000003FB1B1B1EAFBFBFBFFD58156FFE28558FEE98B5AFFEF8E5DFFF591
      5FFFF89261FEFC9763FFFB9864FEFD9D66FFFDA068FFFB9F6AFEFDA36BFFFDA5
      6CFFFBA56EFEFDA86EFFFDA96FFFFBA870FEFDAB70FFFDAB71FFFBA971FEFDAB
      70FFFCAA70FFF6A46DFEEE9F68FFED9D67FFF8A26BFFFBA26CFEFDA26AFFFDA0
      69FFFB9C67FEFD9B65FFFD9863FFF89361FEEF8E5DFFF4F0EEFFDBDBDBF70000
      00460000001D0000000700000000000000000000000000000001000000010000
      00010000000105061A64131DC6FC4B55E0FE4752E3FE4753E6FE4753E9FE4752
      EDFF4753EBFE4752EAFE4752E9FE4753E6FE4651E2FE242ED5FC080920640000
      0001000000010000000100000001000000010000000100000001000000010000
      00010000000A14141453535353A5A2A2A2DFBFBFBFF0BBBBBBED888888CC2F2F
      2F7A010101160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041F9F9F9FFE8E7E6FEE8E8E7FEEBEBEAFFEAEAE9FEECEC
      EBFFEBEBEAFEEBEBEAFEECECEBFEEEEEEEFFEDEDECFEEDEDECFEF0F0EFFFEEEE
      EDFEEFEFEEFEF1F1F0FFEFEFEFFEF0F0EFFEF2F2F1FFF0F0F0FEF1F1F0FEF3F3
      F2FFF1F1F1FEF1F1F1FEF4F4F3FFF2F2F1FEDFEBEFFF27B4E0FE1EC0F3FE1EC2
      F6FF359BBCFE25292AFE232323FF222222FE131313FE000000FF005A79FD0099
      CBFA02A0D4FB057DB2EC000002420000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000050000
      001700000039AFAFAFE9F8F8F8FED5845DFEE9895AFEEF8C5CFEF5905FFEFA94
      61FEFB9764FEFB9A66FEFB9E68FEFBA16AFEFBA36CFEFBA66EFEFBA86FFEFBAA
      71FEFBAB72FEFBAD73FEFBAE74FEFBAF74FEFBAF75FEFBB075FEFBB075FEFBAF
      75FEFBAF75FEFBAE74FEFBAD73FEFBAC72FEFBAB71FEFBA970FEFBA76EFEFBA4
      6DFEFBA26BFEFB9F69FEFB9C67FEFB9864FEF09060FEF2F0EFFEDBDBDBF70000
      0040000000190000000600000000000000000000000000000002000000020000
      00020000000200000005111342952732CEFC626DE3FE5C68E5FE5A67E7FE5B67
      EAFF5B67E8FE5A67E8FE5A67E6FE6874E6FE545FDFFE161A57A4000000070000
      0002000000020000000200000002000000020000000200000002000000020000
      000200000002000000000000000000000003010101140000000E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041F9F9F9FFE7E6E5FEE7E7E6FEEAEAE9FFE9E9E8FEEBEB
      EBFFEAEAE9FEEBEBEAFEEBEBEAFEEEEEEDFFECECEBFEECECECFEEFEFEEFFEDED
      EDFEEEEEEDFEF0F0F0FFEFEFEEFEEFEFEEFEF1F1F1FFEFEFEFFEF0F0EFFEF2F2
      F2FFF0F0F0FEF0F0F0FEF3F3F2FFF1F1F0FEF3F3F3FFCAE2E9FE1BB2E2FE1DC3
      F7FF1BBEF2FE2D87A4FE232425FF222222FE212121FE0D0D0DFF000204FE006C
      90FC007FC2FA00129DFE00006EE30000012A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      00120000002E9B9B9BE0FEFEFEFFCDA693FFD78258FEE88A5AFFEC8D5CFFED91
      5FFFEB9261FEED9763FFEB9865FEED9D67FFEDA069FFEBA06BFEEDA56CFFEDA6
      6EFFEBA66FFEEDAA70FFEDAB71FFEBAA71FEEDAD72FFEDAD72FFEBAB72FEEDAD
      72FFEDAC72FFEBAA71FEEDAB70FFEDA970FFEDA76EFFEBA46DFEEDA46CFFEDA1
      6AFFEB9D68FEED9C66FFED9964FFE49162FED2A38AFFFDFDFDFFC6C6C6EF0000
      0034000000140000000400000000000000000000000000000004000000040000
      00040000000400000004000000070F1028711F2AB4ED5B69E0FE7681E7FE7481
      E9FF737EE7FE7D87E8FE8993E9FE5A63D9FB191D519F0000000F000000040000
      0004000000040000000400000004000000040000000400000004000000040000
      0004000000040000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041F9F9F8FFE8E7E6FFE9E8E7FFE9E9E8FFEAEAE9FFEBEB
      EAFFEBEBEAFFECECEBFFECECEBFFEDEDECFFEDEDECFFEEEEEDFFEEEEEDFFEFEF
      EEFFEFEFEEFFEFEFEFFFF0F0EFFFF0F0EFFFF1F1F0FFF1F1F0FFF1F1F0FFF1F1
      F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F2FFF2F2F2FFF2F2F2FFB7DCE7FF12B3
      E6FF1FC5F8FF1ABEF2FF24728BFF232323FF232323FF1E1E1EFF070707FF0008
      3AFE020CB4FE03039AFF040497FF04044CB20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      000B0000001F23232393FFFFFFFFFEFEFEFFEFEFEFFEEAEAEAFFEAEAEAFFEAEA
      EAFFE8E8E8FEEAEAEAFFE8E8E8FEEAEAEAFFEAEAEAFFE8E8E8FEEAEAEAFFEAEA
      EAFFE8E8E8FEEAEAEAFFEAEAEAFFE8E8E8FEEAEAEAFFEAEAEAFFE8E8E8FEEAEA
      EAFFEAEAEAFFE8E8E8FEEAEAEAFFEAEAEAFFEAEAEAFFE8E8E8FEEAEAEAFFEAEA
      EAFFE8E8E8FEEAEAEAFFEAEAEAFFEDEDEDFEFEFEFEFFFFFFFFFF373737A60000
      00220000000D0000000200000000000000000000000000000005000000050000
      00050000000500000005000000050000000402020426151A45942531A2E0404E
      CEF84D5AD1F83F4CBDEE1E256CB6090A124C0000000600000005000000050000
      0005000000050000000500000005000000050000000500000005000000050000
      0005000000050000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041F9F8F8FFE5E4E3FEE6E5E4FEE8E8E7FFE7E7E6FEEAEA
      E9FFE8E8E7FEE9E9E8FEEAEAE9FEECECEBFFEAEAEAFEEBEBEAFEEDEDEDFFECEC
      EBFEECECEBFEEFEFEEFFEDEDECFEEDEDECFEF0F0EFFFEEEEEDFEEEEEEDFEF0F0
      F0FFEFEFEEFEEFEFEEFEF1F1F0FFEFEFEFFEF1F1F1FFEFEFEFFEEFEFEFFE9FD3
      E3FF0EB2E7FE20C3F7FE17BCF0FF1E5C70FE222222FE232323FF171753FE0202
      BCFE0000C3FF0404AEFE1717A9FE0000439C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000500000011000000252020208E989898DDB0B0B0E7B2B2B2E8B2B2B2E8B2B2
      B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2
      B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2
      B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2B2E8B2B2
      B2E8B2B2B2E8B2B2B2E8B2B2B2E8B0B0B0E79F9F9FE02B2B2B9A0000002A0000
      0012000000060000000100000000000000000000000000000007000000070000
      00070000000700000007000000070000000700000007000000050000000B0202
      021E020203220000001100000006000000070000000700000007000000070000
      0007000000070000000700000007000000070000000700000007000000070000
      0007000000070000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000500000041F8F8F8FFE4E3E2FEE5E4E3FEE8E7E6FFE6E6E5FEE9E9
      E8FFE7E7E6FEE8E8E7FEE9E9E8FEEBEBEAFFEAEAE9FEEAEAE9FEEDEDECFFEBEB
      EAFEEBEBEBFEEEEEEDFFECECEBFEECECECFEEFEFEEFFEDEDECFEEDEDEDFEF0F0
      EFFFEEEEEDFEEEEEEDFEF0F0F0FFEEEEEEFEF1F1F0FFEFEFEEFEEFEFEEFEF1F1
      F0FF7FC7DDFE0FB5EAFE21C6F9FF13B4E7FE1B4B5AFE26266EFF1919D1FE0A0A
      C9FE0C0CBBFF0101B0FE0101B2FA000007320000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000070000000F00000019000000240000002B0000002E0000002F0000
      002F0000002F0000002F0000002F0000002F0000002F0000002F0000002F0000
      002F0000002F0000002F0000002F0000002F0000002F0000002F0000002F0000
      002F0000002F0000002F0000002F0000002F0000002F0000002F0000002F0000
      002F0000002F0000002F0000002E0000002B000000250000001A000000100000
      0007000000020000000000000000000000000000000000000009000000090000
      0009000000090000000900000009000000090000000900000009000000090000
      0009000000090000000900000009000000090000000900000009000000090000
      0009000000090000000900000009000000090000000900000009000000090000
      0009000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000050000003EFEFEFEFFF6F6F6FEF6F6F6FEF9F9F8FFF7F7F6FEF9F9
      F9FFF7F7F7FEF7F7F7FEF7F7F7FEFAFAF9FFF8F8F7FEF8F8F7FEFAFAFAFFF8F8
      F8FEF8F8F8FEFAFAFAFFF8F8F8FEF8F8F8FEFBFBFAFFF8F8F8FEF8F8F8FEFBFB
      FBFFF9F9F8FEF9F9F8FEFBFBFBFFF9F9F9FEFBFBFBFFF9F9F9FEF9F9F9FEFBFB
      FBFFF7F8F8FE68C3E1FE12BAEFFF21C5F9FF297DD9FF3434E3FF2424DEFF2E2E
      C8FF1919B8FF0808BDFF06063384000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000100000004000000070000000B0000000E0000000F000000100000
      0010000000100000001000000010000000100000001000000010000000100000
      0010000000100000001000000010000000100000001000000010000000100000
      0010000000100000001000000010000000100000001000000010000000100000
      001000000010000000100000000F0000000E0000000B00000008000000040000
      000100000000000000000000000000000000000000000000000C0000000C0000
      000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000
      000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000
      000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000
      000C0000000C0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000002000000160000002A0000002B0000002B0000002B0000002B0000
      002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
      002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
      002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
      002B0000002B0000002E024156B83A82E1FE4E4ED0FE4343D2FF2929D4FE0A0A
      B8FE1616C1FE15154C9D00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000100000001000000020000
      0002000000020000000200000002000000020000000200000002000000020000
      0002000000020000000200000002000000020000000200000002000000020000
      0002000000020000000200000002000000020000000200000002000000020000
      0002000000020000000200000001000000010000000100000000000000000000
      000000000000000000000000000000000000000000000000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
      000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
      000F0000000F0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000F343685C95656D5FE4E4EC6FF2525C5FE5050
      C8F81212327E0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010112010101120101
      0112010101120101011201010112010101120101011201010112010101120101
      0112010101120101011201010112010101120101011201010112010101120101
      0112010101120101011201010112010101120000001200000012000000120000
      0012000000120000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000021C2D2D93D93A3AA9E7262657A30202
      062F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010115010101150101
      0115010101150101011501010115010101150101011501010115010101150101
      0115010101150101011501010115010101150101011501010115010101150101
      0115010101150101011501010115010101150101011501010115010101150101
      0115010101150000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000F000000290000003B00000041000000410000
      0041000000410000004100000041000000410000004100000041000000410000
      0041000000410000004100000041000000410000004100000041000000410000
      0041000000410000004100000041000000410000004100000041000000410000
      00410000004100000041000000410000003B000000290000000F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040000
      0000000000076E4830BB956142DA0604022D0000000000000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000150000005E05121CB409325EDE0C4989ED0E5593EF0F5694EF0F56
      93EF0F5694EF0F5694EF0F5694EF0F5693EF0F5694EF0F5694EF0F5693EF0F56
      94EF0F5694EF0F5693EF0F5694EF0F5694EF0F5693EF0F5694EF0F5694EF0F56
      93EF0F5694EF0F5694EF0F5693EF0F5694EF0F5693EF0F5694EF0F5694EF0F56
      93EF0F5694EF0F5693EF0E5092EF0B4789ED09325EDE05131CB40000005E0000
      0015000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000000000000000D07
      044B773F28DDCA8258FFCF885BFF8C4C31ED1209065800000000000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001D00000081000000BE0000
      00CB000000CB000000CB000000CB000000CB000000CB000000CB000000CB0000
      00CB000000CB000000CB000000CB000000CB000000CB000000CB000000CB0000
      00CB000000CB000000CB000000CB000000CB000000CB000000CB000000CB0000
      00CB000000CB000000BE000000810000001D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003006131AAF2FA3D4F81E9FFCFF0873E9FF0876E7FE0D88F0FF0D87EEFE0F8A
      F1FF0D87EEFE0D87EEFE0D87EEFE0F8AF2FF0D87EEFE0D87EEFE0F8AF2FF0E87
      EEFE0D88EEFE0D8AF2FF0E88EEFE0D87EEFE0F8AF2FF0D87EEFE0D87EEFE0F8A
      F2FF0D87EEFE0D87EEFE0F8AF2FF0D87EEFE0E8AF2FF0D88EEFE0D88EEFE0E8A
      F2FF0D87EEFE0E86EFFE0A7DECFF0773E6FE0772E9FF1FA3FDFF2EA4D4F80511
      19AF000000300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000002000000000000000D2E170F959B4F
      32FF9E5335FFC78257FDCD865CFEA45A3AFF9A4F32FF2B160E87000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000061000000F3020202FF2C2B2AFF3E3D
      3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D
      3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D
      3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D3CFF3E3D
      3CFF3E3D3CFF2C2B2AFF020202FF000000F30000006100000000000000000000
      00000000000000000000000000000000000000000000000000000000002D092C
      49CD22B3FFFF2FC5FFFF1895EDFF066EE1FF0671E5FF0B83EAFF0D86ECFF0D86
      ECFF0D86ECFF0D85EBFF0D85EBFF0C84EAFF0C83E8FF0C83E7FF0B81E7FF0C82
      E7FF1C8CE8FF2690E9FF1385E7FF0A81E7FF0B82E7FF0C82E7FF0C82E7FF0B82
      E7FF0C82E7FF0C82E7FF0B82E7FF0B81E7FF0D83E7FF1A8AE8FF1889E8FF0C82
      E7FF0C82E7FF0B80E6FF0875E1FF056CDFFF056CDFFF1B98EEFF2FC5FFFF1AA5
      FFFF0B2D49CD0000002D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000000000B050344713B25D89B5034FF974C
      32FD9D5336FDCA8358FFCE875BFFA2583AFD964D31FC984D31FF4F291BB60100
      0015000000000000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000059000000FD393837FFC2BEBBFFE2DEDAFFE2DF
      DBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DF
      DBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DF
      DBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DFDBFFE2DF
      DBFFE2DFDBFFE2DEDAFFC2BEBBFF393837FF000000FD00000059000000000000
      00000000000000000000000000000000000000000000000000110D232AB01597
      FEFF1DA4F3FE34C0F8FD3BA7F1FF2795EAFD269CECFD29A5F3FF2AA3EFFD2AA6
      F3FF2AA4EFFD2AA3EEFD2AA2EDFD2CA3EFFF2C9EE7FD2D9CE5FD2D9EE9FF399E
      E5FD6DB3EAFD94C8F2FF4DA5E6FD319DE4FD2E9EE8FF2E9CE4FD2E9CE4FD2E9E
      E8FF2E9CE4FD2E9CE4FD2E9EE8FF2E9DE4FD40A1E9FF73B7EBFD6AB2EAFD39A0
      E9FF2C9CE5FD299BE5FD279CE8FF2595E5FD218FE1FD31A4ECFF31BEF5FD1496
      EFFE1FA4FFFF0F252BB000000011000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00110B0B0B57383838A3BBBBBBE6FFFFFFFF0E0E0E5800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000003000000000000000929160D8D9A5033FF944B32FFB66636FCBD6B
      38FE9A5034FFC98259FECD865CFEA35939FF9C5334FEB36941FB984D30FF743C
      25DD070302370000000000000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000010000000EB323130FFDEDAD6FFE4E0DCFFEDEAE8FFF3F1
      F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2
      F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2
      F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2F0FFF3F2
      F0FFF3F1F0FFEDEAE8FFE4E0DCFFDEDAD6FF323130FF000000EB000000100000
      00000000000000000000000000000000000000000000000101584FDDFFFF0D88
      EDFF29AAF1FD41A9F0FD289BF3FF269AEEFD2799EEFD289BF3FF2699EDFD289B
      F3FF2699EDFD2699EDFD2699EDFD289BF3FF2699EEFD269BEEFD279CF3FF279A
      EEFD309FEFFD34A2F4FF2A9CEFFD269AEFFD279CF3FF279AEFFD279AEFFD279E
      F3FF279CEFFD279CEFFD279EF3FF279BEFFD289EF4FF2F9EF0FD2E9FF0FD289E
      F4FF279DEFFD279DEFFD299FF4FF289DEFFD289DEFFD289EF3FF45ACF0FD2BA1
      ECFD1793EEFF56E4FFFF00000158000000000000000000000000000000000000
      000000000000000000000000001101080D7C010A1291020A1291020A1291020A
      1291020B1291020B1391020A1391010B1391010B1391010B1391010B1391020D
      15900000014A0000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000030505054225252590929292D6FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494949AD00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0000000000000904023D6B3824D3994E35FFA15433FFD27837FDFFA443FFCD77
      3CFE954E33FECC8559FFCF885CFFA15939FE9A5132FEF7A866FFD58D58FC9B4F
      32FF8F482EF9180D086500000000000000000000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000062000000FFB0ADAAFFE5E1DDFFF7F6F5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F6F5FFE5E1DDFFAFADAAFF000000FF000000620000
      000000000000000000000000000000000000000000060F3041B74EE0FFFF3CA5
      F2FF279CF2FF269BF2FF279CF3FF289DF3FF289DF3FF289DF2FF289DF3FF279D
      F2FF289DF3FF289DF3FF289CF3FF279EF2FF289EF3FF289EF3FF279EF4FF279E
      F4FF289DF4FF279DF4FF289DF4FF299DF4FF299DF4FF299FF4FF299FF4FF299F
      F4FF299FF4FF299FF4FF299EF4FF299EF4FF289EF4FF289EF4FF289FF4FF28A0
      F4FF29A0F4FF29A0F4FF299FF4FF299FF4FF299FF4FF28A1F4FF279FF4FF27A1
      F4FF36ACF2FF55E8FFFF0F3040B7000000060000000000000000000000000000
      00000000000000000002030C11861E97DDFF1463B9FF1568BAFF1468BCFF1469
      BEFF1469C0FF156AC1FF156BC2FF156EC5FF1570C6FF1573C7FF1575C8FF167D
      CEFF23AADFFF0000001D00000000000000000000000000000000000000000000
      00000202022D1919197B6B6B6BC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBF100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003000000000000
      00072A160E859A5133FE9A5033FFB76330FBF38E35FEFF9C3CFFFC9E44FECA74
      3CFF984F34FFCB8459FFCF885CFFA45A3AFF9B5032FFED9F62FEFFBE78FFE49E
      67FCA85D3BFF954A2EFF351C1296000000050000000000000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000960F0F0FFFE1DEDAFFEEECEAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEECEAFFE1DEDAFF0F0F0FFF000000960000
      000000000000000000000000000000000000000000161E7DB7EC49CAFAFE249A
      F2FF279BEFFD289CEFFD279EF2FF289CEFFD289CEEFD279EF4FF279BEEFD299D
      F4FF279BEEFD289BEFFD279DEEFD299FF4FF279DEEFD279DEEFD299EF4FF279C
      EEFD279CEEFD29A0F4FF279EEEFD279EEEFD29A0F4FF279EEEFD279DEEFD299F
      F4FF279DEEFD279DF0FD29A1F3FF279FF0FD29A1F3FF299FF0FD299EF0FD28A0
      F3FF299EF0FD299EF0FD28A2F3FF29A0F0FD29A0EFFD28A1F5FF299FEFFD289F
      EFFD269FF4FF59CFFAFE1E7FB6EC000000160000000000000000000000000000
      0000000000000000000F0A3D59D110ACEBFF0E9EDBFD0FA0DFFF0F9EDBFD0FA0
      DFFF0F9EDBFD0F9EDAFD0F9EDAFD0FA1DEFF0F9FDAFD0F9FDBFD0FA1DFFF0E9E
      DCFD16B4F4FF0000016300000000000000000000001C0F0F0F66494949B1DEDE
      DEF2FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFFFFFFFFFAFAFAFDF9F9F9FDFFFF
      FFFFF9F9F9FDFAFAFAFDFFFFFFFFF9F9F9FDFFFFFFFF02020226000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060302346032
      21CB9A5033FF974D33FFBC6530FDFF992FFFFD9537FEF8933CFEFFA446FFD079
      3EFF974E33FFCC8559FFCF885CFFA35939FF9B4F32FFF0A364FFFBB272FEFFBA
      7AFFF6B37AFEB56D47FC994E31FF5A2F1EC20201001D00000000000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31A1A19FFE6E2DFFFF5F3F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6F6F6FFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
      FFFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F3F2FFE6E2DFFF1A1A19FF000000A30000
      0000000000000000000000000000000000000000002622A1F8FF289DF2FE299E
      F4FF279DEEFD279DEEFD299FF4FF279CEEFD279CEEFD299EF4FF279EEEFD29A0
      F4FF279EEEFD279EEEFD279EEEFD299FF4FF279DEEFD279DEEFD29A1F4FF279F
      F0FD279FF0FD29A0F3FF279EF0FD299EF0FD28A0F3FF299EF0FD29A0F0FD28A2
      F3FF29A0F0FD29A0EFFD28A1F5FF299FEFFD28A1F5FF289FEFFD28A1EFFD2AA3
      F5FF28A1EFFD28A1EFFD2AA2F5FF28A0EFFD28A0EFFD2AA4F5FF28A2EFFD28A2
      EFFD29A3F5FF2BA3F3FE25A3F7FF0000002600000000000000040000000D0000
      001300000014000000501893D8FF18A8E4FE18A5DEFD18A7E2FF18A5DEFD18A7
      E2FF18A5DEFD18A5DEFD18A5DEFD18A7E2FF17A6DFFD13A5DFFD0CA3E2FF049A
      D6FD0097D4FF243A48CB393735A4B4B4B4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAF8F3FDF9E5BAFDFFFFFFFFE4E4E4FDB7B7B7FFFBFBFBFDFBFBFBFDFFFF
      FFFFFBFBFBFDFBFBFBFDFFFFFFFFFBFBFBFDFFFFFFFF1C1C1B810000000E0000
      0014000000130000000D00000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000326140C7E8E4A33FAA757
      31FFA9592EFB904B34FED1732FFFFA9431FEFD9638FFFF9E40FFF39744FFB564
      38FF9B5134FFCB8459FFCF885CFFA45A3AFF984D30FFE4975EFFFFBD79FFF9B0
      75FEFFBA7EFFFDBE85FEA86141FA984C30FF7F422AE60B050344000000000000
      0002000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31A1A19FFE7E3E0FFF6F5F3FFFFFFFFFFFFFFFFFFFFFF
      FFFFB0B0B0FF999999FF9F9F9FFFB6B6B6FF949494FFB7B7B7FFB9B9B9FFA2A2
      A2FF999999FFA6A6A6FFB1B1B1FF8A8A8AFFF8F8F8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F5F3FFE7E3E0FF1A1A19FF000000A30000
      0000000000000000000000000000000000000000002B23A3FFFF29A0F4FF299F
      F4FF299FF4FF299FF4FF299FF3FF29A1F4FF29A1F4FF29A1F3FF29A0F4FF28A0
      F3FF29A0F4FF29A0F4FF29A0F4FF28A2F3FF29A2F4FF29A2F5FF28A1F5FF29A1
      F5FF29A1F5FF2AA3F5FF2AA3F5FF2AA3F5FF2AA3F5FF2AA3F5FF2AA2F5FF2AA2
      F5FF2AA4F5FF2AA4F5FF2AA4F5FF2AA4F5FF2AA4F5FF2AA4F5FF2AA3F5FF2AA5
      F4FF2AA5F5FF2AA5F5FF2AA5F4FF2AA5F5FF2AA5F5FF29A4F4FF2AA6F5FF2AA6
      F5FF29A6F6FF2AA6F6FF25A6FFFF0000002B0000000000010141115A93F30C4A
      85F30C4A85F30D53A5FF31BBE9FF30BCEAFF2FBAE9FF2FBAE9FF2FBAE9FF2FBB
      E9FF30BCEAFF2DBCEBFF27B9EAFF1EB2E5FF16A6D5FF3CAAD0FF86C4D8FFCFE2
      E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFFFF0D1FFFFF5E1FFFFFF
      FFFFFADB99FFFFBF34FFFFF7E7FFFFFFFFFF404040FF686868FFFFFFFFFFFFFF
      FFFFAAAAAAFF545454FF747474FFFEFEFEFFFFFFFFFFBACBD7FD003D7EF20D4B
      86F30C4A85F3115C96F400010143000000000000000000000000000000000000
      00000000000000000000000000000000000A582E1DC1995033FFB9622CFEF385
      1EFDBE642BFF8D4935FEDB7A2FFEFF9C33FFF59339FFCA7439FF9A4F32FF9349
      30FFA05636FFCA8358FFCF885CFFA45A3AFF994E31FF9A4F32FFD58C59FFFFBC
      7DFFFDB87EFEFCBB83FEB46B47FF954C30FCA15738FF974B2EFF20110B750000
      0000000000000000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31A1A1AFFE7E4E1FFF6F4F3FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFCFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFF6F4F3FFE7E4E1FF1A1A1AFF000000A30000
      0000000000000000000000000000000000000000002C2BABFFFF289EF0FD28A2
      F3FF28A0EFFD28A0EFFD28A2F5FF289FEFFD289FEFFD28A1F5FF28A1EFFD2AA3
      F5FF28A1EFFD28A1EFFD28A1EFFD2AA2F5FF28A0EFFD28A2EFFD2AA4F5FF28A2
      EFFD28A2EFFD2AA3F5FF28A1F0FD28A1F0FD2AA5F4FF28A3F0FD28A3F0FD2AA5
      F4FF29A2F0FD29A2F0FD29A4F4FF29A4F0FD29A6F4FF29A4F0FD29A4F0FD29A5
      F6FF29A3F0FD29A5F0FD29A7F6FF29A5F0FD29A5F0FD2BA7F6FF29A4F0FD29A6
      F0FD2BA8F6FF29A6F2FD2DB0FFFF0000002C000000000107097032A8E1FF2E95
      CCFF2A93CCFF2BA8DAFE31C8F4FF2EBDEAFD2FBEEBFD32C3EFFF2EBDEBFD2BBE
      EBFF1EACD8FD37AACEFD75BDD3FDBEDCE3FFFBF7F5FDFBFBFBFDFFFFFFFFFBFB
      FBFDFAFBFBFDFEF4DFFFF9E5BBFDF9FBFBFDFCFAF2FFF8B92EFDF9D993FDFFFF
      FFFFF8F0DEFDFABD3DFDFFE6B0FFFBFBFBFD7A7A7AFF4F4F4FFD999999FDF5F5
      F5FF474747FD5B5B5BFD535353FF959595FDFBFBFBFDFFFFFFFF0883C1FF2497
      D1FF2E94CCFF34ABE4FF01070974000000000000000000000000000000000000
      00000000000000000002000000000D07044B9B5034FFC66529F9FD8A1BFEFF8B
      1CFFA85830FE954D34FFE68230FFD57B33FFA75535FF984835FFB8663DFFC16F
      3EFF9A5034FFCB8458FFCE875BFFA35939FF9E5334FFB46842FF90442AFFB86E
      47FFF7B57CFFFFC78DFFB36C48FE9A4F31FFE4A779FDB6704DFE93472AFF4021
      15A40000000A0000000000000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31A1A1AFFE8E5E2FFF6F5F4FFFEFEFEFFFEFEFEFFFEFE
      FEFFB4B4B4FFA5A5A5FFA7A7A7FFA5A5A5FF9C9C9CFFB5B5B5FFAFAFAFFF9A9A
      9AFFA0A0A0FFC6C6C6FFA3A3A3FFA2A2A2FFA3A3A3FFB9B9B9FFC7C7C7FF9898
      98FF989898FFD4D4D4FFB3B3B3FF989898FF9D9D9DFFA1A1A1FFE9E9E9FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFF6F5F4FFE8E5E2FF1A1A1AFF000000A30000
      0000000000000000000000000000000000000000002E2CACFFFF2AA2F5FF2AA2
      F5FF2AA2F5FF2AA2F5FF2AA4F5FF2AA4F5FF2AA4F5FF2AA4F4FF2AA3F5FF2AA3
      F4FF2AA3F5FF2AA5F5FF2AA5F5FF29A5F4FF2AA5F5FF2AA4F5FF29A4F4FF2AA4
      F5FF2AA6F5FF29A6F6FF2AA6F6FF2AA6F6FF29A5F6FF2AA5F6FF2AA7F6FF29A7
      F6FF2BA7F6FF2BA7F6FF2BA7F6FF2BA6F6FF2BA8F6FF2BA8F6FF2BA8F6FF2BA8
      F5FF2BA8F6FF2BA7F6FF2BA9F5FF2BA9F6FF2BA9F6FF2AA9F5FF2BA9F6FF2BA8
      F6FF2AAAF7FF2BAAF5FF2EB3FFFF0000012E00000000020A0D7A3BD5FFFF32C4
      EFFF47C0E5FF98BFCAFF90BDCBFF8FBCCAFF86B3C0FF78A5B4FF8DB7C3FFA5C5
      CFFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EFFFFFE6B2FFFFFC
      F7FFFFFFFFFFFCCC66FFFFC343FFFFFFFFFFFEFFFFFFFBC95CFFFFCA5AFFFFFF
      FFFFFEFFFFFFFCC348FFFFD376FFFFFFFFFFB2B2B2FF565656FF565656FFF6F6
      F6FF464646FF5E5E5EFF525252FF9D9D9DFFFFFFFFFFFFFFFFFF96BEC7FF87C2
      D1FF2AC2F0FF3BD5FFFF020B0D7C000000000000000000000000000000000000
      00000000000000000001000000003D2015A5AB5834FDEF7932FFEC7427FFF17C
      20FEA15432FF9B5133FFA75832FFA14836FF8D522EFF9E6821FFEC9537FFD97B
      3EFF964E34FFCD8559FFCF885CFFA35939FF9C5133FFF6AA6DFFDD9561FF974C
      2FFF9D5233FFE6A573FFBA724DFF93492DFEF1B385FFFDCC9CFEC4855FFB984C
      2FFF663422D00302012800000000000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31A1A1AFFE9E6E3FFF6F5F4FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFFDFDFDFFFBFBFBFFFEFE
      FEFFFEFEFEFFFCFCFCFFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFCFCFCFFFBFBFBFFF9F9F9FFFEFEFEFFFBFBFBFFFCFCFCFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFF6F5F4FFE9E6E3FF1A1A1AFF000000A30000
      000000000000000000000000000000000000000001312AADFFFF28A3F1FD2AA5
      F4FF2AA3F1FD2AA3F1FD29A4F4FF2AA4F1FD2AA4F0FD29A6F6FF2AA4F0FD29A6
      F6FF2AA4F0FD2AA3F0FD29A5F0FD2BA7F6FF29A5F0FD29A5F0FD2BA7F6FF29A4
      F0FD29A6F0FD2BA8F6FF29A6F2FD29A6F2FD2BA8F5FF29A5F2FD29A7F2FD2BA9
      F5FF29A7F2FD2BA7F2FD2AA9F5FF2BA6F2FD2AAAF5FF2BA8F2FD2BA8F1FD2AAA
      F7FF2BA8F1FD2BA7F1FD2AABF7FF2BA8F1FD2AA8F1FD2CABF7FF2AA8F1FD2AA8
      F1FD2CACF7FF2AA9F3FD2CB4FFFF000101310000000001090C7825C1F9FF1BB0
      E7FF51AED0FDFBF3EBFDE0D9D7FFDFD8D7FDF6EFEEFDFFFFFFFFFBFBFBFDFFFF
      FFFFFBFBFBFDFAFAF9FDF9E8C0FDFFEEC9FFFAFBFBFDF6E2BCFDFFC034FFF9E7
      C2FDFAFBFBFDFBE3B1FFFABF3EFDF9F0DAFDFFFFFFFFF7D997FDFABE3EFDFFFB
      F6FFFAFBFBFDF7D17CFDFFC547FFFBFBFBFDE8E8EAFF4D4D4DFD4E4E4EFDF9F9
      F9FFBCBCBCFD5A5A5AFD818181FFFBFBFBFDFAFAFAFDFFFFFFFFEEE7E5FDE3DC
      D9FD0AA9E2FF26C1FAFF01090C7A000000000000000000000000000000000000
      000000000000000000000000001081422CEEC66B39FFD06F33EAD36B2DF6BB5D
      2EFF975033FEA04F34FF9B4E33FF5C6D22FF178E11FF13930EFF248F0FFF706C
      22FFA75239FFC78257FFCE875CFFA55B3BFF9B5032FFF0A56AFFFFC180FFF2AE
      75FFAF6542FF93472CFFA05636FF9B5032FFECAE80FEFEC899FFFFD0A1FFDAA0
      78FB9F5536FF89462DF010080553000000000000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31B1A1AFFEAE7E4FFF6F5F4FFFEFDFDFFFEFDFDFFFEFD
      FDFFA9A9A9FFA0A0A0FFB1B1B1FF9F9F9EFFA6A6A5FF969696FFCDCDCDFF9898
      98FFA6A6A6FF939393FFC3C3C3FF9D9D9DFF9D9D9CFFB8B8B8FF9B9B9BFFD1D1
      D1FF969696FF9F9F9FFFA1A1A1FFB2B2B2FFADADADFFF9F9F9FFFEFDFDFFFEFD
      FDFFFEFDFDFFFEFDFDFFFEFDFDFFF6F5F4FFEAE7E4FF1B1A1AFF000000A30000
      000000000000000000000000000000000000000101332BAEFFFF2AA3F0FD29A7
      F6FF2AA5F0FD29A5F0FD2BA7F6FF29A4F0FD29A4F0FD2BA8F6FF29A6F0FD2BA8
      F6FF29A6F2FD29A6F4FE29A5F2FD2BA9F5FF29A7F2FD29A7F2FD2BA9F5FF2BA7
      F2FD2BA6F2FD2AAAF5FF2BA8F2FD2BA8F1FD2AAAF7FF2BA8F1FD2BA7F1FD2AAB
      F7FF2BA8F1FD2AA8F1FD2CABF7FF2AA8F1FD2CAAF7FF2AA9F1FD2AA9F3FD2CAC
      F6FF2AA9F3FD2AA8F3FD2CADF6FF2AAAF3FD2AAAF3FD2CADF6FF2AAAF3FD2CA9
      F3FD2BAEF6FF2CABF2FD2DB6FFFF000101320000000000080B7715B0F4FF0DA0
      E1FF42A0C7FDFBFBFBFDF6F6F6FFFBFBFBFDFBFBFBFDFFFFFFFFFAEFD9FDF9DC
      9DFFFAFBFBFDFCFDFDFEF8BC3BFDFFD270FFF9FBFBFDFAFBFBFDFCC03CFFFAD7
      8EFDFAFBFBFDFCF7E9FFFABD3DFDF9DFA7FDFFFFFFFFF6E9CCFDFABE3EFDFFEB
      C1FFFAFBFBFDF7E2B4FDFFC340FFFAEFD4FDFFFFFFFF535353FD494949FDF8F8
      F8FFFBFBFBFDFBFBFBFDFFFFFFFFFAFAFAFDF9F9F9FDFFFFFFFFF4F2F1FDE5E2
      E1FD0095DAFF15B1F5FF00080C79000000000000000000000000000000000000
      00000000000200000000130906589C5234FFE08044FC733F21BC85432AE89B4E
      35FE9D5034FE8C582FFF258715FF04980FFF129616FF19961DFF08A621FF537A
      2CFFA3452EFF984D2CFF9C4D2CFF9D5131FF9E5435FFF2A76CFFFCB679FFFFBB
      81FFFFC087FFCF8A5EFF9D5234FF994E30FFE0A075FFFDCE9EFEFBC295FEFFD0
      A2FFAE6A49FC974B2EFF984C2FFF29150E820000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31B1A1AFFEAE8E5FFF6F5F4FFFDFDFDFFFDFDFDFFFDFD
      FDFFF2F1F1FFF6F6F6FFFBFBFBFFF4F3F3FFF7F7F7FFF6F6F6FFF9F8F8FFF8F8
      F8FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF4F3F3FFF5F5F5FFFDFD
      FDFFF4F4F4FFFDFDFDFFF6F6F6FFFAF9F9FFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFF6F5F4FFEAE8E5FF1B1A1AFF000000A30000
      000000000000000000000000000000000000000101332BB0FFFF29A6F2FD2BA7
      F5FF29A7F2FD29A7F2FD2BA9F5FF29A7F2FD2BA7F2FD2AA8F5FF2BA8F1FD2AAA
      F7FF2BA8F1FD2BA8F1FD2BA8F1FD2AA9F7FF2BA8F1FD2BA8F1FD2AABF7FF2AA8
      F1FD2AA8F1FD2CACF7FF2AA9F1FD2AA9F3FD2CACF6FF2AA9F3FD2AA8F3FD2CAD
      F6FF2AAAF3FD2AAAF3FD2CADF6FF2AAAF3FD2CACF6FF2CABF3FD2CABF2FD2BAE
      F8FF2CABF2FD2CAAF2FD2BAFF8FF2CACF2FD2CACF2FD2BAFF8FF2CACF2FD2BAB
      F2FD2DB0F8FF2BADF4FD2DB8FFFF000101330000000000070B760F99E6FF0685
      D0FF4294C1FDFBFBFBFDFFFFFFFFFBFBFBFDFBFBFBFDFFFFFFFFFBE5A8FDFFC6
      36FFFBFBF5FDFBFBFBFDFBDA86FDFFCD47FFFBFBFBFDFBFBFBFDFFD569FFFBCD
      55FDFBFBFBFDFFFFFFFFFBCA52FDFBD46CFDFFFFFFFFFBFBFBFDFBC643FDFFE0
      8AFFFBFBFBFDFBFBF6FDFFC93FFFFBE5A1FDFFFFFFFF8B8A89FD6E6C6CFDFFFF
      FFFFFBFBFBFDFBFBFBFDFFFFFFFFFBFBFBFDFBFBFBFDFFFFFFFFFBFBFBFDE0DE
      DDFD007AC9FF0F9AE6FF00070B78000000000000000000000000000000000000
      00000000000200000000472417AFA45837FEB1633BFE9D4B36FF8B562EFF7A60
      29FFAB4B37FF676927FF039C12FF1D941CFF189D20FF1F9E25FF507A29FF8E4F
      2BFFB77659FFDCBEABFFD4B5A7FFA56144FF934527FFEDA36AFFFFC283FFFCB6
      7DFFFDBA83FFFFCC94FFC37D56FF95492DFF984C2FFFC98861FFFEC89AFFFDD3
      A5FEB26B4AFFB4704FFDC17E5BFE93472AFF4A2718B001000015000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31B1A1AFFEBE8E6FFF6F5F4FFFDFDFCFFFDFDFCFFFDFD
      FCFFCBCBCBFFAAAAAAFF9A9A9AFFD1D1D0FFA8A8A8FFB9B9B9FFADADACFFA9A9
      A9FFACACACFFC7C7C7FFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
      FCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
      FCFFFDFDFCFFFDFDFCFFFDFDFCFFF6F5F4FFEBE8E6FF1B1A1AFF000000A30000
      000000000000000000000000000000000000000101332CB2FFFF2BA9F7FF2AAB
      F7FF2BABF7FF2BABF7FF2CABF7FF2CABF7FF2CAAF7FF2CACF7FF2CACF7FF2CAC
      F6FF2CACF7FF2CACF7FF2CABF7FF2CADF6FF2CADF7FF2CADF7FF2CADF6FF2CAD
      F7FF2CACF7FF2BAEF8FF2CAEF8FF2CAEF8FF2BAEF8FF2CAEF8FF2CADF8FF2BAF
      F8FF2CAFF8FF2CAFF8FF2BAFF8FF2DAEF8FF2DB0F8FF2DB0F8FF2DB0F8FF2DB0
      F7FF2DB0F8FF2DAFF8FF2DB1F7FF2DB1F8FF2DB1F8FF2DB1F7FF2DB0F7FF2DB2
      F9FF2CB2F9FF2DB2F9FF2EBAFFFF0001013300000000000509750976B3FF0263
      98FF307295FFBFB2A6FFAAA69EFFAFAAA4FFAEAAA4FFAEABA6FFADA594FFAF88
      36FFAA9A7EFFB0ADADFFAC9B79FFAE8637FFAEA28DFFAFACADFFAD966CFFAE86
      36FFADA59AFFAEAAADFFAC915EFFAE8535FFADA9A7FFAEAAAEFFAB8C4DFFAD89
      41FFAEABABFFAFADB1FFAC873EFFAE8F4EFFB2B0B0FF8E8A82FFA6A099FFB1AC
      A5FFAEA9A3FFAEA9A3FFAEA9A3FFAEAAA2FFAEAAA2FFAEAAA2FFB2ADA4FF9D9B
      95FF005E96FF0976B1FF00060977000000000000000000000000000000000000
      000000000000010000168D4A2FF2954D30FE85422DEE683C15D31A8B0CFE5B6C
      26FDAF4737FE5D7128FF119F1EFF1D9E24FF3D8B2BFF7C5D30FFB25A3DFFD99B
      72FFFEDABBFFFFF3E7FFFFFFFFFFFFEBDFFFBE8260FF9F5232FFDB9463FFFFC2
      87FFFEBC85FFFCC48EFFCA855CFF94492CFFB36C4AFF96492CFFA75D3EFFEEBB
      90FFBD7B58FEB06848FFFDD7ACFEC68965F99A4E30FF4D291AB4000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31B1B1AFFECE9E7FFF6F5F4FFFDFCFCFFFDFCFCFFFDFC
      FCFFE4E3E3FFF8F7F7FFF7F6F6FFF8F8F7FFE6E5E5FFEEEEEDFFF7F6F6FFEDEC
      ECFFF8F7F7FFF3F3F2FFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFC
      FCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFCFCFFFDFC
      FCFFFDFCFCFFFDFCFCFFFDFCFCFFF6F5F4FFECE9E7FF1B1B1AFF000000A30000
      000000000000000000000000000000000000000101332CB4FFFF2AA9F3FD2CAB
      F6FF2AAAF3FD2AAAF3FD2CADF6FF2AAAF3FD2CAAF3FD2BACF6FF2CABF2FD2BAE
      F8FF2CABF2FD2CABF2FD2CAAF2FD2BAFF8FF2CACF2FD2CACF2FD2BAFF8FF2CAC
      F2FD2BABF2FD2DB0F8FF2BADF4FD2BADF4FD2DB0F7FF2BADF4FD2BACF4FD2DB1
      F7FF2BAEF4FD2BAEF4FD2DB1F7FF2BADF3FD2DB2F9FF2DAFF3FD2DAFF3FD2CB2
      F9FF2DAFF3FD2DAEF3FD2CB3F9FF2DB0F3FD2DB0F3FD2CB3F9FF2DAFF5FD2CB1
      F5FD2EB4F8FF2CB1F5FD2EBCFFFF000101330000000000070974007DD6FF0066
      C0FF0063BDFD005CBCFD005FC3FF005EBFFD005DC0FD0061C5FF0061C5FD0069
      D3FF0067C8FD0068C5FD006DCEFD0074D7FF0075CCFD0075CAFD0080D6FF0083
      D6FD0482CFFD0686D0FF0A89D5FD0B8BD8FD0B89D1FF0886CCFD0687D7FD0387
      DBFF007DCBFD007ACBFD007CD9FF0074D2FD006FCBFF006ECCFD0069C8FD0067
      C8FF0062C3FD0060C1FD0061C5FF005EC0FD005CBFFD005DC2FF005BBCFD005D
      BDFD0066C0FF007ED8FF00070976000000000000000000000000000000000000
      000200000000160B0760984E31FFB76B44FF5B33229D263B00B4139C1CFF8761
      36FCAA4733FF4A8429FF239D28FF696C33FFA45332FFCC713CFFF1A666FFFFC1
      92FFE5C9A1FF96C083FF7DBF7DFFD0E0C0FFFFEACEFFDA9F73FF9E5131FFBA73
      4FFFF9B983FFFFCD96FFCF8B62FF8F4226FFDFA076FFECB589FFA55B3BFF994D
      30FFA55D3EFFA76040FEFDBA81FFFBB369FDAF613BFD7C3F28E8000000090000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31B1B1AFFEDEAE8FFF6F5F4FFFCFCFBFFFCFCFBFFFCFC
      FBFFC8C8C8FFC9C9C9FFAEAEAEFFA8A8A7FFB0B0AFFFC4C4C4FFB5B5B5FFC8C8
      C8FFADADADFFB0B0B0FFAFAFAFFFB8B8B8FFC5C5C5FFB8B8B8FFAFAFAEFFA5A5
      A4FFC3C3C3FFABABABFFADADADFFB0B0AFFFC2C2C2FFB5B5B5FFB2B2B2FFADAD
      ADFFFCFCFBFFFCFCFBFFFCFCFBFFF6F5F4FFEDEAE8FF1B1B1AFF000000A30000
      000000000000000000000000000000000000000101332DB6FFFF2CABF2FD2BAD
      F8FF2CACF2FD2CACF2FD2BAFF8FF2CACF2FD2BACF2FD2DAEF8FF2BADF4FD2DB0
      F7FF2BADF4FD2BADF4FD2BACF4FD2DB1F7FF2BAEF4FD2BAEF4FD2DB1F7FF2BAE
      F4FD2BADF3FD2DB2F9FF2DAFF3FD2DAFF3FD2CB2F9FF2DAFF3FD2DAEF3FD2CB3
      F9FF2DB0F3FD2DB0F3FD2CB3F9FF2DAFF3FD2CB4F9FF2CB1F5FD2CB1F5FD2EB4
      F8FF2CB1F5FD2CB0F5FD2EB5F8FF2CB2F5FD2CB2F5FD2EB5F8FF2CB1F4FD2CB3
      F4FD2EB6FAFF2EB3F4FD2FBEFFFF0001013300000000000609732E9BE5FF2F89
      CEFF2E88CAFD2E88CBFD2E8AD2FF2E89CEFD2E89CFFD2E8CD4FF2E8BD1FD2E8F
      D7FF2E8ED2FD3090D3FD3392D4FD3496DAFF3898D5FD3A9AD7FD3E9EDCFF3E9E
      D8FD42A1D8FD45A5DCFF45A4D8FD46A4D8FD47A6DCFF45A4D8FD43A3D8FD42A3
      DCFF3E9FD6FD3B9BD7FD399BDBFF3797D6FD3395D8FF3193D5FD2F8FD2FD2E90
      D6FF2E8CD3FD2E8AD0FD2E8CD4FF2E89CFFD2E88CEFD2E8AD2FF2E88CBFD2E88
      CAFD2F89CEFF2E9DE6FF00060975000000000000000000000000000000000000
      00010000000050291AB89B5234FEEB9E6DFC3A21117E29780AF4359F3AFE9C5B
      3BFE9F4D31FF6B6C34FF8E5933FFC2551EFFE37419FFFC903AFFE2A159FF94AC
      5DFF49A848FF39A440FF41A444FF47AA50FFAAAD69FFFFCB92FFFAB06AFFB462
      33FF9F573CFFE6AA7CFFDB996CFF8F4226FFD6956CFFFDD5A6FEFCCBA1FFC784
      5DFE93492BFC9D5434FEEC944CFCF1AA5DF8C67949FE93492FFD0502012D0000
      0000000000010000000000000000000000000000000000000000000000000000
      000000000000000000A31B1B1AFFEDEBE9FFF6F5F4FFFCFBFBFFFCFBFBFFFCFB
      FBFFEBEAEAFFE2E2E2FFF1F0F0FFDEDDDDFFEEEEEDFFF2F1F1FFEAEAE9FFEBEA
      EAFFE9E8E8FFE4E3E3FFEFEEEEFFECEBEBFFEFEEEEFFE0DFDFFFE7E7E6FFEBEA
      EAFFF1F0F0FFEBEAEAFFF1F0F0FFEAE9E9FFF1F0F0FFECEBEBFFE0E0DFFFE9E8
      E8FFFCFBFBFFFCFBFBFFFCFBFBFFF6F5F4FFEDEBE9FF1B1B1AFF000000A30000
      000000000000000000000000000000000000000101332EB8FFFF2DAFF8FF2DB1
      F7FF2DB1F8FF2DB1F8FF2DB1F7FF2DB1F8FF2DB0F7FF2CB2F9FF2DB2F9FF2CB2
      F9FF2DB2F9FF2DB2F9FF2DB1F9FF2CB3F9FF2DB3F9FF2DB3F9FF2CB3F9FF2DB2
      F9FF2EB4F9FF2EB4F8FF2EB4F9FF2EB4F9FF2EB4F8FF2EB3F9FF2EB5F9FF2EB5
      F8FF2EB5F9FF2EB5F9FF2EB4FAFF2EB6FAFF2EB6FAFF2EB6FAFF2EB6FAFF2DB6
      FAFF2EB5FAFF2EB7FAFF2DB7FAFF2EB7FAFF2EB7FAFF2DB7FAFF2EB6FAFF2FB8
      FAFF2FB8F9FF2FB8FAFF30C0FFFF000101330000000003090B7463E6FFFF56D2
      F4FF57D2F4FF57D2F4FF57D2F3FF57D2F3FF57D2F3FF57D2F3FF57D1F3FF57D1
      F3FF57D1F3FF56D1F3FF56D0F2FF56D0F2FF56CFF2FF56CFF2FF55CFF2FF55CE
      F2FF54CEF2FF54CEF2FF54CEF2FF54CEF2FF54CEF2FF54CEF2FF54CEF2FF55CE
      F2FF55CEF2FF56CFF2FF56CFF2FF56D0F2FF56D0F2FF56D0F2FF56D1F3FF57D1
      F3FF57D1F3FF57D2F3FF57D2F3FF57D2F3FF57D2F3FF57D2F3FF57D2F4FF57D2
      F4FF56D2F4FF63E6FFFF03090B75000000000000000000000000000000000000
      00000100001B8D472CF7B06945FEE3A174F141280E94249418FF499E42FDA050
      39FF974F35FFB55526FFDC6208FFF46600FFE1750EFF969335FF5CA354FF60AC
      6CFF83B486FF96B996FF9DBB9DFF97BB9DFF95A77EFFD2AB89FFEDBB8CFFFFA5
      46FFD56F21FFA15332FFAB664AFF95482AFFD5956DFFFDC896FFFAAC6AFEFFAC
      56FFE48C48FF934C31FE9D5534FB865935C5E4985DFC974D31FF140A065D0000
      0000000000020000000000000000000000000000000000000000000000000000
      000000000000000000A31B1B1BFFEEECEAFFF6F5F4FFFBFAFAFFFBFAFAFFFBFA
      FAFFCACAC9FFB9B9B9FFB1B1B0FFB8B8B8FFC6C5C5FFBBBBBAFFBEBEBEFFB4B4
      B3FFB8B8B7FFE3E3E2FFB6B6B5FFB7B7B7FFB5B5B4FFBBBBBAFFBBBBBBFFC7C7
      C7FFB9B8B8FFC6C6C5FFB3B3B2FFB4B4B4FFC4C4C3FFC2C1C1FFC0C0BFFFBEBE
      BDFFE4E4E3FFFBFAFAFFFBFAFAFFF6F5F4FFEEECEAFF1B1B1BFF000000A30000
      000000000000000000000000000000000000000101332EBBFFFF2DAEF3FD2CB3
      F9FF2DB0F3FD2DB0F3FD2CB3F9FF2DB0F3FD2CAFF5FD2EB4F8FF2CB1F5FD2EB4
      F8FF2CB1F5FD2CB1F5FD2CB0F5FD2EB5F8FF2CB2F5FD2CB2F5FD2EB5F8FF2CB1
      F4FD2CB3F4FD2EB6FAFF2EB3F4FD2EB3F4FD2DB6FAFF2EB2F4FD2EB4F4FD2DB7
      FAFF2EB4F4FD2EB4F4FD2DB7FAFF2EB3F6FD2DB8F9FF2EB5F6FD2DB5F6FD2FB8
      F9FF2DB4F6FD2DB6F6FD2FB9F9FF2DB6F6FD2DB6F5FD2FB9FBFF2DB5F5FD2DB7
      F5FD2FBAFBFF2FB6F5FD30C4FFFF000101330000000002080B7352DAFFFF4BC8
      EEFF4AC4EBFD4AC4EBFD4BC8EEFF4AC4EBFD4AC4EBFD4BC8EEFF4AC4EBFD4BC8
      EEFF4AC4EBFD4AC4EBFD4AC4EBFD4BC8EEFF4AC4EBFD4AC4EBFD4BC8EEFF4AC4
      EBFD4AC4EBFD4BC8EEFF4AC4EBFD4AC4EBFD4BC8EEFF4AC4EBFD4AC4EBFD4BC8
      EEFF4AC4EBFD4AC4EBFD4BC8EEFF4AC4EBFD4BC8EEFF4AC4EBFD4AC4EBFD4BC8
      EEFF4AC4EBFD4AC4EBFD4BC8EEFF4AC4EBFD4AC4EBFD4BC8EEFF4AC4EBFD4AC4
      EBFD4BC8EEFF52DAFFFF02080B74000000000000000000000000000000020000
      00001B0E0969954A2DFFC8865DFBFFBF8FFFDA964EFF368A21FE716D3CFFA952
      2CFECD610DFFEF6300FFEA6800FFA4821CFF5E9E46FF8CBB9BFFD5DAD9FFF1E9
      EFFFF4ECF2FFF1EAF0FFEDE7EBFFE9E2E6FFE3E0E5FFD3D8DBFFCED1D3FFE0BE
      9EFFFF962DFFF57100FFB15721FF8F4A36FFCB7A47FFFBA546FDFB963EFECF86
      40E74A2C189F924B30F9793E27E3A45436FFBD7448FCA05737FE31190F910000
      0000000000020000000000000000000000000000000000000000000000000000
      000000000000000000A31B1B1BFFEFEDEAFFF6F5F4FFFAFAF9FFFAFAF9FFFAFA
      F9FFE0DFDFFFDEDEDDFFE2E2E1FFDDDCDCFFE8E7E7FFE3E2E2FFE4E3E3FFE2E1
      E1FFD8D7D7FFECEBEAFFDBDBDAFFD7D7D6FFD6D5D5FFE3E2E2FFDCDBDBFFE8E7
      E7FFD8D8D7FFE6E5E4FFDEDDDCFFE4E3E3FFDFDEDEFFE7E6E6FFD6D5D4FFDCDC
      DBFFF3F2F1FFFAFAF9FFFAFAF9FFF6F5F4FFEFEDEAFF1B1B1BFF000000A30000
      0000000000000000000000000000000000000001013333BFFFFF2CB0F5FD2EB5
      F8FF2CB2F5FD2CB2F5FD2EB5F8FF2CB2F5FD2CB1F4FD2EB6FAFF2EB3F4FD2DB6
      FAFF2EB3F4FD2EB3F4FD2EB2F4FD2DB7FAFF2EB4F4FD2EB4F4FD2DB7FAFF2EB3
      F6FD2EB5F6FD2DB8F9FF2DB5F6FD2DB5F6FD2FB8F9FF2DB4F6FD2DB6F6FD2FB9
      F9FF2DB6F6FD2DB6F5FD2FB9FBFF2DB5F5FD2FBAFBFF2DB7F5FD2FB7F5FD2EBA
      FBFF2FB7F5FD2FB6F5FD2EBBFBFF2FB8F5FD2FB8F5FD2EBBFBFF2FB8F7FD2FB7
      F7FD2EBCFAFF2EB8F7FD34C6FFFF000101320000000002080B724FD7FFFF48C5
      EFFF47C1E9FD47C1E9FD48C5EFFF47C1E9FD47C1E9FD48C5EFFF47C1E9FD48C5
      EFFF47C1E9FD47C1E9FD47C1E9FD48C5EFFF47C1E9FD47C1E9FD48C5EFFF47C1
      E9FD47C1E9FD48C5EFFF47C1E9FD47C1E9FD48C5EFFF47C1E9FD47C1E9FD48C5
      EFFF47C1E9FD47C1E9FD48C5EFFF47C1E9FD48C5EFFF47C1E9FD47C1E9FD48C5
      EFFF47C1E9FD47C1E9FD48C5EFFF47C1E9FD47C1E9FD48C5EFFF47C1E9FD47C1
      E9FD48C5EFFF4FD7FFFF02080A73000000000000000000000000000000000000
      0000582D1DC19A5133FEEFB284FCB88C68DAB0724CF698502AFDC95A17FEEA64
      00FEEF6800FFBD862AFF5F9F40FF3DAC52FFAAC5B2FFFFFBFFFFFEFCFCFFF5F6
      F4FFEFF0EEFFEAEBE9FFE7E8E5FFE3E4E1FFE0DFDCFFDEDBD8FFD8D7D4FFCAD0
      D5FFC8BDB3FFEC913CFFFF6F00FFC85E13FF9D5130FFC1703EFBF9A557FF5338
      1C92000000009E5234FF1B0E096B0D06045E944A2FFC984D30FF5B2F1FC30000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31B1B1BFFF0EEECFFF6F5F4FFFAF9F8FFFAF9F8FFFAF9
      F8FFDAD9D9FFC3C3C3FFBBBBBAFFBDBDBDFFCBCACAFFC2C1C1FFC9C8C8FFCFCF
      CEFFC4C4C3FFC9C8C8FFC9C8C8FFCCCCCBFFC7C7C7FFC2C1C1FFDFDFDFFFBCBB
      BBFFD2D1D1FFBBBBBBFFD1D1D0FFC0C0BFFFD6D6D5FFFAF9F8FFFAF9F8FFFAF9
      F8FFFAF9F8FFFAF9F8FFFAF9F8FFF6F5F4FFEFEDEBFF1B1B1BFF000000A30000
      0000000000000000000000000000000000000000013136C0FFFF2DB5FAFF2DB7
      FAFF2EB7FAFF2EB7FAFF2DB7FAFF2EB6FAFF2EB8FAFF2FB8F9FF2FB8FAFF2FB8
      F9FF2FB8FAFF2FB7FAFF2FB9FAFF2FB9F9FF2FB9FAFF2FB9FAFF2FB9FBFF2FB8
      FBFF2FBAFBFF2FBAFBFF2FBAFBFF2FBAFBFF2EBAFBFF2FB9FBFF2FBBFBFF2EBB
      FBFF2FBBFBFF2FBBFBFF2EBBFAFF2FBAFBFF2EBCFAFF30BCFBFF30BCFBFF30BC
      FAFF30BBFBFF30BDFBFF30BDFAFF30BDFBFF30BDFCFF30BDFCFF30BDFCFF30BC
      FCFF30BEFCFF2FBEFCFF37C4FFFF000101310000000002080A7148D2FFFF42C2
      EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2
      EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2
      EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2
      EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2
      EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2EEFF42C2
      EEFF42C2EEFF48D2FFFF02080A72000000000000000000000001000000000201
      012293482BFBB67351FEE2AA86FE884D35E6AF5117FBE66704FFEB6700FEBC7D
      1DFFBDC594FEA5DEB7FF4FB35DFF6AAA69FFF7F0F5FFFEFFFEFFEDEDECFFE4E4
      E4FFE2E1E1FFDDDDDCFFD6D6D4FFD4D3D2FFD2D2D0FFD2D1CFFFD1D0CEFFCCC9
      C5FFC0C3C5FFB5BCC1FFCA996CFFEC7008FFD65D00FF9A4A24FCA2654CFE785D
      48C401010115944B2EF9351B119700000000B68257E0AC6441FE814229EB0000
      000D000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31B1B1BFFF0EEECFFF6F5F3FFF9F8F8FFF9F8F8FFF9F8
      F8FFDAD9D8FFD2D1D0FFD0D0CFFFC9C8C8FFDEDEDDFFDBDADAFFD6D5D5FFDEDD
      DDFFCBCBCAFFDFDEDDFFD1D0CFFFD3D2D2FFD7D6D6FFC4C3C3FFE1E1E0FFCACA
      C9FFD8D7D6FFD4D4D3FFE0DFDEFFD2D2D1FFE2E1E0FFF9F8F8FFF9F8F8FFF9F8
      F8FFF9F8F8FFF9F8F8FFF9F8F8FFF6F5F3FFF0EEEBFF1B1B1BFF000000A30000
      0000000000000000000000000000000000000000002E39B4F6FF2DB6F7FD2FB9
      F9FF2DB6F6FD2DB6F6FD2FB9F9FF2DB6F5FD2DB5F5FD2FBAFBFF2DB7F5FD2FBA
      FBFF2FB7F5FD2FB7F5FD2FB6F5FD2EBBFBFF2FB8F5FD2FB8F5FD2EBBFBFF2FB7
      F7FD2FB9F7FD2EBCFAFF2FB9F7FD2EB9F7FD30BCFAFF2EB8F7FD2EBAF7FD30BD
      FAFF2EBAF7FD2EBAF6FD30BDFCFF2EB9F6FD30BEFCFF2EBBF6FD2EBBF6FD30BE
      FCFF30BBF6FD30BAF6FD2FBDFCFF30BCF6FD30BCF6FD2FBFFCFF30BCF8FD30BC
      F8FD2FBEFBFF2FBDF9FD39B4F5FF0000002E0000000002080A7040CFFFFF3BBE
      EBFF3BBBE7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBE
      EBFF3BBBE7FD3BBBE7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBBE7FD3BBEEBFF3BBB
      E7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBBE7FD3BBE
      EBFF3BBBE7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBEEBFF3BBBE7FD3BBBE7FD3BBE
      EBFF3BBBE7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBBE7FD3BBEEBFF3BBBE7FD3BBB
      E7FD3BBEEBFF40CFFFFF02070A71000000000000000000000004000000001F10
      0A72974E34FF9C5A40FBB05925FED36005FFEB6D00FFB65500E9729537FF42AD
      55FE93D29FFFCEE4CCFE88C689FF8CB78EFFEEE9EEFFC0C1BFFF969393FF9593
      92FF989695FFCBCACAFFEBEBEAFFDEDDDDFFD8D8D8FFD0D0D0FFC9C8C8FFC1C0
      C0FFBAB8B6FFB3B1AFFFA6AEB5FFA99C90FFCB752DFFD75A00FFAC4C0FFE9654
      3DFF796158DD935236F74E2818B500000000836748B7DD9868FF92482CFE0603
      0234000000000000000100000000000000000000000000000000000000000000
      000000000000000000A31B1B1BFFF1EFEDFFF6F4F3FFF9F8F7FFF9F8F7FFF9F8
      F7FFD0CFCEFFCAC9C8FFD3D2D2FFCECECDFFCCCCCBFFDDDCDBFFDEDDDCFFCAC9
      C8FFC9C9C8FFCFCECDFFC6C5C4FFD2D1D0FFD4D3D2FFC2C1C1FFD2D1D0FFD7D6
      D5FFD8D7D6FFD6D5D4FFE4E3E3FFD0CFCFFFD0D0CFFFCCCBCBFFF7F6F5FFF9F8
      F7FFF9F8F7FFF9F8F7FFF8F7F6FFF5F4F2FFEFEDEBFF1B1B1BFF000000A30000
      0000000000000000000000000000000000000000002C2798EEFF3FC2F2FD2DB9
      FBFF2FB8F5FD2FB8F5FD2EBBFBFF2FB8F7FD2FB7F7FD2EBCFAFF2FB9F7FD2EBC
      FAFF2EB9F7FD2EB9F7FD2EB8F7FD30BDFAFF2EBAF7FD2EBAF6FD30BDFCFF2EBA
      F6FD2EB9F6FD30BEFCFF2EBBF6FD2EBBF6FD30BEFCFF2EBBF6FD30BAF6FD2FBD
      FCFF30BCF6FD30BCF6FD2FBFFCFF30BCF8FD2FBEFBFF30BBF8FD30BCF8FD2FC0
      FBFF2FBCF8FD2FBCF8FD31C0FBFF2FBCF8FD2FBCF8FD31C1FBFF2FBDF7FD2FBD
      F7FD2FC0FDFF40C5F3FD2695ECFF0000002C0000000001080A6E37C9FFFF33B8
      EBFF33B5E7FD33B5E7FD33B8EBFF33B5E7FD33B5E7FD33B8EBFF33B5E7FD33B8
      EBFF33B5E7FD33B5E7FD33B5E7FD33B8EBFF33B5E7FD33B5E7FD33B8EBFF33B5
      E7FD33B5E7FD33B8EBFF33B5E7FD33B5E7FD33B8EBFF33B5E7FD33B5E7FD33B8
      EBFF33B5E7FD33B5E7FD33B8EBFF33B5E7FD33B8EBFF33B5E7FD33B5E7FD33B8
      EBFF33B5E7FD33B5E7FD33B8EBFF33B5E7FD33B5E7FD33B8EBFF33B5E7FD33B5
      E7FD33B8EBFF37C9FFFF01070A70000000000000000100000000000000046134
      25CEA7572CFEC85B08FBE66200FF8F3E00C91107004603010023638938F54CAC
      57FD6DB46CFDC3E1C5FEBCDFBEFFA8B8A9FFE7E4E7FFE0E1E0FF8F8D8BFF8C89
      87FF969391FFA5A3A2FFE4E4E4FFFEFEFDFFF3F3F2FFF0EFEFFFEAE9E9FFE2E1
      E0FFD6D5D5FFC9C8C7FFBBB8B6FFA8ABAEFF989DA1FFA77955FFC25806FFB249
      00FE9D4D27FF9B5339FF733C26D84B36258FECB380F6E5A475FB9B4F32FF180C
      0865000000000000000200000000000000000000000000000000000000000000
      000000000000000000A31C1B1BFFF2F0EEFFF5F4F3FFF8F7F6FFF8F7F6FFF8F7
      F6FFD3D3D2FFCDCCCBFFD8D8D7FFC0BFBEFFD0D0CFFFDBDAD9FFCDCCCBFFCAC9
      C8FFB4B3B2FFC6C5C4FFC8C7C7FFC3C3C2FFD8D7D6FFCBCBCAFFC4C3C3FFD5D5
      D4FFDFDEDDFFC4C4C3FFE2E1E0FFC8C7C7FFC7C6C5FFCBCAC9FFF6F5F4FFF8F7
      F6FFF8F7F6FFF7F7F6FFF7F6F5FFF4F2F1FFEFECEAFF1B1B1BFF000000A30000
      0000000000000000000000000000000000000000002B27A0FBFF2C96DAFF40CC
      FCFF2CBBFCFF2FBCFAFF30BDFCFF30BDFCFF30BCFCFF30BEFCFF30BEFCFF30BE
      FCFF30BEFCFF30BEFCFF30BDFCFF2FBFFCFF30BFFCFF30BFFCFF2FBFFCFF2FBF
      FCFF2FBEFCFF2FBEFBFF2FC0FCFF2FBFFCFF30BFFBFF30BFFCFF30BFFCFF30BF
      FBFF31C1FCFF31C1FCFF31C1FDFF31C1FDFF31C1FDFF31C1FDFF31C0FDFF31C2
      FDFF31C2FDFF31C2FDFF31C2FDFF31C2FDFF31C2FDFF31C1FDFF30C2FDFF2DC1
      FEFF42D1FDFF2A8BCCFF279EF9FF0000002B000000000107096D2EC5FFFF2AB5
      EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5
      EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5
      EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5
      EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5
      EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5EAFF2AB5
      EAFF2AB5EAFF2EC5FFFF0107096E00000000000000010704023A62331EC9C45A
      0FFFDA5C00FAEC7B19FE3F2916840000000000000000000000002E18018267A9
      58FF5CAF65FCA9D5A9FFCFE1CFFFD5D7D5FFFFFFFFFFFFFFFFFFDCDCDCFF9795
      94FF9C9997FFA2A09EFFA9A8A7FFDADAD9FFF5F5F5FFEDEDECFFE7E7E6FFE4E3
      E2FFE0DFDDFFDBD9D8FFD3D2D1FFC9C6C4FFBAB7B5FF9EA6ACFE90857DFEA358
      20FFA94200FD9A4616FE9D5436FFDC9769FFB28A63D5F2B787FAA25A3AFE361B
      1199000000000000000100000000000000000000000000000000000000000000
      000000000000000000A31C1B1BFFF3F1EFFFF5F4F3FFF7F6F5FFF7F6F5FFF7F6
      F5FFDBDAD9FFE3E2E1FFD2D1D1FFCFCFCEFFD5D4D3FFE9E9E8FFDBDAD9FFD2D1
      D0FFD7D6D5FFDCDBDAFFCECDCCFFD2D1D0FFD7D6D5FFD3D2D1FFCECECDFFD4D3
      D2FFDEDEDDFFC8C7C6FFD3D3D2FFE1E0DFFFD6D5D5FFE7E6E5FFD8D7D6FFF2F1
      F0FFF7F6F5FFF6F5F4FFF5F4F3FFF2F0EFFFEDEBE8FF1B1B1AFF000000A30000
      0000000000000000000000000000000000000000002B29A4FFFF2190E4FD428E
      BCFF59CEEBFD2BBEFBFD2CBDFDFF2EBAF6FD2EBBF8FD2FBEFBFF30BBF8FD2FC0
      FBFF30BCF8FD2FBCF8FD2FBCF8FD30BFFBFF2EBCF8FD2EBCF8FD2FC0FBFF30BC
      F8FD32BDF7FD34C2FDFF36BEF7FD37BEF7FD37C3FDFF35BFF7FD34BEF7FD32C2
      FDFF2FBEF7FD2EBCF7FD2EC0FDFF2FBEF7FD2FC2FDFF2FBEF7FD2FBEF9FD2FC2
      FCFF2FBEF8FD2FBEF8FD2FC3FCFF2FBFF8FD2FBEF9FD2DC3FEFF2DC3FBFD5BD3
      EEFD296E9FFF2082D2FD29A4FFFF0000002B000000000107096C29BFFBFF26AF
      E8FF26ACE2FD26ACE2FD26AFE8FF26ACE2FD26ACE2FD26AFE8FF26ACE2FD26AF
      E8FF26ACE2FD26ACE2FD26ACE2FD26AFE8FF26ACE2FD26ACE2FD26AFE8FF26AC
      E2FD26ACE2FD26AFE8FF26ACE2FD26ACE2FD26AFE8FF26ACE2FD26ACE2FD26AF
      E8FF26ACE2FD26ACE2FD26AFE8FF26ACE2FD26AFE8FF26ACE2FD26ACE2FD26AF
      E8FF26ACE2FD26ACE2FD26AFE8FF26ACE2FD26ACE2FD26AFE8FF26ACE2FD26AC
      E2FD26AFE8FF29BFFBFF0107096D00000000000000007E3E12D1DA6306FFE175
      19F8EBA061FAFBC79DFE524235910302021D00000000000000000000000A6565
      29DB65B770FF88C089FCCBDECDFFDFDFDFFFFFFFFFFFFCFCFCFFFFFFFFFFDDDD
      DDFFA2A19FFFA7A4A2FFB0AEACFFB0AFADFFCDCCCCFFECECEBFFECECEBFFE3E2
      E1FFDEDDDBFFD8D6D5FFD1CFCEFFCAC8C6FFC2C0BEFFBBB7B4FFB0B1B3FF969B
      9EFF876246FE963E00FE943C05FD853F22F56B412EC4F1BD8FFAB87450FE5C2D
      1BCA000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31C1C1BFFF3F2F0FFF5F4F2FFF6F5F4FFF6F5F4FFF6F5
      F4FFC2C1C0FFC9C8C7FFBDBCBBFFB6B5B5FFD0CFCEFFCAC9C8FFB7B7B6FFB8B7
      B7FFC7C6C5FFCFCECDFFB7B6B5FFC2C1C0FFB9B8B8FFB6B5B5FFC8C7C6FFB9B8
      B7FFCFCECDFFC6C5C4FFB8B7B6FFC8C8C7FFB0AFAFFFE0DFDEFFB9B8B7FFF0EF
      EEFFF5F4F3FFF5F3F2FFF3F1F0FFF0EEEBFFEBE8E5FF1B1A1AFF000000A30000
      0000000000000000000000000000000000000000002B29A3FFFF269AF0FD458D
      C3FFA39B97FD85BABDFD5DD1EDFF42D2FBFD3ACCFBFD2FC0FDFF2FBDF7FD30C0
      FDFF2EBCF7FD2FBDF7FD32BEF7FD39C5FDFF3EC2F7FD42C3F7FD48C9FDFF49C5
      F7FD4AC6F7FD4BCAFDFF4AC6F7FD49C6F7FD4ACAFDFF4AC6F9FD4AC6F9FD4ACB
      FCFF50D0FBFD4FD1FBFD4CD4FFFF46CFFBFD41D2FFFF3BCCFBFD38CCFBFD38D0
      FFFF39CDFBFD39CCFBFD39D1FFFF3ACEFBFD43D6FBFD5ED3EDFF85B9BDFDA59C
      98FD1D609DFF228CDEFD29A3FEFF0000002B000000000106096B23B7F9FF20A7
      E4FF20A5E0FD20A6E0FD20A8E4FF20A6E0FD20A6E0FD20A8E4FF20A7E1FD20A9
      E4FF20A7E1FD20A7E1FD20A7E1FD20A9E4FF20A7E1FD20A7E1FD20A9E4FF20A7
      E1FD20A7E1FD20A9E4FF20A7E1FD20A7E1FD20A9E4FF20A7E1FD20A7E1FD20A9
      E4FF20A7E1FD20A7E1FD20A9E4FF20A7E1FD20A9E4FF20A7E1FD20A7E1FD20A9
      E4FF20A7E1FD20A7E1FD20A9E4FF20A7E1FD20A7E1FD20A9E4FF20A7E1FD20A7
      E1FD20A9E4FF23B8F9FF0106096C000000000000000030160075BA5300E5ED8C
      3AFFFABC88FFFECBA0FFFFD0A8FFE5B892F25E4B3B9B0807053300000000724E
      28BC7EA861FF73B980FBBEDEBFFFD0D4D0FFF6F4F5FFFFFFFFFFFAFAFAFFFFFF
      FFFFE6E6E6FFB0AFAEFFB0AEACFFBEBCBAFFBBBAB8FFC2C1C0FFDAD9D9FFE6E5
      E4FFDFDEDDFFD7D5D4FFD0CFCEFFC9C7C5FFC0BEBCFFB6B4B2FFB4B0ADFFB8B5
      B2FFA2A7ACFE746B63FF7D3D13FE8F3300FF903F16FFAB6646FCB7704FFF8743
      29F1000000120000000100000001000000000000000000000000000000000000
      000000000000000000A31C1C1BFFF4F2F1FFF5F3F2FFF5F4F3FFF5F4F3FFF5F4
      F3FFE2E1DFFFDCDBD9FFE4E3E2FFDFDEDCFFDFDDDCFFE6E5E4FFDDDCDBFFE3E2
      E1FFDDDCDBFFE4E3E1FFDCDBDAFFDCDBDAFFE3E2E1FFE3E2E1FFDDDCDAFFE5E3
      E2FFE0DFDEFFE4E3E2FFDFDEDDFFDAD9D8FFDEDCDBFFE6E5E4FFDDDBDAFFE7E5
      E4FFF4F2F1FFF2F0EFFFF0EEECFFEDEAE7FFE8E4E0FF1A1A19FF000000A30000
      0000000000000000000000000000000000000000002B2AA4FFFF259BF4FF4B96
      CDFFBBB5B3FFA8A6A6FFA19B9CFF9D9E9EFFA0A9A6FF2DC4FEFF2FC2FDFF38C4
      FCFF40C8FDFF48C9FDFF4BCAFDFF4ACBFCFF4ACBFDFF4ACBFDFF4BCBFCFF4BCB
      FDFF4BCAFDFF4BCAFCFF4BCAFEFF4BCCFEFF4BCCFEFF4BCCFEFF4BCCFEFF45CD
      FFFF9EB9BDFFA7B6B6FFA6B7B7FFA7B7B7FFA5B5B5FFA5B5B5FFA3B5B5FF99AF
      AFFF92A6A7FF97ACABFF96ABABFF98A8A8FF9B9C9BFFA09A9BFFA7A5A5FFBBB7
      B3FF2067A7FF238FE2FF29A4FEFF0000002B000000000107096A23BCFBFF20AB
      E4FF20A9E5FF1EA8E5FF1FA5E5FF1DA4E3FF1DA3E3FF1DA1E3FF1DA0E2FF1CA0
      E2FF1CA1E2FF1C9FE2FF1C9FE2FF1C9FE2FF1CA0E2FF1CA0E2FF1CA0E2FF1CA0
      E2FF1CA0E2FF1CA1E2FF1CA1E2FF1CA1E2FF1CA1E2FF1CA1E3FF1CA1E3FF1CA1
      E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1
      E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1E3FF1CA1
      E3FF1CA1E3FF1FB0F7FF0106096B0000000000000000000000000000000D1E0D
      005E813900C0E97C21FFF3A25EFFFCC190FFFFCEA6FFFDCFA9FE8D7057BEE5AC
      84F2B1914CFE77BB83FE9FCCA0FFD8E7D9FFD0D3D1FFF4F4F4FFFFFFFFFFF9F9
      F9FFFDFDFDFFF0F0F0FFC2C2C1FFB7B6B4FFCAC9C6FFCFCECCFFC6C6C4FFC9C8
      C7FFD5D4D4FFD8D7D6FFD0CFCDFFC8C5C4FFBFBCBBFFB6B3B1FFB2AFADFFB2AF
      ADFFB9B4B1FFA3A5A6FD6E7274FF4B3B31B26E2000E58A3604FF964A29FD9E55
      39FF060302350000000000000004000000000000000000000000000000000000
      000000000000000000A31C1C1CFFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3
      F2FFB4B3B2FFB3B2B1FFBFBEBDFFBCBAB9FFA8A7A6FFD6D5D4FFB2B1B0FFAEAD
      ACFFB4B3B2FFC4C3C2FFAAA9A8FFB6B4B3FFCFCECDFFAFAEADFFBCBBBAFFBEBD
      BCFFAAA9A8FFB9B8B7FFADACABFFB6B5B4FFB6B5B4FFC5C4C3FFA3A2A1FFB7B6
      B5FFF1EFEDFFEFEDEBFFECEAE7FFE8E5E1FFE2DED9FF191918FF000000A30000
      0000000000000000000000000000000000000000002B29A3FFFF2599F0FD4C96
      CDFFBEBAB6FDB7B7B7FDB8BAB9FFA0A0A1FD89817DFD41CBFFFF49C7F9FD4CCC
      FEFF49C8F8FD49C8F9FD48C8F8FD4BCCFEFF48C8F8FD48C7F8FD4BCBFEFF48C7
      F8FD48C9F8FD4BCDFEFF48C9F8FD48C9F8FD4BCDFEFF48C9F8FD48C9F8FD46CF
      FFFF8C959AFD959394FD969696FF949394FDBAB9BAFFB6B6B7FDB7B6B7FDB2B2
      B2FF99999AFDA3A3A2FDA1A1A2FF9A999AFDA9A8A9FDB6B5B5FFB5B5B5FDBFBB
      B7FD1F68A6FF228CDEFD29A4FEFF0000002B000000000006096921BCF9FF1EAC
      E5FF1EA9E1FD1EA9E1FD1EACE5FF1EA9E1FD1EA9E1FD1EADE5FF1EAAE1FD1EAB
      E5FF1DA8E1FD1DA8E1FD1DA7E0FD1CA8E4FF1CA5E0FD1CA4DEFD1CA5E2FF1AA1
      DEFD1AA0DFFD1B9FE1FF199CDDFD199ADDFD199DE1FF1999DCFD1998DCFD199A
      E0FF1999DCFD1999DCFD199BE0FF1999DCFD199BE0FF1999DCFD199ADCFD1A9C
      E0FF1A9ADCFD1A9ADCFD1A9CE0FF1A9ADDFD1A9ADDFD1A9CE1FF1A9ADDFD1A9A
      DDFD1A9CE1FF1CABF5FF0006096A000000000000000000000001000000000000
      00000000000008030032491F0091BA5705E6ED8B39FFF6AF73FFFDC89CFFFDD5
      B0FEEDAA74FE93A566FF89C598FEC2DDC2FEE5EFE5FFCBD2CCFFE2E1E2FFFEFB
      FCFFFBFBFAFFFAF9F8FFF6F6F5FFD6D6D5FFC0BFBEFFCECDCBFFDFDEDCFFDAD9
      D7FFCAC9C9FFC5C4C4FFC8C7C5FFC7C4C2FFBEBBBAFFB4B2B0FFB2AFADFFB4B1
      AFFFB0ADABFEB3AFADFDA6A5A4FE010101150000000360300EC6883300FD8E3F
      19FC673623CE0502012F00000000000000010000000000000000000000000000
      000000000000000000A31C1C1CFFF5F4F3FFF4F3F1FFF4F2F1FFF4F2F1FFF4F2
      F1FFEBEAE8FFEAE9E8FFEEEDEBFFEAE8E7FFE7E6E4FFE3E1E0FFE9E8E7FFEBEA
      E8FFEAE8E7FFE9E7E6FFE9E7E6FFECEBEAFFECEBEAFFE9E8E7FFE7E5E4FFE9E8
      E6FFE7E6E4FFEDECEBFFE1E0DEFFEAE9E7FFEAE8E7FFE8E6E5FFE8E6E4FFF0EE
      ECFFEEECEAFFEBE9E6FFE7E4E0FFE2DED9FFDBD5CFFF181716FF000000A30000
      0000000000000000000000000000000000000000002B29A3FFFF2599F0FD4C97
      CEFFC0BCB9FDBBBBBBFDC2C2C2FFC3C3C3FDC8C0BEFD49CDFEFF48C9F9FD4BCD
      FEFF48C9F8FD48C9F8FD48C9F8FD4BCCFEFF48C8F8FD48CAF8FD4BCEFEFF48CA
      F8FD4ACAF8FD4ACEFEFF4ACAFAFD4ACAFAFD4ACEFDFF4AC9FAFD4AC9FAFD43CF
      FFFFB6BFC4FDC6C4C4FDC8C8C8FFC4C4C4FDC6C6C6FFC2C2C2FDC3C2C2FDBDBF
      C0FFA7A8A8FDB1B1B1FDB5B5B5FFB0B0B0FDBCBCBCFDBFBFBFFFB7B7B7FDC0BC
      B8FD1F67A7FF238EDFFD29A5FFFF0000002B00000000000608671CB7F8FF19A7
      E3FF19A5DFFD19A5DFFD19A7E3FF19A5DFFD19A5DFFD19A7E3FF19A5DFFD19A8
      E3FF1AA6DFFD1AA6DFFD1AA6E0FD1AA8E4FF1AA6E0FD1AA6E0FD1AA8E4FF1AA6
      E0FD1AA6E0FD1AA8E4FF1AA6E0FD1AA7E0FD1AA9E4FF1AA5E0FD1AA6E0FD1AA6
      E4FF1AA2DFFD19A1DFFD19A2E1FF199FDDFD179FE2FF179CDCFD189BDCFD169B
      E0FF1698DBFD1697DBFD1697DFFF1594D9FD1594DAFD1596DEFF1595DAFD1595
      DAFD1597DEFF17A5F3FF0005086A000000000000000000000000000000010000
      000300000000000000000000000000000011210E0062833900C2E6771BFEF19D
      56FFFEBF8CFFC29B5DFC8EC097FDA9CFACFFDFECE0FEE7F1E8FEBFD0C0FFBECA
      C3FFE1E3E6FFF1F3F6FFF5F5F6FFF6F5F4FFE6E4E3FFCAC9C8FFC9C9C7FFE1E0
      DFFFEEEDECFFE2E2E1FFCBCACAFFBAB9B8FFB5B2B0FFB3B0ADFFB3B0AEFFB3B0
      AEFFAFACAAFCB3B0AEFF6E6F6FCB03030222332A2276B99475DBD39363FE923F
      0CFC903C0EFF8B482BF20C060448000000000000000000000000000000000000
      000000000000000000A31C1C1CFFF6F5F4FFF4F2F1FFF3F1EFFFF3F1EFFFF3F1
      EFFFADACABFFA7A6A5FFC1C0BFFF9A9998FF8F8E8DFFAEADACFFA7A5A5FFA8A7
      A6FFABAAA9FF9E9D9CFFADACABFFCCCBC9FF9C9B9AFF9D9B9BFF959493FFA4A3
      A2FFA5A4A3FFBFBDBCFFA8A7A6FFACABAAFF9E9D9BFF999897FFB2B0AEFFEDEA
      E8FFEBE8E4FFE6E3DFFFE1DCD7FFDAD4CDFFD1C9C0FF171614FF000000A30000
      0000000000000000000000000000000000000000002B2AA4FFFF249BF4FF4C98
      CFFFCCC7C3FFC8C8C8FFC9C9C9FFCACACAFFCEC7C4FF4AD1FFFF4ACDFEFF4ACE
      FDFF4BCEFEFF4BCEFEFF4BCDFEFF4ACFFDFF4BCFFEFF4BCFFEFF4ACFFDFF4CCF
      FEFF4CCFFEFF4CCFFFFF4CCFFFFF4CCFFFFF4CCEFFFF4CD0FFFF4BD0FFFF44D0
      FFFFBFC8CBFFCCCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFC8C8C8FFC9C9C9FFC2C2
      C3FFB9BABBFFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5C5FFCAC5
      C1FF1E67A6FF2490E3FF2AA6FFFF0000002B000000000006086818B3F7FF16A4
      E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4
      E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4
      E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4E4FF16A4
      E4FF16A5E4FF16A5E4FF16A5E4FF16A5E4FF16A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A6E4FF17A4E3FF17A3E3FF17A2E3FF17A1E2FF15A0
      E2FF159FE2FF17ABF5FF00050869000000000000000000000000000000000000
      00000000000000000001000000020000000000000000000000000A0400364F21
      0097C45C08E9EE751BFFB1A669FFA1CFB3FDC8DDC7FFEFF5F1FFE3F0E7FFC6D1
      B7FFD5C09DFFD3C4AFFFD6D3D0FFDEE1E5FFE7E9EDFFE9E9EBFFD7D7D7FFC9C8
      C6FFD6D5D3FFF2F1EFFFFDFCFAFFECEBE9FFCBC9C7FFB4B1AFFFB2AFADFFB4B0
      AEFFAFADACFEA8AAABFEB39B88EAE3B68AF1FFD2A6FFFFD4A9FFF7D0A7FBD99D
      6FFC903D07FD8E3904FF421F0CAA000000000000000000000000000000000000
      000000000000000000A31C1C1CFFF7F6F5FFF3F2F0FFF2F0EEFFF2F0EEFFF2F0
      EEFFF0EEECFFEFEDEBFFEFEDEBFFEEECEBFFEFEDEBFFEEECEBFFEFEDEBFFEFED
      EBFFE6E4E2FFEEEDEBFFEEEDEBFFE2E0DEFFEDEBE9FFEEECEBFFEFEEECFFEFED
      EBFFEEEDEBFFF0EEECFFEFEDEBFFEEEDEBFFEDEAE8FFECEAE8FFEAE8E5FFE7E4
      E0FFE6E2DEFFE0DBD6FFD8D2CBFFCFC7BEFFC3B9AFFF151412FF000000A30000
      0000000000000000000000000000000000000000002B28A4FFFF269AEFFD5FA3
      D4FFD0CBC8FDC9C9C9FDCDCDCDFFB8B8B8FDA29D9BFD6DC5D9FF46CEFBFD46CE
      FFFF44CBFBFD44CBFBFD44CAFBFD46D0FFFF44CAFBFD44CAFBFD46D0FFFF44CA
      FBFD44CAFBFD46D0FFFF44CAFBFD44CAFBFD46D0FFFF44CAFBFD44CDFBFD62D1
      EAFFA19C9BFDA4A3A3FDA5A5A5FFA2A2A2FDCCCCCCFFC9C9C9FDC9C9C9FDC5C5
      C6FFB9BABBFDC7C7C6FDCACACAFFC6C6C6FDC4C4C4FDC7C7C7FFC4C4C4FDCDC8
      C5FD3578B0FF2591DFFD2AA7FFFF0000002B000000000005076617B2F7FF17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1
      DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A2DEFD15A2
      DEFD17A5E4FF17B3F7FF00060868000000000000000000000000000000000000
      0000000000000000000000000000000000000000000300000000000000000000
      0000010000141A1104647E3D03CBACC9ABFFB5D4BEFEE8EEE5FFF8F6F2FEF7E3
      CAFFF2CC98FFEDC68DFFE2BC86FFD6BA90FFCFBDA3FFCCC4B8FFCFCDCBFFCDCE
      D1FFBFC2C8FFBFC2C9FFD7DCE2FFF9FDFFFFFAFFFFFFDADDE1FFB5B4B2FFACAB
      AAFEBAB5B0FFDFC3AAFEFFD1A3FFF8C195FFD89C6FFBBF7745FFA1501BFF923D
      05FF7A3100EC451B00B30B04004A000000000000000000000000000000000000
      000000000000000000A31C1C1CFFF7F6F5FFF3F2F0FFF1EFEDFFF1EFEDFFF1EF
      EDFFACAAA9FF9F9E9CFF999897FF989796FF8A8988FF9D9C9BFFA5A4A2FFA3A2
      A1FF8C8B8AFF979695FF959493FFA09E9DFFACABA9FF91908FFFC2C0BFFFA2A1
      A0FF9C9B99FFB7B5B4FFA3A2A1FFB7B5B4FFA5A3A2FFABA9A7FFA7A5A2FF9693
      90FFDFDAD5FFD7D1CAFFCDC4BBFFC0B6ABFFB3A699FF13110FFF000000A30000
      0000000000000000000000000000000000000000002B2CA7FFFF3EA8F6FF65A7
      D7FFD6D2CFFFCFCFCFFFD0D0D0FFCECECEFFCCCCCCFFBBBABBFFA2CCCFFF9ED0
      D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0
      D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0D5FF9ED0D5FFA0CFD3FFB8BA
      BAFFCAC9CAFFCECECDFFCDCDCDFFCDCDCDFFD0D0D0FFCFCFCFFFD0D0D0FFC3C4
      C6FF959697FFA0A0A0FF9F9F9FFF9D9D9DFFC0C0C0FFCBCBCBFFCBCBCBFFD3CF
      CCFF3C7CB1FF3EA0E7FF2DA9FFFF0000002B000000000005076519B4F7FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF19B4F7FF00050766000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      000300000000000000000000000C9A8457E5DADAC8FDEFDECBFCFBF5F0FEFAF4
      EBFFF0D5B0FFECC895FFEEC78EFFEEC180FFEBBB72FFE5B56BFFDDB06AFFD6AF
      70FFD3B17AFFCAAD7DFFBFA67BFFCBB38CFFCAA66EFED5A271FEF0C7A6FEE8BD
      99FCEBB081FBE89A5CFFC57132FFA34A0CFF893200FF652400DD3313009C0E05
      0052010000160000000000000000000000000000000000000000000000000000
      000000000000000000A31C1C1CFFF8F7F6FFF3F1EFFFF0EEECFFF0EEECFFF0EE
      ECFFEEECEAFFEFEDEBFFEFECEAFFEFEDEBFFEAE8E6FFEFEDEAFFEFEDEBFFEEEC
      EAFFEFEDEBFFEFEDEBFFEEECEAFFEFEDEBFFEFEDEBFFEEECEAFFF0EEECFFF0EE
      ECFFF0EEECFFEFEDEBFFEEECE9FFEDEAE8FFE9E6E3FFE5E1DDFFE1DCD7FFDBD6
      D0FFD4CDC5FFCAC0B7FFBCB1A6FFAEA194FF9E8F7EFF100E0CFF000000A30000
      0000000000000000000000000000000000000000002B42B2FFFF40A8F1FD65A8
      D8FFD6D2CFFDD0D0D0FDD4D4D4FFD0D0D0FDD1D1D1FDD1D0D1FFC2C0C2FDC4C2
      C3FFBFBEBFFDBFBEBFFDBFBEBFFDC5C2C3FFBFBEBFFDBFBEBFFDC5C2C3FFBFBE
      BFFDBFBEBFFDC5C2C3FFBFBEBFFDBFBEBFFDC5C2C3FFC0BEBFFDC1BFC1FDCECF
      CEFFD0D1D1FDD0D0D0FDD4D4D4FFD0D0D0FDD4D4D4FFD0D0D0FDD0D0D0FDCBCC
      CCFFBDBEBFFDCDCDCDFDD0D0D0FFCCCCCCFDCACACAFDCECECEFFCACACAFDD3CE
      CBFD3A7DB2FF3E9FE4FD42B4FFFF0000002B000000000005076417B2F7FF17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1
      DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1
      DEFD17A5E4FF17B2F7FF00050765000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000500000000190C0161EDCCADFFEEDBC8FBF8EFE3FFFBF9
      F7FEF7E9D6FFEECC9BFFECC791FFEBC288FFEABF7EFFEABB73FFEBB767FFEBB2
      5AFFEAAD4DFFE9A943FFE9A63AFFE49E2CFFE29B21FFDB8B27FFF89543FFE873
      15FFD05B00FFB24900FA6C2A00C92A1100810703003800000005000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      000000000000000000A31C1C1CFFF9F8F7FFF2F0EFFFEFECEAFFEFECEAFFEFEC
      EAFFB3B1B0FF9C9B99FF939190FFBDBBB9FF8A8887FFA19F9EFFB7B5B3FF9392
      90FF8F8D8CFFB3B1B0FF8E8D8BFFA6A4A2FF9D9B9AFFA1A09EFFEEECE9FFEFEC
      EAFFEEEBE9FFEDEAE8FFE7E4E0FFD2CAC2FFD0C7BDFFD9D2CBFFD8D1CAFFD5CE
      C6FFD1C9C1FFCCC3BAFFC6BCB2FFBFB5AAFFA99D92FF0A0907FF000000A30000
      0000000000000000000000000000000000000000002B46B3FFFF3FA8F1FD67AA
      DAFFD9D5D2FDD2D2D2FDD7D7D7FFCFCFCFFDC9C9C9FDCECECEFFC9C9C9FDCECD
      CDFFCAC9C9FDCAC9C9FDCAC9C9FDCECDCDFFCAC9C9FDCAC9C9FDCECDCDFFCAC9
      C9FDCAC9C9FDCECDCDFFCAC9C9FDCAC9C9FDCECDCDFFCAC9C9FDC9C9C9FDCECE
      CEFFC9C9C9FDC9C9C9FDCDCDCDFFC9C9C9FDD7D7D7FFD2D2D2FDD3D3D3FDCECF
      D0FFC0C1C2FDCFCFCFFDD2D2D2FFCECECEFDCCCCCCFDCFCFCFFFCBCBCBFDD4D0
      CDFD3C7EB3FF3E9FE4FD47B6FFFF0000002B000000000005076317B2F7FF17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1
      DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1
      DEFD17A5E4FF17B2F7FF00050764000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000100000002866138CDF1DEC9FEEFDECBFCFCF8
      F3FFFCF7F1FFF2DAB8FFECC893FFECC58DFFEBC083FFEABC78FFE8B86FFFE7B4
      65FFE6B05CFFE5AC52FFE4A848FFE3A53FFFE1A037FEDC982BFECB6000F26A38
      0AAD231102670401002400000000000000000000000000000000000000030000
      0003000000010000000000000000000000000000000000000000000000000000
      000000000000000000A31C1C1CFFF9F9F8FFF2F0EEFFEDEBE9FFEDEBE9FFEDEB
      E9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEB
      E9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEA
      E8FFECE9E7FFE5E1DDFFC9BFB5FFEBE7E3FFFDFDFDFFF7F6F5FFF6F5F4FFF6F5
      F4FFF6F5F4FFF6F4F3FFFAF9F8FFEAE9E8FF3A3939FF000000FB000000580000
      0000000000000000000000000000000000000000002B47B4FFFF41AAF4FF5BA9
      DFFFE3DEDAFFDBDBDBFFDBDBDBFFC9C9C9FFB1B1B1FFB2B2B2FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
      B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB2B2
      B2FFB2B2B2FFB2B2B2FFB2B2B2FFB1B1B1FFDADADAFFDBDBDBFFDCDCDCFFC8C9
      C9FF999A9BFFA2A2A2FFA2A2A2FFA0A0A0FFC7C7C7FFD3D3D3FFD3D3D3FFDCD7
      D4FF3B7EB2FF3FA2E8FF47B7FFFF0000002B000000000005076219B4F7FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF19B4F7FF00050763000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000000A050140E4C19DFFF0DDCAFCF6EA
      DBFEFBF8F5FEF8EDDDFFEECE9FFFEDC690FFEBC388FFEABE7DFFE9BA73FFE8B6
      69FFE7B25FFFE6AE55FFE5AA4BFFE4A642FFDE9F37FDE2A133FEB0731BEA0000
      0008000000000000000000000000000000020000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31D1C1CFFFAF9F9FFF1EFEDFFECEAE7FFECEAE7FFECEA
      E7FF8C8B89FFA2A19FFFA8A7A5FFA4A2A0FF969493FFAAA8A6FF888785FF9E9C
      9AFFA9A8A6FFA9A8A6FFA7A6A4FF888785FFA4A2A0FFAEACAAFFA8A6A4FFCAC8
      C5FFE9E6E3FFCBC2B8FFEFECE9FFF7F6F5FFE4E1DDFFE2DEDAFFE2DEDAFFE2DE
      DAFFE2DEDAFFEEECE9FFEFEFEEFF3C3C3CFF000000FB0000005F000000000000
      0000000000000000000000000000000000000000002B45B4FFFF40A9F1FD41A2
      E6FFDBDBDAFDDADAD9FDDEDEDEFFDADADAFDDCDCDCFDE0E0E0FFDCDCDCFDE0E0
      E0FFDCDCDCFDDCDCDCFDDCDCDCFDE0E0E0FFDCDCDCFDDCDCDCFDE0E0E0FFDCDC
      DCFDDCDCDCFDE0E0E0FFDCDCDCFDDCDCDCFDE0E0E0FFDCDCDCFDDCDCDCFDE0E0
      E0FFDCDCDCFDDCDCDCFDE0E0E0FFDCDCDCFDDEDEDEFFDADADAFDDADADAFDCDCE
      CFFFD0D0D1FDD5D5D4FDD8D8D8FFD4D4D4FDD2D2D2FDD6D6D6FFD2D2D2FDDBD7
      D3FD3C80B4FF3EA3E5FD47B8FFFF0000002B000000000004065F17B2F7FF17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1
      DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1
      DEFD17A5E4FF17B2F7FF00040660000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000002000000005C3C19AFF1DAC3FFECD9
      C5FBFBF4ECFFFCF8F3FFF3DEC1FFECC892FFECC58DFFEBC082FFEABC78FFE9B8
      6EFFE8B464FFE6B05AFFE5AC50FFE4A846FFE3A43CFFDB9C32FBDE992CFF2E19
      007F000000030000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31D1D1DFFFBFAFAFFF1EFEDFFEBE8E6FFEBE8E6FFEBE8
      E6FF454443FF4A4948FF484747FF4F4E4DFF454443FF807E7CFF565554FF3A3A
      39FF323131FF343333FF373736FF363535FF3A3A39FF3B3B3AFF41403FFFCAC7
      C4FFE1DCD7FFD3CBC2FFFCFCFBFFE3E0DCFFE2DEDAFFE2DEDAFFE2DEDAFFE2DE
      DAFFEFEDEBFFF1F0F0FF3D3D3DFF000000FB0000005E00000000000000000000
      0000000000000000000000000000000000000000002B47B5FFFF41AAF1FD3CA8
      F2FFA9C6DBFDE1DEDCFDE1E1E1FFDDDDDDFDDDDDDDFDE1E1E1FFDDDDDDFDE1E1
      E1FFDDDDDDFDDDDDDDFDDDDDDDFDE1E1E1FFDDDDDDFDDDDDDDFDE1E1E1FFDDDD
      DDFDDDDDDDFDE1E1E1FFDDDDDDFDDDDDDDFDE1E1E1FFDDDDDDFDDDDDDDFDE1E1
      E1FFDDDDDDFDDDDDDDFDE1E1E1FFDDDDDDFDE1E1E1FFDCDCDCFDE0E0E0FDC8C9
      CCFFD6D6D5FDD4D4D4FDD8D8D8FFD4D4D4FDD4D4D4FDD7D7D7FFD3D3D3FDDDD8
      D5FD3D83B6FF3FA4E7FD48BAFFFF0000002B000000000006085316AFF3FF17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1
      DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1
      DEFD17A5E4FF16B0F3FF00050753000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000003020124D3AD84F8F1DE
      C9FDF1E1CEFDFAF7F2FEFAF1E6FFEFD2A8FFECC68FFFECC387FFEBBE7CFFE9BA
      72FFE8B668FFE7B25FFFE6AE55FFE5AA4BFFE4A641FFDC9D36FCE29F32FE8A57
      12D1000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31D1D1DFFFBFBFAFFF0EEECFFEAE7E4FFEAE7E4FFEAE7
      E4FF676664FF787675FFDEDBD8FFDDDBD8FFDAD7D4FFDFDCD9FFDDDAD7FFDAD7
      D5FFD5D2CFFFD7D5D2FFE4E1DEFFD4D1CEFFDDDAD7FFD6D3D0FF9C9A98FFDAD7
      D3FFD8D2CBFFE2DDD8FFF4F2F1FFE2DEDAFFE2DEDAFFE2DEDAFFE2DEDAFFEFED
      EBFFF2F1F1FF3E3E3EFF000000FB0000005F0000000000000000000000000000
      0000000000000000000000000000000000000000002B46B6FFFF44AEF6FF42AD
      F5FF4EAAE6FFEBE7E6FFE4E4E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE5E5E5FFD0D1D3FFC3C4
      C4FFCCCCCCFFCCCCCCFFCCCCCCFFCBCBCBFFD8D8D8FFDCDCDCFFDCDCDCFFE5DF
      DEFF3E8ABCFF41AAEEFF48BCFFFF0000002B00000000010C104917A8E7FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5E4FF17A5
      E4FF17A5E4FF17A8E7FF010C1049000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000002000000003821098DEDD3
      B8FFECD8C0FBF9EFE3FFFAF7F3FEF6E7D1FFEDCA97FFEBC48BFFEBC083FFEABC
      77FFE9B86DFFE7B464FFE6B05AFFE5AC50FFE2A646FEDFA13CFDE5A335FFBB79
      1CF0000000120000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31D1D1DFFFCFBFBFFEFEDEBFFE9E6E3FFE9E6E3FFE9E6
      E3FFE9E6E3FFE9E6E3FFE9E6E3FFE9E6E3FFE9E6E3FFE9E6E3FFE9E6E3FFE9E6
      E3FFE9E6E3FFE9E6E3FFE9E6E3FFE8E5E2FFE7E4E1FFE6E2DFFFE4E0DCFFE1DD
      D8FFD2CBC3FFE5E0DBFFF2F0EEFFE2DEDAFFE2DEDAFFE2DEDAFFEFEDEBFFF2F2
      F2FF3E3E3EFF000000FA0000005F000000000000000000000000000000000000
      0000000000000000000000000000000000000000002646B6FFFF41ACF0FD44B0
      F6FF3EAAF2FD6AB4E3FDF1ECE9FFE5E2E1FDE2E1E1FDE5E5E5FFE1E1E1FDE5E5
      E5FFE1E1E1FDE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1
      E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5
      E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE7E7E7FFE0E1E1FDB2B3B4FDBBBB
      BAFFB7B7B7FDB7B7B7FDBABABAFFB6B6B6FDD2D2D2FDDEDEDEFFDADADAFDDCDA
      D8FD3C91C9FF41ABEFFD47BCFFFF0000002600000000010C114515A4E3FF17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1
      DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5
      E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1DEFD17A5E4FF15A1DEFD15A1
      DEFD17A5E4FF15A4E3FF010C1146000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000100000011B38D
      60E8F1DDC7FDEFDBC2FDFBF5EDFFFBF6EFFFF3DCBAFFECC58DFFECC287FFEABE
      7CFFE9BA72FFE8B668FFE7B25EFFE6AE55FFE5AA4BFFE2A341FEE5A539FFC381
      1EF50100001A0000000000000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31D1D1DFFFCFCFCFFEFEDEAFFE7E4E1FFE7E4E1FFE7E4
      E1FFE7E4E1FFE7E4E1FFE7E4E1FFE7E4E1FFE7E4E1FFE7E4E1FFE7E4E1FFE7E4
      E1FFE7E4E1FFE7E4E1FFE6E3E0FFE6E2DFFFE4E1DDFFE2DEDAFFE0DBD6FFDCD6
      D1FFCCC4BBFFE3DED9FFF2F0EEFFE2DEDAFFE2DEDAFFEFEDEBFFF2F2F2FF3E3E
      3EFF000000FA0000005600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001A46B8FFFF41ACF2FD44B1
      F5FF42AFF2FD3EACF1FD57B3EBFFBCD7E7FDEBE9E9FDF8F1EDFFF3ECE9FDF7F1
      EDFFF0EDEAFDEAEAEAFDEAEAEAFDEEEEEEFFEAEAEAFDEAEAEAFDEEEEEEFFEAEA
      EAFDEAEAEAFDEEEEEEFFEAEAEAFDEAEAEAFDEEEEEEFFEAEAEAFDEAEAEAFDEEEE
      EEFFEAEAEAFDEAEAEAFDEEEEEEFFE6E7E7FDDFE0E0FFD2D3D3FDDEDEDEFDE3E3
      E3FFDEDEDEFDDEDEDEFDE3E3E3FFDEDEDEFDDCDCDCFDE1E1E1FFDEDCDCFDC0CC
      D4FD3A9DDBFF43AFF1FD47BCFFFF0000001A00000000010A0E3E15A4E3FF17A5
      E4FF16A2DFFD16A2DFFD17A5E4FF16A2DFFD16A2DFFD17A5E4FF15A2DEFD17A5
      E4FF16A2DFFD16A2DFFD16A2DFFD17A5E4FF16A2DFFD16A2DFFD17A5E4FF16A2
      DFFD16A2DFFD17A5E4FF16A2DFFD16A2DFFD17A5E4FF16A2DFFD16A2DFFD17A5
      E4FF16A2DFFD16A2DFFD17A5E4FF15A2DEFD17A5E4FF16A2DFFD16A2DFFD17A5
      E4FF16A2DFFD16A2DFFD17A5E4FF16A2DFFD16A2DFFD17A5E4FF16A2DFFD16A2
      DFFD17A5E4FF15A4E3FF010A0E40000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000001C0D
      0167E9CBABFFEED8BFFCF4E4D0FEFAF6F0FEFAF0E2FFEFD0A3FFEBC388FFEBC0
      83FFEABC77FFE9B86DFFE8B463FFE7B059FFE4AA50FEE0A544FDE4A53EFEAB6E
      1BE7000000090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A31D1D1DFFFDFDFDFFEFEDEBFFE6E3DFFFE6E3DFFFE6E3
      DFFFE6E3DFFFE6E3DFFFE6E3DFFFE6E3DFFFE6E3DFFFE6E3DFFFE6E3DFFFE6E3
      DFFFE6E3DFFFE5E2DEFFE4E1DDFFE3E0DBFFE1DDD9FFDEDAD5FFDAD5D0FFD5CF
      C8FFC4BAB0FFE1DCD6FFF2F0EEFFE2DEDAFFEFEDEBFFEEEEEEFF3D3D3DFF0000
      00FA000000550000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000545ACEBF843B0F7FF45B2
      F7FF45B1F7FF45B3F7FF43B3F7FF3EB1F6FF41B1F2FF47B4F3FF47B5F2FF44B0
      ECFF76B1D2FFE6E1DFFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDEFFDDDDDEFFE2E2E1FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFEBE6E3FF83B5
      D3FF3FAEEFFF44B5F6FF47B0EBF8000000050000000001090D3D14A2E5FF14A1
      E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1
      E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1
      E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1
      E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1
      E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1E3FF14A1
      E3FF14A1E3FF14A2E5FF010A0E41000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00059D7240DDF0DBC4FDECD4B8FCF8EEE0FFF9F4ECFEF6E5CDFFEDC893FFECC1
      86FFEABE7CFFE9BA72FFE8B668FFE7B25EFFE6AE54FFDDA449FBE0A43FFD653E
      0CB5000000000000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000096111111FFFAF9F9FFF4F3F1FFE5E1DEFFE5E1DEFFE5E1
      DEFFE5E1DEFFE5E1DEFFE5E1DEFFE5E1DEFFE5E1DEFFE5E1DEFFE5E1DEFFE5E1
      DDFFE4E0DDFFE3DFDCFFE2DEDAFFE0DBD7FFDDD8D3FFD9D4CEFFD4CDC7FFCCC4
      BCFFBAAEA3FFDED9D3FFF2F0EEFFEFEDEBFFEEEEEEFF373737FF000000F90000
      0056000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A6280C143B2F6FF45B3
      F7FF42AFF3FD44B1F2FD44B5F8FF43B3F4FD43B4F4FD45B9F9FF42B5F4FD43B9
      F8FF3BA8E2FDC7D7DFFDE5E2E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1
      E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5
      E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5
      E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE7E5E5FFD1DAE0FD3DA2
      DCFD44B6F7FF44B7F9FF2A6380C100000000000000000000000B093B58A8093D
      5CAB093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C
      5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C
      5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C
      5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C
      5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C5BAA093C
      5BAA0A3D5CAB093A57A80000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      000012090253E5C29AFFEBD8C0FAF0D9BCFEF7ECDDFEFAEFE2FFF2D8B3FFEBC3
      88FFEAC082FFEABC77FFE9B86DFFE6B263FEE4AD58FEE0A951FBDD9C3AFF0F08
      004D000000000000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000062000000FFC4C4C4FFFDFDFDFFEBE8E6FFE3DFDCFFE3DF
      DCFFE3DFDCFFE3DFDCFFE3DFDCFFE3DFDCFFE3DFDCFFE3DFDCFFE3DFDCFFE2DF
      DBFFE2DEDAFFE0DCD8FFDEDAD5FFDCD7D2FFD8D2CCFFD2CCC5FFCBC3BBFFC0B7
      ADFFADA193FFDCD6D0FFFBFBFBFFEFEFEFFF373737FF000000F9000000570000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000813185243B1F7FF45B2
      F6FF44B1F2FD43B2F2FD46B6F8FF43B4F3FD43B5F3FD46B8F9FF43B7F5FD46BB
      F9FF43B7F3FD47ADE0FDD6E0E5FDEDE9E6FFE2E2E1FDE1E1E1FDE5E5E5FFE1E1
      E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5
      E5FFE1E1E1FDE1E1E1FDE5E5E5FFE1E1E1FDE5E5E5FFE1E1E1FDE1E1E1FDE5E5
      E5FFE1E1E1FDE1E1E1FDE5E5E5FFE2E2E1FDE9E5E2FDE2E6E8FF4DA9DBFD42B4
      F3FD46B9F8FF44B7F9FF08141852000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100000000593817ADF0D8BCFFE9D2B5FAF0D7B7FEF6E7D3FFF4E2CAFEEECC
      9BFFEBC184FFE8BC7CFEE7B872FEE8B567FFDDAC5CF9E7AF54FF663D0DB80000
      0000000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000010000000EB383838FFF8F8F8FFFEFEFEFFF4F3F2FFEEEC
      E9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE9FFEDEBE8FFEDEAE8FFECE9
      E7FFEBE8E5FFE8E5E2FFE6E2DEFFE1DDD8FFDCD6D1FFD4CDC6FFC9C1B7FFBCB1
      A6FFA7998AFFDBD5CFFFEFEFEFFF373737FF000000FA00000056000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000337290C342B2
      F8FF44B5F8FF46B6F8FF46B7F7FF46B8F9FF46B9F9FF46BAF8FF46BAFAFF47BD
      FAFF47BEFAFF45BEF9FF42B4EEFF9FD2E9FFE0E7EBFFF8F1EEFFF9F1EEFFF9F1
      EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F0EEFFF9F0EEFFF9F0EEFFF9F0
      EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
      EEFFF9F1EEFFF9F1EEFFF9F2EEFFE4E8EBFFA3D1E8FF44B0E9FF43B9F7FF46BA
      F9FF43B8F9FF337490C300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000D78512CC6EFD5B4FFEED5B8FCE8CEAAFBEED6B5FDEDD1
      ABFDE8C28CFDE6BC7DFDE4B875FCE3B66FFBE9B665FF8E5B1DD6010000140000
      0000000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000059000000FD404040FFDADADAFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFCFFFBFB
      FAFFF9F8F7FFF6F4F3FFF2EFEDFFECE8E5FFE4DFD9FFD8D1C9FFCAC0B6FFB8AC
      9FFFA19181FFCAC4BDFF373737FF000000FA0000005500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B4396
      BEDF42B3F7FF43B3F3FD46B8F9FF43B6F3FD43B7F5FD46BBFAFF44B8F4FD47BE
      FAFF46BBF6FD46BDF6FD45BDF6FD42C0F9FF3EB9F2FD3CB8EEFD3DBCF2FF3DBA
      EEFD3EBBEEFD3EC0F3FF3EBDEFFD3EBEEFFD40C3F4FF3FC0F0FD3FBFF0FD40C3
      F4FF3EBEEFFD3EBDEFFD3EBFF3FF3DBBEEFD3DBDF2FF3DB9EDFD3CB8EDFD3CB9
      F1FF3CB5ECFD3BB4ECFD3BB7F1FF3DB4F0FD3EB8F4FD45BDFAFF44BAF5FD43B9
      F8FF439ABFDF0000000B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001000000000000000A482F189BDFB484FFEECFA8FFF1D2A8FFF0D1
      A4FFEFCD99FFEDC58BFFEABE7CFFDDA558FF5E360EB401000015000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000061000000F3020202FF323232FF4646
      46FF464646FF464646FF464646FF464646FF464646FF464645FF454545FF4544
      44FF444443FF434242FF414040FF3F3E3DFF3D3B39FF393634FF34312EFF2F2B
      27FF28231EFF191716FF000000F9000000560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00082C6074AE46B8F8FF44B7F8FF43B8F8FF44B8F6FE44BBFAFF43B9F5FD46BE
      FBFF44BCF5FD45BEF7FE46BDF5FD46C3FBFF45C0F7FD47C3F7FD49C7FCFF46C4
      F8FD47C5F9FD4ACCFEFF47C9F9FD49CAFAFD4BCFFFFF48CAFAFD48CBFAFD4BCF
      FEFF49CAFAFD47C9F9FD4ACCFEFF47C5F9FD49C8FDFF46C3F8FD47C2F7FD48C6
      FCFF45BFF7FD45BEF6FD47C1FBFF45BEF8FE45BEF9FF45BDFBFF47BFF9FF2D61
      74AE000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000000000000008030038432B12968C693ECFAF87
      55E4B28852E6966C38D6533411A60E07004B0000000000000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001D00000081000000BE0000
      00CB000000CB000000CB000000CB000000CB000000CB000000CB000000CB0000
      00CB000000CB000000CB000000CB000000CB000000CB000000CB000000CB0000
      00CB000000CB000000CB00000056000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003070830204757964090B2D750BCE9F754C8FBFF53C5F7FD54CA
      FBFF54C7F7FD55CAF9FE54C9F7FD56CEFCFF54CBF8FD54CCF8FD56D1FDFF54CE
      F9FD55CFF8FD57D4FEFF55D1FAFD56D2F9FD58D7FFFF56D3F9FD56D3F9FD58D7
      FFFF56D2F9FD55D1FAFD57D4FEFF55CFF8FD56D2FDFF54CDF9FD54CDF8FD56D0
      FCFF54CAF8FD54C9F7FD55CCFBFF51C0EBF74193B2D720485796030708300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000020000000000000000000000000000
      001C010000210000000000000000000000000000000000000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000010000
      0003000000010000000300000003000000010000000100000003000000010000
      0001000000030000000100000003000000030000000100000003000000030000
      0001000000030000000300000001000000030000000300000001000000030000
      0003000000010000000300000003000000010000000300000003000000010000
      0003000000030000000100000003000000030000000100000003000000030000
      0001000000030000000300000001000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E5DB00B7C7C900ADC5D500C2BAB100FBF9
      F800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FD00FCF9E100FAF6BF00FAF59400FCF97500FDFA6E00FAF67F00F9F4A700FBF7
      CE00FEFCF2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00FBFBFC00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFC00FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F0EA00ADB3A100ACBFBF00A8C7DD00A6CCEF00B7AD
      A300FAF8F6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFCF600F2E5A800E9D2
      4600E7D00800EDDB0000F3E80000FAF50000FCF90000F7EF0000F0E10000E9D4
      0000E6CD1D00ECDA7500F7EFCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000000000000000000000000
      000000000000FDFDFD00F3F3F300DFDFE000CECECE00C3C3C300C0BFC000C0BF
      C000C0BFC000C0BFC000C0BFC000C0BFC100C0BFC100C0BFC100C0BFC100C0BF
      C100C0BFC100C0BFC100C0BFC100C0BFC100C0BFC100C0BFC100C0BFC000C0BF
      C000C0BFC000C0BFC000C0BFC000C0BFC000C0BFC000C0BFC000C0BFC000C0BF
      C000C0BFC000C0BFC000C1C1C200CAC9CA00D9D9DA00EEEEEE00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2CFC000A8AFA300ABBABD00A7BECD00A4C1E000A6C9
      EE00BAAB9E0000000000EDF2F70096B4D400ADC4D600F5F7F700000000000000
      000000000000000000000000000000000000F1E2B800DAB63000D8B30000DFBF
      0000E5CB0000EBD70000F1E40000F6ED0000F7EE0000F4E80000EEDD0000E8D1
      0000E2C50000DBB80000D6AD0600E2C56600FBF6EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000010000
      0003000000010000000300000003000000010000000100000003000000010000
      0001000000030000000100000003000000030000000100000003000000030000
      0001000000030000000300000001000000030000000300000001000000030000
      0003000000010000000300000003000000010000000300000003000000010000
      0003000000030000000100000003000000030000000100000003000000030000
      0001000000030000000300000001000000030000000000000000000000000000
      0000F7F7F700D8D8D900A3A2A3008C8B8C0096969600A5A4A400AEADAC00B6B5
      B400BEBDBB00C6C5C300CDCBCA00D1D1CE00D6D5D200D9D7D500DBD9D600DBD9
      D600DBD9D600DBD9D600DAD8D600D9D7D500D8D6D300D6D5D300D6D4D100D3D1
      D000D2D0CE00CFCDCB00CDCBC900CAC8C600C8C5C300C4C3C000C1BEBC00BDBB
      B900BBB9B600B7B5B300B3B1AF00A9A7A6009B9B9A009E9D9E00CBCBCC00F1F1
      F100FEFEFE000000000000000000000000000000000000000000000000000000
      00000000000000000000C1BDA800ABB3A700AFBEC100AEC3D200ADC5DD00B2CC
      EA00B3CCE500C9B8A8009BAFC9007098C700779BBB008FACBC00E0E7E5000000
      00000000000000000000FEFCFA00DDBB6C00CB960000D0A20000D6AF0000DDBB
      0000E2C50000E6CE0000EBD70000EEDD0000EFDE0000EDDA0000E9D20000E4C9
      0000DFC00000DAB40000D3A80000CD9C0000CE9D1F00F0E1C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0023000000A7000000E1000000EA000000EA000000EA000000EA000000EA0000
      00EA000000EA000000EA000000EA000000EA000000EA000000EA000000EA0000
      00EA000000EA000000EA000000EA000000EA000000EA000000EA000000EA0000
      00EA000000EA000000EA000000EA000000EA000000EA000000EA000000EA0000
      00EA000000EA000000EA000000EA000000EA000000EA000000EA000000E00000
      00A2000000210000000000000000000000000000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      000100000001000000010000000100000001000000000000000000000000F6F6
      F600C5C5C6007E7E7E00787879007F7F7F0085858400898989008E8E8D009292
      910096969500959594008E8E8C00AFAFAE00B1B1B000B3B2B1009D9D9B008483
      82008383810083838100828280008282800082827F008181800080807E007473
      72007878760099989800AFAEAD00AEADAC00ADACAC008A898700979795009A99
      9700989895009696940094949200939391009C9B9900A9A7A5009E9D9C00B2B1
      B300EEEEEE000000000000000000000000000000000000000000000000000000
      000000000000FCFCFA00B2AF9500B3B8AB00B9C5C500B9CBD600B7C9DC00BED1
      E900C5D9F000C0CDD700848D9C007AA4D00089ABC90092AFC0009AB2B700D3DA
      D300F6F7F400FEFEFD00CF9E5000C2860000C8910000CE9D0000D3A80000D7AF
      0000DFBF0B00ECD94B00F2E67400F8F08F00FDF59600F4EA8500EFE16800E6CE
      2F00DAB50000D5AA0000D1A30000CB970000C58B0000C2830A00E8D0AB000000
      0000000000000000000000000000000000000000000000000000000000110000
      00E4000B10FF00455CFF00526EFF00526EFF00526EFF00526EFF00526EFF0052
      6EFF00526EFF00526EFF00526EFF00526EFF00526EFF00526EFF00526EFF0052
      6EFF00526EFF00526EFF00526EFF00526EFF00526EFF00526EFF00526EFF0052
      6EFF00526EFF00526EFF00526EFF00526EFF00526EFF00526EFF00526EFF0052
      6EFF00526EFF00526EFF00526EFF00526EFF00526EFF00526EFF004157FF000A
      0EFF000000E50000001200000000000000000000000100000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      00030000000324242371595857AD1919195D0000000D00000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000000000000FBFBFB00CDCD
      CE006B6A6A00636362007576750080807F008182810082838100828381008283
      81007E7F7E005D5E5C0096969700A9A9AA00A9A9AA00A6A6A8003D3E3E00393A
      38003E3F3E003D3E3D003E3F3E003E3F3E003D3E3D003E3F3E00363736002A2A
      2A002829280041414200A8A8A900A9A9AA00A9A9AA00909091005D5E5C007E7F
      7D00828381008283810082838100828381008081800080807F009A999700A3A1
      A000B5B5B600F5F5F50000000000000000000000000000000000000000000000
      000000000000F2F0EB00B0AC8F00BAC0AF00C1CBCA00C4D1DA00C0D0DF00CAD9
      E900CFDFEE00D5E7FA00BAB9B800859AB40097B8DA00A5BFCF00AEC3C600B3BE
      B700CAD3C700CFA46700B8700000C0800000C58C0000C9920000D1A40B00EAD6
      7E00FAF5DC0000000000FFFFFD00F2F0F600E0DDF100FFFDF000FFFEF500FEFD
      F300F4E9B700DDBC4000CB970000C78F0000C2860000BC790000B8710600E8D1
      B5000000000000000000000000000000000000000000000000000000005E0000
      00FF0092C6FF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BA
      FDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BA
      FDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BA
      FDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BA
      FDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF00BAFDFF0090
      C2FF000000FF0000005700000000000000000000000100000003000000010000
      0003000000010000000300000003000000010000000100000003000000010000
      00010F0F0E49B9B7B6FDC2C1C0FFC3C2C1FFB9B7B6F7595858AB151414530000
      000D000000030000000300000001000000030000000300000001000000030000
      0003000000010000000300000003000000010000000300000003000000010000
      0003000000030000000100000003000000030000000100000003000000030000
      0001000000030000000300000001000000030000000000000000E8E8E9008383
      83005D5D5C007576740082838100838482008384830083848300828382007B7B
      7A005A5A580099999900B8B8B900B8B8B900B8B8B900B9B9BA00ACACAD004041
      40003C3D3C003E3F3F003E3F3F003E3F3E003E3F3F003F403F002D2E2D002D2E
      2E003F3F3F00B0B0B100B9B9BA00B8B8B900B8B8B900B8B8B900919191005A5A
      58007C7D7B0082838200838483008384830083848200828382007D7E7C009796
      9400A09E9D00D5D5D500FDFDFD00000000000000000000000000000000000000
      000000000000EAE8E000B5B19300C3C5B500CBD2CD00CDD9DD00CCD6E000D5DF
      EA00DCE9F400DDE9F500EAEFF900A7A59B009DBBDB00B8CFDC00C1D0D400D5E3
      E400C2A07400AE5B0000B76F0000BD7B0000BF7E0000D2A43200F7EFD6000000
      0000FFFEF500FFFAE100FFFFDA00BAB3CB002529CA00FFFCCA00FFF4C500FFF4
      C700FFFADF00FFFEF500E9D39700C48A0700BD7C0000BA740000B4680000B76D
      1B00F4EAE000000000000000000000000000000000000000000000000096000A
      0EFF00BFFBFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0
      FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0
      FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0
      FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0
      FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00C0FCFF00B6
      EFFF000000FF0000007300000000000000000000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010202
      021B9D9C9AE9C1BFBEFFC6C4C3FFC5C3C2FFC6C4C3FFC7C6C5FFC8C7C6FFB1AF
      AFEF514F4FA11010104900000009000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      00010000000100000001000000010000000100000000FCFCFC00C0C0C1007171
      72006C6D6C008182800083848300828382008283820080817F006E6F6D005A5B
      5900ABABAC00C5C5C600C5C5C600C5C5C600B4B4B500515252005B5C5E006A6B
      6C003F403F00212324002C2D2E003E3F3E002324250028292A002D2E2D003535
      3500727374006E6F6F0051525200B7B8B900C5C5C600C5C5C600C5C5C600A4A4
      A5005858560070716F0080818000828382008283820083848300828382007777
      7500A7A5A400A7A6A700F5F5F500000000000000000000000000000000000000
      000000000000DDD8CA00BEB89700CBCBB900D5D9D100D9DFE000D7DDE400E0E5
      EA00EAF0F900EBF1F800F3FAFF00E5DFD700A8A5A600CAE1F100DDEBF200D9D1
      C400AA560D00AD5A0000B4680000B56C0000CD9C4000FCF9F20000000000FFFC
      ED00FFFAE600FFFAE200FFFFE000C4BEC7001A1BEB00FFFCD100FFF5CA00FFF4
      C400FFF2BD00FFF3BE00FFFFED00ECDAB400BB780900B46A0000B1620000AB57
      0000C58B5C000000000000000000000000000000000000000000000000D00036
      45FF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7
      FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7
      FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7
      FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7
      FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7FFFF00C7
      FFFF001014FF0000009900000000000000000000000100000003000000030000
      0003000000030000000300000003000000030000000300000003000000056363
      62B9C0BFBDFFE1E1E0FFE5E5E4FFDDDCDBFFD4D3D2FFCAC8C7FFCAC8C7FFCBCA
      C9FFCCCBCAFFCDCCCBFFACABAAE94A4A4A990D0D0D4100000005000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      00030000000300000003000000030000000300000000F6F6F6009A9A9C007676
      77007373720082838200818281007E7F7D006F6F6E00515250007D7D7C00C8C8
      C900D0D0D100D0D0D100D0D0D100D1D1D200D1D1D2007C7D7D00373837003C3D
      3D002D2E30003D3E3D003D3E3D002B2C2E003D3E3D0034353400353535003636
      3600393A3900262729008A8B8B00D1D1D200D1D2D200D0D0D100D0D0D100D1D1
      D100C4C4C500767675005253510070716F007E7F7E0081828100828382007677
      75009C9A9900A2A1A000EAEAEA00000000000000000000000000000000000000
      000000000000CEC6AE00C5BD9E00D4D1BE00DDDFD600E5E6E500E2E4E200E7E6
      DF00F8FBFF00FAFBFE00FDFFFE0000000000D0C0AF00CDC8C400ECFBFF00B877
      4E00A0400000AB560000AD5C0000BF802900FAF6EE0000000000FFFDF400FFFC
      EF00FFFBEA00FFFAE500FFFAE100FCF7DA00F9F3D400FFF7D200FFF5CD00FFF5
      C800FFF3C300FFF2BD00FFF0B400FFFFE800E1C49B00AF5E0000AD5A0000A750
      0000A2440000EAD6C90000000000000000000000000000000010000000F80064
      7DFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CB
      FFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CB
      FFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CB
      FFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CB
      FFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CBFFFF00CB
      FFFF00303DFF000000C200000000000000000000000100000003000000010000
      00030000000100000003000000030000000100000001000000032D2D2C7DC0BF
      BDFFD9D8D7FFE6E5E4FFE5E5E4FFE6E5E4FFE7E6E5FFE8E8E7FFE0E0DFFFD8D7
      D6FFCFCECDFFCFCDCCFFD0CFCEFFD1D0CFFFD2D1D0FFAAA9A9E5444443910A0A
      0A39000000050000000300000003000000010000000300000003000000010000
      0003000000030000000100000003000000030000000100000003000000030000
      00010000000300000003000000010000000300000000F1F0F100949495007373
      7400575755005B5B590050504E005758560083838200C7C7C800DBDBDC00DBDB
      DB00DBDBDB00DBDBDB00DBDBDB008484850072737200AAABAB00505151003B3C
      3B001D1E1F001F201F00191A1A00111112001B1B1B0023242300393A3A00393A
      39003B3C3B0045454700AAABAB007576760096979800DBDBDB00DBDBDB00DBDB
      DB00DBDBDB00DBDBDC00C2C2C3007E7E7D005454520050514F005B5C5A00595A
      570096959300AEACAA00DFDFDF00000000000000000000000000000000000000
      000000000000C3B99600CCC4A400DCD9C300E6E7D900E9E7E100E4E0D700E4DF
      D400FFFFFE00000000000000000000000000FDF8F300E3DAD100D5C5BE009E3D
      0A00A0410000A64E0000AA540000EAD5BD0000000000FFFFFC00FFFEF700FFFD
      F200FFFCED00FFFBE800FFFAE300FFFADF00FFFADA00FFF7D500FFF6D000FFF5
      CB00FFF4C600FFF3C100FFF2BB00FFF2B400FFFFEB00C4894E00A54C0000A449
      00009E3D0000BC79570000000000000000000000000000000041000000FF0094
      B7FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CE
      FFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CE
      FFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CE
      FFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CE
      FFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CE
      FFFF005367FF000000E900000003000000000000000100000001000000010000
      000100000001000000010000000100000001000000010B0B0B3FBBB9B8FBCFCE
      CDFFE7E6E5FFE6E5E4FFE6E5E4FFE7E6E5FFE7E6E5FFE7E7E6FFE8E7E6FFE9E8
      E7FFEAE9E9FFE3E2E1FFDBDAD9FFD4D3D2FFD4D3D2FFD5D4D3FFD6D5D4FFD7D6
      D5FF9F9F9EDB3C3C3C8708080831000000030000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      00010000000100000001000000010000000100000000EFEFEF009B9A9B008B8B
      8C009A9A9900B2B2B200CECECE00E2E3E300E3E4E400E3E4E400E3E4E400E3E4
      E400E3E4E400CDCDCE00E0E1E100C1C2C2001C1C1C0033343300222326001A1B
      1C0028282800393939003E3F3F003E3F3F003D3E3E003E3E3E003E3E3E003B3B
      3B001D1E1F00393A3A00393B3B0016171A00D0D1D100DEDEDF00CACBCC00E3E4
      E400E3E4E400E3E4E400E3E4E400E3E4E400E2E2E200CCCCCC00B1B1B1009F9F
      9F00ABA9A800B1AFAD00DBDBDB00FEFEFE000000000000000000000000000000
      0000F9F8F400C1B28A00D4CAA800E0DCC400E9E5D400E5E2D400DFD7C900DDD7
      C600FFFEFE0000000000000000000000000000000000FCFDFB00B47758009429
      00009D3C00009F3E0000C1845100000000000000000000000000FFFEFA00FFFD
      F500FFFCF000FFFCEB00FFFAE600FFF9E100FFF9DC00FFF8D800FFF6D300FFF6
      CE00FFF5C900FFF3C400FFF3BF00FFF1B700FFF9C500ECD8C400A34701009F40
      00009A360000A3481A00F9F2EF00000000000000000000000079000102FF00C1
      EBFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1
      FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1
      FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1
      FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1
      FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1FFFF00D1
      FFFF007893FF000000FD0000001B000000000000000100000003000000030000
      00030000000300000003000000030000000301010115979595E1C9C8C6FFE6E5
      E4FFE6E5E4FFE6E6E5FFB0D2DEFF2DB4F0FF38C3F4FFC2E1EAFFE9E8E7FFE9E9
      E8FFE9E9E8FFEAEAE9FFEBEAE9FFECEBEAFFE6E6E5FFDFDEDEFFD8D7D6FFD9D8
      D7FFDAD9D8FFDBDAD9FFDCDBDAFF9A9A99D53534347D05050527000000030000
      000300000003000100130619085F0000000F0000000300000003000000030000
      00030000000300000003000000030000000300000000EFEFEF00A0A0A100A2A1
      A200DADAD900EAEAEB00EAEBEB00EAEBEB00EAEBEB00EAEBEB00EAEBEB00DBDB
      DC00EAEBEB00A1A1A2005D5D5D00B8B9B9005B5B5B0028292800212222003E3F
      3F00424242004242420042424200424242004242420042424200424242004242
      42003F404000242526003435340064656500A4A5A6004E4F5000AFB0B000EBEB
      EB00DCDCDD00EAEBEB00EAEBEB00EAEBEB00EAEBEB00EAEBEB00EAEBEB00E3E3
      E300BBB9B800B5B3B100DBDBDC00FEFEFE000000000000000000000000000000
      0000F4F2EC00C3B48900D5CCAB00E0DBC000E6E1CB00E1DBC900DAD1BA00DBCF
      B300FDFDFD000000000000000000000000000000000000000000B36947009429
      00009A34000099330000DEBDA800000000000000000000000000FFFFFD00FFFE
      F800FFFDF200FFFCEE00FFFBE900FFFAE400FFF9DF00FFFEE100FFFAD900FFF6
      D000FFF5CC00FFF4C600FFF3C100FFF2BD00FFF2B500FFFADD00B2683B009831
      00009933000099330000DFC0B0000000000000000000000000B0002026FF00D3
      FEFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4
      FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4
      FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4
      FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4
      FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00D4
      FFFF00A0C0FF000000FF00000046000000000000000100000003000000010000
      0003000000010000000300000003000000055C5B5AAFC6C5C3FFE2E1E0FFE6E5
      E4FFE6E6E5FFE7E6E5FF88D0E0FF48D9FFFF26C7FEFF63C9F4FFBFD7E1FF5EBF
      EAFF7AD6EEFFE5E9E9FFEBEBEAFFEBEBEAFFECECEBFFEDECEBFFEEEEEDFFE9E8
      E8FFE3E2E2FFDEDDDCFFDEDDDCFFDEDDDCFFDFDEDDFFDFDEDDFF5D625DAB071D
      0A67176021B92AB03BFB2CB63EFF011508630000000100000003000000030000
      00010000000300000003000000010000000300000000EFEFEF00A7A7A700A9A9
      A900DFDEDD00F0F0EF00F0F0EF00F0F0EF00EBEBEA00DFDFDF00F0F0F0007A7B
      7B00ABACAC00C3C4C4003A3B3B00464747004D4E4E0048484800474747004848
      4800484848004747470048484800484848004747470048484800484848004747
      470048484800474848002B2B2B00434444002A2B2C0031323200D6D6D6009697
      970082828300F0F0EF00DADADA00EFEFEF00F0F0EF00F0F0EF00F0F0EF00E8E8
      E700BEBDBB00B9B7B500DBDBDC00FEFEFE000000000000000000000000000000
      0000EFEBE000C4B58800D5CCA700E0D9BA00E4DCC100DFD5B900D9CCAB00D7C9
      A700FDFBF80000000000FEFFFD00FEFEFB00FFFDFB00F6EEE900A0411500972F
      0000973000009F401000F5EBE50000000000000000000000000000000000FFFF
      FB00FFFDF500FFFDF100FFFCEC00FFFBE700FFFFEA00D1CBB000E7E0C100FFF9
      D600FFF6CE00FFF5C900FFF3C400FFF3BF00FFF1B700FFFFD200D2A68E009328
      00009933000099330000CB987E000000000000000002000000E4004E5DFF00D7
      FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7
      FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7
      FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7
      FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7
      FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7FFFF00D7
      FFFF00C6EBFF000000FF00000073000000000000000100000001000000010000
      00010000000100000001000000012424246FC6C4C3FFDBDAD9FFE6E6E5FFE6E6
      E5FFE7E6E5FFE2E4E4FFDDDFDEFFCAE4E7FF9FE1EDFFCCE4E9FF49C6E6FF19C4
      FEFF00B2FEFF8DD3F2FFE8E9E8FFA9D4E6FFB0E1EBFFEBEDECFFEDEDECFFEEEE
      EDFFEFEFEEFFF0F0EFFFEBEBEAFFE5E5E4FFDFDEDDFFDEDDDCFFA8D1ACFF2BB6
      3DFF2BB53DFF2BB63DFF2BB63DFF175C2FC30000000300000001000000010000
      00010000000100000001000000010000000100000000EFEFF000ACABAD00B1B0
      B100CBCBCA00F4F4F300C1C1C100EDEDEC00D9D9D90068696900EBECEB007273
      730016171B008E8F8F0042444300222326004B4B4B004D4D4D004C4C4C004D4D
      4D004D4D4D004C4C4C004D4D4D004D4D4D004C4C4C004D4D4D004D4D4D004C4C
      4C004D4D4D004D4D4D004A4A4A00242527003D3F3E00484A4A00747577003E3F
      3E0085858500E5E6E50061616100E6E7E600E6E7E600C7C7C700F4F4F300CECF
      CF00C1C0BE00BCBAB800DBDBDC00FEFEFE000000000000000000000000000000
      0000E5DECD00C6B78800D6CCA600DFD7B400E2D7B900DCCFAD00D9C7A300D7C7
      9B00FAF6EA00FBFAF500FAF8EF00F9F6EE00F9F6EB00E8D3C400973000009832
      0000942A0000AE5E380000000000000000000000000000000000000000000000
      000000000000FFFFFB00FFFFF500FFFFF600C8C4AF0077725900D6D0B300FFFD
      DC00FFF6D100FFF5CC00FFF4C700FFFAC400FFFCBD00FFFDC700E6CBBB00962E
      00009932000099330000C2856600000000000000001D000000FE007D93FF00DA
      FFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DA
      FFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DA
      FFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DA
      FFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DA
      FFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DAFFFF00DA
      FFFF00D8FDFF00171CFF000000A0000000000000000100000003000000030000
      0003000000030000000308080835BBB9B8F7D3D2D1FFE7E6E5FFE6E6E5FFE7E6
      E5FF69C1E0FF0FB2F9FF29C0F6FFCCE3EAFFE9E9E8FFEAE9E8FFC0D8DCFF9DEC
      FBFF4CDAFAFFB5DFEBFF79CBE1FF0DBBFEFF06B3FEFF8CD5F4FFEEEEEDFFEBEB
      EAFFEFEFEEFFEFEFEEFFF0F0EFFFF1F1F0FFF1F1F0FFECEBEBFFA3D4A8FF2CB6
      3EFF2CB63EFF2CB63EFF2CB63EFF5DB478FD0003012900000003000000030000
      00030000000300000003000000030000000300000000EFEFF000B1B1B2009898
      990051525400F5F5F40072727200A1A1A100C4C4C3004C4D4D00727374006F70
      70003D3F3E0038393B003A3B3C003B3C3C003E3F3E0052525300515252005252
      5300525253005152520052525300525253005151520052525300525253005152
      5200525253005252530051525200424342002E2F31003D3F3F003E3F3F003435
      37007A7B7C006B6C6C0049494900D3D3D200929292007F7F7F00F2F2F0005253
      5300A7A6A500C0BEBB00DBDBDC00FEFEFE000000000000000000000000000000
      0000D8CEB100C7B98900D7CBA200E0D5AE00E0D6B100DBCBA400D7C39700D5BF
      9400F4EFDD00F6F3E500F5F0E000F4EFDF00F4EEDC00E1C6AF00952D00009830
      000099330000BF7D5B00000000001A1BEB002529CA00C6C6E400D2D2CD00A8A8
      A8009A9A9700989790009F9D9200989587007874620089836D00B9B49900FFFA
      DB00FFF7D500FFF6CF00FFFACB001A1BEB002529CA00DFD7C500F0DAC0009832
      01009832000099330000BE7D5D000000000000000051000000FF00AEC8FF00DD
      FFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DD
      FFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DD
      FFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DD
      FFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DD
      FFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DDFFFF00DD
      FFFF00DDFFFF003E48FF000000CE000000000000000100000003000000010000
      0003000000010000000F939291DBCECDCCFFE6E5E4FFE7E6E5FFE7E7E6FFE8E8
      E7FF72D3E6FF50DCFEFF06C1FFFF8FD4F1FFABD1E2FF4FC0EFFF7CD6EFFFDDE0
      E0FFE6E7E6FFECECEBFFBDDADEFF8FEBFDFF41D9FDFF98DBF0FF8ACFE6FF07B0
      FAFF24C0FAFFDDEBF0FFF1F1EFFFF1F1F0FFF1F1F0FFE9EEE9FF5DC56AFF2CB6
      3EFF2CB63EFF2BB63DFF2CB63EFF97D0A3FF0329128900000003000000030000
      00010000000300000003000000010000000300000000EFEFF000B5B5B6008C8C
      8D0028292B00A9A9AA00444545005556560098989900505150002D2E2F00393B
      3C00414342002F303100343536003C3D3D005151520057585800575858005758
      580057585800575858005E5F5F006C6B6B007676760072727200585858005758
      58005758580057585800575858005556560025262700393A3A00404241002B2C
      2D003B3C3D00404241004B4C4C009C9C9D004848480033343400A7A7A8003E40
      3F0077777600C3C2BF00DBDBDC00FEFEFE000000000000000000000000000000
      0000CFC19C00CABA8A00D9CCA000E0D5AB00E0D2A700DAC69A00D5BE8A00D6C1
      8A00F0E9D200EEE9D000EFE5CD00EEE6CB00ECE5CA00DDC0A40098310000A64B
      1E00AA542900C58A6C0000000000A6A6FA008B8AE200D3D2E900E3E3DF00D2D2
      D200CACAC900CDCCC70097948B00716E6100BEBBAA00C5C0AC00CDC7AF00FFF9
      DD00FFF8D800FFF6D200FFF9CE00C3B9B400A59AB500E8E0C700F0DBC2009935
      05009730000099330000BE7D5D000000000000000083000708FF00D6F3FF00E0
      FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0
      FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0
      FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0
      FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0
      FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0
      FFFF00E0FFFF006776FF000000F4000000070000000100000001000000010000
      000100000003525050A3CCCAC9FFE2E1E0FFE7E6E5FFE7E7E6FFE7E7E6FFD9E2
      E3FFD9DEDDFFCCE3E6FFACE0EAFFE1E8E8FF3DC6E9FF2ECBFEFF03B5FEFFAEDB
      EFFFE5E7E8FFABD7E6FFC8E5EAFFE0E3E2FFDEE7E7FFEEEEEDFF89D7E7FF66E1
      FEFF0CC4FEFFC6E4F1FFF1F1F0FFF1F1F0FFECEFECFF68C874FF2BB63DFF2BB6
      3DFF2BB53DFF2BB63DFF2BB63DFFA6D6ABFF2E8251E300000009000000010000
      00010000000100000001000000010000000100000000EFEFF000BBBBBB009192
      9300393A39002F2F3000252628004C4C4D00606161004B4C4D00414342004142
      42001A1B20004243430042434300222327005F5F60005E5F60005E5E5F005E5F
      60005E5F60005D5D5D00605E5D005F5E5D005F5E5D00747373007C7C7C005E5E
      5F005E5F60005E5F60005E5E5F005F5F60003131310024252500232326002223
      2300242425002424270042434300606161005D5D5E00404141002F2F30001516
      190071717100C6C4C200DBDBDC00FEFEFE000000000000000000000000000000
      0000CBBC9200CDBE8B00DACC9E00E1D4A600DFCD9E00D7C18F00D1B77800D9C3
      8A00F3EBD700F4ECDA00F5EFDF00F5F0E000F3EFDF00E5CEB900A4491E00B468
      4200AF5F3700C2836500FFFEFC00FFFFF900FFFFFB00FFFEFB00FFFFFD00FFFF
      FE0000000000DBDAD70083827C00D2CEC100FFFFF000FFFEEA00FFFBE300FFF5
      D900FFF4D500FFF4D000FFF2CA00FFF9C800FFFCC100FFFAC700ECD6C500AC58
      30009D3A0A0097300000C387690000000000000000B300292EFF00E3FFFF00E3
      FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3
      FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3
      FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3
      FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3
      FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3FFFF00E3
      FFFF00E3FFFF0093A5FF000000FF0000002B0000000100000003000000030000
      00031E1E1D63CCCAC9FFDDDCDBFFE7E6E5FFE7E7E6FFE8E7E6FF69C4E2FF14B6
      FBFF24BEFAFFCEE2EBFFEAEAE9FFEBEAE9FFCADDDFFFB8E6EEFF75DBF1FFDCE8
      EBFF5CC6E6FF13BBFFFF11B7FDFFC1E1F0FFEAECECFFC5E5ECFFDAE4E4FFD4E7
      E9FFC8E5EAFFF0F0EFFFF1F1EFFFEFF0EEFF74CC80FF2CB63EFF2CB63EFF2CB6
      3EFF2CB63EFF2CB63EFF2CB63EFF97D19EFF7CC099FF000D064D000000030000
      00030000000300000003000000030000000300000000EFEFF000BFBFBF008F8F
      91003030310056565700656565006666660066666600525353003C3E40003F40
      4100404243003E3F41003F404200454646006666660066666600656565006666
      660066666600575756005553530085858400727372005D5C5C00808080006465
      6500666666006666660065656500666666006565650066666600666666006565
      6500666666006666660065656500666666006666660065656500656666005353
      540078787700C9C7C400DBDBDC00FEFEFE00000000000000000000000000FEFD
      FC00C8B88900D0C08C00DCCD9C00E1D2A200DDCA9600D2BA7E00D5B77A00F0E6
      D400FEFEFE0000000000000000000000000000000000F8F0ED00AC5A3300B66D
      4800B66C4800BA745100F6E8E100FFFAF600FFF7F200FFF7F200FFF7F200FFFD
      F800E0DBD80087878700D2CDC700FFFDF000FFF5E500FFF4E000FFF3DB00FFF2
      D700FFF1D200FFF1CD00FFF0C900FFEFC400FFEDBD00FFF7CD00DCB8A500B469
      4400B56A4500A0411100CC99810000000000000000E000535CFF00E6FFFF00E6
      FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6
      FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6
      FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6
      FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6
      FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6FFFF00E6
      FFFF00E6FFFF00BFD4FF000000FF0000005A0000000100000003000000010606
      062DBAB8B7F3D7D6D5FFE7E7E6FFE7E7E6FFE8E7E6FFE9E8E7FFA1D7E1FF92EB
      FEFF2DD0FCFFBCDFEBFFAFD4E4FF50C0EFFF6BD1F3FFE4EAEBFFEDECEBFFEDED
      ECFFB5DAE0FF9EEDFCFF44D7FAFFC8E6EFFF38B9E8FF02B3FEFF1DBAFCFFE8EE
      F0FFF1F1F0FFF1F1F0FFEFF0EEFF81D08BFF2CB63FFF2CB73FFF2DB740FF2DB8
      41FF2DB841FF2EB942FF2EB942FF8CD095FFC2DBCCFF064321AD000000030000
      00010000000300000003000000010000000300000000F0EFF000C2C2C200A2A2
      A300616262006D6D6D006D6D6D006D6D6D006D6D6D005858590031323500393A
      3C00474848003334360037393A004D4E4F006D6D6D006D6D6D006D6D6D006D6D
      6D006D6D6D0052525100504E4D0099999800979796005D5C5B00757474006D6D
      6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D
      6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D006D6D6D00686868005657
      5800807F7F00CCCAC700DBDBDC00FEFEFE00000000000000000000000000F9F7
      F200C6B37F00D2C18D00DDCF9B00E1D09B00DAC08900DBC18E00F1EADC00FDFB
      F900FEFDFE000000000000000000000000000000000000000000BB775800B56B
      4600BD795700B8704C00E5CBBD00FFFCF700FFF3ED00FFF3ED00FFF9F200E2DA
      D6008F8F8F00D8D0CC00FFFAF200FFF3E700FFF2E200FFF1DE00FFF0D900FFF0
      D400FFEFD000FFEECC00FFEDC700FFEDC200FFECBB00FEF0CF00C68E7300BA74
      5000BE7D5C00B1623B00E2C6B90000000000000000FD00737EFF00E9FFFF00E9
      FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9
      FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9
      FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9
      FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9
      FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9FFFF00E9
      FFFF00E9FFFF00E1F6FF000A0BFF0000008900000001000000010000000B8A89
      88D1D3D1D0FFE6E5E4FFE8E7E6FFE8E7E6FFB8D4E1FF6CC4E9FF96D9EAFFDDE2
      E2FFDFE6E6FFEBEBEAFF63CEE7FF5CDBFEFF13C3FEFFB1DEF0FFB1D6E7FF5BC4
      EEFF86D8F2FFE1E5E4FFE8EBEAFFF0F0EFFF86D6E6FF70E5FEFF33CFF9FFE6EE
      F0FFF1F1F0FFF0F0EFFF8ED598FF2EB943FF2FBA43FF2FBA44FF2FBB44FF30BB
      45FF30BB46FF30BC46FF31BC47FF81D08DFFE7E8E7FF2C9C5EFB000100170000
      00010000000100000001000000010000000100000000F0EFF000C6C5C600A0A0
      A100434445005253540059595B0074747500757576005E5E6000454647004647
      48001E202600464849004648480027282E007575760075757600747575007575
      7600757576005E5E5E004C4A4A0052504F00565453005A595800757473007474
      750075757600757576007475750075767600565757004B4D4E00292A2F004F50
      51004F5051002C2D32005D5E5E0075757600646465004F505100474949002527
      2C0078787900CECCCA00DCDBDC00FEFEFE00000000000000000000000000F2ED
      E000C5B27900D5C48D00DFCF9700E0CC9400E0CB9D00F0EADB00F6F4EB00FAF6
      F000FEFDFD000000000000000000000000000000000000000000CC9A8500B163
      3F00C2856500BD7C5B00D0A18A00FFF7F200FFF0E900FFF5ED00EAE0DA00A19F
      9E00DFD6D000FFF7EF00FFF1E900FFF1E600FFF0E000FFEFDD00FFEED800FFEE
      D300FFEDCF00FFECCA00FFEBC600FFEBC100FFEFC200EED8C400BE7D5F00C081
      6000C2856600B2653F00FBF6F40000000000000000F8005668FF00EAFFFF00ED
      FFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00EC
      FFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00EC
      FFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00EC
      FFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00EC
      FFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00ECFFFF00EC
      FFFF00ECFFFF00ECFFFF002E31FF000000B8000000010000000348474797D1CF
      CEFFE3E2E1FFE8E7E6FFE8E8E7FFEAE9E8FF3CC3E6FF2ECAFFFF00B4FEFFAEDB
      EFFFE6E8E8FFAAD6E6FFB0DAE2FFD3E7EAFFC2E4EAFFEBEDECFF49C9E9FF62D9
      FFFF07BCFFFFC5E3EFFFA5D1E7FF6ECEEFFFB3DFEBFFE1E7E6FFE7ECECFFF1F1
      EFFFF1F1EFFF9CDAA6FF31BC47FF31BD47FF31BD48FF31BD48FF32BE49FF32BE
      4AFF32BF4AFF33BF4BFF33C04BFF77D087FFE7E6E5FF72BF95FF031D0F710000
      00030000000300000003000000030000000300000000F0EFF000C8C8C800A4A4
      A4003B3D3F004546480032333400585858007F7F7F00737374003D3F41004345
      470046484900414245004445470045474800777777007F7F7F007E7E7E007F7F
      7F007F7F7F007E7E7E0061616100504F4E00535251006C6B6B007F7F7F007E7E
      7E007F7F7F007F7F7F007E7E7E007C7C7C004042450046474900474849003F40
      43004546480045464700666666007F7F7F00747475003B3B3C00363739004446
      470081818000D0CECC00DCDBDC00FEFEFE00000000000000000000000000E8E0
      CB00C7B47B00D7C68E00E1D09A00E4D2A700ECE0CD00F1E9DA00F5EFE400FAF6
      F000FEFDFD000000000000000000000000000000000000000000EFDFD800AF5E
      3800C68C6F00C58A6D00C2866700ECD7CB00FFF7F000F4E6DE00B8B3B100E6DB
      D500FFF4EB00FFEEE500FFEEE500FFEFE500FFF0E100FFEDDC00FFECD800FFEC
      D300FFEBCF00FFEACA00FFEAC600FFE9BF00FFF1D400D2A48E00C3856700C68C
      6F00C3866700C3876B0000000000000000000000009C000000FF002D41FF0054
      6CFF009BE4FF009FEFFF00A1EFFF00A3EFFF009DDDFF3CB9D4FF44C1D8FF44C3
      D9FF43C4D6FF40C0D0FF3AB7C4FF3BB7C6FF3AB2C3FF3AB0C3FF37A9BDFF37A8
      BDFF33A0B5FF35A1B8FF27A4BAFF07D9F0FF00F0FFFF00F0FFFF00F0FFFF00F0
      FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0
      FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0FFFF00F0
      FFFF00F0FFFF00F0FFFF005B61FF000000E80000000118171757D1CFCEFFDEDD
      DCFFE8E7E6FFE8E8E7FFE9E8E7FFE9E9E8FFD0DDDFFFBAE6EDFF81DDF0FFDCE8
      EAFF69C7E2FF25C2FEFF1CBBFFFFA4DAF1FFE5E9EAFFBFE3ECFFCFE1E4FFCFE9
      ECFFBCE7EFFFD7E1E2FF24CCFAFF3ACBFFFF14BAFDFFEEF0F0FFF1F1F0FFF0F0
      EFFFA8DEB0FF34BF4CFF33BF4BFF33C04CFF33C04CFF34C14DFF34C14EFF34C2
      4EFF35C24FFF35C34FFF35C350FF6CD180FFE6E5E4FFBADAC8FF0C6635D10000
      00030000000300000003000000010000000300000000F0F0F000CACACA00A7A7
      A70031333600292A2C00686868008C8C8C008C8B8C008A8A8B0037393C003E40
      4200494B4C003A3C3F003D3F4200424445005B5C5C008C8B8C008C8B8C008C8B
      8C008C8B8C008C8B8C008C8B8C008C8C8D008C8C8D008C8B8C008C8B8C008C8B
      8C008C8B8C008C8B8C008C8B8C007172730036383B0044454700494B4C003739
      3C004143450042444500838384008C8B8C008C8B8C008C8B8C00636365002F2F
      30007F7F7F00D2D1CE00DCDBDC00FEFEFE00000000000000000000000000E0D6
      B900CBB97F00DBCA9400E4D4A700E9DAC000ECE0CC00F1E7D700F5EFE400FAF6
      F000FEFDFD00000000000000000000000000000000000000000000000000BD7B
      5D00BD7A5900CC987E00C8917500CF9F8700FAEDE600DFD6D000EEE0D800FFF1
      E700FFECE300FFECE300FFEDE300F9E8E200F1E1DE00FFECDC00FFEBD800FFEA
      D300FFEACF00FFE9CA00FFE8C400FFF1D100E4C6B500C68F7400CA947900CE9C
      8200B56A4500EDDBD3000000000000000000000000060000007A000000DD0000
      00FF008CDFFF009FFEFF009FFEFF009FFEFF018ADCFFD0D7DAFFE9E6E3FFEAE7
      E5FFE8E4E1FFDDDAD6FFC7C3BFFFC2BEB9FFBFBAB4FFBDB7B0FFBBB5ADFFB3AC
      A4FFB9B0A8FFB4ABA2FFAEA59DFF5896A3FF00F3FFFF00F3FFFF00F3FFFF00F3
      FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3
      FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3FFFF00F3
      FFFF00F3FFFF00F3FFFF007781FF000000FF01010119B7B6B5EFD0D0D2FFB1B9
      CCFFD9DBDFFFE9E8E7FFE9E9E8FFEAE9E8FFEAEAE9FFEBEAE9FFEBEBEAFFECEB
      EAFFC9DDE0FFAFE8F2FF6EDDF5FFC4E4EDFF40BFE8FF3AC5FEFF17B9FCFFE1EB
      EFFFD8E3E6FFC3E5ECFFCAE2E5FFB9E6EEFFB8E6EFFFF1F1F0FFF0F0EFFFB3E2
      BBFF39C352FF35C24FFF35C350FF36C350FF36C451FF36C451FF37C552FF37C5
      53FF37C653FF38C654FF38C755FF61D078FFE8E7E6FFEAEBE9FF26A25FFF0007
      03370000000100000001000000010000000100000000F0F0F000CDCCCC00A6A6
      A6003536370083838400989899009898990098989900989899005D5E5F004B4D
      4E002C2D33004C4D4F003A3C3D00494A4D009090920098989900989899009898
      9900989899009898990098989900989899009898990098989900989899009898
      99009898990098989900919193003B3D41004B4D4E004A4C4D002E2F35004B4D
      4E004B4D4E004041450098989900989899009898990098989900989899008080
      820089898900D4D3D000DCDBDC00FEFEFE00000000000000000000000000DED2
      B200CDBE8600DDCD9E00E5D4B500E9DAC000ECE1CC00F1E9D900F5F0E500FAF6
      F100FEFEFE00000000000000000000000000000000000000000000000000F2E4
      DE00B2644000CF9F8600CE9F8600CC998000D5AC9700F6EBE300FFF2E900FFEB
      E000FFEBE100FFEBE100FFEFE100D9CCE0001A1BEB00FFEFDE00FFEAD900FFEA
      D500FFE9D000FFE9CA00FFF0D500EBD2C200CD9B8300CD9D8400D0A28A00CA94
      7900C79075000000000000000000000000000000000000000000000000650000
      00FF008CE0FF00A0FFFF00A0FFFF00A0FFFF018BDDFFD9E1E5FFF3F2F0FFF6F4
      F3FFF4F3F1FFE4E2E0FFBEBCBBFFB6B4B2FFB5B3B1FFC6C3C1FFC0BDBAFFB8B5
      B1FFBFBCB7FFBAB6B1FFB1ACA7FF9BA2A4FF29CAE8FF04E0FAFF01E1FCFF01E0
      FCFF01DFFCFF01DEFCFF01DDFBFF01DCFBFF01DCFBFF01DBFBFF01DBFBFF00DA
      FBFF00DAFAFF00D9FAFF00D9FAFF00D9FCFF00D9FDFF00D9FDFF00D9FDFF00D9
      FDFF00D5F6FF00B4D4FF00202BFF000000DB0B0B0B3BD3D2D1FF6CA2C7FF46E3
      F2FF47C5DCFF5DB5D1FF84B2CDFFADBACFFFDCDFE3FFEBEBEAFFECECEBFFECEC
      EBFFEDEDECFFEBEBEAFFECECEBFFEEEEEDFFAED9E0FF9FEBFAFF57D5F4FFC1D9
      DFFF0BB4F1FF3CC4FEFF45C4FAFFF1F1EFFFF1F1EFFFF1F1EFFFBFE5C6FF3CC6
      57FF37C553FF37C653FF38C654FF38C755FF38C755FF39C856FF39C857FF39C8
      57FF3AC958FF3AC958FF3ACA59FF56D070FFEAE9E8FFE9E8E7FF69BD91FF0736
      1D970000000300000003000000030000000300000000F0F0F000CFCECE00B2B2
      B200868687009B9B9C009F9FA000A2A2A400A4A4A500A2A2A400858586004849
      4B0047484A003737390071717200A2A2A300A2A2A400A2A2A300A0A0A100A2A2
      A400A2A2A400A2A2A400A2A2A400A2A2A400A2A2A400A2A2A400A2A2A400A2A2
      A400A2A2A400A0A0A200666769004B4C4E00494A4D004E4F51004A4C4E00494A
      4D004A4B4D0076767700A2A2A40093939500808082006D6E700056575B004A4B
      4D0086868600D6D4D200DCDBDC00FEFEFE00000000000000000000000000DACE
      AB00D2C38F00E0CCAA00E5D4B500E9DAC000ECE1CC00F1E9D900F5F0E500FAF6
      F100FEFEFD000000000000000000000000000000000000000000000000000000
      0000D7AE9B00B9725100D7AF9A00D3A79100D1A38C00D8B19E00F4E3DA00FFF2
      EA00FFEDE300FFEBE000FFEEDF00DDCFE6001A1BEB00FFEEDE00FFEAD900FFEA
      D600FFEDD600FEEEDD00E8CDBF00D2A58F00D2A68F00D4A99400D6AC9700B872
      5000F7EFEB000000000000000000000000000000000000000000000000650000
      00FF008CE0FF00A0FFFF00A0FFFF00A0FFFF018BDDFFDBE4E8FFF5F4F3FFF8F7
      F7FFF8F7F6FFE9E9E8FFB7B6B5FFC6C5C4FFC4C3C2FFBEBDBBFFCFCDCCFFC7C5
      C4FFB5B3B1FFBCBAB8FFB7B5B2FFB3B0ADFFA7ABAEFF798C9AFF849AAAFF6980
      90FF8A9EADFF8397A5FF728693FF6A7C8AFF748591FF95A4ADFF92A0A8FF8F9B
      A2FF8C979CFF879094FF79878EFF0177D0FF0088F0FF0088F0FF0089F0FF007E
      D8FF000306FF000000FF000000F200000043000000092D2F337F1DACDEFB41EC
      FDFF54F0FAFFC7B94AFFAED37BFF81D7B2FF52C0D0FF59B9D7FF80B8D4FFABC1
      D6FFDADFE5FFEDEDECFFEEEEEDFFEFEFEEFFEFEFEEFFE7E7E7FFF0F0EFFFE5EB
      EBFFABEEFAFF90EBFEFF83E0F7FFF1F1F0FFF0F0EFFFC7E8CDFF43CA5EFF39C8
      57FF39C957FF3AC958FF3AC959FF3ACA59FF3BCA5AFF3BCB5BFF3BCB5BFF3CCC
      5CFF3CCC5CFF3DCD5DFF3DCD5EFF4CD16AFFECECEBFFE6E5E4FFB0D8C3FF1389
      4BED0000000D00000003000000010000000300000000F0F0F000CFCFCF00AEAD
      AE0036373B0046474A00525455003D3E420068686B00AAABAB00A8A9AA004243
      46004141430095969700AAABAC00ABABAC00A5A6A7006E6F7100696A6C00A3A4
      A500AEAEAF00AEAEB000AEAEB000AFAFB000AFAFB000AFAFB000AFAFB000AFAF
      B000A6A6A7005F60640056575900555758003F4044004C4E5000515254003C3E
      42003F404200A5A6A700AAAAAB00909192003F3F40004B4C4F00393A3E004E4F
      510088888800D8D6D300DCDBDC00FEFEFE00000000000000000000000000D8C9
      A300DAC59C00E0CCAA00E5D4B400E9DAC000ECE1CC00F1E9D900F5F0E500FAF6
      F100FEFEFD000000000000000000000000000000000000000000000000000000
      000000000000C8927900C2846700DDB9A700D9B19D00D7AE9900D8B19D00E6CC
      BF00F7E8E000FEEDE400FFF1E800FBECE800F6E7EA00FFF0E700FFEFE400FCEB
      DF00F0DDD000DEBCAD00D6AD9900D8B09C00DAB3A100DCB8A500BB745300EAD5
      CC00000000000000000000000000000000000000000000000000000000650000
      00FF008EE0FF00A2FFFF00A2FFFF00A2FFFF018DDDFFDCE5E9FFF5F4F3FFF8F6
      F5FFF8F6F5FFF1EFEFFFDEDDDCFFE2E1E0FFDAD9D9FFE0DFDEFFDAD9D8FFE1E0
      DFFFCDCCCCFFD2D1D0FFDBDAD9FFCCCBC9FFDFDDDCFFDDDBD9FFDAD8D6FFD8D5
      D3FFD9D6D4FFD8D5D2FFC6C3BFFFCCC9C5FFD1CCC7FFDFD9D3FFDCD5CFFFD8D1
      CAFFD4CCC4FFCEC5BBFFBBB8B3FF038EDDFF00A2FFFF00A2FFFF00A2FFFF008E
      E0FF000000FF0000009B0000001700000000000000010000000915A4D6F338E2
      FCFF4DE8FBFFE69C1EFFFEAE13FFFEB60EFFF9BA11FFDEC43AFFB4D275FF86D6
      ACFF58C4D2FF56BFDEFF7BBEDBFFA8C5DCFFD8E0E8FFF0F0EFFFF1F1EFFFF1F1
      EFFFF1F1F0FFF0F1F0FFF1F1EFFFF1F1EFFFD0EAD5FF49CE65FF3BCB5BFF3CCB
      5BFF3CCC5CFF3CCC5DFF3DCD5DFF3DCD5EFF3DCE5EFF3ECE5FFF3ECF60FF3ECF
      60FF3FD061FF3FD062FF3FD162FF47D269FFE8EDE8FFE5E4E3FFE5EAE6FF26A6
      62FF03140B5B00000001000000010000000100000000F0F0F000D0CFCF00AFAF
      AF004F5052005355570046474B004F505100AAAAAC00AFAFB000B0B0B2009A9A
      9C00B0B0B200B4B4B600B5B5B700999A9D006D6E700062636600595B5E006566
      69008B8C8E00A8A9AB00B5B5B700B5B6B700B5B6B800B5B6B800B5B5B700ACAC
      AE00606264006263660060616400595B5E006162650062636600585A5D00595A
      5C0084858600B2B2B300B0B0B100AEAEB0008B8B8C004243450053555700484A
      4D0089898900D8D7D400DCDBDC00FEFEFE000000000000000000FBF9F400DAC4
      9B00DCC59F00E0CCAA00E5D4B500E9DAC000ECE1CC00F1E9DA00F5F0E500FAF8
      F100FEFEFD000000000000000000000000000000000000000000000000000000
      000000000000FDFCFB00C78F7600C4896C00E1C2B200DEBDAC00DDB9A800DBB6
      A400DCB9A800E2C4B500EAD4C900F0DED300F2E0D400EEDAD100E7CEC100DFBF
      AF00DBB7A600DCB8A600DDBAA900E0C0B000DFBEAE00BD795900E6CDC3000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF0096E0FF00AAFFFF00AAFFFF00AAFFFF0195DDFFDDE6EAFFF5F4F2FFF7F6
      F4FFF7F6F4FFDCDBDAFFBEBEBDFFA9A8A7FFA1A09FFFBCBBBAFFC6C5C4FFA5A5
      A4FFB7B6B5FFAFAEADFFB1B0B0FFA7A6A5FFA5A5A4FFB2B1B0FFA9A8A7FFA9A8
      A7FFB3B2B1FFAAA9A8FFBBBAB8FFAAA9A7FFC7C5C3FFBFBDBBFFEBE8E5FFE8E4
      E1FFE5E0DCFFDFDAD4FFCBCDCAFF0395DDFF00AAFFFF00AAFFFF00AAFFFF0096
      E0FF000000FF0000006500000000000000000000000100000009129ED6F331D9
      FCFF46E0FBFFE79B31FFFFAA3FFFFFBF6AFFFFB03EFFFFAA22FFFFAE13FFFFB6
      0EFFFABC0FFFE5C333FFBBD06DFF8DD7A8FF5BC9D6FF51C2E4FF78C2E0FFA5C6
      DEFFDAE2E9FFF0F0F0FFF1F1F0FFD8ECDCFF50D16DFF3DCE5EFF3ECE5FFF3ECF
      60FF3ECF60FF3FD061FF3FD062FF3FD162FF40D163FF40D264FF40D264FF41D2
      65FF41D365FF41D366FF42D467FF46D56AFFE2EEE4FFE5E4E3FFEBEBEAFF61BC
      8DFF0E5730BB00000003000000030000000300000000F0F0F000CECDCD00B0AF
      B0005656580056575A0037383B00A4A5A600BABBBC00BCBCBE00BCBCBE00BCBC
      BE00BCBCBE00BCBCBE009696980056575B00696A6C006A6B6D0058595D006364
      67006B6C6F005C5C60006E6F710080808200767679008F8F9100BCBCBE00BBBB
      BD0068696B006C6D6F006364670058595D006A6B6D0066676A00545659006868
      6A00BBBCBD00BCBCBE00BCBCBE00BCBCBD00BABABC00888889004B4C4E004445
      490089898900DAD8D500DCDBDC00FEFEFE000000000000000000E3D1B300D7BE
      9300DBC59E00E0CCAA00E5D4B500E9DAC000ECE1CC00F1E9DA00F5F0E500FAF8
      F100FEFEFD000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFDFD00D1A38F00BE7B5D00DDB9A800E5CBBE00E3C7
      B800E1C3B400E1C2B200E0C0B000DFC0B000DFC0B000DFC0B000E0C1B100E1C2
      B300E2C4B500E4C8BB00E7CEC100D9B19E00BE7B5C00EFDFD900000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF009DE0FF00B2FFFF00B2FFFF00B2FFFF019CDDFFDDE7EBFFF5F4F2FFF6F5
      F3FFF6F5F3FFF1F0EEFFEFEDECFFF2F1EFFFF3F2F0FFF4F3F1FFE7E6E5FFF2F1
      F0FFF2F1F0FFF3F2F1FFEFEEEDFFF2F1F0FFF2F1F0FFEEEDEBFFF2F0EFFFEFEE
      ECFFF3F2F1FFF0EFEEFFF1F0EEFFE8E7E6FFEEEDECFFEBE9E8FFF3F1EFFFF1EF
      EDFFEEEBE9FFE9E6E2FFD5D9D7FF039CDDFF00B2FFFF00B2FFFF00B2FFFF009D
      E0FF000000FF00000065000000000000000000000001000000090F98D6F329D0
      FCFF3CD8FCFFE7AF51FFFFC167FFFECD8AFFFFBE6BFFFFC57CFFFEB961FFFFBB
      62FFFFBA56FFFEB335FFFFB11BFFFFB712FFFDBC0BFFEDC22CFFC2D067FF82D9
      BEFF36CFEFFF77C7E4FFDEEDE0FF57D575FF3FD162FF40D163FF40D264FF41D2
      64FF41D365FF41D366FF42D466FF42D467FF42D468FF43D568FF43D569FF43D6
      69FF44D66AFF44D76BFF44D76BFF45D86CFFD9EDDEFFE7E6E5FFE8E7E6FFA6D6
      BDFF1CA45EFF00020121000000010000000300000000F0F0F000CBCACA00AFAF
      AF004243480058595C0098999A00C4C5C600C3C3C400BBBCBD00B1B2B400C4C5
      C600C4C5C60077777B005D5E62006C6D6F005E5F63005C5D62006C6D6F006768
      6B00515257006C6D6F006A6A6D004E5055006C6D6F0077787A00C3C3C400C4C5
      C6008E8E90004D4F54006C6D6F006C6D6F00525358006565680060606100B9BA
      BB00C4C5C600B2B2B40065666A0080818400939395009A9A9D00757579006161
      63008F8E8E00DAD8D500DCDBDC00FEFEFE0000000000F4EDE100D6BD8F00D7BE
      9300DBC59E00E0CCAA00E5D4B500E9DAC000ECE1CC00F1E9DA00F5F0E500FAF8
      F100FEFEFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9D2C500C2866600CB977F00DEBC
      AD00E9D3C800EBD7CB00EAD5C900E9D2C600E9D2C600E9D3C700EBD6CA00ECD8
      CE00EAD5C900DEBCAB00C4896B00CFA08A00FBF8F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00A4E0FF00BAFFFF00BAFFFF00BAFFFF01A3DDFFDEE9ECFFF5F3F2FFF5F3
      F2FFF5F3F2FFDBD9D8FFABAAA9FFB3B2B1FFA8A7A6FF9A9998FFC2C1C0FF9A99
      98FFA6A5A4FFB0AFAEFFA6A5A4FFA3A2A1FFBAB9B8FFAFAEADFFC6C5C4FF9493
      92FFABABA9FF9F9E9DFFA2A1A0FFA6A5A4FFBBBAB9FF999897FFDBD9D8FFF1EF
      EDFFEEECE9FFEAE7E3FFD6DAD8FF03A3DDFF00BAFFFF00BAFFFF00BAFFFF00A4
      E0FF000000FF00000065000000000000000000000001000000090C94D5F321C6
      FBFF31CFFCFFE2C467FFFEE087FFFEDB8AFFFED68DFFFEDFACFFFED393FFFED1
      94FFFECD8DFFFEBC67FFFED096FFFEC984FFFEB650FFFEC25AFFFEC042FFBFB7
      60FF37E2FEFF7AE7EDFF60D97EFF42D466FF42D467FF42D568FF43D568FF43D5
      69FF43D669FF44D66AFF44D76BFF44D76BFF45D86CFF45D86DFF45D96DFF46D9
      6EFF46DA6FFF46DA6FFF47DB70FF47DB70FFCFECD6FFE9E8E7FFE5E4E3FFE1EA
      E5FF25A966FF0729177F000000010000000100000000F0EFF000C9C8C800B4B4
      B4006C6C6E007C7D7F008E8F920089898B007C7D7F0068696C009D9D9E00CDCE
      CE00CDCDCE00C2C2C3006A6A6B0067686B0073737600727375006C6D70007172
      7400727375006D6D710070717300727375006C6D700070707300BABABC00CDCE
      CE00B7B7B8006D6E7000727275006B6C6F006D6D700065656700BCBCBD00CDCE
      CE00CDCDCE00CDCDCE00797A7B00727375006D6D71007172740072737500696A
      6D0097969600DAD9D600DCDBDC00FEFEFE00FBF9F400E9DBC200D6BD8E00D7BF
      9400DCC7A000E0CCAA00E5D4B500E9DBC000EEE2CD00F3EADB00F6F0E600FBF8
      F300FFFFFE000000000000000000FFFEFD00FFFEFD00FFFEFD00FEFDFC00FEFC
      FB00FEFCFA00FEFCFA00FEFCFA00FEFCF900FFFFFC00FDFCED00E1C6A500C690
      6A00CB997B00CD9B8400D6AB9900DEBBAC00E1BEB100DDB8A800D5AA9500CC99
      8000C78E7300D1A38C00F6EEEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00ABE0FF00C2FFFF00C2FFFF00C2FFFF01AADEFFDFEAEDFFF4F3F2FFF4F2
      F1FFF4F2F1FFF3F2F0FFF1F0EEFFF2F0EFFFF2F0EFFFF0EFEDFFECEBE9FFF2F0
      EFFFF1F0EEFFF0EFEDFFF1EFEEFFF2F0EFFFF2F0EFFFF1EFEEFFF0EFEDFFF0EF
      EEFFF2F1EFFFECEBE9FFF1F0EEFFF1EFEEFFF0EEEDFFF0EEECFFF0EEECFFEDEB
      E8FFE9E6E2FFE4DFDBFFCFD2CEFF03AADDFF00C2FFFF00C2FFFF00C2FFFF00AB
      E0FF000000FF0000006500000000000000000000000100000009098FD6F318BC
      FBFF29C6FDFFE1D679FFFFF890FFFFF28AFFFFEA82FFFFE279FFFFDA76FFFFDE
      90FFFFD382FFFFCB7BFFFFDEB0FFFFD7A3FFFFCC8AFFFFD49EFFFFBA63FFBEAD
      6AFF2FD9FFFF39D9C2FF44D76AFF44D76BFF44D76BFF45D86CFF45D86DFF45D9
      6DFF46D96EFF46DA6FFF46DA6FFF47DB70FF47DB70FF47DC71FF48DC72FF48DD
      72FF49DD73FF49DD74FF49DE74FF4ADE75FFC3ECCEFFEBEAE9FFE5E4E3FFEDED
      ECFF59BC8BFF187E4BDD000000050000000300000000F0EFF000C7C6C600B3B3
      B4007373750077787A0065666A007A7B7D0078797C0061626600D0D0D000D5D5
      D600D5D5D600D5D5D600CFCFCF00747578006767690078787B00696A6E007273
      76007A7B7D006B6C7000717275007A7B7D006C6C700071717400A4A4A600D5D5
      D600D5D5D5007C7C7E007475780059595D0078787900CBCBCC00D5D5D600D5D5
      D600D5D5D600D5D5D600B0B0B00074747600696A6E00747477007A7B7D006768
      6B0096959500DAD9D600DCDBDC00FEFEFE00F5F0E600E2CFAE00D6BD8F00D7BE
      9300D5BE9400DAC69F00E0D0AD00E6D9BA00EEE2CA00F4ECDA00F8F3E600FDF9
      F300FFFFFE00FFFFFE00FEFDFB00FDFBF800FBF9F400FAF6F000F9F5EE00F8F3
      E700F6F1E600F6F1E600F6F1E600F6F0E100FBF9E900FDFDE100F9F9D100F9FB
      D700E3D8AD00CBAA7B00BC8F5F00B6865500AF804B00C59A7900E3C6BB00F2E4
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00B2E0FF00CBFFFF00CBFFFF00CBFFFF01B3E1FFE0ECEEFFF4F3F1FFF3F1
      EFFFF3F1EFFFDBDAD8FFA7A5A4FFAFAEADFFA5A4A3FF8E8C8CFFA09F9EFFAAA9
      A8FFA9A7A7FF969594FFA4A3A2FFC6C5C4FF9C9A9AFF949392FF989796FF9E9D
      9CFFB6B5B3FFAAA9A8FFABAAA9FFA2A09FFF9B9998FFC7C5C3FFECEAE7FFE8E5
      E1FFE2DED9FFDBD5CEFFC4C5C0FF03B3E0FF00CBFFFF00CBFFFF00CBFFFF00B2
      E0FF000000FF00000065000000000000000000000001000000090D91D7F32EC6
      FDFF2BC7FEFF4CC3E8FF70C9D1FF9BD5BCFFC9E2A7FFECEC94FFFBF48EFFFEF2
      8AFFFFEB83FFFEE279FFFFD86FFFFFD16DFFFED480FFFFCE7EFFFFD08CFFC7B5
      77FF26CFFFFF33D4C7FF46DA6FFF47DA6FFF47DB70FF47DB71FF48DC71FF48DC
      72FF48DD73FF49DD73FF49DE74FF49DE75FF4ADF75FF4ADF76FF4ADF76FF4BE0
      77FF4BE078FF4BE178FF4CE179FF4CE27AFFB8EBC7FFEDEDECFFE4E3E3FFEAE9
      E8FF9CD4B8FF21AA66FF020C07450000000300000000F0EFF000C3C3C300B2B2
      B30064656800767679007E7E80006B6C700075757800A0A0A100DDDEDF00DDDE
      DE00DBDBDC00D0D0D100DDDDDE00DDDEDF00AFAFB1006B6B6E006D6D6F007878
      7A0066676C007E7E80007D7D8000646569007E7F81007D7D7F006F6F7400DDDE
      DF00DDDDDE00959598006C6C6D00ACACAC00DDDDDE00DDDDDE00DBDCDD00A8A8
      AA00CFCFD000DDDDDE00DCDDDE007D7D7F007E7E80007B7B7E0067686C007B7B
      7D009C9B9B00DAD8D500DCDBDC00FEFEFE00F1EADC00DECAA500D7BE9100D5BB
      8E00C6AD8000D1BB9100DAC9A200E2D5B200EBE1C400F4EED700F9F4E400FDFA
      F100FFFFFD00FFFEFD00FDFAF800FAF6F000F9F4EB00F6F0E500F4ECDF00F1E7
      D500F0E6D400F0E6D400F0E6D400EFE4D000FBFAEA00FDFDE000F9F9D000ECE9
      BA00DCD4A000CCC08900BEAC7300AF9A5F00AE9A680000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00B8E0FF00D2FFFF00D2FFFF00D2FFFF01BCE4FFE0EEF0FFF4F2F1FFF2F0
      EEFFF2F0EEFFEDEBEAFFDCDAD9FFDEDDDBFFDBD9D8FFDCDAD9FFD8D7D5FFE3E2
      E0FFDCDBD9FFD6D5D3FFD9D8D6FFD4D2D0FFDCDBD9FFE3E1DFFFE1E0DEFFDEDC
      DBFFE6E4E2FFDFDDDCFFE7E5E3FFDDDBD9FFDEDCDAFFD9D7D4FFDDDAD6FFE1DC
      D8FFD9D3CCFFCEC5BDFFB5B4ACFF02BCE3FF00D2FFFF00D2FFFF00D2FFFF00B8
      E0FF000000FF00000065000000000000000000000001000000050D313E7F226A
      7FB53BAAC9E34FD8FEFF52D9FEFF4BD6FEFF41D1FEFF3ECCFDFF4DC6EAFF6AC8
      D3FF95D4C0FFC3DFA9FFE9E892FFFBEC86FFFEEB83FFFEE279FFFED86FFFC4BD
      7EFF1EC6FEFF2FCFC8FF49DD73FF49DE74FF49DE75FF4ADF75FF4ADF76FF4AE0
      77FF4BE077FF4BE078FF4BE178FF4CE179FF4CE27AFF4CE27AFF4CE37BFF4CE3
      7BFF4CE37CFF4CE47DFF4BE47DFF4BE47EFFACEBC1FFEFEFEEFFE5E3E3FFE7E6
      E5FFDCE9E2FF24AC69FF0E472BA50000000100000000EFEFF000C1C0C100B1B1
      B1007D7D7F00848486007D7D80008484860081818300D8D8D900CECECF00AEAE
      AF0087878A00B1B1B200E5E5E600E5E5E600E5E5E600E2E2E300B6B6B7008685
      86006D6D6E006B6A6D00727274007574760074747600737375006D6C6E00CBCB
      CC00E5E5E600DCDCDD00E2E2E300E5E5E600E5E5E600E5E5E600E6E6E7009292
      93008686880093949600BABABC00AFAFB0008080820085858700848485007C7D
      7F009C9C9C00D7D6D300DCDBDC00FEFEFE00EDE3D000DBC59C00D7BE9200D1B9
      8B00B89F6D00C6B18100D2C09500DCCFA800E9DFBD00F5F0D400FAF6E100FDFB
      F000FFFFFD00FEFDFB00FBF8F400F8F3EA00F5EEE100F1E9DA00EFE4D000EBDC
      C400E9DBC100E9DBC100E9DBC100E5D4BA00FDFBEF00FDFDE000F9F9D000ECE9
      B900DCD4A000CCC08900BEAC7300AF9A5E00AD98640000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00BEE0FF00D9FFFF00D9FFFF00D9FFFF01C5E8FFE1F0F1FFF3F2F0FFF0EE
      EDFFF0EEEDFFDCDAD8FFBDBBBAFFB2B1AFFFB3B1B0FFA8A7A5FFB3B2B0FFC0BF
      BDFFADACAAFFAEADACFFAEADACFFB8B7B5FFBAB9B7FFBEBDBBFFC1BFBEFFB1B0
      AEFFC6C4C3FFB6B4B3FFC6C5C3FFB8B6B4FFC3C1BEFFA9A6A3FFCCC7C3FFD8D1
      CBFFCCC2BAFFBDB2A7FFA2A095FF02C4E6FF00D9FFFF00D9FFFF00D9FFFF00AA
      D1FF000000FF0000005A00000000000000000000000100000003000000030000
      0003000000050102031D0713174D15353D7D2F6C7BB150B0C6E16CE6FFFF6EE7
      FFFF65E2FFFF53D9FFFF47D0FDFF4FC9F0FF63C5D6FF8CCEBFFFBCDAA8FFB4C7
      9BFF15BCFFFF29CACDFF4BE178FF4BE179FF4CE179FF4CE27AFF4CE27AFF4CE3
      7BFF4CE37CFF4CE37CFF4BE47DFF4BE47DFF4BE47EFF4BE480FF4BE580FF4AE5
      81FF4AE581FF4AE682FF4AE682FF4AE683FFA0ECBBFFF0F0EFFFE5E4E3FFE5E4
      E3FFEFEFEEFF51BC89FF219D60F30000001300000000EFEFF000BEBEBE00B0B0
      B000848485008B8B8C0078797C008D8D8E009494950088888B008C8C8E008C8C
      8E0075767900CACACA00EEEEEE00EEEEEE00EDEDED00EEEEEE00EEEEEE00EEEE
      EE00EAEAEA00D7D7D800C4C4C500BBBBBB00B7B7B800C1C1C200D3D3D300EAEA
      EA00EEEEEE00EEEEEE00EEEEEE00EDEDED00E8E9E900EEEEEE00EEEEEE00B4B4
      B5008B8B8D00797A7D008C8C8E008D8D8E007C7C7F0088888A008C8C8E007979
      7C009B9A9A00D4D2D000DCDBDC00FEFEFE00ECE0CB00DAC39800D7BD9100D5BF
      9100B2965F00BDA67100CBBA8800D7CA9D00E5DDB400F4F0CD00FBF8DF00FDFD
      EE00FFFFFE00FEFDFD00FAF6F100F6F0E500F3EADA00EFE2CF00EADCC400E4D5
      B800E4D0B100E4D1B100E1CDA800DAC7AB00FFFFF500FBFDDF00F9F9D000EBE9
      B800DBD49F00CCC08900BEAC7200AE9A5E00AD97640000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00C4E0FF00DFFFFF00DFFFFF00DFFFFF01CEEAFFE2F1F3FFF3F1F0FFEFED
      EBFFEFEDEBFFE4E2E0FFC6C4C2FFC8C6C4FFCDCCCAFFBBBAB8FFC4C2C0FFD4D2
      D0FFBFBEBCFFCDCBC9FFC2C0BFFFC7C5C3FFC9C7C5FFD2D1CFFFEFEDEBFFEFED
      EBFFEEECEAFFEDEBE9FFE8E5E1FFDCD6D0FFD5CEC6FFD0C7BFFFC8BFB5FFBFB3
      A8FFB2A597FFA49586FF8B8476FF01AEDFFF00BEF4FF00BEF4FF00A7DAFF002E
      43FF000000F70000001D00000000000000000000000100000003000000030000
      0003000000010000000300000003000000010000000300000003000102170812
      13471B34397950A19CD37DEFECFF8BF4FBFF90F6FEFF80EEFFFF68E2FFFF4DD4
      FEFF2FC5FFFF2AC8D2FF4CE37CFF4BE47DFF4BE47EFF4BE47EFF4BE580FF4BE5
      80FF4AE581FF4AE581FF4AE682FF4AE683FF4AE683FF49E684FF49E784FF49E7
      85FF49E785FF49E886FF48E887FF4BE889FF9CECBBFFEEEEEDFFE6E5E4FFE5E4
      E3FFEDECEBFF93D2B3FF25AF6CFF061D126900000000EFEFF000BBBBBB00AFAF
      AF00797A7D008B8B8D0093929400818185008B8B8E0093929400848487008888
      8B008F8F9100E5E5E400F7F7F600DBDBDB00A9A9AB00F7F7F600F7F7F600F7F7
      F600F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600F7F7
      F600F7F7F600F7F7F600F7F7F600EBEBEA0088888B00CCCCCD00F5F6F500D6D6
      D60088888B009392940083848700898A8C00939294008F8F91007F7F82008F8F
      9000A09F9E00CFCDCB00DCDBDC00FEFEFE00E9DBC300D8BF9500D6BD8F00DCC3
      9B00B2925F00AB955C00C3B17B00D2C49200E2DAAC00F3F1C900FBFADC00FDFD
      EA00FFFFFA00FEFDFB00FAF6EF00F4EEE000F0E5D400EBDDC600E6D6B800E0CC
      A800DDC69F00E0CDA300D0B98C00E9DCCC00FFFFF600FBFDDF00F9F9CF00EBE7
      B800DBD29F00CCBF8800BDAB7200AE9A5D00AE99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00C9E0FF00E5FFFF00E5FFFF00E5FFFF01D5EDFFE2F3F4FFF2F1EFFFEEEC
      E9FFEEECE9FFE2E0DEFFD3D1CFFFC6C4C2FFCCCAC8FFCAC8C7FFCDCCCAFFD5D3
      D1FFBFBDBBFFCFCDCBFFC3C1BFFFD2D0CEFFC7C6C4FFD4D2D0FFEEECE9FFEDEB
      E8FFECE9E7FFDDD7D1FFD4CCC4FFEDEAE6FFF7F6F5FFF7F6F5FFF7F5F4FFF5F4
      F2FFF3F1EFFFEDEAE7FF787573FF000000FF000000FF000000FF000000FF0000
      00F7000000610000000000000000000000000000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000011F5C32A34CE37CFF51E588FF5DE99FFF6DEEB8FF81F5D1FF93FA
      EAFF94FBECFF5BEA9AFF4AE582FF4AE682FF4AE683FF4AE683FF49E784FF49E7
      84FF49E785FF49E786FF49E886FF48E887FF48E887FF48E888FF48E989FF48E9
      89FF5CEA95FF85EBAEFFAEEAC5FFD5E8DBFFE6E6E4FFE8E7E6FFEBEBEAFFDAE8
      E0FFA8DAC2FF55A17EE70F442A9F020A063F00000000EFEFF000B8B7B700AEAD
      AD008E8E8F0099999A00939396009898990099999B0094949600989899009999
      9A0093939500F1F1F000C3C3C30095959700A2A2A300F9F9F800FBFBFA00F5F5
      F400D7D6D600FBFBFA00FAFAF900FAFAF900FBFBFA00FAFAF900FAFAF900F4F4
      F300D1D1D100FAFAF900FBFBFA00E2E2E1009897990099999A00ACACAD00E6E6
      E50099999A00939395009898990099999A009494960099999A00979799009090
      92009F9F9F00C9C8C600DBDBDC00FEFEFE00E7D9BF00D8C09200D6BD8F00DAC1
      9800D0B78B00A2864C00B7A26700CBBE8800E5DAA700F6F9C900FEFFDF00FEFF
      EE00FFFFFA00FEFEFE00F9F5EF00F0EBDC00ECE0CB00E7D0BB00E0CDAD00DAC4
      9D00D6BD8D00D9BF9100C19E7300FAF9F300FFFFF000FBFDDF00F9F9CF00EBE7
      B800DBD29F00CCBF8800BDAB7200AE985D00B09C6A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000650000
      00FF00CEE0FF00EAFFFF00EAFFFF00EAFFFF01DDF0FFE3F5F6FFF2F0EEFFEDEA
      E8FFEDEAE8FFDCD9D7FFE1DFDDFFD2D0CEFFD2D0CEFFC1BEBDFFD3D1CFFFBCBA
      B8FFEDEAE8FFEDEAE8FFEDEAE8FFEDEAE8FFEDEAE8FFEDEAE8FFECE9E7FFEBE8
      E5FFE1DCD7FFD8D1CAFFFBFAFAFFECE9E6FFE4E1DDFFE4E0DCFFE4E0DCFFE6E3
      DFFFF8F6F6FF898888FF000000FF000000C30000007A0000007A000000670000
      001F000000000000000000000000000000000000000100000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000032B864BC34AE581FF4AE582FF4AE682FF4AE683FF4AE683FF4AE7
      84FF4BE787FF49E785FF49E786FF49E886FF48E887FF48E887FF48E988FF48E9
      89FF48E989FF47E98AFF47EA8AFF47EA8BFF51EA91FF7CECABFFA7ECC3FFD0EA
      DAFFE5E7E5FFE7E6E5FFE9E9E8FFE9EBE9FFC1E1D2FF8AD1B0FF3D8563D30D32
      21870209063B00000007000000030000000300000000EFEFF000B4B4B400ACAC
      AC0098989800A09FA0008F8F9100A2A2A300A1A0A1008E8E9100A2A1A200A1A1
      A20095959700AFAEAF00A1A1A2008E8E9100A5A4A500F8F8F700F8F8F700BABA
      BB00ACABAC00F9F9F800FBFBFA00F8F8F700CECECE00FAFAF900FBFBFA00D6D6
      D60099989A00D0D0D000FAFAF900D6D6D600A2A1A2009F9FA00090909200A5A5
      A600A4A4A5008F8F9100A2A2A200A1A1A200919193009E9D9F00A2A2A3008E8E
      90009D9C9C00C2C1C000DBDBDC00FEFEFE00E9DBC400D8C09400D6BD8F00D7BD
      8F00EBE1C500D7C9AA00AE986200C1AA7700C7B78500DACA9A00E9DDB500F0EA
      CB00F5F3EA00F9F9F600FBF8F000FAF6F000F3EEE500EADDCA00E4D2B300DFC7
      A300E1C59800C3A07100E1D4C40000000000FEFEEF00FBFBDD00F8F8CF00EAE6
      B700DAD19E00CBBE8700BBAA7100AD975C00B3A0700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000560000
      00FF00B6C9FF00EFFFFF00EFFFFF00EFFFFF01E4F3FFE4F6F7FFF1F0EEFFEBE9
      E6FFEBE9E6FF969593FF696867FF646361FF5D5C5AFF2B2A2AFF504F4FFF2E2D
      2DFFE5E2E0FFEBE9E6FFEBE9E6FFEBE9E6FFEBE9E6FFEAE8E5FFE9E7E4FFE8E5
      E1FFCFC7BEFFFAF9F8FFE7E4E1FFE2DEDAFFE2DEDAFFE2DEDAFFE4E0DDFFF9F8
      F7FF8C8C8CFF000000FF000000BF0000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000030000
      0003000000010000000100000003000000010000000300000003000000010000
      00030000000339B466E149E785FF49E786FF49E886FF48E887FF48E888FF48E9
      88FF48E989FF48E989FF47E98AFF47EA8AFF47EA8BFF47EA8BFF47EB8CFF46EB
      8DFF4EEB92FF72ECA7FF9FEDC0FFC9ECD7FFE8E9E7FFE7E6E5FFE8E7E6FFEAEA
      E9FFD6E7DFFFA4DAC1FF66BB95F51F6343B90821156D00020121000000030000
      00010000000100000003000000010000000100000000EFEFF000B1B1B100ABAA
      AA008D8D8F00A1A1A200A9A8A90097979900A1A1A200A9A8A9009A999C00A09F
      A100A9A8A9009A9A9C009E9E9F00A9A8A900A09FA100F5F5F400C7C7C700A5A4
      A50093939600E4E4E300FAFAF900CDCDCD00AAA9AA00E7E7E600FAFAF900C0C0
      C000A8A7A80091919400D2D2D200CECECE0095959700A4A3A500A9A8A9009696
      9900A2A1A300A9A8A90099989B00A0A0A200A9A8A900A4A3A40095959800A5A4
      A4009F9E9E00BAB9B800DBDBDC00FEFEFE00ECE0CB00DAC39900D5BB8D00DBC5
      9C00F0EBD900ECE7C500E7DCAB00E7E0B400F4EBC100EFE6C300ECE5C500F4E4
      B300F1DF9700D5B36F00AD814900AB845400C6AD7E00D5BE9A00DAC4A500D9C3
      9C00BB9A6700C1A7890000000000FFFFFD00FEFEEE00FBFBDD00F8FACD00EAE6
      B700DAD19E00CBBE8700BBAA7100AD975C00B7A6790000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000140000
      00F1002E39FF00BAD1FF00D4EAFF00D7EAFF01D1E1FFE4F6F7FFF1EFEDFFEAE7
      E4FFEAE7E4FFB4B1AFFF7D7C7AFF9E9C9AFF969492FFCCCAC7FFDDDAD7FFC8C6
      C3FFEAE7E4FFEAE7E4FFEAE7E4FFEAE7E4FFE9E6E3FFE8E5E2FFE6E3DFFFE3E0
      DCFFD4CCC4FFF9F8F7FFE2DEDAFFE2DEDAFFE2DEDAFFE4E1DDFFF9F8F8FF8B8B
      8BFF000000FF000000BF0000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      00010000000D44DB81F747E989FF47E98AFF47EA8AFF47EA8BFF47EA8CFF46EB
      8CFF46EB8DFF46EB8DFF46EB8EFF46EC8EFF4AEC91FF69EDA3FF96EEBCFFC2EE
      D4FFE3EBE6FFE8E8E7FFE7E6E5FFEAE9E8FFE4EAE6FFBBE1CFFF86D2B0FF45A1
      78E71348309F05130C5300000011000000010000000100000001000000010000
      00010000000100000001000000010000000100000000EFEFF000AEAEAE00A9A8
      A900A4A3A300B0AFB000ABAAAC00AFAEAF00B0B0B000ABABAC00AFAFAF00B0AF
      B000ABABAC00AFAFAF00B0AFB000ADACAD00B0AFB000CECDCD00ADACAD00AFAF
      AF00AFAEAF00CAC9CA00F2F2F100B4B3B400ADACAE00BFBEBF00F3F3F200AFAF
      B000AEAEAE00AFAEAF00B0B0B000B0B0B100AFAEAF00B0AFB000ABABAC00AFAF
      AF00B0B0B000ABABAC00AFAFAF00B0AFB000ACACAD00B0AFB000AFAEAF00A8A7
      A8009E9D9D00B1B0B000DBDBDC00FEFEFE00F0E7D700DDC8A200D5BA8C00E5D7
      BB00E0D9B400D4CB9200E4DDAA00EBE9BB00F8F8C900FDFEDA00FFFFEA00F6EF
      DA00C0A4760096673400AD896300D9BB6900D7B84900C6A74200A67E2E009B6E
      3200C5A06900FDFEF90000000000FFFFFD00FEFEEE00FBFBDD00F8F8CD00EAE6
      B500DAD19D00CBBE8700BBAA7000AD975C00CABC9A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0056000000F5000000FF000000FF000000FF010101FFE5E5E4FFF0EEECFFE8E5
      E2FFE8E5E2FFE8E5E2FFE8E5E2FFE8E5E2FFE8E5E2FFE8E5E2FFE8E5E2FFE8E5
      E2FFE8E5E2FFE8E5E2FFE8E5E2FFE8E4E1FFE7E3E0FFE5E1DEFFE2DEDAFFDED9
      D4FFD2C9C1FFF6F5F4FFE2DEDAFFE2DEDAFFE4E1DDFFF9F8F7FF848484FF0000
      00FF000000BF0000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      00030104022546EB8DFF46EB8DFF46EB8EFF46EC8FFF46EC8FFF45EC90FF45EC
      90FF45ED91FF60EDA0FF8EEEB9FFBAEFD1FFE0EDE5FFEAEAE9FFE7E6E5FFE8E8
      E7FFEBEBEAFFD2E6DCFF9DD9BEFF67CA9EFF29825AD30D3322870209063B0000
      0007000000030000000300000003000000030000000300000003000000030000
      00030000000300000003000000030000000300000000EFEFEF00ABABAB00A7A7
      A700ADACAC00B6B6B600A6A5A700B8B8B800B7B7B700A4A4A600B8B7B800B8B7
      B800A5A4A600B8B7B800B8B7B800A5A4A600B7B6B700B8B7B800AAAAAB00B2B1
      B200B9B8B800B3B2B300CDCCCC00B8B8B800ADACAD00B0AFB000C9C9C900AEAE
      AE00AEADAE00B8B8B800B5B5B500A8A8A900B9B8B800B6B5B600A7A6A700B9B8
      B800B7B6B700A6A6A700B8B8B800B8B7B700A9A9AA00B4B3B400B9B8B800A5A4
      A6009A999900A9A8A800DBDBDB00FEFEFE00F7F3EA00E4D2B400D9C09500E2D7
      BA00C7B98000CFC38B00D9CF9B00E1DBA800EBEABA00F5F6CB00DCCCA2009F78
      4E00A0764A00DDCFB300FFFFFE00FFFFFA00DBC37D00C6A56200DCC58C00F8E2
      A500FFFAAF00FFF4B100FFFAE000FFFFF900FEFEF800FDFEEE00FDFEDA00EAE6
      B500DAD09C00CBBD8600BBAA6F00AC965B00EDE8DD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001B0000005C00000066000000B5010101FFE6E5E5FFF0EEEBFFE7E4
      E0FFE7E4E0FFE7E4E0FFE7E4E0FFE7E4E0FFE7E4E0FFE7E4E0FFE7E4E0FFE7E4
      E0FFE7E4E0FFE7E4E0FFE6E3E0FFE5E2DEFFE3E0DCFFE1DCD8FFDDD8D3FFD7D1
      CBFFCDC4BBFFF6F5F4FFE2DEDAFFE4E0DDFFF9F8F8FF848484FF000000FF0000
      00BF0000000C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000030000
      0003000000010000000100000003000000010000000300000003000000010000
      000305110A4545ED91FF45ED91FF45ED92FF45EE93FF58EE9DFF85EFB5FFB1EF
      CDFFDDEFE4FFECECEBFFE9E8E7FFE7E7E6FFEAE9E8FFE1E9E4FFB5DFCCFF7ED0
      ACFF46B685F71A6341B90822166D000302210000000100000003000000010000
      0001000000030000000100000001000000030000000100000001000000030000
      00010000000100000003000000010000000100000000F1F1F100A8A8A800A6A5
      A500A5A4A500B9B8B900C0BFBE00B1B1B200B9B8B900C0BFBE00B4B3B400B7B6
      B700C0BFBE00B4B3B400B7B6B600C0BFBE00B7B6B700B4B3B400C0BFBE00BDBC
      BC00ADADAE00C0BFBE00BEBDBD00ACACAD00C0BFBF00BFBDBD00ABABAD00C0BF
      BF00BFBEBE00ABABAC00C0BFBE00C0BFBE00AFAFB000BBBABA00C0BFBE00B1B0
      B200B9B8B900C0BFBE00B3B2B300B8B7B800C0BFBE00BDBCBC00AFAEB000BBBA
      B9009C9B9A009F9E9E00DFDFE00000000000FEFDFC00EEE3D000DFCAA500CFC1
      9700BBA86E00C7B98100D1C58F00DBD19D00E5DFAD00D9C99A00B18D5D00BEA0
      7200F3EBCA00FFFFF100FFFFF600E4DAC700D9C7A800FBFBE200FFFFD900FAE9
      B100F3DD9A00F0D98600EECD7800E0C67200C5A56100BFA46B00E0D5A500EBE9
      BD00DCD5A300CABD8600BAA86F00C6B68E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000083010101FFE5E5E4FFF0EEECFFE6E2
      DEFFE6E2DEFFE6E2DEFFE6E2DEFFE6E2DEFFE6E2DEFFE6E2DEFFE6E2DEFFE6E2
      DEFFE6E2DEFFE5E1DDFFE4E0DCFFE2DEDAFFDFDBD6FFDCD6D1FFD6D0C9FFCDC6
      BDFFC8BEB4FFF6F5F4FFE4E0DDFFF9F9F8FF848484FF000000FF000000BF0000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      00010A2517653ACA7EEB207045AF45785DB5D4F0E0FFEDEEECFFEBEAE9FFE8E7
      E6FFE9E8E7FFE7E7E6FDB6C2BCE997D7BAFF60C89AFF38BC82FF30BB7CFF30BB
      7CFF081E14670000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      00010000000100000001000000010000000100000000F6F6F600A4A4A400A4A4
      A300B4B2B100C8C7C500C5C4C300C7C6C500C9C7C600C5C4C300C8C6C500C8C7
      C600C4C3C300C7C6C500C8C7C500C5C4C400C8C6C500C7C6C500C6C5C400C8C7
      C600C7C5C500C6C5C400C7C6C500C6C5C400C6C5C500C7C6C500C7C5C500C7C6
      C500C7C6C500C7C5C500C9C8C700C4C3C300C7C6C500C9C8C600C4C3C300C7C6
      C500C9C7C600C4C3C300C7C6C500C8C7C600C5C4C400C8C7C600C7C5C500BCBB
      BB009594940097979700E9E9E9000000000000000000F7F3EA00DFCAA600C4B4
      8500B4A06400C0AF7600C9BB8400D2C79200DCD4A200D4C69400D9CA9800F8F5
      CA00FEFFDF00FFFFE600E2D5B500D6C59600FBFDD200FBFDD500EEE6C900EBE2
      C700F4E6B800F0DC9100F0D68000EFD47800E5CC6700D4B85300B9973C00B99D
      5C00D6CC9A00CDC08A00C0AF7A00F3EFE6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000067000000FFBFBFBFFFF9F8F8FFE5E1
      DEFFE4E0DDFFE4E0DDFFE4E0DDFFE4E0DDFFE4E0DDFFE4E0DDFFE4E0DDFFE4E0
      DDFFE3DFDCFFE2DEDAFFE0DCD8FFDED9D4FFDAD5CFFFD4CEC7FFCCC4BCFFC0B6
      ADFFC1B7ACFFF9F8F7FFF9F8F8FF848484FF000000FF000000BF0000000C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000100130000000900000003050505270A0A0A37828181BFCCCCCBED6969
      68A9222222610303031D000000070A281A7730B579FB289665E5185E3EB50C2F
      1F810000000B0000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      00030000000300000003000000030000000300000000FCFCFC00B1B0B100A3A3
      A200AEACAA00CFCDCC00BFBEBF00D3D2D000D2D1D000BEBDBE00D3D1D000D3D1
      D000BDBDBD00D3D2D000D3D2D000BEBDBE00D2D0CF00D3D2D000C4C3C300CCCB
      CA00D3D2D000C5C4C400CBCAC900D3D2D000C6C5C500CAC9C800D3D2D000C8C7
      C700C8C7C700D3D2D000D0CFCE00C1C1C100D3D2D000D1CFCE00C0BFBF00D3D2
      D000D2D1CF00BFBEBF00D3D2D000D3D2D000C2C2C100CECDCC00D2D1CF00AEAC
      AC008483830095949500F5F5F600000000000000000000000000E7D8BC00C7B5
      8800AA965A00B9A66C00C1B17800CABD8600D5C99400DDD6A200E7E5B300F1F1
      C100FDFED900E9E0B800CBB88500E9E4B300EEEBBA00F0EBC500FAF8EC000000
      0000FFFFFE00FFFBDD00FFF4BA00FFF0A000F5DF8200E5C96800D2B85400B89B
      3700AB8A4200C6B58100EEEADD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001D000000FA4B4B4BFFFCFCFCFFF8F7
      F6FFEAE7E5FFE7E3E0FFE7E3E0FFE7E3E0FFE7E3E0FFE7E3E0FFE7E3E0FFE6E3
      DFFFE5E1DEFFE3DFDCFFE1DCD8FFDDD8D3FFD7D1CBFFCFC7BFFFC3B9B0FFB3A7
      9CFFBCB1A5FFFEFEFEFF848484FF000000FF000000BF0000000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000010000
      0003000000010000000300000003000000010000000100000003000000010000
      000100000003000000010000000300000003000000010000000F000000050000
      0001000000030000000300000001000000030000000300000001000000030000
      0003000000010000000300000003000000010000000300000003000000010000
      0003000000030000000100000003000000030000000100000003000000030000
      0001000000030000000300000001000000030000000000000000E2E2E200A1A1
      A00099989700C1C0BF00DCDAD900C9C8C900D3D2D200DDDBDA00CCCBCB00D1D0
      D000DDDBDA00CDCCCC00D0CFCF00DDDBDA00D0D0CF00CECDCD00DDDBDA00D8D7
      D600C4C4C400DDDCDB00DAD9D800C3C2C300DDDCDB00DBD9D800C2C2C200DDDC
      DB00DCDADA00C2C1C200DDDBDA00DDDBDA00C8C7C700D5D4D400DDDBDA00C9C8
      C800D4D3D200DDDBDA00CCCBCB00D2D1D100DDDBDA00D7D6D500BCBBBB009D9B
      9A0074747400BCBCBC00FDFDFD00000000000000000000000000FBF8F300D7C5
      A200AF9B6400B19B6000BAA76E00C3B27A00CCBF8800D6CC9600DFD7A400EBE7
      BA00E4DBAE00C5B37E00D4C99200DBD29D00E5E0B100FBFAF30000000000FBFB
      F500F8F6EE00F4F1E500F0EBDA00EBE6C900EDE5C300FAF6E100E9DBA000D7C2
      7600CFBC7D00EFE9DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008D000000FF646464FFF0F0
      F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFC
      FCFFFBFAF9FFF8F6F5FFF3F2EFFFEDEAE7FFE4DFDAFFD7D0C8FFC6BCB1FFB1A3
      96FFBBAFA3FF848484FF000000FF000000BF0000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000000000000FBFBFB00B1B1
      B1009F9F9E00A5A3A100C8C6C500DBDADA00E2E1E000DDDCDC00E1E0DF00E2E1
      E100DDDCDC00E1E0DF00E2E1E000DEDDDC00E2E1E000E1E0DF00DFDEDE00E2E1
      E000DFDEDD00E0DFDE00E2E1E000DFDEDD00E0DFDE00E1E0E000DFDEDD00E1E0
      DF00E1E0DF00DEDEDD00E4E3E200DDDCDC00E0DFDF00E3E2E100DDDCDC00E0DF
      DF00E3E2E100DDDCDC00E1E0DF00E2E1E000DCDBDA00D3D1D000A4A3A1006767
      660086858600F4F4F5000000000000000000000000000000000000000000FBF8
      F300CDBD9700AD975D00B39E6400BAA86F00C4B47C00CDC18A00DFD7AC00D4CA
      A000B4A26700C0AF7700C9BA8200CFC18A00E7E1C100FDFBF600F5F1E200F0EB
      D500ECE6C900E9E0BD00E5DBB200DFD2A500EFEAD50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000005000000A5000000FF0F0F
      0FFF464646FF505050FF505050FF505050FF505050FF505050FF4F4F4FFF4F4F
      4FFF4E4E4DFF4D4C4CFF4B4A49FF494746FF454341FF403D3AFF3A3632FF322D
      28FF2C2925FF000000FF000000B8000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      0003000000030000000300000003000000030000000300000003000000030000
      000300000003000000030000000300000003000000000000000000000000F5F5
      F500A6A6A6009F9E9D0095949300B4B1B000C3C1C000ACABAA00CAC8C700CAC8
      C600ACABAA00CAC8C700CAC8C700ACABAA00C9C7C500CBC9C700B4B3B200C0BE
      BD00CBC9C700B7B5B400BFBDBC00CBC9C700B8B7B600BEBCBB00CBC9C700BAB8
      B700BBB9B800CBC9C700C6C4C200B1AFAE00CBC9C700C6C5C300AFAEAD00CBC9
      C700C8C6C500AEACAC00CAC8C700C8C6C400A4A2A1008F8E8D00676767007373
      7200E5E5E500FEFEFE0000000000000000000000000000000000000000000000
      0000FEFEFD00ECE6D800E3DAC300E3DBC400EAE4D100F4F0E400FEFDFC00FDFC
      FB00CDC09900B39F6400BEAC7300C4B47A00E1D9B400F0EBD200EAE2C100E6DC
      B500E1D7AC00DDD1A000D9CA9200D9CA9500FCFBF70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000004E0000
      00B3000000E4000000EA000000EA000000EA000000EA000000EA000000EA0000
      00EA000000EA000000EA000000EA000000EA000000EA000000EA000000EA0000
      00EA000000EA000000B200000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000030000
      0003000000010000000300000003000000010000000300000003000000010000
      0003000000030000000100000001000000030000000100000001000000030000
      0001000000010000000300000001000000010000000300000001000000030000
      0003000000010000000300000003000000010000000300000003000000010000
      0003000000030000000100000003000000030000000100000003000000030000
      0001000000030000000300000001000000030000000000000000000000000000
      0000F8F8F800B5B5B500A2A2A100A4A3A300A5A4A400A8A7A600ABAAAA00AFAE
      AD00B2B2B100B6B5B400B9B8B800BEBCBC00C0BFBF00C2C1C100C7C5C500C9C8
      C700CAC9C900CFCECD00D2D0CF00D1CFCE00D2D1CF00D1CFCE00CDCBCA00CCCB
      CA00C9C8C800C4C3C300C2C1C100BEBDBD00B9B8B800B4B3B300AEAEAE00A8A7
      A800A2A1A2009C9B9C00959495008D8C8D00808081007676770093939400ECEC
      EC00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFCFB00CFC29D00B19D6100B9A56B00D4C69500E7DDB400DFD4A400DACD
      9700D6C68B00D0C07F00D0BF7C00F2EDD9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000003000000010000
      0001000000030000000100000001000000030000000100000001000000030000
      0001000000010000000300000001000000010000000300000001000000010000
      0003000000010000000100000003000000010000000000000000000000000000
      000000000000FDFDFD00E9E9E900B9B9B900AAA9A900A5A5A500A8A7A800AAAA
      AB00ADADAD00B0AFB000B3B2B300B6B5B600B8B8B800BAB9BA00BCBCBC00BFBE
      BF00C1C0C100C3C2C300C5C4C500C7C6C600C7C6C700C7C6C600C5C4C400C4C3
      C300C1C1C100BFBFBF00BDBCBD00B9B9BB00B6B6B700B3B3B300AEAEB000ABAA
      AB00A6A5A700A1A1A2009C9C9D009C9C9D00ABABAC00DADADA00FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFD6BE00B6A26A00B9A66C00D1C38900D4C48600CFBE
      7B00CDBE7C00D9CD9500F5F2E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000001000000010000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F3EB00DDD4BA00C9BB8F00C7B68200D5C8
      9D00EBE5CE00FBFAF50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000010100000002000002030000020400000305000003050100
      0306010004080100040801000408010004080000050900000509010004080100
      0408000005090100040800000407010003060000030500000204000002040000
      0003000001020000010100000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A0A0A4E0202022700000000000000000000000000000000000000000202
      02270A0A0A4E0000000000000000000000000000000000000000000000000A0A
      0A4E020202270000000000000000000000000000000000000000020202270A0A
      0A4E000000000000000000000000000000000101011D0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000040000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000101000002030000
      030500000407000005090000060B0100070D0100080F0100091102000A130100
      0B1503000B1602000C1703000C1803000D1903000D1903000D1903000D190300
      0D1903000C1802000C1703000B1602000A1401000912020008100100070E0000
      060C0100050A0100040800000305000002040000010200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2B2B9C0A0A0A4E00000000000000000000000000000000000000000A0A
      0A4E2B2B2B9C0000000000000000000000000000000000000000000000002C2C
      2C9D0A0A0A4E00000000000000000000000000000000000000000A0A0A4E2C2C
      2C9C000000000000000000000000000000000A0A0A4E262626910A0A0A4E0000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000090101001C0001001C0001001C0001001C0001001C0001001C0001
      001C0001001C0001001C0001001C0001001C0001001C0001001C0001001C0001
      001C0202021C0202021C0102011C0101011C0101011C0102021C0202021C0202
      021C0202021C0001001C0001001C0001001C0001001C0001001C0001001C0101
      001C0102011C0001001C0001001C0001001C0001001C0001001C0001001C0000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000010100000204000004070100070D0100
      091102000C1702000E1C0300112104001325040015290400162C050018300500
      1A330600193506001C3705001C3806001B3905001D3A06001B3906001B390600
      1D3905001C3806001B3505001A33050019310500172E0400152A040013260300
      112202000F1D03000C1802000A130100070E0000050900000305000001020000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D
      2D9D555555D93F3F3FBB2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D3F3F
      3FBB555555D92D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D5555
      55D93F3F3FBB2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D3F3F3FBB5555
      55D92D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2D2D2D9D2727
      2792080808430000000000000000000000000000000000000000000000000000
      00000000000C0203002E0103002E0103002E0203002E0203002E0103002E0103
      002E0103002E0103002E0104012E0104012E0104012E0104012E0104012E0204
      022E0506052E0707072E0707072E0707072E0707072E0707072E0707072E0406
      042E0104022E0104012E0104012E0104012E0104012E0104012E0103012E0204
      012E0304022E0103002E0103002E0103002E0103002E0103002E0103002E0001
      001E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000102010003060100070D03000B16030011210500
      162B05001A3406001F3D070122440700244B09002850080029550A012D590A01
      2F5D0C0131600B0132620C0133640B0133650B0134660B0134660B0133650C01
      33640B0132620A0130600A012F5D09012D5A09002B56080027510800264C0701
      23460701204005001C380500172E0300122303000D190100080F010004080000
      0102000000000000000000000000000000000000000000000000000000002D2D
      2D9D191919750A0A0A4E0B0B0B4E0B0B0B4E0C0B0C4E7A5E78CE785D78CD7A5E
      78CE9D7B9CEB8B6C8ADC785E78CD795F78CE785F78CD785F78CD786079CE886F
      8ADC9C7E9CEB776279CE756078CD756178CD766279CE746278CD746278CD9983
      9EEC85738ADC736478CD746479CE726478CD736579CE716478CD83748ADC9687
      9FEC716778CD706878CD72687ACE0C0C0C4E191919752D2D2D9D262626910A0A
      0A4E0000000B0000000000000000000000000000000000000000000000000000
      00000000000C0306004003060040030600400306004004070140040701400307
      0040030701400307014003070140030802400308024003080340030803400308
      03400309034004090440060A06400A0C0A400F0F0F40090C0940040904400309
      0340030803400308034003080340030802400308024003070240030701400307
      0140030701400306004003060040030600400306004003060040030600400102
      0024000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000002040000060C02000D1A0500162B07001F3E0800
      274E0A012E5C0B0033660D00386F0C003B760E003E7C0F0242820F0143850A00
      408608003F8707003E8809003F8909003F8A0900408B09003F8B09003F8A0800
      3F8A0900408A0B00428A1001458A0F0244870E0142830D003F7E0E003D790C00
      39720C00356A0A01306009002A5307012244050019310300101F020008100100
      0306000001010000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E00000000000000000000000000000000FFADFBFFFCAAF8FEFFAD
      FBFFFCABF8FEFBACF8FEFAADF8FEFBB0FBFFF8AFF9FEF7B0F9FEF8B3FCFFF5B2
      F9FEF4B3F9FEF5B6FCFFF2B6F9FEF1B7F9FEF2BAFCFFEFB9F9FEEEBAFAFEEFBD
      FDFFEBBCFAFEEABDFAFEEBC0FDFFE8BFFAFEE9C2FDFFE6C1FAFEE5C2FAFEE6C6
      FDFFE3C5FBFEE2C7FBFEE1C8FCFE00000000090909440B0B0B4E0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000009050A0051050A0051050A0051070C0251070B0251050A0051050A
      0051050B0151050B0151050C0251050C0251050C0351050C0351050D0451050D
      0451050D0551050D0551050D05510B110B51181818510C120C51050D0551050D
      0551050D0451050D0451050D0451050C0351050C0351050C0251050B0251050B
      0151050B0051050A0051050A0051050A0051050A0051050A0051050A00510102
      0028000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000504
      03300E0C0A50251F1B8053463CBF715F51DF937C69FF7E6959EF14110E600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000001010000040702000A1305001428070120400A012D590C00
      366F0D00407F0F01448B10014A9411014F9C0D004C9F0900499F10014FA42111
      60B0322170BD402F7FC94F3D8ED6503F94DA4E3D94DB514194DB4F3D8ED53F2F
      7FC9302071BE210F5FB10F0050A70A004BA30E004FA4130152A311014F9D0F01
      4B961001478E0D0140830C003B750A013161070124480400182F03000D190100
      050A000001020000000000000000000000000000000000000000000000002D2D
      2D9D0B0B0B4E00000000000000000000000000000000FFADFBFFFFADFBFFFEAD
      FBFFFDAEFBFFFCAFFBFFFBB0FBFFFAB1FBFFF9B2FBFFF8B3FCFFF7B4FCFFF6B5
      FCFFF5B6FCFFF4B8FCFFF3B9FCFFF2BAFCFFF1BBFCFFF0BCFCFFEFBDFDFFEDBE
      FDFFECBFFDFFEBC0FDFFEAC1FDFFE9C2FDFFE8C3FDFFE7C4FDFFE6C6FDFFE5C8
      FDFFE4C9FEFFE3CAFEFFE2CBFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000003070E0060070E0061080E0062080F0064080F0066080F0067080F
      00690810016B0811026C0812036E0812036F0812047008130571081405720814
      0672081406730814077309150774111A107424252474131B1274091507740914
      067408140673081405720814057208130471081203700812036F0811026E0811
      016D0810006C080F006A080F0069080F0067070F0066080E0065080E00630102
      0028000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090706401C1814702E27228F54483DBF97826DFF9C87
      73FFA5907DFFB5A393FFC2B2A4FFB7A28FFFC9B5A1FFC0AB97FF9F8A75FF6C5C
      4DDF090706400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000001020100040802000C170400182F0900264B0B0034680F01
      408011014992120150A00C004DA20C004CA4221363B6443385D25A48A2EB5F4E
      AFFA5A48AEFF5241A9FF4C3BA6FF4A39A5FF4A3AA5FF4D3CA6FF5342AAFF5B4A
      AFFF6353B4FF6956B1F95F4DA3EA433285D11F0F62B80B004FAA0E0052AB1301
      55A9120151A110014B950F0143860D00387009002A5405001C3803000F1E0000
      060C000000030000000100000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E00000000000000000000000000000000FFADFBFFFCABF8FEFDAE
      FBFFFAADF8FEF9AEF8FEF8AFF9FEF9B2FBFFF6B1F9FEF5B2F9FEF6B5FCFFF3B4
      F9FEF2B6F9FEF3B9FCFFF0B8F9FEEFB9F9FEF0BCFCFFECBBFAFEEBBCFAFEECBF
      FDFFE9BEFAFEE8BFFAFEE9C2FDFFE6C1FAFEE7C4FDFFE4C4FBFEE3C5FBFEE4C9
      FEFFE1C8FBFEE0C9FBFEDFCAFCFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001050A006E162900BD152800C1152800C3152800C5142800C61428
      00C7142801C7142903C7152B04C8152C07C8152E08C8152E0AC8152F0BC81530
      0CC815320EC815320EC815320FC815320FC815320FC815320FC815320FC81532
      0EC815310DC815300CC8152F0AC8142D09C7142D07C7142C06C7142A03C61428
      01C5152800C5152800C3152700C1152800BE152800BB152800B80F1C00A00000
      0028000000170000000E00000005000000000000000000000000000000000000
      000000000000000000000000000000000000000000100908064025201B80463C
      33AF635548CF99836FFFA08A76FFA99582FFB8A696FFC2B2A4FFC5B6A8FFC5B5
      A8FFC8B9ABFFC5B3A4FFB4A191FFD7C6B5FFCAB6A2FFC6B19EFFC1AD99FFB19C
      89FF97816DFF4F4338BF02010120000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000001010100040801000B150500162B080123450A002E5F0E00
      3C780D00418706003D8724145DA5503F91D75C4AAAF74B3AA6FF382799FF2D1D
      92FF2A1A8FFE2C1B8FFD2E1C91FD301E93FD322094FD332295FD352396FD3625
      96FD392898FE3F2E9DFF4D3DA6FF604FB2FF6959B2F6514090D61F115BA90600
      43930F004A970F01478D0D003C7B0C0034670900274D05001A3302000E1B0000
      060B000002030000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E00000000000000000000000028140E68FDA6E2FFFAA7E9FEFCAD
      F5FFF9AEF8FEF8AFF9FEF7B0F9FEF8B3FCFFF5B2F9FEF4B3F9FEF5B6FCFFF2B6
      F9FEF1B7F9FEF2BAFCFFEFB9F9FEEEBAFAFEEFBDFDFFEBBCFAFEEABDFAFEEBC0
      FDFFE8BFFAFEC571DBFEC061D7FFE2BAF7FEE6C6FDFFE3C5FBFEE2C7FBFEE3CA
      FEFFE0C9FBFEDFCAFBFEDECBFCFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006305900F1356500FE356500FE356500FE356500FE356500FE3566
      00FE366A05FE366E0BFE367110FE367515FE377819FE377B1EFE377E22FE377F
      25FE378128FE37822AFE38832CFE5E9A55FEB4CCAFFE689F5FFE37832BFE3781
      29FE378026FE377E23FE377C1FFE37791BFE377617FE367312FE366F0DFE366C
      08FE356802FE356600FE356500FE356500FE356500FE356500FE356500FE0408
      005A000000010000000000000000000000000000000000000000000000000504
      03300E0C0A5026201B8054483DBF867262EF9C8672FFA28D78FFB09C8AFFBBAA
      99FFC4B4A5FFC6B6A8FFC5B5A7FFC3B3A4FFC3B1A0FFCBB9A8FFDBCABAFFEADD
      D2FFD6CCC3FFECDCCCFFBBA897FFD9C8B7FFCAB6A2FFC5B19DFFC1AC98FFBCA7
      94FFB8A38FFFA5907CFF937C69FF372E279F0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000003050100070E03000F1E06011A31080025490200
      245110083362443678B35B49AAF63E2C9DFF27168DFF231289FD26148CFE2B18
      90FE2E1B93FE311D96FE321D97FE34209AFF36219BFF38239CFF39249CFE3B26
      9CFE3B279CFE3B289CFE3A2799FE3A2899FD43319FFF5C4AAFFF6C5CB1F34336
      77B30B02346D05002F650C0131600A02274C06001C370300122402000A130000
      0407000001020000000000000000000000000000000000000000000000002D2D
      2D9D0B0B0B4E00000000000000000000000029140D69FBA4D9FFFAA4D5FFF9A5
      D5FFF8A6D9FFF8AAE3FFF8AFEDFFF7B3F6FFF6B5FBFFF5B6FCFFF4B8FCFFF3B9
      FCFFF2BAFCFFF1BBFCFFF0BCFCFFEFBDFDFFEDBEFDFFECBFFDFFEBC0FDFFEAC1
      FDFFD495EAFF990FB6FF9B0DB5FFA726C0FFD398EBFFE4C9FEFFE3CAFEFFE2CB
      FEFFE1CCFEFFE0CDFEFFDFCEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000019356500FE366600FF376600FF467214FE406D0BFF366600FF366A
      05FF366E0BFE377210FF367616FE37791BFF377D20FF377F25FE388429FF3886
      2DFF388630FE388A32FF398B34FF71A86EFEF2F1F1FF80B27CFF388833FE3889
      31FF38872EFF38832AFE388226FF387E22FF377B1DFF377718FE377312FF366F
      0DFF366B07FE366701FF366600FF356500FE366600FF366600FF356500FE0C16
      00790000000000000000000000000000000026201C8055493EBF9A8470FFA08B
      76FFA6907CFFB29E8BFFC1AF9EFFC7B6A6FFCABAABFFC7B8AAFFC2B1A1FFC1AF
      9EFFC9B6A5FFD8C7B6FFE4D3C3FFE8D8C8FFE8D8C8FFE8D8C8FFE8D8C8FFD4D3
      D2FF9C9C9CFFC6BAAEFFB9A695FFDAC9B9FFCAB5A1FFC5B09DFFC0AC98FFBCA7
      93FFB7A28FFFB29D8AFFAC9783FF9C8672FF7E6959EF231E1980000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000102010004070000060F0000091E0000071A221D
      354C574794D1422F9FFF1F0D88FF1A0882FD1F0C87FE220F8CFF25108FFE2813
      93FE2C1596FF30189AFF331A9CFF371E9FFF3920A0FF3B22A1FF3C23A2FF3C23
      A2FF3C24A1FF3D26A0FE3E28A0FE3E299FFF3E299CFE3B2999FD4534A0FF6554
      B3FF5F5296CD1914314F00000E2B00000F2F0401101F03000A12000005090000
      02030000000100000000000000000000000000000000020202270A0A0A4E4040
      40BB0F0F0F5D00000000000000000000000000000000FCAFFAFFF9ACF3FEF9AC
      ECFFF6A8E1FEF5A7D8FEF4A7D5FEF5AAD7FFF2ABDAFEF1AEE3FEF3B4EEFFF0B6
      F4FEEFB9F9FEF0BCFCFFECBBFAFEEBBCFAFEECBFFDFFE9BEFAFEE8BFFAFEE5B9
      F9FF9C29BDFEA127AFFEDF8FA4FFA627B0FE9C0EB6FFB95DD3FEDCBFF8FEE1CC
      FEFFDECBFBFEDDCCFBFEDCCDFCFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000203002C366600FE366600FF396803FF3E6C09FE4B7519FF3B6C0AFF366D
      0AFF367110FE377515FF37791BFE387D21FF388226FF38832BFE388830FF388B
      34FF388B37FE398F3AFF3F9442FF7EB380FEF2F1F1FF81B683FF388D3BFE398E
      38FF398C35FF388732FE38862DFF388328FF388023FF377B1DFE377718FF3773
      12FF366F0CFE366A06FF366600FF356500FE366600FF366600FF356500FE101F
      008D00000000000000000000000000000000A38E7AFFBAA692FFC5B2A1FFC9B8
      A7FFC6B5A5FFC0AE9EFFBFAC9BFFC6B4A2FFD5C4B2FFE1D0BFFFE5D4C3FFE5D4
      C3FFE5D4C3FFE5D4C3FFE5D4C3FFE5D4C3FFE5D4C3FFE5D4C3FFE5D4C3FFE7E0
      D8FFCDC8C3FFE1D1C1FFB8A492FFDECEBFFFC9B5A1FFC4B09CFFC0AB98FFBBA6
      93FFB7A28EFFB29D89FFAD9885FFA99380FFA18C78FF937D6AFF6A584BDF0D0B
      0950000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010102020101060A00000000292436475643
      9FEB23118BFF0E0078FB11007FFE140084FF150086FE170089FE19008DFF1B00
      91FF1C0093FF1F0295FF220497FF25089AFF2B0E9CFF30149FFF371BA2FF3C21
      A4FF3F24A5FF4026A5FF3F25A3FF3E26A1FE4028A1FE402AA0FF3E2A9CFE3C2A
      97FB5443A9FF6A5BA5E2231E2F41060607070000051007070707000002030000
      000100000000000000000000000000000000000000000A0A0A4E2C2C2C9C5656
      56D91515156C00000000000000000000000000000000FBB0FBFFFAB1FBFFF9B2
      FBFFF8B3FCFFF7B4FBFFF6B4F6FFF5B2EDFFF3B0E4FFF2AFDCFFF2AFD9FFF1B0
      DAFFF0B2DEFFEFB9EEFFEDBEFDFFECBFFDFFEBC0FDFFEAC1FDFFE9C2FDFFB45D
      D4FF9013B4FFE098A5FFFCC7A0FFF7BEA2FFC45DADFF9B0DB5FFA727C0FFCF9D
      ECFFDFCEFEFFDECFFEFFDDD0FEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007090440477315FE366600FF366600FF3F6D0BFE4F7920FF396E0BFF3770
      0EFF367414FE37791AFF377D21FE388227FF38862DFF388732FE398D37FF3E92
      40FF87B889FECDDECDFFEEEFEEFFEFEEEEFEF2F1F1FFEDEEECFFC0D6C1FE69AB
      6DFF39913DFF388C39FE388B34FF38872FFF388429FF377E23FE377B1DFF427E
      24FF4F812EFE366D0AFF366903FF356600FE366600FF366600FF356500FE1528
      00A000000000000000000000000000000000B09B88FFCAB7A4FFD5C4B3FFD2C0
      AEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0
      BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE1D0BEFFE3D3
      C2FFE5D5C4FFE8D8C8FFCEBDADFFE1D5C9FFCFBEACFFC4B09CFFBFAB97FFBBA6
      92FFB6A18EFFB19C89FFAD9884FFA89380FFA48E7AFF9F8975FF97826EFF8C76
      64FF4B4036BF0807064000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000020300000000292536445543A2F41806
      82FF0E0077FB130080FF150084FF1A0289FE1E0390FF200493FF1F0294FF1E01
      95FF200197FF200198FF200099FF200099FF200099FF20009AFF22019AFF2606
      9CFF2E0E9FFF3719A3FF4125A8FF462BAAFF452BA8FF4228A3FE4028A1FF402A
      9FFF3D2A99FC4D3AA3FF7161AFEE26242D370000000002020304000000000000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E00000000000000000000000001000114ECA4F4FFF7B0F9FEF8B3
      FCFFF5B2F9FEF4B3F9FEF3B4F9FEF4B8FCFFF1B7F9FEF0B8F9FEF1B9F6FFEEB5
      ECFEEDB3E1FEEEB4DDFFEABCF6FEE9BEFAFEEAC1FDFFE7C0FAFECE96E9FE8913
      B5FFB95FABFEF9C6A1FEFCC9A4FFF9C7A3FEFCCAA5FFE19AA8FEA628B1FE9C0D
      B6FFB75FD3FED7C4F8FEDACFFCFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F120C53678A3DFE356500FE3C6A07FE4A7519FE366A05FE366E0BFE3673
      12FE377818FE377C1FFE377F26FE38842CFE388832FE388B38FE388F3DFE4991
      50FEECECEBFEEEEEEEFECCD4CEFEABBBAEFEA9B9ACFED3D9D4FEEFEEEEFEEEEE
      EDFE83B888FE39903FFE388D3AFE388935FE38852FFE378128FE377E22FE6193
      4BFE8EAE7CFE36700EFE366B07FE356700FE356500FE356500FE356500FE1A32
      00B300000000000000000000000000000000BBA692FFC3B09EFFE6D5C5FFDECC
      BAFFDECCBAFFDECCBAFFDECCBAFFDECCBAFFDECCBAFFDECCBAFFDECCBAFFDECC
      BAFFDECCBAFFDFCDBBFFE2D1BFFFE6D6C5FFE8D8C8FFDECEBEFFDBCDBEFFDCCF
      C2FFDDD1C6FFDBD2C9FFE7E1DAFFF6F3EFFFE5DCD3FFC6B29FFFBFAA97FFBAA6
      92FFB6A18DFFB19C88FFAC9784FFA8927EFFA38E79FF9F8975FF9A8470FF957E
      6BFF8E7765FF86715FFF322A249F020101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000010100000000201C2A3554419DF015047DFE0F00
      77FC140080FF160084FE1A0188FE110081FF070075FF080076FF170088FF2202
      97FF210199FF21019AFF22019BFF23019CFF23029BFF23029CFF22019CFF2100
      9BFF20009AFF22009BFF1A008FFF1A0184FF260E89FF3B219BFF4329A4FE4027
      A1FE40299FFF3C2897FA4A38A1FF6C5CA7E718161E2400000000010101020000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E00000000000000000000000027114AA4642CB7FFC383E2FEF7B4
      FBFFF4B3F9FEF3B4F9FEF2B6F9FEF3B9FCFFF0B8F9FEEFB9F9FEF0BCFCFFECBB
      FAFEECBBF7FEEDB5DCFFEAB8E8FEE8BFFAFEE9C2FDFFE1B8F7FE8F2DBCFE962D
      B2FFF4BEA4FEF9C8A4FEFCCBA7FFFAC9A6FEFCCCA9FFFACAA7FEF5C1A9FEC45F
      B1FF9A0FB3FEA428BEFEC99EEAFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181C146688A469FE467213FF376701FF4B761BFE49791FFF377110FF3775
      15FF377A1DFE388024FF38832BFE388931FF398D38FF398F3EFE399543FF3891
      46FF7F9B86FE497354FF2D633CFF2F6E41FE2F6F42FF2E633DFF8CA593FEF2F1
      F1FFECEEEBFF4E9F58FE399340FF398F3AFF388B34FF428B38FE629B54FF85AD
      75FF98B589FE558735FF376E0CFF356903FE366600FF366600FF356500FE213E
      00C700000000000000000000000000000000C3AF9BFFC4B2A0FFE3D3C1FFDAC8
      B5FFDAC8B5FFDAC8B5FFDAC8B5FFDAC8B5FFDFCDBBFFE1D0BFFFE4D3C2FFE2D2
      C2FFDDCEBEFFDBCDBFFFD9CDC0FFE1D7CDFFE3DCD4FFECE7E2FFF8F5F2FFFAF8
      F5FFFAF8F6FFFAF8F6FFF8F5F3FFF6F2EEFFF2EDE7FFE7DED6FFCCBCACFFBAA5
      91FFB5A08DFFB19B88FFAC9783FFA7927EFFA38D79FF9E8874FF998470FF957E
      6BFF907966FF8F7865FF897361FF706051EF1F1B178000000010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000101000000000B080F155B4B9AE11B0880FF0F0075FB1400
      7EFF160083FE1B008BFF110081FF3C2B8CFF8A84B2FF8780AFFF332182FF1400
      82FF25029BFF22009BFF23009BFF23009BFF23009CFF23009CFF23019BFF2300
      9BFF26029DFF150089FF433092FF8983B3FF877DB0FF3B2888FF301792FF4429
      A5FE4127A1FE40289FFF3B2797FB4F3CA4FF6E609ED207070A0C000001010000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000100022034156EC85823B0FE9E62
      D2FFEFB1F8FEF2B6F9FEF1B7F9FEF2BAFCFFEFB9F9FEEEBAFAFEEFBDFDFFEBBC
      FAFEEABDFAFEECBAE9FFE9B5DCFEE7BFF7FEE8C3FDFFA960D1FE7E16B1FEDD9E
      ABFFFACAA6FEFACAA7FEFCCDAAFFFACBA9FEFDCEACFFFACCABFEFACDABFEFCCF
      AEFFE19DAFFEA628B3FE9D0EB6FF1F0724700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022281C7A9CB381FE6D8F45FE366600FE396B08FE3A700FFE367312FE3778
      19FE377D20FE378127FE38852FFE388A36FE388F3DFE399343FE399749FE399B
      4FFE327D46FE379151FE3AA35BFE3AA45DFE3AA55DFE3AA15BFE337C4AFEDADF
      DBFEEFEEEEFE84BC8DFE399545FE39903FFE3A8A3AFE9DBF9AFE9AB894FE82A0
      7BFE87A37DFEA3BB95FE86A66FFE396D0AFE356600FE356500FE356500FE274A
      00DA00000000000000000000000000000000C9B5A1FFC8B8A7FFE5D5C4FFDCCA
      B7FFE1D0BFFFE2D2C1FFDCCCBCFFD7C8BAFFDED2C5FFE0D5CBFFDCD3CBFFE8E2
      DCFFF4F0EDFFF9F7F5FFFAF8F6FFFAF8F6FFF9F6F4FFF7F3F0FFF5F0ECFFF2ED
      E7FFF0EAE4FFE9E2DCFFDAD5CFFFC9C5C1FFC4C1BEFFB4B1AFFFCDC8C3FFDCD1
      C7FFC1B09FFFB09B88FFAB9683FFA7927DFFA28D78FF9E8874FF99836FFF947D
      6AFF907966FF8F7865FF8F7865FF8E7764FF85705EFF5D4F43DF100E0C600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010200000000574B7CAC281588FF0D0071FA14007CFF1600
      81FE1A0089FF17008AFF2A1688FFDAD8E0FFF2F2E9FFF1F1EAFFDAD9DDFF3021
      80FF180089FF24029AFF210099FF220199FF23019AFF220199FF210099FF2503
      9BFF17008DFF402E90FFE7E7E5FFEFEFE7FFF5F6EBFFC8C6D4FF1F0C7DFF290D
      97FF3D22A2FF4228A0FE3F269CFE3A2695FA5A47A9FF5B51779B000000000101
      0102000000000000000000000000000000000000000000000000000000002D2D
      2D9D0B0B0B4E00000000000000000000000000000000000000061A0B368E5422
      AEFC7942C1FFDEA4F2FFF2BAFCFFF2C0FCFFF2C5FCFFF2CAFDFFF2CEFDFFF1D1
      FDFFF1D4FDFFF1D3F9FFF0C9DFFFEFCFEBFFD0A5EBFF7919B4FFB364B0FFFDCD
      ABFFFDCEACFFFDCEADFFFDCFADFFFDCFAEFFFDD0AFFFFDD0B0FFFDD1B1FFFDD1
      B2FFFDD2B2FFF8C9B3FFC768B5FF1B081D660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002D35248D9EB483FE94AD75FF517A21FF366A05FE366F0DFF377414FF377A
      1CFF377E23FE38852BFF388832FE398F3AFF399441FF399648FE3A9D4EFF3AA1
      55FF3AA35AFE3BA85FFF3BAA63FF3AAA65FE3BAC65FF3BAB64FF3AA660FED5DF
      D8FFF2F1F1FF90C39BFE3A9A4AFF399544FF38903CFF477246FE30632BFF3168
      25FF31631FFE4E6F40FFA6BD96FF668C43FE366701FF366600FF356500FE2F59
      00EE00000000000000000000000000000000CEBAA6FFDBD0C4FFDDD0C3FFD9CD
      C1FFDED5CBFFE4DDD6FFF0ECE8FFF9F6F3FFFAF8F6FFFBF8F7FFFAF7F5FFF8F4
      F1FFF5F1EDFFF3EEE9FFF1EBE5FFEFE8E1FFD9D4CEFFCCC8C4FFC8C4C0FFBFBD
      BBFFB7B7B6FFBCBCBCFFC3C3C3FFC7C7C7FFCACACAFFA4A4A4FF9F9F9FFFAEAB
      A8FFD2CBC4FFD1C5B9FFB29E8DFFA6917DFFA28C78FF9D8773FF98836FFF947D
      6AFF907966FF8F7865FF8F7865FF8F7865FF8F7865FF8C7663FF7D6A5AFF4B40
      36CF070605400000000000000000000000000000000000000000000000000000
      0000010101020000000036324456412E96FF0D0070FA120079FE16007FFE1900
      86FF1F038CFF100087FF5643A2FFEFF0E9FFDAD9DBFFD8D8DAFFEFF0E9FFB4B0
      C7FF110070FF220294FF220197FF220196FF220097FF210096FF220097FF2203
      95FF1A067EFFC1BDD2FFEBECE6FFDAD9DCFFD9D9DBFFEEEFEAFF483694FF1300
      89FF240497FF33169AFE4027A0FF3E269AFE3D2996FA6C5BB2FF2B2636430000
      0000010101020000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000803
      1251491E99EC622DB5FEC197E2FEF5D6FDFFF3D5FBFEF2D5FBFEF3D8FEFFF1D7
      FBFEF0D7FBFEF1DAFEFFEFD0E9FEE9C4DAFE8635BBFF8732B1FEF4C3ACFEFDCF
      AEFFFACDADFEFACEAEFEFDD0B1FFFACFAFFEFDD2B2FFFAD0B1FEFAD0B2FEFDD3
      B5FFFAD1B4FEFAD2B4FEFBD2B5FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A442FA19BB280FEA6BB8DFF83A161FF3D7010FE37710FFF377616FF377B
      1EFF377F26FE38872EFF388A35FE39913DFF399644FF39994CFE3AA053FF3AA4
      5AFF3AA760FE3BAC66FF3BAF6AFF3BAF6DFE3BB16EFF3BB06CFF71BF8FFEF1F0
      F0FFF2F1F1FF74AF83FE3A9D4FFF399847FF399340FF388938FE388931FF3884
      29FF377D21FE37731CFFA2BA93FF7B9C5FFE366802FF366600FF356500FE3462
      00FA00000006000000000000000000000000D0BCA8FFF8F5F2FFFAF8F5FFFBF8
      F6FFFAF8F6FFF8F5F3FFF6F2EEFFF4EFEAFFF2ECE6FFF0E9E2FFDED8D2FFD0CC
      C7FFCBC7C3FFBCBAB8FFBAB9B8FFB9B9B9FFC1C1C1FFC6C6C6FFC9C9C9FFCCCC
      CCFFCFCFCFFFD3D3D3FFD8D8D8FFDFDFDFFFE7E7E7FFBABABAFF9E9E9EFF9C9C
      9CFF9A9A9AFFAEAAA6FFD4CBC2FFC4B5A9FFA5907DFF9D8773FF98826EFF937C
      69FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8872
      60FF746354FF322B25AF01010120000000000000000000000000000000000000
      00000000000005030609544590D91A097AFE0F0072FC15007CFF180082FE1B00
      89FF1F018EFF17008DFF392095FFE5E5E6FFE4E4E3FFE6E5E5FFE1E1E2FFF5F6
      EFFF665A98FF0B0076FF250397FF210095FF210194FF210094FF250398FF0E00
      7EFF796CA9FFF6F7EEFFE0E0E1FFE5E5E5FFE8E8E6FFE0DFE4FF2D1788FF1C00
      90FF220195FF1E0092FF290C94FE3D239CFF3B2496FB4C389FFE695B94C70101
      0102000000000000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      00000100032234166EC85724B0FE9E72D3FFEFD4FAFEF2DAFBFEF4DDFEFFF1DB
      FBFEF1DCFBFEF2DEFEFFF0DBF8FEAF72B9FE7C26A7FFD7A0AFFEFACEAEFEFDD1
      B1FFFACFB0FEFAD0B1FEFDD2B4FFFAD1B3FEFDD3B5FFFAD2B4FEFAD2B5FEFDD5
      B8FFFAD3B7FEFAD4B8FEFBD4B8FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000475438B498B07CFEA2B788FEA3B98BFE6E944DFE377211FE377718FE377C
      20FE378128FE388630FE388B38FE39913FFE399647FE399B4FFE3AA057FE3AA5
      5EFE3AAA65FE3BAE6CFE3BB271FE3BB475FE46B87CFE95D0AFFEEAEDEBFEEFEE
      EEFED3DAD5FE3C8E55FE3A9D52FE39984AFE399343FE388D3BFE388833FE3883
      2BFE387E23FE679753FEA4BC96FE698B4DFE356904FE356600FE356500FE3565
      00FE00000016000000000000000000000000413B358FE8DDD3FFF2EDE7FFF0EA
      E4FFDED8D3FFD5D0CBFFC9C5C1FFBFBCBAFFBDBBB9FFB6B6B6FFBFBFBFFFC5C5
      C5FFC8C8C8FFCBCBCBFFCECECEFFD2D2D2FFD6D6D6FFDCDCDCFFE4E4E4FFECEC
      ECFFF1F1F1FFF5F5F5FFF5F5F5FFF3F3F3FFEFEFEFFFDFDFDFFFB8B8B8FF9C9C
      9CFF9A9A9AFF989898FF959595FFB7B1ABFFD6CCC4FFB5A596FF98826EFF937C
      69FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F78
      65FF8F7865FF816D5CFF685A4DFF0E0C0A600000000000000000000000000101
      0102000000003C364B603B298FFF0D006DFB140078FE17007FFE1A0086FF1D01
      8BFF1E008FFF220193FF130085FFAAA2CBFFF3F5EDFFE4E3E5FFE9E9E9FFECED
      EBFFDCDCDFFF291974FF190086FF220294FF200092FF230395FF18008AFF3421
      85FFE3E3E4FFEBEBEAFFE9E9E9FFE5E5E6FFFCFDF5FF9086B9FF0E007DFF2403
      95FF210093FF210192FF1D008FFF22058FFE371E97FE3B2594FC6754ADFF3531
      3E4B00000000010102020000000000000000000000000A0A0A4E2C2C2C9D5656
      56D91515156C0000000000000000000000000000000000000000000000000000
      000000000000000000061A0B368E5423AFFD784AC2FFE0C7F3FFF5E1FEFFF4E2
      FEFFF4E2FEFFF3E3FEFFCFB1EAFF7628A8FFB25477FFFBC8A4FFFDD2B4FFFDD3
      B4FFFDD3B5FFFDD4B6FFFDD4B7FFFDD5B8FFFDD5B9FFFDD6BAFFFDD6BAFFFDD7
      BBFFFDD7BCFFFDD8BDFFFDD8BEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000556742C894AD77FEA0B685FFA9BE93FF9FB98AFE5B8D3DFF3B7A1DFF387E
      22FF378229FE388931FF388C39FE399441FF3A9949FF399C51FE3AA459FF3BA9
      61FF3BAC69FE3CB370FF55BF88FFA7D9BFFEE9EEEBFFF2F1F1FFEFEEEEFED2DB
      D6FF497E5EFF3AA05AFE3AA154FF3A9B4CFF399644FF388E3CFE3A8C36FF5B9B
      52FF89B17FFEA6C19BFF8DA67EFF386517FE366A05FF366600FF356500FE3666
      00FF010200290000000000000000000000000000000019181660B5B3B1FFB2B2
      B2FFBCBCBCFFC3C3C3FFC7C7C7FFCACACAFFCDCDCDFFD0D0D0FFD5D5D5FFDADA
      DAFFE1E1E1FFE9E9E9FFF0F0F0FFF4F4F4FFF5F5F5FFF4F4F4FFF1F1F1FFE3E8
      E3FFD7E0D6FFC8D8C7FFB2C4B1FFCCCCCCFFDBDBDBFFDBDBDBFFDBDBDBFFC2C2
      C2FF9A9A9AFF979797FF959595FF939393FF959492FFB9B3ADFFCEC3B9FFA592
      82FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F78
      65FF8F7865FF8F7865FF877260FF605348FF0000000000000000000000000000
      000000000001524385C81C0A78FE10006FFB16007AFF190082FF1C0087FF1E00
      8BFF1F018EFF220291FF18008CFF362191FFE3E1E5FFEAEAE9FFEAEAEBFFEAE9
      EAFFFAFBF5FFA29DB8FF0E006BFF23048FFF210292FF240492FF120076FFAAA4
      C0FFF9FAF4FFEAEAEBFFEBEBEBFFF4F4F1FFD5D2DEFF200D7EFF1C008DFF2101
      91FF200090FF200090FF200190FF1D008DFF1F028BFF31188FFB4E399EFE6256
      88B60000000000000101000000000000000000000000020202270A0A0A4E4040
      40BB0F0F0F5D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000008031252481E99EC6130B5FEC3A7E5FFF3E4
      FBFEF3E4FBFEEDDCFAFF773BBBFE541D81DEDF7A3BF8F5A670FEFBD7BCFEFDD6
      BAFFFAD3B7FEFAD4B7FEFDD6BAFFFAD5B9FEFDD7BCFFFAD6BBFEFAD6BCFEFDD9
      BEFFFAD7BDFEFAD8BEFEFBD8BFFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063784BDB8FA972FE9BB37EFFA5BB8DFFACC29AFE9EBB8CFF65974EFF3E83
      29FF378229FE388932FF388D3AFE399442FF3A9A4AFF399D52FE3AA55AFF3BAA
      62FF3BAD6BFE91D0ADFFEDEFEDFFEFEEEEFEF2F1F1FFDAE1DEFF84A594FE3472
      50FF379D5EFF3AA55DFE3AA155FF3A9C4DFF399645FF459649FE91BC8FFFA7C6
      A2FF94B18CFE607E55FF325E1BFF366F0DFE366A05FF366600FF356500FE3666
      00FF0305003C000000000000000000000000000000000B0B0B40B8B8B8FFCFCF
      CFFFD3D3D3FFD8D8D8FFDFDFDFFFE7E7E7FFEEEEEEFFF3F3F3FFF5F5F5FFF5F5
      F5FFF2F2F2FFEBEAEAFFDBD7D4FFC7C4C0FFBBBBBBFFD9D9D9FFDBDBDBFFA8C7
      A7FF9FBA9EFF9BB49AFFBAD8B9FF81A17DFFBBC1BBFFDCDCDCFFDCDCDCFFDCDC
      DCFFCECECEFF9B9B9BFF959595FF939393FF909090FF8E8E8EFF959492FFC4BC
      B4FFC7BBB1FF988472FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F78
      65FF8F7865FF8F7865FF8F7865FF5E5246FF0000000000000000010101010000
      000026242830493893FA0E006CFE140074FE17007BFE1A0083FF1D0088FF1E00
      8BFF1F008EFF1F008EFF240491FF120084FF6C5CA7FFF8F9F1FFE9E8EAFFEEEE
      EDFFEDEDEFFFF8F9F3FF5A4D8BFF100075FF2A0A94FF13007EFF605196FFF8F9
      F3FFEDECEEFFEFEFEFFFEDEDEFFFF7F7F2FF574696FF130082FF240491FF1F00
      8EFF1F008EFF1F018FFF20008EFF1F018DFF1D0089FE1B0085FD351E90FE7161
      ACF617161A1F0000000001010101000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000100032234166EC85625B2FF9B79
      D1FEF0E3FAFE9F77D2FF5C1EACFB080309404F2B1997F18B43FEFADDC9FEFDEA
      DCFFFBE5D5FEFBE0CDFEFDDEC7FFFBD8BFFEFDD9BFFFFAD8BEFEFAD8BFFEFDDB
      C2FFFAD9C0FEFADAC1FEFBDAC2FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000708A52EE8AA56BFE94AD78FE9EB585FEA7BE93FEB6CBA8FE9FBE91FE6498
      53FE428835FE388732FE388D3AFE399242FE39984AFE399D52FE3AA25AFE3AA8
      62FE89C9A2FEEFEEEEFEEFEEEEFED1DAD5FE6E9885FE307153FE33895DFE3AA9
      6AFE3AAA65FE3AA45DFE3A9F55FE399A4DFE399445FE88B98AFEA2C3A0FE5C7E
      57FE316125FE34701DFE367514FE366F0DFE366A05FE356600FE356500FE3565
      00FE0509004F0000000000000000000000000000000002020220C3C3C3FFF1F1
      F1FFF5F5F5FFF5F5F5FFF3F3F3FFE8E6E5FFD7D2CEFFCFC9C3FFD4CFCAFFCCC6
      BFFFC3C0BDFFA7A6A6FFD2D0CEFFEDECECFFA3A3A3FFB5B5B5FFD8D8D8FFD9DD
      D9FFB5C8B5FFB2CDB2FFAFCAAFFFB1C8B1FFB2BDACFFD1CDCAFFD9D9D9FFDEDE
      DEFFDDDDDDFFCECECEFFA1A1A1FF929292FF909090FF8E8E8EFF8C8C8CFF8A8A
      8AFF9B9894FFC9C0B9FFB9ACA0FF947E6BFF8F7865FF8F7865FF8F7865FF8F78
      65FF8F7865FF8F7865FF8F7865FF5C5045FF0000000000000000000002030000
      0000443D5A7A311F83FF0E0069FB160076FE18007DFF1B0183FF1D0088FF1E00
      8AFF22038EFF24068FFF260890FF290A92FF180081FFA7A0C3FFF9FBF4FFE9E9
      EBFFECECECFFF5F6F5FFD9D8DCFF291971FF1A047EFF2C187CFFD7D6DBFFF6F7
      F5FFF0EFF0FFEEEDEFFFFEFFF8FF9A91B9FF150079FF290B92FF260890FF2407
      8FFF22048EFF1F008CFF1E008CFF1F018CFF1F018AFF1C0086FE19007EFA5C49
      A5FF3E3A4C640000000002020203000000000000000000000000000000002D2D
      2D9D0B0B0B4E0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000051A0B378F5223
      AEFC7145BFFF5A23B2FF1E0B3890000000000301011FE1803BF6F8B484FFFEEE
      E2FFFEECE0FFFEEBDEFFFEEADCFFFDE9DAFFFDE5D3FFFDE0CAFFFDDCC5FFFDDD
      C5FFFDDDC6FFFDDEC8FFFDDEC8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0007779553FA84A164FE90AB71FF9AB37EFFA1BA8CFEABC49BFFB3CCA7FFA1C2
      97FF5A964DFE388930FF388C39FE399340FF3A9948FF399C50FE3AA358FF3CA9
      61FFDEE8E1FEF2F1F1FFB9CAC1FF347556FE359766FF3BB374FF3BB271FE3BAF
      6AFF3BAA63FF3AA35BFE3AA053FF3A9B4CFF399544FF9FC5A0FE7DA47BFF357B
      2AFF377E24FE377A1CFF377414FF366F0CFE366904FF366600FF356500FE3666
      00FF080F006300000000000000000000000000000000000000001C1C1C60BCBC
      BCEFE0E0E0FFDEDEDEFFDCDCDCFFE2E0DFFFD1CFCEFFF1F1F1FFF8F8F8FFF6F6
      F6FFF3F3F3FFDBDBDBFFC9C7C4FFD5D5D5FFD3CFCAFFCEC9C4FF9C9B9AFFCCCC
      CCFFDDDDDDFFD5D8D5FFDCCDBEFFCEBEAEFFCFC0B0FFD8C8B8FFA2968CFFCCCB
      CAFFE0E0E0FFE0E0E0FFD7D7D7FFA4A4A4FF909090FF8E8E8EFF8C8C8CFF8989
      89FF878787FF858585FFA29D98FFCEC4BBFFB5A69AFF8F7865FF8F7865FF8F78
      65FF8F7865FF8F7865FF8F7865FF594E43FF0000000000000000000000000000
      000051467AB81F0E76FE0F006AFB160077FF19007EFF1A0083FF200389FF2609
      8DFF280B8FFF280B8FFF270B8EFF2A0D90FF23068DFF311987FFD6D4DAFFEFF0
      EEFFE8E8E9FFE7E6E8FFFBFCF6FFA29BB7FF020054FF9D96B7FFFCFDF7FFEAEA
      ECFFEDECEDFFF5F5F3FFD3D2DAFF2A147CFF24088CFF290C90FF270B8EFF280B
      8FFF280B8FFF26098EFF21048CFF1E0089FF1D0088FF1E0188FF15007DFA3A24
      91FE594F76A30000000001010102000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000803
      1251471E98EC3D1980D80000000C000000000000000054301696F28D48FEFCE5
      D5FFFBEEE4FEFBEDE2FEFEEDE2FFFBEADEFEFEEBDEFFFBE8DBFEFBE6D6FEFDE2
      CFFFFBDDC8FEFBDDC9FEFBDECAFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001674944EFE7E9C5CFE8AA668FF94AE76FF9BB584FEA6C095FFB5CDA9FFBED4
      B6FFA0C398FE4E9546FF388B37FE39923FFF399746FF399A4EFE3AA155FF43A9
      63FFEFEEEEFEF2F1F1FF629B7BFF3AAD6FFE3CB572FF3CB370FF3BAE6CFE3BAC
      66FF3BA85FFF3AA158FE3A9E51FF3A9949FF399442FF89AF89FE97BE93FF3E88
      32FF377E22FE37791BFF4C822CFF366E0BFE366903FF366600FF356500FE3666
      00FF0B1600760000000000000000000000000000000000000000000000000303
      0320737373BFD7D7D7FFDCDCDCFFDCDCDCFFE2E2E2FFDDDBD9FFCEC8C2FFCBC6
      C2FFA09F9DFFC0BBB7FFDAD6D3FF959595FFCACACAFFE4E4E4FFE2E2E2FFADAC
      ABFFC6C5C5FFDFDFDFFFE0DCD8FFC5B9ADFFC9BCAFFFE0D1C2FFE2D2C1FFBFB5
      ACFFDEDEDEFFE2E2E2FFE3E3E3FFDEDEDEFFABABABFF8E8E8EFF8B8B8BFF8989
      89FF878787FF858585FF838383FF858483FFAAA59FFFCAC1B9FFA69586FF8F78
      65FF8F7865FF8F7865FF8F7865FF574C42FF0000000000000000000000000404
      020753448BDF15046EFF12006EFD160078FE1A0080FF250989FF2B0E8EFF2B0E
      8FFF2A0E8FFF2B0E8FFF2B0E8FFF2A0D8EFF2E1191FF1F0187FF60509BFFEAEC
      E5FFE4E4E6FFE6E5E5FFE5E5E5FFE6E6E6FF928BA8FFE6E6E7FFECECECFFEAEA
      EAFFE8E8EAFFF2F4EDFF605197FF1C0081FF2F1291FF2A0D8EFF2B0E8FFF2B0E
      8FFF2B0E8FFF2B0E8FFF2C0E8FFF280A8DFF1F0088FF1D0085FE19007FFB260D
      86FF635592CE0000000200000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000001160000011400000000000000000000000003020120E18340F6F8B8
      8CFFFBF1E9FEFBF0E7FEFEF1E7FFFBEEE4FEFEEFE4FFFCECE0FEFBEBDFFEFEEC
      DFFFFBE6D8FEFBE0CEFEFCE0CDFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000203
      01296D8F45FE789753FE819F60FE8BA66CFE94AF7BFEA9C198FEA9C39BFEABC7
      A0FEB2CEABFEA8C9A3FE5B9E58FE388E3CFE399343FE39984AFE3A9D51FE3B9F
      58FEE0E3E0FEEFEEEEFE7CC197FE3BAD6AFE3BAD6AFE3BAC69FE3AAA65FE3AA6
      60FE3AA35AFE3A9E54FE399A4DFE399546FE39903FFE457B45FE96B793FE9EBE
      97FE8DB181FE99B68AFEA3BA93FE407317FE366802FE4B7519FE356500FE3565
      00FE0F1D008A0000000000000000000000000000000000000000000000000000
      00000000000027272770BABABAEFDCDCDCFFDDDDDDFFE1E1E1FFD8D8D8FFEEEE
      EEFFC4C4C4FFB6B5B3FFD7D7D7FFE2E0DEFFC5C0BCFFA7A5A4FFD0CECCFFD7D4
      D0FFB1B0AFFF9B9B9BFFDBDBDBFFE2E1E0FFE2D9D1FFD9CBBDFFD8C8B7FFDED1
      C3FFCBBCADFFB4AFAAFFE2E2E2FFE6E6E6FFE2E2E2FFB8B8B8FF8B8B8BFF8989
      89FF878787FF858585FF828282FF808080FF7D7D7DFF868481FFB4ADA7FFC7BB
      B1FFA29080FF8F7865FF8F7865FF544A40FF0000000001000101000000001F1E
      20204F3E90F711006AFF120070FE1B037BFF291088FF2E138EFF2E118FFF2F12
      90FF2E128FFF2F1290FF2F1290FF2E128FFF2E118FFF321592FF210683FF9890
      B5FFE9EAE3FFDBDBDCFFDFDFDFFFDFDFDFFFEAEBE7FFE0E0E0FFE3E3E3FFE3E2
      E4FFF2F3EDFFA39CBAFF1F057AFF301491FF2E128FFF2E128FFF2F1290FF2F12
      90FF2F1290FF2E1290FF2E118FFF2F1390FF2D108FFF220488FF19007FFC1F05
      81FF63539BE81111111100000000010101010000000000000000000000002D2D
      2D9D0B0B0B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000054311896F493
      4EFFFCE9DBFFFEF5EEFFFEF4ECFFFEF3EBFFFFF2E9FFFEF1E7FFFEF0E6FFFEEF
      E5FFFEEEE3FFFEEDE1FFFEE6D6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000507
      023D668B3CFF719149FE7B9B56FF85A262FF8CA971FEA4BD91FFA3BF92FFA9C6
      9DFFACC9A3FEB2D0ADFFB0D0ADFE75B175FF3B9442FF399546FE3A9B4CFF399E
      52FF91AC99FEF2F1F1FFE0EAE3FF72BE8DFE44AE6AFF43AC67FF5DB47AFE9CCD
      ABFF80BF90FF399B4FFE3A9949FF399442FF39903CFF388533FE33652CFF6384
      5BFF9CB792FE547146FF3A5925FF3C6B13FE4F7921FF4E781EFF4C761BFE3666
      00FF1426009D0000000000000000000000000000000000000000000000000000
      0000000000000000000003030320747474BFDADADAFFDFDFDFFFDFDFDFFFE0DF
      DEFFD3D1CEFFD9D6D2FF909090FFC2C1C0FFE0E0E0FFE4E4E4FFA3A3A3FFDBDB
      DAFFEAE8E7FFC7C4C2FFB2AEAAFFC5C5C5FFE2E2E2FFEAE0D7FFB9AEA2FFB2A7
      9CFFDACDBFFFCFBDACFFBBB3ACFFE6E6E6FFEAEAEAFFE6E6E6FFC2C2C2FF9898
      98FF878787FF848484FF828282FF808080FF7D7D7DFF7A7A7AFF787878FF8E8A
      86FFBFB7B0FFBEB1A6FFAB9B8DFF52483EFF0000000001010102000000002A27
      2F374B3A90FF0D0066FD1B0674FD2E1686FF30168BFF31158EFF321690FF3216
      91FF321690FF321691FF321691FF321691FF321691FF321691FF2E128EFF3A22
      8BFFCBC9D1FFE0E0DDFFD8D8D9FFDBDADBFFDADADBFFDCDCDCFFDADADAFFE2E2
      E1FFD9D7DBFF3F2B87FF2B0F8BFF321691FF321690FF321690FF321691FF3216
      91FF321691FF321691FF321691FF321690FF321691FF331791FF230785FD1900
      7CFF6352A4FA1F1E1F23000000000101020200000000020202270A0A0A4E4040
      40BB0F0F0F5D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000301011EE688
      46F8F6BA90FEFCF5F0FEFFF6F1FFFCF3EDFEFFF4EEFFFCF1EAFEFCF1E9FEFEF2
      E9FFFCEFE6FEFBEEE5FEFCEDE3FE000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000080C
      04505E8531FF688B3FFE73954CFF7C9C58FF84A265FE90AE76FFA2BD91FFA6C2
      98FFA3C298FEAACAA2FFADCDA9FEB4D3B2FF96C498FF4C9C54FE399847FF3A9B
      4CFF357B46FEAABBAEFFF1F0F0FFEFEEEEFEF0F0EFFFF0F0EFFFEFEEEEFEF2F1
      F1FFC5DAC9FF399749FE399543FF47994CFF4A9648FF388630FE388429FF538F
      42FF98B68BFE356F14FF366F0CFF366A05FE366600FF366600FF507921FE3B6A
      05FF1A3100B10000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027272770BCBCBCEFE0E0E0FFE2E2
      E2FFDFDFDFFFE6E6E6FFE6E4E2FFC0BDB9FFB6B2AFFFD3D1CFFFD1CDCAFFBDBA
      B7FF999896FFD3D2D2FFEFEFEFFF9A9A9AFFD1D1D1FFE9E9E9FFEAE5E0FFE7DB
      CEFFE6DACFFFE7DFD6FFD9DEDDFFCDE0E7FFB6D7E3FFA6D1E1FF92CADEFFCAE9
      EBFFC7CFD1FFAAAAAAFF8D8D8DFF808080FF7C7C7CFF7A7A7AFF787878FF7676
      76FF747474FF958C84FFA1978FFF2F2924BF0000000001000101000000002C2A
      323B44338BFE16046BFC301B82FE321B89FF331A8DFF351B90FF361B91FF351B
      91FF361B91FF361B92FF361B92FF361B91FF341891FF3A1F94FF482F9BFF4128
      96FF7566A9FFE0E0DDFFD7D7D8FFD8D8D8FFD7D7D7FFD7D7D8FFD7D7D8FFE2E2
      DEFF8176AAFF3E268FFF472F9BFF391E93FF341890FF361B92FF361B92FF361B
      92FF361B92FF361B92FF361B92FF361B91FF351A91FF361B91FF361C8FFE2309
      83FF5E4BA2FE222024280000000002020203000000000A0A0A4E2B2B2B9C5656
      56D91515156C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005532
      1B97F39554FEFBEBDFFEFFF9F5FFFCF6F1FEFFF7F2FFFCF4EEFEFCF3EDFEFFF4
      EEFFFCF2EAFEFCF1E9FEFCF0E8FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C12
      0464557E26FE608534FE6A8C40FE73934DFE7C9A59FE83A367FE8FAE79FE93B4
      81FE99BA8BFE9FC095FEA4C69EFEA9CBA6FEADCFACFEABCFADFE75B37BFE3E98
      4BFE399549FE2F6C3DFE577D60FE9FB2A4FEEFEEEEFED1D8D2FEA1B3A5FE7893
      7DFE3A6942FE399343FE398F3EFE398C39FE4D9347FE39842DFE377F25FE3874
      22FE395F26FE367110FE366D09FE356802FE396803FE487317FE537B24FE3766
      00FE203B00C40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030320757575BFE0E0
      E0FFE5E5E5FFE6E6E6FFDCDAD9FFE1E1E1FFEFEFEFFFA0A0A0FFDADADAFFF1F1
      F1FFD2D2D2FFE5E5E5FFECECECFFEBEBEBFFD4E2E8FFC5DDE6FFAED4E2FF9FCE
      E0FF8FC8DEFF6FBDD9FF70BEDAFF65A0B5FF5E90A1FF58808DFF577E8DFF80C6
      DBFFB5EEF4FF81BCD4FFB1CCD7FFBDC1C3FFA0A0A0FF818181FF787878FF7676
      76FF737373FF555555FF13131380000000000000000001000101000000002A28
      323B4B3C8FFE2C1B79FC342085FE361F8BFF38208FFF392092FF3A2093FF3920
      92FF3A2092FF3A2093FF391F92FF381E91FF462E99FF523CA0FF533CA0FF553F
      A2FF45308DFFB4B0C4FFDDDEDAFFD4D4D5FFD6D6D6FFD3D3D4FFDBDBD9FFC5C3
      CDFF473785FF533D9DFF543DA1FF523BA0FF452C98FF381E92FF3A2093FF3A20
      93FF3A2093FF3A2093FF3A2093FF3A2092FF392092FF3A2092FF392090FE371F
      8DFF6654A7FD201F242800000000020202030000000000000000000000002D2D
      2D9D0B0B0B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000302
      011FE38A49F6F9BF96FFFFFAF6FFFFF9F6FFFFF9F6FFFFF8F4FFFFF8F3FFFFF7
      F2FFFFF6F0FFFFF5EFFFFEF5EEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E18
      03774C761AFF567E28FE608735FF6A8E41FF73934CFE7B9D59FF84A667FF8BAD
      74FF90B27EFE98BB8BFF9BBE92FEA2C69CFFA6CAA2FFA8CCA6FEACD1ADFFA1CC
      A4FF67AC6FFE3C9849FF358441FF4C8255FEF2F1F1FF95AF99FF306B39FE3277
      3BFF378B3EFF388F3DFE398D38FF4D9547FF3E8933FF378026FE377D20FF3778
      19FF367413FE366F0DFF366A06FF3A6905FE557C26FF447010FF366600FE3666
      00FF264900D70000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002727
      2770C0C0C0EFE9E9E9FFEAEAEAFFECECECFFEBEBEBFFEBEBEBFFCCDFE6FFBDD9
      E4FFAED4E2FF8FC8DDFF88C6DDFF6FBDD9FF70BFDBFF69A4B9FF6496A8FF5F87
      95FF54686FFF4D575BFF454545FF434343FF414141FF3F3F3FFF3D3D3DFF4756
      5BFF92D4E3FFA4E1EDFF6CB5D3FF6CB6D4FF97C4D7FFB2C9D2FFB5B5B5FF8F8F
      8FFF737373FF555555FF13131380000000000000000001010202000000002A28
      2D3862539DFF35247DFD392486FD3B268DFF3D2591FF3E2593FF3F2594FF3E25
      93FF3F2594FF3E2594FF3D2493FF513A9EFF5C47A4FF5A45A3FF5C46A4FF533E
      9CFF7164A0FFD8D8D9FFD6D6D6FFD5D5D6FFD7D7D7FFD7D7D7FFD5D5D5FFDFDF
      DDFF8278A4FF4F3B92FF5C47A4FF5A45A3FF5C47A5FF4F389DFF3D2393FF3F25
      94FF3E2594FF3F2594FF3F2594FF3F2594FF3E2593FF3F2694FF3D2491FD3E27
      91FF7867AEFB1F1E202500000000010102020000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000054331C96F39758FEFDEEE4FFFCF8F5FEFFFAF7FFFCF8F5FEFCF7F4FEFFF9
      F5FFFCF6F1FEFCF5F0FEFDF4EFFE000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000111F
      018A426F0EFF4C771BFE568028FF608734FF698B3FFE71944BFF799D58FF81A5
      65FF86AA71FE8EB27CFF91B684FE98BD8EFF9CC295FF9EC499FEA3C9A1FFA5CC
      A5FFA4CCA6FE99C79DFF68AE6EFF59A360FEF2F1F1FF9AC49DFF39913FFE3991
      3DFF398F3AFF388A36FE388931FF458E3BFF488C38FF377D21FE37791BFF3775
      15FF36710FFE366C08FF366802FF3F6C0BFE4D761CFF366600FF386701FE3666
      00FF2E5700EB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303206F7F87CFA5CFDFFF8FC8DDFF80C3DCFF70BEDAFF70B9D4FF6EA9
      BEFF6B97A7FF678A97FF62757CFF5B6062FF575757FF545454FF515151FF4F4F
      4FFF4C4C4CFF4A4A4AFF494949FF49594FFF4C7058FF519568FF53A16DFF4978
      59FF4F6971FF97DFF0FFA5E1EDFF6CB6D4FF6DB7D5FF6DB7D5FF7BBCD7FF95C3
      D6FFB4C0C5FF686868FF1313138000000000000000000101010100000000201E
      2224695B9EF93C2B83FE3D2988FE402B8FFF412B92FF422B95FF432B96FF422A
      95FF432B95FF412894FF5641A0FF6551A9FF614EA6FF634FA7FF624FA7FF5C4C
      98FFC4C1CEFFE4E5E1FFDADADBFFDADADAFFD8D8D8FFDADADAFFD9D9DAFFDDDD
      DCFFD4D3D7FF655895FF5E4CA0FF634FA7FF614EA6FF6552A8FF543E9FFF4028
      94FF432B95FF422A95FF432B96FF432B96FF422B95FF432B96FF402A91FC4530
      94FF796AA7EB1414141400000000010101010000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003020120E28D4FF6F7B282FFFADDC8FEFEF8F4FFFCF8F5FEFCF8F5FEFFFA
      F7FFFCF7F4FEFCF6F2FEFDF6F1FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001427
      009E3A6905FE426F0EFE4C761AFE567E26FE5E8332FE678A3CFE6E9148FE7599
      55FE7CA061FE81A76CFE86AD76FE8CB27EFE90B785FE93BB8BFE96BE90FE98C1
      95FE9AC398FE9BC59AFE9BC69BFE93BB93FE677E69FE508351FE398C38FE388A
      35FE388832FE38852FFE38832BFE388027FE397E22FE377A1BFE377616FE3672
      10FE366D0AFE366904FE356600FE366600FE487315FE537B24FE4A7418FE3666
      00FE346300FC0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000010416E80CF72C1DCFF76A9BAFF717678FF6E6E6EFF6B6B
      6BFF686868FF686868FF646464FF616161FF5F5F5FFF5D5D5DFF5A5A5AFF5858
      58FF555555FF525252FF4F4F4FFF4C4C4CFF518161FF559E6DFF518F66FF4E87
      61FF404B44FF577C89FF97E1F1FF9AD9E8FF6DB7D5FF6DB7D5FF6EB8D6FF5EB0
      D3FF60A1C1FF525659FF04040440000000000000000000000000000000000607
      060A6B5F98E4443489FF412D89FD442F90FF452F93FF462F96FF472F97FF472F
      97FF442C95FF533E9EFF6C5AACFF6956AAFF6956AAFF6C59ACFF5F4D9EFF9D96
      B8FFEAEBE7FFE0E0E1FFE2E2E2FFE1E1E1FFE3E3E2FFDEDEDEFFDEDEDEFFDADA
      DBFFE6E7E4FFB5B0C2FF5D4E95FF6A58AAFF6956AAFF6956AAFF6B59ACFF513A
      9CFF442D95FF472F97FF472F97FF472F97FF462F96FF472F96FE432D92FB503B
      99FF776C9CD30000000300000000000000000000000000000000000000002D2D
      2D9D0B0B0B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002D1D106FD0834CEBF49A5CFEF6A46AFFF9C29CFFFCE1CEFFFEF7
      F2FFFFFAF7FFFFFAF7FFFFF9F6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A31
      00B1366600FF3A6904FE416E0DFF4A7518FF537C23FE5B832EFF638938FF6A90
      44FF719650FE779F5BFF7CA365FE82AA6EFF86AF76FF88B17CFE8DB683FF8FB9
      87FF8FB988FE92BD8DFF92BE8EFF8EB98AFE82A87EFF88B184FF82B37EFE66A3
      5EFF4D9242FF3A822BFE388024FF377C1FFF37791AFF367515FE377211FF366E
      0BFF366A05FE366600FF366600FF356500FE366600FF457112FF356500FE3666
      00FF366600FF0000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000010437283CF76C3DCFF7E8F94FF7D7D7DFF7979
      79FF757575FF717171FF6E6E6EFF6A6A6AFF666666FF636363FF5F5F5FFF5C5C
      5CFF585858FF555555FF525252FF4E4E4EFF4B4B4BFF4C5755FF53686EFF5777
      82FF5D8895FF6CADBFFF7BD1EBFFAAECF6FF8FD0E4FF6DB7D5FF6EB8D6FF5EB0
      D3FF449FCAFF3482A8FF00000000000000000000000000000000000000000000
      0000645984BD524291FE443289FB4A3691FE4A3696FF4B3698FF4C3699FF4B35
      98FF4D3799FF6E5CACFF7362AFFF7260AEFF7362AFFF6D5DA9FF8073A9FFE2E2
      E2FFE7E7E7FFE7E8E8FFE7E7E7FFE8E8E7FF9D95B7FFD4D3D9FFE5E6E4FFE1E1
      E2FFDFDFE0FFEAEBE7FF938CAFFF67589FFF7463AFFF7160AEFF7462AFFF6C59
      ABFF4C3598FF4C3598FF4C3598FF4C3699FF4C3698FF4C3699FF473192FA614E
      A2FE675F80AA0000000000000101000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000009140D084A5F3D259FD18856EBF4A168FEF7AC
      76FFF8C5A1FEFAE1CFFEFCF6F1FE000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000131D
      07823C6E03FF3E7203FE447808FF4A800FFF548619FE5C8E23FF64962CFF6B9B
      36FF72A041FE77A94DFF7CAC58FE81B362FF84B669FF85B670FE89BB76FF8BBD
      7AFF89BB7DFE8CBD81FF8CBD82FF89BA80FE8ABB81FF88B97DFF84B47AFE83B3
      76FF7EAF70FF78A768FE669B51FF558D3BFF478128FF3E7618FE396F0EFF386B
      08FF386803FE386701FF376701FF376701FE386701FF386702FF386702FE3867
      02FF294705D20000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010447485CF78C7DFFF7E8F94FF7C7C
      7CFF787878FF757575FF717171FF6D6D6DFF6A6A6AFF666666FF626262FF667B
      82FF658188FF6995A1FF6FAABCFF70B1C4FF7BD1EBFF7BD2EBFF7BD2EBFF7BD2
      EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFFAAECF6FF8FD1E4FF6EB8D6FF5EB0
      D3FF449FCAFF3482A8FF00000000000000000000000000000000000002030000
      00004D47608362549BFE48378BFB4E3B94FF4F3B97FF503B99FF503B9AFF4D37
      98FF604DA3FF7D6DB3FF7969B1FF7969B2FF7A6AB2FF7265A5FFCCC9D6FFF1F2
      EFFFEAEAEBFFEBEBECFFF4F4F1FFC1BCCFFF65569EFF9F96BEFFECECE9FFE5E5
      E6FFE5E5E5FFE9EAE9FFDFDEE0FF7C71A3FF7667ACFF7A6AB3FF7968B1FF7C6C
      B3FF5D49A1FF4E3898FF503B9AFF503A9AFF513B9AFF503B99FE4C3794FA7364
      ADFF4743536D0000000002020203000000000000000000000000000000002D2D
      2D9D0B0B0B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000009140D084A6040
      2A9FD79261EEF7AB73FFF8B382FF2A1F186A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00041B1C1A642F302D7B3536337B3739357B3739357B3738357B3738347B3638
      347B3638347B3638347B3537347B3537347B3536347B3436337B3435337B3435
      337B3334327B3234327B3233317B3133317B3132307B3031307B30312F7B2F30
      2E7B2E2F2E7B2E2F2D7B2D2E2C7B2C2D2B7B2B2C2A7B2A2B297B292A287B2829
      277B2829267B2728267B2727257B2627247B2727257B292A287B2D2D2B7B2122
      1F70000000110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010457687CF7AC4DAFF7E8F
      94FF7B8C91FF788F95FF77A3AFFF77ADBDFF77B8CBFF7ACBE3FF7BD1EBFF7BD2
      EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF81D5ECFF95E0F1FFA4E9
      F5FFA9EBF6FFB8F4FAFFBDF7FBFFBDF7FBFF9AE3F3FFA5E7F4FF7EC5DDFF5EB0
      D3FF449FCAFF3482A8FF00000000000000000000000000000000010102020000
      00002D2B303A7367A6FD503E8FFD513F93FE533F97FE543F9BFF55409CFF523C
      9AFF7361ADFF8574B7FF8171B5FF8474B7FF7768ABFFAAA4C3FFF6F7F3FFEDED
      EEFFEFEFEFFFF1F1F1FFE7E6E9FF887CB0FF8070B3FF7B6CAEFFC6C2D3FFF0F1
      EEFFE9E9EAFFE8E8E8FFF2F3F0FFC5C2D1FF766AA4FF8373B5FF8171B5FF8575
      B7FF6F5EABFF523B9AFF55409CFF543F9CFF543F9BFE533E9AFD55439BFD8577
      B3FA1E1C2029000000000101010100000000000000000A0A0A4E2B2B2B9C5656
      56D91515156C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006140E094A5D412D9D281C14670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000010477788CF7ACF
      E8FF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF8BDAEFFF95E0F1FFA4E9
      F5FFAEEEF8FFB2F0FAFFC1F6FBFF96CCDBFF62A1B9FF7ED1E8FFC2F9FDFFBDF7
      FBFFB8F4FAFFA4E9F5FFA4E9F5FF95E0F1FF8BDAEFFF7BD2EBFFB3EFF7FF70BD
      DBFF449FCAFF3482A8FF00000000000000000000000000000000000000000000
      000002010304726794D35F5098FE544293FC584699FE59469CFF59459DFF5A45
      9EFF8372B5FF8B7CBAFF8A7BBAFF8677B6FF9087B5FFEEEDEFFFF4F4F3FFF2F2
      F2FFF1F1F2FFF9FAF7FFB0AAC6FF8071B0FF8C7DBBFF8778B8FF9085B8FFE7E5
      E8FFF1F1F0FFEEEEEEFFECECEDFFF7F8F5FFAAA4C0FF8072ADFF8B7BBAFF8C7D
      BBFF7E6FB3FF58449DFF59459EFF5A469EFF5A469EFF564199FB6A59A6FE756C
      92C20000000000000000000000000000000000000000020202270A0A0A4E4040
      40BB0F0F0F5D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000104779
      8ACF7AD0E9FF90DDF0FFB4F3FAFFB4F5FDFFB6F7FFFFAFEDF6FFA5D7DFFFA3CC
      D4FFA6C7CEFFA3B6BAFFB7C5C8FF4A4E4EFF95C0CBFF62A1B9FF79CEE7FF7BD2
      EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF81D5ECFFAEEB
      F5FF4BA3CBFF204A60BF00000000000000000000000000000000000000000101
      010200000000474354717568A7FF574893FA5C4B9BFF5E4B9DFE5D4A9FFF604D
      A1FF8D7EBBFF9285BEFF9285BEFF897CB3FFD2CEDEFFFDFDFAFFF4F3F4FFF4F4
      F5FFFAFBF9FFDDDBE4FF8B80B3FF9184BDFF9084BEFF9386BFFF897AB7FFB4AD
      CBFFF9FAF6FFF1F0F1FFF1F1F1FFF5F5F4FFECECEEFF9289B3FF8E81B9FF9386
      BFFF8A7BB9FF5E4BA0FF5D4A9FFF5E4B9FFE5E4B9FFE5C499DFC8476B5FF423E
      485A000000000101020200000000000000000000000000000000000000002D2D
      2D9D0B0B0B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010477A8ACF7DD5EDFF91EAFEFF7B969CFFB8B8B8FFCCCCCCFFDCDCDCFFE8E8
      E8FFF1F1F1FFF7F7F7FFFBFBFBFF70716FFF5D7378FF99C4D0FF6EB6CEFF7BD2
      EBFF7BD2EBFF7BD2EBFF7BD2EBFF7BD2EBFF79CEE7FF78CCE5FF7ACBE2FF95D7
      E6FF579BB5EF0205063000000000000000000000000000000000000000000000
      0000000000000A0A0C117E73A2E6675A9EFD5E4F9AFD6251A0FF624F9FFE6553
      A3FF9386BDFF998EC1FF9387BDFFA69FC4FFF9F9F9FFF7F7F7FFF7F7F7FFF7F6
      F7FFF9F9F8FFA9A1C4FF9286BBFF998DC1FF978CC0FF988CC0FF988CC1FF9286
      BAFFDAD8E4FFFBFBF9FFF4F4F4FFF3F3F3FFFEFFFCFFC3BFD4FF8E83B6FF9B90
      C2FF9083BCFF6350A2FF6250A0FE6351A2FF604D9DFB7060A8FD847AA2D60402
      0507000000000000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000010487B8BCF81D5EDFFD3DFDFFFF9F9F9FFF9F8F8FFF7F6F6FFF6F4
      F4FFF4F3F3FFF3F1F1FFF9F8F8FF727877FF6197A6FF5794A6FF68B2C9FF72C2
      DBFF71C1DAFF3F6C7ABF3D6977BF2A48529F1C2F35801C2F3580070B0D40070B
      0D40000000100000000000000000000000000000000000000000000000000000
      0000010101020000000045404F6A8274AEFF64559AFB6655A0FE6756A2FE6754
      A3FF9588BFFFA297C7FF968BBFFFC5BFD8FFFEFEFDFFF6F6F7FFF6F6F7FFFFFF
      FEFFCFCCDDFF968CBCFFA095C6FF9F92C5FF9E94C5FF9E93C4FF9F94C5FF9B8F
      C3FFA8A0C7FFF6F6F7FFF8F8F8FFF5F5F6FFFCFCFBFFE2E0E9FF988EBBFFA297
      C7FF9184BDFF6553A2FF6856A4FF6755A3FE6755A1FA8E81BAFF3C3843550000
      0000010102020000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000010477A8BCFD7D1CCFFF4F2F2FFF5F3F3FFF6F5F5FFF8F6
      F6FFF9F8F8FFFAF9F9FFFCFBFAFF959794DF070B0D40070B0D40010203200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010200000203766E8EC1796CAAFF67589EFB6C5DA5FF6756
      A2FE8E81BBFFAA9FCDFF9F94C5FFBCB4D4FFFFFFFFFFFEFEFDFFFFFFFFFFECEA
      F0FFA49BC3FFA499C7FFA59BC9FFA59AC9FFA59ACAFFA59BC9FFA49AC9FFA69C
      CBFF9F94C4FFC7C2DAFFFFFFFFFFFCFCFBFFFFFFFFFFD8D4E3FF9E93C1FFAAA0
      CDFF897BB8FF6856A2FE6D5CA6FE6857A2FA8373B3FF766F8AB2000000000101
      0202000000000000000000000000000000000000000000000000000000002D2D
      2D9D0B0B0B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCD6D1FFFDFCFCFFFDFCFCFFFCFBFBFFFBFA
      FAFFF9F8F8FFF9F8F7FFFCFBFAFFA8A19BDF00000000000000100B0B0A402321
      1F70151413600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101020000000017151C258E84AFF0786BA8FE6D5DA2FC6D5C
      A5FF7F70B0FEADA4CDFFAAA0CBFFA79EC9FFC7C1DAFFE3E0ECFFDCD9E7FFB1AA
      CCFFA89EC9FFABA2CCFFAAA1CBFFABA1CCFFABA1CCFFABA1CCFFABA1CCFFAAA1
      CBFFABA1CCFFA79DC8FFCBC6DDFFE4E1EDFFD6D2E4FFADA4CAFFA99FCAFFABA1
      CBFE7B6BADFE6E5DA7FF6D5DA4FB7D6FB0FF9389B1E510101419000000000101
      0101000000000000000000000000000000000000000000000000000000002D2D
      2D9D0A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000094908DCFF6F5F4FFF4F2F1FFF1EEEDFFF0ED
      ECFFF0EDEBFFF5F2F1FFFBF9F8FFE5DFDAFFB9B0A7FFB9B0A7FFB6ADA5FFB3AB
      A2FF8C8580EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101010200000000312E3A4D9388B7FC776AA7FC7162
      A5FD7262A8FFA197C5FEB3ABD2FFAFA6CFFFACA2CCFFABA2CBFFABA1CAFFAFA5
      CEFFB1A8D0FFB0A7CFFFB1A7D0FFB0A7D0FFB0A7D0FFB0A7D0FFB0A7D0FFB0A7
      CFFFB0A7D0FFB1A8D0FFACA2CBFFABA2CBFFABA1CBFFAEA5CEFFB5ACD2FF9D91
      C2FE7161A8FF7262A7FC7D6FAFFE998FBBF628262F3B00000000010102020000
      000000000000000000000000000000000000000000000101011D0A0A0A4E2D2D
      2D9D191919750808084400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000514C489FFCFBFAFFFCFAF9FFF9F6F4FFF8F6
      F4FFF9F5F3FFF8F4F1FFF7F3F0FFF6F1EEFFB7B1AAFF9E9891FF9B958FFF9892
      8DFF96918BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010102000000003F3A475FA095C2FF7F72
      ACFD7164A5FB8375B1FFB5ADD1FEB5ADD1FEB6AED2FFB7AFD4FFB7AFD4FFB7AE
      D3FFB6AED3FFB6AED3FFB6AED3FFB6AED3FFB6AED3FFB6AED3FFB6AED3FFB6AE
      D3FFB6AED3FFB6AED3FFB7AFD4FFB7AFD3FFB6ADD2FFB6AED2FEB3AAD0FE7E70
      B0FF7364A7FB8274B1FEA096BFFA3A37404F0000000001010202000000000000
      000000000000000000000000000000000000000000000000000B262626912D2D
      2D9D2D2D2D9D0B0B0B4E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0B0B40E6DED8FFF7F3F0FFF3EFECFFF0EB
      E8FFEDE8E4FFEBE5E0FFE8E1DCFFE6DED8FFE2DAD4FFADA7A1FF807C78FF7C79
      76FF827C78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020203000000002B283A5C9B91
      BBFB897CB5FF7465A6FA9185B9FEBFB8D7FFBAB3D4FEBAB2D4FFBBB4D5FFBBB3
      D5FFBBB3D5FFBBB3D5FFBBB3D5FFBBB3D5FFBBB3D5FFBBB3D5FFBBB3D5FFBBB3
      D5FFBBB3D5FFBBB3D5FFBBB4D5FFB8B1D3FEBBB3D4FEBDB6D6FF8C7FB7FE7567
      A7FA8D80B8FFA39ABEF433303C50000000000101010200000000000000000000
      00000000000000000000000000000000000000000000000000000A0A0A4E2D2D
      2D9D262626910000000B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000514B459FE4DAD0FFEBE5DFFFECE5
      DFFFEBE4DDFFE9E1D9FFE6DCD2FFE5DACFFFE2D5C8FFE1D3C6FFDECEC0FFD3C4
      B6FF181716700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020203000000002927
      2F3F8980A0DB9489BBFF7E70ACFC9489BAFBBEB7D6FEC1BAD9FEBDB6D6FEBDB7
      D6FEBFB8D8FFBFB8D8FFBFB8D8FFBFB8D8FFBFB8D8FFBFB8D8FFBFB8D8FFBFB8
      D8FFBFB8D8FFBDB6D6FEBDB6D6FEC1BBD9FEBCB5D6FE8F83B7FA8072AEFD978C
      BEFF887FA2D21715243300000000020202030000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A2727
      27920A0A0A4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036322E80BFB0A3EFDBCA
      BBFFDBCABBFFDBCABBFF7B7169BF675F58AF37322F802A2623700D0C0B400303
      0220000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030203030000
      000006050712635C73989F95C0FF8D80B6FF9387BAFFB3ABCDFBC5BEDAFDC5BE
      DBFEC3BCD9FEC2BBD9FEC2BBD9FEC3BCDAFFC3BCDAFFC3BCDAFFC2BBD9FEC2BB
      D9FEC3BCDAFEC5BFDBFEC4BEDAFDB0A8CCFB9185BAFF9084B9FFA197C1FA635D
      708D0604080C0000000001010202000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      08430000000B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      0220000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      020200000000000000002B292F3B7A748BB39B90BEFD958ABBFFA59CC6FFBAB3
      D4FFC4BDD8FCC8C2DAFBC8C2DAFBC8C2DBFCC8C1DBFCC8C1DBFCC8C2DAFBC8C1
      DAFBC3BDD8FCB9B1D3FFA49AC6FF968ABDFF9C92BDF9777187AA252328310000
      0000000000000202020200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020202000000000000000028272B35686473908D85A6D9A298
      C3FFA79EC7FFB1A8CDFFB8B0D2FFBCB5D5FFBEB7D6FFBCB5D5FFB8B0D2FFB0A8
      CDFFA79FC7FFA298C2FD8B83A4D364616F882726282F00000000000000000202
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020202000001010000000000000000070707072624
      2933464250665D586F90726B85AE79728FB977728FB979718FB8716A85AC5C56
      6C8C433F4C612323272F03030303000000000000000001010101020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606060709090909000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A0A0606060600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000005000000000000000000000000000000000000
      00090705023B18110A692B1F12892E20128D291C0F86100B055C010100200000
      0000000000000000000000000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010000000B010101220404
      04430A0A0A5D0E0E0E721111117E1010107C1111117D0D0D0D73080808650303
      034E0000002C000000180000000B000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000000000000000000080D0A074737291B91775B3FCAB089
      5FEDD1A370FDE0AD77FFE5AF77FFE6AD74FFE4A96DFFD99E62FFBD854EF67650
      2CCF22160C780000000D00000000000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000008050505401D1D1D87515150C19D9C9BEACECDCCFED7D6
      D5FFDAD9D7FFDAD9D6FFD9D7D6FFD7D6D4FFD5D3D2FFD0CECDFFCFCDCCFFCBC9
      C8FFBFBDBCFE8F8D8CEB494948C51616158F0101014C0000001C0000000A0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011B30271D848F8378DED9C7B4FFEBBA85FFF6C996FFFECE
      9AFFFFD09AFFFDCD95FEFDCB92FEFDC88DFEFDC487FEFDC080FEFFBC78FFF7B1
      6AFFE09E5DFF825931DC06040138000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010303
      033525252599969594E9D2D0CFFFD7D5D4FFD9D7D5FEDAD9D7FEDEDCDBFFDBDA
      D8FDDAD9D8FDCBCAD3FFD2D1D3FDD8D7D6FDDAD7D6FFCAC8C7FDCDCCCAFDD0CE
      CDFFC8C6C4FDC6C3C1FEC3C1BFFFBDBBB9FEBAB8B6FE6A6968DB1212128E0000
      0039000000170000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000100000001E0000
      001E0000001E0000001E0000001E0000001E0000001E0000001E0000001E0000
      001E0000001E0000001E00000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000241B1278A9845CEEE6B580FFCEC3B8FFE5D9CBFDF7CF9BFBF9D0A2FCFBCF
      A1FDFCD09EFEFCCD9BFEFCCB96FEFCC891FEFCC58BFEFCC185FEFCBD7EFEFBB8
      74FDF3B471F9FAC58BFF92673DE6000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000206060648515150C4CAC8
      C7FFB7B5B3FFC0BFBEFFD9D7D5FFDDDADAFFE0DFDCFFE2E1E0FFE4E3E2FFE6E5
      E3FFBFBFD9FF0202C1FF7070C2FFE4E3E1FFE0DFDEFFCFCDCDFFD4D3D1FFD5D4
      D2FFD1CECEFFCCCBC9FFC8C5C3FFC0BEBCFFBEBCBAFFBEBCBAFFC0BEBCFF8D8C
      8BED1010108C0000003B0000001C000000060000000000000000000000000000
      00000000000000000000000000000000000000000014000000A1000000EC0000
      00F4000000F4000000F4000000F4000000F4000000F4000000F4000000F40000
      00F4000000F4000000F4000000F4000000F4000000F4000000FA000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000F7000000F4000000F4000000F4000000F40000
      00F4000000F4000000F4000000F4000000F4000000F4000000F4000000F40000
      00F4000000F4000000EB000000A1000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000064D3A
      27ADDDB080FFFED2A0FFF5CA9AFCCAC3BCFEEAE4DEFFFCD5A7FEFCD6A9FEFED7
      AAFFFED6A8FFFED4A4FFFED2A0FFFECE9BFFFECB94FFFFC78DFFFEC285FFFBBB
      7BFEF9B773FDFBCE97FDB68857ED000000040000000000000002000000080000
      000B0000000B0000000B0000000B0000000B0000000B0000000B000000080000
      0002000000000000000000000001000000060000000A0000000B0000000B0000
      000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
      000B0000000B0000000B0000000B0000000A0000000600000001000000000000
      000000000002000000080000000B0000000B0000000B0000000B0000000B0000
      000B0000000B0000000800000002000000000000000000000000000000000000
      00000000000000000000000000000101012B454444B9C3C1BFFFC9C6C5FECFCE
      CCFFC0BFBEFDB4B3B0FDD2D1D0FDE3E1E0FFE2E1E0FDE4E3E2FDEBEAE7FFEAE9
      E4FDC6C5DBFD2424D4FF7373C5FDEAE9E4FDEAE8E5FFCDCCCBFDCFCECDFDDCDA
      D9FFD2D0CFFDCDCACAFDCCCAC8FFC3C0BEFDBFBDBBFFBAB8B6FDC1BEBCFDC0BE
      BCFFBFBDBBFF212121A2000000440000002F0000001300000002000000000000
      000000000000000000000000000000000000000000B9060706FF4B5351FF5F67
      65FF616967FF646A69FF666C6BFF686E6CFF6A6F6EFF6C706FFF6E7171FF7073
      72FF717473FF737574FF747575FF757676FF767777FF6D7271FF5C6E6AFF5C6E
      6AFF5C6E6AFF5C6E6AFF5C6E6AFF5C6E6AFF5C6E6AFF5C6E6AFF5C6E6AFF5C6E
      6AFF5C6E6AFF5C6D69FF6C7170FF6F7271FF6D7170FF6B6F6EFF696E6DFF676C
      6BFF646B69FF626967FF5F6765FF5C6563FF596361FF56615FFF535F5CFF505D
      5AFF4D5B57FF3C4845FF040605FF000000BA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000000241B117BDBAD
      7CFFF5CC9BFAFDD6A6FEF1CA9EFFC5C1BBFEECECECFEFBDCB8FFFFDBB1FFFDDB
      B2FFFEDAAFFFFFD8ABFFFFD5A6FFFFD2A1FFFFCE9AFFFECA93FFFEC58BFFFEC0
      81FFF9B977FDFECD93FFA3784DE20000000000000003000000230000004C0000
      00550000005500000055000000560000005500000055000000550000004A0000
      001F000000010000000000000011000000410000005300000055000000560000
      0055000000550000005600000055000000550000005600000055000000550000
      0056000000550000005500000055000000530000004100000011000000000000
      00010000001F0000004A00000055000000550000005500000056000000550000
      0055000000550000004C00000023000000030000000000000000000000000000
      0000000000000000000111101071A6A5A3F6C1BFBDFEC8C8C4FFCAC7C7FDD4D2
      D1FFB5B4B3FDB6B4B3FDBEBDBCFDE7E6E5FFE7E6E4FDE9E8E6FD9795CEFF2626
      BCFD3535C9FD0F0FC7FF1E1EA9FD4F4FB4FD7E7EC3FFD5D3D1FDCDCDCCFDE1DF
      DEFFD8D6D5FDD0D0CDFDD0CECDFFC6C4C4FDC4C2BFFFBAB8B6FDC1BFBDFDC1BF
      BEFFBDBBB9FE444444C2000000400000003A000000300000001D000000080000
      000000000000000000000000000000000000000000FD56605EFFB8CFC9FFB9CF
      CAFFBDD2CDFFC1D4CFFFC4D7D2FFC8D9D5FFCBDBD7FFCEDDD9FFD0DFDBFFD3E1
      DDFFD5E2DFFFD7E4E0FFD9E5E2FFDBE6E3FFDCE7E4FFC3D7D2FFADC8C1FFADC8
      C1FFADC8C1FFADC8C1FFADC8C1FFADC8C1FFADC8C1FFADC8C1FFADC8C1FFADC8
      C1FFADC8C1FFA9C5BEFFC7D9D4FFD2E0DCFFCFDEDAFFCCDCD8FFC9DAD5FFC5D7
      D3FFC2D5D0FFBED3CDFFBAD0CAFFB5CDC7FFB1CAC4FFADC7C1FFA8C4BCFFA3C0
      B9FF9FBDB5FF9ABAB2FF465551FF000000FD0000000000000000000000000000
      0000000000000000000000000000000000010000000300000003000000010000
      0000000000000000000000000000000000000000000000000002000000020000
      00000000000000000000000000000000000000000000000000048A6B4ADAF1C4
      92FCF9CFA1FCFEDAACFFE9C7A0FEC5C1BEFFF4F6F9FFF8E4CCFFFEDEB6FFFDDF
      B9FFFFDDB5FFFFDBB1FFFFD8ACFFFFD5A6FFFFD19FFFFFCD97FFFFC88FFFFEC2
      85FFF8BC7DFCFECC93FF8C643ED5000000000000000C06060667B8B7B7EAF7F6
      F5FFF7F6F5FFF6F5F5FFF6F5F4FFF6F5F4FFF6F4F4FFF5F4F3FFEEEDECFC7877
      77C3000000010000000000000012838382D0EEECEBFDF3F1F0FFF3F1F0FFF2F1
      F0FFF2F0EFFFF2F0EFFFF1F0EFFFF1EFEEFFF1EFEEFFF1EFEEFFF0EEEDFFF0EE
      EDFFF0EEECFFEFEEECFFEFEDECFFEAE8E6FD80807FCF00000012000000000000
      0001767676C3E6E4E3FCEDEBE9FFECEAE9FFECEAE8FFECEAE8FFECE9E8FFEBE9
      E7FFEBE9E7FFB1AFAEEA060606670000000C0000000000000000000000000000
      00000000000B343333A9BEBCBAFFBFBDBBFFC4C2C0FFCCCAC9FFD2D0CFFFD1D0
      CFFFAFADACFFB8B7B6FFC8C8C5FFD3D2D1FFEDECEBFFEFEEEDFF9C9CCEFF2E2E
      B2FF3737BDFF3838BAFF4F4FB8FF6262BEFF8C8CC9FFDDDDDBFFCBCACAFFE5E4
      E3FFE0DFDEFFD9D9D7FFD4D2D1FFCECCC9FFC8C7C4FFC0BEBCFFC5C2C0FFC0BF
      BEFFBEBCBAFF575656CA00000035000000310000002B000000250000001A0000
      000900000000000000000000000000000000000000FC596360FFB7CFC9FFB7CE
      C8FFBBD1CBFFBED3CDFFC2D5D0FFC5D7D3FFC7D9D5FFCADBD7FFCDDDD9FFCFDE
      DBFFD1E0DCFFD3E1DEFFD5E3DFFFD7E4E0FFD8E5E1FFBED4CEFFC2D6D1FFC2D6
      D1FFC2D6D1FFC2D6D1FFC2D6D1FFC2D6D1FFC2D6D1FFC2D6D1FFC2D6D1FFC2D6
      D1FFC2D6D1FFB8D0CAFFC1D6D1FFCEDEDAFFCBDCD8FFC9DAD6FFC6D8D3FFC2D6
      D1FFBFD4CEFFBCD1CBFFB8CFC8FFB4CCC6FFAFC9C2FFABC6BFFFA7C3BBFFA3C0
      B8FF9EBCB4FF9ABAB2FF475753FF000000FC0000000000000000000000000000
      0000000000000000000200000001000000000000000000000000000000000000
      00010000001000000019000000190000000F0000000000000000000000000000
      000000000001000000000000000000000001000000000100001FC0976AF9FFD3
      A1FFFCD3A5FEFDDCB0FEE7C8A3FFC3C1BEFFFAFBFDFFF5EDE2FFFEE2BCFFFEE2
      BEFFFEE0BAFFFEDEB6FFFFDBB0FFFFD7AAFFFFD3A3FFFFCF9BFFFECB93FFFEC4
      88FFF7BE83FBF9C78EFF66482ABC0000000000000010303030A1F2F0EFFEF3F2
      F1FFF1EFEEFEF0EFEEFEF2F0EFFFEFEEECFEEFEDECFEB1B1B1DB3E3E3E841010
      10440000000000000000000000010C0C0C4630303089A9A9A9E2ECEAE8FFEAE7
      E6FEE9E7E5FEEBE8E7FFE8E6E4FEE8E5E3FEE9E7E5FFE7E4E2FEE6E4E2FEE8E5
      E3FFE5E3E1FEE5E2E0FEA5A3A2DF323232860D0D0D4600000001000000000000
      00000F0F0F443B3B3B84A9A7A6DCE0DDDAFEE0DCDAFEE1DEDBFFDFDBD9FEDEDB
      D8FEE0DCDAFFDEDAD7FE2F2F2FA1000000100000000000000000000000000000
      000A494847BDBEBCBAFFBEBCBAFFBCBBB9FDC5C4C1FDCFCCCCFFD1D0CEFDBBBA
      B9FFC4C3BFFD696999FDA8A8BCFDC8C7C5FFE0DFDEFDECECEBFDF3F2F0FFF1F1
      EEFDCACADDFD5353BBFFA5A4D0FDF0EFECFDF0F0EEFFE0DFDFFDBEBDBDFDE5E4
      E3FFE0DFDEFDDAD9D6FDD7D4D4FFCDCBCAFDCBC9C8FFBFBDBCFDC3BFBDFDC0BE
      BEFFBCBAB8FE565555C80000002C00000028000000220000001C000000160000
      000F00000005000000000000000000000000000000FC596360FFB8CFC9FFB7CE
      C8FFBBD1CBFFBED3CEFFC2D5D0FFC5D7D2FFC8D9D5FFCADBD7FFCDDDD9FFCFDE
      DAFFD2E0DCFFD4E1DEFFD5E2DFFFD7E3E0FFD8E5E1FFBDD4CEFFD3E1DDFFD3E1
      DDFFD3E1DDFFD3E1DDFFD3E1DDFFD3E1DDFFD3E1DDFFD3E1DDFFD3E1DDFFD3E1
      DDFFD3E1DDFFC5D9D4FFC0D5D0FFCEDEDAFFCCDCD8FFC9DAD5FFC6D8D3FFC3D6
      D1FFBFD3CEFFBCD1CBFFB8CFC9FFB4CCC6FFB0C9C3FFABC6BFFFA7C3BCFFA3C0
      B8FF9EBCB5FF9ABAB2FF475753FF000000FC0000000000000000000000000000
      000300000000000000000000000000000019020C075408271A8F104C32BD176E
      49DB1C8255EF1F8D5BF61F8B58F61C7848EC155B34D30B2D18A00209044D0000
      0000000000000000000000000000000000010000000001010020C19A6EF9FFD4
      A4FFFBD5A9FEFDDEB4FEE3C7A4FFBEBCBAFFFEFEFEFFF5F5F4FFFDE8CBFFFEE4
      C1FFFDE3C0FFFFE0BBFFFEDDB4FFFED9AEFFFFD5A6FFFFD09EFFFFCC95FFFCC3
      88FEF4C38AFAEEBB82FE3625158F0000000000000010343434A5F2F1F0FEF4F3
      F2FFF2F0EFFEF1F0EFFEF3F1F0FFF0EFEEFEF3F2F1FE0404042B000000000000
      0000000000000000000000000000000000000000000906060662F1F0EFFFEAE8
      E7FEEAE8E6FEECE9E8FFE9E7E5FEE9E6E4FEEAE8E6FFE8E5E3FEE7E5E3FEE9E6
      E4FFE6E4E2FEECE9E8FE0404044A000000030000000000000000000000000000
      0000000000000000000003030334E8E5E4FEE1DDDBFEE2DFDCFFE0DCDAFEDFDC
      D9FEE1DDDBFFDEDBD8FE333332A5000000100000000000000000000000001919
      1975BEBCBAFFB9B7B5FDBDBBB9FFC0BEBCFDC7C5C4FDD1D0CEFFD0CFCEFDB8B7
      B6FFCDCCC8FD2C2C90FD4141ABFDDFDEDAFFC5C5C4FDEDEBECFDF4F3F3FFF1F0
      F0FDCDCDE1FD7272C8FFB0B0D7FDF0EFEEFDF1F1F0FFEAE9E8FDBDBCBCFDDCDB
      DBFFE3E2E1FDDDDCDBFDDBD7D7FFCECECBFDCDCBCAFFC1BFBDFDC4C1BFFDC0BE
      BEFFBBB9B7FE484746BF000000220000001E00000018000000120000000B0000
      000500000001000000000000000000000000000000FC586360FFB8CFC9FFB9D0
      CAFFBDD2CDFFC1D5D0FFC4D7D2FFC8D9D5FFCBDBD7FFCEDDD9FFD0DFDBFFD3E1
      DDFFD5E2DFFFD7E4E1FFD9E5E2FFDBE6E3FFDCE7E4FFC0D6D0FFE0EAE7FFE0EA
      E7FFE0EAE7FFE0EAE7FFE0EAE7FFE0EAE7FFE0EAE7FFE0EAE7FFE0EAE7FFE0EA
      E7FFE0EAE7FFD0E0DCFFC2D7D2FFD2E0DCFFCFDEDAFFCCDCD8FFC9DAD5FFC5D8
      D3FFC2D5D0FFBED3CDFFBAD0CAFFB6CDC7FFB1CAC4FFADC7C0FFA8C4BCFFA4C0
      B9FF9FBDB5FF9ABAB2FF475753FF000000FC0000000000000000000000010000
      000000000005050E0A542B5342B21F8F66F223B181FF27BF8CFF28C490FF29C7
      91FF2AC88FFF2AC68CFF2BC386FF2ABD7DFF29B572FF28A864FF1F8A4BFF0A35
      19BF000100220000000000000001000000000000000000000005947654DEF8CE
      9FFEFAD5ABFDFDE0B6FEE3C7A6FFBAB8B6FFFFFFFFFFF8FAFCFFFBF1E4FFFFE5
      C4FFFEE4C4FFFEE1BDFFFFDEB7FFFFDAB0FFFED6A8FFFED1A0FFFCCB95FEFDC6
      8CFFF9CC94FCDFAB72FF0D07034E0000000000000010343434A5F5F4F3FFF5F4
      F3FFF4F3F2FFF4F3F2FFF4F2F1FFF3F2F1FFF6F5F4FF030303470000001B0000
      001A0000001A0000001A0000001A0000001B0000002909090976F2F1F0FFEDEB
      EAFFEDEBE9FFEDEAE9FFECEAE8FFECE9E8FFEBE9E7FFEBE8E6FFEAE8E6FFEAE7
      E5FFE9E7E5FFEEECEBFF07070769000000240000001B0000001A0000001A0000
      001A0000001A0000001C0404044FEBE8E7FFE4E0DEFFE3E0DDFFE3DFDDFFE2DF
      DCFFE2DEDCFFE1DEDBFF333333A500000010000000000000000000000000100F
      0F7ABFBDBBFFBEBCBAFFBAB8B6FFC5C3C1FFCDCBC9FFD3D2D1FFC4C3C2FFCECC
      CBFFCBCAC9FF05058FFF0000A6FFB3B2C8FFE3E2E0FFCFCFCEFFF7F6F6FFF7F7
      F7FFF7F7F7FFEDEDF1FFF2F2F4FFF5F4F4FFF3F1F2FFF1F0F0FFCBCACAFFCECE
      CDFFEBEAE8FFE2E1E1FFDDDCD9FFD4D4D3FFCFCCCCFFC8C7C4FFC9C8C5FFC0BE
      BCFFBFBDBBFF363636AF00000018000000130000000D00000007000000020000
      000000000001000000000000000000000000000000FC596461FFB7CFC9FFB9CF
      CAFFBDD2CDFFC1D4CFFFC4D7D2FFC8D9D5FFCBDBD7FFCEDDD9FFD0DFDBFFD3E1
      DDFFD5E2DFFFD7E4E0FFD9E5E2FFDBE6E3FFDCE7E4FFBFD6D0FFEAF0EFFFEAF0
      EFFFEAF0EFFFEAF0EFFFEAF0EFFFEAF0EFFFEAF0EFFFEAF0EFFFEAF0EFFFEAF0
      EFFFEAF0EFFFD7E5E2FFC1D6D1FFD2E0DCFFCFDEDAFFCCDCD8FFC9DAD5FFC5D8
      D3FFC2D5D0FFBED3CDFFBAD0CAFFB6CDC7FFB1CAC4FFADC7C1FFA8C4BCFFA3C0
      B9FF9FBDB5FF9ABAB2FF485754FF000000FC000000000000000000000000020C
      0852105F41D13CA883FF91CFB7FF31D3A2FF27CFA0FC29CE9DFB29CF9DFC29CD
      9CFD2ACA97FD2AC991FE2AC68CFE2ABF85FD2ABC7DFD2AB773FB2AB16AF91F8E
      4BFF062710AD000000000000000200000000000000020000000031261A8DE6BF
      93FFF7D7ACFBFEE1B8FFE5CAA8FEB4B2AFFFFCFCFCFFF4F2F0FFF7F5F2FFFCE8
      CDFFFEE5C4FFFEE2BEFFFEDFB8FFFEDBB1FFFFD7A9FFFFD2A1FFFBCB95FEFAC6
      8FFDFCCB92FEAB7F51EC0000000D0000000000000010343434A5F4F3F3FEF6F5
      F4FFF3F2F1FEF3F2F1FEF4F3F2FFF2F1F0FEF1F0EFFEB2B2B1E7424241B23939
      39AD393939AD393939AD393939AD393939AD434343B5B4B4B3EAEFEDECFFECEA
      E9FEECEAE8FEEDEBEAFFEBE9E7FEEAE8E7FEECEAE8FFE9E7E5FEE9E7E5FEEBE8
      E6FFE8E5E4FEE8E5E3FEB3B2B1EA434342B5383838AD383838AD383838AD3838
      38AD383838AD414040B2ADABABE7E3E0DEFEE2DFDDFEE4E1DEFFE1DEDCFEE1DE
      DBFEE3DFDDFFE0DDDAFE333333A5000000100000000000000000000000000D0D
      0D65BEBCBAFFBAB8B6FDB3B1B0FFC3C0BEFDCAC8C7FDD5D3D2FFBCBABBFDDCDB
      D7FFADACB7FD000093FD00009EFD3B3AA4FFE7E6E2FDDFDFDEFDD6D6D5FFF6F6
      F6FDF6F6F6FDFAFAF9FFF4F4F4FDF1F2F2FDF4F4F2FFEEEDEDFDD9D8D8FDBEBD
      BDFFE9E8E7FDE0E0DFFDDFDDDCFFD3D0D0FDCFCFCCFFC5C4C3FDC6C4C4FDC0BE
      BCFFBCBAB8FE23232295000000100000000B0000000400000000000000000000
      000000000001000000000000000000000000000000FC586360FFBED3CEFFC0D4
      CFFFC2D6D1FFC5D8D3FFC8D9D5FFCADBD6FFCCDDD8FFCEDEDAFFD0DFDBFFD2E0
      DDFFD4E2DEFFD5E3DFFFD7E4E0FFD8E4E1FFD9E5E2FFBBD4CEFFF2F6F5FFF2F6
      F5FFF2F6F5FFF2F6F5FFF2F6F5FFF2F6F5FFF2F6F5FFF2F6F5FFF2F6F5FFF2F6
      F5FFF2F6F5FFDDE9E6FFBFD6D0FFD1E0DCFFD0DFDBFFCDDDD9FFCBDCD7FFC9DA
      D5FFC6D8D3FFC3D6D1FFC0D5CFFFBDD3CDFFBAD0CBFFB7CEC8FFB4CCC5FFB0C9
      C3FFADC7C0FFA4C1B9FF475653FF000000FC00000003000000040A2E1E9C23A8
      78FF21CE9AFF48B898FDAFCEBFFC48D9B1FE22D4A6FE2AD5A8FE2AD6A8FF29D4
      A5FF29D2A0FF29CF9BFF2ACC95FF2AC78EFF2AC083FE2ABB7CFE2BB873FC26A3
      5DFD0B371BB9000000000000000100000000000000000000000001010016A688
      63EDF7D2A7FEF9DDB6FCF1D4B0FFADA8A1FEDDDDDDFFADB6C0FFC2C9D0FFECE0
      D0FFF9DFBCFFFDE2BEFFFEDFB8FFFEDAB0FFFED6A8FFFCD09EFEFDCC96FFF5CA
      93FAE7B37CFF271B0F81000000000000000400000010343434A5F7F6F6FFF7F6
      F5FFF6F5F4FFF6F5F4FFF5F4F3FFF5F4F3FFF4F3F2FFF4F3F2FFF3F2F1FFF3F2
      F1FFF2F1F0FFF2F0EFFFF1F0EFFFF1EFEEFFF1EFEEFFF0EEEDFFF0EEEDFFEFED
      ECFFEFEDEBFFEEECEBFFEEECEAFFEDEBEAFFEDEBE9FFECEAE9FFECEAE8FFEBE9
      E7FFEBE9E7FFEAE8E6FFEAE8E6FFEAE7E5FFE9E6E5FFE9E6E4FFE8E5E3FFE8E5
      E3FFE7E4E2FFE7E4E2FFE6E3E1FFE6E3E1FFE5E2E0FFE5E2E0FFE4E1DFFFE4E1
      DEFFE3E0DEFFE3E0DDFF333333A5000000100000000000000000000000000B0B
      0A47BDBBB9FFBEBCBAFFB0AEACFFC7C5C3FFCFCDCCFFD0CECDFFCAC9C8FFE2E1
      E0FF8D8EA9FF000098FF00009AFF000099FFAFAEC9FFEDECEAFFE4E3E3FFD9D9
      D9FFFDFDFDFFFCFCFCFFFAFAFAFFF8F6F7FFF4F5F3FFF3F2F2FFEFEFEDFFB6B7
      B7FFE5E4E3FFE7E6E4FFE0DDDDFFD9D6D5FFD0CECDFFCBCAC8FFCBC9C8FFBFBD
      BCFFBFBDBBFF0F0F0F7100000006000000010000000000000001000000010000
      000100000000000000000000000000000000000000FC707372FFF6F9F8FFF0F5
      F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5
      F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFC8DDD8FFE6EEEBFFE6EE
      EBFFE6EEEBFFE6EEEBFFE6EEEBFFE6EEEBFFE6EEEBFFE6EEEBFFE6EEEBFFE6EE
      EBFFE6EEEBFFD3E3DFFFD7E6E2FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5
      F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5F3FFF0F5
      F3FFF0F5F3FFF5F8F8FF6C706FFF000000FC000000000826199023B080FF2ACD
      9BFB22D6A6FD4FB499FFCCDAD1FE74E0C4FE1EDBAFFF2BDBB2FF2ADAB0FF2AD8
      ADFF2AD6A8FF29D3A2FF29CF9BFF2ACB94FF2BC68CFF29C083FF2AB776FB28AA
      65FF0C351CAD0000000000000002000000000000000000000001000000000D0B
      084CC8A57EFFFCDBB3FFF7D9B4FCA8A096FF6E8AAEFE3A689DFE466FA1FF7693
      B3FFD6C5AEFFFCDDB5FFFDDDB6FFFBD7ACFEFDD5A7FFFCCF9DFEF5CA95FAF7C6
      8EFF7A5A39D40000000A000000010000000000000010343434A5C0BFBFFEA3A3
      A3FFA1A0A0FEA1A0A0FEA3A2A2FFA0A0A0FEA0A0A0FEA2A2A2FFA0A09FFEA2A2
      A1FFA09F9FFEA09F9FFEA09F9FFEA2A1A1FF9F9F9FFE9F9F9EFEA1A1A0FF9F9E
      9EFE9F9E9EFEA1A0A0FF9F9E9EFE9E9E9EFEA0A0A0FF9E9E9DFE9E9E9DFEA0A0
      9FFF9E9D9DFE9E9D9DFEA09F9FFF9E9D9CFEA09F9EFF9D9D9CFE9D9D9CFE9F9E
      9EFF9D9C9CFE9D9C9CFE9F9E9EFF9D9C9BFE9C9C9BFE9E9E9DFF9C9B9BFE9C9B
      9BFE9E9D9DFFB5B3B2FE333333A5000000100000000000000000000000000303
      0327BBB9B7FFBAB8B6FDADABAAFFC4C1BFFDCBCAC8FDC2C1C0FFDDDBDAFDEAE8
      E6FF6D6A99FD000096FD000098FD000098FF2C2C9CFDE9E9E4FDEEEDECFFE3E3
      E2FDD5D5D5FDFCFCFCFFF6F6F6FDF4F4F2FDF6F5F5FFEFEDEEFDECECEBFDCDCC
      CCFFCAC9C9FDE6E4E3FDDFDFDCFFD5D3D1FDD0CFCDFFCAC9C7FDC7C5C4FDBFBD
      BBFFBCBAB9FF0707073E00000000000000000000000000000001000000000000
      000000000000000000000000000000000000000000EF696969FFDEE8E5FFC8DB
      D6FF7AB3A6FF80B6A9FFB6D1CBFFC9DBD6FF65A899FF66A99AFF68A99BFF6AAA
      9BFF6BAA9CFF6DAB9DFF6EAC9EFF70AC9FFF71AD9FFF6CA99CFFD6E3E0FFDAE5
      E2FFDAE5E2FFDAE5E2FFDAE5E2FFDAE5E2FFDAE5E2FFDAE5E2FFDAE5E2FFDAE5
      E2FFDAE5E2FFBED5D0FF7EB1A5FF8AB6ACFF8BB7ACFF8DB7ADFF8FB8AEFF90B9
      AFFF92B9B0FF93BAB1FF95BBB1FF96BBB2FFCCDCD8FFC3D6D1FFA7C5BDFFAAC7
      BFFFCCDCD8FFDEE8E5FF696969FF000000EF000201271C8960EE29C997FC2ACF
      A2FC21DBACFF52AC96FEDBE1DBFFB4ECDCFF25DFB9FF29E0B9FF29DEB7FF29DC
      B3FF29D9AEFF2AD6A8FF29D2A1FF29CE99FF2BC990FF2AC387FF29BB7BFB28AB
      68FF0B2D199D0000000000000002000000000000000000000000000000020000
      000015110D5EBC9F7BFAFBDBB0FFA49D94FE36659DFF436D9CFF3F6896FF3565
      9DFF5A7CA4FFD6BD9FFEFDDAB0FEFDD9ADFEF9CFA2FCF9CE9BFCF4C48DFF8362
      41D80201012000000000000000010000000000000010343434A5F7F6F6FEF8F8
      F7FFF6F5F5FEF5F5F4FEF7F6F6FFF5F4F3FEF4F3F2FEF6F5F4FFF3F2F1FEF5F4
      F3FFF2F1F0FEF2F0F0FEF1F0EFFEF3F1F0FFF0EFEEFEF0EEEDFEF1F0EFFFEFED
      ECFEEEEDECFEF0EEEDFFEEECEAFEEDEBEAFEEFEDEBFFECEAE9FEECEAE8FEEDEB
      EAFFEBE8E7FEEAE8E6FEECE9E8FFE9E7E5FEEBE8E7FFE8E6E4FEE8E5E4FEE9E7
      E5FFE7E4E2FEE6E4E2FEE8E5E3FFE6E3E1FEE5E2E0FEE7E4E2FFE4E1DFFEE4E1
      DFFEE5E2E0FFE3E0DDFE333333A5000000100000000000000000000000000000
      000BAEADAAF9BBB9B7FEACAAA9FFC4C3C0FDCBC9C8FDC3C2C1FFE4E3E2FDEDEC
      EAFF4C4C90FD000098FE000096FD000096FF000094FD9A9ABEFDF0F0EEFFEAE9
      E9FDE7E7E6FDD2D2D2FFF1F1F0FDF4F3F3FDF4F5F4FFEFEEECFDECEBEBFDE8E8
      E7FFB6B6B6FDE8E7E7FDDEDDDCFFD5D2D1FDD0CECDFFCCCBC9FDC7C5C4FDBEBC
      BAFFAAA9A6F60000000C00000000000000000000000000000001000000000000
      000000000000000000000000000000000000000000C5404040FFE9F0EEFFAECE
      C6FF1A826BFF439785FF7CB5A8FF7BB4A7FF157E67FF188068FF1B816AFF1D82
      6BFF20836CFF23846EFF26866FFF288771FF2B8872FF358C78FFD9E6E3FFE3EB
      E9FFE3EBE9FFE3EBE9FFE3EBE9FFE3EBE9FFE3EBE9FFE3EBE9FFE3EBE9FFE3EB
      E9FFE3EBE9FFB7D3CCFF519787FF559889FF58998AFF5B9B8CFF5D9C8DFF609D
      8FFF639E90FF659F91FF69A093FF6BA194FFA6C5BDFFA9C6BFFF88B1A7FF82AD
      A2FFC4D7D2FFE9F0EEFF404040FF000000C5051A108322A77AFA2AD6A4FF2AD3
      A7FE22DDB1FE50AA96FFDCE2DDFFEBF6F0FF51E6C9FF1EE2BDFF2AE2BEFF29DF
      B9FF29DCB3FF29D8ADFF28D5A5FF2AD09DFF2ACB94FF29C389FE29BB7EFA26A5
      68FE061C107F0000000000000003000000000000000100000002000000030000
      0005000000000907053C775F46C6B6A085FA41658FFD3A6186FE3A5F82FF3E63
      88FF35669AFE6C829CFFD4B28BFEEBC7A0FDF8CC9CFFE0B381FF463725A00000
      00110000000000000001000000000000000000000010343434A5F8F7F7FEF9F9
      F8FFF7F6F6FEF6F6F5FEF8F7F7FFF5F5F4FEF5F4F3FEF7F6F5FFF4F3F2FEF6F4
      F4FFF3F2F1FEF3F1F1FEF2F1F0FEF4F2F1FFF1F0EFFEF1EFEEFEF2F1F0FFF0EE
      EDFEEFEEEDFEF1EFEEFFEEEDEBFEEEECEBFEF0EEECFFEDEBEAFEEDEBE9FEEEEC
      EBFFECE9E8FEEBE9E7FEEDEAE9FFEAE8E6FEECE9E8FFE9E7E5FEE9E6E5FEEAE8
      E6FFE8E5E4FEE7E5E3FEE9E6E4FFE6E4E2FEE6E3E1FEE8E5E3FFE5E2E0FEE5E2
      E0FEE6E3E1FFE4E0DEFE333333A5000000100000000000000000000000000000
      00007B7A79D5BBB9B7FEAFADABFFC4C1BFFDCAC8C7FDC8C8C8FFE8E7E6FDF1EF
      EDFF313186FD00019AFD5C71C9FD728EDCFF4257BEFD1D2399FDEAEAE7FFECEB
      EBFDE9EAE9FDEEEDECFFCDCDCCFDE6E6E4FDF4F4F3FFEEECEDFDEBEAE9FDF2F1
      F1FFCECDCEFDD0CFCFFDE2E1E1FFD2D0CFFDCFCECCFFCECDCCFDC5C4C3FDBEBC
      BAFF595858B80000000000000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000009D191919FFF0F4F3FFC9DD
      D8FF95C2B8FF72B0A2FF3F9582FF137D66FF167E67FF188068FF1B816AFF1E82
      6BFF21836DFF23856EFF268670FF298771FF2C8873FF308A75FFDAE7E4FFECF2
      F1FFECF2F1FFECF2F1FFECF2F1FFECF2F1FFECF2F1FFECF2F1FFECF2F1FFECF2
      F1FFECF2F1FFB2D0C9FF529787FF569989FF589A8BFF5B9B8CFF5E9C8EFF619D
      8FFF649E91FF669F92FF69A093FF6CA295FF6FA396FF8AB3A9FFA7C5BDFFB9D0
      CBFFD3E1DDFFF0F4F3FF191919FF0000009D05160E7C20A478F82AD7A7FF29D5
      AAFE23E1B6FE49A592FFDEDFDCFFFCFCF9FFADF0E3FF1CE5C3FF2AE4C3FF28E1
      BDFF29DEB7FF29DBB0FF29D6A9FF29D2A0FF29CD97FF2AC78DFF2ABF82FB239E
      63FF0108044E0000000200000006000000000000000000000000000000000000
      0000000000000000000004050743455763F1355878FC315678FE345776FF365A
      78FF3A6084FF3D6C9FFE8D857BFFB08659FF5C4731BA0907043F000000000000
      00000000000100000000000000000000000000000010343434A5FBFAFAFFFAFA
      F9FFFAF9F9FFF9F9F8FFF9F8F8FFF8F8F7FFF8F7F7FFF8F7F6FFF7F6F5FFF7F6
      F5FFF6F5F4FFF6F4F4FFF5F4F3FFF5F3F3FFF4F3F2FFF4F2F1FFF3F2F1FFF3F1
      F0FFF2F1F0FFF2F0EFFFF1F0EFFFF1EFEEFFF0EFEEFFF0EEEDFFF0EEECFFEFED
      ECFFEFEDEBFFEEECEBFFEEECEAFFEDEBEAFFEDEAE9FFECEAE8FFECE9E8FFEBE9
      E7FFEBE8E7FFEAE8E6FFEAE7E6FFE9E7E5FFE9E6E4FFE9E6E4FFE8E5E3FFE8E5
      E3FFE7E4E2FFE7E4E2FF333333A5000000100000000000000000000000000000
      00003A3A3995BEBCBAFFB2B0AEFFC7C3C1FFCBCAC8FFCFCFCEFFEEEDECFFF3F3
      F0FF23237EFF677ED1FFBDD7FFFFB1D1FFFFA9CDFFFF8DB5F5FF9BA9C9FFF3F2
      F0FFF0EFEDFFEDECEBFFEDECECFFD6D6D5FFDADAD9FFF0F0EFFFEEEDECFFEFEE
      EEFFECEBEBFFBEBEBEFFE2E2E2FFD4D3D2FFD1D0CEFFD2D1CFFFC5C3C1FFBDBB
      B9FF111110510000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000074020202FFE4E6E6FFAFD0
      C8FF0C7A62FF0F7B63FF117C65FF147D66FF168067FF198169FF1C826AFF1F83
      6CFF21846DFF24856FFF278670FF2A8772FF2D8873FF308A75FFD4E5E1FFF5F8
      F7FFF5F8F7FFF5F8F7FFF5F8F7FFF5F8F7FFF5F8F7FFF5F8F7FFF5F8F7FFF5F8
      F7FFF5F8F7FFB2D1CAFF549888FF56998AFF599A8BFF5C9B8DFF5F9C8EFF629D
      8FFF649F91FF67A092FF6AA194FF6DA295FF70A397FF72A498FF75A59AFF78A6
      9BFFC9DAD6FFE4E6E6FF020202FF00000074000201221A8460E828CEA2FD2AD5
      ABFD25E4BAFE3FA28FFFDCD8D8FFF7FFFDFFF5F7F5FF53EBD4FF1DE5C4FF2AE3
      C1FF28DFBAFF2ADCB2FF29D7ABFF28D3A2FF2ACC97FE2BC78EFE2ABD82FD1E85
      52F5000000150000000000000000000000000001011D0108094705161B6F0A27
      32900A2E3FA20C2B3EA92A4C6CF62F5779FF335876FE385D7CFF385D7DFF3257
      76FE365875FD38608CFD46586BE50A0B0B520000000000000000000000010000
      00000000000000000000000000000000000000000010343434A5FAF9F9FEFBFB
      FAFFF9F8F8FEF8F8F7FEFAF9F9FFF7F7F6FEF7F6F6FEF8F8F7FFF6F5F4FEF7F6
      F6FFF5F4F3FEF4F3F3FEF4F3F2FEF6F4F4FFF3F2F1FEF3F1F0FEF4F3F2FFF2F0
      EFFEF1F0EFFEF3F1F0FFF0EFEEFEF0EEEDFEF1F0EFFFEFEDECFEEEEDEBFEF0EE
      EDFFEDEBEAFEEDEBEAFEEEECEBFFECEAE9FEEEEBEAFFEBE9E7FEEBE8E7FEECEA
      E8FFEAE7E6FEE9E7E5FEEBE8E7FFE8E6E4FEE8E5E3FEE9E7E5FFE7E4E2FEE6E4
      E2FEE8E5E3FFE5E3E1FE333333A5000000100000000000000000000000000000
      00000A0A0A40BCBAB8FFB6B3B1FFBFBDBCFDC3C0BEFDDBDAD9FFEBEBEAFDF5F4
      F2FF292B80FDA3BEEFFDB5CFFBFDADCFFFFFA4C6FAFD9AC1FBFD93B9F3FFD5D7
      DBFDEDECECFDEFEEECFFE9E7E6FDE7E6E4FDDBDADAFFD1D1D0FDEAE9E8FDEAE8
      E7FFE3E2E1FDD3D2D2FDC3C1C1FFD5D2D1FDD6D4D3FFCCCBC9FDBFBCBAFE8483
      82DE000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000004A000000FFC2C3C3FFD1E3
      DFFF0D7A62FF107B63FF127C65FF147E66FF178068FF1A8169FF1D826BFF2083
      6CFF22846EFF25856FFF288671FF2B8872FF2D8973FF529C8CFFD9E9E5FFFCFD
      FDFFFCFDFDFFFCFDFDFFFCFDFDFFFCFDFDFFFCFDFDFFFCFDFDFFFCFDFDFFFCFD
      FDFFFCFDFDFFC1DBD5FF79AEA2FF57998AFF5A9A8CFF5D9C8DFF609D8EFF629E
      90FF659F91FF68A093FF6BA194FF6EA296FF70A397FF73A498FF76A59AFF79A7
      9BFFDCE7E5FFC2C3C3FF000000FF0000004A0000000007261A8C24BC91FF29D5
      ABFA27E7BEFF32AB93FEC9C4C5FFEEF1ECFFE9E1DEFFC1E8DDFF24E1C1FF27E2
      C1FF29E0BBFF29DCB3FF2AD8ABFF29D1A1FE29CD98FF2AC78FFB25AE74FF0927
      1691000000000104032C0B22257D105061C51F8CACF424A5CEFF26ACDAFF27B1
      E5FF27B1ECFF336A93FF406080FF3F6483FE3D6181FF3A5E7CFE466989FF3D62
      84FF305473FC385C7BFF080E1364000000000000000200000002000000000000
      00000000000000000000000000000000000000000010343434A5FAFAFAFEFCFC
      FCFFFAFAFAFEFAFAFAFEFCFCFBFFFAF9F9FEF9F9F9FEFBFBFAFFF9F8F8FEFBFA
      FAFFF8F8F7FEF8F7F7FEF8F7F7FEF9F9F8FFF7F6F6FEF7F6F6FEF8F8F7FFF6F5
      F4FEF2F1F0FEF4F2F1FFF1F0EFFEF1EFEEFEF2F1F0FFF0EEEDFEEFEEECFEF1EF
      EEFFEEEDEBFEEEECEBFEEFEDECFFEDEBEAFEEEECEBFFECEAE8FEEBE9E8FEEDEB
      E9FFEBE8E7FEEAE8E6FEECE9E8FFE9E7E5FEE9E6E5FEEAE8E6FFE8E5E3FEE7E5
      E3FEE9E6E4FFE6E4E2FE333333A5000000100000000000000000000000000000
      0000000000006B6B6AC9BBB9B7FFBDBCBAFDC4C1BFFDC8C8C7FFCFCFCEFDF6F6
      F4FF373888FD9EBBEDFDB3CFFBFDACCDFFFFA2C5FBFD99BFFBFD93BDFDFF92AE
      D9FDEAE9E8FDF0EFEEFFE8E9E8FDE7E6E4FDD2D3D2FFE9E8E8FDE9E8E8FDEAEA
      E8FFE0DFDEFDDAD8D7FDCAC9C8FFC9C8C7FDD9D7D6FFC5C3C0FDBCBAB8FF1212
      1255000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000020000000FF9B9B9BFFEDF2
      F1FF188169FF117C64FF127D65FF157E67FF188068FF1B816AFF1E826BFF2083
      6DFF23846EFF26866FFF298771FF2C8872FF2E8974FF6EAC9FFFCFE4DFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC3DDD7FF91BBB1FF589A8AFF5B9B8CFF5E9C8DFF609D8FFF639E
      90FF669F92FF69A093FF6CA195FF6EA396FF71A498FF74A599FF77A69AFF7EAA
      9FFFEDF3F1FF9B9B9BFF000000FF00000020000000020000000C13644AD527CC
      A2FF29DFB7FA27BEA0FEA3A7A5FF95A6BDFE6084A8FF97A0B9FF67C4B8FF1CD8
      B2FF2ADEB9FF29D9B0FE29D5A8FE29D0A0FE29CA96FB28C188FF17653DDB0208
      064C0F3F46AC65AEA4FC63CAC9FF20C7F7FF2BD1FBFF2ACDFAFD29C8F6FC29CC
      F9FC319ECEFC4B6889FC507698FE4F7497FF4D7193FE486C8FFF426687FF4E72
      91FE385C7DFE355978FE02030435000000020000000100000000000000000000
      00000000000000000000000000000000000000000010343434A5FDFDFDFFFDFD
      FDFFF6ECE5FF524CB0FF2627BDFF3636C3FF2323B6FF0E0EAFFF1011B1FF1213
      B4FF1516B6FF1718B9FF1A1BBBFF1D1EBEFF393BCDFF5A5CDBFF5857CDFFDFCF
      C4FFF5F4F3FFF5F3F2FFF4F3F2FFF4F2F1FFF3F2F1FFF3F1F0FFF2F1F0FFF2F0
      EFFFF1F0EEFFF1EFEEFFF0EFEDFFF0EEEDFFEFEDECFFEFEDECFFEEECEBFFEEEC
      EAFFEDEBEAFFEDEBE9FFEDEAE9FFECEAE8FFECE9E8FFEBE9E7FFEBE8E6FFEAE8
      E6FFEAE7E5FFE9E7E5FF333333A5000000100000000000000000000000000000
      000000000000030303249B9998EEBFBDBBFFC2C0BEFFBAB9B8FFE1E0E0FFF6F6
      F4FF4D4C92FF839FE1FF7EA7E7FF83ADF2FF95BEFCFF98C1FEFF92BCFDFF87B5
      F9FFA8B9D2FFF1F1EFFFEEEDECFFD0CFCFFFDFDFDEFFE5E4E4FFE8E7E6FFE8E7
      E6FFE1E0DFFFDBDADAFFD4D3D1FFD3D1D0FFCBC9C8FFBFBEBCFF3E3D3D9B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000005000000F1717171FFF3F7
      F6FF37927DFF117C64FF137D66FF167E67FF198069FF1C816AFF1E836CFF2184
      6DFF24856EFF278670FF2A8771FF2C8873FF2F8974FF449583FFC5DED9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D6CFFF68A496FF599A8BFF5C9B8CFF5F9C8EFF619D8FFF649E
      91FF679F92FF6AA094FF6CA295FF6FA396FF72A498FF75A599FF78A69BFF90B5
      ACFFF3F7F6FF717171FF000000F1000000050000000200000000000201201569
      50D826CAA4FF28DBB2FE55858FFF4369A4FF396899FE38669BFF5175A7FF2DAC
      A0FE23D6ABFE2AD9B0FF29D4A8FD29D0A0FD27C18CFF1B7F52F0104C4CCB219B
      C1F81CBFEEFF7CBEBAFF86D6CEFC22D3F9FC2AD7F9FE29D5F8FE29D2F7FE26D2
      FBFE448FB8FF5E7CA1FF5D84AAFF5D83A8FF5A81A6FF577CA1FF4E7397FF4F72
      95FD4B7092FF305370FB0001011E000000000000000000000000000000000000
      00000000000000000000000000000000000000000010343434A5FCFCFCFEFEFE
      FEFFF4EAE3FE9286B8FE3233C5FF3C3DC6FE191AB7FE1A1BBBFF1D1EBCFE2021
      C1FF2325C2FE2628C5FE2A2CC7FE2D2FCCFF4244D2FE6669DFFE8578BCFFE1D1
      C5FEF4F3F2FEF5F4F3FFF3F2F1FEF2F1F0FEF4F2F0FFF1F0EFFEF1EFEEFEF2F1
      F0FFF0EEEDFEEFEEECFEF1EFEEFFEEECEAFEF0EEEDFFEEECEBFEEDEBEAFEEFED
      ECFFECEAE9FEECEAE8FEEDEBEAFFEBE9E7FEEAE8E7FEECEAE8FFE9E5E2FEE9E7
      E5FEEBE8E6FFE8E6E4FE333333A5000000100000000000000000000000000000
      000000000000000000000404042980807EDABFBDBCFFD2D1D1FFF0EFEFFDF7F7
      F6FF696899FD4667B6FD5583C6FD6394E1FF75A4EDFD8BB6F6FD8FBBFCFF85B2
      F6FD78A8ECFDC8CDD5FFEAE9E8FDE7E7E6FDE8E7E6FFDBDAD9FDD5D2D1FDD4D3
      D3FFDDDCDBFDD7D6D5FDDFDEDDFFCECDCBFEB7B6B4FC2C2C2C83000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000CD474747FFF8FA
      FAFF69AD9EFF238770FF147D66FF178068FF1A8169FF1C826AFF1F836CFF2284
      6DFF25856FFF288670FF2A8772FF2D8873FF308975FF328B76FF9DC8BFFFFDFE
      FDFFFDFEFDFFFDFEFDFFFDFEFDFFFDFEFDFFFDFEFDFFFDFEFDFFFDFEFDFFFDFE
      FDFFFDFEFDFF81B5A9FF57998AFF599A8BFF5D9B8DFF5F9C8EFF629E90FF659F
      91FF68A093FF6AA194FF6DA295FF70A397FF73A498FF75A59AFF83ADA2FFABC7
      C0FFF8FAFAFF474747FF000000CD000000000000000000000001000000000000
      0011093D2BA91DBC8DFE319990FD456494FE3D658BFF3C6388FF3D6491FE446F
      A3FF29B7A0FF27D5A6FC29D0A2FF23AF7EFF0D422BB812505ACD25B1DDFF2AD4
      FEFF20C9EEFB89BAB6FEB7E4D5FE30DDF6FE27E1FCFF2ADFFAFF28DFFCFF2AD3
      F6FF5B8CB5FF6B8EB5FF6A91B9FF6A91B8FF678EB5FF638AB0FF5D83A8FF557A
      9CFE567B9FFD375775FE06080A6D000000000000000100000000000000000000
      00000000000000000000000000000000000000000010343434A5FCFBFBFEFEFE
      FEFFF5EBE3FED3BFBDFE3333BAFF4244CBFE282AC5FE2A2CC9FF2D2FCAFE3133
      CFFF3537D0FE383BD3FE3C3FD5FE4145DAFF595ADAFE6769DFFEA78E99FFEBDD
      D3FEF5F4F3FEF6F5F5FFEBDBCEFEEAD7C9FEEBD8C9FFE5CDB9FEE0BEA3FEE6CD
      B9FFE5CFBDFEE1C3AAFEE8D5C6FFE0C1A8FEE4C9B3FFE3CDBAFEE1C6B0FEE7D6
      C8FFE2CBB8FEE3CFBEFEEBE3DCFFE0C8B5FEE1CBBAFEE5D2C3FFE2CEBFFEEAE7
      E5FEEBE9E7FFE9E7E5FE333333A5000000100000000000000000000000000000
      00000000000000000000000000000000000B39393894BBB9B8FFE0E0DFFEF8F8
      F6FF9292B2FD3253A5FD4671B4FD5483CDFF5E91DFFD72A2EDFD86B3F9FF83B0
      F5FD79AAF4FD7AA2E0FFDCDCDBFDE7E6E4FDE7E5E4FFDCDBDAFDD6D3D2FDCFCE
      CDFFDDDCDBFDDDDCDBFED2D0CFFF6C6B6BC40606063200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A31F1F1FFFFAFB
      FBFFE6F0EEFF9DC8BFFF88BDB1FF77B4A7FF1E836CFF1D826BFF20836CFF2384
      6EFF26866FFF288771FF2B8872FF2E8974FF308A75FF348B76FF8DBEB3FFFAFB
      FBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFB
      FBFFFAFBFBFF6DAA9CFF57998AFF5A9A8CFF5D9C8DFF609D8FFF639E90FF659F
      91FF68A093FF6BA194FF6EA296FF73A599FFACC9C2FFB5CEC8FFC7DAD5FFEEF3
      F2FFFAFBFBFF1F1F1FFF000000A3000000000000000000000000000000010000
      00000000000004110F68256B71FB34577CFD335878FE365978FF365C7BFF4061
      8FFE3D7F9FFE21B487FF126D4BD7020C095001040535229FC4FC29CDF7FC2AD9
      FDFE21D1EFFF8DB6B3FEE1EFE0FF5CE8F2FF1FE9FDFF2BE7FBFF27E9FEFF31D0
      EEFF6D92BDFF759CC5FF769DC7FF769DC7FF739AC3FF6F96BEFF688FB6FF5F85
      ABFF5A7EA1FE497194FC2C3F51FF050504550000000000000002000000000000
      00000000000000000000000000000000000000000010343434A5FCFCFCFFFDFD
      FDFFF7EDE4FFEDD8C8FFAE9CB4FF5451C0FF4143CFFF4345D5FF4447D9FF5255
      DDFF5659DFFF4F53E1FF4F53E4FF575AE1FF6B69D5FF9C89ACFFD9BDA7FFF4E9
      E0FFF8F7F6FFF7F6F6FFF3ECE6FFEDDDD0FFE9D2BFFFF2EBE5FFECDCCFFFF2ED
      E9FFF0E7E1FFE8D1BFFFEDE2D9FFF2EFEDFFF1EEECFFEDE5DDFFF0ECE9FFEADD
      D3FFEEE9E5FFE9DACEFFEFEDECFFEDE9E5FFEDEAE7FFEBE3DDFFE9DED6FFECEA
      E8FFECEAE9FFECEAE8FF343333A5000000100000000000000000000000000000
      00000000000000000000000000000000000000000000070707356B6B6BC8D2D9
      E3FE669AE7FF6DA2F3FF6C9FEEFF5E8FDDFF5082D2FF5A8EE1FF6FA0F0FF7DAD
      F7FF7AACF7FF71A5F5FF8BA8D3FFEAE7E6FFE5E4E3FFDFDEDDFFD9D6D5FFC9C9
      C8FFDEDDDCFF949392DE13131354000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007B030303FFEFF0
      F0FFA1CBC1FF35917CFF3D9582FFB8D7D0FF88BCB1FF1E826BFF21836DFF2385
      6EFF268670FF298771FF2C8873FF2F8974FF318A75FF348B77FF79B4A7FFF1F5
      F4FFF1F5F4FFF1F5F4FFF1F5F4FFF1F5F4FFF1F5F4FFF1F5F4FFF1F5F4FFF1F5
      F4FFF1F5F4FF60A293FF589A8BFF5B9B8CFF5E9C8EFF619D8FFF639E90FF669F
      92FF69A093FF6CA295FF6FA396FFB4CEC8FFD3E2DEFF83ADA3FF96B9B0FFCADB
      D7FFEFF0F0FF030303FF0000007B000000000000000000000000000000010000
      00000202032A233C58DC345274FD325775FE2F5576FE2F5475FF345877FE3759
      7AFD3F6691FF0B1D1E8700000008000000000721278325B6DDFF29CFF4FA29DE
      FEFF20D2EBFE90B3B2FFF3F6ECFFA6EFEEFF1EF0FEFF2AEEFCFF24F0FFFF3ACF
      ECFF7A9AC9FF7CA5D1FF7DA5D3FF80A6D3FF7DA4D0FF789FCAFF7199C1FF688D
      B5FE6087ADFF53799CFC416484FF1B1D20E60000000B00000000000000000000
      00000000000000000000000000000000000000000010343434A5F9F8F8FEFCFB
      FBFFF4EAE1FEECD7C7FEECD7C5FFE0C8B6FEB19DB1FE7C73C1FF939EE2FE879E
      C2FF7E95B8FE909DDDFE6F69C5FE9F8AA7FFCDB09EFEE0C8B3FEECD6C5FFF4E9
      E1FEF6F6F5FEF8F7F7FFF5F5F4FEF5F4F4FEF7F6F5FFF4F3F2FEF4F3F2FEF5F4
      F3FFF3F2F1FEF2F1F0FEF4F2F2FFF1F0EFFEF3F1F0FFF0EFEEFEF0EEEDFEF1F0
      EFFFEFEDECFEEEEDECFEF0EEEDFFEEECEAFEEDEBEAFEEFEDEBFFECEAE9FEECEA
      E8FEEDEBEAFFEBE9E7FE343333A5000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000024565
      9ADB6199F0FE5F98EDFD629AEEFD71A5F3FF7CAAEFFD6394DFFD5488DEFF679A
      EBFD73A6F1FD70A5F5FF639BEDFDA8B7CCFDE4E3E1FFDBDAD9FED2D0CFFF9C9C
      9CEB232222700000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000004F000000FFABAB
      ABFFFDFDFDFFE5F0EEFFE9F2F0FFFDFDFDFFF3F8F7FFE2EFECFFE3EFECFFE3EF
      ECFFE3EFECFFE4EFEDFFE4EFEDFFE4F0EDFFE5F0EDFFE5F0EDFFB9D7D1FFE0EA
      E8FFE0EAE8FFE0EAE8FFE0EAE8FFE0EAE8FFE0EAE8FFE0EAE8FFE0EAE8FFE0EA
      E8FFE0EAE8FFBDDAD3FFE9F1F0FFEAF2F0FFEAF2F0FFEAF2F0FFEBF2F0FFEBF2
      F0FFEBF2F1FFECF2F1FFECF3F1FFF7FAF9FFFDFDFDFFF1F6F5FFF0F5F3FFFDFD
      FDFFABABABFF000000FF0000004F000000000000000000000000000000000000
      00021D364BC93E6282FF3D607FFB3D6181FF3B5F7EFF3A5F7EFF2F5474FD3458
      77FF2B455DDD00000000000000000000000208262C8A25B8DCFD28D1F4FA2AE1
      FCFE20D8EDFF8BACACFFF4FAF4FFEAF4EFFF4DF6FBFF20F3FDFF24F5FEFF40D3
      EEFFA0B6DCFF9EC0E3FF90B5DFFF87AEDCFF84ABD9FF81A8D4FF79A0CBFF7198
      C2FF6386ABFE597FA5FE517699FC2D3033FF0303034E00000000000000010000
      00000000000000000000000000000000000000000010343434A5F8F7F6FEFBFA
      F9FFF4E9E0FEECD6C5FEEED8C7FFECD6C4FEEAD4C1FEE4CBB7FFBDC9D8FE839B
      B4FF778FA8FEA6B7CAFEBA967CFEE3CAB5FFEAD3C1FEECD6C4FEEED8C7FFF4E9
      E0FEF7F7F6FEF9F8F8FFF6F6F5FEF6F5F5FEF8F7F6FFF5F4F3FEF3F1EEFEF6F5
      F4FFF4F2F2FEF3F2F1FEF1EAE5FFF1EDEBFEF4F2F2FFF1EFEDFEF1EFEEFEF2F1
      F0FFF0EEEDFEEFEEEDFEF1EFEEFFEEEDECFEEEECEBFEF0EEECFFEDEBEAFEEDEB
      E9FEEEECEBFFECE9E8FE343433A5000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080C144F669D
      F1FF669DEFFD679EEEFD669EEEFD679EF2FF659CEEFD76A8F0FD80ADF2FF5689
      DAFD6094E8FD6CA2F4FF639BEEFD5E94E3FDC8CBCFFFD0CFCDFD3333338E0000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000009000000D10101
      01FF222222FF272727FF272727FF272727FF272727FF272727FF282E34FF2B6F
      9DFF2877A1FF2778A2FF2778A2FF2972A0FF2B6D9EFF2C699CFF2A6C9AFF3375
      9DFF317397FF316B8CFF336185FF337AA0FF317DA2FF317EA3FF317EA3FF3279
      A1FF34749FFF286999FF2B6C9DFF2A719FFF2877A0FF277BA2FF2978A0FF2C70
      9CFF306798FF292E34FF272727FF272727FF272727FF272727FF272727FF2222
      22FF010101FF000000D100000009000000000000000000000002000000000306
      0944496F94FF4E7394FC4F7496FE4E7294FE486D90FF496D8EFF446888FC3055
      75FE203445C0000000010000000300000000020C0D5523B0CFFF29D8F9FC2BE4
      FDFF1FDDEFFE7EA4A5FFF8FAF7FFFAF6F4FFB0F8F8FF1CF8FEFF23F8FFFF44DA
      F2FFAFC3E5FFB1CFEBFFAFCDEBFFA3C4E8FF8EB4E1FF85ACDAFF7EA5D1FF7AA4
      D1FF58728EFF323A41FF303943FA30302FFE0E0F0F7D00000000000000030000
      00000000000000000000000000000000000000000010343434A5F9F7F6FFF9F8
      F7FFF5EAE0FFEED7C4FFEED7C4FFEED7C4FFEED7C4FFE9D1BEFF98ADC3FF91BC
      E8FF8EBAE6FF849DB6FFC2A084FFE9D2BEFFEED7C4FFEED7C4FFEED7C4FFF6EA
      E1FFFAFAF9FFFAF9F9FFF1E2D5FFECD7C5FFECD5C2FFECD7C5FFE8CDB6FFE5C7
      AEFFEAD3C0FFE8CDB8FFE7CCB7FFE3C2A8FFE5C8B1FFE6CCB7FFEEE1D8FFF3F2
      F1FFF3F1F0FFF2F1F0FFF2F0EFFFF1F0EFFFF1EFEEFFF1EFEEFFF0EEEDFFF0EE
      ECFFEFEDECFFEFEDEBFF343434A5000000100000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D5D93CF6FA4
      F4FF6DA5F5FF70A5F5FF70A5F5FF70A5F5FF6FA2F3FF6CA1F3FF71A5F4FF87B3
      F5FF5F93E3FF6196EBFF649CF2FF5A96F0FF2934479D0505063B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000D0000
      0074000000A1000000A3000000A3000000A3000000A3000000DD000C12FF0676
      A4FF017DA8FF0082A9FF017EA8FF0478A6FF0672A4FF086DA3FF086EA2FF066E
      9FFF046795FF015885FF03507CFF0774A3FF017EA8FF0081A9FF017EA8FF0378
      A6FF0672A4FF096CA2FF086EA3FF0673A4FF0577A5FF047AA6FF0677A4FF0A76
      A1FF12689BFF010A11FF000000DD000000A3000000A3000000A3000000A30000
      00A1000000740000000D00000000000000000000000000000002000000001C2B
      3A9A5B80A5FE5D82A5FB5F85ABFF5D83A9FF597EA4FF51769AFF56799CFD4065
      86FE1D3142CA0000000000000000000000010000000B167382E127D2F0FF2AE1
      F9FC20E7F9FF679FA2FEF0E8E5FFE2E5E0FFF1E7E2FF63F1F1FF13F5FCFF43DF
      F5FFADC5E7FFAFCEECFFB0CDEBFFB2CFECFFABCAEAFF90B5E1FF81A8D5FF7EA8
      D6FF5D7998FF28241FFE242321FB3C3C3CFF1919198900000000000000020000
      00000000000000000000000000000000000000000010343434A5F5F4F3FEF8F7
      F6FFF3E7DDFEEBD4C0FEEDD6C2FFEBD4C0FEEAD3C0FEDDCABBFF93BAE2FEA4CA
      EEFFA6CAEDFE92BAE1FEB39782FEE4CBB6FFEBD4C0FEEBD4C0FEEDD6C2FFF3E8
      DEFEF9F9F8FEFBFAFAFFF5EFEAFEECD9C8FEF3E9E0FFF3EDE8FEF6F5F4FEF4ED
      E7FFEFE4DCFEF4F2F0FEF5F1EEFFF2ECE8FEF3EDE8FFF2EEECFEF2F0EFFEF4F3
      F2FFF2F0EFFEF1F0EFFEF3F1F0FFF0EFEEFEF0EEEDFEF1F0EFFFEFEDECFEEEED
      EBFEF0EEEDFFEDECEAFE343434A5000000100000000000000000000000000000
      00000000000000000000000000000000000000000000090F175572A5F4FF75A8
      F6FF74A7F1FD74A6F1FD74A6F1FD76A8F5FF73A7F2FD72A6F2FD71A5F4FF70A4
      F0FD85B0F2FD5F93E4FF6197EEFE3B619FD80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A1010E14FF0D8D
      B9FF029FBFFF00A1C1FF00A0C1FF0595BEFF0B8BBAFF0F84B8FF0C89B9FF078E
      B6FF028AACFF00769AFF075D8CFF0A92BAFF029FC0FF00A2C2FF00A0C1FF0596
      BEFF0B8CBBFF0F85B8FF0D89B9FF0893BCFF039EBFFF00A7C1FF05A0BEFF108C
      B7FF1B80B0FF030D13FF000000A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D58
      75CF6A8FB7FE6B90B8FC6D91BAFE6B92B9FF668DB4FF5F86ACFF5B7FA3FE5278
      9AFC34526EFC0A090A90000000000000000400000000020A0A491EA4B6FF29DE
      F7FF22EDF9FC50A9ADFFBDB5B8FE7692B0FE7E93B0FF9CB8C4FF2AE2E5FF31DF
      F3FFA8C5E9FFB4CFEAFFB4CFE8FFB4CFE9FFB3CFEBFFAECBE9FF8CB0D9FF80AA
      DAFF5D7794FF302D2BFE292A2BFB484848FF2020208800000000000000030000
      00000000000000000000000000000000000000000010343434A5F4F2F1FEF7F5
      F4FFF3E6DCFEEAD3BFFEEDD5C1FFEAD3BFFEE8CFBBFEB4BECBFFA2C8ECFEB9D7
      F2FFBBD7F1FEAFD0EFFEA4A5ABFED8B9A1FFE9D1BDFEEAD3BFFEEDD5C1FFF3E7
      DDFEFAFAF9FEFCFBFBFFF9F9F8FEF9F8F8FEFAFAF9FFF8F7F7FEF7F7F6FEF9F8
      F8FFF6F6F5FEF6F5F4FEF7F6F6FFF5F4F3FEF6F5F5FFF4F3F2FEF3F2F2FEF5F4
      F3FFF3F1F0FEF2F1F0FEF4F2F1FFF1F0EFFEF1EFEEFEF2F1F0FFF0EEEDFEEFEE
      ECFEF1EFEEFFEEEDEBFE343434A5000000100000000000000000000000000000
      00000000000000000000000000000000000000000000486AA2D879AAF5FE7BAD
      F6FF7AA9F4FD79ABF4FD79ABF4FD7CAEF8FF79AAF2FD78A9F2FD78ABF7FF73A6
      F1FD74A6F2FD83B0F5FF5A8EE2FE1828428D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A3021116FF0CAB
      CDFF03B5D2FF00BAD4FF02B7D3FF08ADD0FF0CA5CEFF109ECCFF0F9FCBFF0B9E
      C6FF0794BAFF0383A7FF06739CFF0CAACDFF03B5D2FF00BAD4FF03B6D3FF07AD
      D0FF0CA5CEFF0F9FCCFF0FA0CCFF0DA5CDFF0AAACFFF08AFD0FF09B3CFFF12AB
      CAFF2096C2FF030F15FF000000A3000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000000000000C5A7C
      A1E9779EC8FF779FC7FD79A0CBFF779EC9FF7399C3FF6C93BAFF638AB0FF5A7E
      A2FE4B7298FD304557FF05040369000000000000000400000000031414631FA6
      B4FF24E6F8FF39C4CEFE586F94FF3869A2FF366699FF47699EFF4693B4FF1FD0
      E0FF8EC5ECFFB5D0F2FFAFD0F0FFADCEF0FFA8CBF2FFA8CBF1FF9CC0E9FF7EA8
      D7FF4C5763FF363431FF2A2A2BFA565656FE1E1E1E7500000000000000020000
      00000000000000000000000000000000000000000010343434A5F5F3F1FFF6F4
      F2FFF4E8DDFFECD3BEFFECD3BEFFEBD3BEFFDBC7B7FF92BAE3FFB0D2F1FFC0DB
      F4FFC5DEF5FFBEDAF3FF9ABDE1FFC1A188FFE7CDB7FFEBD3BEFFECD3BEFFF5E9
      DEFFFDFDFDFFFDFCFCFFF6EBE3FFF9F5F2FFF4E7DDFFEFDDCEFFEDD7C4FFEFDD
      CEFFF2E6DDFFF5EFEAFFF1E4D9FFEFE1D5FFF1E6DCFFECDACBFFEFE2D8FFEEDF
      D3FFEEE1D6FFECDBCEFFECDED2FFF2ECE8FFF4F2F1FFF3F2F1FFF3F1F0FFF2F1
      F0FFF2F0EFFFF1F0EEFF343434A5000000100000000000000000000000000000
      00000000000000000000000000000000000004060A387BACF6FF80B0F9FF82B1
      F9FF83B2F8FF84B2F8FF84B2F8FF83B2F8FF82B1F9FF81B0F9FF7EAFF7FF7CAD
      F8FF78AAF6FF7EAEF7FF6C9EECFF080E17550000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A1021318FF13B3
      D8FF03CBE0FF01CDE2FF01CBE2FF08BEDEFF10B1DBFF15A8D8FF12AED9FF0AB4
      D5FF03AFCAFF0294B3FF0B76A4FF10B7DAFF03CBE0FF00CEE2FF00CCE2FF08BE
      DEFF10B2DBFF14A8D8FF12ADD9FF0CBBDDFF05CAE0FF00D4E2FF0BC4DDFF17B0
      D7FF28A4CFFF051117FF000000A1000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000000000012698F
      B9F280A6D4FF7FA5D1FC84ABD8FF82A9D5FF7CA4D0FF759DC7FF6D91B9FE6288
      AFFF5A84AEFC456280FD1C1A19E6000000080000000000000003000000000005
      0533116A6FD120C2CCFE3D789CFD41648EFE3C6388FF3A638BFF446197FF3195
      BFFF47B7DAFF8293B4FF7B94ADFF7C95B1FF7A95B4FF7893B2FF7790ACFF6771
      7DFF53514FFF424343FF2C2C2CFC646464FF0D0D0D4E00000000000000020000
      00000000000000000000000000000000000000000010343434A5F2EFEDFEF4F2
      F0FFF2E5DAFEE9D0BBFEEBD2BDFFE9D0BBFED3C1B2FE82A6CDFFB2D2EFFEC3DD
      F4FFCBE0F3FEC1DBF2FE8EB1D4FEB49986FFE2C7B0FEE9D0BBFEEBD2BDFFF3E6
      DCFEFCFCFCFEFDFDFDFFF4E8DFFEE8CCB5FEECD3BFFFF4EAE3FEEAD1BDFEF4E9
      E0FFF0E4D9FEF7F6F5FEEAD1BDFFEEE1D5FEF0E2D6FFF0E7DFFEE9D3C2FEEEDF
      D3FFEFE5DCFEEDE2D9FEECDCCEFFF1EDEAFEF2F1F0FEF4F3F2FFF1F0EFFEF1F0
      EFFEF3F1F0FFF0EFEEFE343434A5000000100000000000000000000000000000
      0000000000000000000000000000000000001A273B8484B2F9FF84B2F6FD88B6
      F9FF87B4F8FD88B3F8FD88B3F8FD88B7FCFF86B2F8FD85B2F5FD85B3FAFF7FAE
      F5FD7CACF3FD7AACF6FF7CABF5FE12395CB30000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A3031419FF0ECB
      E6FF05D5EAFF00DCEDFF02D8EBFF0ACCE8FF10C3E5FF14BAE4FF13BBE3FF0FBA
      DDFF09B0D0FF029DBBFF0988ADFF0DCCE6FF04D6EAFF00DCEDFF03D8EBFF0ACD
      E8FF0FC3E6FF13BBE4FF13BCE4FF10C2E5FF0DC8E6FF07D5E9FF08DAE8FF17CA
      E2FF27AFDAFF051218FF000000A3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000117498
      C0F095B9E1FF8BB1DBFC8AB1E0FF88AFDEFF85ACD9FF7CA4CFFF77A0CDFF536C
      85FE3D4E5FFE35404AFE302E2DFF010101320000000000000000010506371732
      3AA9000000150F3841B72E6683FE345476FD345978FF375B79FF38607EFF416B
      8EFF728D94FF716D69FF6C6A67FF6E6C69FF6D6A67FF686562FF625F5CFF605E
      5BFE5F5F5FFE555555FD474747FD646464F60101011600000000000000000000
      00000000000000000000000000000000000000000010343434A5F1EEECFEF3F1
      EFFFF1E4D9FEE8CFB9FEEBD1BBFFE8CFB9FEDBC2ADFE6D8EB3FFAECFEFFEC2DC
      F4FFC9DFF3FEBED8F1FE6D8AACFEBA9679FFE3C8B1FEE8CFB9FEEBD1BBFFF2E6
      DBFEFCFCFCFEFEFEFEFFFCFBFBFEFBFAF9FEFAF6F2FFF9F6F3FEF8F6F4FEFBFB
      FBFFF9F8F8FEF8F8F8FEF9F8F6FFF7F7F6FEF9F8F8FFF7F6F5FEF5F1EEFEF8F7
      F6FFF5F4F4FEF5F4F3FEF6F5F5FFF4F3F2FEF3F2F1FEF5F4F3FFF2F1F0FEF2F1
      F0FEF3F2F1FFF1F0EFFE343434A5000000100000000000000000000000000000
      0000000000000000000000000000000000003B537CBC8AB7FCFF8AB6F6FD8EB9
      FCFF8CB7F8FD8EB9F8FD8DB9F8FD90BAFCFF8BB8F8FD8BB5F8FD89B8FCFF86B3
      F5FD81B0F6FD81AFF9FF7AAAF4FD5B96E0FF002740A000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A102161AFF17C8
      E9FF05E2F2FF02E4F3FF02E2F3FF0AD5EFFF12C6EBFF18BBE9FF14C3E9FF0CCA
      E6FF05C1D9FF04A0C0FF0C85B1FF15CBEAFF04E3F2FF02E5F3FF02E3F3FF0AD5
      EFFF12C7EBFF18BCE9FF15C2EAFF0ED2EDFF07E1F1FF05E4F2FF10D1ECFF1BC4
      E7FF2FB8DFFF051319FF000000A1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000087593
      B4E4B2CFECFFABC8E7FDA6C6E9FF96BBE5FF88AFDEFF82A8D5FF7EA8D6FF556C
      87FF241F19FF262524FC4B4B4BFE04040449000000000000000B144158DE3E69
      80FF2C4457D52C4A6AF5345574FF325776FE2F5375FF366279FF3A6A75FF355F
      69FF9CA3A6FFB6B2B2FE919090FF787979FD6D6E6FFB6B6C6CFC686969FD6464
      65FC626262FB646464F96B6B6BFF2727279D0000000000000002000000000000
      00000000000000000000000000000000000000000010343434A5F1EEECFFF2EF
      EDFFF3E5DAFFEAD0B9FFEAD0B9FFEAD0B9FFE5C9B1FF5C728FFF7392B3FF5C75
      94FF6781A0FF718CACFF657996FFC6A285FFE7CCB4FFEAD0B9FFEAD0B9FFF4E7
      DBFFFDFDFCFFFEFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFCFFFCFC
      FCFFFCFCFBFFFBFBFBFFFBFBFAFFFAFAFAFFFAF9F9FFF9F9F8FFF9F8F8FFF9F8
      F7FFF8F7F7FFF8F7F6FFF7F6F6FFF7F6F5FFF6F5F5FFF6F5F4FFF5F4F3FFF5F4
      F3FFF4F3F2FFF4F3F2FF343434A5000000100000000000000000000000000000
      0000000000000000000000000000000000006184BDE58FBBFCFF93BDFDFF94BF
      FCFF96C0FEFF95BFFEFF97BFFEFF96C0FEFF95BFFEFF94BEFDFF90BCFCFF8DBA
      FCFF8AB6FCFF86B5FAFF81B0F9FF83B1F9FF2F81C2FF010C1357000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A303151AFF0FDB
      F1FF05E5F6FF00EEF9FF01ECF8FF08E3F5FF0CDCF3FF0FD7F2FF0FD6F1FF0DD3
      EDFF08C9E2FF01AFC8FF0B91B6FF0DDEF2FF05E6F6FF00EEF9FF01EDF8FF08E3
      F5FF0CDDF3FF0ED8F2FF0ED7F2FF0DDAF2FF0AE1F4FF02F0F7FF08EDF5FF1AD8
      EDFF2BBAE5FF061419FF000000A3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005F78
      93CDAFCCEAFEB0CAE3FCB3CEE7FEB3CFEAFFA2C2E6FF87ACD7FF81ABDAFF5972
      8DFF2F2C29FE2B2C2CFB5F5F5FFE0707084E000000000006094C1A5975FF3560
      7AFA3A6082FF416585FF406483FE3D6181FF3D6181FF385E7EFF356175FF3764
      71FF3A6875FE7B979FFFA8AFB2FEADAAAAFF9B9797FF868484FF737373FF6969
      69FF676767FF686868FF3B3B3BC0000000130000000000000000000000000000
      00000000000000000000000000000000000000000010343433A5EEEBE8FEF1EE
      EBFFF0E2D6FEE7CCB5FEEACEB7FFE7CCB5FEE6CAB3FEA99F9CFF4E6889FE5B76
      99FF7F99B7FE839BB9FE9D8E86FEDABAA0FFE7CBB4FEE7CCB5FEEACEB7FFF2E4
      D8FEFAF9F9FEFCFCFCFFFBFBFAFEFCFBFBFEFEFEFEFFFCFCFCFEFCFCFBFEFDFD
      FDFFFBFBFAFEFAFAFAFEFCFBFBFFF9F9F9FEFBFAFAFFF8F8F8FEF8F7F7FEF9F9
      F8FFF7F6F6FEF6F6F5FEF8F7F7FFF6F5F4FEF5F4F4FEF7F6F5FFF4F3F2FEF4F3
      F2FEF5F4F3FFF3F2F1FE343434A5000000100000000000000000000000000000
      000000000000000000000000000000000009769FDEF595BFFEFF96BDF9FD9AC3
      FFFF9AC0FBFD9BC1FBFD9BC1FBFD9CC5FFFF97BEFBFD95BEF9FD96C0FEFF90B9
      F9FD8DB8F8FD89B8FCFF84B2F6FD7DACF5FD84B1F2FF004E7EE3000000080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A002181BFF16D5
      F1FF03F0FAFF05EEF9FF09E7F8FF08E6F8FF0AE2F7FF10DAF4FF14D1F2FF18C9
      F1FF18C8F0FF1BC0EDFF18B5E0FF15D6F2FF03F0FAFF05EEF9FF09E7F8FF09E4
      F7FF0AE2F7FF0EDBF5FF13D3F3FF17CBF1FF19C8F0FF1BC3EFFF18CAF1FF16D7
      F1FF2EC5E7FF05141AFF000000A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000002F3F
      5198A8CAEEFFACCAE8FBAFCFEFFFA9CCF1FFAACCF1FF98BEE8FF7DA8D5FF4C56
      61FF353331FF2F2F30FC717171FF070707460000000001101673185572FD3D66
      89FB517499FD53789AFE51769BFF4E7395FE486D8FFF4D7193FF3B6183FF3663
      72FF3A6874FE346675FD447784FC1D262985252C2D914C5252CA4F4F4FD53E3E
      3EC7232323980808084A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010343433A5EFEBE9FFF0EC
      EAFFF2E4D7FFE9CDB5FFE9CDB5FFE9CDB5FFE8CDB5FFE5C8AFFFB9A79BFF8788
      91FF919199FFB49E90FFD7B79CFFE6CAB2FFE9CDB5FFE9CDB5FFE9CDB5FFF3E5
      D9FFFBFAF9FFFBFBFAFFFCFCFBFFFDFCFCFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFFEFDFDFFFDFDFDFFFDFCFCFFFCFBFBFFFBFBFBFFFBFAFAFFFAFA
      F9FFFAF9F9FFF9F9F8FFF9F8F8FFF8F8F7FFF8F7F7FFF8F7F6FFF7F6F6FFF7F6
      F5FFF6F5F4FFF6F5F4FF343434A5000000100000000000000000000000000000
      00000000000000000000000000000000011388B0EEFB9AC3FFFF9DC5FFFFA0C8
      FFFFA0C8FFFFA2C9FFFFA1C9FFFFA2C8FFFFA0C8FFFF9EC7FFFF9BC4FFFF97C1
      FEFF94BEFDFF8FBBFCFF8AB7FCFF84B2FAFF90BBFAFF2E81BDFF000E17610000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A303171BFF05F3
      FBFF03F4FCFF04EDFBFF00F2FDFF1AD8F1FF1FD1EFFF1ECCEFFF21C8EEFF2BC4
      EAFF19D3F1FF0AE7F9FF12DAF5FF04F4FBFF03F4FCFF05EDFBFF00F1FDFF11E1
      F5FF1DD3EFFF1CD0F0FF22C9EEFF28C5EBFF1ECDEFFF0CE2F7FF0FDCF6FF1FBE
      EFFF20C5EFFF05151AFF000000A3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000000203
      04246F90B4F38099B5FE7C95AFFD7B95B2FF7992B0FF768CA4FF66707AFF5553
      51FE424243FE3E3D3DFE7A7A7AFD0101012600000000000F17761A5877FF5479
      9FFB6288AEFF6188AEFF6188AEFF5E85AAFF587EA3FF54789CFF54789CFF365F
      7CFF3A6A75FF406E7CFB457A8AFF14272C940000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010343333A5ECE8E5FEEEEB
      E8FFEFE1D4FEE6CAB1FEE8CCB3FFE6CAB1FEE6CAB1FEE8CCB3FFE5C8AFFEE3C5
      ACFFDFC0A7FEE2C4ABFEE5C8B0FEE8CCB3FFE6CAB1FEE6CAB1FEE8CCB3FFF1E2
      D6FEF7F6F5FEFAF9F8FFC9C9C9FEF7F7F7FEBBBBBBFFBFBEBEFECBCBCBFEBEBE
      BEFFE1E1E1FEB5B5B5FECCCCCCFFE2E2E2FEFDFCFCFFFAFAFAFEFAF9F9FEFBFB
      FBFFF9F8F8FEF8F8F7FEFAF9F9FFF7F7F6FEF7F6F6FEF8F8F7FFF6F5F5FEF5F5
      F4FEF7F6F5FFF5F3F3FE343434A5000000100000000000000000000000000000
      0000000000000000000000000000000101158CB4F0FB9EC8FFFF9FC4FAFDA5C9
      FFFFA5C6FAFDA7C8FAFDA7C8FAFDA8CCFFFFA3C5FAFDA2C5FAFDA0C8FFFF9AC0
      FBFD95BDFAFD73A9EAFF80AEF0FD85B2F6FD94BCFAFF3F89C6FE003351B90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000009E001A1AFF00FC
      FDFF04F1FBFF00F3FEFF00F1FEFF16D9F3FF1AD6F1FF16DBF3FF1AD9F2FF1ED5
      F0FF0FE6F7FF01F9FDFF04F8FCFF00FDFEFF03F2FCFF00F2FEFF00F2FEFF16DA
      F3FF1DD2F0FF17D7F3FF19D7F2FF20D3EFFF19DBF2FF03F5FCFF02FAFCFF17D3
      F3FF21BAEFFF02151AFF000000A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000000F0E
      0E57757575FC686665F9696764FC6B6966FE676461FE625F5CFE615F5DFE6161
      62FE555555F9686868FE484848D1000000020000000000030437235F81FF698E
      B7FE6F94BCFE7097C0FF6F96BFFF6C93BBFF668DB4FF5E84AAFF5B81A4FF496D
      92FF37627BFE41717DFD4D808EFE375F69DE0000000800000000000000000000
      0000000000030000000200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010343333A5EAE6E3FEEDE9
      E6FFEFE0D3FEE5C9B0FEE8CBB2FFE5C9B0FEE5C9B0FEE8CBB2FFE5C9B0FEE7CB
      B2FFE5C8B0FEE5C9B0FEE5C9B0FEE8CBB2FFE5C9B0FEE5C9B0FEE8CBB2FFF0E2
      D5FEF6F5F3FEF9F7F6FFC1C1C1FEB4B4B4FEF0F0EFFFC9C9C9FEFAFAF9FEEFEF
      EFFFBBBBBBFEB5B5B5FECCCCCCFFF6F6F6FEFEFDFDFFFBFBFBFEFBFAFAFEFCFC
      FCFFFAF9F9FEF9F9F8FEFBFAFAFFF8F8F7FEF8F7F7FEF9F9F8FFF7F6F6FEF6F6
      F5FEF8F7F7FFF5F5F4FE343434A5000000100000000000000000000000000000
      0000000000000000000000000000000101149ABEEFFBB3D2FFFFB2CFFAFDB5D2
      FFFFAECCFAFDACCBFAFDABCAFAFDAECFFFFFA9C8FAFDA7C8FAFDA5CAFFFF9EC4
      FAFD9AC0FBFD3B89C7FF2C7DBBFD90B8F8FD9EC4FCFF1572ADFE005C91F60000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000069000000FF00A8
      A8FF0DEBF7FF13DEF4FF0AE3F9FF10DDF6FF0FE2F6FF14D7F4FF10DDF6FF0EE5
      F7FF05F4FBFF0AF1F9FF24CEECFF03F6FDFF11E5F5FF08EAFAFF07E6FAFF11DC
      F6FF11E2F6FF17D4F3FF13D9F5FF12DFF5FF0CEAF8FF02FAFCFF17E2F3FF26BF
      ECFF1996BEFF000102FF00000079000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000001212
      1350A7A7A7F1A1A1A2FF8A8A8BFF7C7C7DFF727374FD6C6D6EFC666667FD6666
      66FF6A6A6AFF717171FF09090950000000000000000300000000192B3896729B
      C6FF789DC8FB7CA4CFFF7BA3CEFF789FCAFF7299C3FF6A91B9FF6288AEFF577B
      A0FF43688DFF427183FE538996FF467685F20000001800000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010343333A5EBE7E3FFECE8
      E4FFF1E1D4FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9
      B0FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9B0FFE7C9B0FFF2E3
      D6FFF7F5F4FFF8F6F5FFCACAC9FFD5D5D4FFDDDDDCFFCBCACAFFFBFBFAFFCFCF
      CFFFD1D1D1FFDCDCDCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFD
      FDFFFDFCFCFFFCFCFCFFFCFBFBFFFBFBFAFFFBFAFAFFFAFAF9FFFAF9F9FFF9F9
      F8FFF9F8F8FFF8F8F7FF343434A5000000100000000000000000000000000000
      00000000000000000000000000000000000B93B3E2F6BAD6FFFFBDD7FFFFBFDA
      FFFFC2DBFFFFC2DBFFFFBDD7FFFFB5D1FFFFB0CFFFFFADCEFFFFA9CCFFFFA4C9
      FFFF9FC8FFFF2681BDFF006AA1FF1274B0FF1B76B3FF006199FF00669CFF0003
      052E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000007000000BF0001
      01FF005F60FF07BFC7FF19D9F1FF1BD3F1FF18D5F2FF0DE5F7FF0DE6F7FF13E1
      F5FF1BD5F1FF22C3EBFF15AFDBFF0C8CBBFF03CEE1FF14E0F3FF1DD2F0FF1FCB
      EFFF18D3F2FF0DE5F7FF0AEBF9FF0FE7F6FF15E1F3FF22CDEEFF23BCE6FF1075
      91FF010C0FFF000000E100000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202021D30303082787879D29D9E9EFE8C8C8CFF787878FF6A6A6AFF6363
      63FD3F3F3FC80A0A0A53000000000000000100000003000000000D1219597AA2
      D0FE7EA5D0FA84ACDAFF85ACDAFF83A9D6FF7CA3CFFF749BC5FF6A91B8FF5C83
      A8FF5379A0FF467688FE588F9BFF4F828EF50001011E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010333333A5E8E3E0FEEBE6
      E3FFEFEDEAFEF1EEECFEF3F1EFFFF2EFEDFEF2F0EEFEF4F2F0FFF3F1EFFEF5F3
      F1FFF4F2F0FEF4F2F0FEF4F3F1FEF7F5F4FFF5F4F2FEF6F4F3FEF8F7F5FFF6F4
      F3FEF4F2F0FEF6F4F3FFE6E4E4FEF6F5F4FEE2E1E1FFE0E0DFFECAC9C9FEE4E4
      E3FFF3F3F2FEC9C9C8FECBCBCBFFE0E0DFFEFDFDFDFFFCFCFCFEFCFCFCFEFEFE
      FEFFFBFBFBFEFBFBFBFEFDFCFCFFFAFAF9FEFAF9F9FEFBFBFAFFF9F8F8FEF8F8
      F7FEFAF9F9FFF7F7F6FE343434A5000000100000000000000000000000000000
      00000000000000000000000000000000000187A6D4F0BBD6FFFFBCD5FAFDC3DA
      FFFFC3D9FAFDC4DAFAFDC4D9FAFDC5DCFFFFB6D0FAFDADCBFAFDACCEFFFFA5C7
      FAFDA2C5FBFD177AB7FF006FA8FD006BA5FD0069A2FF00639BFD00679CFF000C
      1359000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000080000
      0086000000F3000000FF001515FF014144FF035B61FF099DBEFF09BFE0FF06C6
      E3FF04C3DEFF06B1D3FF0CA5CEFF109ECCFF10A0CCFF0BB1D4FF05D2E6FF04E2
      EFFF0ADDEFFF0FD6EEFF0FBEDAFF0C94A6FF0A7486FF064652FF000D0FFF0000
      00FE000000C20000002100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000000000000000000000030303280F0F0F55131313690B0B0B560202
      022A0000000000000000000000000000000000000002000000000D13195892B6
      DEFE9BBCDFFB94B9E3FE8DB4E2FF88AFDEFF84ABD8FF7BA3CEFF7298C3FF4F7D
      9AFF407283FF457785FD5F96A3FF4C7B86EB0000001100000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E2E2E2D9EE7E2DEFEE9E5
      E1FFE8E4E0FEE9E4E1FEEBE7E4FFEAE6E2FEEBE7E3FEEDEAE6FFECE8E5FEEFEB
      E8FFEDEAE7FEEEEBE8FEEEEBE9FEF1EEECFFF0EDEBFEF0EEECFEF3F1EFFFF2EF
      EDFEF2F0EEFEF5F3F1FFF4F2F0FEF4F2F1FEF7F5F4FFF6F4F3FEF6F5F4FEF9F8
      F7FFF8F6F6FEF8F7F7FEFBFAF9FFF9F9F8FEFCFCFBFFFBFAFAFEFBFBFBFEFEFE
      FEFFFCFCFCFEFCFCFCFEFDFDFDFFFBFBFBFEFAFAFAFEFCFCFBFFF9F9F9FEF9F9
      F8FEFBFAFAFFF8F8F7FE2E2E2E9E0000000E0000000000000000000000000000
      0000000000000000000000000000000000006A83ACDABDD7FFFFBDD5FAFDC5DD
      FFFFC5DAFAFDC8DAFAFDC8DCFAFDC9DEFFFFC1D8FAFDB5CFFAFDADCEFFFFA7C8
      FAFDA3C6FBFD0C79B7FF0277B2FD0173ADFD0071ABFF0069A3FD026CA1FF0016
      2277000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000110000005F0000009E000000D3000000FF0B72A2FF07C4E8FF02E0
      F4FF03E7F7FF09DFF5FF11D2F2FF18C6EFFF16CAF0FF10D7F3FF0BDFF5FF0AE0
      F4FF12D0EEFF1BB8E1FF176895FF000000FF000000FB000000E1000000A10000
      0046000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000300000000000000000000000000000000000000000000
      0000000000000000000200000000000000000000000200000000080C0F45A3C4
      E7FFB0CBE6FCB1CEEBFFABC9EAFF98BCE5FF87AEDCFF7EA6D2FF779DCAFF5081
      9EFF3A6F7AFE497C8BFD679DA9FE3C616BD30000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000604040450AFADABE5F1EE
      EBFFEFECEAFEEFEDEAFEF2EFEDFFF0EEEBFEF1EEECFEF3F1EFFFF1EFEDFEF4F2
      F0FFF2F0EEFEF3F1EFFEF3F1EFFEF6F4F2FFF4F2F0FEF4F2F1FEF7F5F4FFF5F4
      F2FEF6F4F3FEF8F7F5FFF6F5F4FEF7F5F4FEF9F8F7FFF8F6F6FEF8F7F6FEFAF9
      F9FFF9F8F7FEF9F8F8FEFCFBFAFFFAF9F9FEFCFCFCFFFBFAFAFEFBFBFBFEFEFD
      FDFFFCFCFCFEFCFCFCFEFEFEFEFFFCFCFCFEFCFCFBFEFDFDFDFFFBFBFBFEFBFB
      FAFEFDFCFCFFB5B5B5E504040450000000060000000000000000000000000000
      0000000000000000000000000000000000004A5E7BBABED9FFFFC1DBFFFFC7DD
      FFFFCBDFFFFFCFE1FFFFCFE2FFFFCBE0FFFFC7DDFFFFC0D9FFFFB1D0FFFFA9CB
      FFFFA6CAFFFF0B7CBBFF077EBDFF067AB8FF0277B2FF0071ABFF0773AAFF0120
      308B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003D000000FF0978A5FF06CBEDFF00E6
      F8FF00F1FCFF07E9FAFF0DE2F8FF10DCF7FF10DBF6FF0EDFF7FF09E8F9FF03F5
      FCFF0BE7F4FF1BBDE5FF166998FF000000FF0000004900000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000000300000003000000030000
      0002000000000000000000000000000000000000000100000000010204249ABD
      E2FCB2CDE8FEB2CDE6FEB4CFE9FFB3CFECFFA5C5EBFF88AEDCFF7BA1D1FF5081
      9EFF3C717DFF518593FB6CA3AEFE20353BA10000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000090000001B0000
      0021000000210000002100000021000000210000002100000021000000210000
      0021000000210000002100000021000000210000002100000021000000210000
      0021000000210000002100000021000000210000002100000021000000210000
      0021000000210000002100000021000000210000002100000021000000210000
      0021000000210000002100000021000000210000002100000021000000210000
      0021000000210000001B00000009000000000000000000000000000000000000
      0000000000000000000000000000000000001C33499A79AFE0FF8DB9E4FDA8C9
      F2FFBCD3F6FDC8DCFAFDCCDEFBFDCCDFFFFFC3D8FBFDBDD5FBFDB9D4FFFFA8C8
      FBFDA3C5FBFD2E8FCCFF158AC4FD0A80BBFD057CB8FF0174AEFD0D7AAFFE0323
      358F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003D000000FF0B77A5FF04E2F5FF04F2
      FCFF07EDFBFF06EBFBFF0CE3F8FF15DAF4FF19D3F2FF1ACBF2FF17CEF3FF19CA
      F2FF19CAF2FF18CAEDFF176F99FF000000FF0000003D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000004E67
      83C1A5C8F0FFA4C2E6FCA5C6EEFF9CBFE8FF80A8C6FF58889FFF4E8098FF4377
      87FE427784FE5F95A1FC67A0ABFF050A0B510000000000000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000004063100679FF80076B1FF0279B6FD057E
      BDFF0981BEFD1A89C4FD3093CDFD49A1D9FF5FA8DCFD74AFE1FD8ABAECFF93BC
      F1FDA2C4FBFD69A8E4FF2895CCFD2993C9FD1A8BC4FF0A7CB6FD1481B8FF031F
      2E85000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003D000000FF01AFBAFF01F8FDFF04EE
      FCFF00F3FEFF12E0F5FF23CDEDFF17D2F3FF1ECDF0FF2AC9EAFF17D9F3FF05F1
      FBFF0AEAF9FF1FBFF0FF1586A9FF000000FF0000003D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010000000006090A4A3352
      64E76690B4FD739CBFFD6995B6FF4B7D94FF3D7583FF498392FF5E97A7FE6DA9
      BDFF76B1C6FC86C1D3FD46727DE30000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000061924745AA5CCFF58A8CFFF4FA6D1FF48A5
      D4FF41A6D9FF36A4DBFF2CA0DCFF219EDFFF189DE0FF179DE2FF159CE0FF1496
      DBFF1A92D2FF3696D6FF138FCEFF2D9BD3FF2A95CDFF228EC7FF1C87BDFF0112
      1B65000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000033000000FF009E9EFF06F3FBFF06EC
      FBFF01F0FDFF0DE1F8FF17DBF3FF18D8F3FF17D7F3FF18DAF2FF09EDF9FF02FA
      FDFF12E7F5FF21C0EFFF136F8FFF000000FF0000003000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000000102032E2A4854F83154
      60FF355A67FD3C6A78FF457988FF548D9DFF669EB1FE72ACC0FE77B2C7FE77B3
      C8FD84BED4F98BCADEFF0C141766000000000000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E186089DC3196C9FF379ACBFD3EA2
      D7FF42A7DAFD4DAEE0FD54B5E6FD5BBCEEFF5FBCECFD5BBAECFD51BAEEFF43B0
      E8FD37A9E4FD2CA5E2FF2099D6FD2698D1FD2C99D1FF2591C6FD1D89C0FF0003
      052C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000003000000CE000B0BFF008C8CFF11D6
      E6FF18D9F2FF1AD1F1FF15D8F4FF10DFF6FF0DE6F8FF0EE6F7FF12E4F5FF1ED2
      EFFF23B3DCFF0F6781FF000709FF000000CA0000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000300000000070C0D583F6575FF476F
      7EFE4E7B8CFC57889BFC6096A9FC669EB2FC6AA3B7FC6CA6BAFC72ADC2FE78B5
      CBFF8CCBE0FF466670B500000000000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000202201D6B96E13C9ED2FE42A8
      DBFF47ABDEFD4CB2E4FD52B6E9FD5BBDF0FF5FBCEDFD60BFEFFD60C1F3FF57BB
      EDFD4DB5EBFD43B1EBFF3CA8E0FD35A3D9FD2F9DD5FF2993CBFE0D547CD10000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000019000000B8000000FE0008
      08FF003D3FFF02676CFF06808AFF078994FF098694FF0A7787FF085B6AFF0432
      3BFF000507FF000000FE000000B6000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010000000A1B2B31A04770
      7FFA518192FF588D9EFF5F97A9FF649FB2FF6BA6BAFF6FACC0FF72AFC4FF5A89
      98DE202F34800000000900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000116124665B943A8
      DCFF4CB1E5FF51B8ECFF5FBFF0FF69C5F3FF70C9F6FF73CBF7FF70C9F6FF66C5
      F4FF59BEF0FF49B7EEFF3EAFE8FF37A6E0FF309FD9FF248EC6FC00070A3E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000360000
      008D000000CA000000F1000000FB000000FE000000FE000000FB000000F00000
      00C90000008B0000003500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000102
      02240A11135D18272B8421353A97253B429C21343A91131F227006090B3F0000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000030F
      1556236A92D652B7EBFF64C0F0FE72CAF6FF7BCDF6FE7FCEF6FD7CD0FAFF6FC6
      F3FD5FBEF0FD51BAF0FF41AEE9FE38A9E2FF2485B9F1020D1353000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003000000130000001D0000001D00000012000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002080B3E14324290347092D05CACD5F57DCBF5FF7ECDF7FF6DC7
      F3FF5ABAECFF3A98CBF41C6087CC082232810001011700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003000000060000000700000006000000050000000600000007000000050000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000080001021A010304250103
      0425000101180000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000200100000100010000000000001B00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFE0FFFE0
      07FF000000000000000000000000FE000000007FFC07FF8001FF000000000000
      000000000000F8000000001FFC043F00007F000000000000000000000000F000
      00000007FC001C00003F000000000000000000000000E00000000007F8000000
      001F000000000000000000000000C00000000003F8000004000F000000000000
      000000000000C00000000001F800001000070000000000000000000000008000
      00000001F80000200007000000000000000000000000800000000001F8010040
      0003000000000000000000000000800000000001F80700800003000000000000
      000000000000800000000000F00781C000010000000000000000000000008000
      00000000F007C1C00001000000000000000000000000800000000000F00401E0
      0001000000000000000000000000800000000000F00003F80001000000000000
      000000000000800000000000F000020000010000000000000000000000008000
      00000000F00002000001000000000000000000000000800000000000F0000008
      0001000000000000000000000000800000000000E00780000001000000000000
      000000000000800000000000E007C00000010000000000000000000000008000
      00000000E007C0000001000000000000000000000000800000000000E007C000
      0003000000000000000000000000800000000000E007E0000003000000000000
      000000000000800000000000E007E00000070000000000000000000000008000
      00000000E007F0000007000000000000000000000000800000000000E007F800
      000F000000000000000000000000800000000000C007F800001F000000000000
      000000000000800000000000C007FC00003F0000000000000000000000008000
      000000008007FF00007F00000000000000000000000080000000000000060000
      01FF000000000000000000000000800000000000000000000FFF000000000000
      000000000000800000000000000000007FFF0000000000000000000000008000
      00000000000000007FFF00000000000000000000000080000000000000000000
      7FFF000000000000000000000000800000000000000000007FFF000000000000
      000000000000800000000000000000007FFF0000000000000000000000008000
      00000000000001007FFF00000000000000000000000080000000000000000200
      7FFF000000000000000000000000800000000000000002007FFF000000000000
      000000000000800000000000000000007FFF0000000000000000000000008000
      0000000100000000FFFF00000000000000000000000080000000000180000000
      FFFF000000000000000000000000800000000001C0001001FFFF000000000000
      000000000000C00000000001C0002003FFFF000000000000000000000000C000
      00000003E000007FFFFF000000000000000000000000E00000000003F000007F
      FFFF000000000000000000000000F00000000007FFF000FFFFFF000000000000
      000000000000F8000000001FFFFC01FFFFFF000000000000000000000000FE00
      0000007FFFFE03FFFFFF00000000000000000000000000000000000000000000
      0000FFF0000001FF000000000000000000000000000000000000FF800000003F
      000000000000000000000000000000000000FE000000001F0000000000000000
      00000000000000000000FC000000000F00000000000000000000000000000000
      0000FC0000000007000000000000000000000000000000000000F80000000007
      000000000000000000000000000000000000F800000000030000000000000000
      00000000000000000000F8000000000700000000000000000000000000000000
      0000F80000000007000000000000000000000000000000000000FC0000000007
      000000000000000000000000000000000000FE400000000F0000000000000000
      00000000000000000000FE80000000BF00000000000000000000000000000000
      0000FD000000005F000000000000000000000000000000000000FA000000001F
      000000000000000000000000000000000000FA000000002F0000000000000000
      00000000000000000000F4000000001700000000000000000000000000000000
      0000F8000000000F000000000000000000000000000000000000E8000000000B
      000000000000000000000000000000000000F0000000000B0000000000000000
      00000000000000000000D0000000000500000000000000000000000000000000
      0000D00000000005000000000000000000000000000000000000F00000000005
      000000000000000000000000000000000000E000000000030000000000000000
      00000000000000000000A0000000000200000000000000000000000000000000
      0000A00000000002000000000000000000000000000000000000A00000000002
      000000000000000000000000000000000000A000000000020000000000000000
      00000000000000000000A0000000000200000000000000000000000000000000
      0000A00000000002000000000000000000000000000000000000E00000000003
      000000000000000000000000000000000000F000000000050000000000000000
      00000000000000000000D0000000000500000000000000000000000000000000
      0000D00000000005000000000000000000000000000000000000F0000000000F
      000000000000000000000000000000000000E8000000000B0000000000000000
      00000000000000000000F8000000000F00000000000000000000000000000000
      0000F40000000017000000000000000000000000000000000000F8000000002F
      000000000000000000000000000000000000FA000000002F0000000000000000
      00000000000000000000FD000000005F00000000000000000000000000000000
      0000FE80000000BF000000000000000000000000000000000000FF400000017F
      000000000000000000000000000000000000FFA0000002FF0000000000000000
      00000000000000000000FFD0000005FF00000000000000000000000000000000
      0000FFEC00001BFF000000000000000000000000000000000000FFFB00006FFF
      000000000000000000000000000000000000FFFCC0019FFF0000000000000000
      00000000000000000000FFFF3FFE7FFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object Hora: TTimer
    OnTimer = HoraTimer
    Left = 280
    Top = 104
  end
  object MenuFilaEncaixe: TPopupMenu
    Left = 512
    Top = 200
    object AdicionarEncaixe1: TMenuItem
      Bitmap.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED8DC
        B6BBB0BBBDB3BABCB3B6BAAFEDE6EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF028F17009B1B00A62800A6270098163EA349FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF06A13011C86B12D77712D6770CC6663AAC50FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37BF608CF8CA88F6C688F6
        C688F7C75CBE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF00C54C
        00F07E00EE7F00EE7D00EF7B36BF5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF03C04900E97A00E87A00E77A00E9773ABC5DFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF03BC4500E37000E17000E16F00E26C3ABA5BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05B74100DD6906DB6A07DB
        6B00DE693EB85DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFA7BCA661956268996968986968996968986968986972956D0AB43E
        32E0802DDC792ADB7728E07A1BA13871986E689968689968689A68689A68689A
        685F9660B7C8B6FFFFFFFFFFFF0E8F27009527009E3100A43700A83A00AA3C00
        AB3E00A63B01C34F3ADA7A33D87631D77435DA7700B54600A83C00AB3E00AA3D
        00A73B00A337009D310093252D9E3EFFFFFFFFFFFF1C9D380AB7510DBD580DC4
        5F0DC8630DCB650CCC670ACA652ACF6B41D6773CD5753BD4743CD47219CB6508
        CA630ACB6409CA6209C65E09C15A09BB5301B34937A74AFFFFFFFFFFFF37A33F
        88D89282D68E80D8907ED9917CDA937CDC947BDD9749D17447D27545D27444D2
        733FD06E6CDA8D6FD98D6DD7896CD5856AD28069D07B68CD775BC96836A43DFF
        FFFFFFFFFF279A305DC86B57C66955C86B53C96D51CB6E50CD6F4ECD7152D075
        51D0754FD0754DCF734CCE7143CB6A40C9653EC7603CC45C3AC15639BE5137BB
        4A35B84439A240FFFFFFFFFFFF14911C79CF7F78D08277D28475D38575D48773
        D58874D78A6CD68659CE7658CE7656CE7452CC7073D98C69D38167D27E66CF7A
        65CD7664CA7264C86F4FBF572A9B30FFFFFFFFFFFFDDEBDF92C59798C89C98C7
        9C98C79D98C79D99C89DA3C8A606951E6CD38161CD7760CC7663D1791B922CA6
        CDA89AC99E9AC99D9ACA9E9ACB9E9ACB9E95C998EAF3EAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14952574D1826ACD7969CB
        7869CE793E9D4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF139121
        7ED28674CB7D72CC7B74CF7C3B9945FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF148C1D88D28B7DCC807BCB7E7ECF803B9643FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF15891C92D49186CD8684CD8488D1873B9342FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF15881C9CD99C8FD18F8DD1
        8D92D692399141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF188621
        9DD99D95D39594D29492D49144964DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFDBE6DEA4C7ABA8CAAFA8CAAFA2C7AAEEF2EFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = '&Adicionar Encaixe'
      OnClick = SpeedButton1Click
    end
    object EditarEncaixe1: TMenuItem
      Bitmap.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE4E4E4AFAFAFAEAEAEAEAEAEAFAFAFAFAFAFAFAFAFAFAFAF
        AFAFAFAFAFAFAEAEAEACACAAA8A7A5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFAFAF9F8F8F8F9F9F9FAFAFAFB
        FBFBFCFCFCFCFCFCFDFDFDFEFEFEFCFCFCF0F0F0D2D1CFABABA9E6E6E6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFAFAF9F8F8
        F8C7C8C9CBCCCCFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFCFCFCF0F0F0CECDCDB8
        B7B6BABBBAE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DDDDDDF9F9F9F8F8F8D8D8D92A2A2A67818ACCDDE4F4F4F4FBFBFBFEFEFEFDFD
        FDF3F3F3D6D6D5AEADACE2E2E2BEBFBFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDDDDDDF9F9F9F8F8F7F9F9F9728C9657A7C04DA2BD72A8BB
        A6B7BED3D3D4EAEAEAF0F0F0E3E2E2C1C0C0D4D4D3F7F7F7BCBDBDE3E3E3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF9F9F9F7F7F7F9F9F9BBD5E075
        B5CA4CA2BD3C98B41FB5E545A1BD8E8E8EACACACC8C8C8D6D6D6BBBABAB8B7B7
        CDCDCDB2B3B3E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF9F9F9F7F7
        F7F8F8F8E0E9EEA0C9D76BA1B328333617667F0FBEF54F92A88484849C9C9CCA
        CACAE0E0DFD3D3D3CACAC9CECECDB0AFADF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF
        DDDDDDF9F9F8F6F6F6F8F8F8F9F9F99FCDDF3F879E25252524252515799812BD
        F36191A0909090ABABABDBDBDBF0F0F0EEEEEEEEEEEEF3F2F1DCDCDCFFFFFFFF
        FFFFFFFFFFFFFFFFDDDDDDF8F8F8F6F6F5F7F7F7F9F9F9A2DEF16BD5F73E7282
        2424242325261287AD15BBEF74939D9C9C9CBBBBBBEAEAEAFAFAFAFBFBFBFDFC
        FCDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF8F8F7F5F5F5F6F6F6F8F8F8F9
        F9F991DBF282DBF645646E242424232B2E0D93BF1DB8E985989EA8A8A8CACACA
        F3F3F3FEFEFEFEFEFEDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF7F7F7F4F4
        F4F6F6F5F7F7F7F8F8F8F8F9F987D9F283D8F244565C2525251F30350C9DCC27
        B5E297A0A3B4B4B4D7D7D7F7F7F7FEFEFEDCDCDCFFFFFFFFFFFFFFFFFFFFFFFF
        DDDDDDF7F7F6F3F3F3F5F5F4F6F6F6F7F7F7F9F9F9F3F7F97FD7F380D1EB4049
        4C2525251C38410AA5D738B4DBA7AAABC0C0C0E2E2E2FAFAFADCDCDCFFFFFFFF
        FFFFFFFFFFFFFFFFDDDDDDF6F6F6F2F2F2F4F4F3F5F5F5F6F6F6F8F8F7F9F9F9
        EAF4F771D4F37BC7DF383C3D242424153F4D09AADF4CB3D5B5B5B5CDCDCDECEC
        ECDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF5F5F5F1F1F1F2F2F2F4F4F3F5
        F5F5F6F6F6F7F7F7F8F8F8DDF0F664D1F477BBD03032322424240F4A5E0AAEE3
        64B5CFC1C1C1D9D9D9D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF5F5F4F0F0
        EFF1F1F1F3F3F2F4F4F3F5F5F5F6F6F6F7F7F7F8F8F8CBEAF454CEF46FAABD28
        28282121210858710AAFE47DBACDCECECEC9C9C9FBFBFBFFFFFFFFFFFFFFFFFF
        DDDDDDF4F4F4EFEFEEF0F0F0F1F1F1F3F3F2F4F4F3F5F5F4F6F6F5F7F7F6F7F7
        F7B4E2F149CCF55D92A22424241D1E1E0467870EAFE399C3D0BFBFBFF2F2F2FE
        FEFEFFFFFFFFFFFFDDDDDDF3F3F3EEEEEDEFEFEEF0F0EFF1F1F1F2F2F2F3F3F3
        F4F4F4F5F5F5F6F6F5F6F6F697D9EE3FCAF5497784252525161A1B04789D18B0
        E2A2ADB0E9E9E9FAFAFAFFFFFFFFFFFFDCDCDCF3F3F2ECECECEEEEEDEFEFEEF0
        F0EFF1F1F0F2F2F1F3F3F2F3F3F3F4F4F4F5F5F4F5F5F577CFEB34C6F4375D69
        2323230D171A0486B024A5CFCDD1D2F4F4F4FFFFFFFFFFFFDCDCDCF2F1F1EBEB
        EAECECEBEDEDEDEEEEEEEFEFEFF0F0F0F1F1F1F2F2F1F3F3F2F3F3F3F4F4F3F1
        F3F359C7EA29BEED2A4750212121071A200592C0379FC5E4E4E5FFFFFFFFFFFF
        DCDCDCF1F0F0E9E9E8EBEBEAECECEBEDEDECEEEEEDEFEFEEF0F0EFF0F0F0F1F1
        F0F2F2F1F2F2F1F2F2F2E9EFF042C1EA22B3E125393F1E1E1E032238042DAF52
        52A7FFFFFFFFFFFFDCDCDCF0EFEFE8E7E6E9E9E8EAEAE9EBEBEAECECEBEDEDEC
        EEEEEDEFEFEEEFEFEFF0F0EFF0F0F0F1F1F0F1F1F0DCEAED30BEEB1BA5D1232F
        451010AC0505B85353CBFFFFFFFFFFFFE9E9E9B5B5B5B4B4B4B4B4B4B4B4B4B4
        B4B4B5B5B4B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        9FADB22DA7DE3E52D82222CD3333C7E0E0F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD2D6F05656D18080DEE8E8F9FFFFFF}
      Caption = '&Editar Encaixe'
      OnClick = SpeedButton2Click
    end
  end
  object MenuListaRetorno: TPopupMenu
    Left = 504
    Top = 312
    object MenuItem1: TMenuItem
      Bitmap.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED8DC
        B6BBB0BBBDB3BABCB3B6BAAFEDE6EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF028F17009B1B00A62800A6270098163EA349FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF06A13011C86B12D77712D6770CC6663AAC50FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37BF608CF8CA88F6C688F6
        C688F7C75CBE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF00C54C
        00F07E00EE7F00EE7D00EF7B36BF5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF03C04900E97A00E87A00E77A00E9773ABC5DFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF03BC4500E37000E17000E16F00E26C3ABA5BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05B74100DD6906DB6A07DB
        6B00DE693EB85DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFA7BCA661956268996968986968996968986968986972956D0AB43E
        32E0802DDC792ADB7728E07A1BA13871986E689968689968689A68689A68689A
        685F9660B7C8B6FFFFFFFFFFFF0E8F27009527009E3100A43700A83A00AA3C00
        AB3E00A63B01C34F3ADA7A33D87631D77435DA7700B54600A83C00AB3E00AA3D
        00A73B00A337009D310093252D9E3EFFFFFFFFFFFF1C9D380AB7510DBD580DC4
        5F0DC8630DCB650CCC670ACA652ACF6B41D6773CD5753BD4743CD47219CB6508
        CA630ACB6409CA6209C65E09C15A09BB5301B34937A74AFFFFFFFFFFFF37A33F
        88D89282D68E80D8907ED9917CDA937CDC947BDD9749D17447D27545D27444D2
        733FD06E6CDA8D6FD98D6DD7896CD5856AD28069D07B68CD775BC96836A43DFF
        FFFFFFFFFF279A305DC86B57C66955C86B53C96D51CB6E50CD6F4ECD7152D075
        51D0754FD0754DCF734CCE7143CB6A40C9653EC7603CC45C3AC15639BE5137BB
        4A35B84439A240FFFFFFFFFFFF14911C79CF7F78D08277D28475D38575D48773
        D58874D78A6CD68659CE7658CE7656CE7452CC7073D98C69D38167D27E66CF7A
        65CD7664CA7264C86F4FBF572A9B30FFFFFFFFFFFFDDEBDF92C59798C89C98C7
        9C98C79D98C79D99C89DA3C8A606951E6CD38161CD7760CC7663D1791B922CA6
        CDA89AC99E9AC99D9ACA9E9ACB9E9ACB9E95C998EAF3EAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14952574D1826ACD7969CB
        7869CE793E9D4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF139121
        7ED28674CB7D72CC7B74CF7C3B9945FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF148C1D88D28B7DCC807BCB7E7ECF803B9643FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF15891C92D49186CD8684CD8488D1873B9342FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF15881C9CD99C8FD18F8DD1
        8D92D692399141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF188621
        9DD99D95D39594D29492D49144964DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFDBE6DEA4C7ABA8CAAFA8CAAFA2C7AAEEF2EFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = '&Adicionar Retorno'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Bitmap.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE4E4E4AFAFAFAEAEAEAEAEAEAFAFAFAFAFAFAFAFAFAFAFAF
        AFAFAFAFAFAFAEAEAEACACAAA8A7A5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFAFAF9F8F8F8F9F9F9FAFAFAFB
        FBFBFCFCFCFCFCFCFDFDFDFEFEFEFCFCFCF0F0F0D2D1CFABABA9E6E6E6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFAFAF9F8F8
        F8C7C8C9CBCCCCFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFCFCFCF0F0F0CECDCDB8
        B7B6BABBBAE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DDDDDDF9F9F9F8F8F8D8D8D92A2A2A67818ACCDDE4F4F4F4FBFBFBFEFEFEFDFD
        FDF3F3F3D6D6D5AEADACE2E2E2BEBFBFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDDDDDDF9F9F9F8F8F7F9F9F9728C9657A7C04DA2BD72A8BB
        A6B7BED3D3D4EAEAEAF0F0F0E3E2E2C1C0C0D4D4D3F7F7F7BCBDBDE3E3E3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF9F9F9F7F7F7F9F9F9BBD5E075
        B5CA4CA2BD3C98B41FB5E545A1BD8E8E8EACACACC8C8C8D6D6D6BBBABAB8B7B7
        CDCDCDB2B3B3E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF9F9F9F7F7
        F7F8F8F8E0E9EEA0C9D76BA1B328333617667F0FBEF54F92A88484849C9C9CCA
        CACAE0E0DFD3D3D3CACAC9CECECDB0AFADF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF
        DDDDDDF9F9F8F6F6F6F8F8F8F9F9F99FCDDF3F879E25252524252515799812BD
        F36191A0909090ABABABDBDBDBF0F0F0EEEEEEEEEEEEF3F2F1DCDCDCFFFFFFFF
        FFFFFFFFFFFFFFFFDDDDDDF8F8F8F6F6F5F7F7F7F9F9F9A2DEF16BD5F73E7282
        2424242325261287AD15BBEF74939D9C9C9CBBBBBBEAEAEAFAFAFAFBFBFBFDFC
        FCDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF8F8F7F5F5F5F6F6F6F8F8F8F9
        F9F991DBF282DBF645646E242424232B2E0D93BF1DB8E985989EA8A8A8CACACA
        F3F3F3FEFEFEFEFEFEDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF7F7F7F4F4
        F4F6F6F5F7F7F7F8F8F8F8F9F987D9F283D8F244565C2525251F30350C9DCC27
        B5E297A0A3B4B4B4D7D7D7F7F7F7FEFEFEDCDCDCFFFFFFFFFFFFFFFFFFFFFFFF
        DDDDDDF7F7F6F3F3F3F5F5F4F6F6F6F7F7F7F9F9F9F3F7F97FD7F380D1EB4049
        4C2525251C38410AA5D738B4DBA7AAABC0C0C0E2E2E2FAFAFADCDCDCFFFFFFFF
        FFFFFFFFFFFFFFFFDDDDDDF6F6F6F2F2F2F4F4F3F5F5F5F6F6F6F8F8F7F9F9F9
        EAF4F771D4F37BC7DF383C3D242424153F4D09AADF4CB3D5B5B5B5CDCDCDECEC
        ECDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF5F5F5F1F1F1F2F2F2F4F4F3F5
        F5F5F6F6F6F7F7F7F8F8F8DDF0F664D1F477BBD03032322424240F4A5E0AAEE3
        64B5CFC1C1C1D9D9D9D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFDDDDDDF5F5F4F0F0
        EFF1F1F1F3F3F2F4F4F3F5F5F5F6F6F6F7F7F7F8F8F8CBEAF454CEF46FAABD28
        28282121210858710AAFE47DBACDCECECEC9C9C9FBFBFBFFFFFFFFFFFFFFFFFF
        DDDDDDF4F4F4EFEFEEF0F0F0F1F1F1F3F3F2F4F4F3F5F5F4F6F6F5F7F7F6F7F7
        F7B4E2F149CCF55D92A22424241D1E1E0467870EAFE399C3D0BFBFBFF2F2F2FE
        FEFEFFFFFFFFFFFFDDDDDDF3F3F3EEEEEDEFEFEEF0F0EFF1F1F1F2F2F2F3F3F3
        F4F4F4F5F5F5F6F6F5F6F6F697D9EE3FCAF5497784252525161A1B04789D18B0
        E2A2ADB0E9E9E9FAFAFAFFFFFFFFFFFFDCDCDCF3F3F2ECECECEEEEEDEFEFEEF0
        F0EFF1F1F0F2F2F1F3F3F2F3F3F3F4F4F4F5F5F4F5F5F577CFEB34C6F4375D69
        2323230D171A0486B024A5CFCDD1D2F4F4F4FFFFFFFFFFFFDCDCDCF2F1F1EBEB
        EAECECEBEDEDEDEEEEEEEFEFEFF0F0F0F1F1F1F2F2F1F3F3F2F3F3F3F4F4F3F1
        F3F359C7EA29BEED2A4750212121071A200592C0379FC5E4E4E5FFFFFFFFFFFF
        DCDCDCF1F0F0E9E9E8EBEBEAECECEBEDEDECEEEEEDEFEFEEF0F0EFF0F0F0F1F1
        F0F2F2F1F2F2F1F2F2F2E9EFF042C1EA22B3E125393F1E1E1E032238042DAF52
        52A7FFFFFFFFFFFFDCDCDCF0EFEFE8E7E6E9E9E8EAEAE9EBEBEAECECEBEDEDEC
        EEEEEDEFEFEEEFEFEFF0F0EFF0F0F0F1F1F0F1F1F0DCEAED30BEEB1BA5D1232F
        451010AC0505B85353CBFFFFFFFFFFFFE9E9E9B5B5B5B4B4B4B4B4B4B4B4B4B4
        B4B4B5B5B4B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        9FADB22DA7DE3E52D82222CD3333C7E0E0F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD2D6F05656D18080DEE8E8F9FFFFFF}
      Caption = '&Editar Retorno'
      OnClick = MenuItem2Click
    end
  end
  object dsRetorno: TDataSource
    DataSet = qryRetorno
    Left = 808
    Top = 440
  end
  object qryRetorno: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT RETORNO.ID_RETORNO, RETORNO.DATA, PACIENTE.NOME AS Pacien' +
        'te FROM RETORNO INNER JOIN PACIENTE ON RETORNO.ID_PACIENTE = PAC' +
        'IENTE.ID_PACIENTE'
      'Order By RETORNO.Data')
    Left = 896
    Top = 448
    object qryRetornoID_RETORNO: TAutoIncField
      FieldName = 'ID_RETORNO'
      ReadOnly = True
    end
    object qryRetornoDATA: TDateTimeField
      FieldName = 'DATA'
      DisplayFormat = 'MMMM/YYYY'
    end
    object qryRetornoPaciente: TStringField
      FieldName = 'Paciente'
      Size = 255
    end
  end
  object Computador: TJvComputerInfoEx
    Left = 320
    Top = 192
  end
end
