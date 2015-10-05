program ExamHistory;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazdbexport, tachartlazaruspkg, runtimetypeinfocontrols, sqlite3laz,
  DefaultTranslator,
  zvdatetimectrls, unit1, DMain, FMain, FPasswordDlg, Globals, FFilterEn2,
  zmsql, poweredby, FormStat001, form3, FDefineQOrderB, FBaseForm, FFilterEn,
  GResources, DBase;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

