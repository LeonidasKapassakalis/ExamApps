unit FMembers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FBase, Menus, Buttons, Grids, DBGrids, ComCtrls, ExtPage, StdCtrls, RBaseADO,
  DBCtrls, ExtCtrls, db, Printers, RBase, FMembersSel, FBaseSel,
  DBase, FReports, Mask, Gradpan, ActnList, ToolWin, ImgList, FCustomerPar,
  RMembers1, RMembers2, RMembers3, RMembers4, FEpilPPrn, DMembers , FFindPar,
  FDateFile, SAPFunctionsOCX_TLB, Vcl.OleCtrls, AcroPDFLib_TLB,
// FVNC,
  FPolhtes, Variants, FCustomerLoc, FFindLocation, JPeg, ExtDlgs, ADODB,
  OverbyteIcsWndControl, OverbyteIcsPing, ShellApi;



type
  TfrmMembers = class(TfrmBase)
    Label6: TLabel;
    N25: TMenuItem;
    PTown: TAction;
    cmdProshmInsert: TAction;
    cmdProshmDelete: TAction;
    cmdProshmPost: TAction;
    cmdProshmCancel: TAction;
    ToolButton18: TToolButton;
    ToolButton20: TToolButton;
    cmdProshmAfter: TAction;
    cmdProshmBefore: TAction;
    N1: TMenuItem;
    cmdProductInsert1: TMenuItem;
    cmdProductUpdate1: TMenuItem;
    cmdProductDelete1: TMenuItem;
    N3: TMenuItem;
    cmdProductCancel1: TMenuItem;
    cmdProductPost1: TMenuItem;
    PPolhths: TAction;
    cmdDetailProshm: TAction;
    actEquipmentDetFrom: TAction;
    ToolButton24: TToolButton;
    actEquipmentFrom: TAction;
    actEquipmentTo: TAction;
    actMoveEquipment: TAction;
    actDispLocationFrom: TAction;
    actDispLocationTo: TAction;
    actMoveDetDetail: TAction;
    actMoveDetEdit: TAction;
    actMoveDet: TAction;
    actMoveDetPost: TAction;
    actMoveDetCancel: TAction;
    actMoveDetA: TAction;
    actEquipmentDetTo: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    SAPFunctions1: TSAPFunctions;
    actCallSap: TAction;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    ToolButton19: TToolButton;
    ToolButton21: TToolButton;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dbtSapId: TDBText;
    dbtLocSapId: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    FindSap: TAction;
    FindShip: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    FindDate: TAction;
    SpeedButton3: TSpeedButton;
    actInActive: TAction;
    ToolButton22: TToolButton;
    N16: TMenuItem;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBRichEdit1: TDBRichEdit;
    Label4: TLabel;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Pdf: TTabSheet;
    DBGrid2: TDBGrid;
    actPdfInsert: TAction;
    actPdfDelete: TAction;
    actPdfBefore: TAction;
    actPdfPost: TAction;
    actPdfCancel: TAction;
    actPdfAfter: TAction;
    ToolButton23: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    TabSheet6: TTabSheet;
    Label15: TLabel;
    OpenDialog1: TOpenDialog;
    actPdfView: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    DBEdit10: TDBEdit;
    AcroPDF2: TAcroPDF;
    TabViewPdf: TTabSheet;
    Panel3: TPanel;
    DBEdit11: TDBEdit;
    Panel4: TPanel;
    AcroPDF1: TAcroPDF;
    Pdf1: TMenuItem;
    Pdf2: TMenuItem;
    InsertPdf1: TMenuItem;
    actPdfDelete1: TMenuItem;
    actPdfView1: TMenuItem;
    cmdPdfPost1: TMenuItem;
    actPdfCancel1: TMenuItem;
    actPdf: TAction;
    ToolButton29: TToolButton;
    actPdf1: TMenuItem;
    MakData: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet7: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    PnlTopMak: TPanel;
    PnlCntrMak: TPanel;
    PnlBtmMak: TPanel;
    DbGridPhone: TDBGrid;
    DbGridIP: TDBGrid;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    actPhoneAdd: TAction;
    actPhoneEdit: TAction;
    actPhoneDelete: TAction;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    actPhonePost: TAction;
    actPhoneCancel: TAction;
    actPhoneParam: TAction;
    actIPAdd: TAction;
    actIPEdit: TAction;
    actIPDelete: TAction;
    actIPPost: TAction;
    actIPCancel: TAction;
    actIPParam: TAction;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    actPing: TAction;
    actVNC: TAction;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    Ping1: TPing;
    actCmdExec: TAction;
    ToolButton42: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure dgDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ShowGridFields(Grid:TDbGrid;Field:TStringList;OnOff:Boolean = False);
    procedure PrintExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PDoyExecute(Sender: TObject);
    procedure PBibliaExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure cmdAfterErgaExecute(Sender: TObject);
    procedure cmdErgaBeforeExecute(Sender: TObject);
    procedure cmdProshmAfterExecute(Sender: TObject);
    procedure cmdProshmBeforeExecute(Sender: TObject);
    procedure DetailExecute(Sender: TObject);
    procedure PBankExecute(Sender: TObject);
    procedure cmdEconPostExecute(Sender: TObject);
    procedure cmdEconCancelExecute(Sender: TObject);
    procedure cmdEconInsertExecute(Sender: TObject);
    procedure cmdEconUpdateExecute(Sender: TObject);
    procedure cmdEconDeleteExecute(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit27Enter(Sender: TObject);
    procedure DBEdit28Enter(Sender: TObject);
    procedure DBCheckBox3Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDetailClick(Sender: TObject);
    procedure PPolhthsExecute(Sender: TObject);
    procedure cmdProshmInsertExecute(Sender: TObject);
    procedure cmdProshmPostExecute(Sender: TObject);
    procedure cmdProshmCancelExecute(Sender: TObject);
    procedure cmdProshmUpdateExecute(Sender: TObject);
    procedure cmdProshmDeleteExecute(Sender: TObject);
    procedure cmdDetailProshmExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure dbeDDateDblClick(Sender: TObject);
    procedure actMoveDetExecute(Sender: TObject);
    procedure actMoveDetAExecute(Sender: TObject);
    procedure actMoveDetCancelExecute(Sender: TObject);
    procedure actMoveDetEditExecute(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
    procedure DBEditDateTimeDblClick(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure FindSapExecute(Sender: TObject);
    procedure FindShipExecute(Sender: TObject);
    procedure FindDateExecute(Sender: TObject);
    procedure actInActiveExecute(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit8DblClick(Sender: TObject);
    procedure actPdfInsertExecute(Sender: TObject);
    procedure actPdfDeleteExecute(Sender: TObject);
    procedure actPdfBeforeExecute(Sender: TObject);
    procedure actPdfPostExecute(Sender: TObject);
    procedure actPdfCancelExecute(Sender: TObject);
    procedure actPdfAfterExecute(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure actPdfViewExecute(Sender: TObject);
    procedure actPdfExecute(Sender: TObject);
    procedure actPhoneAddExecute(Sender: TObject);
    procedure actPhoneEditExecute(Sender: TObject);
    procedure actPhoneDeleteExecute(Sender: TObject);
    procedure actPhoneParamExecute(Sender: TObject);
    procedure actPhoneCancelExecute(Sender: TObject);
    procedure actIPAddExecute(Sender: TObject);
    procedure actIPEditExecute(Sender: TObject);
    procedure actIPDeleteExecute(Sender: TObject);
    procedure actIPPostExecute(Sender: TObject);
    procedure actIPCancelExecute(Sender: TObject);
    procedure actIPParamExecute(Sender: TObject);
    procedure actPhonePostExecute(Sender: TObject);
    procedure actPingExecute(Sender: TObject);
    procedure actVNCExecute(Sender: TObject);
    procedure Ping1EchoReply(Sender, Icmp: TObject; Status: Integer);
    procedure actCmdExecExecute(Sender: TObject);
  private
    FImport: Boolean;
    FMovement: Boolean;
    FAlreadyMode: Boolean;
    MovedSl:TStringList;
    function GetDM : TDMMembers;
    procedure SetImport(const Value: Boolean);
    procedure SetMovement(const Value: Boolean);
    procedure EnableBuyPages;
    procedure EnableMovePages;
    procedure EnableMainPage;
    procedure SetAlreadyMode(const Value: Boolean);
    procedure ExecNewProcess(ProgramName: String; Wait: Boolean);
    procedure LoadPdfImage(DBImage: TBlobField);
    procedure ShowPdfImage(DBImage: TBlobField);
  protected
    function CreateDataModule : TDMBase; override;
    function CreateReportForm : TfrmReports; override;
  	function DisplaySpecificID(MainId:Integer):Boolean; override;
  public
    property DM : TDMMembers read GetDM;
    property Import : Boolean  read FImport write SetImport;
    property Movement : Boolean  read FMovement write SetMovement;
    property AlreadyMode : Boolean  read FAlreadyMode write SetAlreadyMode;
  end;

implementation

uses DSubParams, DMain, Globals, FMain, FSubParams, FBForm;

{$R *.DFM}

function TfrmMembers.CreateDataModule : TDMBase;
Begin
  Result := TDMMembers.Create( Self );
end;

function TfrmMembers.CreateReportForm : TfrmReports;
var frm:TfrmMembersSel;
    frm1:TForm;
    rpt:TrptBaseAdo;
    Sleo,Stemp:String;
    i,ii:Integer;
begin
  if DMMain.FindSecurity('TfrmMembersSel',LoginGroup,FormID) then
   begin
        try
   	 frm:=TfrmMembersSel.CreateSecurity ( Self , FormId );
         frm.showModal;
         if frm.ModalResult = mrOK then
           begin
             Sleo:=TfrmMembersSel(frm).Sleo;
              case frm.RadioGroup1.ItemIndex of
                 0:rpt:=TrptMembers1.Create(self);
                 1:rpt:=TrptMembers2.Create(self);
                 2:rpt:=TrptMembers3.Create(self);
                 3:rpt:=TrptMembers4.Create(self);
              end;
           rpt.ADOQuery1.Active:=False;
            if Sleo > ' ' then
              rpt.ADOQuery1.SQL.Add('Where Proshm.Id > 0'+ SLeo);
            if frm.RadioGroup1.ItemIndex = 2 then
               rpt.ADOQuery1.SQL.Add('Order By Proshm.Apofash');
            if frm.RadioGroup1.ItemIndex = 3 then
               rpt.ADOQuery1.SQL.Add('Order By SortChar');

            try
              rpt.ADOQuery1.Active:=True;
              rpt.Preview;
            finally
              rpt.Free;
            end
           end
        finally
         frm.free;
         DMMain.UpdSecurity('TfrmMembersSel');
        end;
   end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;


procedure TfrmMembers.FormCreate(Sender: TObject);
var x:Integer;
    Filter,Index,DataSource:String;
begin
  inherited;

MovedSl:=TStringList.Create;
MovedSl.Sorted:=True;
MovedSL.Duplicates:=dupError;

dgData.DataSource :=TDMMembers(DM).dsQCustLoc;
dbtMain.DataSource:=TDMMembers(DM).dsQCustLoc;

//frmMain.ReadGrid(PFormName,dbGrid1,Filter,Index,DataSource);

end;

function TfrmMembers.GetDM : TDMMembers;
begin
	Result := TDMMembers(FDM);
end;

procedure TfrmMembers.dgDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor:TColor;
begin
  inherited;
  HoldColor:=dgData.Canvas.Brush.Color;
  if dgData.DataSource.DataSet.FieldByName('Deleted').asBoolean then
     begin
       dgData.Canvas.Brush.Color:=clRed;
       dgData.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       dgData.Canvas.Brush.Color:=HoldColor;
     end
  else
  if Not dgData.DataSource.DataSet.FieldByName('Active').asBoolean then
     begin
       dgData.Canvas.Brush.Color:=clGreen;
       dgData.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       dgData.Canvas.Brush.Color:=HoldColor;
     end
  else
       dgData.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmMembers.ShowGridFields(Grid:TDbGrid;Field:TStringList;OnOff:Boolean = False);
var i:integer;
 function FindInStrings(Strings :TStringList ; Value :String) :Boolean;
 var i:integer;
 begin
  result:=False;
  for i :=0 to Strings.Count -1 do
     if Value = Strings[i] then
        result:=True;
 end;
begin
  inherited;
for i:= 0 to Grid.Columns.Count -1 do
 begin
//  if Grid.Columns[i].FieldName=Field. then
  if FindInStrings(Field,Grid.Columns[i].FieldName) then
   begin
     Grid.Columns[i].ReadOnly:=OnOff;
     if Not OnOff then
      begin
        Grid.Columns[i].Color   :=clYellow;
        Grid.Columns[i].ReadOnly:=False;
      end
     else
      begin
        Grid.Columns[i].Color   :=clWindow;
        Grid.Columns[i].ReadOnly:=True;
      end;
   end;
 end;
end;

procedure TfrmMembers.PrintExecute(Sender: TObject);
begin
//  inherited;
CreateReportForm();
end;

procedure TfrmMembers.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TfrmMembers.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

procedure TfrmMembers.PDoyExecute(Sender: TObject);
var frm:TForm;
begin
{if DMMain.FindSecurity('TfrmDoy',LoginGroup,FormID) then
  begin
  	frm := TfrmDoy.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmDoy');
                DM.DMSubParams.tDoy.Refresh;
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)}
end;

procedure TfrmMembers.Ping1EchoReply(Sender, Icmp: TObject; Status: Integer);
var txt:String;
begin
  inherited;
 if Status <> 0 then
        { Success }
        begin
          txt:='Received ' + IntToStr(Ping1.Reply.DataSize)+' bytes from ' + Ping1.HostIP + ' in ' + IntToStr(Ping1.Reply.RTT) + ' msecs';
          MessageDlg(txt, mtInformation, [mbOK], 0);
        end
    else
        { Failure }
        begin
          txt:='Cannot ping host (' + Ping1.HostIP + ') : ' + Ping1.ErrorString + '. Status = ' + IntToStr(Ping1.Reply.Status);
          MessageDlg(txt, mtError, [mbOK], 0);
        end;
end;

procedure TfrmMembers.PBibliaExecute(Sender: TObject);
var frm:TForm;
begin
{if DMMain.FindSecurity('TfrmBiblia',LoginGroup,FormID) then
  begin
  	frm := TfrmBiblia.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmBiblia');
                DM.DMSubParams.tBiblia.Refresh;
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)}
end;

procedure TfrmMembers.PageControl1Change(Sender: TObject);
var AllowChange:Boolean;
begin
  inherited;
if Created then
 begin
  case self.PageControl1.ActivePageIndex of
     0:begin
        if DM.QUpdCustLoc.State in [dsEdit,dsInsert] then
           SetState('After')
        else
           SetState('Before');
       end;
     1:begin
         SetState('ProshmGB');
{         DM.QRelFesCust.Active:=False;
         DM.QRelFesCust.Parameters.ParamByName('Id').Value := DM.QUpdCustLocId.AsInteger;
         DM.QRelFesCust.Active:=True;}
       end;
     2:begin
         SetState('ProshmGA');
       end;
     3:begin
        SetState('PdfGB');
       end;
     4:begin
         SetState('PdfGA');
       end;
     6:begin
        if DM.MakPratPhone.State in [dsEdit,dsInsert] then
           SetState('MakPhoneA')
        else if DM.MakPratIP.State in [dsEdit,dsInsert] then
           SetState('MakIPA')
        else
         SetState('MakIPPhone');
       end;
  end;



{ else
   begin
      if DM.QUpdMovement.State in [dsEdit,dsInsert] then
         SetState('After')
      else
         SetState('Before');
   end;}
 end;

{  if (Not((Sender as TPageControl).ActivePage = TabSheet5)) then
      if DM.QCaseUpd.State in [dsEdit,dsInsert] then
        begin
         MessageDlg('Παρακαλώ ολοκληρώστε την Καταχώρηση σας.', mtInformation,[mbOk], 0);
        end
      else
          AllowChange := True;

  if (((Sender as TPageControl).ActivePage = TabSheet4)) then
      if DM.DMSubParams.tCaseTypeType.AsInteger = 1 then
         begin
            (Sender as TPageControl).ActivePage := TabSheet1;
            MessageDlg(NotaPhst, mtInformation,[mbOk], 0);
         end
    end;}
end;

procedure TfrmMembers.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
{if (DM.QUpdCustLoc.State in [dsInsert,dsEdit]) then
     begin
        MessageDlg('Παρακαλώ ολοκληρώστε την Καταχώρηση σας.(Aπό Προορισμό)', mtInformation,[mbOk], 0);
        AllowChange:=False;
        exit;
     end;}
end;

procedure TfrmMembers.cmdAfterErgaExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.cmdErgaBeforeExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.cmdProshmAfterExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.cmdProshmBeforeExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.DetailExecute(Sender: TObject);
begin
  inherited;
EnableMainPage;
PageControl1.ActivePage:=TabSheet1;
//08032006
{DM.QUpdEquipment.Active:=False;
DM.QUpdEquipment.Parameters.ParamByName('id').Value:=DM.QMovementId.AsInteger;
DM.QUpdEquipment.Active:=True;}
end;

procedure TfrmMembers.PBankExecute(Sender: TObject);
var frm:TForm;
begin
{if DMMain.FindSecurity('TfrmTrapeza',LoginGroup,FormID) then
  begin
  	frm := TfrmTrapeza.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmTrapeza');
                DM.DMSubParams.tTrapeza.Refresh;
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)}
end;

procedure TfrmMembers.cmdEconPostExecute(Sender: TObject);
begin
  inherited;
//DM.Proshm.Post;
//DM.Proshm.Requery;
PageControl1Change(Self);
end;

procedure TfrmMembers.cmdEconCancelExecute(Sender: TObject);
begin
  inherited;
//DM.Proshm.Cancel;
PageControl1Change(Self);
end;

procedure TfrmMembers.cmdEconInsertExecute(Sender: TObject);
begin
  inherited;
{DM.Proshm.Insert;
DM.Proshm.Edit;
DM.ProshmInsDT.AsDateTime:=now();
DM.ProshmInsUsr.AsInteger:=DMain.LoginId;
//DM.ProshmDDate.AsDateTime:=date();
DM.ProshmPelathsId.AsInteger:=DM.QMovementMovementid.AsInteger;}
end;

procedure TfrmMembers.cmdEconUpdateExecute(Sender: TObject);
begin
  inherited;
{if DM.Proshm.IsEmpty then
   MessageDlg('Δεν Υπάρχει εγγραφή', mtError, [mbOK], 0)
else
  begin
    DM.Proshm.Edit;
    DM.ProshmUpdDT.AsDateTime:=now();
    DM.ProshmUpdUsr.AsInteger:=DMain.LoginId;
  end;}
end;

procedure TfrmMembers.cmdEconDeleteExecute(Sender: TObject);
begin
  inherited;
{if DM.Proshm.IsEmpty then
   MessageDlg('Δεν Υπάρχει εγγραφή', mtError, [mbOK], 0)
else
  begin
    if DMMain.AskDelete then
     begin
       DM.Proshm.Delete;
       DM.Proshm.Requery;
     end;
  end;}
end;

procedure TfrmMembers.DBEdit24Exit(Sender: TObject);
var DateEgg:TDateTime;
    m,d,y:Word;
begin
  inherited;
{DateEgg:=DM.ProshmDDate.AsDateTime;
DecodeDate(DateEgg,y,m,d);
DM.ProshmPeriod.AsInteger:=m;
DM.ProshmYYear.AsInteger :=y;}
end;

procedure TfrmMembers.DBEdit27Enter(Sender: TObject);
begin
  inherited;
{if Not DM.ProshmCreditDebit.AsBoolean then
   begin
     ShowMessage('Xρέωση');
     DBEdit28.SetFocus;
   end}
end;

procedure TfrmMembers.DBEdit28Enter(Sender: TObject);
begin
  inherited;
{if DM.ProshmCreditDebit.AsBoolean then
   begin
     ShowMessage('Πίστωση');
     DBEdit27.SetFocus;
   end}
end;

procedure TfrmMembers.DBCheckBox3Exit(Sender: TObject);
begin
  inherited;
{if DM.ProshmCreditDebit.AsBoolean then
   DM.ProshmAmountD.AsInteger := 0
else
   DM.ProshmAmountC.AsInteger := 0;}
end;

procedure TfrmMembers.FormDestroy(Sender: TObject);
begin
  inherited;
//08032006  
//frmMain.WriteGrid(PFormName,dbGrid1);
end;

procedure TfrmMembers.btnDetailClick(Sender: TObject);
begin
  inherited;
PageControl1.ActivePage:=TabSheet1;
end;

procedure TfrmMembers.PPolhthsExecute(Sender: TObject);
var frm:TForm;
begin
if DMMain.FindSecurity('TfrmPolhtes',LoginGroup,FormID) then
  begin
  	frm := TfrmPolhtes.CreateSecurity( Self,FormID);
	try
		frm.ShowModal;
	finally
		frm.Free;
                DMMain.UpdSecurity('TfrmPolhtes');
//                DM.DMSubParams.tPolhths.Refresh;
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMembers.cmdProshmInsertExecute(Sender: TObject);
begin
  inherited;
  DM.QRelFesCust.Insert;
  DM.QRelFesCust.Edit;
//DM.QUpdEquipmentInsDT.AsDateTime:=now();
//DM.QUpdEquipmentInsUsr.AsInteger:=DMain.LoginId;

{if DM.QUpdCustLoc.State in [dsBrowse] then
   try
     DM.QRelFesCust.UpdateBatch(arCurrent);
   except
     DM.QRelFesCust.Delete;
     MessageDlg('Error Posting Customer', mtError, [mbOK], 0);
   end;}
//actEquipmentDetFromExecute(Self);
end;

procedure TfrmMembers.cmdProshmPostExecute(Sender: TObject);
begin
  inherited;
if DM.QRelFesCust.State in [dsInsert] then
  begin
     DM.QRelFesCustInsDT.AsDateTime  := now();
     DM.QRelFesCustInsUsr.AsInteger  := LoginId;
  end
else
  begin
     DM.QRelFesCustUpdDT.AsDateTime  := now();
     DM.QRelFesCustUpdUsr.AsInteger  := LoginId;
  end;
DM.QRelFesCustPratId.AsInteger:=DM.QUpdCustLocId.AsInteger;
DM.QRelFesCust.Post;
{ TODO : Check Batch Update }
//DM.QMovementDet.Requery;
//DM.QUpdEquipment.Requery;
//08032006
PageControl1Change(Self);
end;

procedure TfrmMembers.cmdProshmCancelExecute(Sender: TObject);
begin
  inherited;
DM.QRelFesCust.Cancel;
PageControl1Change(Self);
end;

procedure TfrmMembers.cmdProshmUpdateExecute(Sender: TObject);
begin
  inherited;
  if DM.QUpdCustLoc.IsEmpty then
   MessageDlg('Δεν Υπάρχει εγγραφή', mtError, [mbOK], 0)
else
  begin
    DM.QUpdCustLoc.Edit;
    DM.QUpdCustLocUpdDT.AsDateTime:=now();
    DM.QUpdCustLocUpdUsr.AsInteger:=DMain.LoginId;
//    actEquipmentDetFromExecute(self);
  end;
end;

procedure TfrmMembers.cmdProshmDeleteExecute(Sender: TObject);
var Leo:Variant;
begin
  inherited;
if DM.QRelFesCust.IsEmpty then
   MessageDlg('Δεν Υπάρχει εγγραφή', mtError, [mbOK], 0)
else
  begin
    if DMMain.AskDelete then
     begin
       DM.QRelFesCust.Delete;
     end;
  end;
end;

procedure TfrmMembers.cmdDetailProshmExecute(Sender: TObject);
begin
  inherited;
//  actEquipmentDetFromExecute(self);
end;

procedure TfrmMembers.DBEditDateTimeDblClick(Sender: TObject);
var TempDate:TDateTime;
begin
  inherited;
if TDBEdit(Sender).DataSource.DataSet.State in [dsEdit,dsInsert] then
  begin
//   if (TDBEdit(Sender).Field  = TDMMembers(DM).QUpdProshmDateStart) then
      begin
         TempDate:=TDBEdit(Sender).Field.AsDateTime;
         if FormDate(self,TempDate,csDate) = mrOK then
            TDBEdit(Sender).Field.AsDateTime:=TempDate;
      end;
  end;
end;

procedure TfrmMembers.DBEdit7Exit(Sender: TObject);
begin
  inherited;
{if DM.QUpdProshm.Active = True then
  if DM.QUpdProshm.State in [dsEdit,dsInsert] then
   DM.QUpdProshmValueDrx.AsCurrency := Round(dm.QUpdProshmValueEur.AsCurrency * 340.75);}
end;

procedure TfrmMembers.SetImport(const Value: Boolean);
begin
  FImport := Value;
end;

procedure TfrmMembers.SetMovement(const Value: Boolean);
begin
  FMovement := Value;
end;

procedure TfrmMembers.DBGrid6DblClick(Sender: TObject);
begin
  inherited;
//actEquipmentDetFromExecute(Self);
end;

procedure TfrmMembers.DBGrid5DblClick(Sender: TObject);
begin
  inherited;
//actEquipmentDetFromExecute(Self);
end;

procedure TfrmMembers.dbeDDateDblClick(Sender: TObject);
var TempDate:TDateTime;
begin
  inherited;
{if TDBEdit(Sender).DataSource.DataSet.State in [dsEdit,dsInsert] then
  begin
   if (TDBEdit(Sender).Field  = TDMMembers(DM).QUpdCustLocDateIssued) then
      begin
         TempDate:=TDBEdit(Sender).Field.AsDateTime;
         if FormDate(self,TempDate,csDate) = mrOK then
            TDBEdit(Sender).Field.AsDateTime:=TempDate;
      end;
  end;}
end;

procedure TfrmMembers.actMoveDetExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.actIPAddExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratIP.Insert;
  DM.MakPratIPMakId.AsInteger := DM.QCustLocId.AsInteger;
end;

procedure TfrmMembers.actIPCancelExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratIP.Cancel;
end;

procedure TfrmMembers.actIPDeleteExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.actIPEditExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratIP.Edit;
end;

procedure TfrmMembers.actIPParamExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.actIPPostExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratIP.Post;
end;

procedure TfrmMembers.actMoveDetAExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.actMoveDetCancelExecute(Sender: TObject);
begin
  inherited;
DM.QUpdCustLoc.Cancel
end;

procedure TfrmMembers.actMoveDetEditExecute(Sender: TObject);
begin
  inherited;
DM.QUpdCustLoc.Edit;
end;

procedure TfrmMembers.EnableBuyPages;
begin
   TabSheet1.TabVisible:=True;
   TabSheet2.TabVisible:=True;
end;

procedure TfrmMembers.EnableMovePages;
begin
   TabSheet1.TabVisible:=True;
   TabSheet2.TabVisible:=True;
end;

procedure TfrmMembers.EnableMainPage;
begin
   TabSheet1.TabVisible:=True;
   TabSheet2.TabVisible:=True;
end;

procedure TfrmMembers.InsertExecute(Sender: TObject);
begin
  EnableMainPage;
  SetAlreadyMode(False);
  DM.QUpdCustLoc.Active:=False;
  DM.QUpdCustLoc.Active:=True;
  TabSheet2.TabVisible :=False;
  inherited;
end;

procedure TfrmMembers.UpdateExecute(Sender: TObject);
begin
  inherited;
EnableMainPage;
end;

procedure TfrmMembers.SetAlreadyMode(const Value: Boolean);
begin
  FAlreadyMode := Value;
end;

procedure TfrmMembers.CancelExecute(Sender: TObject);
begin
  inherited;
TabSheet2.TabVisible :=True;
end;

function TfrmMembers.DisplaySpecificID(MainId: Integer): Boolean;
begin
  if DM.QCustLoc.Locate('id',MainId,[]) then
     DetailExecute(Self)
  else
     MessageDlg('Δεν Βρέθηκε η Εγγραφή.', mtError, [mbOK], 0);
end;

procedure TfrmMembers.DBEdit5DblClick(Sender: TObject);
var frm:TfrmCustomerLoc;
begin
  DMMain.FindSecurity('TfrmCustomerLoc',LoginGroup,FormId);
  frm := TfrmCustomerLoc.CreateSecurityModal(self,FormId);
  frm.ShowModal;
  if frm.ModalResult = MrOk then
  begin
   DM.QRelFesCustLocSapId.AsInteger:=TDMSubParams(frm.DM).CustomerLocID.AsInteger;
   DM.QRelFesCustSapId.AsString    :=TDMSubParams(frm.DM).CustomerLocSAPID.AsString;
   frm.Free;
  end
  else
  begin
    DM.QRelFesCust.Cancel;
  end;

DMMain.UpdSecurity('TfrmCustomerLoc');

end;

procedure TfrmMembers.DBEdit6DblClick(Sender: TObject);
var frm:TfrmFindPar;
    FormId:Integer;
begin

  frm := TfrmFindPar.Create(self);
  frm.ASPViewParad.Parameters.ParamByName('@LocId').Value := dbtSapId.Caption;
  frm.ASPViewParad.Active := True;
  if frm.ASPViewParad.IsEmpty then
     begin
       MessageDlg('Δεν υπάρχουν παραδώσεις για τον πελάτη.', mtInformation, [mbOK], 0);
       frm.Free;
       DM.QRelFesCustShipId.AsInteger:=0;
     end
  else
     begin
       frm.ShowModal;
       if frm.ModalResult = MrOk then
           begin
            DM.QRelFesCustLocShipId.AsInteger:=frm.ASPViewParadParIdId.AsInteger;
            DM.QRelFesCustShipId.AsString    :=frm.ASPViewParadParId.AsString;
       //   DM.QRelFesCustSapId.AsInteger:=TDMSubParams(frm.DM).CustomerLocId.AsInteger;
            frm.Free;
          end
       else
          begin
            DM.QRelFesCustShipId.AsInteger:=0;
//            DM.QRelFesCust.Cancel;
          end;
     end;
end;

procedure TfrmMembers.FindSapExecute(Sender: TObject);
var frm:TfrmCustomerLoc;
begin
  DMMain.FindSecurity('TfrmCustomerLoc',LoginGroup,FormId);
  frm := TfrmCustomerLoc.CreateSecurityModal(self,FormId);
  frm.ShowModal;
  if frm.ModalResult = MrOk then
    begin
     DM.QRelFesCustLocSapId.AsInteger:=TDMSubParams(frm.DM).CustomerLocID.AsInteger;
     DM.QRelFesCustSapId.AsString    :=TDMSubParams(frm.DM).CustomerLocSAPID.AsString;
     frm.Free;
    end
  else
    begin
     DM.QRelFesCust.Cancel;
    end;
  DMMain.UpdSecurity('TfrmCustomerLoc');
end;

procedure TfrmMembers.FindShipExecute(Sender: TObject);
var frm:TfrmFindPar;
    FormId:Integer;
begin
  frm := TfrmFindPar.Create(self);
  frm.ASPViewParad.Parameters.ParamByName('@LocId').Value := dbtLocSapId.Caption;
  frm.ASPViewParad.Active := True;
  if frm.ASPViewParad.IsEmpty then
     begin
       MessageDlg('Δεν υπάρχουν παραδώσεις για τον πελάτη.', mtInformation, [mbOK], 0);
       frm.Free;
       DM.QRelFesCustShipId.AsInteger:=0;
       DM.QRelFesCustLocShipId.AsInteger:=0;       
     end
  else
     begin
       frm.ShowModal;
       if frm.ModalResult = MrOk then
           begin
            DM.QRelFesCustLocShipId.AsInteger:=frm.ASPViewParadParIdId.AsInteger;
            DM.QRelFesCustShipId.AsString    :=frm.ASPViewParadParId.AsString;
            frm.Free;
          end
       else
          begin
            DM.QRelFesCustShipId.AsInteger:=0;
            DM.QRelFesCustLocShipId.AsInteger:=0;
          end;
     end;
end;

procedure TfrmMembers.FindDateExecute(Sender: TObject);
var frm:TfrmDateFile;
begin
if DMMain.FindSecurity('TfrmDateFile',LoginGroup,FormID) then
  begin
  	frm := TfrmDateFile.CreateSecurity( Self,FormID);
	try
 	  frm.ShowModal;
	finally
    DM.DateFile.Active:= False;
    DM.DateFile.Active:= True;
	  frm.Free;
    DMMain.UpdSecurity('TfrmDateFile');
	end;
  end
else
  MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0)
end;

procedure TfrmMembers.actPhoneAddExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratPhone.Insert;
  DM.MakPratPhoneMakId.AsInteger := DM.QCustLocId.AsInteger;


end;

procedure TfrmMembers.actPhoneCancelExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratPhone.Cancel;
end;

procedure TfrmMembers.actPhoneDeleteExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.actPhoneEditExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratPhone.Edit;
end;

procedure TfrmMembers.actPhoneParamExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.actPhonePostExecute(Sender: TObject);
begin
  inherited;
  DM.MakPratPhone.Post;
end;

procedure TfrmMembers.actPingExecute(Sender: TObject);
begin
  inherited;
  Ping1.Address := DM.MakPratIPLIP.AsString;
  Ping1.Ping();
end;

procedure TfrmMembers.actVNCExecute(Sender: TObject);
//var frmVNC:TfrmVNC;
begin
  inherited;
////  try
//    frmVNC:=TfrmVNC.Create(self);
////    frmVNC.Connect(DM.MakPratIPLIP.AsString,'oitkid');
////    frmVNC.ShowModal;
////  finally
//    frmVNC.free;
////  end;

//
end;

procedure TfrmMembers.actCmdExecExecute(Sender: TObject);
var leotmp,leotmp1:array [0..170] of AnsiChar;
    leotmp0:PAnsiChar;
    leotmp01:String;
    z:integer;
begin
  inherited;
  leotmp01:='C:\Program Files\UltraVNC\vncviewer.exe ' + DM.MakPratIPLIP.AsWideString + ' /password oitkid';
  leotmp0:=PAnsiChar(AnsiString(Leotmp01));
//  z:=Length(leotmp0);
//  StringToWideChar(leotmp0,leotmp,z);
//    z:=Length(leotmp01);
//    StringToWideChar(leotmp01,leotmp1,z);
//  ShellExecute(
    winexec(leotmp0,1);
//  ShellExecute(Handle, 'open', leotmp , leotmp1, nil, SW_SHOWNORMAL);
end;

procedure TfrmMembers.actInActiveExecute(Sender: TObject);
begin
  inherited;
if DM.QCustLoc.IsEmpty then
   MessageDlg('Δεν Υπάρχει εγγραφή', mtError, [mbOK], 0)
else
  begin
    if DMMain.AskDelete then
     begin
       DM.InActiveRecord;
     end;
  end;
end;

procedure TfrmMembers.DBEdit7DblClick(Sender: TObject);
var TempDate:TDateTime;
begin
  inherited;
if TDBEdit(Sender).DataSource.Dataset.state in [dsInsert,dsEdit] then
  begin
    TempDate:=TDBEdit(Sender).Field.AsDateTime;
    if FormDate(self,TempDate,csDate) = mrOK then
      begin
       TDBEdit(Sender).Field.AsDateTime:=TempDate;
      end;
  end;
end;

procedure TfrmMembers.DBEdit8DblClick(Sender: TObject);
var TempDate:TDateTime;
begin
  inherited;
if TDBEdit(Sender).DataSource.Dataset.state in [dsInsert,dsEdit] then
  begin
    TempDate:=TDBEdit(Sender).Field.AsDateTime;
    if FormDate(self,TempDate,csDate) = mrOK then
      begin
       TDBEdit(Sender).Field.AsDateTime:=TempDate;
      end;
  end;
end;

procedure TfrmMembers.actPdfInsertExecute(Sender: TObject);
begin
{    DM.QRelPdfCust.Active;
    DM.QRelPdfCust.Insert;
    DM.QRelPdfCust.Edit;}
    DM.ADOQuery1.Active:=True;
    DM.ADOQuery1.Insert;
    DM.ADOQuery1.Edit;
end;

procedure TfrmMembers.actPdfDeleteExecute(Sender: TObject);
var Leo:Variant;
begin
  inherited;
if DM.QRelPdfCust.IsEmpty then
   MessageDlg('Δεν Υπάρχει εγγραφή', mtError, [mbOK], 0)
else
  begin
    if DMMain.AskDelete then
     begin
       DM.QRelPdfCust.Delete;
     end;
  end;
end;

procedure TfrmMembers.actPdfBeforeExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.actPdfPostExecute(Sender: TObject);
begin
  inherited;
if DM.AdoQuery1.State in [dsInsert] then
  begin
     DM.AdoQuery1InsDT.AsDateTime  := now();
     DM.AdoQuery1InsUsr.AsInteger  := LoginId;
  end
else
  begin
     DM.AdoQuery1UpdDT.AsDateTime  := now();
     DM.AdoQuery1UpdUsr.AsInteger  := LoginId;
  end;
{DM.QRelPdfCustPratId.AsInteger:=DM.QUpdCustLocId.AsInteger;
DM.QRelPdfCust.Post;}

DM.AdoQuery1PratId.AsInteger:=DM.QUpdCustLocId.AsInteger;
DM.AdoQuery1.Post;
DM.QRelPdfCust.Requery();

PageControl1Change(Self);
end;

procedure TfrmMembers.actPdfCancelExecute(Sender: TObject);
begin
  inherited;
DM.AdoQuery1.Cancel;  
DM.QRelPdfCust.Cancel;
PageControl1Change(Self);
end;

procedure TfrmMembers.actPdfAfterExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembers.LoadPdfImage(DBImage: TBlobField);
begin
If OpenDialog1.Execute then
begin
 try
   AcroPdf2.LoadFile(OpenDialog1.FileName);
   TBlobField(DBImage).LoadFromFile(OpenDialog1.FileName);
 finally
//   PicLeo.Free;
 end;
end;
end;


procedure TfrmMembers.ShowPdfImage(DBImage: TBlobField);
var LJpg:TJpegImage;
    AFormat:Word;
    AData:Cardinal;
    APalette:HPALETTE;
    LocalPath:String;
begin
    LocalPath := ExtractFilePath(Application.ExeName) + 'Temp\123.pdf';

    TBlobField(DBImage).SaveToFile(LocalPath);

    AcroPDF1.LoadFile(LocalPath);
end;

procedure TfrmMembers.ExecNewProcess(ProgramName : String; Wait: Boolean);
var
  StartInfo : TStartupInfo;
  ProcInfo : TProcessInformation;
  CreateOK : Boolean;
begin
    { fill with known state }
  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartupInfo);
  CreateOK := CreateProcess(nil, PChar(ProgramName), nil, nil,False,
              CREATE_NEW_PROCESS_GROUP+NORMAL_PRIORITY_CLASS,
              nil, nil, StartInfo, ProcInfo);
    { check to see if successful }
  if CreateOK then
    begin
        //may or may not be needed. Usually wait for child processes
      if Wait then
        WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    end
  else
    begin
      ShowMessage('Unable to run '+ProgramName);
     end;

  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;



procedure TfrmMembers.DBEdit10DblClick(Sender: TObject);
begin
  inherited;
  if TDBEdit(Sender).DataSource.State in [dsInsert] then
      LoadPdfImage(DM.AdoQuery1PdfCont)
  else
      ShowPdfImage(DM.QRelPdfCustPdfCont);

end;

procedure TfrmMembers.actPdfViewExecute(Sender: TObject);
begin
  inherited;
  ShowPdfImage(DM.QRelPdfCustPdfCont);
  PageControl1.ActivePage:=TabViewPdf;
  self.SetState('Pdf');
end;

procedure TfrmMembers.actPdfExecute(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePage = TabViewPdf then
    begin
     PageControl1.ActivePage := Pdf;
     self.SetState('PdfGB');
    end;
end;

end.
