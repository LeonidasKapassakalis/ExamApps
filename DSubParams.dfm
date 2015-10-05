inherited DMSubParams: TDMSubParams
  OldCreateOrder = True
  OnCreate = DMSubParamsCreate
  Height = 496
  Width = 656
  object dsKategory: TDataSource
    AutoEdit = False
    DataSet = Kategory
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 16
  end
  object Kategory: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'Kategory'
    Left = 24
    Top = 16
    object KategoryId: TIntegerField
      FieldName = 'Id'
    end
    object KategoryPerig: TWideStringField
      FieldName = 'Perig'
      Size = 50
    end
    object KategoryInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Visible = False
    end
    object KategoryInsDT: TDateTimeField
      FieldName = 'InsDT'
      Visible = False
    end
    object KategoryUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
      Visible = False
    end
    object KategoryUpdDT: TDateTimeField
      FieldName = 'UpdDT'
      Visible = False
    end
  end
  object dsCustomerLoc: TDataSource
    AutoEdit = False
    DataSet = CustomerLoc
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 88
  end
  object CustomerLoc: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'VIEW1'
    Left = 24
    Top = 88
    object CustomerLocSAPID: TStringField
      FieldName = 'SAPID'
      FixedChar = True
      Size = 10
    end
    object CustomerLocNAME: TStringField
      FieldName = 'NAME'
      FixedChar = True
      Size = 100
    end
    object CustomerLocID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object CustomerPar: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'VIEW2'
    Left = 24
    Top = 160
    object CustomerParPelaId: TStringField
      FieldName = 'PelaId'
      FixedChar = True
      Size = 10
    end
    object CustomerParNamePel: TStringField
      FieldName = 'NamePel'
      FixedChar = True
      Size = 100
    end
    object CustomerParParId: TStringField
      FieldName = 'ParId'
      FixedChar = True
      Size = 10
    end
    object CustomerParNameSH: TStringField
      FieldName = 'NameSH'
      FixedChar = True
      Size = 100
    end
  end
  object dsCustomerPar: TDataSource
    AutoEdit = False
    DataSet = CustomerPar
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 160
  end
  object CustomerAddr: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'SAPADDR'
    Left = 24
    Top = 232
    object CustomerAddrID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object CustomerAddrSapId: TStringField
      FieldName = 'SapId'
      FixedChar = True
      Size = 10
    end
    object CustomerAddrAddrId: TStringField
      FieldName = 'AddrId'
      FixedChar = True
      Size = 10
    end
    object CustomerAddrAddr: TStringField
      FieldName = 'Addr'
      FixedChar = True
      Size = 100
    end
  end
  object dsCustomerAddr: TDataSource
    AutoEdit = False
    DataSet = CustomerAddr
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 232
  end
  object DateFile: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'DateFile'
    Left = 504
    Top = 88
    object DateFileId: TIntegerField
      FieldName = 'Id'
    end
    object DateFileDateTime: TDateTimeField
      FieldName = 'DateTime'
    end
  end
  object dsDateFile: TDataSource
    AutoEdit = False
    DataSet = DateFile
    OnStateChange = dsCountryStateChange
    Left = 576
    Top = 88
  end
  object dsSapOmnisProd: TDataSource
    AutoEdit = False
    DataSet = SapOmnisProd
    OnStateChange = dsCountryStateChange
    Left = 584
    Top = 16
  end
  object SapOmnisProd: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'SapOmnisProd'
    Left = 504
    Top = 16
    object SapOmnisProdId: TIntegerField
      FieldName = 'Id'
    end
    object SapOmnisProdSapId: TStringField
      FieldName = 'SapId'
      FixedChar = True
      Size = 18
    end
    object SapOmnisProdOmnisId: TStringField
      FieldName = 'OmnisId'
      FixedChar = True
      Size = 2
    end
  end
  object StationData: TADOTable
    Connection = DMMain.ADOConnection1
    CursorType = ctStatic
    TableDirect = True
    TableName = 'AC_STATION_DATA'
    Left = 504
    Top = 160
    object StationDatasta_id: TBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'sta_id'
      Precision = 15
      Size = 0
    end
    object StationDatasta_owner: TStringField
      FieldName = 'sta_owner'
      Size = 50
    end
    object StationDatasta_address: TStringField
      FieldName = 'sta_address'
      Size = 50
    end
    object StationDatasta_contact_person: TStringField
      FieldName = 'sta_contact_person'
      Size = 50
    end
    object StationDatasta_code: TStringField
      FieldName = 'sta_code'
      Size = 6
    end
    object StationDatasta_first_data_date: TDateTimeField
      FieldName = 'sta_first_data_date'
    end
    object StationDatasta_status: TWordField
      FieldName = 'sta_status'
    end
  end
  object dsStationData: TDataSource
    AutoEdit = False
    DataSet = StationData
    OnStateChange = dsCountryStateChange
    Left = 576
    Top = 160
  end
  object IPType: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'IPType'
    Left = 24
    Top = 304
    object IPTypeid: TIntegerField
      FieldName = 'id'
    end
    object IPTypeIPType: TWideStringField
      FieldName = 'IPType'
      FixedChar = True
      Size = 50
    end
    object IPTypeInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object IPTypeInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object IPTypeUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object IPTypeUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object IPTypeDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object IPTypeDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object IPTypeDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
  end
  object dsIPType: TDataSource
    AutoEdit = False
    DataSet = IPType
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 304
  end
  object PhoneType: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'PhoneType'
    Left = 24
    Top = 368
    object PhoneTypeid: TIntegerField
      FieldName = 'id'
    end
    object PhoneTypePhoneType: TWideStringField
      FieldName = 'PhoneType'
      FixedChar = True
      Size = 50
    end
    object PhoneTypeInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object PhoneTypeInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object PhoneTypeUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object PhoneTypeUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object PhoneTypeDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object PhoneTypeDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object PhoneTypeDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
  end
  object dsPhoneType: TDataSource
    AutoEdit = False
    DataSet = PhoneType
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 368
  end
  object MakPhone: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'MakPhone'
    Left = 240
    Top = 16
    object MakPhoneId: TIntegerField
      FieldName = 'Id'
    end
    object MakPhonePhone: TStringField
      FieldName = 'Phone'
      FixedChar = True
      Size = 10
    end
    object MakPhoneInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object MakPhoneInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object MakPhoneUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object MakPhoneUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object MakPhoneDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object MakPhoneDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object MakPhoneDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
  end
  object dsMakPhone: TDataSource
    AutoEdit = False
    DataSet = MakPhone
    OnStateChange = dsCountryStateChange
    Left = 320
    Top = 16
  end
  object MakIP: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    OnCalcFields = MakIPCalcFields
    TableDirect = True
    TableName = 'MakIP'
    Left = 240
    Top = 80
    object MakIPid: TIntegerField
      FieldName = 'id'
    end
    object MakIPIP0: TSmallintField
      FieldName = 'IP0'
    end
    object MakIPIP1: TSmallintField
      FieldName = 'IP1'
    end
    object MakIPIP2: TSmallintField
      FieldName = 'IP2'
    end
    object MakIPIP3: TSmallintField
      FieldName = 'IP3'
    end
    object MakIPPort: TSmallintField
      FieldName = 'Port'
    end
    object MakIPComment: TWideStringField
      FieldName = 'Comment'
      FixedChar = True
      Size = 10
    end
    object MakIPInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object MakIPInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object MakIPUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object MakIPUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object MakIPDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object MakIPDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object MakIPDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object MakIPTextIP: TStringField
      FieldKind = fkCalculated
      FieldName = 'TextIP'
      Size = 15
      Calculated = True
    end
  end
  object dsMakIP: TDataSource
    AutoEdit = False
    DataSet = MakIP
    OnStateChange = dsCountryStateChange
    Left = 320
    Top = 80
  end
  object ConnUPIP: TADOTable
    Connection = DMMain.ADOConnection
    CursorLocation = clUseServer
    BeforePost = tCountryBeforePost
    OnFilterRecord = ConnUPIPFilterRecord
    TableDirect = True
    TableName = 'ConnUPIP'
    Left = 240
    Top = 144
    object ConnUPIPUserName: TWideStringField
      DisplayWidth = 50
      FieldName = 'UserName'
      Size = 100
    end
    object ConnUPIPpassword: TWideStringField
      FieldName = 'password'
    end
    object ConnUPIPLPhoneId: TStringField
      FieldKind = fkLookup
      FieldName = 'LPhoneId'
      LookupDataSet = MakPhone
      LookupKeyFields = 'Id'
      LookupResultField = 'Phone'
      KeyFields = 'PhoneId'
      Lookup = True
    end
    object ConnUPIPLLanIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LLanIP'
      LookupDataSet = MakIP
      LookupKeyFields = 'id'
      LookupResultField = 'TextIP'
      KeyFields = 'LanIP'
      Lookup = True
    end
    object ConnUPIPLLBIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LLBIP'
      LookupDataSet = MakIP
      LookupKeyFields = 'id'
      LookupResultField = 'TextIP'
      KeyFields = 'LoopBack'
      LookupCache = True
      Lookup = True
    end
    object ConnUPIPLWanIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LWanIP'
      LookupDataSet = MakIP
      LookupKeyFields = 'id'
      LookupResultField = 'TextIP'
      KeyFields = 'WanIP'
      LookupCache = True
      Lookup = True
    end
    object ConnUPIPComment: TWideStringField
      FieldName = 'Comment'
      Size = 50
    end
    object ConnUPIPStaticIP: TIntegerField
      FieldName = 'StaticIP'
    end
    object ConnUPIPPhoneId: TIntegerField
      FieldName = 'PhoneId'
    end
    object ConnUPIPLanIP: TIntegerField
      FieldName = 'LanIP'
    end
    object ConnUPIPWanIP: TIntegerField
      FieldName = 'WanIP'
    end
    object ConnUPIPLoopBack: TIntegerField
      FieldName = 'LoopBack'
    end
    object ConnUPIPInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ConnUPIPInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object ConnUPIPUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object ConnUPIPUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object ConnUPIPDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object ConnUPIPDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object ConnUPIPDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
  end
  object dsConnUPIP: TDataSource
    AutoEdit = False
    DataSet = ConnUPIP0
    OnStateChange = dsCountryStateChange
    Left = 320
    Top = 144
  end
  object ConnUPIP0: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from ConnUPIP'
      'Where  1=1 '
      '/*Filter*/')
    Left = 240
    Top = 224
    object ConnUPIP0PhoneId: TIntegerField
      FieldName = 'PhoneId'
    end
    object ConnUPIP0UserName: TWideStringField
      FieldName = 'UserName'
      Size = 100
    end
    object ConnUPIP0password: TWideStringField
      FieldName = 'password'
    end
    object ConnUPIP0StaticIP: TIntegerField
      FieldName = 'StaticIP'
    end
    object ConnUPIP0LanIP: TIntegerField
      FieldName = 'LanIP'
    end
    object ConnUPIP0LLan: TStringField
      FieldKind = fkLookup
      FieldName = 'LLanIP'
      LookupDataSet = MakIP0
      LookupKeyFields = 'id'
      LookupResultField = 'TextIP'
      KeyFields = 'LanIP'
      Lookup = True
    end
    object ConnUPIP0WanIP: TIntegerField
      FieldName = 'WanIP'
    end
    object ConnUPIP0LWan: TStringField
      FieldKind = fkLookup
      FieldName = 'LWanIP'
      LookupDataSet = MakIP0
      LookupKeyFields = 'id'
      LookupResultField = 'TextIP'
      KeyFields = 'WanIP'
      Lookup = True
    end
    object ConnUPIP0LoopBack: TIntegerField
      FieldName = 'LoopBack'
    end
    object ConnUPIP0Comment: TWideStringField
      FieldName = 'Comment'
      Size = 50
    end
    object ConnUPIP0InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ConnUPIP0InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object ConnUPIP0UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object ConnUPIP0UpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object ConnUPIP0Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object ConnUPIP0DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object ConnUPIP0DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
  end
  object MakIP0: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = MakIP0CalcFields
    Parameters = <>
    SQL.Strings = (
      'Select * from MakIP')
    Left = 240
    Top = 296
    object MakIP0TextIP: TStringField
      FieldKind = fkCalculated
      FieldName = 'TextIP'
      Size = 15
      Calculated = True
    end
    object MakIP0id: TIntegerField
      FieldName = 'id'
    end
    object MakIP0IP0: TSmallintField
      FieldName = 'IP0'
    end
    object MakIP0IP1: TSmallintField
      FieldName = 'IP1'
    end
    object MakIP0IP2: TSmallintField
      FieldName = 'IP2'
    end
    object MakIP0IP3: TSmallintField
      FieldName = 'IP3'
    end
    object MakIP0Port: TSmallintField
      FieldName = 'Port'
    end
    object MakIP0Comment: TWideStringField
      FieldName = 'Comment'
      FixedChar = True
      Size = 10
    end
    object MakIP0InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object MakIP0InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object MakIP0UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object MakIP0UpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object MakIP0Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object MakIP0DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object MakIP0DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
  end
  object dsMakIP0: TDataSource
    AutoEdit = False
    DataSet = MakIP0
    OnStateChange = dsCountryStateChange
    Left = 320
    Top = 296
  end
  object STATIONDATAFC: TADOTable
    Connection = DMMain.ADOConnection1
    CursorType = ctStatic
    TableDirect = True
    TableName = 'AC_STATION_DATA_FC'
    Left = 504
    Top = 232
    object STATIONDATAFCid: TIntegerField
      FieldName = 'id'
    end
    object STATIONDATAFCsta_id: TIntegerField
      FieldName = 'sta_id'
    end
    object STATIONDATAFCsta6Num: TStringField
      FieldName = 'sta6Num'
      Size = 6
    end
    object STATIONDATAFCsta_connection: TStringField
      DisplayWidth = 50
      FieldName = 'sta_connection'
      Size = 255
    end
    object STATIONDATAFCsta_status_1: TIntegerField
      FieldName = 'sta_status_1'
    end
    object STATIONDATAFCmax_NozzleDelivery: TIntegerField
      FieldName = 'max_NozzleDelivery'
    end
  end
  object dsSTATIONDATAFC: TDataSource
    AutoEdit = False
    DataSet = STATIONDATAFC
    OnStateChange = dsCountryStateChange
    Left = 576
    Top = 232
  end
  object PratStath: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'PratStath'
    Left = 512
    Top = 304
    object PratStathId: TIntegerField
      FieldName = 'Id'
    end
    object PratStathName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object PratStathCoonectionString: TWideStringField
      FieldName = 'CoonectionString'
      Size = 300
    end
    object PratStathTankMeterVariant: TIntegerField
      FieldName = 'TankMeterVariant'
    end
    object PratStathNameA: TWideStringField
      FieldName = 'NameA'
      Size = 50
    end
    object PratStathNameB: TWideStringField
      FieldName = 'NameB'
      Size = 250
    end
  end
  object dsPratStath: TDataSource
    AutoEdit = False
    DataSet = PratStath
    OnStateChange = dsCountryStateChange
    Left = 584
    Top = 304
  end
  object PratStath0: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'PratStath0'
    Left = 512
    Top = 360
    object PratStath0Id: TIntegerField
      FieldName = 'Id'
    end
    object PratStath0Name: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object PratStath0Name1: TWideStringField
      FieldName = 'Name1'
      FixedChar = True
      Size = 50
    end
    object PratStath0Name2: TWideStringField
      FieldName = 'Name2'
      FixedChar = True
      Size = 50
    end
    object PratStath0CoonectionString: TWideStringField
      FieldName = 'CoonectionString'
      Size = 300
    end
    object PratStath0Prat_id: TIntegerField
      FieldName = 'Prat_id'
    end
    object PratStath0Sap_Check: TBooleanField
      FieldName = 'Sap_Check'
    end
    object PratStath0Stath_Sinp: TBooleanField
      FieldName = 'Stath_Sinp'
    end
    object PratStath0Alt_Stath_id: TIntegerField
      FieldName = 'Alt_Stath_id'
    end
  end
  object dsPratStath0: TDataSource
    AutoEdit = False
    DataSet = PratStath0
    OnStateChange = dsCountryStateChange
    Left = 584
    Top = 360
  end
  object PratStath00: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'PratStath00'
    Left = 512
    Top = 424
    object PratStath00Id: TIntegerField
      FieldName = 'Id'
    end
    object PratStath00Name: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object PratStath00CoonectionString: TWideStringField
      FieldName = 'CoonectionString'
      Size = 300
    end
    object PratStath00TankMeterVariant: TIntegerField
      FieldName = 'TankMeterVariant'
    end
    object PratStath00NameA: TWideStringField
      FieldName = 'NameA'
      Size = 50
    end
    object PratStath00NameB: TWideStringField
      FieldName = 'NameB'
      Size = 250
    end
  end
  object dsPratStath00: TDataSource
    AutoEdit = False
    DataSet = PratStath00
    OnStateChange = dsCountryStateChange
    Left = 584
    Top = 424
  end
  object dsSTATION_DATA: TDataSource
    AutoEdit = False
    DataSet = STATION_DATA
    OnStateChange = dsCountryStateChange
    Left = 320
    Top = 368
  end
  object STATION_DATA: TADOTable
    Connection = DMMain.ADOConnection1
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'AC_STATION_DATA'
    Left = 240
    Top = 368
    object STATION_DATAsta_id: TBCDField
      FieldName = 'sta_id'
      Precision = 15
      Size = 0
    end
    object STATION_DATAsta_owner: TStringField
      FieldName = 'sta_owner'
      Size = 50
    end
    object STATION_DATAsta_address: TStringField
      FieldName = 'sta_address'
      Size = 50
    end
    object STATION_DATAsta_contact_person: TStringField
      FieldName = 'sta_contact_person'
      Size = 50
    end
    object STATION_DATAsta_code: TStringField
      FieldName = 'sta_code'
      Size = 6
    end
    object STATION_DATAsta_first_data_date: TDateTimeField
      FieldName = 'sta_first_data_date'
    end
    object STATION_DATAsta_status: TWordField
      FieldName = 'sta_status'
    end
  end
  object MonthCons: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = tCountryBeforePost
    TableDirect = True
    TableName = 'MonthCons'
    Left = 240
    Top = 440
    object MonthConsprtaid: TIntegerField
      FieldName = 'prtaid'
    end
    object MonthConsproduct: TStringField
      FieldName = 'product'
      FixedChar = True
      Size = 2
    end
    object MonthConscons: TFloatField
      FieldName = 'cons'
    end
    object MonthConsLPrat: TStringField
      FieldKind = fkLookup
      FieldName = 'LPrat'
      LookupDataSet = STATION_DATA
      LookupKeyFields = 'sta_id'
      LookupResultField = 'sta_owner'
      KeyFields = 'prtaid'
      Lookup = True
    end
  end
  object dsMonthCons: TDataSource
    AutoEdit = False
    DataSet = MonthCons
    OnStateChange = dsCountryStateChange
    Left = 320
    Top = 440
  end
  object V_MakraiwnUPD: TADOQuery
    Connection = DMMain.ADOConnection1
    CursorType = ctStatic
    BeforePost = V_MakraiwnUPDBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * From V_MakraiwnUPD')
    Left = 24
    Top = 432
    object V_MakraiwnUPDsta_id: TBCDField
      FieldName = 'sta_id'
      Visible = False
      Precision = 15
      Size = 0
    end
    object V_MakraiwnUPDsta_owner: TStringField
      DisplayLabel = #928#961#945#964#942#961#953#959
      DisplayWidth = 25
      FieldName = 'sta_owner'
      ReadOnly = True
      Size = 50
    end
    object V_MakraiwnUPDbaracuda_4Did: TStringField
      DisplayLabel = 'Baracuda'
      FieldName = 'baracuda_4Did'
      FixedChar = True
      Size = 4
    end
    object V_MakraiwnUPDSegmentIn5Steps: TIntegerField
      DisplayLabel = #916#953#945#963#964#942#956#945' '#949#955#941#947#967#959#965'(*5)'
      FieldName = 'SegmentIn5Steps'
    end
    object V_MakraiwnUPDStartTime: TDateTimeField
      DisplayLabel = #917#957#945#961#958#951
      FieldName = 'StartTime'
      DisplayFormat = 'hh:nn:ss'
      EditMask = '00:00:00'
    end
    object V_MakraiwnUPDEndTime: TDateTimeField
      DisplayLabel = #923#39#942#958#951
      FieldName = 'EndTime'
      DisplayFormat = 'hh:nn:ss'
      EditMask = '00:00:00'
    end
    object V_MakraiwnUPDCalculate: TBooleanField
      FieldName = 'Calculate'
    end
  end
  object dsV_MakraiwnUPD: TDataSource
    AutoEdit = False
    DataSet = V_MakraiwnUPD
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 432
  end
end
