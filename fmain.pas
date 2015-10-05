unit FMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DBZVDateTimePicker, ZVDateTimePicker, uPoweredby,
  usplashabout,  Forms, Graphics, Dialogs, Menus, DMain,
  DB, sqlite3conn, sqldb, eventlog, DBGrids, ActnList, ComCtrls, StdCtrls,
  IniPropStorage, Controls, lcltype, FPasswordDlg, Unit1, DBCtrls, ExtCtrls,
  ExtDlgs, XMLPropStorage, ValEdit, CheckLst, Form3, FBaseForm, FormStat001,
  GResources, Globals, LCLIntf;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    actGroupExam: TAction;
    actDatesExamLog: TAction;
    actGroupExamDet: TAction;
    actExamMinMax: TAction;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    actDatesExamLog1: TAction;
    actMFA: TAction;
    actPopDates: TAction;
    actV_DatesExamLogFull: TAction;
    actPeople: TAction;
    actPopDatesExams: TAction;
    actMM: TAction;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    clb: TCheckListBox;
    chkDisplayEndId: TCheckBox;
    chkDisplayId: TCheckBox;
    DBImage1: TDBImage;
    DBMemo1: TDBMemo;
    Edit1: TEdit;
    Image1: TImage;
    IniPropStorage1: TIniPropStorage;
    KeysTableCurrentKey: TLongintField;
    KeysTableTable: TStringField;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MinTrunLength: TEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    popupClb: TPopupMenu;
    KeysTable: TSQLQuery;
    Poweredby1: TPoweredby;
    SplashAbout1: TSplashAbout;
    TabSheet3: TTabSheet;
    GroupMM: TAction;
    ExamSchemaDet: TAction;
    actSpecialMenu: TAction;
    bDontShowMsg: TCheckBox;
    CalendarDialog1: TCalendarDialog;
    chkNotLog1: TCheckBox;
    chkNotLog2: TCheckBox;
    actDates: TAction;
    actDatesDetail: TAction;
    DBLookupComboBox1: TDBLookupComboBox;
    EventLog1: TEventLog;
    EventLog2: TEventLog;
    EventLogSQL: TEventLog;
    actExamSchema: TAction;
    actExamName: TAction;
    actLocations: TAction;
    ActionList1: TActionList;
    ApplicationProperties1: TApplicationProperties;
    CoolBar1: TCoolBar;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    SQLite3Connection1: TSQLite3Connection;
    SQLTransaction1: TSQLTransaction;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ToolBar1: TToolBar;
    TrunLen: TEdit;
    ValueListEditor1: TValueListEditor;
    XMLPropStorage1: TXMLPropStorage;
    ZVDateTimePicker1: TZVDateTimePicker;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure actPopDatesExamsExecute(Sender: TObject);
    procedure actPopDatesExecute(Sender: TObject);
    procedure actSpecialMenuExecute(Sender: TObject);
    procedure actDatesExecute(Sender: TObject);
    procedure ApplicationProperties1Activate(Sender: TObject);
    procedure ApplicationProperties1Exception(Sender: TObject; E: Exception);
    procedure ApplicationProperties1GetMainFormHandle(var HHandle: HWND);
    procedure ApplicationProperties1ModalBegin(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure clbDblClick(Sender: TObject);
    procedure clbItemClick(Sender: TObject; Index: integer);
    procedure DBLookupComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image1DblClick(Sender: TObject);
    procedure LocationsExecute(Sender: TObject);
    procedure ChangeLength(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure popupClbPopup(Sender: TObject);
    procedure SQLite3Connection1Log(Sender: TSQLConnection;
      EventType: TDBEventType; const Msg: String);
    procedure XMLPropStorage1RestoreProperties(Sender: TObject);
    procedure actSubParamNoWrapPopupExecute(PField, PSource: string);
    procedure LeoKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    FDisplayedForm: TForm;
    FLoginCommited: boolean;
    procedure DispPrintExp(E: Exception; Form: string; StrText: string);
    procedure DispPrintExpPass(E: Exception; Form: string; StrText: string);
    procedure EnhmClbXor(LeoCb: TCheckListBox; OnOff: boolean);
    procedure HintSubExecute(Sender: TObject);
    procedure OpenPopUp(Source: string);
    procedure SetLoginCommited(AValue: boolean);
    procedure EnhmClb(LeoCb: TCheckListBox; OnOff: boolean);
    { private declarations }
  public
    DMain: TDataModule1;
    PopChLstBox: TObject;

    popupClbPbl: TPopupMenu;


    InPopUpState: boolean;
    ReturnVal: integer;
    SapConStr: olevariant;
    TFrom: TDateTime;
    TTo: TDateTime;
    TRFrom: TDateTime;
    TRTo: TDateTime;
    ConnSap: boolean;
    AppColors: array [1..8] of TColor;
    AppFonts: array [1..8] of TFont;
    function CreateKey(const TableName: string): integer;

    procedure WriteIniSub(Form: string; LLeft, WWidth, TTop, HHeight, State: integer);
    procedure ReadIniSub(Form: string; var LLeft, WWidth, TTop, HHeight, State: integer);
    procedure ReadIniG(NName: string; var Value: string);
    procedure WriteIniG(NName: string; Value: string);
    function IniReadString(Section: string; NName: string; Value: string): string;
    procedure IniWriteString(Section: string; NName: string; Value: string);
    procedure WriteGrid(Form: string; Grid: TDBGrid);
    procedure ReadGrid(Form: string; Grid: TDBGrid; var Filter: string;
      var Index: string; var DataSource: string);
    procedure WriteCombo(Form: string; Combo: TComboBox);
    procedure ReadCombo(Form: string; Combo: TComboBox);
    procedure SetDisplayedForm(const Value: TForm);
    procedure RunProcess(ExeName, CmdLine, WinName: string; TimeOut: integer = 5000);
    procedure RunProcessAndWait(ExeName, CmdLine, WinName: string;
      TimeOut: integer = 5000);
    //    property Ini           : TIniPropStorage read FIni;
    property LoginCommited: boolean read FLoginCommited write SetLoginCommited;
    property DisplayedForm: TForm read FDisplayedForm write SetDisplayedForm;
    //    property FormID        : Integer  read PFormID        write PFormID ;
  end;


var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }


procedure TfrmMain.FormActivate(Sender: TObject);
var
  frm: TfrmPasswordDlg;
  MustExit: boolean;
  DBVer: string;
  ExeVer: string;
  DBVerC, ExeVerC: char;
  ExeShort: string;
  x: integer;
  //  fc : TFormClass;
begin
  //Label3.Caption :=  TAppInfo.AppInfoCopyright;
  //Label5.Caption :=  TAppInfo.AppInfoPathData;
  //Label6.Caption :=  TAppInfo.AppInfoPathLocal;

  //  fc  := TFormClass(FindClass('TFrmMerchant'));

  //if (Not(LoginCommited)) then
  //  if ((Assigned(DMMain) = True)) then
  //    begin
  //      frm := TfrmPasswordDlg.Create(self);
  //      try
  //        if frm.ShowModal = mrCancel then
  //          MustExit := True;
  //      finally
  //        frm.Free;
  //        LoginCommited := True;
  //      end;

  //      if MustExit then
  //        Application.Terminate;
  //    end;

  //EPInfoExe1.LangId  := '040904E4';
  //EPInfoExe1.ExeName := Application.ExeName;
  //EPInfoExe1.Execute;

  //ExeVer := EPInfoExe1.FileVersion;
  //DBVer  := DMMain.GetSoftVersion();

  //ExeShort := AnsiReplaceStr(ExeVer, '.', '');

  //if ExeVer > '' then
  //  ExeVerC := ExeShort[1]
  //else
  //  ExeVerC := '1';

  //if DBVer > '' then
  //  DBVerC := DBVer[1]
  //else
  //  DBVerC := '1';

  //if Not(ExeVerC = DBVerC) then
  //  begin
  //    if MessageDlg('Προσοχή υπάρχει νέα Release.' + chr(13) +
  //      'Release Εγκατεστημένου Προγράμματος :' + ExeVerC + chr(13) +
  //      'Συνέχεια ;(No).', mtError, [mbNo], 0) = mrNo then
  //      Application.Terminate;
  //  end;

  //if Not(ExeShort = DBVer) then
  //  begin
  //    if MessageDlg('Προσοχή υπάρχει νέα Version.' + chr(13) +
  //      'Version Εγκατεστημένου Προγράμματος :' + ExeVer + chr(13) +
  //      'Συνέχεια ;(Yes/No).', mtError, [mbYes, mbNo], 0) = mrNo then
  //      Application.Terminate;
  //  end;


  //Globals.gUGroupID:=LoginGroup;
  //Globals.gUUserDESCR:=LoginName;
  //Globals.gUUserID:=LoginId;

  if ConnSap then
    Application.Minimize;

  //{$REGION 'Animated Image'}
  //  GifImage := TGIFImage.Create();
  ////    try
  //      GifImage.LoadFromFile('0ss.gif');
  ////      GifImage.AnimateLoop := glEnabled;
  ////      GifImage.AnimationSpeed := 1000;
  //      GifImage.Animate := True;
  //      Image1.Picture.Assign(GifImage);
  //      Image1.Repaint;

  ////    finally
  ////      FreeAndNil(GifImage);


  //  //  Image1.Picture.LoadFromFile('ss.gif');
  //  //  TGIFImage(Image1.Picture.Graphic).Animate := True;
  //  //  TGIFImage(Image1.Picture.Graphic).AnimationSpeed := 1;
  //  //  TGIFImage(Image1.Picture.Graphic).AnimateLoop := glEnabled;
  //  //  TGIFImage(Image1.Picture.Graphic).Animate := True;
  //{$ENDREGION}


  if System.ParamCount > 0 then
    for x := 0 to ActionList1.ActionCount - 1 do
    begin
      MessageDlg(ActionList1.Actions[x].Name, mtCustom, [mbOK], 0);
      try
        ActionList1.Actions[x].Execute;
      except

      end;
    end;
end;

procedure TfrmMain.ApplicationProperties1Activate(Sender: TObject);
begin
  //   MessageDlg ('Question',
  //'Do you wish to Execute?'+Sender.ClassName, mtConfirmation,
  //                  [mbYes, mbNo, mbIgnore],0)
end;

procedure TfrmMain.Action1Execute(Sender: TObject);
var
  frm: TForm1;
begin
  frm := TForm1.Create(self);
  frm.DBGrid1.DataSource := DMain.dtsLocations;
  frm.CreateAddEdit;
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.Action2Execute(Sender: TObject);
var DDs: TDataSource;
    frm: TFrmStat001;
    fDM: TDataModule1;
    x: integer;
begin
  if Assigned(DMain) then
    fDM := DMain
  else
    fDM := TDataModule1.Create(self);

  frm := TFrmStat001.Create(self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.Action3Execute(Sender: TObject);
var DDs: TDataSource;
    frm: TFrmBaseForm;
    fDM: TDataModule1;
    x: integer;
begin
  frm := TFrmBaseForm.Create(self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.actPopDatesExamsExecute(Sender: TObject);
begin

end;

procedure TfrmMain.actPopDatesExecute(Sender: TObject);
var DDs: TDataSource;
    frm: TFrmForm3;
    fDM: TDataModule1;
    x: integer;
begin
  if Assigned(DMain) then
    fDM := DMain
  else
    fDM := TDataModule1.Create(self);

//  InputBox('const ACaption', 'APrompt', 'ADefault');

  frm := TFrmForm3.Create(self);
  frm.ShowModal;
  frm.Free;

end;

procedure TfrmMain.actSpecialMenuExecute(Sender: TObject);
var
  x: integer;
begin
  IniPropStorage1.IniSection := 'Init';
  //XmlPropStorage1.IniSection:='leonidas';
  for x := 0 to self.ComponentCount - 1 do
  begin
    IniPropStorage1.WriteString(TComponent(self.Components[x]).Name,
      TComponent(self.Components[x]).ClassName);
    XmlPropStorage1.WriteString(TComponent(self.Components[x]).Name,
      TComponent(self.Components[x]).ClassName);
  end;

  if PageControl1.ActivePage = TabSheet2 then
  begin
    PageControl1.ActivePage := TabSheet1;
    exit;
  end;

  if CalendarDialog1.Execute then
    if CalendarDialog1.Date = StrtoDate('13/03/1968') then
    begin
      if PageControl1.ActivePage = TabSheet1 then
        PageControl1.ActivePage := TabSheet2
      else
        PageControl1.ActivePage := TabSheet1;
    end
    else
      exit;
end;


procedure TfrmMain.actDatesExecute(Sender: TObject);
var
  DDs: TDataSource;
  frm: TForm1;
  fDM: TDataModule1;
  x: integer;
begin
  frm := TForm1.Create(self);
  if Assigned(DMain) then
    fDM := DMain
  else
    begin
      DMain := TDataModule1.Create(self);
      fDM := DMain
    end;


  //  fDM:=TDataModule1.Create(frm);
  if Sender is TAction then
    for x := 0 to fDM.ComponentCount - 1 do
    begin
      if fDM.Components[x] is TDataSource then
        if TDataSource(fDM.Components[x]).Name = TAction(Sender).Hint then
          DDs := TDataSource(fDM.Components[x]);
    end;
  if Sender is TAction then
    for x := 0 to fDM.ComponentCount - 1 do
    begin
      if fDM.Components[x] is TDataSource then
        if TDataSource(fDM.Components[x]).Name = TAction(Sender).Hint then
          DDs := TDataSource(fDM.Components[x]);
    end;
  //  DMain.SQLTransaction1.StartTransaction;
  frm.DM := fDM;
  frm.DBGrid1.DataSource := DDs;
  frm.Caption:=TAction(Sender).Caption;
  frm.CreateAddEdit;
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.ApplicationProperties1GetMainFormHandle(var HHandle: HWND);
begin
  //       MessageDlg ('Question',
  //'Do you wish to Execute?', mtConfirmation,
  //                  [mbYes, mbNo, mbIgnore],0)
end;

procedure TfrmMain.ApplicationProperties1ModalBegin(Sender: TObject);
begin
  //  MessageDlg ('Question',
  //'Do you wish to Execute?'+Sender.ClassName, mtConfirmation,
  //                 [mbYes, mbNo, mbIgnore],0)

end;

procedure TfrmMain.Button1Click(Sender: TObject);
var
  x: integer;
begin
  ValueListEditor1.Strings.Add('MyValue1=True');
  ValueListEditor1.Strings.Add('MyValue2=AValue');
  ValueListEditor1.Strings.Add('MyValue3=AValue');

  with ValueListEditor1.ItemProps['MyValue1'] do
  begin
    KeyDesc := 'MyValue: PickList';  //optional description
    EditStyle := esPickList;
    ReadOnly := True;  //user cannot add options to dropdownlist
    PickList.Add('True');
    PickList.Add('False');
  end;

  ValueListEditor1.ItemProps['MyValue2'].EditStyle := esEllipsis;
  ValueListEditor1.ItemProps['MyValue3'].EditStyle := esSimple;

  for x := 0 to 25 do
    clb.AddItem(IntToStr(x), TObject(x));

end;

procedure TfrmMain.Button2Click(Sender: TObject);
var
  i, x: integer;
  c, Result: ansistring;
begin
  Result := '';
  x := 0;
  for i := 0 to clb.Count - 1 do
  begin
    if clb.Checked[i] then
    begin
      c := c + IntToStr((integer(clb.Items.Objects[i])));
      c := c + ',';
      Inc(x);
    end;
  end;
  //if x = clb.Count then
  //   Result := ''
  //else
  //   begin
  SetLength(c, (Length(c) - 1));
  Result := c;
  MessageDlg(Result, mtError, [mbOK], 0);
  //   end;

end;

procedure TfrmMain.Button3Click(Sender: TObject);
var
  DDs: TDataSource;
  frm: TForm1;
  fDM: TDataModule1;
  x: integer;
begin
  frm := TForm1.Create(self);
  if Assigned(DMain) then
    fDM := DMain
  else
    fDM := TDataModule1.Create(self);
    for x := 0 to fDM.ComponentCount - 1 do
    begin
      if fDM.Components[x] is TDataSource then
        if TDataSource(fDM.Components[x]).Name = Edit1.Text then
          DDs := TDataSource(fDM.Components[x]);
    end;
    for x := 0 to fDM.ComponentCount - 1 do
    begin
      if fDM.Components[x] is TDataSource then
        if TDataSource(fDM.Components[x]).Name = Edit1.Text then
          DDs := TDataSource(fDM.Components[x]);
    end;
  frm.DM := fDM;
  frm.DBGrid1.DataSource := DDs;
  frm.Caption:=Edit1.Text;
  frm.CreateAddEdit;
  frm.ShowModal;
  frm.Free;

end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
  SplashAbout1.ShowAbout;
end;

procedure TfrmMain.Button5Click(Sender: TObject);
var x:integer;
begin
  for x:=0 to ActionList1.ActionCount -1 do
      clb.AddItem(Actionlist1.Actions[x].Name,TObject(Actionlist1.Actions[x]));
end;

procedure TfrmMain.clbDblClick(Sender: TObject);
var l,p:TPoint;
    t:integer;
    a:TNotifyEvent;
begin
  l:=Mouse.CursorPos;
  p:=TControl(Sender).ScreenToClient(l);
  t:=clb.ItemAtPos(p,True);
  MessageDlg(TAction(clb.Items.Objects[t]).Name, mtError,[mbOk], 0);
  a:=TAction(clb.Items.Objects[t]).OnExecute;

  MessageDlg(TAction(clb.Items.Objects[t]).Category  , mtError,[mbOk], 0);
end;

procedure TfrmMain.clbItemClick(Sender: TObject; Index: integer);
begin
  MessageDlg(TAction(clb.Items.Objects[index]).Name, mtError,[mbOk], 0);
end;

procedure TfrmMain.DBLookupComboBox1Change(Sender: TObject);
begin
  //if TDBLookupComboBox(sender).DataSource.State in [dsEdit,dsInsert] then
  //  MessageDlg('Only One Instance Allowed.', mtError,[mbOk], 0)
  //else
  //  RaiseLastOSError ;
end;




procedure TfrmMain.SetLoginCommited(AValue: boolean);
begin
  if FLoginCommited = AValue then
    Exit;
  FLoginCommited := AValue;
end;

procedure TfrmMain.WriteIniSub(Form: string;
  LLeft, WWidth, TTop, HHeight, State: integer);
begin

end;

procedure TfrmMain.ReadIniSub(Form: string;
  var LLeft, WWidth, TTop, HHeight, State: integer);
begin

end;

procedure TfrmMain.ReadIniG(NName: string; var Value: string);
begin

end;

procedure TfrmMain.WriteIniG(NName: string; Value: string);
begin

end;

function TfrmMain.IniReadString(Section: string; NName: string; Value: string): string;
begin

end;

procedure TfrmMain.IniWriteString(Section: string; NName: string; Value: string);
begin

end;

procedure TfrmMain.WriteGrid(Form: string; Grid: TDBGrid);
begin

end;

procedure TfrmMain.ReadGrid(Form: string; Grid: TDBGrid; var Filter: string;
  var Index: string; var DataSource: string);
begin

end;

procedure TfrmMain.WriteCombo(Form: string; Combo: TComboBox);
begin

end;

procedure TfrmMain.ReadCombo(Form: string; Combo: TComboBox);
begin

end;

procedure TfrmMain.SetDisplayedForm(const Value: TForm);
begin

end;

procedure TfrmMain.RunProcess(ExeName, CmdLine, WinName: string; TimeOut: integer);
begin

end;

procedure TfrmMain.RunProcessAndWait(ExeName, CmdLine, WinName: string;
  TimeOut: integer);
begin

end;



procedure TfrmMain.FormCreate(Sender: TObject);
var
  s,aas: string;
  dt1, dt2, dt3: TDateTime;
  //    ttc:TfrmSubParamsNoDev;
  I, x: integer;
  XLApp: variant;
begin
  { ALeo:=GlobalFindAtom(pchar(Application.ExeName));
    if ALeo = 0 then
    GlobalAddAtom(pchar(Application.ExeName))
    else
    begin
    MessageDlg('Only One Instance Allowed.', mtError,[mbOk], 0);
    Perform(WM_CLOSE,0,0);
    exit;
    end; }

  //  FDrawStyle := 1;
  //  FIni       := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  //  ReadIni;
  //  SetBounds(wLeft, wTop, wWidth, wHeight);

  //  TPicture.RegisterFileFormat('GIF', sGIFImageFile, TGIFImage);

  //  // WindowState := wWindowState;
  //  WindowState := wsNormal;

  //  Stack := TStack<String>.Create;

  //  { try
  //    DMMain := TDMMain.Create(Self);
  //    except
  //    on E:Exception do begin
  //    Application.HandleException( E );
  //    PostMessage( Handle, WM_CLOSE, 0, 0 );
  //    end;
  //    end; }

  //  // if Login then begin
  //  SetInfoDate(Date);
  //  // SetInfoUser( UserName );
  //  // end else
  //  // PostMessage( Handle, WM_CLOSE, 0, 0 );
  //  Application.OnHint := AppEventsHint2;
  //  ReadColors(self);
  //  ConnSap := False;

  //  TRFrom := strtotime('08:00:00');
  //  TRTo   := strtotime('08:45:00');

  //  // RegisterClass(TfrmDatefile);

  //  RegisterClass(TfrmSubParamsNo);
  //  RegisterClass(TfrmSubParamsNoEh);
  //  RegisterClass(TfrmSubParamsNoDev);
  //  RegisterClass(TDMSubParams);
  //  RegisterClass(TDMSubParams00);
  //  RegisterClass(TDMSubParams11);
  //  RegisterClass(TDMSysSubParams);
  //  RegisterClass(TMerchantDM);
  //  RegisterClass(TfrmMerchant);
  //  RegisterClass(TfrmCustomer);
  //  RegisterClass(TCustomerDM);
  //  RegisterClass(TfrmStation);
  //  RegisterClass(TStationDM);
  //  RegisterClass(TfrmTerminal);
  //  RegisterClass(TTerminalDM);
  //  RegisterClass(TfrmAcard);
  //  RegisterClass(TfrmGenMaintDev);
  //  RegisterClass(TAcardDM);
  //  RegisterClass(TDMStationSubs);
  //  RegisterClass(TDMMerStaCust);
  //  RegisterClass(TDMTransAll);
  //  RegisterClass(TDMCheckTools);
  //  RegisterClass(TfrmExportBlackList);
  //  RegisterClass(TfrmExportNew);
  //  RegisterClass(TfrmExportNewTerminal);
  //  RegisterClass(TfrmPrnTranPrologue);
  //  RegisterClass(TfrmPrnTranEmpPrologue);
  //  RegisterClass(TfrmPrnStationCallendarPro);
  //  RegisterClass(TfrmEnhmTranPrologue);
  //  RegisterClass(TfrmImportStd);
  //  RegisterClass(TfrmImportStdTrCall);

  ////  RegisterClass(TDMSysSubParams);


  //  if not chkNotLog1.Checked then
  //  begin
  //    JvLogFile1.Active := False;
  //    JvLogFile1.FileName := ExtractFilePath(Application.ExeName)+'\AppLog\Log_Execptions_' + DateToStrNum(now)+'.out';
  //    JvLogFile1.Active := True;
  //  end;

  //  if not chkNotLog2.Checked then
  //  begin
  //    JvLogFile2.Active := False;
  //    JvLogFile2.FileName := ExtractFilePath(Application.ExeName)+'\AppLog\Log_SQL_' + DateToStrNum(now)+'.out';
  //    JvLogFile2.Active := True;
  //  end;

  //  if not chkDisplayId.Checked then
  //  begin
  //    JvLogFile3.Active := False;
  //    JvLogFile3.FileName := ExtractFilePath(Application.ExeName)+ '\AppLog\Log3-' + DateToStrNum(now)+'.out';
  //    JvLogFile3.Active := True;
  //  end;

  //  if not chkDisplayEndId.Checked then
  //  begin
  //    JvLogFile4.Active := False;
  //    JvLogFile4.FileName := ExtractFilePath(Application.ExeName)+'\AppLog\Log4-' + DateToStrNum(now)+'.out';
  //    JvLogFile4.Active := True;
  //  end;

  //  ApplCursorList := TList.Create;

  //  //ApplCursorList: TList;

  ////  for i:=0 to ActionList1.ActionCount -1 do
  ////  if TAction(ActionList1.Actions[i]).Hint = '' then
  ////     TAction(ActionList1.Actions[i]).Hint := TAction(ActionList1.Actions[
  ////i]).Caption;


  ////  Application.OnHint:=DisplayHint;

  // s:=Application.ExeName;
  // s:=GetFileVersion0(Application.ExeName,'%d.%d.%d.%d');
  // self.Caption :=  self.Caption + ' Ver.' + s + ' Compiled @ '+ DateTimeToStr(FileDateToDateTime(FileAge(ParamStr(0))));;

  // TrayIcon1.BalloonHint :=  TrayIcon1.BalloonHint + ' Ver.' + s;


  //    dt1:=DMMain.GNow;
  //    dt2:=now();
  //    dt3:=Abs(dt1-dt2);

  //    if (dt3 > 1.9999) then
  //       MessageDlg('Πρόβλημα με την Ώρα' + datetimetostr(dt1) + datetimetostr(dt2), mtError, [mbOK], 0);

  //    Image2.Picture.LoadFromFile('.\Images\AvinCardSmall.bmp');
  //    Image3.Picture.LoadFromFile('.\Images\AvinCardSmallBw.bmp');



  // WebBrowser1.Visible := False;
  // WebBrowser1.Enabled := False;

  //     XLApp := CreateOleObject('Excel.Application');
  //     VarSExcel:=XLApp.Application.Version;
  //     Label4.Caption := Label4.Caption + VarSExcel;
  ////     MessageDlg(VarSExcel, mtCustom, [mbOK], 0);
  //     XLApp.quit;

  //  DMain:=TDataModule1.Create(Self);
  aas:=FormatDateTime('YYYYMMDDhhnnss',now);
  EventLog1.FileName:='.\\Log\Log1-'+aas+'.log';
  EventLog1.Active := True;
  EventLog2.FileName:='.\\Log\Log2-'+aas+'.log';
  EventLog2.Active := True;
  EventLogSQL.FileName:='.\\Log\LogSql-'+aas+'.log';
  EventLogSQL.Active := True;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  EventLog1.Active := False;
  EventLog2.Active := False;
  EventLogSQL.Active := False;

end;

procedure TfrmMain.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  self.caption := InttoStr(x) + ' ' + InttoStr(y);
end;

procedure TfrmMain.Image1DblClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TfrmMain.LocationsExecute(Sender: TObject);
begin

end;

procedure TfrmMain.Memo1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin

end;

procedure TfrmMain.MenuItem2Click(Sender: TObject);
var
  frm: TForm1;
begin
  frm := TForm1.Create(self);
  frm.DBGrid1.DataSource := DMain.dtsLocations;
//  DMain.dtsLocations.OnStateChange := frm.DataSource1.OnStateChange;
  frm.CreateAddEdit;
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.PageControl1Change(Sender: TObject);
begin

end;

procedure TfrmMain.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin

end;


procedure TfrmMain.popupClbPopup(Sender: TObject);
begin
  PopChLstBox := TPopupMenu(Sender).PopupComponent;
end;

procedure TfrmMain.SQLite3Connection1Log(Sender: TSQLConnection;
  EventType: TDBEventType; const Msg: String);
begin
 if EventLogSQL.Active = true then
    EventLogSQL.Error(Msg);
end;

procedure TfrmMain.XMLPropStorage1RestoreProperties(Sender: TObject);
begin

end;

procedure TfrmMain.HintSubExecute(Sender: TObject);
var
  DDs: TDataSource;
  frm: TForm1;
  x: integer;
begin
  if Sender is TAction then
    for x := 0 to DMain.ComponentCount - 1 do
    begin
      if DMain.Components[x] is TDataSource then
        if TDataSource(DMain.Components[x]).Name = TAction(Sender).Hint then
          DDs := TDataSource(DMain.Components[x]);
    end;
  frm := TForm1.Create(self);
  frm.DBGrid1.DataSource := DDs;
  frm.CreateAddEdit;
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.actSubParamNoWrapPopupExecute(PField, PSource: string);
begin
  //  InPopUpState:=True;
  OpenPopUp(PSource);
  //  InPopUpState:=False;
end;

procedure TfrmMain.ApplicationProperties1Exception(Sender: TObject; E: Exception);
begin
  if not bDontShowMsg.Checked then
  begin
    MessageDlg(rsGeneralException + E.Message + E.ToString, mtError, [mbOK], 0);
    //    ShowException(E, ExceptAddr);
  end;

  if not chkNotLog1.Checked then
    EventLog1.Debug(E.ToString + ' ' + E.ClassName);

  if E is EDatabaseError then
  begin
    MessageDlg(E.ToString, mtError, [mbOK], 0);
    EventLog1.Error(E.ToString + ' ' + E.ClassName);
    EventLog1.Error(E.Message);
    EventLog1.Error(E.ToString);
  end;

end;


procedure TfrmMain.DispPrintExp(E: Exception; Form: string; StrText: string);
begin
  //  MessageDlg('General Exception Trap', mtError, [mbOK], 0);
  //  ShowException(E, ExceptAddr);
  self.EventLog1.Debug(E.ToString + ' ' + Form + ' ' + Text);
end;

procedure TfrmMain.DispPrintExpPass(E: Exception; Form: string; StrText: string);
begin
  //  MessageDlg('General Exception Trap', mtError, [mbOK], 0);
  //  ShowException(E, ExceptAddr);
  self.EventLog1.Debug(E.ToString + ' ' + Form + ' ' + Text);
end;

//procedure TfrmMain.ShowException

procedure TfrmMain.LeoKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
var
  PopField, PopSource: string;
  PopDBLC: TDBLookupComboBox;
  DsState: TDataSetState;
begin
  if Key = VK_F2 then
  begin
    if Sender is TDBLookupComboBox then
    begin
      PopDBLC := TDBLookupComboBox(Sender);
      if PopDBLC.ListField > '' then
      begin
        PopField := PopDBLC.ListField;
        PopSource := PopDBLC.ListSource.Name;
        //!!! Strict reference to frmMain
        frmMain.actSubParamNoWrapPopupExecute(PopField, PopSource);

        InPopUpState := False;
        DsState := TDBLookupComboBox(Sender).DataSource.DataSet.State;
        TSQLQuery(TDBLookupComboBox(Sender).ListSource.DataSet).Refresh;
        //    TDBLookupComboBox(Sender).ListSource.DataSet.Active := False;
        //    TDBLookupComboBox(Sender).ListSource.DataSet.Active := True;
        if DsState in [dsEdit] then
          TDBLookupComboBox(Sender).DataSource.Edit;
        TDBLookupComboBox(Sender).Field.Value := ReturnVal;

      end;
    end;
  end;
end;



procedure TfrmMain.OpenPopUp(Source: string);
var
  DDs: TDataSource;
  frm: TForm1;
  fDM: TDataModule1;
  x: integer;
begin
  frm := TForm1.Create(self);
  //  if Assigned(DMain) then
  //  fDM:=DMain
  //  else
  fDM := TDataModule1.Create(self);
  for x := 0 to fDM.ComponentCount - 1 do
  begin
    if fDM.Components[x] is TDataSource then
      if TDataSource(fDM.Components[x]).Name = Source then
        DDs := TDataSource(fDM.Components[x]);
  end;
  frm.DM := fDM;
  fdm.userform := frm;
  frm.DBGrid1.DataSource := DDs;
  frm.CreateAddEdit;
  frm.ShowModal;
  ReturnVal := frm.ReturnValue;
  frm.Free;
end;

procedure TfrmMain.EnhmClbXor(LeoCb: TCheckListBox; OnOff: boolean);
var
  x: integer;
begin
  for x := 0 to LeoCB.Items.Count - 1 do
    LeoCB.Checked[x] := not LeoCB.Checked[x];
end;


procedure TfrmMain.EnhmClb(LeoCb: TCheckListBox; OnOff: boolean);
var
  x: integer;
begin
  for x := 0 to LeoCB.Items.Count - 1 do
    LeoCB.Checked[x] := OnOff;
end;

procedure TfrmMain.N4Click(Sender: TObject);
begin
  inherited;
  if PopChLstBox is TCheckListBox then
    EnhmClb(TCheckListBox(PopChLstBox), True);
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
  inherited;
  if (PopChLstBox is TCheckListBox) then
    EnhmClb(TCheckListBox(PopChLstBox), False);
end;

procedure TfrmMain.MenuItem13Click(Sender: TObject);
begin
  EnhmClb(TCheckListBox(PopChLstBox), True);
end;

procedure TfrmMain.MenuItem14Click(Sender: TObject);
begin
  EnhmClb(TCheckListBox(PopChLstBox), False);
end;

procedure TfrmMain.MenuItem15Click(Sender: TObject);
begin
  EnhmClbXOr(TCheckListBox(PopChLstBox), False);
end;

function TfrmMain.CreateKey(const TableName: string): integer;
var
//  tbl: TSqlQuery;
  fld: TField;
begin
//  tbl := KeysTable;
  if KeysTable.Locate('Table', TableName, [loCaseInsensitive]) then
  begin
//    fld := KeysTable.FieldByName('CurrentKey').Value;
//    KeysTable.Edit;
    Result := KeysTable.FieldByName('CurrentKey').Value;
    KeysTable.Edit;
    KeysTable.FieldByName('CurrentKey').Value:=KeysTable.FieldByName('CurrentKey').Value+1;
    KeysTable.Post;
  end
  else
    raise Exception.Create('Table: ' + TableName + ' not found !!!');
end;

procedure TfrmMain.ChangeLength(Sender: TObject);
var x:Integer;
begin
  if Sender is TDbEdit then
   if Assigned(TDbEdit(Sender).Field) then
   if TDbEdit(Sender).Field.DataType = ftString then
   begin
   x:=TDbEdit(Sender).MaxLength;
   if Length(Trim(TDbEdit(Sender).Text)) > x/2 then
     TDbEdit(Sender).Color:= clRed
  else
     TDbEdit(Sender).Color:= clWindow;
   end;

end;



end.
