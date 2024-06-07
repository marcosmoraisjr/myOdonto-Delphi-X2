inherited frmBancosPadrao: TfrmBancosPadrao
  ExplicitTop = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    Height = 382
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Codigo'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 401
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Bancos Padr'#227'o'
  end
  inherited gbNome: TGroupBox
    inherited EdtLoc: TJvDBSearchEdit
      DataField = 'NOME'
      Text = 'BANCO FININVEST S.A'
    end
  end
  inherited GroupBox1: TGroupBox
    inherited btnAdicionar: TcxButton
      Visible = False
    end
    inherited btnEditar: TcxButton
      Visible = False
    end
    inherited btnSelecionar: TcxButton
      OnClick = btnSelecionarClick
    end
  end
  inherited qryPesquisa: TADOQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM BANCOSPADRAO')
    object qryPesquisaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 255
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryPesquisaID_BANCOSPADRAO: TAutoIncField
      FieldName = 'ID_BANCOSPADRAO'
      ReadOnly = True
    end
  end
end
