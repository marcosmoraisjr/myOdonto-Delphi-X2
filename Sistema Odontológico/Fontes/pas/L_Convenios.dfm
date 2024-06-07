inherited frmListaConvenios: TfrmListaConvenios
  ClientHeight = 541
  ClientWidth = 508
  OnCreate = FormCreate
  ExplicitTop = -150
  ExplicitWidth = 514
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    Width = 508
    Height = 382
    TabOrder = 1
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CONVENIO'
        Title.Caption = 'Cod.'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Conv'#234'nio/Tabela'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGISTROANS'
        Title.Caption = 'Registro ANS'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMETABELA'
        Title.Caption = 'Tabela Ref'
        Width = 184
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Width = 508
    Caption = 'Lista de Conv'#234'nios'
    ExplicitWidth = 508
  end
  inherited StatusBar1: TStatusBar
    Top = 517
    Width = 508
    ExplicitTop = 517
    ExplicitWidth = 508
  end
  inherited gbNome: TGroupBox
    Width = 508
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 508
    inherited EdtLoc: TJvDBSearchEdit
      Width = 473
      DataField = 'NOME'
      Text = 'Particular'
      ExplicitWidth = 473
    end
  end
  object Cod: TDBEdit [4]
    Left = 8
    Top = 388
    Width = 33
    Height = 21
    DataField = 'ID_CONVENIO'
    DataSource = dsAux
    TabOrder = 5
    Visible = False
  end
  inherited GroupBox1: TGroupBox
    Top = 476
    Width = 508
    ExplicitTop = 476
    ExplicitWidth = 508
    inherited btnAdicionar: TcxButton
      OnClick = btnAdicionarClick
    end
    inherited btnEditar: TcxButton
      OnClick = btnEditarClick
    end
    inherited btnSelecionar: TcxButton
      OnClick = btnSelecionarClick
    end
    inherited btnFechar: TcxButton
      Left = 401
      ExplicitLeft = 401
    end
  end
  inherited qryPesquisa: TADOQuery
    Active = True
    SQL.Strings = (
      'SELECT * FROM CONVENIOS')
    Left = 251
    object qryPesquisaREGISTROANS: TStringField
      FieldName = 'REGISTROANS'
      Size = 6
    end
    object qryPesquisaNOMETABELA: TStringField
      FieldName = 'NOMETABELA'
      Size = 200
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object qryPesquisaID_CONVENIO: TAutoIncField
      FieldName = 'ID_CONVENIO'
      ReadOnly = True
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
