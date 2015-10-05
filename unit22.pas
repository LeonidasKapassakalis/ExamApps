unit unit22;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TADbSource, TAIntervalSources, TAChartListbox,
  TAGraph, TAStyles, TASources, TASeries, Forms, Controls, Graphics, Dialogs,
  BarChart, TACustomSource;

type

  { TForm2 }

  TForm2 = class(TForm)
    Chart1: TChart;
    Chart1BarSeries1: TBarSeries;
    DbChartSource1: TDbChartSource;
    procedure DbChartSource1GetItem(ASender: TDbChartSource;
      var AItem: TChartDataItem);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.DbChartSource1GetItem(ASender: TDbChartSource;
  var AItem: TChartDataItem);
begin

end;

end.

