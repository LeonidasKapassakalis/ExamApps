library New folder (2)android;

{$mode objfpc}{$H+}

uses
  customdrawnint,
  Interfaces,
  Forms,
  customdrawn_android,
  customdrawndrawers,
  New folder (2)main;

exports
  Java_com_pascal_lclproject_LCLActivity_LCLOnTouch name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnTouch',
  Java_com_pascal_lclproject_LCLActivity_LCLDrawToBitmap name 'Java_com_pascal_New folder (2)_LCLActivity_LCLDrawToBitmap',
  Java_com_pascal_lclproject_LCLActivity_LCLOnCreate name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnCreate',
  Java_com_pascal_lclproject_LCLActivity_LCLOnMessageBoxFinished name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnMessageBoxFinished',
  Java_com_pascal_lclproject_LCLActivity_LCLOnKey name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnKey',
  Java_com_pascal_lclproject_LCLActivity_LCLOnTimer name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnTimer',
  Java_com_pascal_lclproject_LCLActivity_LCLOnConfigurationChanged name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnConfigurationChanged',
  Java_com_pascal_lclproject_LCLActivity_LCLOnSensorChanged name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnSensorChanged',
  Java_com_pascal_lclproject_LCLActivity_LCLOnMenuAction name 'Java_com_pascal_New folder (2)_LCLActivity_LCLOnMenuAction',
  JNI_OnLoad name 'JNI_OnLoad',
  JNI_OnUnload name 'JNI_OnUnload';

procedure MyActivityOnCreate;
begin
  DefaultStyle := dsAndroid;
  Application.Initialize;
  Application.CreateForm(TfrmNew folder (2)Main, frmNew folder (2)Main);
  Application.Run;
end;

begin
  CDWidgetset.ActivityClassName := 'com/pascal/New folder (2)/LCLActivity';
  CDWidgetset.ActivityOnCreate := @MyActivityOnCreate;
end.


