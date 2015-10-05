program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zvdatetimectrls, zmsql, laz_fpspreadsheet, poweredby, lazdbexport,
  tachartlazaruspkg, unit1, DMain, FMain, FPasswordDlg, Globals, DBase,
  FDefineQOrderB, FFilter, FFilterEn, FFilterEn2;

{$R *.res}

begin
  Application.Title:='ExamHistory';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

