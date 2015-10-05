unit FFilterEn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBGrids, DB, DBCtrls, DBase, DMain, Globals,
  CheckLst, SQLMemMain, Vcl.Menus, Vcl.ComCtrls;

type
  TfrmFilterEn = class(TForm)
    SQLMemTable1: TSQLMemTable;
    DataSource99: TDataSource;
    PopChLstBox: TPopupMenu;
    ClbAll: TMenuItem;
    ClbNone: TMenuItem;
    PageControl: TPageControl;
    TabShMain: TTabSheet;
    btnAccept: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure GeneralEditExit(Sender: TObject);
    procedure GeneralDBLookupComboBoxExit(Sender: TObject);
    procedure ClbAllClick(Sender: TObject);
    procedure ClbNoneClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FGrid: TDBGrid;
    CreateTable: Boolean;
    procedure FillCombo;
    function CreateEdit(Owner: TForm; Name, LName: String; Width: Integer;
      LField: TFieldClass; NNField: String): TComponent;
    function CreateLCB(Owner: TForm; Name, LName: String; Width: Integer;
      LField: TFieldClass; NNField: String; Field: TField): TComponent;
    function CreateLCB0(Owner: TForm; Name, LName: String; Width: Integer;
      LField: TFieldClass; NNField: String; Field: TField): TComponent;
    procedure EditDateEnter(Sender: TObject);
    function SearchComp(Name: String): TComponent;
    function SearchField(Name: String): Variant;
    procedure ButtonCopyClick(Sender: TObject);
    procedure Button2CopyClick(Sender: TObject);
    procedure CheckListBoxExit(Sender: TObject);
    procedure UpdateField(Name: String; NewVal: Integer);
    function SearchFieldInt(Name: String): Integer;
  public
    KSleo: String;
    constructor CreateWithParam(aowner: TComponent; grid: TDBGrid;
      DM: TDataModule);
  end;

implementation

{$R *.dfm}

constructor TfrmFilterEn.CreateWithParam(aowner: TComponent; grid: TDBGrid;
  DM: TDataModule);
begin
  FGrid := grid;
  inherited Create(aowner);
  PDM         := TDMBASE(DM);
  CreateTable := False;
end;

function TfrmFilterEn.CreateEdit(Owner: TForm; Name, LName: String;
  Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit, LEdit1: TEdit;
  LLabel: TLabel;
  LBut: TButton;
begin
  CurTop       := CurTop + 20;
  LEdit        := TEdit.Create(Self);
  LEdit.Name   := 'EdtF' + Name;
  LEdit.Hint   := NNField;
  LEdit.Parent := Owner;
  LEdit.Parent := TabShMain;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Tag    := 1;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;

  LEdit.Visible := True;
  LEdit.Text    := '';
  LEdit.OnExit  := GeneralEditExit;

  if LField = TDateTimeField then
    LEdit.OnDblClick := EditDateEnter;

  LEdit1        := TEdit.Create(Self);
  LEdit1.Name   := 'EdtT' + Name;
  LEdit1.Hint   := NNField;
  LEdit1.Parent := Owner;
  LEdit1.Parent := TabShMain;
  LEdit1.Top    := CurTop;
  LEdit1.Left   := 370;
  LEdit1.Tag    := 2;
  if Width > 200 then
    LEdit1.Width := 190
  else
    LEdit1.Width := Width;

  LEdit1.Visible := True;
  LEdit1.Text    := '';
  LEdit1.OnExit  := GeneralEditExit;

  if LField = TDateTimeField then
    LEdit1.OnDblClick := EditDateEnter;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'Lab' + Name;
  LLabel.Parent  := Owner;
  LLabel.Parent  := TabShMain;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;

  LBut         := TButton.Create(Self);
  LBut.Name    := 'But' + Name;
  LBut.Name    := Name;
  LBut.Hint    := NNField;
  LBut.Parent  := Owner;
  LBut.Parent  := TabShMain;
  LBut.Top     := CurTop;
  LBut.Left    := 350;
  LBut.Width   := 20;
  LBut.Caption := '->';
  LBut.Tag     := 10;
  LBut.OnClick := ButtonCopyClick;

end;

function TfrmFilterEn.CreateLCB(Owner: TForm; Name, LName: String;
  Width: Integer; LField: TFieldClass; NNField: String; Field: TField)
  : TComponent;
var
  LEdit, LEdit1: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  DSet, DSet1: TDataSource;
  LChlb: TCheckListBox;
  LTab: TTabSheet;
  LeoName, FldName: String;
  x: Integer;
begin
  CurTop       := CurTop + 20;
  LEdit        := TDBLookUpComboBox.Create(Self);
  LEdit.Name   := 'LCBF' + Name;
  LEdit.Parent := Owner;
  LEdit.Parent := TabShMain;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Width  := Width;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  LEdit.Visible := True;
  LEdit.Tag     := 1;
  LeoName       := TStringField(Field).LookupDataSet.Name;
  LeoName       := 'ds' + LeoName;
  LEdit.Hint    := TStringField(Field).KeyFields;
  for x         := 0 to PDM.ComponentCount - 1 do
    begin
      if PDM.Components[x].Name = LeoName then
        begin
          LEdit.ListSource := TDataSource(PDM.Components[x]);
        end
    end;
  LEdit.ListField := TStringField(Field).LookupResultField;
  LEdit.KeyField  := TStringField(Field).LookupKeyFields;
  LEdit.OnExit    := GeneralDBLookupComboBoxExit;

  FldName := 'ds0' + LEdit.Name;
  SQLMemTable1.FieldDefs.Add('ds0' + LEdit.Name, ftInteger, 0, False);
  LEdit.DataField  := 'ds0' + LEdit.Name;
  LEdit.DataSource := DataSource99;

  LEdit1        := TDBLookUpComboBox.Create(Self);
  LEdit1.Name   := 'LCBT' + Name;
  LEdit1.Parent := Owner;
  LEdit1.Parent := TabShMain;
  LEdit1.Top    := CurTop;
  LEdit1.Left   := 370;
  if Width > 200 then
    LEdit1.Width := 190
  else
    LEdit1.Width := Width;
  LEdit1.Visible := True;
  LEdit1.Tag     := 2;
  LeoName        := TStringField(Field).LookupDataSet.Name;
  LeoName        := 'ds' + LeoName;
  LEdit1.Hint    := TStringField(Field).KeyFields;
  for x          := 0 to PDM.ComponentCount - 1 do
    begin
      if PDM.Components[x].Name = LeoName then
        begin
          LEdit1.ListSource := TDataSource(PDM.Components[x]);
        end
    end;
  LEdit1.ListField := TStringField(Field).LookupResultField;
  LEdit1.KeyField  := TStringField(Field).LookupKeyFields;
  LEdit1.OnExit    := GeneralDBLookupComboBoxExit;

  FldName := 'ds0' + LEdit1.Name;
  SQLMemTable1.FieldDefs.Add(FldName, ftInteger, 0, False);
  LEdit1.DataField  := 'ds0' + LEdit1.Name;
  LEdit1.DataSource := DataSource99;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'L' + Name;
  LLabel.Parent  := Owner;
  LLabel.Parent  := TabShMain;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;

  LBut         := TButton.Create(Self);
  LBut.Name    := 'B' + Name;
  LBut.Name    := Name;
  LBut.Hint    := NNField;
  LBut.Parent  := Owner;
  LBut.Parent  := TabShMain;
  LBut.Top     := CurTop;
  LBut.Left    := 350;
  LBut.Width   := 20;
  LBut.Caption := '->';
  LBut.Tag     := 90;
  LBut.OnClick := ButtonCopyClick;

  // LBut2 := TButton.Create(Self);
  // LBut2.Name := 'B2' + Name;
  // LBut2.Hint := 'Chib' + Name;
  // LBut2.Parent := Owner;
  // LBut2.Top := CurTop;
  // LBut2.Left := 550;
  // LBut2.Width := 20;
  // LBut2.Caption := '*';
  // LBut2.Tag    := 90;
  // LBut2.OnClick := Button2CopyClick;

//  LTab             := TTabSheet.Create(PageControl1);
  LTab             := TTabSheet.Create(self);
  LTab.Name        := 'Tab' + Name;
  LTab.PageControl := PageControl;
  LTab.Caption     := Name;
  LTab.Visible     := True;
//  LChlb            := TCheckListBox.Create(LTab);
  LChlb            := TCheckListBox.Create(self);
  LChlb.Align      := alClient;
  LChlb.Name       := 'Chib' + Name;
  // LChlb.Parent  := Owner;
  LChlb.Parent := LTab;
  LChlb.Top    := CurTop;
  LChlb.Hint    := TStringField(Field).KeyFields;
  LChlb.Left   := 450;
  LChlb.Width  := 200;
  // LChlb.Tag     := 90;
  // LChlb.Visible := False;
  LChlb.PopupMenu := PopChLstBox;
  LChlb.OnExit    := CheckListBoxExit;
//!!!
//  FillCheckListBoxName(LChlb, LEdit1.ListSource.DataSet, LEdit1.ListField,
//    LEdit1.KeyField);

  CreateTable := True;
end;

function TfrmFilterEn.CreateLCB0(Owner: TForm; Name, LName: String;
  Width: Integer; LField: TFieldClass; NNField: String; Field: TField)
  : TComponent;
var
  LEdit, LEdit1: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  DSet, DSet1: TDataSource;
  LChlb: TCheckListBox;
  LTab: TTabSheet;
  LeoName, FldName: String;
  x: Integer;
  LEditListField,LEditKeyField,LEditName,LEdit1Name: String;
  LEditListSource : TDataSource;
begin
  LeoName       := TStringField(Field).LookupDataSet.Name;
  LeoName       := 'ds' + LeoName;
  for x         := 0 to PDM.ComponentCount - 1 do
    begin
      if PDM.Components[x].Name = LeoName then
        begin
          LEditListSource := TDataSource(PDM.Components[x]);
        end
    end;
  LEditListField := TStringField(Field).LookupResultField;
  LEditKeyField  := TStringField(Field).LookupKeyFields;


{  LEditName   := 'LCBF' + Name;
  LEdit1Name   := 'LCBT' + Name;

  FldName := 'ds0' + LEditName;
  SQLMemTable1.FieldDefs.Add('ds0' + LEditName, ftInteger, 0, False);
  LEdit.DataField  := 'ds0' + LEditName;
  LEdit.DataSource := DataSource99;

  FldName := 'ds0' + LEdit1Name;
  SQLMemTable1.FieldDefs.Add(FldName, ftInteger, 0, False);
  LEdit1.DataField  := 'ds0' + LEdit1Name;
  LEdit1.DataSource := DataSource99;}

  LTab             := TTabSheet.Create(self);
  LTab.Name        := 'Tab' + Name;
  LTab.PageControl := PageControl;
  LTab.Caption     := Name;
  LTab.Visible     := True;
  LChlb            := TCheckListBox.Create(self);
  LChlb.Align      := alClient;
  LChlb.Name       := 'Chib' + Name;
  LChlb.Parent := LTab;
  LChlb.Top    := CurTop;
  LChlb.Hint    := TStringField(Field).KeyFields;
  LChlb.Left   := 450;
  LChlb.Width  := 200;
  LChlb.PopupMenu := PopChLstBox;
  LChlb.OnExit    := CheckListBoxExit;
//!!!!
  FillCheckListBoxName(LChlb, LEditListSource.DataSet, LEditListField,
    LEditKeyField);

//  CreateTable := True;
end;



procedure TfrmFilterEn.FillCombo;
var
  n, ii, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem: TField;
begin
  for n := 0 to FGrid.Columns.Count - 1 do
    begin
      if Assigned(FGrid.Columns.Items[n].Field) then
        begin
          if Not(FGrid.Columns.Items[n].Field.Calculated) then
            if Not(FGrid.Columns.Items[n].Field.Lookup) then
              begin
                NField := FGrid.Columns.Items[n].FieldName;
                LIndex := FGrid.DataSource.DataSet.FieldByName(NField).Index;
                LName  := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
                // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                LWidth := FGrid.Columns.Items[n].Width;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := FGrid.DataSource.DataSet.Fields[LIndex].Size * 10;
                // FieldDefs Have other Index  from FieldByName.Index
                for ii := 0 to (FGrid.DataSource.DataSet.FieldDefs.Count - 1) do
                  begin
                    if FGrid.DataSource.DataSet.FieldDefs[ii].Name = NField then
                      LField := FGrid.DataSource.DataSet.FieldDefs[ii]
                        .FieldClass;
                  end;
                NNField := NField;
                Delete(NField, Pos('.', NField), 1);
                CreateEdit(Self, NField, LName, LWidth, LField, NNField);
              end
            else
              begin
                NField := FGrid.Columns.Items[n].FieldName;
                LIndex := FGrid.DataSource.DataSet.FieldByName(NField).Index;
                LName  := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
                // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                LWidth := FGrid.Columns.Items[n].Width;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := FGrid.DataSource.DataSet.Fields[LIndex].Size * 10;
                // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
                for ii := 0 to (FGrid.DataSource.DataSet.FieldDefs.Count - 1) do
                  begin
                    if FGrid.DataSource.DataSet.FieldDefs[ii].Name = NField then
                      LField := FGrid.DataSource.DataSet.FieldDefs[ii]
                        .FieldClass;
                  end;
                LFieldItem := FGrid.DataSource.DataSet.FieldByName(NField);
                NNField    := NField;
                Delete(NField, Pos('.', NField), 1);
                CreateLCB0(Self, NField, LName, LWidth, LField, NNField,LFieldItem);
              end;
        end;
    end
end;

procedure TfrmFilterEn.FormActivate(Sender: TObject);
begin
  PageControl.Visible:=False;
  PageControl.ActivePage := TabShMain;
  PageControl.Refresh;
  PageControl.Visible:=True;
end;

procedure TfrmFilterEn.FormCreate(Sender: TObject);
begin
  FillCombo;
  if CreateTable then
    begin
      SQLMemTable1.CreateTable;
      SQLMemTable1.Active := True;
      SQLMemTable1.Insert;
    end;
end;

procedure TfrmFilterEn.FormShow(Sender: TObject);
begin
  PageControl.Visible:=False;
  PageControl.ActivePage := TabShMain;
  PageControl.Refresh;
  PageControl.Visible:=True;
end;

procedure TfrmFilterEn.btnAcceptClick(Sender: TObject);
var
  i, ii, iii, Val1, Val2: Integer;
  Leo: TComponent;
  MakList: String;
  ParLeft,ParRight:string;
begin
  ParLeft:='(';
  ParRight:=')';
  ii    := 0;
  for i := 0 to self.ComponentCount - 1 do
    begin
      if Components[i] is TEdit then
        begin
          if TEdit(Components[i]).Text > ' ' then
            begin
              if Assigned(TEdit(Components[i]).OnDblClick) then
                begin
                  if ii > 0 then
                    KSleo := KSleo + ' AND ';
                  KSleo   := KSleo + TEdit(Components[i]).Hint;
                  if TEdit(Components[i]).Tag = 1 then
                    KSleo := KSleo + ' >= ' +
                      QuotedStr(datetostr(strtodate(TEdit(Components[i]).Text)))
                  else
                    KSleo := KSleo + ' <= ' +
                      QuotedStr(datetostr(strtodate(TEdit(Components[i]
                      ).Text)));
                end
              else
          begin
            if ii > 0 then
              KSleo := KSleo + ' AND ';
            KSleo := KSleo + TEdit(Components[i]).Hint;
            if TEdit(Components[i]).Tag = 1 then
              if ((AnsiPos('%',TEdit(Components[i]).Text)) > 0)  then
                 KSleo := KSleo + ' Like ' + QuotedStr(TEdit(Components[i]).Text)
              else
                 KSleo := KSleo + ' >= ' + QuotedStr(TEdit(Components[i]).Text)
            else
              if ((AnsiPos('%',TEdit(Components[i]).Text)) > 0)  then
                 KSleo := KSleo + ' Like ' + QuotedStr(TEdit(Components[i]).Text)
              else
                 KSleo := KSleo + ' <= ' + QuotedStr(TEdit(Components[i]).Text);
          end;

              inc(ii);
            end
        end
      else if Components[i] is TDBLookUpComboBox then
        begin
          if (TDBLookUpComboBox(Components[i]).KeyValue > 0) then
            begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              KSleo   := KSleo + TDBLookUpComboBox(Components[i]).Hint;
              if TDBLookUpComboBox(Components[i]).Tag = 1 then
                begin
                  Val1 := SearchField('ds0' + Components[i].Name);
                  // Val1:=TDBLookUpComboBox(Components[i]).KeyValue;
                  KSleo := KSleo + ' >= ' + inttostr(Val1);
                end
              else
                begin
                  Val2 := SearchField('ds0' + Components[i].Name);
                  // Val2:=TDBLookUpComboBox(Components[i]).KeyValue;
                  KSleo := KSleo + ' <= ' + inttostr(Val2);
                end;
              inc(ii);
            end;
        end
      else if Components[i] is TCheckListBox then
        begin
//          MakList := FillInClbListBrac(TCheckListBox(Components[i]),TCheckListBox(Components[i]).Hint);
          MakList := FillInClbList(TCheckListBox(Components[i]),TCheckListBox(Components[i]).Hint);
          if MakList > ' ' then
              begin
              if ii > 0  then
                 Ksleo:= Ksleo + ' AND ';
              KSleo:= KSleo + ParLeft + MakList + ParRight ;
              inc(ii);
              end;
        end
    end;
    MessageDlg(KSLeo, mtWarning, [mbOK], 0);
end;

function TfrmFilterEn.SearchComp(Name: String): TComponent;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i].Name = Name then
      begin
        result := Self.Components[i];
        exit;
      end;
  result := Nil;
end;

function TfrmFilterEn.SearchField(Name: String): Variant;
var
  v: Variant;
  Lt: TField;
begin
  Lt     := SQLMemTable1.FieldByName(Name);
  result := Lt.Value
end;

function TfrmFilterEn.SearchFieldInt(Name: String): Integer;
var
  Lt: TField;
begin
  Lt     := SQLMemTable1.FieldByName(Name);
  result := Lt.AsInteger;
end;

procedure TfrmFilterEn.UpdateField(Name: String; NewVal: Integer);
var
  i: Integer;
  Lt: TField;
begin
  Lt := SQLMemTable1.FieldByName(Name);
  try
    Lt.Value := NewVal
  except
    MessageDlg('Error In Field Update', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmFilterEn.GeneralEditExit(Sender: TObject);
var
  i: Integer;
  OtherName: String;
  ValFrom, ValTo: Variant;
  Leo: TComponent;
begin
  if Sender is TEdit then
    With Sender as TEdit do
      begin
        OtherName := Name;
        if Tag = 1 then
          begin
            OtherName[4] := 'T';
            ValFrom      := Text;
            Leo          := SearchComp(OtherName);
            ValTo        := TEdit(Leo).Text;
          end
        else
          begin
            OtherName[4] := 'F';
            ValTo        := Text;
            Leo          := SearchComp(OtherName);
            ValFrom      := TEdit(Leo).Text;
          end
      end;

  if ((ValFrom > '') and (ValTo > '')) then
    if AnsiCompareStr(ValFrom, ValTo) > 0 then
      begin
        TEdit(Leo).Color    := clRed;
        TEdit(Sender).Color := clRed;
      end
    else
      begin
        TEdit(Leo).Color    := clWindow;
        TEdit(Sender).Color := clWindow;
      end
end;

procedure TfrmFilterEn.GeneralDBLookupComboBoxExit(Sender: TObject);
var
  i, Val1, Val2: Integer;
  OtherName: String;
  ValFrom, ValTo: Variant;
  Leo: TComponent;
begin
  if Sender is TDBLookUpComboBox then
    With Sender as TDBLookUpComboBox do
      begin
        OtherName := Name;
        if Tag = 1 then
          begin
            OtherName[4] := 'T';
            try
              Val1    := KeyValue;
              ValFrom := Val1;
            except
              ValFrom := -1;
            end;
            Leo := SearchComp(OtherName);
            try
              Val2  := TDBLookUpComboBox(Leo).KeyValue;
              ValTo := Val2;
            except
              ValTo := -1;
            end;
          end
        else
          begin
            OtherName[4] := 'F';
            try
              Val1  := KeyValue;
              ValTo := Val1;
            except
              ValTo := -1;
            end;
            Leo := SearchComp(OtherName);
            try
              Val2    := TDBLookUpComboBox(Leo).KeyValue;
              ValFrom := Val2;
            except
              ValFrom := -1;
            end;
          end
      end;

  if ((ValFrom > -1) and (ValTo > -1)) then
    if ValFrom > ValTo then
      begin
        TDBLookUpComboBox(Leo).Color    := clRed;
        TDBLookUpComboBox(Sender).Color := clRed;
      end
    else
      begin
        TDBLookUpComboBox(Leo).Color    := clWindow;
        TDBLookUpComboBox(Sender).Color := clWindow;
      end
end;

procedure TfrmFilterEn.ButtonCopyClick(Sender: TObject);
var
  ValFromi, ValToi, i: Integer;
  OtherName, ONaF, ONaT: String;
  ValFrom, ValTo: Variant;
  LeoF, LeoT: TComponent;
begin
  OtherName := TButton(Sender).Name;
  if TButton(Sender).Tag = 10 then
    begin
      ONaF    := 'EdtF' + OtherName;
      ONaT    := 'EdtT' + OtherName;
      LeoF    := SearchComp(ONaF);
      LeoT    := SearchComp(ONaT);
      ValFrom := TEdit(LeoF).Text;
      ValTo   := TEdit(LeoT).Text;
      if ((ValFrom > '') XOR (ValTo > '')) then
        begin
          if ValFrom > '' then
            TEdit(LeoT).Text := ValFrom;
          if ValTo > '' then
            TEdit(LeoF).Text := ValTo;
        end;
    end;

  if TButton(Sender).Tag = 90 then
    begin
      ONaF := 'ds0LCBF' + OtherName;
      ONaT := 'ds0LCBT' + OtherName;
      try
        ValFromi := SearchFieldInt(ONaF);
      except
        ValFromi := 0;
      end;
      try
        ValToi := SearchFieldInt(ONaT);
      except
        ValToi := 0;
      end;
      if ((ValFromi > 0) XOR (ValToi > 0)) then
        begin
          if ValFromi > 0 then
            UpdateField(ONaT, ValFromi);
          if ValToi > 0 then
            UpdateField(ONaF, ValToi);
        end;
    end;
end;

procedure TfrmFilterEn.Button2CopyClick(Sender: TObject);
var
  ValFromi, ValToi, i: Integer;
  OtherName, ONaF, ONaT: String;
  ValFrom, ValTo: Variant;
  LeoF, LeoT: TComponent;
begin
  OtherName                                            := TButton(Sender).Hint;
  TCheckListBox(Self.FindComponent(OtherName)).Visible := True;
end;

procedure TfrmFilterEn.CheckListBoxExit(Sender: TObject);
begin
  TCheckListBox(Sender).Visible := False;
end;

procedure TfrmFilterEn.ClbAllClick(Sender: TObject);
begin
  inherited;
  if (PopChLstBox.PopupComponent is TCheckListBox) then
    EnhmClb(TCheckListBox(PopChLstBox.PopupComponent), True);
end;

procedure TfrmFilterEn.ClbNoneClick(Sender: TObject);
begin
  if (PopChLstBox.PopupComponent is TCheckListBox) then
    EnhmClb(TCheckListBox(PopChLstBox.PopupComponent), False);
end;

procedure TfrmFilterEn.EditDateEnter(Sender: TObject);
var
  TmpDate: TDateTime;
begin
  TmpDate := now();
  if FormDate(Self, TmpDate, csDateTime) = mrOk then
    TEdit(Sender).Text := datetostr(TmpDate)
  else
    TEdit(Sender).Text := '';
end;

end.
