inherited frmListaConsultorios: TfrmListaConsultorios
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Lista de Consult'#243'rios'
  end
  inherited gLista: TJvDBGrid
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_EMPRESA'
        Title.Caption = 'Filial'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Celular'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Width = 93
        Visible = True
      end>
  end
  inherited GroupBox1: TGroupBox
    inherited EdtPesquisa: TJvDBSearchEdit
      Top = 26
      Width = 666
      DataField = 'NOME'
      Text = 'Janaina Menegussi Capelezzo'
      ExplicitTop = 26
      ExplicitWidth = 666
    end
    inherited cbAtivo: TcxCheckBox
      Left = 684
      Top = 3
      Visible = False
      ExplicitLeft = 684
      ExplicitTop = 3
    end
  end
  inherited btnAdicionar: TcxButton
    Left = 224
    Top = 251
    Visible = False
    OnClick = nil
    ExplicitLeft = 224
    ExplicitTop = 251
  end
  inherited btnEditar: TcxButton
    Left = 0
    Top = 448
    OnClick = btnEditarClick
    ExplicitLeft = 0
    ExplicitTop = 448
  end
  inherited qryPadrao: TADOQuery
    Active = True
    SQL.Strings = (
      
        'SELECT EMPRESA.ID_EMPRESA, EMPRESA.ID_FILIAL, EMPRESA.ID_CIDADE,' +
        ' EMPRESA.NOME, EMPRESA.RAZAOSOCIAL, EMPRESA.ENDERECO, '
      
        'EMPRESA.NUMERO, EMPRESA.BAIRRO, EMPRESA.CEP, EMPRESA.TELEFONE, E' +
        'MPRESA.FAX, EMPRESA.CONTATO, EMPRESA.CNPJ, '
      
        'EMPRESA.IE, EMPRESA.EMAIL, EMPRESA.TIPO, EMPRESA.CELULAR, CIDADE' +
        '.NOME AS Cidade FROM EMPRESA '
      'INNER JOIN CIDADE ON EMPRESA.ID_CIDADE = CIDADE.ID_CIDADE')
    object qryPadraoID_EMPRESA: TAutoIncField
      FieldName = 'ID_EMPRESA'
      ReadOnly = True
    end
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qryPadraoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object qryPadraoCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qryPadraoCidade: TStringField
      FieldName = 'Cidade'
      Size = 255
    end
  end
end
