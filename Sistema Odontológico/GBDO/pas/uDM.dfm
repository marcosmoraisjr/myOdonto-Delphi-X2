object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 222
  Width = 332
  object Conexao: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=f15afn7;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=ODONTOSIS;Data Source=.\ODONTOSIS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 168
    Top = 56
  end
  object qryAux: TADOQuery
    Connection = Conexao
    Parameters = <>
    Left = 16
    Top = 56
  end
  object qryAux2: TADOQuery
    Connection = Conexao
    Parameters = <>
    Left = 24
  end
end
