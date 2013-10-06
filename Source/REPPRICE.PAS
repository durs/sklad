unit repprice;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TReportPrice = class(TQuickRep)
    DetailBand: TQRBand;
    mInfo: TQRMemo;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    qryOst: TIBQuery;
    QRSysData1: TQRSysData;
    lbDate: TQRLabel;
    SubDetail: TQRSubDetail;
    GroupBand: TQRGroup;
    QRDBText1: TQRDBText;
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
    mComment: TQRMemo;
    lbPrice: TQRDBText;
    lbLen: TQRDBText;
    lbClassName: TQRLabel;
    QRDBText2: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure GroupBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    ofs: integer;
  protected
  public
    constructor Create(AOwner:TComponent); override;
  end;

var
    ReportPrice:TReportPrice;

implementation
uses dataunit;
{$R *.DFM}

constructor TReportPrice.Create(AOwner:TComponent);
begin
    inherited;
    ofs:=lbTitle.Left;
    lbUnit.Mask:=FormatNum;
    lbPrice.Mask:=FormatCur;
end;

procedure TReportPrice.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    H:integer;
begin
    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    data.getClientInfo(Data.qrySklad,mInfo.Lines);
    if (imgLogo.Picture.Graphic=nil) or (imgLogo.Picture.Graphic.Empty) then H:=imgLogo.Width+20 else H:=0;
    lbTitle.Left:=ofs-H;
    lbCaption.Left:=lbTitle.Left;
    mInfo.Left:=lbTitle.Left;
    mComment.Lines.Text:=data.qrySkladCOMMENT3.AsString;
    lbDate.Caption:=FormatDateTime('d mmmm yyyy года',Date);
end;

procedure TReportPrice.GroupBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbClassName.Caption:=AnsiUpperCase(Dataset.FieldByName('CLASS').AsString);
end;

end.
