object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 295
  Width = 775
  object Conexao: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=12345;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=ODONTOSIS;Data Source=.\ODONTOSIS;Appli' +
      'cation Name=Odontosis'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 64
  end
  object qryAux: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ID_OP, DTDEMO, DTULOGIN, DTVENCIMENTO, CCOD, CCCOD, SERIA' +
        'LHD, DEMO from OPINT')
    Left = 211
    Top = 14
  end
  object qryAux2: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ID_OP, DTDEMO, DTULOGIN, DTVENCIMENTO, CCOD, CCCOD, SERIA' +
        'LHD, DEMO from OPINT')
    Left = 195
    Top = 102
  end
  object Envia: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 352
    Top = 64
  end
  object OdontosisWeb: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 144
    Top = 64
  end
  object qryOdontosis: TADOQuery
    Connection = OdontosisWeb
    Parameters = <>
    Left = 32
    Top = 160
  end
end
