inherited frmEdtMedico: TfrmEdtMedico
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Caption = 'Editar Dentista'
  end
  inherited PageControl1: TPageControl
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 441
      ExplicitHeight = 259
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 441
      ExplicitHeight = 259
      inherited GroupBox3: TGroupBox
        inherited EdtVlr: TcxCurrencyEdit
          Style.IsFontAssigned = True
        end
      end
    end
    inherited TabSheet3: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 441
      ExplicitHeight = 259
    end
  end
  inherited qryCadastro: TADOQuery
    SQL.Strings = (
      
        'SELECT ID_MEDICO, MEDICOS.NOME, MEDICOS.CPF, MEDICOS.RG, MEDICOS' +
        '.DTANASC, MEDICOS.SEXO,'
      
        'MEDICOS.ENDERECO, MEDICOS.NRO, MEDICOS.BAIRRO, MEDICOS.CEP, MEDI' +
        'COS.ID_CIDADE, MEDICOS.TELEFONE, MEDICOS.CELULAR,'
      
        'MEDICOS.EMAIL, MEDICOS.CONSELHO,MEDICOS.NROCONSELHO,  MEDICOS.UF' +
        'CONSELHO, MEDICOS.CODCBOS, MEDICOS.ESPECIALIDADE, MEDICOS.SALARI' +
        'O, MEDICOS.OBSERVACAO,'
      'MEDICOS.ATIVO, CIDADE.NOME AS CIDADE, CIDADE.UF FROM MEDICOS'
      'LEFT JOIN CIDADE ON MEDICOS.ID_CIDADE = CIDADE.ID_CIDADE')
  end
end
