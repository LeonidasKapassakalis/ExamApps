unit New folder (2)main;

{$mode objfpc}{$H+}

{$ifdef Linux}{$ifdef CPUARM}
  {$define Android}
{$endif}{$endif}

interface

uses
  Classes,
  SysUtils,
  FileUtil,
  Forms,
  Controls,
  Graphics,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  StrUtils,
  customdrawnint,
  LCLIntf,
  customdrawncontrols,
  customdrawndrawers,
  customdrawn_common,
  lazdeviceapis;

type

  { TfrmNew folder (2)Main }

  TfrmNew folder (2)Main = class(TForm)
    CDButton1: TCDButton;
    CDButton2: TCDButton;
    CDButton3: TCDButton;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure CDButton1Click(Sender: TObject);
    procedure CDButton2Click(Sender: TObject);
    procedure CDButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure MyOnListViewDialogResult(ASelectedItem: Integer);
  public
  end;

var
  frmNew folder (2)Main: TfrmNew folder (2)Main;
  tics, timerTics : integer;

implementation

{$R *.lfm}

{ TfrmNew folder (2)Main }

procedure TfrmNew folder (2)Main.FormCreate(Sender: TObject);
begin
  tics := 0;
  timerTics := 0;
end;

procedure TfrmNew folder (2)Main.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  Timer1.Enabled:=false;
end;

procedure TfrmNew folder (2)Main.CDButton1Click(Sender: TObject);
begin
  Inc(tics);
  Label1.Caption:='Counts:' + IntToStr(tics);
end;

procedure TfrmNew folder (2)Main.CDButton2Click(Sender: TObject);
begin
  {$ifdef LCLCustomDrawn}
    LCLIntf.OnListViewDialogResult := @MyOnListViewDialogResult;
    CDWidgetSet.ShowListViewDialog('',
      ['StartTimer', 'StopTimer', 'Exit'],
      ['', '', '']);
  {$endif}
end;

procedure TfrmNew folder (2)Main.CDButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmNew folder (2)Main.MyOnListViewDialogResult(ASelectedItem: Integer);
begin
  Timer1.Enabled:=ASelectedItem = 0;
end;

procedure TfrmNew folder (2)Main.Timer1Timer(Sender: TObject);
begin
  Inc(timerTics);
  Label1.Caption:='TimerTics:' + IntToStr(timerTics);
end;

end.

