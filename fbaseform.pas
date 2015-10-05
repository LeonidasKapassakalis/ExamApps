unit FBaseForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, fpstdexports, FileUtil, TADbSource, TAGraph,
  TASeries, TAChartListbox, fpdataexporter, RTTICtrls, LR_PGrid, Forms,
  Controls, Graphics, Dialogs, ActnList, Menus, ExtCtrls, ComCtrls, DBGrids,
  CheckLst, StdCtrls, Globals, FFilterEn2, FDefineQOrderB, Printers, DbCtrls, LR_Class;

type

  { TFrmBaseForm }

  TFrmBaseForm = class(TForm)
    actAllColumns: TMenuItem;
    actBottom: TAction;
    actBrowse: TAction;
    actBrowse2: TAction;
    actCancel: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actEdt: TAction;
    actExport: TAction;
    actGrDet: TAction;
    actInsert: TAction;
    Action1: TAction;
    ActionList1: TActionList;
    actNext: TAction;
    actNoneColumn: TMenuItem;
    actPost: TAction;
    actPrev: TAction;
    actPrintGrid: TAction;
    actRetValue: TAction;
    actSave: TAction;
    actTop: TAction;
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Chart1BarSeries1: TBarSeries;
    Chart1LineSeries1: TLineSeries;
    Chart1PieSeries1: TPieSeries;
    ChartListbox1: TChartListbox;
    clb: TCheckListBox;
    clb1: TCheckListBox;
    DbChartSource1: TDbChartSource;
    DBGrid1: TDBGrid;
    dtsDates: TDataSource;
    dtsDatesDetail: TDataSource;
    dtsExamName: TDataSource;
    Exporter: TFPDataExporter;
    FrPrintGrid1: TFrPrintGrid;
    ExportGrid: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    PrintGrid: TMenuItem;
    MenuItem20: TMenuItem;
    SortGrid: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    pnlMiddle: TPanel;
    pnlBottom: TPanel;
    pnlTop: TPanel;
    Pedia: TMenuItem;
    popFilter: TPopupMenu;
    qryDates: TSQLQuery;
    qryDatesComments: TStringField;
    qryDatesDate: TDateTimeField;
    qryDatesDoctorId: TLongintField;
    qryDatesExamPosted: TBooleanField;
    qryDatesExamPostedDT: TDateTimeField;
    qryDatesExamUpdated: TBooleanField;
    qryDatesExamUpdatedDT: TDateTimeField;
    qryDatesid: TLongintField;
    qryDatesLocationId: TLongintField;
    qryDatesPeopleId: TLongintField;
    qryExamName: TSQLQuery;
    qryExamNameid: TLongintField;
    qryExamNameName: TStringField;
    qryGroupExamDet: TSQLQuery;
    qryGroupExamDetDate: TDateTimeField;
    qryGroupExamDetDateId: TLongintField;
    qryGroupExamDetExamId: TLongintField;
    qryGroupExamDetid: TLongintField;
    qryGroupExamDetid1: TLongintField;
    qryGroupExamDetMax: TFloatField;
    qryGroupExamDetMin: TFloatField;
    qryGroupExamDetMMId: TLongintField;
    qryGroupExamDetMMName_MINMAX: TStringField;
    qryGroupExamDetMMSName_MINMAX: TStringField;
    qryGroupExamDetName: TStringField;
    qryGroupExamDetName1: TStringField;
    qryGroupExamDetName2: TStringField;
    qryGroupExamDetPeopleId: TLongintField;
    qryGroupExamDetResult_N: TFloatField;
    qryGroupExamDetResult_T: TStringField;
    qryGroupExamDetSName: TStringField;
    qryGroupExamDetSName1: TStringField;
    qryGroupExamDetSurname: TStringField;
    StandardExportFormats1: TStandardExportFormats;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    procedure actAllColumnsClick(Sender: TObject);
    procedure actNoneColumnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CreateAddEdit;
    procedure ExportGridClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrPrintGrid1GetValue(const ParName: String; var ParValue: Variant
      );
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure PrintGridClick(Sender: TObject);
    procedure SortGridClick(Sender: TObject);
    procedure anel1DblClick(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure pmsFilterClick(Sender: TObject);
    procedure pmsCancelFilterClick(Sender: TObject);
    procedure NLeoClick(Sender: TObject);
    procedure BrowseFields(Grid: TDBGrid; var LeoMenu: TMenuItem);
    procedure PediaIdxActiveClick(Sender: TObject);
  private
    function FindColumnByFieldName(Grid: TDbGrid; FldName: String): integer;

    { private declarations }
  public
    FilteredGrid:TComponent;
    { public declarations }
  end;

implementation

{$R *.lfm}

{ TFrmBaseForm }

procedure TFrmBaseForm.MenuItem15Click(Sender: TObject);
begin
  pmsFilterClick(sender);
end;

procedure TFrmBaseForm.MenuItem16Click(Sender: TObject);
begin
  pmsCancelFilterClick(sender);
end;

procedure TFrmBaseForm.MenuItem17Click(Sender: TObject);
begin
CreateAddEditForm(TDBGrid(FilteredGrid),Panel1,TDataModule(Self));
end;

procedure TFrmBaseForm.PrintGridClick(Sender: TObject);
begin
  FrPrintGrid1.DBGrid:=TDBGrid(FilteredGrid);
    if MessageDlg('Question', 'Landscape ?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
     FrPrintGrid1.Orientation:= poLandscape
  else
     FrPrintGrid1.Orientation:= poPortrait;

  FrPrintGrid1.Caption:=self.Caption;
  FrPrintGrid1.PreviewReport;
end;

procedure TFrmBaseForm.SortGridClick(Sender: TObject);
begin
  PediaIdxActiveClick(sender);
end;


procedure TFrmBaseForm.PediaIdxActiveClick(Sender: TObject);
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
//   EnhmPeriaAsMarks;
 end;




procedure TFrmBaseForm.anel1DblClick(Sender: TObject);
begin

end;

procedure TFrmBaseForm.popFilterPopup(Sender: TObject);
begin
  if Pedia.Count < 4 then
     BrowseFields(TDBGrid(FilteredGrid),Pedia);
end;

procedure TFrmBaseForm.FormCreate(Sender: TObject);
var x:integer;
begin
    FilteredGrid:=DbGrid1;

    qryDates.Active:=True;
    qryDates.First;
    repeat
      clb.AddItem(DateToStr(qryDatesDate.AsDateTime), TObject(qryDatesid.AsInteger));
      qryDates.Next;
    until qryDates.EOF;

    qryExamName.Active:=True;
    qryExamName.First;
    repeat
      clb1.AddItem(qryExamNameName.AsString, TObject(qryExamNameid.AsInteger));
      qryExamName.Next;
    until qryExamName.EOF;

end;

procedure TFrmBaseForm.FrPrintGrid1GetValue(const ParName: String;
  var ParValue: Variant);
begin

end;

procedure TFrmBaseForm.CreateAddEdit;
begin
  CreateAddEditForm(TDBGrid(FilteredGrid),Panel1,TDataModule(Self));
end;

procedure TFrmBaseForm.ExportGridClick(Sender: TObject);
begin
    Exporter.TableNameHint:=self.Caption;
    Exporter.Dataset:=TDBGrid(FilteredGrid).DataSource.DataSet;
    Exporter.Execute;
end;

procedure TFrmBaseForm.FormActivate(Sender: TObject);
var
  i,ii, x: integer;
  y:TTabSheet;
begin
      for x:=0 to self.ComponentCount -1 do
        if self.Components[x].name = 'DBGrid1' then
          if TWinControl(self.Components[x]).Parent is TTabSheet then
             begin
                 y:=TTabSheet(TWinControl(self.Components[x]).Parent);
                 for i := 0 to PageControl1.PageCount -1 do;
                     if PageControl1.Page[i].Name = y.Name then
                        ii:=i;
                     PageControl1.ActivePage := y;
              end

          else
          TWinControl(self.Components[x]).Parent.SetFocus;
end;

procedure TFrmBaseForm.Button1Click(Sender: TObject);
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
    SetLength(c, (Length(c) - 1));
    Result := c;
    MessageDlg(Result, mtError, [mbOK], 0);

    qryGroupExamDet.Active:=False;
    qryGroupExamDet.SQL.Add('Where DateId in (' + Result + ')');//DBLookupComboBox1.KeyValue;

    Result := '';
    c:= '';
    x := 0;
    for i := 0 to clb1.Count - 1 do
    begin
      if clb1.Checked[i] then
      begin
        c := c + IntToStr((integer(clb1.Items.Objects[i])));
        c := c + ',';
        Inc(x);
      end;
    end;
    SetLength(c, (Length(c) - 1));
    Result := c;
    MessageDlg(Result, mtError, [mbOK], 0);
    qryGroupExamDet.SQL.Add('And ExamId in (' + Result + ')');//DBLookupComboBox1.KeyValue;
   qryGroupExamDet.Active:=True;
end;

procedure TFrmBaseForm.actAllColumnsClick(Sender: TObject);
  var i:integer;
  begin
    For i:=0 to TDBGrid(FilteredGrid).Columns.Count -1 do
     begin
      TDBGrid(FilteredGrid).Columns[i].Visible:=True;
      Pedia.Items[i+3].Checked:=True;
     end
end;

procedure TFrmBaseForm.actNoneColumnClick(Sender: TObject);
  var i:integer;
  begin
    For i:=0 to TDBGrid(FilteredGrid).Columns.Count -1 do
     begin
      TDBGrid(FilteredGrid).Columns[i].Visible:=False;
      Pedia.Items[i+3].Checked:=False;
     end
end;

procedure TFrmBaseForm.Button2Click(Sender: TObject);
begin
  CreateAddEditForm(TDBGrid(FilteredGrid),Panel1,TDataModule(Self));
end;

procedure TFrmBaseForm.pmsFilterClick(Sender: TObject);
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

procedure TFrmBaseForm.pmsCancelFilterClick(Sender: TObject);
begin
TDBGrid(FilteredGrid).DataSource.DataSet.Filtered:=False;
TDBGrid(FilteredGrid).DataSource.DataSet.Filter:='';
end;

procedure TFrmBaseForm.BrowseFields(Grid:TDBGrid;var LeoMenu:TMenuItem);
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

procedure TFrmBaseForm.NLeoClick(Sender: TObject);
Var Grid:TDbGrid;
begin
if TPopupMenu(Sender).PopupComponent is TDBGrid then
   Grid:=TDBGrid(TPopupMenu(Sender).PopupComponent);

// Check!!! and Fix
Grid:=TDBGrid(FilteredGrid);
If (Sender as TMenuItem).Checked then
  begin
//  Grid.columns[1].FieldName:=;
  Grid.Columns[FindColumnByFieldName(Grid,(Sender as TMenuItem).Hint)].Visible:=False;
//  Grid.Columns[((Sender as TMenuItem).Tag)].Visible:=False;
  (Sender as TMenuItem).Checked:=False;
  end
else
  begin
  Grid.Columns[FindColumnByFieldName(Grid,(Sender as TMenuItem).Hint)].Visible:=True;
//  Grid.Columns[((Sender as TMenuItem).Tag)].Visible:=True;
  (Sender as TMenuItem).Checked:=True;
  end
end;

function TFrmBaseForm.FindColumnByFieldName(Grid: TDbGrid; FldName:String):integer;
var x:Integer;
begin
   for x:=0 to Grid.Columns.Count -1 do
    if Grid.Columns[x].FieldName = FldName then
       FindColumnByFieldName:=x;
end;

end.

