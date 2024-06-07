inherited frmPesquisaContasBancarias: TfrmPesquisaContasBancarias
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
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 294
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NROCONTA'
        Title.Caption = 'N'#186' Conta'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NROAGENCIA'
        Title.Caption = 'N'#186' Agencia'
        Width = 91
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Contas Banc'#225'rias'
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
  end
  inherited qryPesquisa: TADOQuery
    SQL.Strings = (
      
        'SELECT ID_CONTASBANCARIAS, ID_BANCOSPADRAO, ID_FILIAL, ID_CIDADE' +
        ', DESCRICAO, VLRLIMITE, DTAVCTO, NROCONTA, NROAGENCIA, GERENTE, ' +
        'ATIVO, JUROSMORA, '
      
        ' ACEITE, CODCEDENTE, LOCALPAGAMENTO, INSTRUCOES, CNPJ FROM CONTA' +
        'SBANCARIAS WHERE (ATIVO = 1)')
    object qryPesquisaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object qryPesquisaNROCONTA: TStringField
      FieldName = 'NROCONTA'
      Size = 50
    end
    object qryPesquisaID_CONTASBANCARIAS: TAutoIncField
      FieldName = 'ID_CONTASBANCARIAS'
      ReadOnly = True
    end
    object qryPesquisaID_BANCOSPADRAO: TIntegerField
      FieldName = 'ID_BANCOSPADRAO'
    end
    object qryPesquisaID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object qryPesquisaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qryPesquisaVLRLIMITE: TFloatField
      FieldName = 'VLRLIMITE'
    end
    object qryPesquisaDTAVCTO: TDateTimeField
      FieldName = 'DTAVCTO'
    end
    object qryPesquisaNROAGENCIA: TStringField
      FieldName = 'NROAGENCIA'
      Size = 50
    end
    object qryPesquisaGERENTE: TStringField
      FieldName = 'GERENTE'
      Size = 100
    end
    object qryPesquisaATIVO: TBooleanField
      FieldName = 'ATIVO'
    end
    object qryPesquisaJUROSMORA: TFloatField
      FieldName = 'JUROSMORA'
    end
    object qryPesquisaACEITE: TBooleanField
      FieldName = 'ACEITE'
    end
    object qryPesquisaCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 100
    end
    object qryPesquisaLOCALPAGAMENTO: TStringField
      FieldName = 'LOCALPAGAMENTO'
      Size = 100
    end
    object qryPesquisaINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 100
    end
    object qryPesquisaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 100
    end
  end
end
