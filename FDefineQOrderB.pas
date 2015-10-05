unit FDefineQOrderB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBGrids, Menus, Dialogs, StdCtrls, CheckLst, StrUtils, db, SQLDB;

type

  { TfrmDefineQOrderB }

  TfrmDefineQOrderB = class(TForm)
    CheckListBox1: TCheckListBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
    constructor CreateRefDataSource(aowner: TComponent; DatSource: TDataSet);
    property OrderString:String read FOrderString write SetOrderString;
    property OrderStringNCase:String read FOrderStringNCase write SetOrderStringNCase;
    property OrderStringName:String read FOrderStringName write SetOrderStringName;
  end;


implementation

{$R *.dfm}

constructor TfrmDefineQOrderB.CreateRefMenu(aowner: TComponent; RefMenu: TPopUpMenu;
  SubLeaf: TMenuItem);
var x,y:Integer;
    LeoStr:String;
begin
  inherited Create(Aowner);
  for x:=3 to SubLeaf.Count -1 do
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

constructor TfrmDefineQOrderB.CreateRefDataSource(aowner: TComponent; DatSource: TDataSet);
var x,y:Integer;
    LeoStr:String;
begin
  inherited Create(Aowner);

  for x:=0 to DatSource.Fields.Count -1 do
     if Not((DatSource.Fields[x].Calculated) or (DatSource.Fields[x].Lookup)) then
        if DatSource.Fields[x].Visible then
           begin
             LeoStr:=DatSource.Fields[x].DisplayName;
             LeoStr:=AnsiReplaceStr(LeoStr,'&','');
             ListBox2.Items.AddObject(LeoStr,TObject(DatSource.Fields[x].DisplayName));
           end;

LeoSlNames:=TStringList.Create();
LeoSlFullNames:=TStringList.Create();
LeoSlNamesND:=TStringList.Create();
LeoSlNamesND.Sorted:=True;
LeoSlNamesND.Duplicates:=dupError;
end;


procedure TfrmDefineQOrderB.Button1Click(Sender: TObject);
begin

end;

procedure TfrmDefineQOrderB.Button2Click(Sender: TObject);
begin

end;

procedure TfrmDefineQOrderB.Button3Click(Sender: TObject);
begin

end;

procedure TfrmDefineQOrderB.JvReorderListBox1DblClick(Sender: TObject);
begin
  ListBox1.Items.Add(ListBox2.Items.Strings[1])
end;


procedure TfrmDefineQOrderB.ListBox2DblClick(Sender: TObject);
var x:Integer;
    t:String;
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
       t:=String(ListBox2.Items.Objects[x]);
       LeoSlNames.Add(String(ListBox2.Items.Objects[x]));
       LeoSlFullNames.Add(ListBox2.Items.Strings[x]);
       ListBox1.AddItem(ListBox2.Items.Strings[x],ListBox2.Items.Objects[x]);
       CheckListBox1.AddItem(ListBox2.Items.Strings[x],ListBox2.Items.Objects[x]);
//       ListBox2.CopySelection(ListBox1);
//       ListBox2.CopySelection(CheckListBox1);
      end
  end;
end;

procedure TfrmDefineQOrderB.SetOrderString(const Value: String);
begin
  FOrderString := Value;
end;

procedure TfrmDefineQOrderB.actClearExecute(Sender: TObject);
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

procedure TfrmDefineQOrderB.actQuitExecute(Sender: TObject);
begin
self.ModalResult:=mrCancel;
end;

procedure TfrmDefineQOrderB.actAcceptExecute(Sender: TObject);
var x:Integer;
    S,N,NName:String;
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
        NName:=NName+',';
      end;
     s:=s+LeoSLNames.Strings[x];
     N:=N+LeoSLNames.Strings[x];
     NName:=NName+' '+LeoSLFullNames.Strings[x];
     if CheckListBox1.Checked[x] then
       begin
         s:=s+' Desc';
         NName:=NName+' Φθίνουσα ';
       end;
  end;
MessageDlg(NName, mtWarning, [mbOK], 0);
SetOrderString(s);
SetOrderStringNCase(N);
SetOrderStringName(NName);
self.ModalResult:=mrOk;
end;

constructor TfrmDefineQOrderB.CreateRefGrid(aowner: TComponent;
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

if Tds is TSQLQuery then
   CheckListBox1.Enabled:=False;
//if Tds is TAdoTable then
//   CheckListBox1.Enabled:=False;
end;

procedure TfrmDefineQOrderB.SetOrderStringNCase(const Value: String);
begin
  FOrderStringNCase := Value;
end;

procedure TfrmDefineQOrderB.SetOrderStringName(const Value: String);
begin
  FOrderStringName := Value;
end;


end.
