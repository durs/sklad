unit repnalog;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, IBCustomDataSet,
  IBQuery, Db;

type
  TReportNalog = class(TQuickRep)
    TitleBand: TQRBand;
    SubDetail: TQRSubDetail;
    qry: TIBQuery;
    QRShape4: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    ColumnHeaderBand: TQRChildBand;
    QRLabel27: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape24: TQRShape;
    QRShape29: TQRShape;
    QRShape32: TQRShape;
    QRLabel52: TQRLabel;
    QRShape37: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel3: TQRLabel;
    lbDocSum0: TQRDBText;
    QRShape21: TQRShape;
    GroupFooterBand1: TQRBand;
    lbSum0: TQRExpr;
    PageHeaderBand: TQRChildBand;
    lbPage: TQRExpr;
    lbDocSum2: TQRDBText;
    lbDocSum1: TQRExpr;
    lbSum1: TQRExpr;
    lbSum2: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    QRLabel2: TQRLabel;
    lbDate: TQRLabel;
    imgLogo: TQRImage;
    procedure TitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    PrintTitle:boolean;
    ofs:integer;
  public
    constructor Create(AOwner:TComponent); override;
  end;

implementation
uses DataUnit,ParamFrm,DyUtils;
{$R *.DFM}

constructor TReportNalog.Create(AOwner:TComponent);
begin
  inherited;
  ofs:=lbTitle.Left;
  lbSum0.Mask:=FormatCur;
  lbSum1.Mask:=FormatCur;
  lbSum2.Mask:=FormatCur;
  lbDocSum0.Mask:=FormatCur;
  lbDocSum1.Mask:=FormatCur;
  lbDocSum2.Mask:=FormatCur;
end;

procedure TReportNalog.ReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var H:integer;
begin
    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    if (imgLogo.Picture.Graphic=nil) or (imgLogo.Picture.Graphic.Empty) then H:=imgLogo.Width+20 else H:=0;
    lbTitle.Left:=ofs-H;
    lbCaption.Left:=lbTitle.Left;
    if qry.ParamByName('date1').AsDateTime=qry.ParamByName('date2').AsDateTime then begin
        lbDate.Caption:='за '+qry.ParamByName('date1').AsString;
    end else begin
        lbDate.Caption:='с '+qry.ParamByName('date1').AsString+' по '+qry.ParamByName('date2').AsString;
    end;
    lbPage.Expression:=''''+ReportTitle+' '+lbDate.Caption+' Страница ''+PAGENUMBER';
    PrintTitle:=true;
end;

procedure TReportNalog.TitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand:=PrintTitle;
end;

procedure TReportNalog.PageHeaderBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand:=not PrintTitle;
  PrintTitle:=false;
end;

end.
