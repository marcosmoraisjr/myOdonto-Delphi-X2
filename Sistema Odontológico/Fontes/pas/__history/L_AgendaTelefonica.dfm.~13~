inherited frmListaAgenda: TfrmListaAgenda
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Agenda Telef'#244'nica'
  end
  inherited gLista: TJvDBGrid
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 262
        Visible = True
      end>
  end
  inherited GroupBox1: TGroupBox
    inherited EdtPesquisa: TJvDBSearchEdit
      Width = 662
      DataField = 'NOME'
      Text = 'Alessandro Levartoski'
      ExplicitWidth = 662
    end
    inherited cbAtivo: TcxCheckBox
      Left = 709
      Top = 20
      TabOrder = 3
      ExplicitLeft = 709
      ExplicitTop = 20
    end
    object cbFiltros: TComboBox
      Left = 688
      Top = 20
      Width = 140
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'Nome'
      Visible = False
      OnClick = cbFiltrosClick
      Items.Strings = (
        'Nome'
        'Telefone'
        'Celular')
    end
  end
  inherited btnAdicionar: TcxButton
    OnClick = btnAdicionarClick
  end
  inherited btnEditar: TcxButton
    OnClick = btnEditarClick
  end
  inherited Enter: TJvEnterAsTab
    Left = 224
    Top = 32
  end
  inherited qryPadrao: TADOQuery
    Active = True
    SQL.Strings = (
      
        'SELECT ID_AGENDATELEFONE, NOME, TELEFONE, CELULAR, DESCRICAO FRO' +
        'M AGENDATELEFONE')
    Left = 480
    Top = 129
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qryPadraoCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qryPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 250
    end
    object qryPadraoID_AGENDATELEFONE: TAutoIncField
      FieldName = 'ID_AGENDATELEFONE'
      ReadOnly = True
    end
  end
end
