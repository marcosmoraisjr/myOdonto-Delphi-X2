inherited frmListaContasBancarias: TfrmListaContasBancarias
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Contas Banc'#225'rias'
  end
  inherited gLista: TJvDBGrid
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CONTASBANCARIAS'
        Title.Caption = 'Cod.'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLIMITE'
        Title.Caption = 'Limite'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTAVCTO'
        Title.Caption = 'Data Vcto.'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NROCONTA'
        Title.Caption = 'Nro. Conta'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NROAGENCIA'
        Title.Caption = 'Nro. Ag'#234'ncia'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GERENTE'
        Title.Caption = 'Gerente'
        Width = 119
        Visible = True
      end>
  end
  inherited GroupBox1: TGroupBox
    Caption = 'Descri'#231#227'o'
    inherited EdtPesquisa: TJvDBSearchEdit
      DataField = 'DESCRICAO'
    end
  end
  inherited btnAdicionar: TcxButton
    OnClick = btnAdicionarClick
  end
  inherited btnEditar: TcxButton
    OnClick = btnEditarClick
  end
  inherited qryPadrao: TADOQuery
    SQL.Strings = (
      'SELECT * FROM CONTASBANCARIAS')
    object qryPadraoID_CONTASBANCARIAS: TAutoIncField
      FieldName = 'ID_CONTASBANCARIAS'
      ReadOnly = True
    end
    object qryPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object qryPadraoVLRLIMITE: TFloatField
      FieldName = 'VLRLIMITE'
      DisplayFormat = '#,##0.00'
    end
    object qryPadraoDTAVCTO: TDateTimeField
      FieldName = 'DTAVCTO'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object qryPadraoNROCONTA: TStringField
      FieldName = 'NROCONTA'
      Size = 50
    end
    object qryPadraoNROAGENCIA: TStringField
      FieldName = 'NROAGENCIA'
      Size = 50
    end
    object qryPadraoGERENTE: TStringField
      FieldName = 'GERENTE'
      Size = 100
    end
    object qryPadraoID_BANCOSPADRAO: TIntegerField
      FieldName = 'ID_BANCOSPADRAO'
    end
    object qryPadraoID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object qryPadraoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qryPadraoATIVO: TBooleanField
      FieldName = 'ATIVO'
    end
    object qryPadraoJUROSMORA: TFloatField
      FieldName = 'JUROSMORA'
    end
    object qryPadraoACEITE: TBooleanField
      FieldName = 'ACEITE'
    end
    object qryPadraoCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 100
    end
    object qryPadraoLOCALPAGAMENTO: TStringField
      FieldName = 'LOCALPAGAMENTO'
      Size = 100
    end
    object qryPadraoINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 100
    end
    object qryPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 100
    end
  end
end
