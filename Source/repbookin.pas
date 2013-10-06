unit repbookin;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, DBTables,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TReportBookIn = class(TQuickRep)
    TitleBand: TQRBand;
    QRLabel9: TQRLabel;
    lbDate: TQRLabel;
    SubDetail: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    lbDocSum: TQRDBText;
    lbDocNdsSum20: TQRDBText;
    QRShape4: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    ColumnHeaderBand: TQRChildBand;
    QRLabel37: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape33: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape24: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape34: TQRShape;
    QRShape25: TQRShape;
    QRShape28: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape37: TQRShape;
    QRShape36: TQRShape;
    QRShape35: TQRShape;
    GroupFooterBand: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    lbNDS20Cap: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    lbDocNdsSum10: TQRDBText;
    lbDocSum20: TQRDBText;
    lbDocSum10: TQRDBText;
    lbSum: TQRExpr;
    lbSum20: TQRExpr;
    lbNdsSum20: TQRExpr;
    lbSum10: TQRExpr;
    lbNdsSum10: TQRExpr;
    PageHeaderBand: TQRChildBand;
    lbPage: TQRExpr;
    imgLogo: TQRImage;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    qry: TIBQuery;
    QRDBText5: TQRDBText;
    lbDocNSum: TQRDBText;
    lbNSum: TQRExpr;
    lbDoc: TQRLabel;
    QRLabel8: TQRLabel;
    lbDate1: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel10: TQRLabel;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape15: TQRShape;
    lbDate2: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText6: TQRDBText;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape19: TQRShape;
    QRShape30: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    ChildBand1: TQRChildBand;
    QRLabel16: TQRLabel;
    lbSumInner: TQRDBText;
    lbSum20Inner: TQRDBText;
    lbNdsSum20Inner: TQRDBText;
    lbSum10Inner: TQRDBText;
    lbNdsSum10Inner: TQRDBText;
    lbNSumInner: TQRDBText;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    qryInner: TIBQuery;
    procedure TitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SubDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    ofs:integer;
    PrintTitle:boolean;
  public
    constructor Create(AOwner:TComponent); override;
  end;

var
  ReportBookIn: TReportBookIn;

implementation
uses DataUnit,ParamFrm;
{$R *.DFM}

constructor TReportBookIn.Create(AOwner:TComponent);
begin
    inherited;
    ofs:=lbTitle.Left;
    
    lbDocSum.Mask:=FormatCur;
    lbDocSum10.Mask:=FormatCur;
    lbDocNdsSum10.Mask:=FormatCur;
    lbDocSum20.Mask:=FormatCur;
    lbDocNdsSum20.Mask:=FormatCur;
    lbDocNSum.Mask:=FormatCur;

    lbSum.Mask:=FormatCur;
    lbSum10.Mask:=FormatCur;
    lbNdsSum10.Mask:=FormatCur;
    lbSum20.Mask:=FormatCur;
    lbNdsSum20.Mask:=FormatCur;
    lbNSum.Mask:=FormatCur;

    lbSumInner.Mask:=FormatCur;
    lbSum10Inner.Mask:=FormatCur;
    lbNdsSum10Inner.Mask:=FormatCur;
    lbSum20Inner.Mask:=FormatCur;
    lbNdsSum20Inner.Mask:=FormatCur;
    lbNSumInner.Mask:=FormatCur;
end;

procedure TReportBookIn.ReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    H: integer;
    yy, mm, dd: word;
begin
    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    if (imgLogo.Picture.Graphic=nil) or (imgLogo.Picture.Graphic.Empty) then H:=imgLogo.Width+20 else H:=0;
    lbTitle.Left:=ofs-H;
    lbCaption.Left:=lbTitle.Left;
    lbDate.Caption:='с '+qry.ParamByName('date1').AsString+' по '+qry.ParamByName('date2').AsString;
    lbPage.Expression:=''''+ReportTitle+' '+lbDate.Caption+' Страница ''+PAGENUMBER';
    lbDate1.Caption:=qry.ParamByName('date1').AsString;
    lbDate2.Caption:=qry.ParamByName('date2').AsString;

    DecodeDate(qry.ParamByName('date1').AsDateTime, yy, mm, dd);
    if (yy < 2004) then begin
        lbNDS20Cap.Caption := '20 процентов (8)';
    end else begin
        lbNDS20Cap.Caption := '18 процентов (8)';
    end;

    PrintTitle:=true;
end;

procedure TReportBookIn.TitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=PrintTitle;
end;

procedure TReportBookIn.PageHeaderBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=not PrintTitle;
    PrintTitle:=false;
end;

procedure TReportBookIn.SubDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbDoc.Caption:='№'+qry.FieldByName('DOCNO').AsString+' от '+qry.FieldByName('DATE1').AsString;
end;

procedure TReportBookIn.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=not qryInner.EOF;
end;

end.
