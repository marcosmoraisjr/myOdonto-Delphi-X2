inherited frmPesquisaConsultorio: TfrmPesquisaConsultorio
  ClientWidth = 481
  ExplicitWidth = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    Width = 481
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_EMPRESA'
        Title.Caption = 'Filial'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome Fantasia'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 208
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Width = 481
    Caption = 'Lista de Consult'#243'rios'
    ExplicitWidth = 481
  end
  inherited StatusBar1: TStatusBar
    Width = 481
    ExplicitWidth = 481
  end
  inherited gbNome: TGroupBox
    Width = 481
    Caption = 'Nome Fantasia'
    ExplicitWidth = 481
    inherited EdtLoc: TJvDBSearchEdit
      Width = 441
      DataField = 'NOME'
      Text = 'Janaina Menegussi Capelezzo'
      ExplicitWidth = 441
    end
  end
  inherited GroupBox1: TGroupBox
    Width = 481
    ExplicitWidth = 481
    inherited btnAdicionar: TcxButton
      Visible = False
    end
    inherited btnEditar: TcxButton
      Left = 106
      OnClick = btnEditarClick
      ExplicitLeft = 106
    end
    inherited btnSelecionar: TcxButton
      OnClick = btnSelecionarClick
    end
    inherited btnFechar: TcxButton
      Left = 374
      ExplicitLeft = 374
    end
  end
  inherited qryPesquisa: TADOQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM EMPRESA')
    object qryPesquisaID_EMPRESA: TAutoIncField
      FieldName = 'ID_EMPRESA'
      ReadOnly = True
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryPesquisaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
  end
end
