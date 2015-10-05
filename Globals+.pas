unit Globals;

interface

uses CheckLst, ADODB, DB, SysUtils;

type
	TUserRight = ( urGuest, urViewer, urEdit, urAdmin, urSuperAdmin );
	TOnPageChangeEvent = procedure ( var CanChange:boolean );
  TFormReturn = ( frNew , frEdit , frDelete , frView , frCancel );
  TCallState  = ( csDateTime , csDate , csTime );

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


  UserName   : string;
  UserRights : TUserRight;

function EncodePass( const pass:string ) : string;
function DecodePass( const pass:string ) : string;
function AccessLevelToStr( level:TUserRight ) : string;

function CheckListBoxHas(clb: TCheckListBox): Boolean;
function CheckListBoxIsChecked(clb: TCheckListBox; ID: Integer): Boolean;
function FillInClb(clb:TCheckListBox):AnsiString;
function FillInStrClb(clb:TCheckListBox):AnsiString;
function FillInClbList(clb:TCheckListBox;FieldName:String):AnsiString;
Procedure FillCheckListBox(clb: TCheckListBox; tbl: TADOTable; DescrFld, IDFld: Tfield);
Procedure FillCheckListBoxName(clb: TCheckListBox; tbl: TDataSet; DescrFldName, IDFldName: String);
Procedure ResetStrClb(clb:TCheckListBox);
Procedure SetStrClb(clb:TCheckListBox);
procedure EnhmClb(LeoCb:TCheckListBox;OnOff:Boolean);
Procedure ScanCheckListBox(clb: TCheckListBox; Mode: Boolean);

ResourceString
 NotaPhst = 'Δεν αφορά Πλειστηριασμό !';

implementation

uses
	ResStr,math;

const
	ENKODE_KEY : array[0..19] of Char = ( #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01,
										  #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01, #$01 );

function AccessLevelToStr( level:TUserRight ) : string;
begin
	case level of
		urGuest :		Result := SCUGuest;
		urViewer :		Result := SCUViewer;
		urEdit :		Result := SCUEdit;
		urAdmin :		Result := SCUAdmin;
		urSuperAdmin :	Result := SCUAdmin;
	end;
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

Procedure FillCheckListBox(clb: TCheckListBox; tbl: TADOTable; DescrFld, IDFld: Tfield);
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



end.
