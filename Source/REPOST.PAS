unit repost;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TReportOstatok = class(TQuickRep)
    DetailBand: TQRBand;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    qryOst: TIBQuery;
    QRSysData1: TQRSysData;
    lbDate: TQRLabel;
    SubDetail: TQRSubDetail;
    QRShape1: TQRShape;
    QRShape10: TQRShape;
    QRShape2: TQRShape;
    lbUnit: TQRDBText;
    QRShape3: TQRShape;
    imgLogo: TQRImage;
    ChildBand1: TQRChildBand;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    PageHeaderBand: TQRBand;
    PageLabel: TQRExpr;
    lbInSum: TQRDBText;
    lbCnt: TQRDBText;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    NoLabel: TQRExpr;
    QRShape6: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    bandFooter: TQRBand;
    lbOstSum: TQRExpr;
    lbOstCnt: TQRExpr;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRLabel3: TQRLabel;
    lbAllCnt: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    ofs:integer;
  protected
  public
    skladid:integer;
    constructor Create(AOwner:TComponent); override;
  end;

var
    ReportOstatok:TReportOstatok;

implementation
uses dataunit;
{$R *.DFM}

constructor TReportOstatok.Create(AOwner:TComponent);
begin
  inherited;
  ofs:=lbTitle.Left;
  lbCnt.Mask:=FormatNum;
  lbAllCnt.Mask:=FormatNum;
  lbOstCnt.Mask:=FormatNum;
  lbInSum.Mask:=FormatCur;
  lbOstSum.Mask:=FormatCur;
end;

procedure TReportOstatok.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    H:integer;
begin
    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    if (imgLogo.Picture.Graphic=nil) or (imgLogo.Picture.Graphic.Empty) then H:=imgLogo.Width+20 else H:=0;
    lbTitle.Left:=ofs-H;
    lbCaption.Left:=lbTitle.Left;
    lbDate.Caption:=FormatDateTime('d mmmm yyyy года',Date);
end;

end.
