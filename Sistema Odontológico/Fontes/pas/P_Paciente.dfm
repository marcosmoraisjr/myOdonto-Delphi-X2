inherited frmPesquisaPaciente: TfrmPesquisaPaciente
  ExplicitTop = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited gLista: TJvDBGrid
    Height = 382
    TabOrder = 1
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PACIENTE'
        Title.Caption = 'Cod'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Celular'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONVENIO'
        Title.Caption = 'Convenio'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idade'
        Width = 38
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Caption = 'Lista de Pacientes'
  end
  inherited gbNome: TGroupBox
    TabOrder = 2
    inherited EdtLoc: TJvDBSearchEdit
      Width = 473
      DataField = 'NOME'
      Text = 'Eva Aderiles Marchesi'
      ExplicitWidth = 473
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
      
        'SELECT datediff(yy, DtaNasc, getdate()) as Idade, PACIENTE.ID_PA' +
        'CIENTE, PACIENTE.ID_CIDADE, PACIENTE.ID_CONVENIO, PACIENTE.NOME,' +
        ' PACIENTE.CPF, PACIENTE.RG, PACIENTE.DTANASC, PACIENTE.SEXO, PAC' +
        'IENTE.ENDERECO, PACIENTE.NRO,'
      
        'PACIENTE.BAIRRO, PACIENTE.CEP, PACIENTE.TELEFONE, PACIENTE.CELUL' +
        'AR, PACIENTE.EMAIL, PACIENTE.NOMEPAI, PACIENTE.NOMEMAE,'
      
        'PACIENTE.EMPRESA, PACIENTE.FUNCAO, CONVENIOS.NOME as CONVENIO, C' +
        'IDADE.NOME AS CIDADE, CIDADE.UF, PACIENTE.OBSERVACAO, PACIENTE.A' +
        'TIVO FROM PACIENTE'
      'LEFT JOIN CIDADE ON PACIENTE.ID_CIDADE = CIDADE.ID_CIDADE'
      
        'LEFT JOIN CONVENIOS ON CONVENIOS.ID_CONVENIO = PACIENTE.ID_CONVE' +
        'NIO'
      'WHERE PACIENTE.ATIVO <> '#39'0'#39)
    object qryPesquisaID_PACIENTE: TAutoIncField
      FieldName = 'ID_PACIENTE'
      ReadOnly = True
    end
    object qryPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryPesquisaCPF: TStringField
      FieldName = 'CPF'
      Size = 255
    end
    object qryPesquisaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 255
    end
    object qryPesquisaCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 255
    end
    object qryPesquisaIdade: TIntegerField
      FieldName = 'Idade'
      ReadOnly = True
    end
  end
end
