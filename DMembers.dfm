inherited DMMembers: TDMMembers
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 567
  Width = 842
  object dsUpdCustLoc: TDataSource
    AutoEdit = False
    DataSet = QUpdCustLoc
    OnStateChange = dsUpdCustLocStateChange
    Left = 136
    Top = 72
  end
  object dsQCustLoc: TDataSource
    AutoEdit = False
    DataSet = QCustLoc
    OnStateChange = dsUpdCustLocStateChange
    Left = 136
    Top = 16
  end
  object QCustLoc: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = QCustLocCalcFields
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'Select * From CustomerLoc')
    Left = 32
    Top = 16
    object QCustLocId: TIntegerField
      FieldName = 'Id'
    end
    object QCustLocPId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PId'
      Calculated = True
    end
    object QCustLocName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object QCustLocInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Visible = False
    end
    object QCustLocInsDT: TDateTimeField
      FieldName = 'InsDT'
      Visible = False
    end
    object QCustLocUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
      Visible = False
    end
    object QCustLocUpdDT: TDateTimeField
      FieldName = 'UpdDT'
      Visible = False
    end
    object QCustLocDelUsr: TIntegerField
      FieldName = 'DelUsr'
      Visible = False
    end
    object QCustLocDelDt: TDateTimeField
      FieldName = 'DelDt'
      Visible = False
    end
    object QCustLocDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object QCustLocActUsr: TIntegerField
      FieldName = 'ActUsr'
    end
    object QCustLocActDt: TDateTimeField
      FieldName = 'ActDt'
    end
    object QCustLocActive: TBooleanField
      FieldName = 'Active'
    end
    object QCustLocOmnisId: TStringField
      FieldName = 'OmnisId'
      FixedChar = True
      Size = 10
    end
    object QCustLocInstallDate: TDateTimeField
      FieldName = 'InstallDate'
    end
    object QCustLocAntiVirusActivation: TDateTimeField
      FieldName = 'AntiVirusActivation'
    end
    object QCustLocAntiVirusExpire: TDateTimeField
      FieldName = 'AntiVirusExpire'
    end
    object QCustLocComm: TBlobField
      FieldName = 'Comm'
    end
    object QCustLocAddrr: TStringField
      FieldName = 'Addrr'
      FixedChar = True
      Size = 80
    end
    object QCustLocNomos: TStringField
      FieldName = 'Nomos'
      FixedChar = True
      Size = 10
    end
    object QCustLocTK: TStringField
      FieldName = 'TK'
      FixedChar = True
      Size = 5
    end
    object QCustLocAntiVirusMore: TStringField
      FieldName = 'AntiVirusMore'
      FixedChar = True
      Size = 30
    end
    object QCustLocSouthNorth: TIntegerField
      FieldName = 'SouthNorth'
    end
  end
  object QRelFesCust: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsUpdCustLoc
    EnableBCD = False
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'Select * From SapPelaPrat'
      'Where PratId = :Id')
    Left = 32
    Top = 136
    object QRelFesCustPratId: TIntegerField
      FieldName = 'PratId'
      Visible = False
    end
    object QRelFesCustDateId: TIntegerField
      FieldName = 'DateId'
      Visible = False
    end
    object QRelFesCustSapId: TStringField
      FieldName = 'SapId'
      OnValidate = QRelFesCustSapIdValidate
      FixedChar = True
      Size = 10
    end
    object QRelFesCustShipId: TStringField
      FieldName = 'ShipId'
      OnValidate = QRelFesCustShipIdValidate
      FixedChar = True
      Size = 10
    end
    object QRelFesCustLDate: TDateField
      FieldKind = fkLookup
      FieldName = 'LDate'
      LookupDataSet = DateFile
      LookupKeyFields = 'Id'
      LookupResultField = 'DateTime'
      KeyFields = 'DateId'
      Lookup = True
    end
    object QRelFesCustLName: TStringField
      FieldKind = fkLookup
      FieldName = 'LName'
      LookupDataSet = View4
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'LocSapId'
      Lookup = True
    end
    object QRelFesCustLAddr: TStringField
      FieldKind = fkLookup
      FieldName = 'LAddr'
      LookupDataSet = SAPADDR
      LookupKeyFields = 'ID'
      LookupResultField = 'Addr'
      KeyFields = 'LocShipId'
      Lookup = True
    end
    object QRelFesCustLocSapId: TIntegerField
      FieldName = 'LocSapId'
    end
    object QRelFesCustLocShipId: TIntegerField
      FieldName = 'LocShipId'
    end
    object QRelFesCustInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Visible = False
    end
    object QRelFesCustInsDt: TDateTimeField
      FieldName = 'InsDt'
      Visible = False
    end
    object QRelFesCustUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
      Visible = False
    end
    object QRelFesCustUpdDt: TDateTimeField
      FieldName = 'UpdDt'
      Visible = False
    end
  end
  object dsQRelFesCust: TDataSource
    DataSet = QRelFesCust
    OnStateChange = dsProshmStateChange
    Left = 136
    Top = 136
  end
  object DateFile: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'DateFile'
    Left = 528
    Top = 16
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
    Left = 592
    Top = 16
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'ViewPelaDt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PelaId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 288
    Top = 16
    object ADOStoredProc1Expr1: TStringField
      FieldName = 'Expr1'
      FixedChar = True
      Size = 10
    end
    object ADOStoredProc1Expr2: TStringField
      FieldName = 'Expr2'
      FixedChar = True
      Size = 100
    end
    object ADOStoredProc1NAME: TStringField
      FieldName = 'NAME'
      FixedChar = True
      Size = 100
    end
    object ADOStoredProc1ID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOStoredProc1SAPID: TStringField
      FieldName = 'SAPID'
      FixedChar = True
      Size = 10
    end
    object ADOStoredProc1Expr3: TStringField
      FieldName = 'Expr3'
      FixedChar = True
      Size = 10
    end
    object ADOStoredProc1Expr4: TLargeintField
      FieldName = 'Expr4'
      ReadOnly = True
    end
  end
  object ADOStoredProc2: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'ViewAddr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@AddrId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 288
    Top = 72
    object ADOStoredProc2ID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOStoredProc2SapId: TStringField
      FieldName = 'SapId'
      FixedChar = True
      Size = 10
    end
    object ADOStoredProc2AddrId: TStringField
      FieldName = 'AddrId'
      FixedChar = True
      Size = 10
    end
    object ADOStoredProc2Addr: TStringField
      FieldName = 'Addr'
      FixedChar = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ADOStoredProc1
    Left = 592
    Top = 80
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = ADOStoredProc2
    Left = 592
    Top = 136
  end
  object View4: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Id,Name'
      'from View4')
    Left = 32
    Top = 304
    object View4Id: TLargeintField
      FieldName = 'Id'
      ReadOnly = True
    end
    object View4Name: TStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 100
    end
  end
  object SAPADDR: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From SAPADDR')
    Left = 32
    Top = 360
    object SAPADDRID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SAPADDRSapId: TStringField
      FieldName = 'SapId'
      FixedChar = True
      Size = 10
    end
    object SAPADDRAddrId: TStringField
      FieldName = 'AddrId'
      FixedChar = True
      Size = 10
    end
    object SAPADDRAddr: TStringField
      FieldName = 'Addr'
      FixedChar = True
      Size = 100
    end
  end
  object dsView4: TDataSource
    Left = 104
    Top = 304
  end
  object dsSAPADDR: TDataSource
    Left = 128
    Top = 360
  end
  object ADOTable1: TADOTable
    Connection = DMMain.ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOTable1CalcFields
    TableName = 'AC_STATION_DATA'
    Left = 512
    Top = 136
    object ADOTable1sta_id: TBCDField
      FieldName = 'sta_id'
      Precision = 15
      Size = 0
    end
    object ADOTable1sta_owner: TStringField
      FieldName = 'sta_owner'
      Size = 50
    end
    object ADOTable1sta_address: TStringField
      FieldName = 'sta_address'
      Size = 50
    end
    object ADOTable1sta_contact_person: TStringField
      FieldName = 'sta_contact_person'
      Size = 50
    end
    object ADOTable1sta_code: TStringField
      FieldName = 'sta_code'
      Size = 6
    end
    object ADOTable1CalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcField'
      Size = 30
      Calculated = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable1
    Left = 592
    Top = 192
  end
  object QRelPdfCust: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = QRelPdfCustBeforePost
    DataSource = dsUpdCustLoc
    EnableBCD = False
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'Select * From SapPelaPdf'
      'Where PratId = :Id')
    Left = 32
    Top = 416
    object QRelPdfCustId: TAutoIncField
      FieldName = 'Id'
    end
    object QRelPdfCustPratId: TIntegerField
      FieldName = 'PratId'
    end
    object QRelPdfCustPdfText: TStringField
      FieldName = 'PdfText'
      FixedChar = True
      Size = 100
    end
    object QRelPdfCustPdfCont: TBlobField
      FieldName = 'PdfCont'
    end
    object QRelPdfCustInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object QRelPdfCustInsDt: TDateTimeField
      FieldName = 'InsDt'
    end
    object QRelPdfCustUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object QRelPdfCustUpdDt: TDateTimeField
      FieldName = 'UpdDt'
    end
  end
  object dsQRelPdfCust: TDataSource
    AutoEdit = False
    DataSet = QRelPdfCust
    OnStateChange = dsQRelPdfCustStateChange
    Left = 128
    Top = 416
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = QRelPdfCustBeforePost
    DataSource = dsUpdCustLoc
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'Select * From SapPelaPdf'
      '')
    Left = 504
    Top = 248
    object ADOQuery1Id: TIntegerField
      FieldName = 'Id'
    end
    object ADOQuery1PratId: TIntegerField
      FieldName = 'PratId'
    end
    object ADOQuery1PdfText: TStringField
      FieldName = 'PdfText'
      FixedChar = True
      Size = 100
    end
    object ADOQuery1PdfCont: TBlobField
      FieldName = 'PdfCont'
    end
    object ADOQuery1InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ADOQuery1InsDt: TDateTimeField
      FieldName = 'InsDt'
    end
    object ADOQuery1UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object ADOQuery1UpdDt: TDateTimeField
      FieldName = 'UpdDt'
    end
  end
  object DataSource4: TDataSource
    AutoEdit = False
    DataSet = ADOQuery1
    OnStateChange = dsQRelPdfCustStateChange
    Left = 592
    Top = 248
  end
  object QUpdCustLoc: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = QUpdCustLocBeforePost
    DataSource = dsQCustLoc
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM CustomerLoc WHERE Id = :Id')
    Left = 32
    Top = 72
    object QUpdCustLocId: TIntegerField
      FieldName = 'Id'
    end
    object QUpdCustLocOmnisId: TStringField
      FieldName = 'OmnisId'
      FixedChar = True
      Size = 10
    end
    object QUpdCustLocName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object QUpdCustLocInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object QUpdCustLocInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object QUpdCustLocUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object QUpdCustLocUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object QUpdCustLocDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object QUpdCustLocDelDt: TDateTimeField
      FieldName = 'DelDt'
    end
    object QUpdCustLocDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object QUpdCustLocActUsr: TIntegerField
      FieldName = 'ActUsr'
    end
    object QUpdCustLocActDt: TDateTimeField
      FieldName = 'ActDt'
    end
    object QUpdCustLocActive: TBooleanField
      FieldName = 'Active'
    end
    object QUpdCustLocComm: TBlobField
      FieldName = 'Comm'
    end
    object QUpdCustLocAddrr: TStringField
      FieldName = 'Addrr'
      FixedChar = True
      Size = 80
    end
    object QUpdCustLocNomos: TStringField
      FieldName = 'Nomos'
      FixedChar = True
      Size = 10
    end
    object QUpdCustLocTK: TStringField
      FieldName = 'TK'
      FixedChar = True
      Size = 5
    end
    object QUpdCustLocInstallDate: TDateTimeField
      FieldName = 'InstallDate'
    end
    object QUpdCustLocAntiVirusActivation: TDateTimeField
      FieldName = 'AntiVirusActivation'
    end
    object QUpdCustLocAntiVirusExpire: TDateTimeField
      FieldName = 'AntiVirusExpire'
    end
    object QUpdCustLocAntiVirusMore: TStringField
      FieldName = 'AntiVirusMore'
      FixedChar = True
      Size = 30
    end
    object QUpdCustLocSouthNorth: TIntegerField
      FieldName = 'SouthNorth'
    end
    object QUpdCustLocLOmnis: TStringField
      FieldKind = fkLookup
      FieldName = 'LOmnis'
      LookupDataSet = ADOTable1
      LookupKeyFields = 'sta_code'
      LookupResultField = 'CalcField'
      KeyFields = 'OmnisId'
      Lookup = True
    end
  end
  object MakDetail: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = MakDetailBeforePost
    DataSource = dsQCustLoc
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM MakDetail WHERE Id = :Id')
    Left = 248
    Top = 152
    object MakDetailid: TIntegerField
      FieldName = 'id'
    end
    object MakDetailBaracudaId: TIntegerField
      FieldName = 'BaracudaId'
    end
    object MakDetailPhone: TIntegerField
      FieldName = 'Phone'
    end
    object MakDetailPhoneData: TIntegerField
      FieldName = 'PhoneData'
    end
    object MakDetailPhoneDVR: TIntegerField
      FieldName = 'PhoneDVR'
    end
    object MakDetailPhoneAlarm: TIntegerField
      FieldName = 'PhoneAlarm'
    end
    object MakDetailIPGateway: TIntegerField
      FieldName = 'IPGateway'
    end
    object MakDetailIPStart: TIntegerField
      FieldName = 'IPStart'
    end
    object MakDetailIPEnd: TIntegerField
      FieldName = 'IPEnd'
    end
    object MakDetailConsoleIP: TIntegerField
      FieldName = 'ConsoleIP'
    end
    object MakDetailConsoleType: TIntegerField
      FieldName = 'ConsoleType'
    end
  end
  object dsMakDetail: TDataSource
    AutoEdit = False
    DataSet = MakDetail
    OnStateChange = dsUpdCustLocStateChange
    Left = 328
    Top = 152
  end
  object MakPratPhone: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = MakDetailBeforePost
    DataSource = dsQCustLoc
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM MakPratPhone WHERE MakId = :Id')
    Left = 248
    Top = 224
    object MakPratPhoneMakId: TIntegerField
      FieldName = 'MakId'
      Visible = False
    end
    object MakPratPhonePhoneId: TIntegerField
      FieldName = 'PhoneId'
      Visible = False
    end
    object MakPratPhoneLPhone: TStringField
      FieldKind = fkLookup
      FieldName = 'LPhone'
      LookupDataSet = MakPhone
      LookupKeyFields = 'Id'
      LookupResultField = 'Phone'
      KeyFields = 'PhoneId'
      Lookup = True
    end
    object MakPratPhonePhoneType: TIntegerField
      FieldName = 'PhoneType'
      Visible = False
    end
    object MakPratPhoneGUID: TWideStringField
      FieldName = 'GUID'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object MakPratPhoneLPhoneType: TStringField
      FieldKind = fkLookup
      FieldName = 'LPhoneType'
      LookupDataSet = PhoneType
      LookupKeyFields = 'id'
      LookupResultField = 'PhoneType'
      KeyFields = 'PhoneType'
      Lookup = True
    end
    object MakPratPhoneDescr: TWideStringField
      FieldName = 'Descr'
      FixedChar = True
      Size = 100
    end
    object MakPratPhoneInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Visible = False
    end
    object MakPratPhoneInsDT: TDateTimeField
      FieldName = 'InsDT'
      Visible = False
    end
    object MakPratPhoneUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
      Visible = False
    end
    object MakPratPhoneUpdDT: TDateTimeField
      FieldName = 'UpdDT'
      Visible = False
    end
    object MakPratPhoneDeleted: TBooleanField
      FieldName = 'Deleted'
      Visible = False
    end
    object MakPratPhoneDelUsr: TIntegerField
      FieldName = 'DelUsr'
      Visible = False
    end
    object MakPratPhoneDelDT: TDateTimeField
      FieldName = 'DelDT'
      Visible = False
    end
  end
  object dsMakPratPhone: TDataSource
    AutoEdit = False
    DataSet = MakPratPhone
    OnStateChange = dsMakPratPhoneStateChange
    Left = 328
    Top = 224
  end
  object MakPratIP: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = MakDetailBeforePost
    DataSource = dsQCustLoc
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM MakPratIP WHERE MakId = :Id')
    Left = 248
    Top = 296
    object MakPratIPMakId: TIntegerField
      FieldName = 'MakId'
      Visible = False
    end
    object MakPratIPIPId: TIntegerField
      FieldName = 'IPId'
      Visible = False
    end
    object MakPratIPLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = MakIP
      LookupKeyFields = 'id'
      LookupResultField = 'TextIP'
      KeyFields = 'IPId'
      Lookup = True
    end
    object MakPratIPIPType: TIntegerField
      FieldName = 'IPType'
      Visible = False
    end
    object MakPratIPLIPType: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPType'
      LookupDataSet = IPType
      LookupKeyFields = 'id'
      LookupResultField = 'IPType'
      KeyFields = 'IPType'
      Lookup = True
    end
    object MakPratIPComment: TWideStringField
      FieldName = 'Comment'
      FixedChar = True
      Size = 100
    end
    object MakPratIPGUID: TWideStringField
      FieldName = 'GUID'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object MakPratIPInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Visible = False
    end
    object MakPratIPInsDT: TDateTimeField
      FieldName = 'InsDT'
      Visible = False
    end
    object MakPratIPUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
      Visible = False
    end
    object MakPratIPUpdDT: TDateTimeField
      FieldName = 'UpdDT'
      Visible = False
    end
    object MakPratIPDeleted: TBooleanField
      FieldName = 'Deleted'
      Visible = False
    end
    object MakPratIPDelUsr: TIntegerField
      FieldName = 'DelUsr'
      Visible = False
    end
    object MakPratIPDelDT: TDateTimeField
      FieldName = 'DelDT'
      Visible = False
    end
  end
  object dsMakPratIP: TDataSource
    AutoEdit = False
    DataSet = MakPratIP
    OnStateChange = dsMakPratIPStateChange
    Left = 328
    Top = 296
  end
  object IPType: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'IPType'
    Left = 624
    Top = 336
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
    Left = 704
    Top = 336
  end
  object PhoneType: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'PhoneType'
    Left = 624
    Top = 400
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
    Left = 704
    Top = 400
  end
  object MakPhone: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Filtered = True
    BeforePost = MakDetailBeforePost
    TableDirect = True
    TableName = 'MakPhone'
    Left = 344
    Top = 408
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
    Left = 424
    Top = 408
  end
  object dsMakIP: TDataSource
    AutoEdit = False
    DataSet = MakIP
    Left = 424
    Top = 472
  end
  object MakIP: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = MakDetailBeforePost
    OnCalcFields = MakIPCalcFields
    TableDirect = True
    TableName = 'MakIP'
    Left = 344
    Top = 472
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
end
