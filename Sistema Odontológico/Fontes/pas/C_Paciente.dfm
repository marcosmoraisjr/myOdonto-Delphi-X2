inherited frmCadPaciente: TfrmCadPaciente
  ClientHeight = 448
  ClientWidth = 626
  OnActivate = FormActivate
  OnCreate = FormCreate
  ExplicitWidth = 632
  ExplicitHeight = 472
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 626
    Caption = 'Cadastro de Paciente'
    ExplicitWidth = 626
  end
  inherited StatusBar1: TStatusBar
    Top = 424
    Width = 626
    ExplicitTop = 424
    ExplicitWidth = 626
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 33
    Width = 626
    Height = 346
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Paciente'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 618
        Height = 318
        Align = alClient
        Color = clBtnFace
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 28
          Top = 129
          Width = 35
          Height = 13
          Caption = 'Bairro :'
        end
        object Label1: TLabel
          Left = 29
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Nome :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 291
          Top = 50
          Width = 21
          Height = 13
          Caption = 'RG :'
        end
        object Label4: TLabel
          Left = 11
          Top = 103
          Width = 52
          Height = 13
          Caption = 'Endere'#231'o :'
        end
        object Label5: TLabel
          Left = 340
          Top = 181
          Width = 20
          Height = 13
          Caption = 'UF :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 37
          Top = 50
          Width = 26
          Height = 13
          Caption = 'CPF :'
        end
        object Label8: TLabel
          Left = 23
          Top = 181
          Width = 40
          Height = 13
          Caption = 'Cidade :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 281
          Top = 77
          Width = 31
          Height = 13
          Caption = 'Sexo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 288
          Top = 103
          Width = 24
          Height = 13
          Caption = 'Nro :'
        end
        object Label12: TLabel
          Left = 321
          Top = 129
          Width = 26
          Height = 13
          Caption = 'CEP :'
        end
        object Label13: TLabel
          Left = 9
          Top = 77
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dta Nasc. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 3
          Top = 208
          Width = 60
          Height = 13
          Caption = 'Residencial :'
        end
        object Label24: TLabel
          Left = 165
          Top = 208
          Width = 35
          Height = 13
          Caption = 'Cel. 1 :'
        end
        object Label25: TLabel
          Left = 10
          Top = 234
          Width = 53
          Height = 13
          Caption = 'Comercial :'
        end
        object Label18: TLabel
          Left = 3
          Top = 1
          Width = 27
          Height = 13
          Caption = 'Tipo :'
          Visible = False
        end
        object Label19: TLabel
          Left = 28
          Top = 260
          Width = 35
          Height = 13
          Caption = 'E-mail :'
        end
        object SpeedButton1: TSpeedButton
          Left = 448
          Top = 203
          Width = 143
          Height = 39
          Caption = 'Foto do Paci'#234'nte'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF8F8F8DBDBDBC0C0C0A1A1A1979797A5A5A5CBCBCBD4D4D4B3B3B3
            ADADADADADADACACACACACACB2B2B2D0D0D0C7C7C7A6A6A6979797A1A1A1C3C3
            C3DCDCDCF9F9F9FFFFFFFFFFFFF4F4F48989892424241010100F0F0F0F0F0F38
            3838959595A0A0A09D9D9D9D9C9C9D9D9D9D9D9DA0A0A08F8F8F2B2B2B0D0D0D
            0E0E0E0F0F0F2626268D8D8DF5F5F5FFFFFFE6E5E5CCCBCB7978797272727878
            787A7979787777989797D7D5D5D6D4D4E2E1E1E7E6E6E7E6E6E2E0E1D6D4D4D7
            D6D69493937877777A7A7A787878727171787878CDCCCCE7E7E7D6D4D4B7B4B4
            BCB9B9C6C2C3C7C4C4C9C5C6C9C6C6CAC6C7D9D6D6B1B1B14D4D4D1D1D1D2424
            24505050B3B3B3D8D5D5CAC6C7C9C6C7C9C5C6C8C4C5C7C3C4BFBCBDB9B6B7DA
            D8D8CDCACABCBBBCB3B0B1B8B4B4BAB5B6BCB7B8BEB9BAD0CDCD838383101010
            1313131B1B1B1C1C1C1515151B1B1B8B8B8BCECBCCBEBABABCB8B9BBB6B7B9B5
            B5B8B5B6B5B4B4D0CDCECCC9C9ADA8A9B1ACADB4AFB0B7B2B3BAB5B6BFBABBB5
            B4B41313131B1B1B2B2B2B3838383737372B2B2B1A1A1A101010B6B5B5BFBABA
            BBB6B7B8B3B4B5B0B1B2ADAEAEA9AACECBCCCECBCCB1ACADB5AFB0B8B3B4BDB7
            B8C0BBBCD1CDCE5F5F5F1717172B2B2B3E3E3F1E1F222021233E3E3E2B2B2B0E
            0E0E5A5A5AD0CBCCC1BBBCBDB7B8B9B3B4B6B0B1B3ADAED0CDCED1CECFB5AFB0
            B9B4B5BEB9BAC3BDBEC8C2C3D5D2D33737371D1D1D3232321F20220D0E0F0F0F
            111F20233030301616162D2D2DD5D2D3C9C3C3C3BEBFBFB9BABAB5B6B6B0B1D3
            D0D1D4D1D2B9B3B5BFB9BAC4BEBFCAC4C4CEC9CAD2CFD03535351919192C2C2C
            191A1D14151719191C191A1C2A2A2A1515152F2F2FD2D0D0CECACACAC4C5C4BF
            BFBFBABABAB4B5D6D3D3D7D4D5BEB8B9C3BEBFCAC4C5CFCACBD3CFD0D4D1D256
            56560E0E0E2828281E1E1F18191B2A2B2D3C3C3E2020200C0C0C5E5E5ED5D2D2
            D4D0D1D0CBCCCAC5C6C5BFC0BFB9BAD8D5D6D5D2D3B2AEAEB8B3B4BEBABAC2BE
            BFC6C3C3CAC7C89797971919190F0F0F1B1B1B2726275F5D614F4C530C0C0C27
            27279B9A9AC7C4C5C4C1C1C2BEBFBBB7B8B8B3B4B3AEAFD6D3D3DCD9D9ADABAC
            BFBCBCD3D0D1D8D5D7DEDBDCE2E0E1DEDDDE8080801A1A1A0808080B0B0B0C0C
            0C070707272727878787DAD8D9DCD9DAD8D5D6DAD6D7CDC9CABEBBBCA9A7A8DD
            DADADCD9DAC8C6C6CBC8C9D6D4D5DCD9DBE0DEE0E4E3E5E7E7EAE2E3E5A7A7A8
            5E5E5E404040414141666666A9A9A9DCDBDCDFDDDEDAD8D9D7D4D5DDDADBCDC9
            CAC9C6C7C9C6C6DEDADBDFDBDCCEC9CAD4CFD0D7D5D6DCD9DBDFDEE0E3E2E4E7
            E7E8EAE9EBECECEEE6E5E6DDDCDCDCDCDCE4E4E4EAE9EAE8E7E7E4E2E3DFDDDE
            DBD9D9DEDADBD1CECFD1CDCDCECACBDFDCDDDFDCDD5C5B5B6A6A6A9AA5B88999
            AF727E9566728966717E575B665C64717A7A7E6F707465656B58585E54545A54
            545952525657575C5E5D63AFAEB26261668D8D8E5E5D5DE1DEDFE1DFDF222222
            757575BACEE1BBCFE2ADC2D991ADCB7793B35E7AA5425C805C677F47484F292A
            340D0D18090A140C0D1611121B101119272831D1D2D9313139808083282828E3
            E1E1F6F6F6D3D2D2D6DADFDBE9F6DAE8F5D9E7F5CEE1F3C1D8EFBDD7F0AAC7E4
            96A9BC64656B3839431A1A241E1E2823232D2B2B3536374053535CEFEFF75050
            589B9B9EC7C6C7F8F7F7FFFFFFFCFCFCE0E1E1E0E5ECDDE9F4D7E6F4DBE9F6D9
            E8F6D7E7F6D4E5F6B4C2CF8282874A4B5434343D3838413C3D4542424B4B4B54
            75757DE6E6ED64646BAAAAADE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDADA
            DAD8D9D9DEE3E8E1EBF5D5E4F3D9E8F5C2CED898989B56575E49495058585F68
            686E7A7A808B8C90B3B3B7E0E0E3BBBBBDD8D8D8E3E3E3FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDFDFDFD7D7D7DBDFE4D7E1EBE1E5E9DADD
            E2C9C9C9D6D6D6D4D4D4D5D5D5D9D9D9E1E1E1ECECECF9F9F9FEFEFEFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
            E4E4E4D7D7D7D2D2D3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label20: TLabel
          Left = 15
          Top = 286
          Width = 48
          Height = 13
          Caption = 'Est. Civil :'
        end
        object Label21: TLabel
          Left = 183
          Top = 286
          Width = 47
          Height = 13
          Caption = 'C'#244'njuge :'
        end
        object lblCadastro: TLabel
          Left = 427
          Top = 260
          Width = 69
          Height = 13
          Caption = 'Dt. Cadastro :'
          Visible = False
        end
        object lblUltimaConsulta: TLabel
          Left = 427
          Top = 286
          Width = 69
          Height = 13
          Caption = 'Ult. Consulta :'
        end
        object Label26: TLabel
          Left = 253
          Top = 1
          Width = 44
          Height = 13
          Caption = 'Lograd. :'
          Visible = False
        end
        object Label27: TLabel
          Left = 292
          Top = 208
          Width = 35
          Height = 13
          Caption = 'Cel. 2 :'
        end
        object Label28: TLabel
          Left = 168
          Top = 234
          Width = 43
          Height = 13
          Caption = 'Recado :'
        end
        object Label30: TLabel
          Left = 6
          Top = 155
          Width = 57
          Height = 13
          Caption = 'Compleme.:'
        end
        object EdtNome: TEdit
          Left = 68
          Top = 21
          Width = 279
          Height = 21
          TabOrder = 1
          OnChange = EdtNomeChange
          OnExit = EdtNomeExit
        end
        object EdtCPF: TMaskEdit
          Left = 68
          Top = 47
          Width = 95
          Height = 21
          EditMask = '!999.999.999-99;1;_'
          MaxLength = 14
          TabOrder = 3
          Text = '   .   .   -  '
          OnChange = EdtCPFChange
          OnExit = EdtCPFExit
        end
        object EdtRG: TMaskEdit
          Left = 318
          Top = 47
          Width = 96
          Height = 21
          TabOrder = 4
        end
        object EdtDtNasc: TJvDateEdit
          Left = 68
          Top = 74
          Width = 98
          Height = 21
          TabOrder = 5
          OnChange = EdtDtNascChange
          OnExit = EdtDtNascExit
        end
        object EdtSexo: TComboBox
          Left = 318
          Top = 74
          Width = 97
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'Masculino'
          Items.Strings = (
            'Masculino'
            'Feminino')
        end
        object EdtEnd: TEdit
          Left = 68
          Top = 100
          Width = 212
          Height = 21
          TabOrder = 7
          OnChange = EdtEndChange
        end
        object EdtNro: TEdit
          Left = 318
          Top = 100
          Width = 96
          Height = 21
          TabOrder = 8
          OnChange = EdtNroChange
        end
        object EdtBairro: TEdit
          Left = 68
          Top = 126
          Width = 212
          Height = 21
          TabOrder = 9
          OnChange = EdtBairroChange
        end
        object EdtCep: TMaskEdit
          Left = 349
          Top = 126
          Width = 64
          Height = 21
          EditMask = '!99999-999;1;_'
          MaxLength = 9
          TabOrder = 10
          Text = '     -   '
          OnChange = EdtCepChange
        end
        object EdtTel: TMaskEdit
          Left = 68
          Top = 205
          Width = 89
          Height = 21
          EditMask = '!\(99\) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 15
          Text = '(  )     -    '
          OnChange = EdtTelChange
        end
        object EdtCel: TMaskEdit
          Left = 202
          Top = 205
          Width = 83
          Height = 21
          EditMask = '!\(99\) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 16
          Text = '(  )     -    '
          OnChange = EdtCelChange
        end
        object EdtEmail: TEdit
          Left = 68
          Top = 257
          Width = 346
          Height = 21
          TabOrder = 22
          OnChange = EdtEmailChange
        end
        object EdtCodCidade: TJvComboEdit
          Left = 69
          Top = 178
          Width = 49
          Height = 21
          Flat = False
          ParentFlat = False
          ButtonWidth = 17
          ClickKey = 113
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageKind = ikEllipsis
          ParentFont = False
          TabOrder = 12
          OnButtonClick = EdtCodCidadeButtonClick
          OnChange = EdtCodCidadeChange
          OnExit = EdtCodCidadeExit
          OnKeyPress = EdtCodCidadeKeyPress
        end
        object EdtCid: TEdit
          Left = 121
          Top = 178
          Width = 191
          Height = 21
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object EdtUf: TEdit
          Left = 366
          Top = 178
          Width = 48
          Height = 21
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object cbAtivo: TCheckBox
          Left = 359
          Top = 23
          Width = 55
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Ativo'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 2
        end
        object cbTipo: TComboBox
          Left = -94
          Top = -18
          Width = 140
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 21
          Text = 'Paciente'
          Visible = False
          OnChange = cbTipoChange
          Items.Strings = (
            'Paciente'
            'Prestador'
            'Paciente e Prestador')
        end
        object EdtTelComercial: TMaskEdit
          Left = 69
          Top = 231
          Width = 89
          Height = 21
          EditMask = '!\(99\) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 18
          Text = '(  )     -    '
          OnChange = EdtTelComercialChange
        end
        object GroupBox6: TGroupBox
          Left = 446
          Top = 21
          Width = 145
          Height = 185
          TabOrder = 27
          object imgFoto: TImage
            Left = 2
            Top = 3
            Width = 141
            Height = 180
            Center = True
            Proportional = True
            Stretch = True
          end
        end
        object cbEstCivil: TComboBox
          Left = 69
          Top = 283
          Width = 97
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 23
          Text = 'Solteiro(a)'
          OnChange = cbEstCivilChange
          Items.Strings = (
            'Solteiro(a)'
            'Casado(a)'
            'Vi'#250'vo(a)'
            'Divorciado(a)')
        end
        object EdtConjuge: TEdit
          Left = 235
          Top = 283
          Width = 179
          Height = 21
          TabOrder = 24
          OnChange = EdtConjugeChange
        end
        object EdtDtCadastro: TJvDateEdit
          Left = 499
          Top = 257
          Width = 90
          Height = 21
          DefaultToday = True
          ReadOnly = True
          TabOrder = 25
          Visible = False
        end
        object EdtDtUltimaConsulta: TJvDateEdit
          Left = 499
          Top = 283
          Width = 90
          Height = 21
          ReadOnly = True
          TabOrder = 26
        end
        object cbLogradouro: TComboBox
          Left = -33
          Top = -2
          Width = 115
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Visible = False
          Items.Strings = (
            'Acesso'
            'Adro'
            'Alameda'
            'Alto'
            'Atalho'
            'Avenida'
            'Balne'#225'rio'
            'Belvedere'
            'Beco'
            'Bloco'
            'Bosque'
            'Boulevard'
            'Baixa'
            'Cais'
            'Caminho'
            'Chapad'#227'o'
            'Conjunto'
            'Col'#244'nia'
            'Corredor'
            'Campo'
            'C'#243'rrego'
            'Desvio'
            'Distrito'
            'Escada'
            'Estrada'
            'Esta'#231#227'o'
            'Est'#225'dio'
            'Favela'
            'Fazenda'
            'Ferrovia'
            'Fonte'
            'Feira'
            'Forte'
            'Galeria'
            'Granja'
            'Ilha'
            'Jardim'
            'Ladeira'
            'Largo'
            'Lagoa'
            'Loteamento'
            'Morro'
            'Monte'
            'Paralela'
            'Passeio'
            'P'#225'tio'
            'Pra'#231'a'
            'Parada'
            'Praia'
            'Prolongamento'
            'Parque'
            'Passarela'
            'Passagem'
            'Ponte'
            'Quadra'
            'Quinta'
            'Rua'
            'Ramal'
            'Recanto'
            'Retiro'
            'Reta'
            'Rodovia'
            'Retorno'
            'S'#237'tio'
            'Servid'#227'o'
            'Setor'
            'Subida'
            'Trincheira'
            'Terminal'
            'Trevo'
            'Travessa'
            'Via'
            'Viaduto'
            'Vila'
            'Viela'
            'Vale'
            'Zigue-zague'
            'Trecho'
            'Vereda'
            'Art'#233'ria'
            'Elevada'
            'Porto'
            'Bal'#227'o'
            'Paradouro'
            #193'rea'
            'Jardinete'
            'Esplanada'
            'Quintas'
            'Rotula'
            'Marina'
            'Descida'
            'Circular'
            'Unidade'
            'Ch'#225'cara'
            'Rampa'
            'Ponta'
            'Via de pedestre'
            'Condom'#237'nio'
            'Habitacional'
            'Residencial'
            'Canal'
            'Buraco'
            'M'#243'dulo'
            'Est'#226'ncia'
            'Lago'
            'N'#250'cleo'
            'Aeroporto'
            'Passagem Subterr'#226'nea'
            'Complexo Vi'#225'rio'
            'Pra'#231'a de Esportes'
            'Via Elevada'
            'Rotat'#243'ria'
            '1'#170' Travessa'
            '2'#170' Travessa'
            '3'#170' Travessa'
            '4'#170' Travessa'
            '5'#170' Travessa'
            '6'#170' Travessa'
            '7'#170' Travessa'
            '8'#170' Travessa'
            '9'#170' Travessa'
            '10'#170' Travessa'
            '11'#170' Travessa'
            '12'#170' Travessa'
            '13'#170' Travessa'
            '14'#170' Travessa'
            '15'#170' Travessa'
            '16'#170' Travessa'
            '1'#186' Alto'
            '2'#186' Alto'
            '3'#186' Alto'
            '4'#186' Alto'
            '5'#186' Alto'
            '1'#186' Beco'
            '2'#186' Beco'
            '3'#186' Beco'
            '4'#186' Beco'
            '5'#186' Beco'
            '1'#170' Paralela'
            '2'#170' Paralela'
            '3'#170' Paralela'
            '4'#170' Paralela'
            '5'#170' Paralela'
            '1'#170' Subida'
            '2'#170' Subida'
            '3'#170' Subida'
            '4'#170' Subida'
            '5'#170' Subida'
            '6'#170' Subida'
            '1'#170' Vila'
            '2'#170' Vila'
            '3'#170' Vila'
            '4'#170' Vila'
            '5'#170' Vila'
            '1'#186' Parque'
            '2'#186' Parque'
            '3'#186' Parque'
            '1'#170' Rua'
            '2'#170' Rua'
            '3'#170' Rua'
            '4'#170' Rua'
            '5'#170' Rua'
            '6'#170' Rua'
            '7'#170' Rua'
            '8'#170' Rua'
            '9'#170' Rua'
            '10'#170' Rua'
            '11'#170' Rua'
            '12'#170' Rua'
            'Estacionamento'
            'Vala'
            'Rua de Pedestre'
            'T'#250'nel'
            'Variante'
            'Rodo Anel'
            'Travessa Particular'
            'Cal'#231'ada'
            'Via de Acesso'
            'Entrada Particular'
            'Acampamento'
            'Via Expressa'
            'Estrada Municipal'
            'Avenida Contorno'
            'Entre-quadra'
            'Rua de Liga'#231#227'o'
            #193'rea Especial')
        end
        object EdtCel2: TMaskEdit
          Left = 327
          Top = 205
          Width = 83
          Height = 21
          EditMask = '!\(99\) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 17
          Text = '(  )     -    '
          OnChange = EdtCelChange
        end
        object EdtTelRecado: TMaskEdit
          Left = 213
          Top = 231
          Width = 83
          Height = 21
          EditMask = '!\(99\) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 19
          Text = '(  )     -    '
          OnChange = EdtCelChange
        end
        object EdtNomeRecado: TEdit
          Left = 303
          Top = 231
          Width = 112
          Height = 21
          Hint = 'Nome da pessoa para deixar o recado.'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnChange = EdtConjugeChange
        end
        object EdtComplemento: TEdit
          Left = 68
          Top = 152
          Width = 212
          Height = 21
          TabOrder = 11
          OnChange = EdtBairroChange
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Referencias'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 618
        Height = 31
        Align = alTop
        Color = clBtnFace
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 12
          Top = 7
          Width = 51
          Height = 13
          Caption = 'Nome Pai :'
        end
        object Label17: TLabel
          Left = 307
          Top = 7
          Width = 57
          Height = 13
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Nome M'#227'e :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object EdtNomeMae: TEdit
          Left = 370
          Top = 4
          Width = 220
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = EdtNomeMaeChange
        end
        object EdtNomePai: TEdit
          Left = 69
          Top = 4
          Width = 220
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = EdtNomePaiChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 102
        Width = 618
        Height = 72
        Align = alTop
        Caption = 'Conv'#234'nio'
        Color = clBtnFace
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        object Label15: TLabel
          Left = 37
          Top = 22
          Width = 26
          Height = 13
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Cod :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object Label7: TLabel
          Left = 29
          Top = 47
          Width = 34
          Height = 13
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Nome :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object Label29: TLabel
          Left = 127
          Top = 22
          Width = 70
          Height = 13
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Nro. Carteira :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object EdtCodConvenio: TJvComboEdit
          Left = 69
          Top = 19
          Width = 52
          Height = 21
          Flat = False
          ParentFlat = False
          ButtonWidth = 17
          ClickKey = 113
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageKind = ikEllipsis
          ParentFont = False
          TabOrder = 0
          Text = '1'
          OnButtonClick = EdtCodConvenioButtonClick
          OnChange = EdtCodConvenioChange
          OnExit = EdtCodConvenioExit
          OnKeyPress = EdtCodConvenioKeyPress
        end
        object EdtNomeConvenio: TEdit
          Left = 69
          Top = 46
          Width = 236
          Height = 21
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = 'Particular'
        end
        object GroupBox12: TGroupBox
          Left = 311
          Top = 6
          Width = 304
          Height = 61
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Color = clBtnFace
          Ctl3D = True
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          object lblTitular: TLabel
            Left = 7
            Top = 38
            Width = 37
            Height = 13
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            Caption = 'Titular :'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
          object rgTitular: TRadioGroup
            Left = 0
            Top = -9
            Width = 198
            Height = 41
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Titular'
              'Dependente')
            TabOrder = 0
            OnClick = rgTitularClick
          end
          object EdtNomeTitular: TEdit
            Left = 85
            Top = 35
            Width = 216
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
            Visible = False
          end
          object EdtCodTitular: TJvComboEdit
            Left = 46
            Top = 35
            Width = 39
            Height = 21
            Flat = False
            ParentFlat = False
            ButtonWidth = 17
            ClickKey = 113
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageKind = ikEllipsis
            ParentFont = False
            TabOrder = 2
            Visible = False
            OnButtonClick = EdtCodTitularButtonClick
            OnExit = EdtCodTitularExit
            OnKeyPress = EdtCodTitularKeyPress
          end
        end
        object EdtNroCarteira: TEdit
          Left = 201
          Top = 19
          Width = 104
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = EdtReferenciaChange
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 31
        Width = 618
        Height = 71
        Align = alTop
        Caption = 'Emprego'
        Color = clBtnFace
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        object Label14: TLabel
          Left = 15
          Top = 20
          Width = 48
          Height = 13
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Empresa :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object Label16: TLabel
          Left = 21
          Top = 46
          Width = 42
          Height = 13
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Fun'#231#227'o :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object EdtEmpresa: TEdit
          Left = 69
          Top = 17
          Width = 346
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = EdtEmpresaChange
        end
        object EdtFuncao: TEdit
          Left = 69
          Top = 43
          Width = 346
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = EdtFuncaoChange
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 174
        Width = 618
        Height = 144
        ParentCustomHint = False
        Align = alTop
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Ctl3D = True
        DoubleBuffered = False
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
        object Label22: TLabel
          Left = 4
          Top = 10
          Width = 59
          Height = 13
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Refer'#234'ncia :'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object EdtReferencia: TEdit
          Left = 69
          Top = 7
          Width = 220
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = EdtReferenciaChange
        end
        object gbResponsavel: TGroupBox
          Left = 311
          Top = 3
          Width = 304
          Height = 69
          Caption = 'Respons'#225'vel'
          TabOrder = 1
          Visible = False
          object Label31: TLabel
            Left = 10
            Top = 18
            Width = 31
            Height = 13
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            Caption = 'Nome:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
          end
          object Label32: TLabel
            Left = 18
            Top = 44
            Width = 23
            Height = 13
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            Caption = 'CPF:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
          end
          object Label33: TLabel
            Left = 184
            Top = 44
            Width = 18
            Height = 13
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            Caption = 'RG:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
          end
          object EdtNomeResponsavel: TEdit
            Left = 44
            Top = 15
            Width = 257
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object EdtCPFResponsavel: TMaskEdit
            Left = 44
            Top = 41
            Width = 95
            Height = 21
            EditMask = '!999.999.999-99;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 14
            ParentFont = False
            TabOrder = 1
            Text = '   .   .   -  '
            OnExit = EdtCPFResponsavelExit
          end
          object EdtRGResponsavel: TMaskEdit
            Left = 205
            Top = 41
            Width = 96
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox15: TGroupBox
          Left = 1
          Top = 29
          Width = 288
          Height = 111
          Caption = 'Tipo da m'#225'-oclus'#227'o'
          TabOrder = 2
          object rgClasseMaOclusao: TRadioGroup
            Left = 3
            Top = 18
            Width = 128
            Height = 93
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            Caption = 'Classes'
            Color = clBtnFace
            Ctl3D = True
            DoubleBuffered = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Classe I'
              'Classe II - 1'#170' divis'#227'o'
              'Classe II - 2'#170' divis'#227'o'
              'Classe III')
            ParentBiDiMode = False
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
          end
          object rgExtracaoMaOclusao: TRadioGroup
            Left = 137
            Top = 69
            Width = 136
            Height = 42
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            Color = clBtnFace
            Ctl3D = True
            DoubleBuffered = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Com extra'#231#227'o'
              'Sem Extra'#231#227'o')
            ParentBiDiMode = False
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
          end
          object rgMordidaMaOclusao: TRadioGroup
            Left = 137
            Top = 7
            Width = 136
            Height = 74
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            Caption = 'Mordidas'
            Color = clBtnFace
            Ctl3D = True
            DoubleBuffered = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'M. Cruzada Posterior'
              'M. Cruzada Ant.'
              'M. Aberta'
              'M. Profunda')
            ParentBiDiMode = False
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object EdtObs: TMemo
        Left = 0
        Top = 0
        Width = 618
        Height = 318
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Anamnese'
      ImageIndex = 3
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 618
        Height = 318
        ParentCustomHint = False
        Align = alClient
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        object btnAnamnese: TSpeedButton
          Left = 3
          Top = -2
          Width = 165
          Height = 41
          Caption = 'Nova Anamnese'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9F9F9F3F3F3F4F4F4F3F3F3F3F3F3F3F3
            F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4FD
            FDFDFEFEFEFDFDFDFCFCFCFDFDFDFDFDFDFEFEFEF6F6F6CACACA8E8E8E828282
            8383838383838383838383838383838383838585858686868686868686868686
            86868686999999E0E0E0EFEFEFDBDBD9D7D7D3D7D7D2D7D7D2D8D8D3D3D3CF9C
            9C99D5D5D4DCDCDDDBDBDBDBDBDCDCDCDBDCDCDBDCDCDBDCDCDDDEDEDDDEDEDE
            DFDFDFDFDFDFDFDFDEE4E4E3BABABADCDCDCD6D6D36D6D7A4C4C6950506A5050
            6A50506952526C46465D3F3F45FFFFFFFEFFFFFDFEFDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFDFDFFCDCDD0EDEDECF3F3EB494997
            00008E00008F00008D00008C00008D000064C6C6DFD1D0E48A82C3A99EE76664
            979E95D9A094D9857FC38B85BF9C92DE7070A3BBB0F1776FB5F6F7FFC6C6CCF0
            F0EFFEFEF551519900008C00008D00008D00008B00008D000061E2E2E7FCFBF9
            DCD9E9E9E5F9CFCFD9E6E2F4E7E2F3DCDAEBE0DDEAE5E1F5D4D4DEF6F1FFD3D0
            E4FFFFFFD3D3D1EEEEEEFEFEF551519A00008C00008F00008E00008D00008E00
            008400003FE8E8F6B5B2DAC2BEE9A8A7CABFBCE3C0BBE4B4B2DBB6B4D9CDC9EF
            ADACD5B4B1DDD8D8F1DFDFF5C0C0CAF0F0EFFEFEF551519B00008E00008F0000
            8F00008E00008E00008A000048FFFFFAA49CCCC3B8F1817EA1B9B0E2BBAFE39F
            9ACCA09CC5D9CDFA8C88B9A49AD1F2F0F7FFFFFFD3D3D1EEEEEEFEFEF551519A
            00008E00009000008F00008E00009100006D8585B3E7E8F4EAECF4EFF0F9EBED
            F6EBEEF5EFF1F7ECEDF6E3E3F2DEDFEFE4E5F4E3E4F3DCDCEFDDDDF3BEBECAF0
            F0EFFEFEF551519C00009000009200009100009000009100006F9A9ABAF3EFF8
            7D6ECD3A3975B3A2F27E71BD5751A2968AD0FFFFFFFFFFFCFFFFFCFFFFFEFFFF
            FDFFFFFFD2D2D0EEEEEEFEFEF551519B00009100009200009200009000009200
            0077323281FAFAFCF9FCF9FDFFFDFBFDFCFAFCFAF4F5F9ECEDF5E3E3F0E4E4F1
            E4E4F1E5E5F2E5E5F2E9E9F7C5C5CBEFEFEFFEFEF551519C0000920000930000
            92000091000094000068E5E6E9CBCADB6156AD9380E52A26677262C5E0DDF2F1
            F2F5EFEFF5F0F0F6F0F0F6F1F1F7F2F2F7F6F6FCCCCCCEEFEFEEFEFEF451519E
            00009400009600009400009300009300008A000044FFFFFFFFFFFDFEFFF7FFFF
            FFFFFFFAF7F9F7F7F8F8F8F9FAF4F5F6FBFBFCFAFBFAF3F3F7F6F6FBCACACEEF
            EFEEFEFEF451519D00009500009600009500009400009400009100004EE0DFEB
            8780C0A69BE46461949B92D69E92D7817CBF837FB8BBAFEE6E6AAC857DC5D4D1
            EAE9E9F6C4C4CAEFEFEFFEFEF451519E00009600009700009600009500009800
            00729A9ABBFBFBF5D7D5E5E6E2F6C6C5D1E1DEF1E3DFF0D5D4E5D7D6E2F2EDFD
            CDCCDCD9D6EAF7F6F8FFFFFFD0D0D0EEEEEEFEFEF451519F0000980000990000
            9800009600009900006FBBBBD6D2D1EBAEABD9A4A3CDC9C4ECAFAED2AEACD6BD
            B8E1BCB8E2A2A2C3C3BEEBB3B0D9CCCCE4DADAF0BEBEC8F0F0EFFEFEF45151A0
            00009800009A00009900009700009A00007C565795FAF8F99D95CC8682B3D4C8
            F59D99C19C95C9B7ACE0B6ADE17F7D9FC2B6EFA39CCBE2E2E8FFFFFFD0D0CFEE
            EEEEFEFEF451519F00009A00009A00009A00009A00009900008C000046F1F1FB
            E5E7F1E5E7F1E7E8F5E6E8F2E5E8F1E7E9F1E8EAF2E1E2F1DBDCEADEDEEED8D8
            EBD7D7EEBCBCC7F0F0EFFEFEF45151A100009A00009C00009B00009A00009D00
            0077A6A6C4DBD9DF6D62B19E8BE835316B8E7ED2907DD1635AAD645BA3EEEAFA
            FBFBF7FAFAF8FAFAF8FFFFFCCFCFCDEFEFEFFEFEF45151A000009B00009C0000
            9C00009B00009D00008142428EF4F4F8F5F7F7F6F8F5F2F4F8E7E8F0E6E8F0EB
            EBF3EBECF4E0E0EDDEDEECDFDFEDDFDFEDE3E3F1C2C2C8F0F0EFFEFEF45151A0
            00009C00009C00009C00009B00009E00008805066CEEEAF66154B43D358DBEB0
            EEF4F5F4EFEFF3EEEEF4ECECF3EBEBF2EBEBF2ECECF3EDEDF3F1F1F7C9C9CBEF
            EFEEFEFEF45151A100009C00009E00009D00009D00009F000078AEAEC5CBCCD7
            D0D1DAD3D4DDC8C9D4C4C4D4C3C3D4C6C6D4DFDFDEE2E2E3E2E2E2E3E3E3E2E2
            E4E6E6E6C5C5C6F0F0F0FDFDF347479F00009B00009C00009C00009B00009C00
            009400007700007200007100007000007000006F00006D00006EBCBCB0D6D6D6
            D2D2D2D2D2D2D2D2D2D1D1D1DCDCDCFDFDFDFCFCF9ACACB99191AD9696AF9696
            AE9696AE9696AE9696AF9696B19696B19696B19696B19696B19696B19494AF9D
            9DB3F1F1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = btnAnamneseClick
        end
        object GroupBox11: TGroupBox
          Left = -15
          Top = 86
          Width = 633
          Height = 232
          TabOrder = 0
          object gridAnamnese: TJvDBUltimGrid
            Left = 2
            Top = 15
            Width = 629
            Height = 215
            Align = alClient
            DataSource = dsPerguntasAnamnese
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoAppend = False
            AutoSort = False
            BeepOnError = False
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            AutoSizeRows = False
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Color = clGradientInactiveCaption
                Expanded = False
                FieldName = 'Obrigatorio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Obr.'
                Visible = True
              end
              item
                Color = clGradientInactiveCaption
                Expanded = False
                FieldName = 'Pergunta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ReadOnly = True
                Width = 373
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AFIRMO'
                Title.Caption = 'Afirmo'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NEGO'
                Title.Caption = 'Nego'
                Width = 38
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAOSEI'
                Title.Caption = 'N'#227'o Sei'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACAO'
                Title.Caption = 'Observa'#231#227'o'
                Width = 480
                Visible = True
              end>
          end
        end
        object GroupBox13: TGroupBox
          Left = 315
          Top = -2
          Width = 300
          Height = 79
          Caption = 'Anamneses Realizadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object JvDBUltimGrid1: TJvDBUltimGrid
            Left = 2
            Top = 15
            Width = 296
            Height = 62
            Align = alClient
            DataSource = dsPacienteAnamnese
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoAppend = False
            AutoSort = False
            BeepOnError = False
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            AutoSizeRows = False
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Color = clGradientInactiveCaption
                Expanded = False
                FieldName = 'ID_PACIENTEANAMNESE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'C'#243'digo'
                Width = 39
                Visible = True
              end
              item
                Color = clGradientInactiveCaption
                Expanded = False
                FieldName = 'DATA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Data'
                Width = 109
                Visible = True
              end
              item
                Color = clGradientInactiveCaption
                Expanded = False
                FieldName = 'NOME'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Dentista Respons'#225'vel'
                Width = 117
                Visible = True
              end>
          end
        end
        object GroupBox14: TGroupBox
          Left = 7
          Top = 36
          Width = 259
          Height = 49
          Caption = 'Dentista Respons'#225'vel Pela Anamnese'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object EdtCodM: TJvComboEdit
            Left = 12
            Top = 17
            Width = 49
            Height = 21
            Flat = False
            ParentFlat = False
            ButtonWidth = 17
            ClickKey = 113
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageKind = ikEllipsis
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            OnButtonClick = EdtCodMButtonClick
            OnExit = EdtCodMExit
          end
          object EdtMedico: TEdit
            Left = 67
            Top = 17
            Width = 180
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
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Fotos'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 618
        Height = 318
        ParentCustomHint = False
        Align = alClient
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        object SpeedButton2: TSpeedButton
          Left = -5
          Top = 280
          Width = 122
          Height = 38
          Caption = '&Adicionar'
          Flat = True
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
        end
        object SpeedButton3: TSpeedButton
          Left = 113
          Top = 280
          Width = 97
          Height = 38
          Caption = '&Deletar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8ECECECE2E2E2
            D9D8D8D6D5D5D7D7D7DADADAE3E3E3EEEEEEF6F6F6FCFCFCFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEDEEB6
            B5B49A99998281806D6F6F5457573D3D3A302F2C292B2B242423575757C7C7C7
            F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFC1C0BDCECDCBFFFFFFFFFFFFE1E8E9C3CCCAAFAEA8A6A59DB6C2C3AF
            BABC73706B131413F0EFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFDFDEDADFDFDDD4D5D9B6BAC1949CA679838D666A
            70595C5F5C666D586168575553838886FCFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDB9BCBFF2F9FFFFFEF1F2E1A8
            E4CC79D7BB5FCDAB50C3A24CC5B16BC6C7959EA59B52595F939598FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF2F9E0C589EF
            AF09F0AE00F1AE00EDAD04DE9704C37400B56200A64C00953500A44300BA781F
            AFAE9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFEFF4FFE39800F3BF2CF1BA28DC940FD18D1AC37A16A5510B973D0990350886
            2705710E026E0200E4AF57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEDEAEDD88A10F2C648EEBD42CB8929C3812CBE7D2CA95C
            1F923E1996441D9E4C1FB7682BF1974DCA8851FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6DDE1D28120EFBF4DE1A942C37A29
            A75218BC752BB26D288F2F109D3F17A94C20BA5D2EDE7749BD6F4DFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDECED4D4882DEF
            C35DDFAA50CC8E40892909B77A3BA86A2F8B34198B28139A3A20AB4A2ED8714B
            B75E49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFD8BEC3DC9939F2CC6DE1B05BDAAB5B87391EB37640AA6731A25E3286220C9A
            3C1CAB4D2AD77349BC5C42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD2B0B4E5AB48F4D681E9CA7BE5C378A25F34AB6C3EBC85
            49C28F4F8F381D9F401AAF5229D87547C0593BFAFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBA1A4E8C262FBECA3F5E094EDD28A
            C49256A66535CFA160D1A45FB4804FA64516B75C2AD77645C45938F5FCFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC59090F6DC81F4
            E4A9E0BE7ED9AF70D5A867A46225DFB775DBB46ED7B773BB7238BF6527D77741
            C85C38EFF1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFC38B85EBC376DAAF85DFB682E1B97FE2BD7F9B6207DCB670EFCD82F2D685DD
            C276C1631BD77A3ECF6139EAE8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFBD7D67C37421C4844ACEA46FCFAC7DCEB38BC0A7849881
            5E7C694BD3C3A3D8D1AFC47F51CE642ED66031E6DCDDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A79AE8D7D6FFFFFFFDFFFFE1E8EE
            C3D1D6AEB9BB9FA3A194928D949D9E9EAFB797A8AC8C8C8B8F706BD1C6C4FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F7DADBD6FFFFFFFF
            FFFFF5F6F7D7D9D9C7CCCCBCC0BFACACA8ACAAA5ACB0AEAEB7BAA1A9A98D8C89
            858984AAAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
            F9CFCECC8C8A846C6659757266EDEDEDE8E7E7C0BBB7C1BEBBECEBEBE8E7E7E9
            E8E8D6D4D0E5DCBACECFD0BABBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEAE9E8CDCCCAB5B1ACA6A5A1D4D5D5EDEEEFA69F99EBEC
            EDE5E5E5E5E5E5DADBDBD3D2C8DAD9D6D8D7D6F7F6F6FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECEA
            E4E4E4ACA6A0E9EAEBE0DEDDF0EEEDFAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFD1CECBC1BCB8F0EFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 0
          Width = 265
          Height = 281
          Caption = 'Fotos do Paci'#234'nte'
          TabOrder = 0
          object gLista: TJvDBGrid
            Left = 2
            Top = 15
            Width = 261
            Height = 264
            Align = alClient
            Ctl3D = True
            DataSource = dsFotoPaciente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImeMode = imClose
            Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            AutoAppend = False
            AutoSort = False
            BeepOnError = False
            AlternateRowColor = clSkyBlue
            AlternateRowFontColor = clBlack
            PostOnEnterKey = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            AutoSizeRows = False
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Width = 158
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Width = 85
                Visible = True
              end>
          end
        end
        object GroupBox9: TGroupBox
          Left = 288
          Top = 3
          Width = 305
          Height = 278
          TabOrder = 1
          object imgFotos: TcxDBImage
            Left = 2
            Top = 15
            Align = alClient
            DataBinding.DataField = 'FOTOS'
            DataBinding.DataSource = dsFotoPaciente
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.Stretch = True
            TabOrder = 0
            Height = 261
            Width = 301
          end
        end
        object cbProporcional: TcxCheckBox
          Left = 324
          Top = 289
          Caption = 'Proporcional'
          State = cbsChecked
          StyleHot.BorderStyle = ebsFlat
          TabOrder = 2
          OnClick = cbProporcionalClick
          Width = 97
        end
        object cbCentralizar: TcxCheckBox
          Left = 455
          Top = 289
          Caption = 'Centralizar'
          State = cbsChecked
          StyleHot.BorderStyle = ebsFlat
          TabOrder = 3
          OnClick = cbCentralizarClick
          Width = 97
        end
      end
    end
  end
  object btnSalvar: TcxButton [3]
    Left = 0
    Top = 378
    Width = 135
    Height = 47
    Caption = '&Salvar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDDFE2E1F6F8F7FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFCA9BAB218B76B6EA289F1F4F3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFA97B0A41BBF6F93EABF
      4DD591599F7CECF0EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F782A59319
      BF6B84EAB58CF3BDB9F9DB5ED69A469E71E3E7E5FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F3
      F26E9E841ABF6864E59E63EB9C81F1B49CF7C9B8FADB64D699369C65D7DDDAFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFEBEEEC59987416BA6136DF802FE17751E78E6DEDA483F1B68FF4BF97F4
      C360D595279E5CCAD2CEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE2E6E345936411B85B1DD76C00D85915DD6737E37D52E890
      64EB9D6EEDA56CEDA469ECA152D38B1D9D51B9C4BDFDFDFDFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD6DBD836915708B4520FD05E01D05000D45503
      D95B18DE6830E27842E58349E68949E6893FE48233E27B38D07A159C48A8B7AD
      FBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD6D1278D4800AF4902C74E00C7
      4700CC4C00D15009D65A17DB6627DF7035E17939E27B30E1761ADE6907DB5E04
      D85B24CC6B0E983E96AA9CF9FAF9FFFFFFFFFFFFFFFFFFFFFFFF63987201A940
      01BD4100BF3E14C7503CD26E59DB8365DF8D5FE08B25DA6A52E28664E59265E4
      9264E49053E08530D96F0BD15615C85F079635819B88F5F7F5FFFFFFFFFFFFFF
      FFFF62A67801B3340FBA3F52CE7479D9927ADC9579DE976DDD901CD26095E9B5
      3CDB795ADF897AE49D7AE49C7AE39B79E29A74DE9430CF6604C14F03922C6B90
      73F1F3F1FFFFFFFFFFFFC2E7CB14B23A75D1888EDA9F8EDDA18EDEA378DB9421
      CC5BBCEFCEFFFFFFF0FCF449D77D60DC898EE5A88EE4A88EE3A78EE2A68DDFA3
      46CE6E03B944018C2259875EEBEDEBFFFFFFFFFFFFD4EFDA31BC5287D798A1E0
      AF7DD89525C356D0F3DBFFFFFFFFFFFFFFFFFFFAFEFB61DA8C5CD783A1E6B4A1
      E5B4A1E4B3A1E3B2A1E2B066D08105B239008617447C45E3E7E3FFFFFFFFFFFF
      E3F5E839BC585FCB7931C159E0F6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE
      FD7CDC9A55D17AB3E8C0B5E8C1B5E7C0B5E6BFB5E5BE7ED28F07A92D01820E6E
      926EFFFFFFFFFFFFFFFFFFECF8EF7BD391EAF8EEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFFFE95DFAB4BCA6EC4EBCCC8ECCFC8EBCEC8EACDC8E9
      CD97D7A10EA429619867FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0E5BE43C262CEEDD4
      DBF1DEDBF0DEDBF0DDCBE9CF33AD41A2D2A7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC4E9CC40BB58D6EFDAEDF7EED2ECD532AC40B2DEB6FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD6EFDA3BB34DAFDEB330AB3CC6E6C9FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F2E459BA62D8EE
      DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    SpeedButtonOptions.AllowAllUp = True
    SpeedButtonOptions.Flat = True
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnSalvarClick
  end
  object btnFechar: TcxButton [4]
    Left = 490
    Top = 378
    Width = 135
    Height = 47
    Caption = '&Fechar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2A6A6A6FBFBFBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA6A6A6F2F2F2FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E933333700005851
      5151F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9515151000058
      333337E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF2626
      2F0000B60404FE00008E49494AF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF6F6F649
      494A00008E0404FE0000B626262FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      D3D3D31B1B2B0202C60909FF0A0AFF0808FF000098404041F3F3F3FFFFFFFFFF
      FFF3F3F34040410000980808FF0A0AFF0909FF0202C61B1B2BD2D2D2FFFFFFFF
      FFFFFFFFFFF6F6F61313260303D20E0EFD0F0FFD0F0FFD0F0FFD0C0CFD0101A0
      39393BEFEFEFEFEFEF39393B0101A00C0CFD0F0FFD0F0FFD0F0FFD0E0EFD0303
      D2131326F6F6F6FFFFFFFFFFFFFCFCFC1717290101F20F0FF91414FA1414FA14
      14FA1414FA1010FA0202A63232363232360202A71010FA1414FA1414FA1414FA
      1414FA0F0FF90101F3171729FCFCFCFFFFFFFFFFFFFFFFFF8C8C8C0101510101
      EB1313F61A1AF61A1AF61A1AF61A1AF61616F60303AC0303AC1616F61A1AF61A
      1AF61A1AF61A1AF61313F60101EB0101528C8C8CFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8383830101480101E01717F22020F32020F32020F32020F31C1CF31C1C
      F32020F32020F32020F32020F31717F20101E1010148838383FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8383830101410101D61D1DEF2727F02727F0
      2727F02727F02727F02727F02727F02727F01D1DEF0101D7010141838383FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88888801013A01
      01CC2222EC2F2FED2F2FED2F2FED2F2FED2F2FED2F2FED2222EC0101CD01013B
      888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF6E6E6E0000420D0DE23737EA3737EA3737EA3737EA3737EA3737EA0D
      0DE20000426E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFCBCBCB1313280F0FBE3C3CE84040E84040E84040E84040
      E84040E84040E83C3CE80F0FBE131328CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C41010281313C04545E64848E74848E7
      4848E74848E74848E74848E74848E74848E74545E61313C0101028C4C4C4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0C0C2A1818C35050E552
      52E55252E55252E55252E53939E13939E15252E55252E55252E55252E55050E5
      1818C30C0C2ABDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B409092B1E1E
      C55A5AE45C5CE45C5CE45C5CE45C5CE43F3FDF0202B60202B63F3FDF5C5CE45C
      5CE45C5CE45C5CE45A5AE41E1EC509092BB4B4B4FFFFFFFFFFFFFFFFFFB6B6B6
      06062D2525C76565E36666E46666E46666E46666E44545DD0202B20101290101
      290202B54545DD6666E46666E46666E46666E46565E32525C706062DB6B6B6FF
      FFFFFFFFFF7B7B7B0000794E4EDC7171E37171E37171E37171E34C4CDC0202B1
      02022A94949493939302022D0202BA4C4CDC7171E37171E37171E37171E34E4E
      DC0000797B7B7BFFFFFFFFFFFFECECEC23232903039A5B5BDC7C7CE37C7CE352
      52DA0202B402022C969696FFFFFFFFFFFF9696960202320202C05252DA7C7CE3
      7C7CE35B5BDC030399232329ECECECFFFFFFFFFFFFFFFFFFDFDFDF1E1E280606
      A36767DC5959D90202BD02022E969696FFFFFFFFFFFFFFFFFFFFFFFF96969602
      02360202CA5959D96767DC0606A11E1E28DFDFDFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFDADADA1919280606AD0202CA020236999999FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF99999902023E0202D60606A9191927DADADAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D414142A02023B9A9A9AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A02023E141428D4D4D4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8BCBCBCFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC
      D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    SpeedButtonOptions.AllowAllUp = True
    SpeedButtonOptions.Flat = True
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = BtnCancelarClick
  end
  inherited Enter: TJvEnterAsTab
    Left = 432
    Top = 0
  end
  inherited Acoes: TPopupActionBar
    Left = 176
    Top = 65504
  end
  object qryCadastro: TADOQuery
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
    Left = 528
  end
  object qryAux: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    Left = 144
    Top = 144
  end
  object AbreFoto: TOpenDialog
    Left = 472
  end
  object qryFotosPaciente: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FOTOSPACIENTE.ID_FOTOSPACIENTE, FOTOSPACIENTE.FOTOS,  FOT' +
        'OSPACIENTE.DESCRICAO, FOTOSPACIENTE.DATA FROM PACIENTE'
      
        'INNER JOIN FOTOSPACIENTE ON PACIENTE.ID_PACIENTE = FOTOSPACIENTE' +
        '.ID_PACIENTE'
      'Order By Data')
    Left = 416
    Top = 65528
    object qryFotosPacienteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qryFotosPacienteDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qryFotosPacienteID_FOTOSPACIENTE: TAutoIncField
      FieldName = 'ID_FOTOSPACIENTE'
      ReadOnly = True
    end
    object qryFotosPacienteFOTOS: TBlobField
      FieldName = 'FOTOS'
    end
  end
  object dsFotoPaciente: TDataSource
    DataSet = qryFotosPaciente
    Left = 40
    Top = 65520
  end
  object qryCadastroAux: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from paciente')
    Left = 304
    Top = 152
    object qryCadastroAuxID_PACIENTE: TAutoIncField
      FieldName = 'ID_PACIENTE'
      ReadOnly = True
    end
    object qryCadastroAuxID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object qryCadastroAuxID_DB: TIntegerField
      FieldName = 'ID_DB'
    end
    object qryCadastroAuxNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryCadastroAuxCPF: TStringField
      FieldName = 'CPF'
      Size = 255
    end
    object qryCadastroAuxRG: TStringField
      FieldName = 'RG'
      Size = 255
    end
    object qryCadastroAuxDTANASC: TDateTimeField
      FieldName = 'DTANASC'
    end
    object qryCadastroAuxSEXO: TStringField
      FieldName = 'SEXO'
      Size = 255
    end
    object qryCadastroAuxENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 255
    end
    object qryCadastroAuxNRO: TStringField
      FieldName = 'NRO'
      Size = 255
    end
    object qryCadastroAuxBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 255
    end
    object qryCadastroAuxCEP: TStringField
      FieldName = 'CEP'
      Size = 255
    end
    object qryCadastroAuxID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qryCadastroAuxTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 255
    end
    object qryCadastroAuxCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 255
    end
    object qryCadastroAuxTELCOMERCIAL: TStringField
      FieldName = 'TELCOMERCIAL'
      Size = 255
    end
    object qryCadastroAuxEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object qryCadastroAuxNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 255
    end
    object qryCadastroAuxNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 255
    end
    object qryCadastroAuxEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 255
    end
    object qryCadastroAuxFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 255
    end
    object qryCadastroAuxID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object qryCadastroAuxTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qryCadastroAuxOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryCadastroAuxFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object qryCadastroAuxAtivo: TStringField
      FieldName = 'Ativo'
      Size = 1
    end
    object qryCadastroAuxDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
    end
    object qryCadastroAuxID_TITULAR: TIntegerField
      FieldName = 'ID_TITULAR'
    end
    object qryCadastroAuxTITULAR_DEPENDENTE: TIntegerField
      FieldName = 'TITULAR_DEPENDENTE'
    end
    object qryCadastroAuxULTIMACONSULTA: TDateTimeField
      FieldName = 'ULTIMACONSULTA'
    end
    object qryCadastroAuxESTADOCIVIL: TIntegerField
      FieldName = 'ESTADOCIVIL'
    end
    object qryCadastroAuxConjuge: TStringField
      FieldName = 'Conjuge'
      Size = 100
    end
    object qryCadastroAuxREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 100
    end
    object qryCadastroAuxNUMERODACARTEIRA: TStringField
      FieldName = 'NUMERODACARTEIRA'
      Size = 100
    end
    object qryCadastroAuxCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object qryCadastroAuxCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object qryCadastroAuxTELRECADO: TStringField
      FieldName = 'TELRECADO'
    end
    object qryCadastroAuxNOMERECADO: TStringField
      FieldName = 'NOMERECADO'
      Size = 60
    end
    object qryCadastroAuxNUMEROCNS: TStringField
      FieldName = 'NUMEROCNS'
      Size = 50
    end
    object qryCadastroAuxVALIDADECARTEIRA: TDateTimeField
      FieldName = 'VALIDADECARTEIRA'
    end
    object qryCadastroAuxDATADEADESAO: TDateTimeField
      FieldName = 'DATADEADESAO'
    end
    object qryCadastroAuxNOMERESPONSAVEL: TStringField
      FieldName = 'NOMERESPONSAVEL'
      Size = 100
    end
    object qryCadastroAuxCPFRESPONSAVEL: TStringField
      FieldName = 'CPFRESPONSAVEL'
      Size = 50
    end
    object qryCadastroAuxRGRESPONSAVEL: TStringField
      FieldName = 'RGRESPONSAVEL'
      Size = 50
    end
    object qryCadastroAuxMAOCLUSAOCLASSE: TIntegerField
      FieldName = 'MAOCLUSAOCLASSE'
    end
    object qryCadastroAuxMAOCLUSAOMORDIDA: TIntegerField
      FieldName = 'MAOCLUSAOMORDIDA'
    end
    object qryCadastroAuxMAOCLUSAOEXTRACAO: TIntegerField
      FieldName = 'MAOCLUSAOEXTRACAO'
    end
  end
  object dsPerguntasAnamnese: TDataSource
    DataSet = qryPerguntasAnamnese
    Left = 304
    Top = 65528
  end
  object dsPacienteAnamnese: TDataSource
    DataSet = qryPacienteAnamnese
    Left = 232
    Top = 65528
  end
  object qryPerguntasAnamnese: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDataShape.1;Persist Security Info=True;Data Source='#39#39 +
      ';Data Provider=NONE'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SHAPE APPEND'
      'NEW adInteger ID,'
      'NEW adInteger IDPerguntaAnamnese,'
      'NEW AdBoolean Obrigatorio,'
      'NEW AdVarChar(60) Pergunta,'
      'NEW adBoolean AFIRMO,'
      'NEW adBoolean NEGO,'
      'NEW adBoolean NAOSEI,'
      'NEW adVarChar(200) OBSERVACAO,'
      'NEW AdInteger IDPacienteAnamnese,'
      'NEW AdDate Data')
    Left = 571
    Top = 56
    object qryPerguntasAnamnesePergunta: TStringField
      DisplayWidth = 17
      FieldName = 'Pergunta'
      Size = 60
    end
    object qryPerguntasAnamneseAFIRMO: TBooleanField
      DisplayWidth = 8
      FieldName = 'AFIRMO'
      OnValidate = qryPerguntasAnamneseAFIRMOValidate
    end
    object qryPerguntasAnamneseNEGO: TBooleanField
      DisplayWidth = 6
      FieldName = 'NEGO'
      OnValidate = qryPerguntasAnamneseNEGOValidate
    end
    object qryPerguntasAnamneseNAOSEI: TBooleanField
      DisplayWidth = 8
      FieldName = 'NAOSEI'
      OnValidate = qryPerguntasAnamneseNAOSEIValidate
    end
    object qryPerguntasAnamneseOBSERVACAO: TStringField
      DisplayWidth = 240
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object qryPerguntasAnamneseObrigatorio: TBooleanField
      FieldName = 'Obrigatorio'
    end
    object qryPerguntasAnamneseIDPacienteAnamnese: TIntegerField
      FieldName = 'IDPacienteAnamnese'
    end
  end
  object qryPacienteAnamnese: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID_PACIENTEANAMNESE, DATA, MEDICOS.ID_MEDICO, ID_PACIENTE' +
        ', MEDICOS.NOME FROM PACIENTEANAMNESE'
      
        'INNER JOIN MEDICOS ON PACIENTEANAMNESE.ID_MEDICO = MEDICOS.ID_ME' +
        'DICO')
    Left = 96
    Top = 49
    object qryPacienteAnamneseDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qryPacienteAnamneseID_PACIENTEANAMNESE: TAutoIncField
      FieldName = 'ID_PACIENTEANAMNESE'
      ReadOnly = True
    end
    object qryPacienteAnamneseID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
    end
    object qryPacienteAnamneseID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object qryPacienteAnamneseNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
  end
end
