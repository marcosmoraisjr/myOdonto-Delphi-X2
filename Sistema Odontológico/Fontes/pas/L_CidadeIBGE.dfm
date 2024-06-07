inherited frmPesquisaCidadeIBGE: TfrmPesquisaCidadeIBGE
  OnCreate = FormCreate
  ExplicitTop = -4
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    TabOrder = 1
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIBGE'
        Title.Caption = 'Cod. IBGE'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 375
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 51
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Cidades IBGE'
  end
  inherited gbNome: TGroupBox
    Caption = 'Cidade'
    TabOrder = 2
    inherited EdtLoc: TJvDBSearchEdit
      DataField = 'NOME'
      Text = 'EdtLoc'
    end
  end
  object Cod: TDBEdit [4]
    Left = 80
    Top = 384
    Width = 25
    Height = 21
    DataField = 'CODIBGE'
    DataSource = dsAux
    TabOrder = 5
    Visible = False
  end
  inherited GroupBox1: TGroupBox
    inherited btnSelecionar: TcxButton
      OnClick = btnSelecionarClick
    end
  end
  inherited qryPesquisa: TADOQuery
    SQL.Strings = (
      'select * from MUNICIPIOIBGE'
      'order by NOME')
    object qryPesquisaCODIBGE: TStringField
      DisplayWidth = 23
      FieldName = 'CODIBGE'
      Size = 255
    end
    object qryPesquisaNOME: TStringField
      DisplayWidth = 23
      FieldName = 'NOME'
      Size = 255
    end
    object qryPesquisaUF: TStringField
      DisplayWidth = 23
      FieldName = 'UF'
      Size = 255
    end
  end
end
