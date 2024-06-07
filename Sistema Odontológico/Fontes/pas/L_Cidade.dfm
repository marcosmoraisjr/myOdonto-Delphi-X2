inherited frmListaCidade: TfrmListaCidade
  ClientHeight = 552
  ClientWidth = 516
  OnCreate = FormCreate
  ExplicitTop = -52
  ExplicitWidth = 522
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    Width = 516
    Height = 392
    TabOrder = 1
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CIDADE'
        Title.Caption = 'Cod'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Cidade'
        Width = 321
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIBGE'
        Title.Caption = 'Cod. IBGE'
        Width = 86
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Width = 516
    Caption = 'Lista de Cidades'
    ExplicitWidth = 516
  end
  inherited StatusBar1: TStatusBar
    Top = 528
    Width = 516
    ExplicitTop = 528
    ExplicitWidth = 516
  end
  inherited gbNome: TGroupBox
    Top = 427
    Width = 516
    TabOrder = 2
    ExplicitTop = 427
    ExplicitWidth = 516
    inherited EdtLoc: TJvDBSearchEdit
      DataField = 'NOME'
    end
  end
  object Cod: TDBEdit [4]
    Left = 48
    Top = 348
    Width = 33
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsAux
    TabOrder = 5
    Visible = False
  end
  inherited GroupBox1: TGroupBox
    Top = 487
    Width = 516
    ExplicitTop = 487
    ExplicitWidth = 516
    inherited btnAdicionar: TcxButton
      OnClick = btnAdicionarClick
    end
    inherited btnEditar: TcxButton
      Visible = False
    end
    inherited btnSelecionar: TcxButton
      OnClick = btnSelecionarClick
    end
    inherited btnFechar: TcxButton
      Left = 409
      ExplicitLeft = 409
    end
  end
  inherited qryPesquisa: TADOQuery
    AutoCalcFields = False
    CursorLocation = clUseServer
    CursorType = ctKeyset
    SQL.Strings = (
      'SELECT ID_CIDADE, NOME, UF, CODIBGE FROM CIDADE')
    Left = 299
    Top = 152
    object qryPesquisaID_CIDADE: TAutoIncField
      FieldName = 'ID_CIDADE'
      ReadOnly = True
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryPesquisaUF: TStringField
      FieldName = 'UF'
      Size = 255
    end
    object qryPesquisaCODIBGE: TStringField
      FieldName = 'CODIBGE'
      Size = 255
    end
  end
  object qryAUx: TADOQuery
    AutoCalcFields = False
    Connection = DM.Conexao
    CursorLocation = clUseServer
    Parameters = <>
    SQL.Strings = (
      'SELECT ID_CIDADE, NOME, UF, CODIBGE FROM CIDADE')
    Left = 203
    Top = 264
    object AutoIncField1: TAutoIncField
      FieldName = 'ID_CIDADE'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object StringField2: TStringField
      FieldName = 'UF'
      Size = 255
    end
    object StringField3: TStringField
      FieldName = 'CODIBGE'
      Size = 255
    end
  end
end
