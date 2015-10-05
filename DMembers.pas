unit DMembers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ComObj, DbGrids,
  DMain, DBase, DSubParams, Db, DBTables, FBase, ADODB, Variants, Globals, ADOConEd;

type
  TDMMembers = class(TDMBase)
    dsUpdCustLoc: TDataSource;
    dsQCustLoc: TDataSource;
    QCustLoc: TADOQuery;
    QRelFesCust: TADOQuery;
    dsQRelFesCust: TDataSource;
    QCustLocId: TIntegerField;
    QCustLocName: TWideStringField;
    QCustLocInsUsr: TIntegerField;
    QCustLocInsDT: TDateTimeField;
    QCustLocUpdUsr: TIntegerField;
    QCustLocUpdDT: TDateTimeField;
    QCustLocDelUsr: TIntegerField;
    QCustLocDelDt: TDateTimeField;
    QCustLocDeleted: TBooleanField;
    QCustLocActUsr: TIntegerField;
    QCustLocActDt: TDateTimeField;
    QCustLocActive: TBooleanField;
    QRelFesCustPratId: TIntegerField;
    QRelFesCustDateId: TIntegerField;
    QRelFesCustSapId: TStringField;
    QRelFesCustShipId: TStringField;
    DateFile: TADOTable;
    DateFileId: TIntegerField;
    DateFileDateTime: TDateTimeField;
    dsDateFile: TDataSource;
    QRelFesCustLDate: TDateField;
    QCustLocOmnisId: TStringField;
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc2: TADOStoredProc;
    ADOStoredProc1Expr1: TStringField;
    ADOStoredProc1Expr2: TStringField;
    ADOStoredProc1NAME: TStringField;
    ADOStoredProc1ID: TLargeintField;
    ADOStoredProc1SAPID: TStringField;
    ADOStoredProc1Expr3: TStringField;
    ADOStoredProc1Expr4: TLargeintField;
    ADOStoredProc2ID: TLargeintField;
    ADOStoredProc2SapId: TStringField;
    ADOStoredProc2AddrId: TStringField;
    ADOStoredProc2Addr: TStringField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    QRelFesCustLocSapId: TIntegerField;
    QRelFesCustLocShipId: TIntegerField;
    QRelFesCustInsUsr: TIntegerField;
    QRelFesCustInsDt: TDateTimeField;
    QRelFesCustUpdUsr: TIntegerField;
    QRelFesCustUpdDt: TDateTimeField;
    View4: TADOQuery;
    SAPADDR: TADOQuery;
    dsView4: TDataSource;
    dsSAPADDR: TDataSource;
    View4Id: TLargeintField;
    View4Name: TStringField;
    SAPADDRID: TLargeintField;
    SAPADDRSapId: TStringField;
    SAPADDRAddrId: TStringField;
    SAPADDRAddr: TStringField;
    QRelFesCustLName: TStringField;
    QRelFesCustLAddr: TStringField;
    ADOTable1: TADOTable;
    DataSource3: TDataSource;
    ADOTable1sta_id: TBCDField;
    ADOTable1sta_owner: TStringField;
    ADOTable1sta_address: TStringField;
    ADOTable1sta_contact_person: TStringField;
    ADOTable1sta_code: TStringField;
    ADOTable1CalcField: TStringField;
    QCustLocInstallDate: TDateTimeField;
    QCustLocAntiVirusActivation: TDateTimeField;
    QCustLocAntiVirusExpire: TDateTimeField;
    QRelPdfCust: TADOQuery;
    dsQRelPdfCust: TDataSource;
    QRelPdfCustPratId: TIntegerField;
    QRelPdfCustPdfText: TStringField;
    QRelPdfCustPdfCont: TBlobField;
    QRelPdfCustInsUsr: TIntegerField;
    QRelPdfCustInsDt: TDateTimeField;
    QRelPdfCustUpdUsr: TIntegerField;
    QRelPdfCustUpdDt: TDateTimeField;
    QRelPdfCustId: TAutoIncField;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery1Id: TIntegerField;
    ADOQuery1PratId: TIntegerField;
    ADOQuery1PdfText: TStringField;
    ADOQuery1PdfCont: TBlobField;
    ADOQuery1InsUsr: TIntegerField;
    ADOQuery1InsDt: TDateTimeField;
    ADOQuery1UpdUsr: TIntegerField;
    ADOQuery1UpdDt: TDateTimeField;
    QCustLocPId: TIntegerField;
    QUpdCustLoc: TADOQuery;
    QUpdCustLocId: TIntegerField;
    QUpdCustLocOmnisId: TStringField;
    QUpdCustLocName: TWideStringField;
    QUpdCustLocInsUsr: TIntegerField;
    QUpdCustLocInsDT: TDateTimeField;
    QUpdCustLocUpdUsr: TIntegerField;
    QUpdCustLocUpdDT: TDateTimeField;
    QUpdCustLocDelUsr: TIntegerField;
    QUpdCustLocDelDt: TDateTimeField;
    QUpdCustLocDeleted: TBooleanField;
    QUpdCustLocActUsr: TIntegerField;
    QUpdCustLocActDt: TDateTimeField;
    QUpdCustLocActive: TBooleanField;
    QUpdCustLocComm: TBlobField;
    QUpdCustLocAddrr: TStringField;
    QUpdCustLocNomos: TStringField;
    QUpdCustLocTK: TStringField;
    QUpdCustLocInstallDate: TDateTimeField;
    QUpdCustLocAntiVirusActivation: TDateTimeField;
    QUpdCustLocAntiVirusExpire: TDateTimeField;
    QUpdCustLocAntiVirusMore: TStringField;
    QUpdCustLocSouthNorth: TIntegerField;
    QCustLocComm: TBlobField;
    QCustLocAddrr: TStringField;
    QCustLocNomos: TStringField;
    QCustLocTK: TStringField;
    QCustLocAntiVirusMore: TStringField;
    QCustLocSouthNorth: TIntegerField;
    MakDetail: TADOQuery;
    MakDetailid: TIntegerField;
    MakDetailBaracudaId: TIntegerField;
    MakDetailPhone: TIntegerField;
    MakDetailPhoneData: TIntegerField;
    MakDetailPhoneDVR: TIntegerField;
    MakDetailPhoneAlarm: TIntegerField;
    MakDetailIPGateway: TIntegerField;
    MakDetailIPStart: TIntegerField;
    MakDetailIPEnd: TIntegerField;
    MakDetailConsoleIP: TIntegerField;
    MakDetailConsoleType: TIntegerField;
    dsMakDetail: TDataSource;
    MakPratPhone: TADOQuery;
    dsMakPratPhone: TDataSource;
    MakPratIP: TADOQuery;
    dsMakPratIP: TDataSource;
    MakPratPhoneMakId: TIntegerField;
    MakPratPhonePhoneId: TIntegerField;
    MakPratPhonePhoneType: TIntegerField;
    MakPratPhoneGUID: TWideStringField;
    MakPratPhoneDescr: TWideStringField;
    MakPratIPMakId: TIntegerField;
    MakPratIPIPId: TIntegerField;
    MakPratIPIPType: TIntegerField;
    MakPratIPComment: TWideStringField;
    MakPratIPGUID: TWideStringField;
    IPType: TADOTable;
    IPTypeid: TIntegerField;
    IPTypeIPType: TWideStringField;
    IPTypeInsUsr: TIntegerField;
    IPTypeInsDT: TDateTimeField;
    IPTypeUpdUsr: TIntegerField;
    IPTypeUpdDT: TDateTimeField;
    IPTypeDeleted: TBooleanField;
    IPTypeDelUsr: TIntegerField;
    IPTypeDelDT: TDateTimeField;
    dsIPType: TDataSource;
    PhoneType: TADOTable;
    PhoneTypeid: TIntegerField;
    PhoneTypePhoneType: TWideStringField;
    PhoneTypeInsUsr: TIntegerField;
    PhoneTypeInsDT: TDateTimeField;
    PhoneTypeUpdUsr: TIntegerField;
    PhoneTypeUpdDT: TDateTimeField;
    PhoneTypeDeleted: TBooleanField;
    PhoneTypeDelUsr: TIntegerField;
    PhoneTypeDelDT: TDateTimeField;
    dsPhoneType: TDataSource;
    MakPhone: TADOTable;
    MakPhoneId: TIntegerField;
    MakPhonePhone: TStringField;
    MakPhoneInsUsr: TIntegerField;
    MakPhoneInsDT: TDateTimeField;
    MakPhoneUpdUsr: TIntegerField;
    MakPhoneUpdDT: TDateTimeField;
    MakPhoneDeleted: TBooleanField;
    MakPhoneDelUsr: TIntegerField;
    MakPhoneDelDT: TDateTimeField;
    dsMakPhone: TDataSource;
    dsMakIP: TDataSource;
    MakIP: TADOTable;
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
    MakPratPhoneLPhone: TStringField;
    MakPratPhoneLPhoneType: TStringField;
    MakPratPhoneInsUsr: TIntegerField;
    MakPratPhoneInsDT: TDateTimeField;
    MakPratPhoneUpdUsr: TIntegerField;
    MakPratPhoneUpdDT: TDateTimeField;
    MakPratPhoneDeleted: TBooleanField;
    MakPratPhoneDelUsr: TIntegerField;
    MakPratPhoneDelDT: TDateTimeField;
    MakPratIPInsUsr: TIntegerField;
    MakPratIPInsDT: TDateTimeField;
    MakPratIPUpdUsr: TIntegerField;
    MakPratIPUpdDT: TDateTimeField;
    MakPratIPDeleted: TBooleanField;
    MakPratIPDelUsr: TIntegerField;
    MakPratIPDelDT: TDateTimeField;
    MakPratIPLIP: TStringField;
    MakIPTextIP: TStringField;
    MakPratIPLIPType: TStringField;
    procedure dsUpdCustLocStateChange(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure QUpdCustLocBeforePost(DataSet: TDataSet);
    procedure dsProshmStateChange(Sender: TObject);
    procedure ProshmBeforePost(DataSet: TDataSet);
    procedure QCustLocCalcFields(DataSet: TDataSet);
    procedure dsUpdCustLocDetStateChange(Sender: TObject);
    procedure QRelFesCustSapIdValidate(Sender: TField);
    procedure QRelFesCustShipIdValidate(Sender: TField);
    procedure ADOTable1CalcFields(DataSet: TDataSet);
    procedure dsQRelPdfCustStateChange(Sender: TObject);
    procedure QRelPdfCustBeforePost(DataSet: TDataSet);
    procedure dsMakPratPhoneStateChange(Sender: TObject);
    procedure dsMakPratIPStateChange(Sender: TObject);
    procedure MakDetailBeforePost(DataSet: TDataSet);
    procedure MakIPCalcFields(DataSet: TDataSet);
  private
//        DMParam   : TDMParam;
//        DMCustLoc : TDMCustLoc;
  public
        DMSubParams   : TDMSubParams;
       	procedure DeleteRecord; override;
        procedure InsertRecord; override;
      	procedure UpdateRecord; override;
        procedure UpdateData;   override;
        procedure CancelData;   override;
        procedure InActiveRecord;        
        function  ReturnSapId(Code:Integer):Int64;
  end;

var
  DMMembers: TDMMembers;

implementation

uses FDialogWEdit, FMembers, FMain;

{$R *.DFM}

procedure TDMMembers.InsertRecord;
begin
 QUpdCustLoc.Active:=False;
 QUpdCustLoc.DataSource:=nil;
 QUpdCustLoc.SQL.Text:='SELECT * FROM CustomerLoc';
 QUpdCustLoc.Active:=True;

 TFrmMembers(TForm(self).Owner).PageControl1.ActivePageIndex:=0;

 QUpdCustLoc.Insert;
 QUpdCustLoc.Edit;
//QUpdCustLocid.AsInteger:=CreateKey('CustomerLoc');

end;

procedure TDMMembers.MakDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
   GenBeforePostWithNameN(Dataset,Dataset.Name);
end;

procedure TDMMembers.MakIPCalcFields(DataSet: TDataSet);
begin
  inherited;

  if MakIpPort.IsNull then
  begin
  MakIPTextIP.AsString := MakIPIP0.AsString + '.' +
                          MakIPIP1.AsString + '.' +
                          MakIPIP2.AsString + '.' +
                          MakIPIP3.AsString;
  end
  else
  begin
  MakIPTextIP.AsString := MakIPIP0.AsString + '.' +
                          MakIPIP1.AsString + '.' +
                          MakIPIP2.AsString + '.' +
                          MakIPIP3.AsString + ':' +
                          MakIPPort.AsString ;
  end;
end;

procedure TDMMembers.DeleteRecord;
var Lc:Integer;
begin
   QUpdCustLoc.Edit;
   QUpdCustLocDelDt.AsDateTime          := now();
   QUpdCustLocDelUsr.AsInteger          := LoginId;
   QUpdCustLocDeleted.AsBoolean         := True;
   QUpdCustLoc.Post;

   LC := QUpdCustLocId.AsInteger;
// QUpdCustLoc.Delete;
   QCustLoc.Active:=False;
   QCustLoc.Active:=True;
   QCustLoc.Locate('Id',Lc,[]);
end;

procedure TDMMembers.InActiveRecord;
var Lc:Integer;
begin
   QUpdCustLoc.Edit;
   QUpdCustLocActDt.AsDateTime          := now();
   QUpdCustLocActUsr.AsInteger          := LoginId;
   QUpdCustLocActive.AsBoolean          := False;
   QUpdCustLoc.Post;

   LC := QUpdCustLocId.AsInteger;
// QUpdCustLoc.Delete;
   QCustLoc.Active:=False;
   QCustLoc.Active:=True;
   QCustLoc.Locate('Id',Lc,[]);
end;


procedure TDMMembers.dsUpdCustLocStateChange(Sender: TObject);
begin
  inherited;
  DoStateChange( Sender );
end;

procedure TDMMembers.UpdateData;
var Lc:Integer;
    LDate:TDate;
    YY,MM,DD:Word;
begin     { TODO : Check for Pl Dik and Update Field and Index. }
 if dsUpdCustLoc.State in [dsInsert] then
   begin
     QUpdCustLocInsDT.AsDateTime            := now();
     QUpdCustLocInsUsr.AsInteger            := LoginId;
     QUpdCustLocDeleted.AsBoolean           := False;
     QUpdCustLocActive.AsBoolean            := True;
     QUpdCustLocActDt.AsDateTime            := now();
     QUpdCustLocActUsr.AsInteger            := LoginId;
   end;

     QUpdCustLocUpdDT.AsDateTime           := now();
     QUpdCustLocUpdUsr.AsInteger           := LoginId;


//  DMMain.ReleaseLock(LoginName,QUpdCustLoc,TFrmBase(Self.Owner).PFormName);

  QUpdCustLoc.Post;

  DMMain.ADOConnection.BeginTrans;
  try
    QUpdCustLoc.UpdateBatch();
{    QRelFesCust.First;
    repeat
      try
        QRelFesCust.UpdateBatch(arCurrent);
      except
        MessageDlg(QRelFesCustCustomerId.AsString , mtError, [mbOK], 0);
      end;
      QRelFesCust.Next;
    until QRelFesCust.Eof;}
  except
    DMMain.ADOConnection.RollbackTrans;
//  MessageDlg(QRelFesCustCustomerId.AsString , mtError, [mbOK], 0);
    MessageDlg('Rollback', mtError, [mbOK], 0);
    exit;
  end;

//  DMMain.ADOConnection.CommitTrans;
  Lc:=QUpdCustLocId.AsInteger;

  QCustLoc.Active:=False;
  QCustLoc.Active:=True;
  QCustLoc.Locate('Id',Lc,[]);

  begin
    QUpdCustLoc.Active:=False;
    QUpdCustLoc.SQL.Text:='SELECT * FROM CustomerLoc Where Id = :PId ';
    QUpdCustLoc.DataSource:=dsQCustLoc;
    QUpdCustLoc.Active:=True;
  end;
end;

procedure TDMMembers.CancelData;
begin
  QUpdCustLoc.Cancel;
  begin
   QUpdCustLoc.Active:=False;
   QUpdCustLoc.SQL.Text:='SELECT * FROM CustomerLoc Where Id = :PId ';
   QUpdCustLoc.DataSource:=dsQCustLoc;
   QUpdCustLoc.Active:=True;
  end;

  DMMain.ReleaseLock(LoginName,QUpdCustLoc,TFrmBase(Self.Owner).PFormName);
end;

procedure TDMMembers.UpdateRecord;
begin
  if DMMain.AcquireLock(LoginName,QUpdCustLoc,TFrmBase(Self.Owner).PFormName) then
    begin
      QUpdCustLoc.Edit;
    end
  else
    begin
     Raise EConvertError.Create(DMMain.LockInformation(QUpdCustLoc));
    end;
end;

procedure TDMMembers.DataModuleCreate(Sender: TObject);
var gADOConStr: AnsiString;
begin
  inherited;
//  DMSubParams             := TDMSubParams.Create(Self);



{  gADOConStr := frmMain.IniReadString(SEC_ADO_SECTION, SEC_CONNECTION_STRING_LINE, '');
  If (Length(gADOConStr) = 0) Then
    begin
    If EditConnectionString(ADOConnectionOmnis) Then
      begin
        gADOConStr := ADOConnectionOmnis.ConnectionString;
        frmMain.IniWriteString(SEC_ADO_SECTION, SEC_CONNECTION_STRING_LINE, gADOConStr);
      end;
      gADOConStr := ADOConnectionOmnis.ConnectionString;
      frmMain.IniWriteString(SEC_ADO_SECTION, SEC_CONNECTION_STRING_LINE, gADOConStr);
    end
  else
    begin
        gADOConStr := ADOConnectionOmnis.ConnectionString;
        frmMain.IniWriteString(SEC_ADO_SECTION, SEC_CONNECTION_STRING_LINE, gADOConStr);
     end;}

  ADOTable1.Active       :=True;

  QCustLoc.Active        := True;
  QUpdCustLoc.Active     := True;

  QRelFesCust.Active     := True;
  QRelPdfCust.Active     := True;

  QUpdCustLoc.Active     := True;
  QRelFesCust.Active     := True;

  MakDetail.Active       := True;
  MakPratIP.Active       := True;
  MakPratPhone.Active    := True;

  MakPhone.Active        := True;
  MakIP.Active           := True;

  try
      QUpdCustLoc.Active     := True;
  except
  on E : EOleException do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;


end;

procedure TDMMembers.QUpdCustLocBeforePost(DataSet: TDataSet);
begin
//  inherited;
   GenBeforePostWithName(Dataset,'CustomerLoc');
end;

procedure TDMMembers.dsMakPratIPStateChange(Sender: TObject);
begin
  inherited;
if Self.Owner is TfrmMembers then
 if TDataSource(Sender).State in [dsInsert,dsEdit] then
   TfrmMembers(self.Owner).SetState('MakIPA')
 else
  begin
   TfrmMembers(self.Owner).SetState('MakIPPhone');
   TfrmMembers(self.Owner).SetStatusText('',0);
  end;

 if TDataSource(Sender).State in [dsInsert,dsEdit] then
   begin
   TfrmMembers(self.Owner).DbGridIP.Options:=TfrmMembers(self.Owner).DbGridIP.Options-[dgRowSelect];
   TfrmMembers(self.Owner).DbGridIP.Options:=TfrmMembers(self.Owner).DbGridIP.Options+[dgEditing];
   end
 else
   begin
   TfrmMembers(self.Owner).DbGridIP.Options:=TfrmMembers(self.Owner).DbGridIP.Options-[dgEditing];
   TfrmMembers(self.Owner).DbGridIP.Options:=TfrmMembers(self.Owner).DbGridIP.Options+[dgRowSelect];
   end;
end;

procedure TDMMembers.dsMakPratPhoneStateChange(Sender: TObject);
begin
  inherited;
if Self.Owner is TfrmMembers then
 if TDataSource(Sender).State in [dsInsert,dsEdit] then
   TfrmMembers(self.Owner).SetState('MakPhoneA')
 else
  begin
   TfrmMembers(self.Owner).SetState('MakIPPhone');
   TfrmMembers(self.Owner).SetStatusText('',0);
  end;

 if TDataSource(Sender).State in [dsInsert,dsEdit] then
   begin
   TfrmMembers(self.Owner).DbGridPhone.Options:=TfrmMembers(self.Owner).DbGridPhone.Options-[dgRowSelect];
   TfrmMembers(self.Owner).DbGridPhone.Options:=TfrmMembers(self.Owner).DbGridPhone.Options+[dgEditing];
   end
 else
   begin
   TfrmMembers(self.Owner).DbGridPhone.Options:=TfrmMembers(self.Owner).DbGridPhone.Options-[dgEditing];
   TfrmMembers(self.Owner).DbGridPhone.Options:=TfrmMembers(self.Owner).DbGridPhone.Options+[dgRowSelect];
   end;
end;

procedure TDMMembers.dsProshmStateChange(Sender: TObject);
begin
  inherited;
if Self.Owner is TfrmBase      then
 if TDataSource(Sender).State in [dsInsert,dsEdit] then
    begin
      TfrmBase(self.Owner).SetState('ProshmGA');
      TfrmBase(self.Owner).SetGrid(TfrmMembers(self.Owner).DBGrid1,True);
      TFrmMembers(self.Owner).PageControl1.ActivePageIndex:=2;
    end
 else
    begin
      TfrmBase(self.Owner).SetState('ProshmGB');
      TfrmBase(self.Owner).SetStatusText('',0);
      TfrmBase(self.Owner).SetGrid(TfrmMembers(self.Owner).DBGrid1,False);
      TFrmMembers(self.Owner).PageControl1.ActivePageIndex:=1;
    end;
end;

procedure TDMMembers.ProshmBeforePost(DataSet: TDataSet);
begin
  inherited;
   GenBeforePostWithName(Dataset,'Proshm');
end;

procedure TDMMembers.QCustLocCalcFields(DataSet: TDataSet);
begin
  inherited;
  QCustLocPId.Value :=QCustLocId.Value;
//  QCustLocFName.AsString:=QCustLocFirm.AsString + ' ' + QCustLocName.AsString;
end;

procedure TDMMembers.dsUpdCustLocDetStateChange(Sender: TObject);
begin
  inherited;
 { TODO : Check if  OK Here }

if TForm(Self).Owner is TfrmBase      then
 if TDataSource(Sender).State in [dsInsert,dsEdit] then
    begin
       TfrmBase(self.Owner).SetState('MoveDetA');
//       TfrmBase(self.Owner).SetGrid(TfrmMembers(self.Owner).DBGrid7,True);
    end
 else
    begin
      TfrmBase(self.Owner).SetState('MoveDet');
      TfrmBase(self.Owner).SetStatusText('',0);
//      TfrmBase(self.Owner).SetGrid(TfrmMembers(self.Owner).DBGrid7,False);
    end;

end;

function TDMMembers.ReturnSapId(Code: Integer): Int64;
begin
{  QFindSapId.Active := False;
  QFindSapId.Parameters.ParamByName('Pid').Value := Code;
  QFindSapId.Active := True;

  if QFindSapId.IsEmpty then
     raise ERangeError.CreateFmt('No Customer Found',[])
  else
     result := QFindSapIdSapId.AsLargeInt;

  QFindSapId.Active := False;}
end;

procedure TDMMembers.QRelFesCustSapIdValidate(Sender: TField);
begin
  inherited;
  try
    ADOStoredProc1.Active:=False;  
    ADOStoredProc1.Parameters.ParamByName('@PelaId').Value :=Sender.AsInteger;
    ADOStoredProc1.Active:=True;
  except

  end;
end;

procedure TDMMembers.QRelFesCustShipIdValidate(Sender: TField);
begin
  inherited;
  try
     ADOStoredProc2.Active:=False;
     ADOStoredProc2.Parameters.ParamByName('@AddrId').Value :=Sender.AsInteger;
     ADOStoredProc2.Active:=True;
  except

  end;

end;

procedure TDMMembers.ADOTable1CalcFields(DataSet: TDataSet);
begin
  inherited;
  ADOTable1CalcField.AsString := ADOTable1sta_id.AsString + ' ' + ADOTable1sta_owner.AsString ;
end;

procedure TDMMembers.dsQRelPdfCustStateChange(Sender: TObject);
begin
  inherited;
if Self.Owner is TfrmBase      then
 if TDataSource(Sender).State in [dsInsert,dsEdit] then
    begin
      TfrmBase(self.Owner).SetState('PdfGA');
      TfrmBase(self.Owner).SetGrid(TfrmMembers(self.Owner).DBGrid2,True);
      TFrmMembers(self.Owner).PageControl1.ActivePageIndex:=4;
    end
 else
    begin
      TfrmBase(self.Owner).SetState('PdfGB');
      TfrmBase(self.Owner).SetStatusText('',0);
      TfrmBase(self.Owner).SetGrid(TfrmMembers(self.Owner).DBGrid2,False);
      TFrmMembers(self.Owner).PageControl1.ActivePageIndex:=3;
    end;
end;

procedure TDMMembers.QRelPdfCustBeforePost(DataSet: TDataSet);
begin
  inherited;
   GenBeforePostWithName(Dataset,'SapPelPdf');
end;

end.
