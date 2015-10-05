unit DMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql55conn, db, fpcsvexport, fpXMLXSDExport,
  fprtfexport, sqlite3conn, FileUtil, Dialogs, Strutils, Forms, fpDBExport,
  fpfixedexport, DBase, BufDataset;

type

  { TDataModule1 }

  TDataModule1 = class(TDBase)
    CSVExporter1: TCSVExporter;
    DateTimeField1: TDateTimeField;
    dtsDates1: TDataSource;
    dtsDatesExamLog1: TDataSource;
    dtsExamMinMax: TDataSource;
    dtsMFA: TDataSource;
    dtsGroupExamDet: TDataSource;
    dtsCountry: TDataSource;
    dtsV_IsPatient: TDataSource;
    dtsV_DatesExamLogFull: TDataSource;
    dtsExamName: TDataSource;
    dtsDates: TDataSource;
    dtsDatesDetail: TDataSource;
    dtsExamSchema: TDataSource;
    dtsExamSchemaDet: TDataSource;
    dtsGroupExam: TDataSource;
    dtsPeople: TDataSource;
    dtsDatesExamLog: TDataSource;
    dtsLocations: TDataSource;
    dtsMM: TDataSource;
    dtsGroupMM: TDataSource;
    dtsV_IsDoctor: TDataSource;
    FixedLengthExporter1: TFixedLengthExporter;
    LCountryName1: TStringField;
    LCountryName2: TStringField;
    LExamNameDates1: TStringField;
    LExamSNameDates1: TStringField;
    LMMNameDates1: TStringField;
    LongintField1: TLongintField;
    qryCountryAbbr: TStringField;
    qryCountryId: TLongintField;
    qryCountryName: TStringField;
    qryDates1: TSQLQuery;
    qryDates1Address: TStringField;
    qryDates1Comments: TStringField;
    qryDates1Date: TDateTimeField;
    qryDates1DateOfBirth: TDateField;
    qryDates1Full: TStringField;
    qryDates1id: TLongintField;
    qryDates1LocationName: TStringField;
    qryDates1Name: TStringField;
    qryDates1Phone: TStringField;
    qryDates1Surname: TStringField;
    qryDatesCDatePatient: TStringField;
    qryDatesDoctorId: TLongintField;
    qryDatesExamLog1: TSQLQuery;
    qryDatesExamLog1GroupExam_Id: TLongintField;
    qryDatesExamLogDateId1: TLongintField;
    qryDatesExamLogExamId1: TLongintField;
    qryDatesExamLogId1: TLongintField;
    qryDatesExamLogMMId1: TLongintField;
    qryDatesExamLogResult_N1: TFloatField;
    qryDatesExamLogResult_T1: TStringField;
    qryDatesExamLogUpdated1: TBooleanField;
    qryDatesExamPosted: TBooleanField;
    qryDatesExamPostedDT: TDateTimeField;
    qryDatesExamUpdated: TBooleanField;
    qryDatesExamUpdatedDT: TDateTimeField;
    qryExamMinMax: TSQLQuery;
    qryExamNameIs_Memo: TBooleanField;
    qryExamNameIs_Numeric: TBooleanField;
    qryExamNameIs_Text: TBooleanField;
    qryExamNameSName: TStringField;
    qryGroupExamName: TStringField;
    qryGroupExamSName: TStringField;
    qryMFA: TSQLQuery;
    qryExamMinMaxExamId: TLongintField;
    qryExamMinMaxMaxValue: TFloatField;
    qryExamMinMaxMFA: TLongintField;
    qryExamMinMaxMinValue: TFloatField;
    qryExamSchemaDetAA: TLongintField;
    qryExamSchemaDetExamSchemaid: TLongintField;
    qryExamSchemaDetGroupExamId: TLongintField;
    qryExamSchemaDetid: TLongintField;
    qryGroupExamDet: TSQLQuery;
    qryGroupExamDetAA: TLongintField;
    qryGroupExamDetExamId: TLongintField;
    qryGroupExamDetGroupExamId: TLongintField;
    qryGroupExamDetid: TLongintField;
    qryCountry: TSQLQuery;
    qryMFAFromAge: TLongintField;
    qryMFAId: TLongintField;
    qryMFASEX: TLongintField;
    qryMFAToAge: TLongintField;
    qryMMName: TStringField;
    qryMMSName: TStringField;
    qryPeopleAccessOnlyHisFile2: TBooleanField;
    qryPeopleCanLogin2: TBooleanField;
    qryPeopleCountryId2: TLongintField;
    qryPeopleDateOfBirth2: TDateField;
    qryPeopleFax2: TStringField;
    qryPeopleId2: TLongintField;
    qryPeopleIdOnContry2: TStringField;
    qryPeopleIsDoctor2: TBooleanField;
    qryPeopleIsPatient2: TBooleanField;
    qryPeopleMail2: TStringField;
    qryPeopleName2: TStringField;
    qryPeopleNationality2: TStringField;
    qryPeopleNotes2: TStringField;
    qryPeoplePhone2: TStringField;
    qryPeoplePhoto2: TBlobField;
    qryPeopleSurname2: TStringField;
    qryV_IsDoctorCNameSurnameBirth1: TStringField;
    qryV_IsPatient: TSQLQuery;
    qryPeopleAccessOnlyHisFile1: TBooleanField;
    qryPeopleCanLogin1: TBooleanField;
    qryPeopleCountryId: TLongintField;
    qryPeopleCountryId1: TLongintField;
    qryPeopleDateOfBirth1: TDateField;
    qryPeopleFax1: TStringField;
    qryPeopleId1: TLongintField;
    qryPeopleIdOnContry1: TStringField;
    qryPeopleIsDoctor1: TBooleanField;
    qryPeopleIsPatient1: TBooleanField;
    qryPeopleMail1: TStringField;
    qryPeopleName1: TStringField;
    qryPeopleNationality1: TStringField;
    qryPeopleNotes1: TStringField;
    qryPeoplePhone1: TStringField;
    qryPeoplePhoto1: TBlobField;
    qryPeopleSurname1: TStringField;
    qryV_DatesAddress: TStringField;
    qryV_DatesComments: TStringField;
    qryV_DatesDate: TDateTimeField;
    qryV_DatesDateOfBirth: TDateField;
    qryV_DatesExamLogFull: TSQLQuery;
    qryDatesPeopleId: TLongintField;
    qryExamMinMaxComments: TStringField;
    qryExamMinMaxExamNameId: TLongintField;
    qryExamMinMaxId: TLongintField;
    qryExamMinMaxMax: TFloatField;
    qryExamMinMaxMin: TFloatField;
    qryExamMinMaxMMId: TLongintField;
    qryExamNameComments: TStringField;
    qryExamNameGroupExam_Id: TLongintField;
    qryExamNameMax: TFloatField;
    qryExamNameMin: TFloatField;
    qryExamNameMM_Id: TLongintField;
    qryExamSchemaDet: TSQLQuery;
    qryExamSchemaid: TLongintField;
    qryExamSchemaName: TStringField;
    qryExamSchemaNotes: TStringField;
    qryExamSchemaSequence: TStringField;
    qryGroupExam: TSQLQuery;
    qryDatesExamLogDateId: TLongintField;
    qryDatesExamLogExamId: TLongintField;
    qryDatesExamLogId: TLongintField;
    qryDatesExamLogMMId: TLongintField;
    qryDatesExamLogResult_N: TFloatField;
    qryDatesExamLogResult_T: TStringField;
    qryDatesExamLogUpdated: TBooleanField;
    qryPeople: TSQLQuery;
    qryPeopleAccessOnlyHisFile: TBooleanField;
    qryPeopleCanLogin: TBooleanField;
    qryPeopleDateOfBirth: TDateField;
    qryPeopleFax: TStringField;
    qryPeopleId: TLongintField;
    qryPeopleIdOnContry: TStringField;
    qryPeopleIsDoctor: TBooleanField;
    qryPeopleIsPatient: TBooleanField;
    qryPeopleMail: TStringField;
    qryPeopleName: TStringField;
    qryPeopleNationality: TStringField;
    qryPeopleNotes: TStringField;
    qryPeoplePhone: TStringField;
    qryPeoplePhoto: TBlobField;
    qryPeopleSurname: TStringField;
    qryDatesExamLog: TSQLQuery;
    qryGroupExamid: TLongintField;
    qryGroupMMid: TLongintField;
    qryGroupMMName: TStringField;
    qryGroupMMSName: TStringField;
    qryLocationsAddress: TStringField;
    qryLocationsCONTACT: TWideStringField;
    qryLocationsEOPYY: TBooleanField;
    qryLocationsHospital: TBooleanField;
    qryLocationsId: TLongintField;
    qryLocationsMail: TStringField;
    qryLocationsMedicalCenter: TBooleanField;
    qryLocationsName: TStringField;
    qryLocationsPhone: TStringField;
    qryLocationsText: TStringField;
    qryLocationsTK: TStringField;
    qryMM: TSQLQuery;
    qryGroupMM: TSQLQuery;
    qryMMid: TLongintField;
    qryV_DatesExamLogFullDate: TDateTimeField;
    qryV_DatesExamLogFullDateId: TLongintField;
    qryV_DatesExamLogFullExamId: TLongintField;
    qryV_DatesExamLogFullid: TLongintField;
    qryV_DatesExamLogFullid1: TLongintField;
    qryV_DatesExamLogFullMax: TFloatField;
    qryV_DatesExamLogFullMin: TFloatField;
    qryV_DatesExamLogFullMMId: TLongintField;
    qryV_DatesExamLogFullMMName_MINMAX: TStringField;
    qryV_DatesExamLogFullMMSName_MINMAX: TStringField;
    qryV_DatesExamLogFullName: TStringField;
    qryV_DatesExamLogFullName1: TStringField;
    qryV_DatesExamLogFullName2: TStringField;
    qryV_DatesExamLogFullPeopleId: TLongintField;
    qryV_DatesExamLogFullResult_N: TFloatField;
    qryV_DatesExamLogFullResult_T: TStringField;
    qryV_DatesExamLogFullSName: TStringField;
    qryV_DatesExamLogFullSName1: TStringField;
    qryV_DatesExamLogFullSurname: TStringField;
    qryV_DatesFull: TStringField;
    qryV_Datesid: TLongintField;
    qryV_DatesLocationName: TStringField;
    qryV_DatesName: TStringField;
    qryV_DatesPhone: TStringField;
    qryV_DatesSurname: TStringField;
    qryV_IsDoctor: TSQLQuery;
    qryV_IsPatientCNameSurnameBirth1: TStringField;
    RTFExporter1: TRTFExporter;
    SQLQuery1id: TLongintField;
    SQLQuery1id1: TLongintField;
    SQLQuery1Name: TStringField;
    SQLQuery1Name1: TStringField;
    qryDates: TSQLQuery;
    qryDatesComments: TStringField;
    qryDatesDate: TDateTimeField;
    qryDatesid: TLongintField;
    qryDatesLocationId: TLongintField;
    qryDatesDetail: TSQLQuery;
    qryDatesDetailAA: TLongintField;
    qryDatesDetailDatesId: TLongintField;
    qryDatesDetailid: TLongintField;
    qryDatesDetailSchemaId: TLongintField;
    qryExamSchema: TSQLQuery;
    qryExamName: TSQLQuery;
    qryLocations: TSQLQuery;
    LName: TStringField;
    StringField1: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    LExamSName: TStringField;
    LMMName: TStringField;
    LCountryName: TStringField;
    LIsDoctorSurname: TStringField;
    StringField13: TStringField;
    StringField2: TStringField;
    LSchemaName: TStringField;
    LGroupExamName: TStringField;
    GroupExamName: TStringField;
    LExamNameId: TStringField;
    LMM: TStringField;
    LMMSName: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    LIsPatientSurname: TStringField;
    LExamNameDates: TStringField;
    LExamSNameDates: TStringField;
    LMMNameDates: TStringField;
    StringField9: TStringField;
    XMLXSDExporter1: TXMLXSDExporter;
    procedure DataModuleCreate(Sender: TObject);
    procedure dtsDatesDataChange(Sender: TObject; Field: TField);
    procedure dtsDatesStateChange(Sender: TObject);
    procedure dtsGroupExamDetDataChange(Sender: TObject; Field: TField);
    procedure dtsPeopleDataChange(Sender: TObject; Field: TField);
    procedure qryDatesAfterPost(DataSet: TDataSet);
    procedure qryDatesBeforeDelete(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryDatesCalcFields(DataSet: TDataSet);
    procedure qryDatesDetailAfterPost(DataSet: TDataSet);
    procedure qryDatesDetailDatesIdChange(Sender: TField);
    procedure qryDatesDetailDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var DataAction: TDataAction);
    procedure qryDatesDetailEditError(DataSet: TDataSet; E: EDatabaseError;
      var DataAction: TDataAction);
    procedure qryDatesDetailidGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
    procedure qryDatesDetailPostError(DataSet: TDataSet; E: EDatabaseError;
      var DataAction: TDataAction);
    procedure qryDatesDetailUpdateError(Sender: TObject;
      DataSet: TCustomBufDataset; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure qryExamNameAfterPost(DataSet: TDataSet);
    procedure qryExamSchemaAfterPost(DataSet: TDataSet);
    procedure qryExamSchemaNewRecord(DataSet: TDataSet);
    procedure qryLocationsAfterPost(DataSet: TDataSet);
    procedure qryV_IsDoctorCalcFields(DataSet: TDataSet);
    procedure qryV_IsPatientCalcFields(DataSet: TDataSet);
    procedure RTFExporter1ExportRow(Sender: TObject; var AllowExport: Boolean);
    procedure SQLite3Connection1Log(Sender: TSQLConnection;
      EventType: TDBEventType; const Msg: String);
    procedure StringField1GetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
    procedure StringField1SetText(Sender: TField; const aText: string);
    procedure LogBeforeDelete(DataSet: TDataSet);
  private
    procedure LogAfterPost(DataSet: TDataSet);
    procedure SetActionState(ct: String);
    { private declarations }
  public
    userform:TForm;
    { public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

uses  Unit1, FMain;

{ TDataModule1 }


procedure TDataModule1.DataModuleCreate(Sender: TObject);
var x,x1:Integer;
    s1:String;
    MaxLen,TrunLen:Integer;
begin
//  SQLite3Connection1.Connected:=True;
//  SQLTransaction1.Active:=True;
  MaxLen:=StrToInt(frmmain.MinTrunLength.Text);
  TrunLen:=StrToInt(frmmain.TrunLen.Text);
  for x:=0 to self.ComponentCount -1 do
      begin
        if self.Components[x] is TSqlQuery then
           begin
             for x1:=0 to TSqlQuery(self.Components[x]).FieldCount-1 do
                 begin
                   s1:=TSqlQuery(self.Components[x]).Fields[x1].Name;
                   if frmmain.chkDisplayEndId.Checked=False then
                      if AnsiEndsStr('ID',UpperCase(s1)) then
                         TSqlQuery(self.Components[x]).Fields[x1].Visible:=False;
                   if TSqlQuery(self.Components[x]).Fields[x1].DisplayWidth > MaxLen then
                      TSqlQuery(self.Components[x]).Fields[x1].DisplayWidth := TrunLen;
                   if TSqlQuery(self.Components[x]).Fields[x1].Lookup then
                      TSqlQuery(self.Components[x]).Fields[x1].LookupCache:=True;
                 end;
             if frmmain.chkDisplayId.Checked=False then
               begin
                TSqlQuery(self.Components[x]).FieldByName('id').Visible:=False;
                TSqlQuery(self.Components[x]).FieldByName('Id').Visible:=False;
                TSqlQuery(self.Components[x]).FieldByName('ID').Visible:=False;
               end;
             TSqlQuery(self.Components[x]).OnDeleteError:=@qryDatesDetailDeleteError;
             TSqlQuery(self.Components[x]).OnUpdateError:=@qryDatesDetailUpdateError;
             TSqlQuery(self.Components[x]).OnEditError  :=@qryDatesDetailEditError;
             TSqlQuery(self.Components[x]).OnPostError  :=@qryDatesDetailPostError;
             TSqlQuery(self.Components[x]).Active:=True;
           end;

      end;
end;

procedure TDataModule1.dtsDatesDataChange(Sender: TObject; Field: TField);
begin

end;

procedure TDataModule1.dtsDatesStateChange(Sender: TObject);
begin
  If frmMain.InPopUpState = True then
     exit;
    if TDataSource(Sender).State in [dsEdit,dsInsert] then
     SetActionState('ctEdit')
  else
     SetActionState('ctBrowse');
end;

procedure TDataModule1.dtsGroupExamDetDataChange(Sender: TObject; Field: TField
  );
begin

end;

procedure TDataModule1.dtsPeopleDataChange(Sender: TObject; Field: TField);
begin

end;

procedure TDataModule1.qryDatesAfterPost(DataSet: TDataSet);
begin
    LogAfterPost(Dataset);
end;

procedure TDataModule1.qryDatesBeforeDelete(DataSet: TDataSet);
begin
  LogBeforeDelete(Dataset);
end;

procedure TDataModule1.qryDatesDetailAfterPost(DataSet: TDataSet);
begin
  LogAfterPost(Dataset);
end;

procedure TDataModule1.qryDatesDetailDatesIdChange(Sender: TField);
begin
  // Leo Placeholder for Check
  //frmMain.Memo1.Append('No STATE');
  //frmMain.Memo1.Append(Sender.FieldName+' '+Sender.CurValue);
  //if Sender.DataSet.State in [dsEdit] then
  //  begin
  //   frmMain.Memo1.Append('EDIT');
  //   frmMain.Memo1.Append(Sender.FieldName+' '+Sender.OldValue+'->'+Sender.NewValue);
  //  end;
  //if Sender.DataSet.State in [dsInsert] then
  // begin
  //   frmMain.Memo1.Append('INSERT');
  //   frmMain.Memo1.Append(sender.FieldName+'->'+Sender.NewValue);
  // end;
end;

procedure TDataModule1.qryDatesDetailDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var DataAction: TDataAction);
begin
  frmMain.EventLogSQL.Info('Delete Error');
  frmMain.EventLogSQL.Info(DataSet.Name);
  frmMain.EventLogSQL.Info(E.Message);
  frmMain.Memo1.Append('Delete Error');
  frmMain.Memo1.Append(DataSet.Name);
  frmMain.Memo1.Append(E.Message);
  LogAfterPost(DataSet);
end;

procedure TDataModule1.qryDatesDetailEditError(DataSet: TDataSet;
  E: EDatabaseError; var DataAction: TDataAction);
begin
  frmMain.EventLogSQL.Info('Edit Error');
  frmMain.EventLogSQL.Info(DataSet.Name);
  frmMain.EventLogSQL.Info(E.Message);
  frmMain.Memo1.Append('Edit Error');
  frmMain.Memo1.Append(DataSet.Name);
  frmMain.Memo1.Append(E.Message);
  LogAfterPost(DataSet);
end;

procedure TDataModule1.qryDatesDetailidGetText(Sender: TField;
  var aText: string; DisplayText: Boolean);
begin

end;

procedure TDataModule1.qryDatesDetailPostError(DataSet: TDataSet;
  E: EDatabaseError; var DataAction: TDataAction);
begin
  frmMain.EventLogSQL.Info('Post Error');
  frmMain.EventLogSQL.Info(DataSet.Name);
  frmMain.EventLogSQL.Info(E.Message);
  frmMain.Memo1.Append('Post Error');
  frmMain.Memo1.Append(DataSet.Name);
  frmMain.Memo1.Append(E.Message);
  LogAfterPost(DataSet);
end;

procedure TDataModule1.qryDatesDetailUpdateError(Sender: TObject;
  DataSet: TCustomBufDataset; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
var x:integer;
begin
  frmMain.EventLogSQL.Info('Update Error');
  frmMain.EventLogSQL.Info(DataSet.Name);
  frmMain.EventLogSQL.Info(E.Context);
  frmMain.Memo1.Append('Update Error');
  frmMain.Memo1.Append(DataSet.Name);
  frmMain.Memo1.Append(E.Context);
  LogAfterPost(DataSet);
end;

procedure TDataModule1.qryExamNameAfterPost(DataSet: TDataSet);
begin
    LogAfterPost(Dataset);
end;

procedure TDataModule1.qryExamSchemaAfterPost(DataSet: TDataSet);
begin
  LogAfterPost(Dataset);
end;

procedure TDataModule1.qryExamSchemaNewRecord(DataSet: TDataSet);
begin
//     MessageDlg('Msg', mtError, [mbOK], 0);
end;

procedure TDataModule1.qryLocationsAfterPost(DataSet: TDataSet);
begin
   LogAfterPost(Dataset);
end;

procedure TDataModule1.qryV_IsDoctorCalcFields(DataSet: TDataSet);
begin
  qryV_IsDoctorCNameSurnameBirth1.AsString:=Trim(
    Trim(qryPeopleSurname2.AsString) + ' ' +
    Trim(qryPeopleName2.AsString) + ' ' +
    Trim(qryPeopleDateOfBirth2.AsString));
end;

procedure TDataModule1.qryV_IsPatientCalcFields(DataSet: TDataSet);
begin
  qryV_IsPatientCNameSurnameBirth1.AsString:= Trim(
    Trim(qryPeopleSurname1.AsString) + ' ' +
    Trim(qryPeopleName1.AsString) + ' ' +
    Trim(qryPeopleDateOfBirth1.AsString));
end;

procedure TDataModule1.RTFExporter1ExportRow(Sender: TObject;
  var AllowExport: Boolean);
begin

end;

procedure TDataModule1.qryBeforePost(DataSet: TDataSet);
begin
  if Dataset.State in [dsInsert] then
     Dataset.FieldByName('Id').Value:=frmMain.CreateKey(Dataset.Name);
end;

procedure TDataModule1.qryDatesCalcFields(DataSet: TDataSet);
begin
// To Do
  qryDatesCDatePatient.AsString:= qryDatesDate.AsString +  ' ' +
  LIsPatientSurname.AsString;
end;

procedure TDataModule1.SQLite3Connection1Log(Sender: TSQLConnection;
  EventType: TDBEventType; const Msg: String);
begin
  if EventType in [detCustom,detPrepare,detExecute,detFetch,detCommit,detRollBack] then
     frmMain.EventLogSQL.Info(Msg)
//  MessageDlg(Msg, mtError, [mbOK], 0);
end;

procedure TDataModule1.StringField1GetText(Sender: TField; var aText: string;
  DisplayText: Boolean);
begin
  //try
  //frmMain.Memo1.Append(Sender.FieldName);
  //frmMain.Memo1.Append(InttoStr(Length(Sender.AsString))+' '+Sender.FieldName);
  //except
  //end;
  //aText:=aText;
  //DisplayText:=True;
end;

procedure TDataModule1.StringField1SetText(Sender: TField; const aText: string);
begin

end;

procedure TDataModule1.SetActionState(ct:String);
begin
   if Assigned(UserForm) Then
      TForm1(UserForm).SetActionState(ct);
//      MessageDlg(ct, mtError, [mbNo], 0)
end;

procedure TDataModule1.LogAfterPost(DataSet: TDataSet);
var x:Integer;
begin
  frmMain.EventLogSQL.Info(DataSet.Name);
  for x:=0 to DataSet.FieldCount -1 do
      frmMain.EventLogSQL.Info(DataSet.Fields[x].FieldName+' = '+DataSet.Fields[x].AsString);
  frmMain.Memo1.Append(DataSet.Name);
  for x:=0 to DataSet.FieldCount -1 do
      frmMain.Memo1.Append(DataSet.Fields[x].FieldName+' = '+DataSet.Fields[x].AsString);
end;

procedure TDataModule1.LogBeforeDelete(DataSet: TDataSet);
begin
    frmMain.EventLogSQL.Info(DataSet.Name+' Delete Record');
    frmMain.EventLogSQL.Info(DataSet.FieldByName('Id').AsString);
    frmMain.Memo1.Append(DataSet.Name+' Delete Record with Id :');
    frmMain.Memo1.Append(DataSet.FieldByName('Id').AsString);
end;

end.

