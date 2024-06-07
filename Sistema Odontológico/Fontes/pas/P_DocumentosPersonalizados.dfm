inherited frmPDocsPersonalizados: TfrmPDocsPersonalizados
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_DOCUMENTOS'
        Title.Caption = 'Cod.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 449
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Documentos Personalizados'
  end
  inherited gbNome: TGroupBox
    Caption = 'Descri'#231#227'o'
    inherited EdtLoc: TJvDBSearchEdit
      DataField = 'DESCRICAO'
    end
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
    object mmoEnvia: TMemo
      Left = 301
      Top = 16
      Width = 129
      Height = 25
      TabOrder = 4
      Visible = False
    end
  end
  inherited qryPesquisa: TADOQuery
    Connection = frmCadDocumentoPersonalizado.ConexaoWord
    SQL.Strings = (
      'SELECT ID_DOCUMENTOS, DESCRICAO FROM DOCUMENTOS')
    object qryPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryPesquisaID_DOCUMENTOS: TAutoIncField
      FieldName = 'ID_DOCUMENTOS'
      ReadOnly = True
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 320
    Top = 128
  end
end
