unit FFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, dbGrids;

type
  TfrmFilter = class(TForm)
    btnAccept: TBitBtn;
    cbFields: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
	Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
	procedure FormCreate(Sender: TObject);
  private
	FGrid : TDBGrid;
	procedure FillCombo;
  public
	constructor CreateWithParam( aowner:TComponent ; grid:TDBGrid );
  end;


implementation

{$R *.DFM}

constructor TfrmFilter.CreateWithParam( aowner:TComponent ; grid:TDBGrid );
begin
	FGrid := grid;
	inherited Create( aowner );
end;

procedure TfrmFilter.FillCombo;
var
	n : integer;
begin
//FirstCol := DBGrid1.Columns.Items[0];
	for	n := 0 to FGrid.Columns.Count - 1 do
         if Not((FGrid.Columns.Items[n].Field.Calculated) or
                (FGrid.Columns.Items[n].Field.Lookup)) then
        cbFields.Items.Add( FGrid.Columns.Items[n].Title.Caption );
	if cbFields.Items.Count > 0 then
		cbFields.ItemIndex := 0;
end;

procedure TfrmFilter.FormCreate(Sender: TObject);
begin
	FillCombo;
//      Memo1.Text:=FGrid.DataSource.DataSet.Filter;
end;

end.
