unit Globals;

interface

uses CheckLst, DB, SqlDB, SysUtils, DBGrids, Menus, controls, lcltype,
        Classes, memds, Sqlite3DS, SdfData, sqlite3conn, EditBtn,
        FileUtil, Forms, Graphics, Dialogs, Buttons, DbCtrls, StdCtrls,
        ExtCtrls, ComCtrls, Variants, Themes, DMain, DBZVDateTimePicker,
        ZVDateTimePicker, strutils;

type
	TUserRight = ( urGuest, urViewer, urEdit, urAdmin, urSuperAdmin );
	TOnPageChangeEvent = procedure ( var CanChange:boolean );
        TFormReturn = ( frNew , frEdit , frDelete , frView , frCancel );
        TCallState  = ( csDateTime , csDate , csTime );


        TOneObject = Procedure (Sender: TObject) of object;


Const
  INI_ADO_SECTION = 'ADO_SECTION';
  INI_CONNECTION_STRING_LINE = 'ConnectionString';
  INI_CONNECTION_STRING_LINE1 = 'ConnectionString1';  
  SEC_ADO_SECTION = 'SEC_ADO_SECTION';
  SEC_CONNECTION_STRING_LINE = 'SecConnectionString';

  INI_EXPORT_STRING_LINE = 'ExportConnectionString';
  INI_EXPORT_STRING_LINE1 = 'ExportConnectionString1';  

  ADO_ERR_NONE = 0;
  ADO_ERR_OPEN_TABLE = 1;

Var
  gADOConStr: AnsiString;
  gExportADOConStr : AnsiString;
  gADOError: Integer;

  gADOConStr1: AnsiString;
  gExportADOConStr1 : AnsiString;
  gADOError1: Integer;

  CurTop: Integer;
  DBGridEh1:TDbGrid;
  DM:TDataModule1;
  DMMain:TDataModule1;

  UserName   : string;
  UserRights : TUserRight;

function EncodePass( const pass:string ) : string;
function DecodePass( const pass:string ) : string;
function AccessLevelToStr( level:TUserRight ) : string;

procedure CreateAddEditForm(LDBGridEh1:TDbGrid;PanelDtl:TPanel;DataM:TDataModule);
function CreateLCB(Ownerr: TPanel; NName, LName: String;
    WWidth: Integer; LField: TFieldClass; NNField: String; FField: TField)
    : TComponent;
function CreateCheckBx(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;
function CreateMemo(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;
function CreateEdit(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;
function CreateDateEdit(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;



function CheckListBoxHas(clb: TCheckListBox): Boolean;
function CheckListBoxIsChecked(clb: TCheckListBox; ID: Integer): Boolean;
function FillInClb(clb:TCheckListBox):AnsiString;
function FillInStrClb(clb:TCheckListBox):AnsiString;
function FillInClbList(clb:TCheckListBox;FieldName:String):AnsiString;
function FillInClbListNo(clb:TCheckListBox;FieldName:String):AnsiString;
Procedure FillCheckListBox(clb: TCheckListBox; tbl: TsqlQuery; DescrFld, IDFld: Tfield);
Procedure FillCheckListBoxName(clb: TCheckListBox; tbl: TDataSet; DescrFldName, IDFldName: String);
Procedure ResetStrClb(clb:TCheckListBox);
Procedure SetStrClb(clb:TCheckListBox);
procedure EnhmClb(LeoCb:TCheckListBox;OnOff:Boolean);
Procedure ScanCheckListBox(clb: TCheckListBox; Mode: Boolean);


implementation

uses
//	ResStr,
       fMain, Unit1, math;

const
	ENKODE_KEY : array[0..19] of Char = ( #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01,
										  #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01 );

function AccessLevelToStr( level:TUserRight ) : string;
begin
	//case level of
	//	urGuest :		Result := SCUGuest;
	//	urViewer :		Result := SCUViewer;
	//	urEdit :		Result := SCUEdit;
	//	urAdmin :		Result := SCUAdmin;
	//	urSuperAdmin :	Result := SCUAdmin;
	//end;
end;

function EncodePass( const pass:string ) : string;
var
	n : integer;
begin
	Result := '';
	for n := 1 to Length(pass) do
		Result := Result + Char( Ord(Pass[n]) xor Ord(ENKODE_KEY[n mod sizeof(ENKODE_KEY)]) );
end;

function DecodePass( const pass:string ) : string;
begin
	result := EncodePass( pass );
end;


Function CheckListBoxHas(clb: TCheckListBox): Boolean;
Var
  i: Integer;
Begin
  Result := false;
  For i := 0 To (clb.Count - 1) Do Begin
    If (clb.Checked[i] = false) Then Begin
      Result := true;
      Exit;
    End;
  End;
End;

Function CheckListBoxIsChecked(clb: TCheckListBox; ID: Integer): Boolean;
Var
  i: Integer;
Begin
  Result := false;
  For i := 0 To (clb.Count - 1) Do Begin
    If (Integer(clb.Items.Objects[i]) = ID) Then Begin
      Result := clb.Checked[i];
      Exit;
    End;
  End;
End;

Procedure FillCheckListBox(clb: TCheckListBox; tbl: TSqlQuery; DescrFld, IDFld: Tfield);
Var
  i: Integer;
Begin
  clb.Clear;
  tbl.First;
  While (tbl.Eof = false) Do Begin
    i := clb.Items.AddObject(DescrFld.AsString, TObject(IDFld.AsInteger));
    clb.Checked[i] := true;
    tbl.Next;
  End;
End;

Procedure FillCheckListBoxName(clb: TCheckListBox; tbl: TDataSet; DescrFldName, IDFldName: String);
Var
  i: Integer;
Begin
  clb.Clear;
  tbl.First;
  While (tbl.Eof = false) Do Begin
    i := clb.Items.AddObject(tbl.FieldByName(DescrFldName).AsString, TObject(tbl.FieldByName(IDFldName).AsInteger));
    clb.Checked[i] := true;
    tbl.Next;
  End;
End;

Procedure ScanCheckListBox(clb: TCheckListBox; Mode: Boolean);
Var
  i: Integer;
Begin
  For i := 0 To (clb.Count - 1) Do Begin
    clb.Checked[i] := Mode;
  End;
End;

Procedure ResetStrClb(clb:TCheckListBox);
var i:integer;
begin
  for i:= 0 to clb.Count - 1 do
      clb.Checked[i]:=False;
end;

Procedure SetStrClb(clb:TCheckListBox);
var i:integer;
begin
  for i:= 0 to clb.Count - 1 do
      clb.Checked[i]:=True;
end;

function FillInStrClb(clb:TCheckListBox):AnsiString;
var i,x:integer;
    c:AnsiString;
begin
  Result := '';
  x:=0;
  for i:= 0 to clb.Count - 1 do
    begin
      if clb.Checked[i] then
        begin
         c:=c+inttostr((Integer(clb.Items.Objects[i])));
         c:=c+',';
         inc(x);
        end
    end;
if x = clb.Count then
   Result := ''
else
   begin
     SetLength(c,(Length(c)-1));
     Result:=c;
   end;
end;

function FillInClbList(clb:TCheckListBox;FieldName:String):AnsiString;
var i,x:integer;
    c:AnsiString;
begin
  Result := '';
  x:=0;
  for i:= 0 to clb.Count - 1 do
    begin
      if clb.Checked[i] then
        begin
         c:=c+'(['+FieldName+']='+inttostr((Integer(clb.Items.Objects[i])))+')';
         c:=c+' OR ';
         inc(x);
        end
    end;
if x = clb.Count then
   Result := ''
else
   begin
     SetLength(c,(Length(c)-4));
     Result:=c;
   end;
end;

function FillInClbListNo(clb:TCheckListBox;FieldName:String):AnsiString;
var i,x:integer;
    c:AnsiString;
begin
  Result := '';
  x:=0;
  for i:= 0 to clb.Count - 1 do
    begin
      if clb.Checked[i] then
        begin
         c:=c+'('+FieldName+'='+inttostr((Integer(clb.Items.Objects[i])))+')';
         c:=c+' OR ';
         inc(x);
        end
    end;
if x = clb.Count then
   Result := ''
else
   begin
     SetLength(c,(Length(c)-4));
     Result:=c;
   end;
end;



function FillInClb(clb:TCheckListBox):AnsiString;
var i,x:integer;
    c:AnsiString;
begin
  Result := '';
  x:=0;
  for i:= 0 to clb.Count - 1 do
    begin
      if clb.Checked[i] then
        begin
         c:=c+chr(39)+inttostr((Integer(clb.Items.Objects[i])))+chr(39);
         c:=c+',';
         inc(x);
        end
    end;
if x = clb.Count then
   Result := ''
else
   begin
     SetLength(c,(Length(c)-1));
     Result:=c;
   end;
end;


procedure EnhmClb(LeoCb:TCheckListBox;OnOff:Boolean);
var x:Integer;
begin
      for x:=0 to LeoCB.Items.Count -1 do
          LeoCB.Checked[x]:=OnOff;
end;

procedure CreateAddEditForm(LDBGridEh1:TDbGrid;PanelDtl:TPanel;DataM:TDataModule);
var
  n, ii, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem: TField;
begin
  DBGridEh1:= LDBGridEh1;
  DM:=TDataModule1(DataM);
  CurTop:=0;
  for n := 0 to LDBGridEh1.Columns.Count - 1 do
    begin
      if Assigned(LDBGridEh1.Columns[n].Field) then
        begin
          if Not(LDBGridEh1.Columns[n].Field.Calculated) then
           if LDBGridEh1.Columns[n].Field.visible then
           begin
            if Not(LDBGridEh1.Columns[n].Field.Lookup) then
              begin
                NField := LDBGridEh1.Columns[n].FieldName;
                LIndex := LDBGridEh1.Columns[n].Field.DataSet.FieldByName(NField).Index;
                LName  := LDBGridEh1.Columns[n].Field.DataSet.Fields[LIndex].DisplayName;
                // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                LWidth := LDBGridEh1.Columns[n].Width;
                LWidth := LDBGridEh1.Columns[n].Width * 2;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := LDBGridEh1.Columns[n].Field.DataSet.Fields[LIndex].Size * 10;
                // FieldDefs Have other Index  from FieldByName.Index
                LField:=TStringField;
                for ii := 0 to (LDBGridEh1.DataSource.DataSet.FieldDefs.Count - 1) do
                  begin
                    if LDBGridEh1.DataSource.DataSet.FieldDefs[ii].Name = NField then
                     begin
                      LField := LDBGridEh1.DataSource.DataSet.FieldDefs[ii].FieldClass;
                      LField := LDBGridEh1.DataSource.DataSet.FieldDefs[ii].FieldClass;
                     end;
                  end;
                NNField := NField;
                System.Delete(NField, Pos('.', NField), 1);
                NField:=AnsiReplaceStr(NField,':','');
                if LField = TBooleanField then
                   CreateCheckBx(PanelDtl, NField, LName, LWidth, LField, NNField)
                else
                  if LField = TMemoField then
                   CreateMemo(PanelDtl, NField, LName, LWidth, LField, NNField)
                  else
                   CreateEdit(PanelDtl, NField, LName, LWidth, LField, NNField);
              end
            else
            begin
              NField := DBGridEh1.Columns.Items[n].FieldName;
              LIndex := DBGridEh1.DataSource.DataSet.FieldByName(NField).Index;
              LName  := DBGridEh1.DataSource.DataSet.Fields[LIndex].DisplayName;
              // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
              LWidth := DBGridEh1.Columns.Items[n].Width;
              if LWidth < 10 then
                // Size is Messured in Characters so Size * 10 = Logical Width
                LWidth := DBGridEh1.DataSource.DataSet.Fields[LIndex].Size * 10;
              // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
              for ii := 0 to (DBGridEh1.DataSource.DataSet.Fields.Count - 1) do
                begin
                  if DBGridEh1.DataSource.DataSet.Fields[ii].Name = NField then
                     LField := Nil;
//                    LField := DBGridEh1.DataSource.DataSet.FieldDefs[3].FieldClass
                end;
              LFieldItem := DBGridEh1.DataSource.DataSet.FieldByName(NField);
              NNField    := NField;
              Delete(NField, Pos('.', NField), 1);
//              CreateLCB(Self, NField, LName, LWidth, LField, NNField,LFieldItem);
              CreateLCB(PanelDtl, NField, LName, LWidth, LField, NNField,LFieldItem);
            end;

//              begin
//                CreateLCB(PanelDtl, NField, LName, LWidth, LField, NNField,LFieldItem);
//              end;
           end;
        end;
    end;
//CreatedAddEdit:=True;
end;

function CreateCheckBx(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBCheckBox;
  LLabel: TLabel;
begin

  CurTop       := CurTop + 20;
  LEdit        := TDBCheckBox.Create(Ownerr);
  LEdit.DataSource := DBGridEh1.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Name   := 'EdtF' + NName;
  LEdit.Hint   := NNField;
  LEdit.Parent := Ownerr;
//  LEdit.Parent := self;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Tag    := 1;
  LEdit.Caption:= '';
//  LEdit.AllowGrayed := True;
  if WWidth > 500 then
    LEdit.Width := 500
  else
    LEdit.Width := WWidth;

  LEdit.Visible := True;

  LLabel         := TLabel.Create(Ownerr);
  LLabel.Name    := 'Lab' + NName;
  LLabel.Parent  := Ownerr;
//  LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
//  Self.Height    := CurTop + 120;
end;

function CreateEdit(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBEdit;
  LLabel: TLabel;
begin
  if LField=TDateTimeField then
   begin
     Result:=CreateDateEdit(Ownerr,NName,LName,WWidth,LField,NNField);
     exit;
   end;

  if LField=TDateField then
   begin
     Result:=CreateDateEdit(Ownerr,NName,LName,WWidth,LField,NNField);
     exit;
   end;

  if LField=TTimeField then
   begin
     Result:=CreateDateEdit(Ownerr,NName,LName,WWidth,LField,NNField);
     exit;
   end;



  CurTop       := CurTop + 25;
  LEdit        := TDBEdit.Create(Ownerr);
  LEdit.Name   := 'Edt' + NName;
  LEdit.Text   := '';
  LEdit.DataSource := DBGridEh1.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Hint   := NNField;
  LEdit.Parent := Ownerr;
//  LEdit.Parent := self;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Tag    := 1;
  if WWidth > 500 then
   begin
    LEdit.Width := 500
   end
  else
    LEdit.Width := WWidth;
  if WWidth < 20 then
    LEdit.Width := 190;

  LEdit.Visible := True;

//  if LField = TDateTimeField then
//    LEdit.OnDblClick := EditDateEnter;

  LEdit.OnChange := @frmmain.ChangeLength;

  LLabel         := TLabel.Create(Ownerr);
  LLabel.Name    := 'Lab' + NName;
  LLabel.Parent  := Ownerr;
//  LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
//  Self.Height    := CurTop + 120;
end;

function CreateMemo(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBMemo;
  LLabel: TLabel;
begin
  CurTop       := CurTop + 25;
  LEdit        := TDBMemo.Create(Ownerr);
  LEdit.Name   := 'EdtMm' + NName;
  LEdit.Text   := '';
  LEdit.Parent := Ownerr;
  LEdit.DataSource := DBGridEh1.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Hint   := NNField;
//  LEdit.Parent := self;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Tag    := 1;
  if WWidth > 500 then
    LEdit.Width := 500
  else
    LEdit.Width := WWidth;
  if WWidth < 20 then
    LEdit.Width := 190;

  LEdit.Width := 250;
  LEdit.Height  := 40;
  LEdit.Visible := True;

//  if LField = TDateTimeField then
//    LEdit.OnDblClick := EditDateEnter;

  LLabel         := TLabel.Create(Ownerr);
  LLabel.Name    := 'Lab' + NName;
  LLabel.Parent  := Ownerr;
//  LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
//  Self.Height    := CurTop + 120;
end;



function CreateLCB(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String; FField: TField)
  : TComponent;
var
  LEdit: TDBLookUpComboBox;
  TmpDs: TDataSource;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  LeoName, FldName: String;
  x: Integer;
begin
  CurTop       := CurTop + 25;
  LEdit        := TDBLookUpComboBox.Create(Ownerr);
  LEdit.Name   := 'LCB' + NName;
  LEdit.Parent := Ownerr;

//  LEdit.Parent := self;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Width  := WWidth;
  if WWidth > 500 then
    LEdit.Width := 500
  else
    LEdit.Width := WWidth;
  LEdit.Visible := True;
  LeoName       := TStringField(FField).LookupDataSet.Name;
  System.Delete(LeoName,1,3);
  LeoName       := 'dts' + LeoName;
  LEdit.Hint    := TStringField(FField).KeyFields;
  LEdit.OnKeyDown := @frmMain.LeoKeyDown;
  for x         := 0 to DM.ComponentCount - 1 do
    begin
      if DM.Components[x].Name = LeoName then
        begin
          TmpDS:=TDataSource(TDataModule1(dm).Components[x]);
//          LEdit.ListSource := TmpDs;
        end
    end;
  if Not(Assigned(TmpDS)) then
  begin
    LeoName       := 'ds' + TStringField(FField).LookupDataSet.Name;
    LEdit.Hint    := TStringField(FField).KeyFields;
    for x         := 0 to DM.ComponentCount - 1 do
    begin
      if DM.Components[x].Name = LeoName then
        begin
          TmpDS := TDataSource(DM.Components[x]);
        end
    end;
  if Not(Assigned(TmpDS)) then
  begin
    LeoName       := 'ds' + TStringField(FField).LookupDataSet.Name;
    LEdit.Hint    := TStringField(FField).KeyFields;
    for x         := 0 to DMMain.ComponentCount - 1 do
    begin
      if DMMain.Components[x].Name = LeoName then
        begin
          TmpDS := TDataSource(DMMain.Components[x]);
        end
    end;
  end;
  end;

  LEdit.ListField := TStringField(FField).LookupResultField;
  LEdit.KeyField  := TStringField(FField).LookupKeyFields;
  LEdit.DataSource := DBGridEh1.DataSource;
  LEdit.DataField  := TStringField(FField).KeyFields;
  LEdit.ListSource := TmpDS;

  LLabel         := TLabel.Create(Ownerr);
  LLabel.Name    := 'L' + NName;
  LLabel.Parent  := Ownerr;
//  LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
//  Self.Height    := CurTop + 120;
end;

function CreateDateEdit(Ownerr: TPanel; NName, LName: String;
  WWidth: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBZVDateTimePicker; //TDBCalendar;
  LLabel: TLabel;
begin
  CurTop       := CurTop + 25;
  LEdit        := TDBZVDateTimePicker.Create(Ownerr);
  LEdit.Name   := 'Edd' + NName;
//  LEdit.Text   := '';
  LEdit.DataSource := DBGridEh1.DataSource;
  LEdit.DataField  := NNField;
//  LEdit.OnDayChanged:=@Form1.DBCalendar1DayChanged;

  LEdit.Hint   := NNField;
  LEdit.Parent := Ownerr;
//  LEdit.Parent := self;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Tag    := 1;
  if WWidth > 500 then
    LEdit.Width := 500
  else
    LEdit.Width := WWidth;
  if WWidth < 20 then
    LEdit.Width := 190;

  LEdit.Visible := True;

  if LField=TTimeField then
     LEdit.HideDateTimeParts:=[dtpDay,dtpMonth,dtpYear];
  if LField=TDateField then
     LEdit.HideDateTimeParts:=[dtpHour,dtpMinute,dtpSecond,dtpMiliSec];


//  if LField = TDateTimeField then
//    LEdit.OnDblClick := EditDateEnter;

  LLabel         := TLabel.Create(Ownerr);
  LLabel.Name    := 'Lab' + NName;
  LLabel.Parent  := Ownerr;
//  LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;

//  Self.Height    := CurTop + 120;

end;


end.
