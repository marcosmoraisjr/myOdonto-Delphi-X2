inherited frmPGrupos: TfrmPGrupos
  OnCreate = FormCreate
  ExplicitTop = -149
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_GRUPO'
        Title.Caption = 'Cod.'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 445
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Grupos'
  end
  inherited gbNome: TGroupBox
    Caption = 'Descri'#231#227'o'
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
      'SELECT * FROM GRUPO')
    Left = 275
    object qryPesquisaID_GRUPO: TAutoIncField
      FieldName = 'ID_GRUPO'
      ReadOnly = True
    end
    object qryPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
