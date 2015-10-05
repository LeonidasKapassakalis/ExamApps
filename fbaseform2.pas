unit FBaseForm2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ActnList,
  Menus, ExtCtrls, ComCtrls, DBGrids;

type

  { TFrmBaseForm }

  TFrmBaseForm = class(TForm)
    actAllColumns: TMenuItem;
    actBottom: TAction;
    actBrowse: TAction;
    actBrowse2: TAction;
    actCancel: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actEdt: TAction;
    actExport: TAction;
    actGrDet: TAction;
    actInsert: TAction;
    Action1: TAction;
    ActionList1: TActionList;
    actNext: TAction;
    actNoneColumn: TMenuItem;
    actPost: TAction;
    actPrev: TAction;
    actPrintGrid: TAction;
    actRetValue: TAction;
    actSave: TAction;
    actTop: TAction;
    DBGrid1: TDBGrid;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem23: TMenuItem;
    PageControl1: TPageControl;
    pnlMiddle: TPanel;
    pnlBottom: TPanel;
    pnlTop: TPanel;
    Pedia: TMenuItem;
    popFilter: TPopupMenu;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure MenuItem15Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmBaseForm: TFrmBaseForm;

implementation

{$R *.lfm}

{ TFrmBaseForm }

procedure TFrmBaseForm.MenuItem15Click(Sender: TObject);
begin

end;

end.

