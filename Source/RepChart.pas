unit RepChart;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DBChart, QrTee;

type
  TReportChart = class(TQuickRep)
    TitleBand: TQRBand;
    QRChart: TQRChart;
    QRDBChart: TQRDBChart;
    QRLabel1: TQRLabel;
    procedure TitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBandAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    FChart:TCustomChart;
  public
    constructor Create(AOwner:TComponent); override;
    procedure AssignChart(AChart:TCustomChart);
  end;

var
  ReportChart: TReportChart;

implementation

{$R *.DFM}

constructor TReportChart.Create(AOwner:TComponent);
begin
  inherited;
end;

procedure TReportChart.AssignChart(AChart:TCustomChart);
begin
  FChart:=AChart;
  with QRDBChart do begin
    Title:=FChart.Title;
    AxisVisible:=FChart.AxisVisible;
    BackWall:=FChart.BackWall;
    BottomWall:=FChart.BottomWall;
    LeftWall:=FChart.LeftWall;
    TopAxis:=FChart.TopAxis;
    BottomAxis:=FChart.BottomAxis;
    LeftAxis:=FChart.LeftAxis;
    RightAxis:=FChart.RightAxis;
    DepthAxis:=FChart.DepthAxis;
    Chart3DPercent:=FChart.Chart3DPercent;
    ClipPoints:=FChart.ClipPoints;
    Foot:=FChart.Foot;
    Frame:=FChart.Frame;
    Legend:=FChart.Legend;
    MaxPointsPerPage:=FChart.MaxPointsPerPage;
    Page:=FChart.Page;
    ScaleLastPage:=FChart.ScaleLastPage;
    View3D:=FChart.View3D;
    View3DOptions:=FChart.View3DOptions;
    View3DWalls:=FChart.View3DWalls;

    if (ReportTitle<>'') and (QRDBChart.Title.Text.Text='') then begin
        QRDBChart.Title.Text.Text:=ReportTitle;
        QRDBChart.Title.Visible:=true;
    end;
  end;
end;

procedure TReportChart.TitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand:=FChart<>nil;
  if not PrintBand then Exit;
  if (ReportTitle<>'') and (QRDBChart.Title.Text.Text='') then begin
    QRDBChart.Title.Text.Text:=ReportTitle;
    QRDBChart.Title.Visible:=true;
  end;
  with FChart do while SeriesCount>0 do Series[0].ParentChart:=QRDBChart;
end;

procedure TReportChart.TitleBandAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  with QRDBChart do while SeriesCount>0 do Series[0].ParentChart:=FChart;
end;

end.
