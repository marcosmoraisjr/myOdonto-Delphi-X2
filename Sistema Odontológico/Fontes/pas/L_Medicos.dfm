inherited frmListaMedicos: TfrmListaMedicos
  OnCreate = FormCreate
  ExplicitTop = 8
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Lista de Dentistas'
  end
  inherited gLista: TJvDBGrid
    OnDblClick = gListaDblClick
    TitleButtons = True
    OnTitleBtnClick = gListaTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MEDICO'
        Title.Caption = 'Cod.'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTANASC'
        Title.Caption = 'Dta. Nasc.'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Celular'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Width = 85
        Visible = True
      end>
  end
  inherited GroupBox1: TGroupBox
    inherited EdtPesquisa: TJvDBSearchEdit
      Width = 601
      DataField = 'NOME'
      Text = 'Janaina Menegussi Capelezzo'
      ExplicitWidth = 601
    end
    inherited cbAtivo: TcxCheckBox
      Left = 620
      Top = 24
      ExplicitLeft = 620
      ExplicitTop = 24
      ExplicitHeight = 0
    end
  end
  inherited btnAdicionar: TcxButton
    OnClick = btnAdicionarClick
  end
  inherited btnEditar: TcxButton
    OnClick = btnEditarClick
  end
  inherited Enter: TJvEnterAsTab
    Left = 496
    Top = 320
  end
  inherited qryPadrao: TADOQuery
    Active = True
    SQL.Strings = (
      
        'SELECT MEDICOS.NOME, MEDICOS.CPF, MEDICOS.ID_MEDICO, MEDICOS.RG,' +
        ' MEDICOS.DTANASC, MEDICOS.SEXO, MEDICOS.ENDERECO, '
      
        'MEDICOS.NRO, MEDICOS.BAIRRO, MEDICOS.CEP, MEDICOS.TELEFONE, MEDI' +
        'COS.CELULAR, MEDICOS.EMAIL, MEDICOS.CRO, '
      
        'MEDICOS.UFCONSELHO, MEDICOS.CBOS, MEDICOS.CodCNES, MEDICOS.SALAR' +
        'IO, MEDICOS.OBSERVACAO, MEDICOS.Ativo, '
      'CIDADE.NOME AS Cidade, CIDADE.UF FROM MEDICOS'
      'INNER JOIN CIDADE ON MEDICOS.ID_CIDADE = CIDADE.ID_CIDADE')
    Left = 432
    Top = 193
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryPadraoCPF: TStringField
      FieldName = 'CPF'
      Size = 255
    end
    object qryPadraoID_MEDICO: TAutoIncField
      FieldName = 'ID_MEDICO'
      ReadOnly = True
    end
    object qryPadraoRG: TStringField
      FieldName = 'RG'
      Size = 255
    end
    object qryPadraoDTANASC: TDateTimeField
      FieldName = 'DTANASC'
    end
    object qryPadraoSEXO: TStringField
      FieldName = 'SEXO'
      Size = 255
    end
    object qryPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 255
    end
    object qryPadraoNRO: TStringField
      FieldName = 'NRO'
      Size = 255
    end
    object qryPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 255
    end
    object qryPadraoCEP: TStringField
      FieldName = 'CEP'
      Size = 255
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 255
    end
    object qryPadraoCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 255
    end
    object qryPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object qryPadraoCRO: TStringField
      FieldName = 'CRO'
    end
    object qryPadraoUFCONSELHO: TStringField
      FieldName = 'UFCONSELHO'
      Size = 2
    end
    object qryPadraoCBOS: TIntegerField
      FieldName = 'CBOS'
    end
    object qryPadraoSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object qryPadraoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryPadraoAtivo: TStringField
      FieldName = 'Ativo'
      Size = 1
    end
    object qryPadraoCidade: TStringField
      FieldName = 'Cidade'
      Size = 255
    end
    object qryPadraoUF: TStringField
      FieldName = 'UF'
      Size = 255
    end
    object qryPadraoCodCNES: TStringField
      FieldName = 'CodCNES'
      Size = 25
    end
  end
end
