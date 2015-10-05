unit Form3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sqlite3DS, sqldb, db, FileUtil, Forms, Controls, Graphics,
  Dialogs, DbCtrls, DBGrids, StdCtrls, GResources, Globals;

type

  { TFrmForm3 }

  TFrmForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    LongintField1: TLongintField;
    SQLConnector1: TSQLConnector;
    SQLQuery1: TSQLQuery;
    SQLQuery1AA: TLongintField;
    SQLQuery1DatesId: TLongintField;
    SQLQuery1id: TLongintField;
    SQLQuery1SchemaId: TLongintField;
    SQLQuery2: TSQLQuery;
    SQLQuery2AA: TLongintField;
    SQLQuery2ExamSchemaid: TLongintField;
    SQLQuery2GroupExamId: TLongintField;
    SQLQuery2id: TLongintField;
    SQLQuery3: TSQLQuery;
    SQLQuery3AA: TLongintField;
    SQLQuery3ExamId: TLongintField;
    SQLQuery3GroupExamId: TLongintField;
    SQLQuery3id: TLongintField;
    SQLQuery4: TSQLQuery;
    SQLQuery4DateId: TLongintField;
    SQLQuery4ExamId: TLongintField;
    SQLQuery4Id: TLongintField;
    SQLQuery4MMId: TLongintField;
    SQLQuery4Result_N: TFloatField;
    SQLQuery4Result_T: TStringField;
    SQLQuery4Updated: TBooleanField;
    SQLQuery5: TSQLQuery;
    SQLQuery5Comments: TStringField;
    SQLQuery5GroupExam_Id: TLongintField;
    SQLQuery5id: TLongintField;
    SQLQuery5Max: TFloatField;
    SQLQuery5Min: TFloatField;
    SQLQuery5MM_Id: TLongintField;
    SQLQuery5Name: TStringField;
    SQLQuery5SName: TStringField;
    SQLScript1: TSQLScript;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

uses FMain;


{$R *.lfm}

{ TFrmForm3 }

procedure TFrmForm3.Button1Click(Sender: TObject);
begin
SQLQuery5.Active:=False;
SQLQuery1.Active:=False;
SQLQuery2.Active:=False;
SQLQuery3.Active:=False;
  SQLQuery1.Params[0].Value:=DBLookupComboBox1.KeyValue;
  SQLQuery5.Active:=True;
  SQLQuery1.Active:=True;
  SQLQuery2.Active:=True;
  SQLQuery3.Active:=True;
end;

procedure TFrmForm3.Button2Click(Sender: TObject);
begin
  SQLQuery4.Active:=True;
  SQLQuery5.Active:=True;
  SQLQuery1.Active:=True;
  SQLQuery2.Active:=True;
  SQLQuery3.Active:=True;

//  if DBLookupComboBox1.KeyValue = Nil then
//     exit;

  SQLQuery1.First;
  repeat
      SQLQuery2.Active:=True;
      SQLQuery2.First;
      repeat
        try
        SQLQuery3.Active:=True;
        SQLQuery3.First;
        repeat
          if (Not SQLQuery3.IsEmpty) then
          begin
            SQLQuery4.Insert;
            SQLQuery4Id.Value:=frmMain.CreateKey('qryDatesExamLog');
            SQLQuery4DateId.Value:=DBLookupComboBox1.KeyValue;
            SQLQuery4ExamId.Value:=SQLQuery3ExamId.Value;
            SQLQuery4MMId.Value  :=LongintField1.Value;
            SQLQuery4Updated.Value:= False;
            SQLQuery4.Post;
          end;
          SQLQuery3.Next;
        until SQLQuery3.EOF;
        except
        end;
        SQLQuery2.Next;
      until SQLQuery2.EOF;
    SQLQuery1.Next;
  until SQLQuery1.EOF;

 try
  if frmMain.SQLTransaction1.Active then
  // Only if we are within a started transaction;
  // otherwise you get "Operation cannot be performed on an inactive dataset"
  begin
         SqlQuery4.ApplyUpdates;
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

end.

