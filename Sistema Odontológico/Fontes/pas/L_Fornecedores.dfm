inherited frmListaFornecedores: TfrmListaFornecedores
  OnCreate = FormCreate
  ExplicitTop = 8
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Fornecedores'
  end
  inherited gLista: TJvDBGrid
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'Cod'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPFCNPJ'
        Title.Caption = 'CPF / CNPJ'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 96
        Visible = True
      end>
  end
  inherited GroupBox1: TGroupBox
    Caption = 'Filtros'
    inherited EdtPesquisa: TJvDBSearchEdit
      Width = 582
      DataField = 'NOME'
      ExplicitWidth = 582
    end
    inherited cbAtivo: TcxCheckBox
      Top = 24
      ExplicitTop = 24
      ExplicitHeight = 0
    end
    object cbFiltro: TComboBox
      Left = 620
      Top = -9
      Width = 119
      Height = 27
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'Nome'
      Visible = False
      Items.Strings = (
        'Nome'
        'Raz'#227'o Social'
        'CPF/ CNPJ'
        'Telefone')
    end
  end
  inherited btnAdicionar: TcxButton
    OnClick = btnAdicionarClick
  end
  inherited btnEditar: TcxButton
    OnClick = btnEditarClick
  end
  inherited Enter: TJvEnterAsTab
    Left = 424
    Top = 8
  end
  inherited qryPadrao: TADOQuery
    SQL.Strings = (
      
        'SELECT FORNECEDOR.ID_FORNECEDOR, FORNECEDOR.ID_FILIAL, FORNECEDO' +
        'R.ID_CIDADE, FORNECEDOR.FISICA_JURIDICA, FORNECEDOR.ATIVO, '
      
        'FORNECEDOR.NOME, FORNECEDOR.RAZAOSOCIAL, FORNECEDOR.CPFCNPJ, FOR' +
        'NECEDOR.RGIE, FORNECEDOR.DTANASCIMENTO, FORNECEDOR.SEXO, '
      
        'FORNECEDOR.NUMERO, FORNECEDOR.ENDERECO, FORNECEDOR.BAIRRO, FORNE' +
        'CEDOR.TELEFONE, FORNECEDOR.CEP, FORNECEDOR.EMAIL, FORNECEDOR.CEL' +
        'ULAR,'
      
        'FORNECEDOR.OBSERVACAO, CIDADE.NOME AS Cidade, CIDADE.UF FROM FOR' +
        'NECEDOR '
      'INNER JOIN CIDADE ON FORNECEDOR.ID_CIDADE = CIDADE.ID_CIDADE')
    Left = 472
    Top = 65529
    object qryPadraoID_FORNECEDOR: TAutoIncField
      FieldName = 'ID_FORNECEDOR'
      ReadOnly = True
    end
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryPadraoRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 200
    end
    object qryPadraoCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 60
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 30
    end
    object qryPadraoID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object qryPadraoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qryPadraoFISICA_JURIDICA: TIntegerField
      FieldName = 'FISICA_JURIDICA'
    end
    object qryPadraoATIVO: TBooleanField
      FieldName = 'ATIVO'
    end
    object qryPadraoRGIE: TStringField
      FieldName = 'RGIE'
      Size = 60
    end
    object qryPadraoDTANASCIMENTO: TDateTimeField
      FieldName = 'DTANASCIMENTO'
    end
    object qryPadraoSEXO: TStringField
      FieldName = 'SEXO'
    end
    object qryPadraoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qryPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object qryPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object qryPadraoCEP: TStringField
      FieldName = 'CEP'
      Size = 30
    end
    object qryPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object qryPadraoCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 30
    end
    object qryPadraoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryPadraoCidade: TStringField
      FieldName = 'Cidade'
      Size = 255
    end
    object qryPadraoUF: TStringField
      FieldName = 'UF'
      Size = 255
    end
  end
  inherited dsPadrao: TDataSource
    Left = 536
    Top = 65532
  end
end
