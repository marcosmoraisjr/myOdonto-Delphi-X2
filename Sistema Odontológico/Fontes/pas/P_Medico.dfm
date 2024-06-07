inherited frmPesquisaMedico: TfrmPesquisaMedico
  ExplicitTop = -149
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    TabOrder = 1
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MEDICO'
        Title.Caption = 'Cod'
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRO'
        Width = 96
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Lista de Dentistas'
  end
  inherited gbNome: TGroupBox
    TabOrder = 2
    inherited EdtLoc: TJvDBSearchEdit
      DataField = 'NOME'
      Text = 'Janaina Menegussi Capelezzo'
    end
  end
  object Cod: TDBEdit [4]
    Left = 40
    Top = 384
    Width = 17
    Height = 21
    DataField = 'ID_MEDICO'
    DataSource = dsAux
    ReadOnly = True
    TabOrder = 5
    Visible = False
  end
  inherited GroupBox1: TGroupBox
    inherited btnAdicionar: TcxButton
      OnClick = btnAdicionarClick
    end
    inherited btnEditar: TcxButton
      OnClick = btnEditarClick
    end
    inherited btnSelecionar: TcxButton
      OnClick = btnSelecionarClick
    end
  end
  inherited qryPesquisa: TADOQuery
    SQL.Strings = (
      'SELECT * FROM MEDICOS'
      'WHERE ATIVO <> '#39'0'#39)
    object qryPesquisaID_MEDICO: TAutoIncField
      FieldName = 'ID_MEDICO'
      ReadOnly = True
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryPesquisaCPF: TStringField
      FieldName = 'CPF'
      Size = 255
    end
    object qryPesquisaCRO: TStringField
      FieldName = 'CRO'
    end
  end
end
