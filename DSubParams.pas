unit DSubParams;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBase, ADODB, ExtDlgs, System.DateUtils;

type
  TDMSubParams = class(TDMBase)
    dsKategory: TDataSource;
    Kategory: TADOTable;
    KategoryId: TIntegerField;
    KategoryPerig: TWideStringField;
    KategoryInsUsr: TIntegerField;
    KategoryInsDT: TDateTimeField;
    KategoryUpdUsr: TIntegerField;
    KategoryUpdDT: TDateTimeField;
    dsCustomerLoc: TDataSource;
    CustomerLoc: TADOTable;
    CustomerLocSAPID: TStringField;
    CustomerLocNAME: TStringField;
    CustomerLocID: TLargeintField;
    CustomerPar: TADOTable;
    dsCustomerPar: TDataSource;
    CustomerParNamePel: TStringField;
    CustomerParNameSH: TStringField;
    CustomerAddr: TADOTable;
    CustomerAddrID: TLargeintField;
    CustomerAddrSapId: TStringField;
    CustomerAddrAddrId: TStringField;
    CustomerAddrAddr: TStringField;
    CustomerParPelaId: TStringField;
    CustomerParParId: TStringField;
    dsCustomerAddr: TDataSource;
    DateFile: TADOTable;
    DateFileId: TIntegerField;
    DateFileDateTime: TDateTimeField;
    dsDateFile: TDataSource;
    dsSapOmnisProd: TDataSource;
    SapOmnisProd: TADOTable;
    SapOmnisProdId: TIntegerField;
    SapOmnisProdSapId: TStringField;
    SapOmnisProdOmnisId: TStringField;
    StationData: TADOTable;
    dsStationData: TDataSource;
    StationDatasta_id: TBCDField;
    StationDatasta_owner: TStringField;
    StationDatasta_address: TStringField;
    StationDatasta_contact_person: TStringField;
    StationDatasta_code: TStringField;
    StationDatasta_first_data_date: TDateTimeField;
    StationDatasta_status: TWordField;
    IPType: TADOTable;
    dsIPType: TDataSource;
    IPTypeid: TIntegerField;
    IPTypeIPType: TWideStringField;
    IPTypeInsUsr: TIntegerField;
    IPTypeInsDT: TDateTimeField;
    IPTypeUpdUsr: TIntegerField;
    IPTypeUpdDT: TDateTimeField;
    IPTypeDeleted: TBooleanField;
    IPTypeDelUsr: TIntegerField;
    IPTypeDelDT: TDateTimeField;
    PhoneType: TADOTable;
    dsPhoneType: TDataSource;
    PhoneTypeid: TIntegerField;
    PhoneTypePhoneType: TWideStringField;
    PhoneTypeInsUsr: TIntegerField;
    PhoneTypeInsDT: TDateTimeField;
    PhoneTypeUpdUsr: TIntegerField;
    PhoneTypeUpdDT: TDateTimeField;
    PhoneTypeDeleted: TBooleanField;
    PhoneTypeDelUsr: TIntegerField;
    PhoneTypeDelDT: TDateTimeField;
    MakPhone: TADOTable;
    dsMakPhone: TDataSource;
    MakIP: TADOTable;
    dsMakIP: TDataSource;
    MakIPid: TIntegerField;
    MakIPIP0: TSmallintField;
    MakIPIP1: TSmallintField;
    MakIPIP2: TSmallintField;
    MakIPIP3: TSmallintField;
    MakIPPort: TSmallintField;
    MakIPComment: TWideStringField;
    MakIPInsUsr: TIntegerField;
    MakIPInsDT: TDateTimeField;
    MakIPUpdUsr: TIntegerField;
    MakIPUpdDT: TDateTimeField;
    MakIPDeleted: TBooleanField;
    MakIPDelUsr: TIntegerField;
    MakIPDelDT: TDateTimeField;
    MakPhoneId: TIntegerField;
    MakPhonePhone: TStringField;
    MakPhoneInsUsr: TIntegerField;
    MakPhoneInsDT: TDateTimeField;
    MakPhoneUpdUsr: TIntegerField;
    MakPhoneUpdDT: TDateTimeField;
    MakPhoneDeleted: TBooleanField;
    MakPhoneDelUsr: TIntegerField;
    MakPhoneDelDT: TDateTimeField;
    ConnUPIP: TADOTable;
    dsConnUPIP: TDataSource;
    ConnUPIPPhoneId: TIntegerField;
    ConnUPIPUserName: TWideStringField;
    ConnUPIPpassword: TWideStringField;
    ConnUPIPStaticIP: TIntegerField;
    ConnUPIPLanIP: TIntegerField;
    ConnUPIPWanIP: TIntegerField;
    ConnUPIPLoopBack: TIntegerField;
    ConnUPIPComment: TWideStringField;
    ConnUPIPInsUsr: TIntegerField;
    ConnUPIPInsDT: TDateTimeField;
    ConnUPIPUpdUsr: TIntegerField;
    ConnUPIPUpdDT: TDateTimeField;
    ConnUPIPDeleted: TBooleanField;
    ConnUPIPDelUsr: TIntegerField;
    ConnUPIPDelDT: TDateTimeField;
    ConnUPIPLPhoneId: TStringField;
    ConnUPIPLWanIP: TStringField;
    MakIPTextIP: TStringField;
    ConnUPIPLLBIP: TStringField;
    ConnUPIPLLanIP: TStringField;
    ConnUPIP0: TADOQuery;
    ConnUPIP0PhoneId: TIntegerField;
    ConnUPIP0UserName: TWideStringField;
    ConnUPIP0password: TWideStringField;
    ConnUPIP0StaticIP: TIntegerField;
    ConnUPIP0LanIP: TIntegerField;
    ConnUPIP0WanIP: TIntegerField;
    ConnUPIP0LoopBack: TIntegerField;
    ConnUPIP0Comment: TWideStringField;
    ConnUPIP0InsUsr: TIntegerField;
    ConnUPIP0InsDT: TDateTimeField;
    ConnUPIP0UpdUsr: TIntegerField;
    ConnUPIP0UpdDT: TDateTimeField;
    ConnUPIP0Deleted: TBooleanField;
    ConnUPIP0DelUsr: TIntegerField;
    ConnUPIP0DelDT: TDateTimeField;
    MakIP0: TADOQuery;
    MakIP0id: TIntegerField;
    MakIP0IP0: TSmallintField;
    MakIP0IP1: TSmallintField;
    MakIP0IP2: TSmallintField;
    MakIP0IP3: TSmallintField;
    MakIP0Port: TSmallintField;
    MakIP0Comment: TWideStringField;
    MakIP0InsUsr: TIntegerField;
    MakIP0InsDT: TDateTimeField;
    MakIP0UpdUsr: TIntegerField;
    MakIP0UpdDT: TDateTimeField;
    MakIP0Deleted: TBooleanField;
    MakIP0DelUsr: TIntegerField;
    MakIP0DelDT: TDateTimeField;
    MakIP0TextIP: TStringField;
    ConnUPIP0LLan: TStringField;
    ConnUPIP0LWan: TStringField;
    dsMakIP0: TDataSource;
    STATIONDATAFC: TADOTable;
    dsSTATIONDATAFC: TDataSource;
    STATIONDATAFCid: TIntegerField;
    STATIONDATAFCsta_id: TIntegerField;
    STATIONDATAFCsta6Num: TStringField;
    STATIONDATAFCsta_connection: TStringField;
    STATIONDATAFCsta_status_1: TIntegerField;
    STATIONDATAFCmax_NozzleDelivery: TIntegerField;
    PratStath: TADOTable;
    dsPratStath: TDataSource;
    PratStathId: TIntegerField;
    PratStathName: TWideStringField;
    PratStathCoonectionString: TWideStringField;
    PratStathTankMeterVariant: TIntegerField;
    PratStathNameA: TWideStringField;
    PratStathNameB: TWideStringField;
    PratStath0: TADOTable;
    dsPratStath0: TDataSource;
    PratStath0Id: TIntegerField;
    PratStath0Name: TWideStringField;
    PratStath0Name1: TWideStringField;
    PratStath0Name2: TWideStringField;
    PratStath0CoonectionString: TWideStringField;
    PratStath0Prat_id: TIntegerField;
    PratStath0Sap_Check: TBooleanField;
    PratStath0Stath_Sinp: TBooleanField;
    PratStath0Alt_Stath_id: TIntegerField;
    PratStath00: TADOTable;
    dsPratStath00: TDataSource;
    PratStath00Id: TIntegerField;
    PratStath00Name: TWideStringField;
    PratStath00CoonectionString: TWideStringField;
    PratStath00TankMeterVariant: TIntegerField;
    PratStath00NameA: TWideStringField;
    PratStath00NameB: TWideStringField;
    dsSTATION_DATA: TDataSource;
    STATION_DATA: TADOTable;
    MonthCons: TADOTable;
    MonthConsprtaid: TIntegerField;
    MonthConsproduct: TStringField;
    MonthConscons: TFloatField;
    MonthConsLPrat: TStringField;
    dsMonthCons: TDataSource;
    STATION_DATAsta_id: TBCDField;
    STATION_DATAsta_owner: TStringField;
    STATION_DATAsta_address: TStringField;
    STATION_DATAsta_contact_person: TStringField;
    STATION_DATAsta_code: TStringField;
    STATION_DATAsta_first_data_date: TDateTimeField;
    STATION_DATAsta_status: TWordField;
    V_MakraiwnUPD: TADOQuery;
    V_MakraiwnUPDsta_id: TBCDField;
    V_MakraiwnUPDsta_owner: TStringField;
    V_MakraiwnUPDbaracuda_4Did: TStringField;
    V_MakraiwnUPDSegmentIn5Steps: TIntegerField;
    V_MakraiwnUPDStartTime: TDateTimeField;
    V_MakraiwnUPDEndTime: TDateTimeField;
    V_MakraiwnUPDCalculate: TBooleanField;
    dsV_MakraiwnUPD: TDataSource;
    procedure DMSubParamsCreate(Sender: TObject);
    procedure tCountryBeforePost(DataSet: TDataSet);
    procedure dsCountryStateChange(Sender: TObject);
    procedure MakIPCalcFields(DataSet: TDataSet);
    procedure MakIP0CalcFields(DataSet: TDataSet);
    procedure ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure V_MakraiwnUPDBeforePost(DataSet: TDataSet);
    procedure V_MakraiwnUPDEndTimeChange(Sender: TField);
  private
    { Private declarations }
  public
    MainTable : TTable;
    procedure DeleteRecord; override;
    procedure DeleteNamedRecord( dataset:TDataSet ); override;
    procedure InsertRecord; override;
    procedure SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
  end;

implementation

uses DMain;

{$R *.DFM}

procedure TDMSubParams.InsertRecord;
begin
end;

procedure TDMSubParams.MakIP0CalcFields(DataSet: TDataSet);
begin
  inherited;
  MakIP0TextIP.AsString := MakIP0IP0.AsString + '.' +
                          MakIP0IP1.AsString + '.' +
                          MakIP0IP2.AsString + '.' +
                          MakIP0IP3.AsString + ':' +
                          MakIP0Port.AsString ;

end;

procedure TDMSubParams.MakIPCalcFields(DataSet: TDataSet);
begin
  inherited;
  MakIPTextIP.AsString := MakIPIP0.AsString + '.' +
                          MakIPIP1.AsString + '.' +
                          MakIPIP2.AsString + '.' +
                          MakIPIP3.AsString + ':' +
                          MakIPPort.AsString ;
end;

procedure TDMSubParams.DMSubParamsCreate(Sender: TObject);
var x,x1,x2:Integer;
  xx: TADOTable;
  ExSl:TStringList;
begin
     ExSl:=TStringList.Create();
     ExSl.Add('InsUsr');
     ExSl.Add('UpdUsr');
     ExSl.Add('DelUsr');
     ExSl.Add('InsDT');
     ExSl.Add('UpdDT');
     ExSl.Add('DelDT');
     ExSl.Sort;

    for x:= 0 to self.ComponentCount -1 do
      begin
       if Self.Components[x] is TAdoTable then
          with Self.Components[x] as TAdoTable do
               begin
                  Active := True;
                  for x1 := 0 to FieldCount -1 do
                  begin
                      if ExSl.Find(Fields[x1].FieldName,x2) then
                         Fields[x1].Visible := False;
                  end;
               end;

       if Self.Components[x] is TADOQuery then
          with Self.Components[x] as TAdoQuery do
               begin
                  Active := True;
                  for x1 := 0 to FieldCount -1 do
                  begin
                      if ExSl.Find(Fields[x1].FieldName,x2) then
                         Fields[x1].Visible := False;
                  end;
               end;
      end;
end;

procedure TDMSubParams.tCountryBeforePost(DataSet: TDataSet);
begin
	BeforePost( DataSet );
end;


procedure TDMSubParams.V_MakraiwnUPDBeforePost(DataSet: TDataSet);
Var fDate:TDateTime;
begin
  inherited;
end;

procedure TDMSubParams.V_MakraiwnUPDEndTimeChange(Sender: TField);
begin
  inherited;
    if Sender.AsDateTime < 1  then
     begin
     Sender.Value := Sender.AsDateTime + 1;
     end;

end;

procedure TDMSubParams.DeleteRecord;
begin
end;

procedure TDMSubParams.ConnUPIPFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:= True;


end;

procedure TDMSubParams.DeleteNamedRecord( dataset:TDataSet );
begin
	dataset.Delete;
end;

procedure TDMSubParams.dsCountryStateChange(Sender: TObject);
begin
ParamStateChange(Sender);
end;

procedure TDMSubParams.SelectImage( dlg:TOpenPictureDialog ; field:TBlobField );
var
	stream : TBlobStream;
	image : TPicture;
	ds : TDataSet;
begin
	image := nil;
	stream := nil;
	ds := field.Dataset;
	try
		if dlg.Execute then begin
			if (ds.State = dsBrowse) then
				if ds.Eof and ds.Bof then
					ds.Insert
				else
					ds.Edit;
			image := TPicture.Create;
			stream := TBlobStream.Create( field, bmWrite );
			stream.Position := 0;
			image.LoadFromFile( dlg.FileName );
			image.Graphic.SaveToStream( stream );
		end;
	finally
		image.Free;
		stream.Free;
	end;
end;


end.
