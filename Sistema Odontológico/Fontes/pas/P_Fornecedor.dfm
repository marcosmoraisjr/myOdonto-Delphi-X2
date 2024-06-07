inherited frmPesquisaFornecedor: TfrmPesquisaFornecedor
  ExplicitTop = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    Height = 382
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'Cod'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 238
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 224
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Pesquisa de Fornecedores'
  end
  inherited gbNome: TGroupBox
    inherited EdtLoc: TJvDBSearchEdit
      DataField = 'NOME'
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
  end
  inherited qryPesquisa: TADOQuery
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
    object qryPesquisaID_FORNECEDOR: TAutoIncField
      FieldName = 'ID_FORNECEDOR'
      ReadOnly = True
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryPesquisaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 200
    end
    object qryPesquisaID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object qryPesquisaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qryPesquisaFISICA_JURIDICA: TIntegerField
      FieldName = 'FISICA_JURIDICA'
    end
    object qryPesquisaATIVO: TBooleanField
      FieldName = 'ATIVO'
    end
    object qryPesquisaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 60
    end
    object qryPesquisaRGIE: TStringField
      FieldName = 'RGIE'
      Size = 60
    end
    object qryPesquisaDTANASCIMENTO: TDateTimeField
      FieldName = 'DTANASCIMENTO'
    end
    object qryPesquisaSEXO: TStringField
      FieldName = 'SEXO'
    end
    object qryPesquisaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qryPesquisaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object qryPesquisaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object qryPesquisaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 30
    end
    object qryPesquisaCEP: TStringField
      FieldName = 'CEP'
      Size = 30
    end
    object qryPesquisaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object qryPesquisaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 30
    end
    object qryPesquisaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryPesquisaCidade: TStringField
      FieldName = 'Cidade'
      Size = 255
    end
    object qryPesquisaUF: TStringField
      FieldName = 'UF'
      Size = 255
    end
  end
end
