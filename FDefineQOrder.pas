unit FDefineQOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, CheckLst, ComCtrls, StrUtils, ActnList, DBGrids, DB,
  DBTables, ADODB ;

type
  TfrmDefineQOrder = class(TForm)
    CheckListBox1: TCheckListBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ActionList1: TActionList;
    actAccept: TAction;
    actQuit: TAction;
    actClear: TAction;
    MainMenu1: TMainMenu;
    actAccept1: TMenuItem;
    actQuit1: TMenuItem;
    actClear1: TMenuItem;
    procedure JvReorderListBox1DblClick(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure actAcceptExecute(Sender: TObject);
  private
    LeoSlNames:TStringList;
    LeoSlFullNames:TStringList;
    LeoSlNamesND:TStringList;
    FOrderString: String;
    FOrderStringNCase: String;
    FOrderStringName: String;
    procedure SetOrderString(const Value: String);
    procedure SetOrderStringNCase(const Value: String);
    procedure SetOrderStringName(const Value: String);
  public
    constructor CreateRefMenu(aowner:TComponent;RefMenu:TPopUpMenu;SubLeaf:TMenuItem);
    constructor CreateRefGrid(aowner:TComponent;Grid:TDBGrid);
    property OrderString:String read FOrderString write SetOrderString;
    property OrderStringNCase:String read FOrderStringNCase write SetOrderStringNCase;
    property OrderStringName:String read FOrderStringName write SetOrderStringName;
  end;

implementation

{$R *.dfm}

constructor TfrmDefineQOrder.CreateRefMenu(aowner: TComponent; RefMenu: TPopUpMenu;
  SubLeaf: TMenuItem);
var x,y:Integer;
    LeoStr:String;
begin
  inherited Create(Aowner);
  for x:=2 to SubLeaf.Count -1 do
//      if TMenuItem(SubLeaf.Items[x]).Checked then
        begin
         LeoStr:=TMenuItem(SubLeaf.Items[x]).Caption;
         LeoStr:=AnsiReplaceStr(LeoStr,'&','');
         ListBox2.Items.AddObject(LeoStr,TObject(TMenuItem(SubLeaf.Items[x]).Hint));
        end;
LeoSlNames:=TStringList.Create();
LeoSlFullNames:=TStringList.Create();
LeoSlNamesND:=TStringList.Create();
LeoSlNamesND.Sorted:=True;
LeoSlNamesND.Duplicates:=dupError;
end;

procedure TfrmDefineQOrder.JvReorderListBox1DblClick(Sender: TObject);
begin
  ListBox1.Items.Add(ListBox2.Items.Strings[1])
end;

procedure TfrmDefineQOrder.ListBox2DblClick(Sender: TObject);
var x:Integer;
begin
  for x:=0 to ListBox2.Items.Count -1 do
  begin
    if ListBox2.Selected[x] = True then
      begin
       try
         LeoSlNamesND.Add(String(ListBox2.Items.Objects[x]));
       except
         MessageDlg('Υπάρχει ήδη', mtError, [mbOK], 0);
         Break;
       end;
       LeoSlNames.Add(String(ListBox2.Items.Objects[x]));
       LeoSlFullNames.Add(ListBox2.Items.Strings[x]);
       ListBox2.CopySelection(ListBox1);
       ListBox2.CopySelection(CheckListBox1);
      end
  end;
end;

procedure TfrmDefineQOrder.SetOrderString(const Value: String);
begin
  FOrderString := Value;
end;

procedure TfrmDefineQOrder.actClearExecute(Sender: TObject);
var x:Integer;
begin
  for x:=0 to CheckListBox1.Count -1 do
      CheckListBox1.Items.Delete(0);
  for x:=0 to ListBox1.Count -1 do
      ListBox1.Items.Delete(0);
  for x:=0 to LeoSLNames.Count -1 do
      LeoSLNames.Delete(0);
  for x:=0 to LeoSLNamesND.Count -1 do
      LeoSLNamesND.Delete(0);
end;

procedure TfrmDefineQOrder.actQuitExecute(Sender: TObject);
begin
self.ModalResult:=mrCancel;
end;

procedure TfrmDefineQOrder.actAcceptExecute(Sender: TObject);
var x:Integer;
    S,N,Name:String;
    MoreThanOne:Boolean;
begin
if LeoSlNames.Count = 1 then
   MoreThanOne:=False
else
   MoreThanOne:=True;

  for x:=0 to LeoSlNames.Count -1 do
  begin
    if ((x > 0) and (MoreThanOne)) then
      begin
        s:=s+',';
        N:=N+',';
        Name:=Name+',';
      end;
     s:=s+LeoSLNames.Strings[x];
     N:=N+LeoSLNames.Strings[x];
     Name:=Name+' '+LeoSLFullNames.Strings[x];
     if CheckListBox1.Checked[x] then
       begin
         s:=s+' Desc';
         Name:=Name+' Φθίνουσα ';
       end;
  end;
MessageDlg(Name, mtWarning, [mbOK], 0);
SetOrderString(s);
SetOrderStringNCase(N);
SetOrderStringName(Name);
self.ModalResult:=mrOk;
end;

constructor TfrmDefineQOrder.CreateRefGrid(aowner: TComponent;
  Grid: TDBGrid);
var x,y:Integer;
    LeoStr:String;
    Tds:TDataSet;
begin
  inherited Create(Aowner);
  Tds:=Grid.DataSource.DataSet;
  for x:=0 to Tds.FieldCount -1 do
     if Not((Tds.Fields[x].Calculated) or (Tds.Fields[x].Lookup)) then
        if Tds.Fields[x].Visible then
           begin
             LeoStr:=Tds.Fields[x].DisplayName;
             LeoStr:=AnsiReplaceStr(LeoStr,'&','');
             ListBox2.Items.AddObject(LeoStr,TObject(Tds.Fields[x].FieldName));
           end;
LeoSlNames:=TStringList.Create();
LeoSlFullNames:=TStringList.Create();
LeoSlNamesND:=TStringList.Create();
LeoSlNamesND.Sorted:=True;
LeoSlNamesND.Duplicates:=dupError;

if Tds is TTable then
   CheckListBox1.Enabled:=False;
if Tds is TAdoTable then
   CheckListBox1.Enabled:=False;
end;

procedure TfrmDefineQOrder.SetOrderStringNCase(const Value: String);
begin
  FOrderStringNCase := Value;
end;

procedure TfrmDefineQOrder.SetOrderStringName(const Value: String);
begin
  FOrderStringName := Value;
end;

end.
