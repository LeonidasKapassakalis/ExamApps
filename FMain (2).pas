unit FMain;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,dbTables,
  ActnList, ToolWin, ImgList, inifiles, StrUtils,
  FPasswordDlg, FTableIds, DMain, FFPass, FUGroup, FForms, FGParams,
  FFormAction, FSFormAction, FSForm, DBase, DSubParams, //DSubParams1,
  FLocking, FBForm, FSubParams, dbgrids, FStationDataFC,
  FPolhtes, FSearchPela, FSearchPela1, RLastReport, OleCtrls, SAPLogonCtrl_TLB,
  FMembers, Variants, FMembersSel, FDispUpd, FSubParamsNo, FSubParamsNoEh,
  RBaseAdo, RMembers1, RMembers2, RMembers3, RMembers4, FDateFile,

  qrxlsxfilt, FMembersSel2,

  QRPrntr, QRCtrls, QRExport, QRPDFFilt, DateUtils,

  FCheckDub, RTotalizers, FMembersSel0, FCheckStath, FCheckDBS,
  FCheckStath99, FCheckStath10, FCheckStath0, FCheckPistola,

  FMembersSel1, FStationData,

  FSapOmnisProd,  FRelEquipmentDet, FCheckRefIntegrity, FKategory,
  FCustomerLoc, FCustomerPar, FCustomerAddr, AppEvnts, info;

const
  PWM_STORE_WIN_POS = WM_USER + 10;			{ Private unit message }

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    ActionList1: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    WindowTileVertical1: TWindowTileVertical;
    ToolBar2: TToolBar;
    ImageList1: TImageList;
    N4: TMenuItem;
    sbInfo: TStatusBar;
    N2: TMenuItem;
    N3: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    ParametersSF: TAction;
    GParams: TAction;
    GParams1: TMenuItem;
    Kinhseis: TAction;
    SFormAction: TAction;
    SForm: TAction;
    FormAction: TAction;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Locking: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    actPrnKinhseis: TAction;
    actRelEquipmentDet: TAction;
    actDispLocation: TAction;
    actDispModel: TAction;
    actDispModelLocation: TAction;
    actDispType: TAction;
    actDispTypeAll: TAction;
    actDispSel: TAction;
    actSearchSerial: TAction;
    actCheckRef: TAction;
    actKategory: TAction;
    actCustomerLoc: TAction;
    N1: TMenuItem;
    Action1: TAction;
    Action2: TAction;
    actPrintKinhseis1: TAction;
    actSendData: TAction;
    Action41: TMenuItem;
    actCustomerPar: TAction;
    actCustomerPar1: TMenuItem;
    actCustomerAddr: TAction;
    actCustomerAddr1: TMenuItem;
    actDispUpd: TAction;
    N5: TMenuItem;
    Timer1: TTimer;
    actDailyUpdate: TAction;
    SAPLogonControl1: TSAPLogonControl;
    actreport: TAction;
    actreport1: TMenuItem;
    actReportPdf: TAction;
    actReportXLS: TAction;
    PDF1: TMenuItem;
    XLS1: TMenuItem;
    Timer2: TTimer;
    actSendDataSingle: TAction;
    N9: TMenuItem;
    N21: TMenuItem;
    actSapOmnisProd: TAction;
    actSapOmnisProd1: TMenuItem;
    actDub: TAction;
    actDub1: TMenuItem;
    actTotalizers: TAction;
    actTotalizers1: TMenuItem;
    actPrint: TAction;
    actPrint1: TMenuItem;
    actUtils: TAction;
    Utilities1: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    actRepEnhm: TAction;
    N25: TMenuItem;
    ApplicationEvents1: TApplicationEvents;

    ToolButton1: TToolButton;
    actCheckStath: TAction;
    actCheckStath1: TMenuItem;
    actCheckPistola: TAction;
    actCheckPistola1: TMenuItem;
    actStationData: TAction;
    StationData1: TMenuItem;
    actReportPdf9: TAction;
    actReportXLS9: TAction;
    actreport9: TAction;
    N26: TMenuItem;
    N27: TMenuItem;
    PDF2: TMenuItem;
    XLS2: TMenuItem;
    actCheckStath0: TAction;
    actCheckStath01: TMenuItem;
    Action4: TAction;
    actPrintKinhseis01: TMenuItem;
    actReportXML9: TAction;
    actReportXML: TAction;
    XML1: TMenuItem;
    XML2: TMenuItem;
    actPhoneType: TAction;
    actIPType: TAction;
    N28: TMenuItem;
    actPhoneType1: TMenuItem;
    actIPType1: TMenuItem;
    actMakIP: TAction;
    actMakPhone: TAction;
    actMakIP1: TMenuItem;
    actMakPhone1: TMenuItem;
    actConnUPIP: TAction;
    actConnUPIP1: TMenuItem;
    TrayIcon1: TTrayIcon;
    actCheckDBS: TAction;
    actCheckDBS1: TMenuItem;
    actStationDataFC: TAction;
    actStationDataFC1: TMenuItem;
    actPratStath: TAction;
    actPratStath0: TAction;
    actPratStath00: TAction;
    actPratStath1: TMenuItem;
    actPratStath01: TMenuItem;
    actPratStath001: TMenuItem;
    actPlrDexAll: TAction;
    Action991: TMenuItem;
    actCheckStath2P: TAction;
    Action51: TMenuItem;
    acrMonthCons: TAction;
    Action61: TMenuItem;
    Action3: TAction;
    Action42: TMenuItem;
    EpInfoExe1 : TEpInfoExe;
    actMakSeg: TAction;
    actMakSeg1: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure AithshExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ReadColors(Sender: TObject);
    procedure TableIdsExecute(Sender: TObject);
    procedure FPassExecute(Sender: TObject);
    procedure UGroupExecute(Sender: TObject);
    procedure FormsExecute(Sender: TObject);
    procedure GParamsExecute(Sender: TObject);
    procedure KinhseisExecute(Sender: TObject);
    procedure SFormActionExecute(Sender: TObject);
    procedure SFormExecute(Sender: TObject);
    procedure FormActionExecute(Sender: TObject);
    procedure LockingExecute(Sender: TObject);
    procedure actPolhtesExecute(Sender: TObject);
    procedure actPrnKinhseisExecute(Sender: TObject);
    procedure actRelEquipmentDetExecute(Sender: TObject);
    procedure actCheckRefExecute(Sender: TObject);
    procedure actKategoryExecute(Sender: TObject);
    procedure actCustomerLocExecute(Sender: TObject);
    procedure actSendDataExecute(Sender: TObject);
    procedure actCustomerParExecute(Sender: TObject);
    procedure actCustomerAddrExecute(Sender: TObject);
    procedure actDispUpdExecute(Sender: TObject);
    procedure actDailyUpdateExecute(Sender: TObject);
    procedure SAPLogonControl1Logon(Sender: TObject;
      const Connection: IDispatch);
    procedure actreportExecute(Sender: TObject);
    procedure actReportXLSExecute(Sender: TObject);
    procedure actReportPdfExecute(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure actSendDataSingleExecute(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actSapOmnisProdExecute(Sender: TObject);
    procedure actDubExecute(Sender: TObject);
    procedure actTotalizersExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actUtilsExecute(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure actRepEnhmExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure actCheckStathExecute(Sender: TObject);
    procedure actCheckPistolaExecute(Sender: TObject);
    procedure actStationDataExecute(Sender: TObject);
    procedure actReportPdf9Execute(Sender: TObject);
    procedure actReportXLS9Execute(Sender: TObject);
    procedure actreport9Execute(Sender: TObject);
    procedure actCheckStath0Execute(Sender: TObject);
    procedure actPrintKinhseis1Execute(Sender: TObject);
    procedure actReportXML9Execute(Sender: TObject);
    procedure actReportXMLExecute(Sender: TObject);
    procedure actPhoneTypeExecute(Sender: TObject);
    procedure actIPTypeExecute(Sender: TObject);
    procedure actMakIPExecute(Sender: TObject);
    procedure actMakPhoneExecute(Sender: TObject);
    procedure actConnUPIPExecute(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure actCheckDBSExecute(Sender: TObject);
    procedure actStationDataFCExecute(Sender: TObject);
    procedure actPratStathExecute(Sender: TObject);
    procedure actPratStath0Execute(Sender: TObject);
    procedure actPratStath00Execute(Sender: TObject);
    procedure actPlrDexAllExecute(Sender: TObject);
    procedure actCheckStath2PExecute(Sender: TObject);
    procedure acrMonthConsExecute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure actMakSegExecute(Sender: TObject);
  private
    FIni : TIniFile;
    PLoginCommited : Boolean;
    PFormID : Integer ;
    wLeft, wTop, wWidth, wHeight : integer;
    wWindowState : TWindowState;
    FDrawStyle : integer;
    FDisplayedForm: TForm;
    procedure CreateMDIChild(const Name: string);
    procedure SetInfoDate( value:TDateTime );
    procedure SetInfoUser( const value:string );
    procedure SetInfoHint( const value:string );
    procedure WriteIni;
    procedure ReadIni;
    procedure AppEventsHint2(Sender: TObject);
    function GetFileVersion0(filename: string = ''; const Fmt: string = '%d.%d.%d.%d'): string;
    function IsRemoteSession: boolean;
  public
//    DMMain :TDMMain;
    SapConStr : OleVariant;
    TFrom     : TDateTime;
    TTo       : TDateTime;
    TRFrom    : TDateTime;
    TRTo      : TDateTime;
    ConnSap   : Boolean;
    AppColors : Array [1..8] of TColor;
    AppFonts  : Array [1..8] of TFont;
    procedure WriteIniSub(Form:String;Left,Width,Top,Height,State:Integer);
    procedure ReadIniSub(Form:String;var Left,Width,Top,Height,State:Integer);
    procedure ReadIniG(Name:String;var Value:String);
    procedure WriteIniG(Name:String;Value:String);
    Function  IniReadString(Section:String;Name:String;Value:String):String;
    procedure IniWriteString(Section:String;Name:String;Value:String);
    procedure WriteGrid(Form:String;Grid:TDBGrid);
    procedure ReadGrid(Form:String;Grid:TDBGrid;var Filter:String;Var Index:String;Var DataSource:String);
    procedure WriteCombo(Form:String;Combo:TComboBox);
    procedure ReadCombo(Form:String;Combo:TComboBox);
    procedure SetDisplayedForm(const Value: TForm);
    procedure RunProcess(ExeName, CmdLine, WinName: String; TimeOut: Integer = 5000);
    procedure RunProcessAndWait(ExeName, CmdLine, WinName : String; TimeOut:Integer = 5000);
    property Ini           : TIniFile read FIni;
    property LoginCommited : Boolean  read PLoginCommited write PLoginCommited default False;
    property DisplayedForm :TForm read FDisplayedForm write SetDisplayedForm;
    //    property FormID        : Integer  read PFormID        write PFormID ;
  end;

var
  frmMain : TfrmMain;
  FormID  : Integer;
  ALeo    :Integer;

implementation

{$R *.DFM}

uses ChildWin, About;

procedure TfrmMain.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TfrmMain.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TfrmMain.HelpAbout1Execute(Sender: TObject);
Var frm:TForm;
begin
  frm := TAboutBox.Create(self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.AithshExecute(Sender: TObject);
begin
{if DMMain.FindSecurity('TfrmOrder', LoginGroup , FormID) then
   TfrmOrder.CreateSecurity( Self , True,true,true,true,true,FormID )
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);}
end;

procedure TfrmMain.FormActivate(Sender: TObject);
var frm : TfrmPasswordDlg;
    MustExit:Boolean;
    DBVer:String;
    ExeVer:String;
    DBVerC,ExeVerC:Char;
    ExeShort:String;
begin
if (Not(LoginCommited)) then
if ((Assigned(DMMain)= True)) then
 begin
	frm:=TfrmPasswordDlg.Create(Self);
	try
	 if frm.ShowModal = mrCancel then
      MustExit:=True;
	finally
		frm.Free;
    LoginCommited:=True;
	end;

   if MustExit then
     Application.Terminate;
 end;

  EpInfoExe1.LangId:='040904E4';
  EPInfoExe1.ExeName:=Application.ExeName;
  EpinfoExe1.Execute;

  ExeVer:=EpinfoExe1.FileVersion;
  DBVer:=DMmain.GetSoftVersion();

  ExeShort:=AnsiReplaceStr(ExeVer,'.','');

  if ExeVer > '' then
    ExeVerc:=ExeShort[1]
  else
    ExeVerc:='1';

  if DbVer > '' then
    DBVerC :=DbVer[1]
  else
    DBVerC :='1';

  if Not(ExeVerC = DBVerC ) then
    begin
     if MessageDlg('Προσοχή υπάρχει νέα Release.'+chr(13)+
                   'Release Εγκατεστημένου Προγράμματος :'+ExeVerC+chr(13)+
                   'Συνέχεια ;(No).', mtError, [mbNo], 0) = mrNo then
        Application.Terminate;
    end;

  if Not(ExeShort = DBVer) then
    begin
     if MessageDlg('Προσοχή υπάρχει νέα Version.'+chr(13)+
                   'Version Εγκατεστημένου Προγράμματος :'+ExeVer+chr(13)+
                   'Συνέχεια ;(Yes/No).', mtError, [mbYes,mbNo], 0) = mrNo then
        Application.Terminate;
    end;

 Timer2.Enabled := True;

 if ConnSap then
    Application.Minimize;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
var s:String;
begin
{  ALeo:=GlobalFindAtom(pchar(Application.ExeName));
  if ALeo = 0 then
     GlobalAddAtom(pchar(Application.ExeName))
  else
     begin
       MessageDlg('Only One Instance Allowed.', mtError,[mbOk], 0);
       Perform(WM_CLOSE,0,0);
       exit;
     end;}

	FDrawStyle := 1;
	FIni := TIniFile.Create( ChangeFileExt( Application.ExeName, '.ini' ) );
	ReadIni;
	SetBounds( wLeft, wTop, wWidth, wHeight );
//	WindowState := wWindowState;
        WindowState := wsNormal;

{ 	try
		DMMain := TDMMain.Create(Self);
	except
		on E:Exception do begin
			Application.HandleException( E );
			PostMessage( Handle, WM_CLOSE, 0, 0 );
		end;
	end;}

//	if Login then begin
		SetInfoDate( Date );
//		SetInfoUser( UserName );
//	end else
//		PostMessage( Handle, WM_CLOSE, 0, 0 );
	Application.OnHint := AppEventsHint2;
  ReadColors(self);
  ConnSap:=False;

  TRFrom :=strtotime('08:00:00');
  TRTo   :=strtotime('08:45:00');

  if ParamCount > 0 then
    begin;
     try
       TFrom :=strtotime(ParamStr(1));
     except
       TFrom :=strtotime('21:00:00')
     end;

     try
       TTo   :=strtotime(ParamStr(2));
     except
       TTo   :=strtotime('21:30:00')
     end;

     SapConStr := SAPLogonControl1.NewConnection;
     SapConStr.Logon;
     Timer1.Enabled := True;
     LoginCommited  := True;
     LoginGroup     := 0;
     LoginId        := 0;
     LoginName      := 'Root';
     Application.Minimize;
    end;

   s:=Application.ExeName;
   s:=GetFileVersion0(Application.ExeName,'%d.%d.%d.%d');
   self.Caption :=  self.Caption + ' Ver.' + s;

 if IsRemoteSession then
    MessageDlg('Remote Session', mtWarning, [mbOK], 0);

end;

function TfrmMain.GetFileVersion0(filename: string = ''; const Fmt: string = '%d.%d.%d.%d'): string;
    var
    iBufferSize: DWORD;
    iDummy: DWORD;
    pBuffer: Pointer;
    pFileInfo: Pointer;
    iVer: array[1..4] of word;
    begin
    // set default value
    if filename = '' then
    FileName := Application.ExeName;
    Result := '';
    // get size of version info (0 if no version info exists)
    iBufferSize := GetFileVersionInfoSize(PChar(filename), iDummy);
    if (iBufferSize > 0) then
    begin
    Getmem(pBuffer, iBufferSize);
    try
    // get fixed file info
    GetFileVersionInfo(PChar(filename), 0, iBufferSize, pBuffer);
    VerQueryValue(pBuffer, '\', pFileInfo, iDummy);
    // read version blocks
    iVer[1] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[2] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[3] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    iVer[4] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    finally
    Freemem(pBuffer);
    end;
    // format result string
    Result := Format(Fmt, [iVer[1], iVer[2], iVer[3], iVer[4]]);
    end;
    end;


procedure TfrmMain.SetInfoDate( value:TDateTime );
begin
	sbInfo.Panels[0].Text := DateToStr( value );
end;

procedure TfrmMain.SetInfoUser( const value:string );
begin
	sbInfo.Panels[1].Text := value;
end;

procedure TfrmMain.SetInfoHint( const value:string );
begin
	sbInfo.Panels[2].Text := value;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
//      GlobalDeleteAtom(ALeo);
	WriteIni;
//      DMMain.Free;
//	FIni.Free;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
	PostMessage( Handle, PWM_STORE_WIN_POS, 0, 0 );
	InvalidateRect( ClientHandle, nil, True );
end;

procedure TfrmMain.WriteIni;
var
	section : string;
begin
	section := Name;
	with Ini do begin
		WriteInteger( section, 'Top', wTop );
		WriteInteger( section, 'Left', wLeft );
		WriteInteger( section, 'Width', wWidth );
		WriteInteger( section, 'Height', wHeight );
		WriteInteger( section, 'WindowState', integer(wWindowState) );
	end;
end;

procedure TfrmMain.ReadIni;
var
	section : string;
begin
	section := Name;
	with Ini do begin
		wLeft := ReadInteger( section, 'Left', Left );
		wTop := ReadInteger( section, 'Top', Top );
		wWidth := ReadInteger( section, 'Width', Width );
		wHeight := ReadInteger( section, 'Height', Height );
		wWindowState := TWindowState(ReadInteger( section, 'WindowState', integer(WindowState) ));
	end;
end;

{procedure TMainForm.StoreWinPos;
begin
	if WindowState = wsNormal then begin
		wLeft := Left;
		wTop := Top;
		wWidth := Width;
		wHeight := Height;
	end;
	wWindowState := WindowState;
end;}

procedure TfrmMain.AppEventsHint2(Sender: TObject);
begin
{	SetInfoHint( Application.Hint );
if Not (DisplayedForm = Nil) then
  if DisplayedForm is TFrmBForm then
     TFrmBForm(DisplayedForm).SetStatusText(Application.Hint,1);
  if DisplayedForm is TFrmSubParams then
     TFrmSubParams(DisplayedForm).SetStatusText(Application.Hint,1);}
end;

procedure TfrmMain.WriteIniG(Name:String;Value:String);
var
	section : string;
begin
	section := 'General';
	with Ini do begin
    try
  		WriteString( section, Name , Value );
    except
      if LoginGroup = 0 then
         MessageDlg('Cannot write INI.', mtError, [mbOK], 0);
    end;
	end;
end;

procedure TfrmMain.ReadIniG(Name:String;var Value:String);
var
	section : string;
begin

	section := 'General';
	with Ini do begin
		Value := ReadString( section, Name , '' );
	end;
end;

procedure TfrmMain.WriteIniSub(Form:String;Left,Width,Top,Height,State:Integer);
var
	section : string;
begin
	section := Form;
	with Ini do begin
		WriteInteger( section, 'Top', Top );
		WriteInteger( section, 'Left', Left );
		WriteInteger( section, 'Width', Width );
		WriteInteger( section, 'Height', Height );
		WriteInteger( section, 'WindowState', integer(State) );
	end;
end;

procedure TfrmMain.ReadIniSub(Form:String;var Left,Width,Top,Height,State:Integer);
var
	section : string;
begin

	section := Form;
        if Form > ' ' then
        begin
	with Ini do begin
		Left := ReadInteger( section, 'Left', 0 );
		Top := ReadInteger( section, 'Top', 0 );
		Width := ReadInteger( section, 'Width', 0 );
		Height := ReadInteger( section, 'Height', 0 );
		State := ReadInteger( section, 'WindowState', State );
	end;
        end;
end;

procedure TfrmMain.ReadColors(Sender: TObject);
var c,Ccolor:String;
    i,iColor:Integer;
    AppFont:TFont;
begin
for i:= 1 to 8 do
begin
        AppFont:=TFont.Create();
        C:=inttostr(i);
        frmMain.ReadIniG('Color'+C,CColor);
        if CColor > '' then
          AppColors[i]:=StrtoInt(CColor);
        frmMain.ReadIniG('ColorF'+C,CColor);
        if CColor > '' then
          AppFont.Color:=StrtoInt(CColor);
        frmMain.ReadIniG('FontCrSet'+C,CColor);
        if CColor > '' then
          AppFont.Charset:=StrToInt(CColor);
        frmMain.ReadIniG('FontCrSetFontName'+C,CColor);
        if CColor > '' then
          AppFont.Name:=CColor;
        frmMain.ReadIniG('FontCrSetFontSize'+C,CColor);
        if CColor > '' then
          AppFont.Size:=strtoint(CColor);
        frmMain.ReadIniG('FontCrSetFontHeight'+C,CColor);
        if CColor > '' then
          AppFont.Height:=strtoint(CColor);
        frmMain.ReadIniG('FontCrSetFontPixelPerInch'+C,CColor);
        if CColor > '' then
          AppFont.PixelsPerInch:=strtoint(CColor);
        frmMain.ReadIniG('FontCrSetFontStyle'+C,CColor);
        if CColor > '0' then
         begin
//Added 13052002
          if Length(CColor) < 4 then
            begin
             if Length(CColor) = 3 then
                CColor:=Concat('0',CColor);
             if Length(CColor) = 2 then
                CColor:=Concat('00',CColor);
             if Length(CColor) = 1 then
                CColor:=Concat('000',CColor);
             if Length(CColor) = 0 then
                CColor:=Concat('0000',CColor);
            end;
//Added 13052002
          if CColor[4]='1' then
            AppFont.Style:=Font.Style + [fsBold]
          else
            AppFont.Style:=Font.Style - [fsBold];
          if CColor[3]='1' then
            AppFont.Style:=Font.Style + [fsItalic]
          else
            AppFont.Style:=Font.Style - [fsItalic];
          if CColor[2]='1' then
            AppFont.Style:=Font.Style + [fsUnderline]
          else
            AppFont.Style:=Font.Style - [fsUnderline];
          if CColor[1]='1' then
            AppFont.Style:=Font.Style + [fsStrikeOut]
          else
            AppFont.Style:=Font.Style + [fsStrikeOut];
         end;
         AppFonts[i]:=AppFont;
end;
end;

procedure TfrmMain.WriteGrid(Form:String;Grid:TDBGrid);
var
	section : string;
        i:integer;
begin
	section := 'G'+'_'+Form+'_'+Grid.Name;
        begin
        if Grid.DataSource = nil then
           exit;
        try
        Ini.WriteInteger ( section, 'Columns',Grid.Columns.Count );
        Ini.WriteString  ( section, 'Filter' ,Grid.DataSource.DataSet.Filter );
        Ini.WriteString  ( section, 'DataSource' ,Grid.DataSource.Name );
        if Grid.DataSource.DataSet is TTable then
           Ini.WriteString  ( section, 'Index' , TTable(Grid.DataSource.DataSet).IndexName );
        for i:= 0 to Grid.Columns.Count -1 do
	with Ini do
             begin
		WriteString ( section, 'Field'+inttostr(i) ,Grid.Columns[i].FieldName );
		WriteBool   ( section, 'Check'+inttostr(i) ,Grid.Columns[i].Visible );
		WriteInteger( section, 'Width'+inttostr(i) ,Grid.Columns[i].Width );
             end
        except
      if LoginGroup = 0 then
         MessageDlg('Cannot write INI.', mtError, [mbOK], 0);
        end;
        end
end;

procedure TfrmMain.ReadGrid(Form:String;Grid:TDBGrid;var Filter:String;Var Index:String;Var DataSource:String);
var
	section,s : string;
        i,x:integer;
begin
	section := 'G'+'_'+Form+'_'+Grid.Name;
        begin
        x          :=Ini.ReadInteger ( section, 'Columns',0 );
        Filter     :=Ini.ReadString  ( section, 'Filter' , '' );
        Index      :=Ini.ReadString  ( section, 'Index' , '' );
        DataSource :=Ini.ReadString  ( section, 'DataSource' , '' );
        for i:= 0 to x -1 do
	with Ini do
             begin
               if Not(Grid.Columns.Count > x-1)  then
                  Grid.Columns.Add;
	       Grid.Columns[i].FieldName := ReadString ( section, 'Field'+inttostr(i) , ' '  );
	       Grid.Columns[i].Visible   := ReadBool   ( section, 'Check'+inttostr(i) , True );
	       Grid.Columns[i].Width     := ReadInteger( section, 'Width'+inttostr(i) , 5    );
             end;
        end
end;

procedure TfrmMain.TableIdsExecute(Sender: TObject);
var frm : TForm;
begin
if DMMain.FindSecurity('TfrmTableIds',LoginGroup,FormID) then
  begin
  	frm := TfrmTableIds.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmTableIds');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.FPassExecute(Sender: TObject);
var frm : TfrmFPass;
begin
if DMMain.FindSecurity('TfrmFPass',LoginGroup,FormID) then
  begin
  	frm := TfrmFPass.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmFPass');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.UGroupExecute(Sender: TObject);
var frm : TfrmUGroup;
begin
if DMMain.FindSecurity('TfrmUGroup',LoginGroup,FormID) then
  begin
  	frm := TfrmUGroup.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmUGroup');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.FormsExecute(Sender: TObject);
var frm : TfrmForms;
begin
if DMMain.FindSecurity('TfrmForms',LoginGroup,FormID) then
  begin
  	frm := TfrmForms.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmForms');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.GParamsExecute(Sender: TObject);
var  frm : TfrmGParams;
begin
if DMMain.FindSecurity('TfrmGParams',LoginGroup,FormID) then
  begin
  	frm := TfrmGParams.Create( self );
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmGParams');
                ReadColors(self);
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.KinhseisExecute(Sender: TObject);
begin
if DMMain.FindSecurity('TfrmMembers', LoginGroup , FormID) then
   TfrmMembers.CreateSecurity( Self , FormID )
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);
end;

procedure TfrmMain.WriteCombo(Form:String;Combo:TComboBox);
var
	section : string;
        i,x,y:integer;
begin
	section := 'G'+'_'+Form+'_'+Combo.Name;
        begin
        Ini.WriteInteger ( section, 'Columns',Combo.Items.Count );
        if Combo.Items.Count > 10 then
          begin
           y := Combo.Items.Count - 10;
           x := Combo.Items.Count ;
          end
        else
          begin
           y := 0;
           x := Combo.Items.Count - 1 ;
          end;
        for i:= y to x do
	with Ini do
             begin
             try
		WriteString ( section, 'Field'+inttostr(i) ,Combo.items.Strings[i]);
             except
      if LoginGroup = 0 then
         MessageDlg('Cannot write INI.', mtError, [mbOK], 0);

             end;
             end
        end
end;

procedure TfrmMain.ReadCombo(Form:String;Combo:TComboBox);
var
	section,s : string;
        i,x:integer;
begin
	section := 'G'+'_'+Form+'_'+Combo.Name;
        begin
        x       :=Ini.ReadInteger ( section, 'Columns',0 );
        for i:= 0 to x -1 do
	with Ini do
             begin
	       Combo.items.Add( ReadString ( section, 'Field'+inttostr(i) , ' '  ));
             end;
        end
end;


procedure TfrmMain.SFormActionExecute(Sender: TObject);
var frm : TfrmSFormAction;
begin
if DMMain.FindSecurity('TfrmSFormAction',LoginGroup,FormID) then
  begin
  	frm := TfrmSFormAction.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
    DMMain.UpdSecurity('TfrmSFormAction');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.SFormExecute(Sender: TObject);
var frm : TfrmSForm;
begin
if DMMain.FindSecurity('TfrmSForm',LoginGroup,FormID) then
  begin
  	frm := TfrmSForm.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
    DMMain.UpdSecurity('TfrmSForm');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.FormActionExecute(Sender: TObject);
var frm : TfrmFormAction;
begin
if DMMain.FindSecurity('TfrmFormAction',LoginGroup,FormID) then
  begin
  	frm := TfrmFormAction.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
    DMMain.UpdSecurity('TfrmFormAction');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.LockingExecute(Sender: TObject);
var frm : TfrmLocking;
begin
if DMMain.FindSecurity('TfrmLocking',LoginGroup,FormID) then
  begin
  	frm := TfrmLocking.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
    DMMain.UpdSecurity('TfrmLocking');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.SetDisplayedForm(const Value: TForm);
begin
  FDisplayedForm := Value;
end;

procedure TfrmMain.actPhoneTypeExecute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmPhoneType',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmPhoneType',TDmBase(TDMSubParams),'dsPhoneType','Είδος Τηλεφώνου');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmPhoneType');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.acrMonthConsExecute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmMonthCons',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmMonthCons',TDmBase(TDMSubParams),'dsMonthCons','Κατανάλωση Πρατηρίων ανά Ημέρα');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmMonthCons');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;


procedure TfrmMain.actPolhtesExecute(Sender: TObject);
var frm: TForm;
begin
{if DMMain.FindSecurity('TfrmPolhtes',LoginGroup,FormID) then
  begin
  	frm := TfrmPolhtes.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmPolhtes');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);}
end;

procedure TfrmMain.actPrnKinhseisExecute(Sender: TObject);
var frm:TfrmMembersSel;
    frm1:TForm;
    rpt:TrptBaseAdo;
    Sleo,Stemp:String;
    i,ii:Integer;
    OldCursor:TCursor;
begin
  if DMMain.FindSecurity('TfrmMembersSel',LoginGroup,FormID) then
   begin
        try
   	 frm:=TfrmMembersSel.CreateSecurity ( Self , FormId );
         frm.showModal;
{         if frm.ModalResult = mrOK then
           begin
             OldCursor:=Screen.Cursor;
             Screen.Cursor:=crHourGlass;
             Sleo:=TfrmMembersSel(frm).Sleo;
              case frm.RadioGroup1.ItemIndex of
                 0:rpt:=TrptMembers1.Create(self);
                 1:rpt:=TrptMembers2.Create(self);
                 2:rpt:=TrptMembers3.Create(self);
                 3:rpt:=TrptMembers4.Create(self);
              end;
            rpt.ADOQuery1.Active:=False;
            if Sleo > ' ' then
              rpt.ADOQuery1.SQL.Add('Where EquipmentLocation.Quantity > 0 And '  + SLeo);
            if frm.RadioGroup1.ItemIndex = 0 then
               rpt.ADOQuery1.SQL.Add('Order By Id1,id2,id3,id4,Type.Id,Model.id');
{            if frm.RadioGroup1.ItemIndex = 3 then
               rpt.ADOQuery1.SQL.Add('Order By SortChar');}
{            try
              rpt.ADOQuery1.Active:=True;
              Screen.Cursor:=OldCursor;
              rpt.Preview;
            finally
              rpt.Free;
            end
           end}
        finally
         frm.free;
//         Screen.Cursor:=OldCursor;
         DMMain.UpdSecurity('TfrmMembersSel');
        end;
   end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actRelEquipmentDetExecute(Sender: TObject);
var frm: TForm;
begin
if DMMain.FindSecurity('TfrmRelEquipmentDet',LoginGroup,FormID) then
  begin
  	frm := TfrmRelEquipmentDet.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmRelEquipmentDet');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);
end;

procedure TfrmMain.actCheckRefExecute(Sender: TObject);
var frm: TForm;
begin
  	frm := TfrmCheckRefIntegrity.Create(self);
		frm.ShowModal;
		frm.Free;
end;

procedure TfrmMain.actKategoryExecute(Sender: TObject);
var frm:TfrmDateFile;
begin
if DMMain.FindSecurity('TfrmDateFile',LoginGroup,FormID) then
  begin
  	frm := TfrmDateFile.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmDateFile');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actMakIPExecute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmMAKIP',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmMAKIP',TDmBase(TDMSubParams),'dsMAKIP','IP');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmMAKIP');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actMakPhoneExecute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmMAKPhone',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmMAKPhone',TDmBase(TDMSubParams),'dsMAKPhone','Phone');
      frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmMAKPhone');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actMakSegExecute(Sender: TObject);
var frm:TfrmMembersSel2;
    frm1:TForm;
    rpt:TrptBaseAdo;
    Sleo,Stemp:String;
    i,ii:Integer;
    OldCursor:TCursor;
begin
  if DMMain.FindSecurity('TfrmMembersSel2',LoginGroup,FormID) then
   begin
        try
       	 frm:=TfrmMembersSel2.CreateSecurity ( Self , FormId );
         frm.showModal;
        finally
         frm.free;
         DMMain.UpdSecurity('TfrmMembersSel2');
        end;
   end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actCustomerLocExecute(Sender: TObject);
var frm:TfrmCustomerLoc;
begin
if DMMain.FindSecurity('TfrmCustomerLoc',LoginGroup,FormID) then
  begin
  	frm := TfrmCustomerLoc.CreateSecurity( Self,FormID);
	try
    frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCustomerLoc');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actSendDataExecute(Sender: TObject);
var frm:TfrmSearchPela;
begin
if DMMain.FindSecurity('TfrmSearchPela', LoginGroup , FormID) then
   TfrmSearchPela.Create( Self )
else
   MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);
end;

procedure TfrmMain.actCustomerParExecute(Sender: TObject);
var frm:TfrmCustomerPar;
begin
if DMMain.FindSecurity('TfrmCustomerPar',LoginGroup,FormID) then
  begin
  	frm := TfrmCustomerPar.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCustomerPar');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actCustomerAddrExecute(Sender: TObject);
var frm:TfrmCustomerAddr;
begin
if DMMain.FindSecurity('TfrmCustomerAddr',LoginGroup,FormID) then
  begin
  	frm := TfrmCustomerAddr.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCustomerAddr');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

Function TfrmMain.IniReadString(Section, Name: String; Value: String):String;
begin
  Result:=Ini.ReadString(Section,Name,Value);
end;

procedure TfrmMain.IniWriteString(Section, Name, Value: String);
begin
try
  Ini.WriteString(Section,Name,Value);
except
      if LoginGroup = 0 then
         MessageDlg('Cannot write INI.', mtError, [mbOK], 0);
end;
end;

procedure TfrmMain.actDispUpdExecute(Sender: TObject);
var frm:TfrmDispUpd;
begin
if DMMain.FindSecurity('TfrmDispUpd',LoginGroup,FormID) then
  begin
  	frm := TfrmDispUpd.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmDispUpd');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actDailyUpdateExecute(Sender: TObject);
var frm:TfrmSearchPela;
    CurTime:TDateTime;
begin
  CurTime:=Time();
if ((CurTime > TFrom) And (CurTime < TTo)) then
  if DMMain.FindSecurity('TfrmSearchPela', LoginGroup , FormID) then
     begin
       frm:=TfrmSearchPela.Create( Self );
       frm.DtpFrom.Date:=now();
       incDay(frm.DtpFrom.Date,-1);
       frm.DtpTo.Date  :=now();
       frm.actFind.Execute;
       frm.actUploadSap.Execute;
       frm.actSendToOmnis.Execute;
       frm.actClose.Execute;
     end
  else
     MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);
end;

procedure TfrmMain.SAPLogonControl1Logon(Sender: TObject;
  const Connection: IDispatch);
begin
  MessageDlg('Sap Logon Commited', mtWarning, [mbOK], 0);
  ConnSap:=True;
end;

procedure TfrmMain.actreport9Execute(Sender: TObject);
var frm:TrptLastReport;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.SQL.Add('Where sta_code >'+ chr(39) +'900000'+ chr(39));
   frm.AdoQuery1.Active := True;
   frm.Preview;
   frm.Free;
end;

procedure TfrmMain.actreportExecute(Sender: TObject);
var frm:TrptLastReport;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.Active := True;
   frm.Preview;
   frm.Free;
end;

procedure TfrmMain.actReportXLS9Execute(Sender: TObject);
var frm:TrptLastReport;
    bXLSFilt : TQRXLSFilter;
    XLSXFilt : TQRXMLSSDocumentFilter;
    x:String;
    Fs:TFormatSettings;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.SQL.Add('Where sta_code >'+ chr(39) +'900000'+ chr(39));
   frm.AdoQuery1.Active := True;
   GetLocaleFormatSettings(0,fs);
   fs.DateSeparator:='-';
   try
     try
       x:=datetostr(date(),fs);
       frm.QRSysData1.Enabled := False;
       frm.QRSysData4.Enabled := False;
       frm.QRSysData5.Enabled := False;
//       frm.Font.Charset := GREEK_CHARSET;
//       XLSXFilt := TQRXMLSSDocumentFilter.Create('.\biorep.xml');
//       frm.ExportToFilter( XLSXFilt );
       bXLSFilt:=TQRXLSFilter.Create('.\Stath-'+x+'.Xls');
//       bXLSFilt.TextEncoding:=UnicodeEncoding;
       frm.ExportToFilter( bXLSFilt );
     except
       MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου XLS', mtError, [mbOK], 0);
     end;
   finally
     bXLSFilt.free;
   end;
   frm.Free;
end;


{
uses qrxlsxfilt;
..
..
procedure TForm1.SpeedButton4Click(Sender: TObject);
var
    XLSXFilt : TQRXMLSSDocumentFilter;
begin
     XLSXFilt := TQRXMLSSDocumentFilter.Create('biorep.xml');
     XLSXFilt.Creator := 'QBS Software';
     XLSXFilt.Company := 'QBS Software';
     XLSXFilt.Author := 'A. B Smithie';
     XLSXFilt.WorkSheetname := 'Test sheet 1';
     XLSXFilt.OpenWidth := 750; // width in pixels of the table when opened in Excel
     XLSXFilt.OpenHeight := 800; // height in pixels of the table
     biorep.QuickRep1.ExportToFilter(XLSXFilt);
     XLSXFilt.Free;
end;
}

procedure TfrmMain.actReportXLSExecute(Sender: TObject);
var frm:TrptLastReport;
    bXLSFilt : TQRXLSFilter;
    x:String;
    Fs:TFormatSettings;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.Active := True;
   GetLocaleFormatSettings(0,fs);
   fs.DateSeparator:='-';

   try
     try
       x:=datetostr(date(),fs);
       frm.QRSysData1.Enabled := False;
       frm.QRSysData4.Enabled := False;
       frm.QRSysData5.Enabled := False;
       bXLSFilt:=TQRXLSFilter.Create('.\Stath-'+x+'.Xls');
       frm.ExportToFilter( bXLSFilt );
     except
       MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου XLS', mtError, [mbOK], 0);
     end;
   finally
     bXLSFilt.free;
   end;
   frm.Free;
end;

procedure TfrmMain.actReportXML9Execute(Sender: TObject);
var frm:TrptLastReport;
    XLSXFilt : TQRXMLSSDocumentFilter;
    x:String;
    Fs:TFormatSettings;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.SQL.Add('Where sta_code >'+ chr(39) +'900000'+ chr(39));
   frm.AdoQuery1.Active := True;
   GetLocaleFormatSettings(0,fs);
   fs.DateSeparator:='-';
   try
     try
       x:=datetostr(date(),fs);
       frm.QRSysData1.Enabled := False;
       frm.QRSysData4.Enabled := False;
       frm.QRSysData5.Enabled := False;
       XLSXFilt := TQRXMLSSDocumentFilter.Create('.\Stath-'+x+'.Xml');
       frm.ExportToFilter( XLSXFilt );
     except
       MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου XML', mtError, [mbOK], 0);
     end;
   finally
     XLSXFilt.free;
   end;
   frm.Free;
end;

procedure TfrmMain.actReportPdf9Execute(Sender: TObject);
var frm:TrptLastReport;
    aPDFFilt : TQRPDFDocumentFilter;
    x:String;
    Fs:TFormatSettings;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.SQL.Add('Where sta_code >'+ chr(39) +'900000'+ chr(39));
   frm.AdoQuery1.Active := True;
   GetLocaleFormatSettings(0,fs);
   fs.DateSeparator:='-';
   try
     try
       x:=datetostr(date(),fs);
       aPDFFilt:=TQRPDFDocumentFilter.Create('.\Mak-Stath-'+x+'.pdf');
       aPDFFilt.Codepage := '1253';
       aPDFFilt.TextEncoding := UnicodeEncoding;
       aPDFFilt.AddTTFont('Courier New');
       frm.ExportToFilter( aPDFFilt );
     except
       MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου PDF', mtError, [mbOK], 0);
     end;
   finally
     aPDFFilt.free;
   end;
   frm.Free;
end;

procedure TfrmMain.actReportPdfExecute(Sender: TObject);
var frm:TrptLastReport;
    aPDFFilt : TQRPDFDocumentFilter;
    x:String;
    Fs:TFormatSettings;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.Active := True;
   GetLocaleFormatSettings(0,fs);
   fs.DateSeparator:='-';
   try
     try
       x:=datetostr(date(),fs);
       aPDFFilt:=TQRPDFDocumentFilter.Create('.\Stath-'+x+'.pdf');
       aPDFFilt.Codepage := '1253';
       aPDFFilt.TextEncoding := UnicodeEncoding;
       aPDFFilt.AddTTFont('Courier New');
       frm.ExportToFilter( aPDFFilt );
     except
       MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου PDF', mtError, [mbOK], 0);
     end;
   finally
     aPDFFilt.free;
   end;
   frm.Free;
end;

procedure TfrmMain.Timer2Timer(Sender: TObject);
Var  CurTime:TDateTime;
begin
    CurTime:=Time();
if ((CurTime > TRFrom) And (CurTime < TRTo)) then
    if DayOfTheWeek(now()) = 1 then
       begin
         actReportXLS.Execute;
         actReportPDF.Execute;
       end;
end;

procedure TfrmMain.actSendDataSingleExecute(Sender: TObject);
var frm:TfrmSearchPela1;
begin
if DMMain.FindSecurity('TfrmSearchPela1', LoginGroup , FormID) then
   TfrmSearchPela1.Create( Self )
else
   MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);
end;

procedure TfrmMain.N3Click(Sender: TObject);
begin
//
end;

procedure TfrmMain.actSapOmnisProdExecute(Sender: TObject);
var frm:TfrmSapOmnisProd;
begin
if DMMain.FindSecurity('TfrmSapOmnisProd',LoginGroup,FormID) then
  begin
  	frm := TfrmSapOmnisProd.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmSapOmnisProd');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actDubExecute(Sender: TObject);
var frm:TfrmCheckDub;
begin
if DMMain.FindSecurity('TfrmCheckDub', LoginGroup , FormID) then
   TfrmCheckDub.Create( Self )
else
   MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);
end;

procedure TfrmMain.Action3Execute(Sender: TObject);
var param:String;
begin
  DMMain.QCommandShell.Active := True;

  DMMain.QCommandShell.First;
  while Not DMMain.QCommandShell.Eof do
  begin
//    RunProcessAndWait( 'c:\windows\system32\net.exe ', ' use \\192.168.157.20 /user:administrator a', 'IP Configuration command window' );
      Param:= DMMain.QCommandShellParameter.AsString   + ' ' +
              DMMain.QCommandShellParameter1.AsString  + ' ' +
              DMMain.QCommandShellParameter2.AsString  + ' ' +
              DMMain.QCommandShellParameter3.AsString;
//      RunProcessAndWait( DMMain.QCommandShellCommand.AsString, ' '+ Param, 'Shell command window');
      RunProcess( DMMain.QCommandShellCommand.AsString, ' '+ Param, 'Shell command window');
    DMMain.QCommandShell.Next;
  end;
end;

procedure TfrmMain.actPlrDexAllExecute(Sender: TObject);
var frm:TfrmCheckStath99;
begin
if DMMain.FindSecurity('TfrmCheckStath99',LoginGroup,FormID) then
  begin
  	frm := TfrmCheckStath99.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCheckStath99');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actCheckStath2PExecute(Sender: TObject);
var frm:TfrmCheckStath10;
begin
if DMMain.FindSecurity('TfrmCheckStath10',LoginGroup,FormID) then
  begin
  	frm := TfrmCheckStath10.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCheckStath10');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actIPTypeExecute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmIPType',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmIPType',TDmBase(TDMSubParams),'dsIPType','Είδος IP');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmIPType');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actReportXMLExecute(Sender: TObject);
var frm:TrptLastReport;
    XLSXFilt : TQRXMLSSDocumentFilter;
    x:String;
    Fs:TFormatSettings;
begin
   frm:=TrptLastReport.Create(self);
   frm.AdoQuery1.Active := True;
   GetLocaleFormatSettings(0,fs);
   fs.DateSeparator:='-';
   try
     try
       x:=datetostr(date(),fs);
       frm.QRSysData1.Enabled := False;
       frm.QRSysData4.Enabled := False;
       frm.QRSysData5.Enabled := False;
       XLSXFilt := TQRXMLSSDocumentFilter.Create('.\Stath-'+x+'.Xml');
       frm.ExportToFilter( XLSXFilt );
     except
       MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου XML', mtError, [mbOK], 0);
     end;
   finally
     XLSXFilt.free;
   end;
   frm.Free;
end;

procedure TfrmMain.actTotalizersExecute(Sender: TObject);
var frm:TrptTotalizers;
begin
   frm:=TrptTotalizers.Create(self);
   frm.Preview;
   frm.Free;
end;

procedure TfrmMain.actPrintExecute(Sender: TObject);
var frm:TfrmMembersSel0;
    frm1:TForm;
    rpt:TrptBaseAdo;
    Sleo,Stemp:String;
    i,ii:Integer;
    OldCursor:TCursor;
begin
  if DMMain.FindSecurity('TfrmMembersSel0',LoginGroup,FormID) then
   begin
        try
   	 frm:=TfrmMembersSel0.CreateSecurity ( Self , FormId );
         frm.showModal;
         if frm.ModalResult = mrOK then
           begin
             OldCursor:=Screen.Cursor;
             Screen.Cursor:=crHourGlass;
             Sleo:=TfrmMembersSel0(frm).Sleo;
              case frm.RadioGroup1.ItemIndex of
                 0:rpt:=TrptTotalizers.Create(self);
                 1:rpt:=TrptMembers2.Create(self);
                 2:rpt:=TrptMembers3.Create(self);
                 3:rpt:=TrptMembers4.Create(self);
              end;
            rpt.ADOQuery1.Active:=False;
            if Sleo > ' ' then
              rpt.ADOQuery1.SQL.Add('Where '  + SLeo + ' Order by sta_id , sta_start_dateime ');
            try
              rpt.ADOQuery1.Active:=True;
              Screen.Cursor:=OldCursor;
              rpt.Preview;
            finally
              rpt.Free;
            end
           end;
        finally
         frm.free;
         Screen.Cursor:=OldCursor;
         DMMain.UpdSecurity('TfrmMembersSel0');
        end;
   end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actPrintKinhseis1Execute(Sender: TObject);
var frm:TfrmMembersSel1;
    frm1:TForm;
    rpt:TrptBaseAdo;
    Sleo,Stemp:String;
    i,ii:Integer;
    OldCursor:TCursor;
begin
  if DMMain.FindSecurity('TfrmMembersSel1',LoginGroup,FormID) then
   begin
        try
       	 frm:=TfrmMembersSel1.CreateSecurity ( Self , FormId );
         frm.showModal;
        finally
         frm.free;
         DMMain.UpdSecurity('TfrmMembersSel1');
        end;
   end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actUtilsExecute(Sender: TObject);
begin
//
end;

procedure TfrmMain.N25Click(Sender: TObject);
begin
//
end;

procedure TfrmMain.actRepEnhmExecute(Sender: TObject);
begin
//
end;

procedure TfrmMain.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
MessageDlg('Exception Occured', mtWarning, [mbOK], 0);
end;

procedure TfrmMain.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
   i: SmallInt;
begin
//Mouse Wheel
//   if Msg.message = WM_MOUSEWHEEL then
//   begin
//     Msg.message := WM_KEYDOWN;
//     Msg.lParam := 0;
//     i := HiWord(Msg.wParam) ;
//     if i > 0 then
//       Msg.wParam := VK_UP
//     else
//       Msg.wParam := VK_DOWN;
//
//     Handled := False;
//   end;

end;

procedure TfrmMain.actCheckStath0Execute(Sender: TObject);
var frm:TfrmCheckStath0;
begin
if DMMain.FindSecurity('TfrmCheckStath0',LoginGroup,FormID) then
  begin
  	frm := TfrmCheckStath0.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCheckStath0');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actCheckStathExecute(Sender: TObject);
var frm:TfrmCheckStath;
begin
if DMMain.FindSecurity('TfrmCheckStath',LoginGroup,FormID) then
  begin
  	frm := TfrmCheckStath.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCheckStath');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actConnUPIPExecute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmConnUPIP',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmConnUPIP',TDmBase(TDMSubParams),'dsConnUPIP','ConnUPIP');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmConnUPIP');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
{var  frm : TfrmSubParamsNoEh;
begin
if DMMain.FindSecurity('TfrmConnUPIP',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNoEh.CreateSecurityWithOut( Self,FormID,'TfrmConnUPIP',TDmBase(TDMSubParams),'dsConnUPIP','ConnUPIP');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmConnUPIP');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)}
end;

procedure TfrmMain.actCheckDBSExecute(Sender: TObject);
var frm:TfrmCheckDBS;
begin
if DMMain.FindSecurity('TfrmCheckDBS',LoginGroup,FormID) then
  begin
  	frm := TfrmCheckDBS.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCheckDBS');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actCheckPistolaExecute(Sender: TObject);
var frm:TfrmCheckPistola;
begin
if DMMain.FindSecurity('TfrmCheckPistola',LoginGroup,FormID) then
  begin
  	frm := TfrmCheckPistola.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmCheckPistola');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0);
end;

procedure TfrmMain.actStationDataExecute(Sender: TObject);
var frm:TfrmStationData;
begin
if DMMain.FindSecurity('TfrmStationData',LoginGroup,FormID) then
  begin
  	frm := TfrmStationData.CreateSecurity( Self,FormID);
  	try
 	    frm.ShowModal;
  	finally
	    frm.Free;
      DMMain.UpdSecurity('TfrmStationData');
  	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actStationDataFCExecute(Sender: TObject);
var frm:TfrmStationDataFC;
begin
if DMMain.FindSecurity('TfrmStationDataFC',LoginGroup,FormID) then
  begin
  	frm := TfrmStationDataFC.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
	  frm.Free;
    DMMain.UpdSecurity('TfrmStationDataFC');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

//returns true if running under Windows Terminal Services

function TfrmMain.IsRemoteSession: boolean;
const
  sm_RemoteSession = $1000;
begin
  result := GetSystemMetrics(sm_RemoteSession) <> 0;
end;

procedure TfrmMain.actPratStath0Execute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmPratStath0',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmPratStath0',TDmBase(TDMSubParams),'dsPratStath0','Prat Stath0');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmPratStath0');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actPratStathExecute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmPratStath',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmPratStath',TDmBase(TDMSubParams),'dsPratStath','Prat Stath');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmPratStath');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.actPratStath00Execute(Sender: TObject);
var  frm : TfrmSubParamsNo;
begin
if DMMain.FindSecurity('TfrmPratStath00',LoginGroup,FormID) then
  begin
  	try
    	frm := TfrmSubParamsNo.CreateSecurityWithOut( Self,FormID,'TfrmPratStath00',TDmBase(TDMSubParams),'dsPratStath00','Prat Stath00');
		  frm.ShowModal;
  	finally
	  	frm.Free;
      DMMain.UpdSecurity('TfrmPratStath00');
	  end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMain.RunProcessAndWait(ExeName, CmdLine, WinName : String; TimeOut:Integer = 5000);
Var P : TProcessInformation;
    I : TStartupInfo;
    WaitProcessTime:DWord;
begin
FillChar(I, Sizeof(I), 0);
I.cb := sizeof(I);
I.lpTitle := @(WinName[1]);
WaitProcessTime:=TimeOut;
if CreateProcess( PChar(ExeName), PChar(ExeName + ' ' + CmdLine),Nil, Nil, FALSE, 0,Nil, Nil, I, P) then
//   WaitForSingleObject(P.HProcess, INFINITE)
   WaitForSingleObject(P.HProcess, WaitProcessTime)
else
   ShowMessage(SysErrorMessage(GetLastError));
end;

procedure TfrmMain.RunProcess(ExeName, CmdLine, WinName : String; TimeOut:Integer = 5000);
Var P : TProcessInformation;
    I : TStartupInfo;
    WaitProcessTime:DWord;
begin
FillChar(I, Sizeof(I), 0);
I.cb := sizeof(I);
I.lpTitle := @(WinName[1]);
WaitProcessTime:=TimeOut;
if CreateProcess( PChar(ExeName), PChar(ExeName + ' ' + CmdLine),Nil, Nil, FALSE, 0,Nil, Nil, I, P) then
//   WaitForSingleObject(P.HProcess, INFINITE)
     Sleep(TimeOut);
//   WaitForSingleObject(P.HProcess, WaitProcessTime)
//else
//   ShowMessage(SysErrorMessage(GetLastError));
end;



initialization
begin
//
end;

finalization
begin
//      DMMain.Free;
end;

end.
