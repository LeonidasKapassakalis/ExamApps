unit unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, fpdataexporter, TASources, TADbSource, RTTIGrids,
  LR_PGrid, LR_E_TXT, LR_E_HTM, LR_E_CSV, Forms, Controls, Graphics, Dialogs,
  DBGrids, db, sqldb, fprtfexport, fpcsvexport, fpstdexports, fpXMLXSDExport,
  ComCtrls, ExtCtrls, ActnList, Menus, DbCtrls, Globals, FFilterEn2,
  FFilterEn, DMain, GResources,
  lcltype, Calendar, EditBtn, Spin, DBZVDateTimePicker, fpspreadsheetctrls,
  fpsexport, fpspreadsheetgrid, FDefineQOrderB, typinfo,
   fpspreadsheet, fpsallformats,
  strutils, LR_Class, Printers, Grids;

type



  { TForm1 }

  TForm1 = class(TForm)
    actBottom: TAction;
    actInsert: TAction;
    actCancel: TAction;
    actBrowse: TAction;
    actEdit: TAction;
    actBrowse20: TAction;
    actGrDet: TAction;
    actEdt: TAction;
    actDelete: TAction;
    actExport: TAction;
    Action1: TAction;
    actSave: TAction;
    actRetValue: TAction;
    actPrintGrid: TAction;
    actPost: TAction;
    actTop: TAction;
    actNext: TAction;
    actPrev: TAction;
    ActionList1: TActionList;
    DBGrid1: TDBGrid;
    Exporter: TFPDataExporter;
    frCSVExport1: TfrCSVExport;
    frHTMExport1: TfrHTMExport;
    FrPrintGrid1: TFrPrintGrid;
    frTextExport1: TfrTextExport;
    ImageList1: TImageList;
    ImageList2: TImageList;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
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
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    menSep: TMenuItem;
    MenuItem8: TMenuItem;
    Pedia: TMenuItem;
    actAllColumns: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    actNoneColumn: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem9: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    popFilter: TPopupMenu;
    RTFExporter1: TRTFExporter;
    SaveDialog1: TSaveDialog;
    StandardExportFormats1: TStandardExportFormats;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure actAllColumnsClick(Sender: TObject);
    procedure actBottomExecute(Sender: TObject);
    procedure actBrowse20Execute(Sender: TObject);
    procedure actBrowseExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actEdtExecute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure actGrDetExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ActionList1Execute(AAction: TBasicAction; var Handled: Boolean);
    procedure actNextExecute(Sender: TObject);
    procedure actNoneColumnClick(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actPrintGridExecute(Sender: TObject);
    procedure actRetValueExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actTopExecute(Sender: TObject);
    procedure DBCalendar1DayChanged(Sender: TObject);
    procedure DBCalendar1DblClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1Enter(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FrPrintGrid1GetValue(const ParName: String; var ParValue: Variant
      );
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure ClearMarks;
    procedure EnhmPeriaAsMarks;
    procedure FormGridTitleClick(Column: TColumn);

    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure NLeo2Click(ColName: String; Check: Boolean);
    procedure NLeoClick(Sender: TObject);
    procedure NLeoClick2;

  private
    FNotCreated: Boolean;
    procedure BrowseFields(Grid: TDBGrid; var LeoMenu: TMenuItem);
    procedure PediaIdxActiveClick(Sender: TObject);
    procedure pmsCancelFilterClick(Sender: TObject);
    procedure pmsFilter2Click(Sender: TObject);
    procedure pmsFilterClick(Sender: TObject);
    function ReturnIdFromGrid(Grid: TDBGrid; ColName: String): Integer;
    procedure SaveExecute;
    procedure SetNotCreated(AValue: Boolean);
    { private declarations }
  public
    FilteredGrid:TDBGrid;
    DM:TDataModule1;
    ReturnValue:Integer;
    procedure Brw;
    procedure CreateAddEdit;
    procedure SetActionState(ctState: String);
    property NotCreated:Boolean read FNotCreated write SetNotCreated;

    { public declarations }
  end;

var
  Form1: TForm1;

implementation

uses FMain;

{$R *.lfm}

{ TForm1 }


procedure TForm1.FormCreate(Sender: TObject);
begin
  FilteredGrid:=DbGrid1;
  //CreateAddEditForm(DbGrid1,Panel3);
  SetNotCreated(False);
  SetActionState('ctBrowse');
//  DM.userform:=self;
//  SetActionState('ctBrowse');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
//  TfrmMain(Application.MainForm).DMain.userform:=Nil;
end;

procedure TForm1.FrPrintGrid1GetValue(const ParName: String;
  var ParValue: Variant);
begin

end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  pmsFilterClick(sender);
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  pmsCancelFilterClick(sender);
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
  N3Click(sender);
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
var z:integer;
    x:String;
begin
    Exporter.TableNameHint:=FilteredGrid.Hint;
    Exporter.Dataset:=FilteredGrid.DataSource.DataSet;
    Exporter.Execute;
end;

procedure TForm1.PageControl1Enter(Sender: TObject);
begin
  //
end;

procedure TForm1.popFilterPopup(Sender: TObject);
begin
  if Pedia.Count < 4 then
     BrowseFields(DBGrid1,Pedia);
end;

procedure TForm1.pmsFilterClick(Sender: TObject);
var frm : TfrmFilterEn2;
begin
  inherited;
  if (popFilter.PopupComponent is TDBGrid) then
  begin
    if (popFilter.PopupComponent is TDBGrid) then
      frm := TfrmFilterEn2.CreateWithParam(self,
        TDBGrid(popFilter.PopupComponent), DM);
    try
      frm.ShowModal;
      if ((frm.ModalResult = mrOk)) then
      begin
       FilteredGrid:=DbGrid1;
        if TDBGrid(FilteredGrid).DataSource.Dataset.Filter > '' then
          TDBGrid(FilteredGrid).DataSource.Dataset.Filter := TDBGrid
            (FilteredGrid).DataSource.Dataset.Filter + ' AND ' + frm.KSleo
        else
          TDBGrid(FilteredGrid).DataSource.Dataset.Filter := frm.KSleo;
        TDBGrid(FilteredGrid).DataSource.Dataset.Filtered := True;
      end;
    finally
      frm.free;
    end;
  end;
end;

procedure TForm1.pmsFilter2Click(Sender: TObject);
var frm : TfrmFilterEn;
begin
  inherited;
  if (popFilter.PopupComponent is TDBGrid) then
  begin
    if (popFilter.PopupComponent is TDBGrid) then
      frm := TfrmFilterEn.CreateWithParam(self,
        TDBGrid(popFilter.PopupComponent), DM);
    try
      frm.ShowModal;
      if ((frm.ModalResult = mrOk)) then
      begin
       FilteredGrid:=DbGrid1;
        if TDBGrid(FilteredGrid).DataSource.Dataset.Filter > '' then
          TDBGrid(FilteredGrid).DataSource.Dataset.Filter := TDBGrid
            (FilteredGrid).DataSource.Dataset.Filter + ' AND ' + frm.KSleo
        else
          TDBGrid(FilteredGrid).DataSource.Dataset.Filter := frm.KSleo;
        TDBGrid(FilteredGrid).DataSource.Dataset.Filtered := True;
      end;
    finally
      frm.Free;
    end;
  end;
end;



procedure TForm1.SetNotCreated(AValue: Boolean);
begin
  if FNotCreated=AValue then Exit;
  FNotCreated:=AValue;
end;

procedure TForm1.pmsCancelFilterClick(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Filtered:=False;
DBGrid1.DataSource.DataSet.Filter:='';
end;

procedure TForm1.N2Click(Sender: TObject);
//var frm:TfrmSearch;
begin
  //frm := TfrmSearch.CreateWithParam( Self, TDBGrid(popFilter.PopupComponent), DM );
  //frm.ShowModal;
  //frm.Free;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
if popfilter.PopupComponent is TDBGrid then
MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGrid(popfilter.PopupComponent).DataSource.DataSet.Filter
         , mtInformation,[mbOk], 0)
//else
//MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGridEH(popfilter.PopupComponent).DataSource.DataSet.Filter
//         , mtInformation,[mbOk], 0);
end;


procedure TForm1.FormActivate(Sender: TObject);
begin
   NotCreated:=False;
   DM.userform:=self;
//   SetActionState('ctBrowse');
   Brw;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if DbGrid1.DataSource.DataSet.State in [dsEdit,dsInsert] then
    begin
     MessageDlg (rsQuestion, rsStillInEditI, mtConfirmation, [], 0);
     CanClose:=False;
    end
  else
    begin
      CanClose:=True;
      SaveExecute;
    end;
end;

procedure TForm1.actPrevExecute(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Prior;
end;

procedure TForm1.actPrintGridExecute(Sender: TObject);
begin
  if MessageDlg('Question', 'Landscape ?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
     FrPrintGrid1.Orientation:= poLandscape
  else
     FrPrintGrid1.Orientation:= poPortrait;

  FrPrintGrid1.Caption:=self.Caption;
  FrPrintGrid1.PreviewReport;
end;

procedure TForm1.actRetValueExecute(Sender: TObject);
begin
  frmMain.InPopUpState:=True;
  ReturnValue:=FilteredGrid.DataSource.DataSet.FieldByName('id').asInteger;
  frmMain.InPopUpState:=False;
  close;
end;

procedure TForm1.actSaveExecute(Sender: TObject);
begin
  SaveExecute;
end;

procedure TForm1.actTopExecute(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.First;
end;

procedure TForm1.DBCalendar1DblClick(Sender: TObject);
begin

end;

procedure TForm1.DBEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var HoldColor:TColor;
begin
  HoldColor:=dbgrid1.Color;
  if dbgrid1.DataSource.DataSet.FieldByName('id').asInteger > 1000 then
     begin
  //     dbgrid1.Canvas.Brush.Color:=clRed;
//       dbgrid1.Color:=clRed;
       dbGrid1.Canvas.Brush.Color := clGradientActiveCaption;

       dbGrid1.canvas.fillrect(rect);
       dbgrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

//       dbgrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
//       dbgrid1.Canvas.Brush.Color:=HoldColor;
     end
  //else
  //if Not dbgrid1.DataSource.DataSet.FieldByName('Active').asBoolean then
  //   begin
  //     dbgrid1.Canvas.Brush.Color:=clGreen;
  //     dbgrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  //     dbgrid1.Canvas.Brush.Color:=HoldColor;
  //   end
else
   begin
     dbgrid1.Canvas.Brush.Color:=HoldColor;
//     dbgrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
end;

procedure TForm1.DBGrid1Enter(Sender: TObject);
begin

end;

procedure TForm1.SetActionState(ctState:String);
var x:Integer;
begin
  if FNotCreated=True then
     exit;
  for x:=0 to ActionList1.ActionCount -1 Do
     if (Not(ActionList1.Actions[x].Tag = 9999)) then
          if ActionList1.Actions[x].Category = ctState then
            begin
             TAction(ActionList1.Actions[x]).Enabled:=True;
             TAction(ActionList1.Actions[x]).Visible:=True;
            end
          else
            begin
             TAction(ActionList1.Actions[x]).Enabled:=False;
             TAction(ActionList1.Actions[x]).Visible:=False;
            end;
end;

procedure TForm1.CreateAddEdit;
begin
  CreateAddEditForm(DbGrid1,Panel3,DM);
end;

procedure TForm1.actNextExecute(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Next;
end;

procedure TForm1.actPostExecute(Sender: TObject);
begin
  try
    DBGrid1.DataSource.DataSet.Post;
  except
  on E: EDatabaseError do
    begin
      MessageDlg(rsError, rsADatabaseErr + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TForm1.actBottomExecute(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Last;
end;

procedure TForm1.SaveExecute;
var ts:TSqlQuery;
    x:integer;
begin
try
  if frmMain.SQLTransaction1.Active then
  // Only if we are within a started transaction;
  // otherwise you get "Operation cannot be performed on an inactive dataset"
  begin
  for x := 0 to DM.ComponentCount -1 do
    if DM.Components[x] is TSqlQuery then
       if TSqlQuery(DM.Components[x]).Name = DBGrid1.DataSource.DataSet.name then
          ts:=TSqlQuery(DM.Components[x]);

//    TSqlQuery(DBGrid1.DataSource).ApplyUpdates; //Pass user-generated changes back to database...
      if Ts.Active = true then
        if Ts.ChangeCount > 0 Then
         TS.ApplyUpdates(10);
      frmMain.KeysTable.ApplyUpdates;
      frmMain.SQLTransaction1.CommitRetaining; //... and commit them using the transaction.
    //SQLTransaction1.Active now is false
  end;
except
on E: EDatabaseError do
  begin
    MessageDlg(rsError, rsADatabaseErr + E.Message, mtError, [mbOK], 0);
  end;
end;
end;

procedure TForm1.actBrowse20Execute(Sender: TObject);
begin
  //
end;

procedure TForm1.actBrowseExecute(Sender: TObject);
begin
  //
end;

procedure TForm1.actAllColumnsClick(Sender: TObject);
var i:integer;
begin
  For i:=0 to DbGrid1.Columns.Count -1 do
   begin
    DBGrid1.Columns[i].Visible:=True;
    Pedia.Items[i+3].Checked:=True;
   end
end;


procedure TForm1.actNoneColumnClick(Sender: TObject);
var i:Integer;
begin
  For i:=0 to DbGrid1.Columns.Count -1 do
  begin
    DBGrid1.Columns[i].Visible:=False;
    Pedia.Items[i+3].Checked:=False;
  end;
end;

procedure TForm1.actCancelExecute(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Cancel;
end;

procedure TForm1.actDeleteExecute(Sender: TObject);
begin
   DBGrid1.DataSource.DataSet.Delete;
end;

procedure TForm1.actEditExecute(Sender: TObject);
begin
  //
end;

procedure TForm1.actEdtExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet1 then
     PageControl1.ActivePage := TabSheet2;
  DBGrid1.DataSource.DataSet.Edit;
end;

procedure TForm1.actExportExecute(Sender: TObject);
var z:integer;
    x:String;
    ExportSettings: TRTFExportFormatSettings;
begin
//  if SaveDialog1.Execute then
//    begin
////      Dm.CSVExporter1.Dataset:=DBGrid1.DataSource.DataSet;
////      Dm.CSVExporter1.FileName:=SaveDialog1.FileName;
////      Dm.CSVExporter1.Execute;
//
////      Dm.XMLXSDExporter1.Dataset:=DBGrid1.DataSource.DataSet;
////      Dm.XMLXSDExporter1.FileName:=SaveDialog1.FileName;
////      Dm.XMLXSDExporter1.Execute;
//
//      //ExportSettings:=TRTFExportFormatSettings.Create(true);
//      RTFExporter1.Dataset:=DBGrid1.DataSource.DataSet;
//      //Dm.RTFExporter1.FormatSettings:=ExportSettings;
//      //for z:=0 to DBGrid1.DataSource.DataSet.FieldCount -1 do
//      //begin
//      //    x:=DBGrid1.DataSource.DataSet.Fields[z].FieldName;
//      //    Dm.RTFExporter1.ExportFields.AddField(x);
//      //
//      //end;
//      RTFExporter1.FileName:=SaveDialog1.FileName;
//      RTFExporter1.Execute;
//
//
//    end;
    Exporter.TableNameHint:=self.Caption;
    Exporter.Dataset:=FilteredGrid.DataSource.DataSet;
    Exporter.Execute;

end;

procedure TForm1.actGrDetExecute(Sender: TObject);
begin
  if PageControl1.ActivePageIndex =0 then
     PageControl1.ActivePageIndex :=1
  else
     PageControl1.ActivePageIndex :=0;
end;

procedure TForm1.actInsertExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet1 then
     PageControl1.ActivePage := TabSheet2;
  DBGrid1.DataSource.DataSet.Append;
end;

procedure TForm1.Action1Execute(Sender: TObject);
var x:variant;
    x1:integer;
begin
  FilteredGrid.DataSource.DataSet.Locate('Name','Κρεα',[lopartialkey]);
  if x <> Null then
    begin
     x1:=x;
     MessageDlg (inttostr(x1),'Do you wish to Execute?', mtConfirmation,[mbYes, mbNo, mbIgnore],0)
    end;
end;



procedure TForm1.ActionList1Execute(AAction: TBasicAction; var Handled: Boolean
  );
var Leo:TDataSetState;
begin
  Leo:=DbGrid1.DataSource.DataSet.State;
//  TDataSetState0 = (dsInactive, dsBrowse, dsEdit, dsInsert, dsSetKey,
//    dsCalcFields, dsFilter, dsNewValue, dsOldValue, dsCurValue, dsBlockRead,
//    dsInternalCalc, dsOpening);

  StatusBar1.Panels[1].Text:=AAction.Name;

  StatusBar1.Panels[0].Text:=GetEnumName(TypeInfo(TDataSetState), integer(Leo));

  //if Leo in [dsInsert] then
  //   StatusBar1.Panels[0].Text:='Insert'
  //else
  //     if Leo in [dsBrowse] then
  //   StatusBar1.Panels[0].Text:='Browse'
  //else
  //   StatusBar1.Panels[0].Text:='.....';
end;

procedure TForm1.NLeoClick(Sender: TObject);
Var Grid:TDbGrid;
    s:String;
    x:Integer;
begin
if TPopupMenu(Sender).PopupComponent is TDBGrid then
   Grid:=TDBGrid(TPopupMenu(Sender).PopupComponent);
Grid:=DBGrid1;
If (Sender as TMenuItem).Checked then
  begin
  S:=(Sender as TMenuItem).Hint;
  Grid.Columns[ReturnIdFromGrid(Grid,(Sender as TMenuItem).Hint)].Visible:=False;
  (Sender as TMenuItem).Checked:=False;
  end
else
  begin
  S:=(Sender as TMenuItem).Hint;
  Grid.Columns[ReturnIdFromGrid(Grid,(Sender as TMenuItem).Hint)].Visible:=True;
  (Sender as TMenuItem).Checked:=True;
  end
end;


function TForm1.ReturnIdFromGrid(Grid:TDBGrid;ColName:String):Integer;
var x:Integer;
begin
    for x:=0 to Grid.Columns.Count -1 do
        if Grid.Columns[x].FieldName = ColName then
           result := x
end;

procedure TForm1.NLeoClick2;
Var Grid:TDbGrid;
begin
//
end;


procedure TForm1.BrowseFields(Grid:TDBGrid;var LeoMenu:TMenuItem);
Var i      :Integer;
    NewMenu:TMenuItem;
    L:TObject;
    M : TNotifyEvent;
begin
  For i:=0 to (Grid.Columns.Count - 1) do
   begin
     NewMenu        :=TMenuItem.Create(Grid);
     NewMenu.Caption:=Grid.Columns[i].Title.Caption;
     NewMenu.Tag    :=i;
     NewMenu.Hint   :=Grid.Columns[i].FieldName;
     NewMenu.Checked:=Grid.Columns[i].Visible;
     NewMenu.OnClick:= @NLeoClick;
     LeoMenu.Add(NewMenu);
   end;
end;

procedure TForm1.Brw;
var
LEdit: TDBLookUpComboBox;
LeoName, FldName: String;
x: Integer;
begin
exit;
LEdit        := TDBLookUpComboBox.Create(Self);
LEdit.Name   := 'LCB';
LEdit.Parent := Panel3;

//  LEdit.Parent := self;
LEdit.Top    := 200;
LEdit.Left   := 150;
LEdit.Width  := 100;
LEdit.Visible := True;
LeoName       := 'dtsLocations';
for x         := 0 to DM.ComponentCount - 1 do
  begin
    if DM.Components[x].Name = LeoName then
      begin
        LEdit.ListSource := TDataSource(DM.Components[x]);
      end
  end;


LEdit.ListSource := dm.dtsLocations;
LEdit.DataSource := dm.dtsDates;
LEdit.DataField  := 'LocationId';
LEdit.ListField := 'Name';
LEdit.KeyField  := 'Id';



MessageDlg(LEdit.ListSource.Name , mtError,[mbOk], 0);
MessageDlg(LEdit.DataField , mtError,[mbOk], 0);
MessageDlg(LEdit.DataSource.Name , mtError,[mbOk], 0);
MessageDlg(LEdit.ListField , mtError,[mbOk], 0);
MessageDlg(LEdit.KeyField , mtError,[mbOk], 0);

end;

procedure TForm1.DBCalendar1DayChanged(Sender: TObject);
var x:String;
begin
//  x:=TDBCalendar(sender).Date;
//  MessageDlg('Date Changed '+x, mtError, [mbOK], 0);
  if TDBCalendar(sender).DataSource.DataSet.State in [dsEdit,dsInsert] then
    begin
     TDBCalendar(sender).DataSource.DataSet.FieldByName(TDBCalendar(sender).DataField).value:=TDBCalendar(sender).DateTime;
    end
  else
  begin
//     MessageDlg('Cannot modify field in Browse state', mtError, [mbOK], 0);
//     MessageDlg(TDBCalendar(sender).DataSource.DataSet.FieldByName(TDBCalendar(sender).DataField).OldValue, mtError, [mbOK], 0);
     TDBCalendar(sender).DateTime:=TDBCalendar(sender).DataSource.DataSet.FieldByName(TDBCalendar(sender).DataField).Oldvalue;
  end

end;

procedure TForm1.FormGridTitleClick(Column: TColumn);
var SLeo,LeoS,TempField,TempField0,CT:String;
    LeoColumn:TColumn;
    LeoColCap:TCaption;
    ColumnField:TField;
    i,x,z,t,tt:Integer;
    LeoV,LeoV1:Variant;
    ColumnName:String;
begin
  inherited;
  if TSQLQuery(FilteredGrid.DataSource.DataSet).ChangeCount > 0 then
    begin
     beep();
     exit;
    end;

TempField :=Column.FieldName;
TempField0 :=Column.FieldName;
LeoColumn:=Column;
LeoColCap:=Column.Title.Caption;
if Column.Field.FieldKind = fkLookup then
  begin
   ColumnName:=FilteredGrid.DataSource.DataSet.FieldByName(Column.field.KeyFields).FieldName;
   for x := 0 to FilteredGrid.Columns.Count -1 do
       if FilteredGrid.Columns[x].FieldName = ColumnName then
          LeoColumn:=FilteredGrid.Columns[x];
   LeoColCap:=LeoColumn.Title.Caption;
   TempField :=LeoColumn.FieldName;
  end;


//////// ClientDataSet //////
//if FilteredGrid.DataSource.DataSet is TClientDataSet then
// begin
//   TClientDataSet(FilteredGrid.DataSource.DataSet).IndexFieldNames:=TempField;
//        if Pos('^',Column.Title.Caption) > 0 then
//           begin
////Remove Order
////           Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
//             ClearMarks;
//             LeoColumn.Title.Caption:=LeoColumn.Title.Caption+'*';
//             TempField :=TempField + ' Desc ';
//           end
//        else
//          if Pos('*',Column.Title.Caption) > 0 then
//             begin
////Remove Order
////             Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
//               ClearMarks;
//               Column.Title.Caption:=Column.Title.Caption+'^';
//               TempField :=TempField;
//             end
//          else
//             begin
////Remove Order
//               ClearMarks;
//               Column.Title.Caption:=Column.Title.Caption+'^';
//               TempField :=TempField;
//             end;
// end;
//////// ClientDataSet //////


////// AdoQuery //////
if FilteredGrid.DataSource.DataSet is TSQLQuery then
 begin
   if TSQLQuery(FilteredGrid.DataSource.DataSet).FieldByName(TempField0).Tag = 0 then
     begin
       //x:=TSQLQuery(FilteredGrid.DataSource.DataSet).SQL.Parameters.Count;
       //if x > 0 then
       // begin
       //   LeoV1:=VarArrayCreate([0, x],VarVariant);
       //   LeoV:=VarArrayCreate([0, x],VarVariant);
       //   SaveAdoParameters(LeoV,LeoV1,x,TSQLQuery(FormGrid.DataSource.DataSet));
       // end;
       LeoS:=TSQLQuery(FilteredGrid.DataSource.DataSet).SQL.Text;
       for t:=0 to FilteredGrid.Columns.Count -1 do
           if FilteredGrid.Columns[t].FieldName = Column.FieldName then
              tt:=t;
       CT:=Column.Field.DisplayLabel;
       if Pos('^',CT) > 0 then
           begin
//Remove Order
//           Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
             ClearMarks;
             CT:=AnsiReplaceStr(CT,'^','')+'*';
             FilteredGrid.Columns[tt].Title.Caption:=CT;
             Column.Field.DisplayLabel:=CT;
             TempField :=TempField + ' Desc ';
           end
        else
          if Pos('*',CT) > 0 then
             begin
//Remove Order
//             Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
               ClearMarks;
               CT:=AnsiReplaceStr(CT,'*','')+'^';
               FilteredGrid.Columns[tt].Title.Caption:=CT;
               Column.Field.DisplayLabel:=CT;
               TempField :=TempField;
             end
          else
             begin
//Remove Order
               ClearMarks;
               CT:=CT+'^';
               FilteredGrid.Columns[tt].Title.Caption:=CT;
               Column.Field.DisplayLabel:=CT;
               TempField :=TempField;
             end;

        if Pos('Order By ', LeoS ) = 0 then
          begin
            LeoS:=AnsiReplaceStr(LeoS,';',' ');
            LeoS:=LeoS+' Order By '+TempField;
            TSQLQuery(FilteredGrid.DataSource.DataSet).SQL.Clear;
            TSQLQuery(FilteredGrid.DataSource.DataSet).SQL.Add(LeoS);
            TSQLQuery(FilteredGrid.DataSource.DataSet).Active:=False;
          end
        else
          begin
            LeoS:=TSQLQuery(FilteredGrid.DataSource.DataSet).SQL.Text;
            i:=length(LeoS);
            z:=Pos('Order By ', LeoS );
            if z > 0 then
               System.Delete(LeoS,z,(i-z));
            LeoS:=LeoS+' Order By '+TempField;
            TSQLQuery(FilteredGrid.DataSource.DataSet).SQL.Text := LeoS;
            TSQLQuery(FilteredGrid.DataSource.DataSet).Active:=False;
          end;
        //if x > 0 then
        //  begin
        //    ReturnAdoParameters(LeoV,LeoV1,x,TSQLQuery(FilteredGrid.DataSource.DataSet));
        //  end;
          TSQLQuery(FilteredGrid.DataSource.DataSet).Active:=True;
//            TSQLQuery(FilteredGrid.DataSource.DataSet).Refresh;
     end;
 end;
////// AdoQuery //////

 EnhmPeriaAsMarks;
end;

procedure TForm1.ClearMarks;
var x:integer;
begin
for x:=0 to FilteredGrid.Columns.Count -1 do
  begin
    FilteredGrid.Columns[x].Field.DisplayLabel:=AnsiReplaceStr(FilteredGrid.Columns[x].Field.DisplayLabel,'*','');
    FilteredGrid.Columns[x].Field.DisplayLabel:=AnsiReplaceStr(FilteredGrid.Columns[x].Field.DisplayLabel,'^','');
  end;

for x:=1 to Pedia.Count-1 do
  begin
    Pedia.Items[x].Checked:=False;
  end;
end;

procedure TForm1.EnhmPeriaAsMarks;
var x:integer;
begin
for x:=3 to Pedia.Count-1 do
    NLeo2Click(TMenuItem(Pedia.Items[x]).Hint,TMenuItem(Pedia.Items[x]).Checked);
end;

procedure TForm1.NLeo2Click(ColName:String;Check:Boolean);
var x,y:Integer;
begin
for x:= 0 to FilteredGrid.Columns.Count -1 do
   if FilteredGrid.Columns[x].FieldName = ColName then
      y:=x;

If Not(Check = True) then
  begin
  FilteredGrid.Columns[y].Visible:=False;
  end
else
  begin
  FilteredGrid.Columns[y].Visible:=True;
  end
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  PediaIdxActiveClick(sender);
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
    pmsFilter2Click(sender);
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin

    if MessageDlg('Question', 'Landscape ?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
     FrPrintGrid1.Orientation:= poLandscape
  else
     FrPrintGrid1.Orientation:= poPortrait;

    FrPrintGrid1.DBGrid:=FilteredGrid;
  FrPrintGrid1.Caption:=FilteredGrid.Hint;
  FrPrintGrid1.PreviewReport;
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
var
  MyWorkbook: TsWorkbook;
  MyWorksheet: TsWorksheet;
  MyDir,excelname: string;
  MyHeaderTemplateCell: PCell;
  i,j:Integer;
begin

  if SaveDialog1.Execute then
     excelname:=SaveDialog1.FileName
  else
     exit;

  MyWorkbook := TsWorkbook.Create;
  MyWorkbook.Encoding:=seGreek;
  MyWorksheet := MyWorkbook.AddWorksheet('My Worksheet');

  for i := 0 to FilteredGrid.DataSource.DataSet.Fields.Count - 1 do
    MyWorksheet.WriteUTF8Text(0, i, FilteredGrid.DataSource.DataSet.Fields[i].FieldName);

  // Write all cells to the worksheet
  FilteredGrid.DataSource.DataSet.First;
  j := 0;
  while not FilteredGrid.DataSource.DataSet.EOF do
  begin
    for i := 0 to FilteredGrid.DataSource.DataSet.Fields.Count - 1 do
      MyWorksheet.WriteUTF8Text(j + 1, i, FilteredGrid.DataSource.DataSet.Fields[i].AsString);

    FilteredGrid.DataSource.DataSet.Next;
    Inc(j);
  end;

  // Save the spreadsheet to a file
  //const OUTPUT_FORMAT = sfExcel5;
  MyWorkbook.WriteToFile(MyDir + excelname + STR_EXCEL_EXTENSION, sfExcel5);
  MyWorkbook.Free;

end;


procedure TForm1.PediaIdxActiveClick(Sender: TObject);
var LeoS,SLeo,OrderStr:String;
    i,z,x:integer;
    LeoV,LeoV1:Variant;
    frm:TfrmDefineQOrderB;
begin
frm:=TfrmDefineQOrderB.CreateRefMenu(self,PopFilter,Pedia);
if frm.ShowModal=mrCancel then
  begin
   frm.Free;
   exit;
  end;
OrderStr:=frm.OrderString;
frm.Free;

{if Not(SetQIndexFields(PediaIdx) > ' ') then
  begin
    MessageDlg('Δέν έχουν ορισθεί Πεδία.', mtWarning, [mbOK], 0);
    exit;
  end; }
//UncheckIndexes();
//16012004 Clear * Marks before Using Order
//ClearMarks;
if (TDBGrid(FilteredGrid)).DataSource.DataSet is TSQLQuery then
 begin
   LeoS:=TSQLQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
//   SLeo:=' ' + SetQIndexFields(Pedia)+ ' ,';
   Sleo:=OrderStr+',';
   i:=length(SLeo);
   if Pos('ORDER BY ', LeoS) = 0 then
      LeoS:=LeoS+' ORDER BY ' +  OrderStr
   else
      System.Insert(SLeo,LeoS,( (Pos('ORDER BY ', LeoS )) + 9 ));
   TSQLQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
   TSQLQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
//   TSQLQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Prepare;
   TSQLQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
 end;
   EnhmPeriaAsMarks;
 end;

end.

