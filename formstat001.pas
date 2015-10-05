unit FormStat001;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, FileUtil, TADbSource, TAIntervalSources,
  TAChartListbox, TAGraph, TAStyles, TASources, TASeries, Forms, Controls,
  Graphics, Dialogs, ComCtrls, DBGrids, DbCtrls, CheckLst, StdCtrls,
  TACustomSource, TATools, TATransformations, TALegendPanel, TANavigation,
  TADataTools;

type

  { TFrmStat001 }

  TFrmStat001 = class(TForm)
    Button2: TButton;
    Chart1: TChart;
    Chart1BarSeries1: TBarSeries;
    Chart1LineSeries1: TLineSeries;
    Chart1PieSeries1: TPieSeries;
    ChartListbox1: TChartListbox;
    DbChartSource1: TDbChartSource;
    DBGrid1: TDBGrid;
    clb: TCheckListBox;
    clb1: TCheckListBox;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsDates: TDataSource;
    dtsDatesDetail: TDataSource;
    dtsExamName: TDataSource;
    PageControl1: TPageControl;
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
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure clb1ItemClick(Sender: TObject; Index: integer);
    procedure DbChartSource1GetItem(ASender: TDbChartSource;
      var AItem: TChartDataItem);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmStat001: TFrmStat001;

implementation

{$R *.lfm}

{ TFrmStat001 }

procedure TFrmStat001.DbChartSource1GetItem(ASender: TDbChartSource;
  var AItem: TChartDataItem);
begin

end;

procedure TFrmStat001.FormCreate(Sender: TObject);
begin
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

procedure TFrmStat001.Button1Click(Sender: TObject);
begin
  qryDates.First;
  repeat
    clb.AddItem(DateToStr(qryDatesDate.AsDateTime), TObject(qryDatesid.AsInteger));
    qryDates.Next;
  until qryDates.EOF;

  qryExamName.First;
  repeat
    clb1.AddItem(qryExamNameName.AsString, TObject(qryExamNameid.AsInteger));
    qryExamName.Next;
  until qryExamName.EOF;


end;

procedure TFrmStat001.Button2Click(Sender: TObject);
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

procedure TFrmStat001.clb1ItemClick(Sender: TObject; Index: integer);
var x,y:integer;
begin
  y:=0;
  for x:=0 to TChecklistbox(sender).Count -1 do
      if TChecklistbox(sender).Checked[x] then
          inc(y);
  if Sender is TChecklistbox then
  if y > 1 then
  begin
     TChecklistbox(sender).Checked[index]:= false;
     MessageDlg(inttostr(TChecklistbox(sender).SelCount), mtError, [mbOK], 0);
  end;
end;

end.

