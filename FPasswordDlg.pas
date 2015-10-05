unit FPasswordDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, dialogs, Grids, DBGrids, Globals, DMain;

var
   Pass_Retry:Integer;
   Pass_RetryStr:String;

type
  TfrmPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function FormHelp(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.lfm}

procedure TfrmPasswordDlg.OKBtnClick(Sender: TObject);
var TmpStr:String;
    SerDrv:Integer;
    UserName:String;
begin
//Pass_Retry:=Pass_Retry + 1 ;
//try
//begin
//  UserName:=Edit1.Text;
////DMMain.Database.Connected:=True;
//  DMMain.ADOConnection.Connected:=True;
//  str(Pass_Retry,Pass_RetryStr);
//  DMMain.QLFPass.Active:=False;
//  DMMain.QLFPass.Parameters.ParamByName('PLogin').Value:=Edit1.Text;
//  DMMain.QLFPass.Parameters.ParamByName('PPass').Value :=Password.Text;
//  DMMain.QLFPass.Active:=True;
//  If (DMMain.QLFPass.IsEmpty) then
//     Begin
//       MessageDlg('Μη αποδεκτός Κωδικός Πρόσβασης',mterror,[mbOK],0);
//       if Pass_Retry > 3 then
//          begin
//           ModalResult:=mrCancel;
//          end
//       else
//          ModalResult:=mrCancel;
//     end
//  else
//       Begin
//        if (DMMain.QLFPASSMaint_Log.AsBoolean ) then
//            Log_Maint := True ;
//        LoginName:=Edit1.Text;
//        Globals.LoginName:=Edit1.Text;
//        UserName :=Edit1.Text + ' ' + DMMain.QLFPASSName.AsString;
//        LoginGroup:=DMMain.QLFPASSGroup.AsInteger;
//        Globals.LoginGroup:=DMMain.QLFPASSGroup.AsInteger;
////        LoginSF   :=DMMain.QLFPASSFPass_Stath.AsInteger;
//        LoginID   :=DMMain.QLFPASSId.AsInteger;
//        Globals.LoginID   :=DMMain.QLFPASSId.AsInteger;
//        if (DMMain.QLFPassValid_Till.Value < (Now)) then
//         begin
//          MessageDlg('Υπέρβαση Χρόνου Συνδρομής',mterror,[mbOK],0);
//          ModalResult:=mrCancel;
//         end
//        else
//         SerDrv:=GetDriveSerial(GetWindowsDrive);
//         if ( (DMMain.QLFPassCheck_Serial.AsBoolean = True ) OR
//              (DMMain.QLFPassSerial1.AsInteger = SerDrv ) OR
//              (DMMain.QLFPassSerial2.AsInteger = SerDrv ) OR
//              (DMMain.QLFPassSerial3.AsInteger = SerDrv ) OR
//              (DMMain.QLFPassSerial1.AsInteger = 0      ) OR
//              (DMMain.QLFPassSerial2.AsInteger = 0      ) OR
//              (DMMain.QLFPassSerial3.AsInteger = 0      )) then
//         begin
//         if ( (DMMain.QLFPassCheck_Serial.AsBoolean  = True ) OR
//              (DMMain.QLFPassSerial1.AsInteger = SerDrv ) OR
//              (DMMain.QLFPassSerial2.AsInteger = SerDrv ) OR
//              (DMMain.QLFPassSerial3.AsInteger = SerDrv )) then
//           else
//            begin
//            if (DMMain.QLFPassSerial1.AsInteger = 0 )  then
//               Begin
//                 DMMain.QUPDSER1.Parameters.ParamByName('PLogin').Value :=Edit1.Text;
//                 DMMain.QUPDSER1.Parameters.ParamByName('PPass').Value  :=Password.Text;
//                 DMMain.QUPDSER1.Parameters.ParamByName('PSerial').Value:=GetDriveSerial(GetWindowsDrive);
////                 DMMain.QUPDSER1.ExecSQL;
//               End
//            else
//            if (DMMain.QLFPassSerial2.AsInteger = 0 )  then
//               Begin
//                 DMMain.QUPDSER2.Parameters.ParamByName('PLogin').Value :=Edit1.Text;
//                 DMMain.QUPDSER2.Parameters.ParamByName('PPass').Value  :=Password.Text;
//                 DMMain.QUPDSER2.Parameters.ParamByName('PSerial').Value:=GetDriveSerial(GetWindowsDrive);
////                 DMMain.QUPDSER2.ExecSQL;
//               End
//            else
//            if (DMMain.QLFPassSerial3.AsInteger = 0 )  then
//               Begin
//                 DMMain.QUPDSER3.Parameters.ParamByName('PLogin').Value :=Edit1.Text;
//                 DMMain.QUPDSER3.Parameters.ParamByName('PPass').Value  :=Password.Text;
//                 DMMain.QUPDSER3.Parameters.ParamByName('PSerial').Value:=GetDriveSerial(GetWindowsDrive);
////                 DMMain.QUPDSER3.ExecSQL;
//               End
//            end;
//           ModalResult:=mrOk;
//         end
//         else
//           MessageDlg('Πρόβλημα με Εγκατάσταση Προγράμματος',mterror,[mbOK],0);
//       end
//end
//except
//    MessageDlg('Δεν έχετε δικαίωμα εισόδου στη Βασή',mterror,[mbOK],0);
//    ModalResult:=mrOk;
//end;
end;

procedure TfrmPasswordDlg.CancelBtnClick(Sender: TObject);
begin
      ModalResult:=mrCancel;
end;

procedure TfrmPasswordDlg.FormCreate(Sender: TObject);
begin
//
end;

function TfrmPasswordDlg.FormHelp(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
//
end;

end.

