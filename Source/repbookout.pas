unit repbookout;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, DBTables,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TReportBookOut = class(TQuickRep)
    TitleBand: TQRBand;
    SubDetail: TQRSubDetail;
    lbDoc: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape4: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    ColumnHeaderBand: TQRChildBand;
    QRLabel27: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape24: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape34: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape37: TQRShape;
    QRLabel37: TQRLabel;
    QRShape25: TQRShape;
    QRShape28: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape1: TQRShape;
    QRLabel36: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    lbNDS20Cap: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    lbDocNdsSum20: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    lbDocNdsSum10: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    GroupFooterBand: TQRBand;
    lbNdsSum20: TQRExpr;
    lbNdsSum10: TQRExpr;
    PageHeaderBand: TQRChildBand;
    lbPage: TQRExpr;
    QRShape10: TQRShape;
    lbNalogCap: TQRLabel;
    lbNalogNoCap: TQRLabel;
    lbDocNalogSum: TQRDBText;
    lbNalogSum: TQRExpr;
    lbDocSum: TQRDBText;
    lbDocSum20: TQRDBText;
    lbDocSum10: TQRDBText;
    lbSum: TQRExpr;
    lbSum20: TQRExpr;
    lbSum10: TQRExpr;
    QRShape11: TQRShape;
    qry: TIBQuery;
    imgLogo: TQRImage;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    QRLabel9: TQRLabel;
    lbDate: TQRLabel;
    QRDBText1: TQRDBText;
    lbDocNSum: TQRDBText;
    lbNSum: TQRExpr;
    QRLabel20: TQRLabel;
    lbDate1: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRShape15: TQRShape;
    QRDBText2: TQRDBText;
    lbDate2: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape16: TQRShape;
    QRShape19: TQRShape;
    QRShape30: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel6: TQRLabel;
    QRShape23: TQRShape;
    qryInner: TIBQuery;
    ChildBand1: TQRChildBand;
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
    QRLabel16: TQRLabel;
    QRShape33: TQRShape;
    lbNalogSumInner: TQRDBText;
    procedure SubDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    ofs:integer;
    PrintTitle:boolean;
  public
    constructor Create(AOwner:TComponent); override;
  end;

implementation
uses DataUnit;
{$R *.DFM}

constructor TReportBookOut.Create(AOwner:TComponent);
begin
    inherited;
    ofs:=lbTitle.Left;
    
    lbSum.Mask:=FormatCur;
    lbSum10.Mask:=FormatCur;
    lbNdsSum10.Mask:=FormatCur;
    lbSum20.Mask:=FormatCur;
    lbNdsSum20.Mask:=FormatCur;
    lbNSum.Mask:=FormatCur;
    lbNalogSum.Mask:=FormatCur;

    lbDocSum.Mask:=FormatCur;
    lbDocSum10.Mask:=FormatCur;
    lbDocNdsSum10.Mask:=FormatCur;
    lbDocSum20.Mask:=FormatCur;
    lbDocNdsSum20.Mask:=FormatCur;
    lbDocNSum.Mask:=FormatCur;
    lbDocNalogSum.Mask:=FormatCur;

    lbSumInner.Mask:=FormatCur;
    lbSum10Inner.Mask:=FormatCur;
    lbNdsSum10Inner.Mask:=FormatCur;
    lbSum20Inner.Mask:=FormatCur;
    lbNdsSum20Inner.Mask:=FormatCur;
    lbNSumInner.Mask:=FormatCur;
    lbNalogSumInner.Mask:=FormatCur;
end;

procedure TReportBookOut.ReportBeforePrint(Sender: TCustomQuickRep;
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
        lbNDS20Cap.Caption := '20 процентов (5)';
        lbNalogCap.Caption := 'Налог с продаж';
        lbNalogNoCap.Caption := '(9)';
        lbDocNalogSum.DataField := 'SUM2';
        lbNalogSum.Expression := 'SUM(SUM2)';
        lbNalogSumInner.DataField := 'OUTNALOGSUM';
    end else begin
        lbNDS20Cap.Caption := '18 процентов (5)';
        lbNalogCap.Caption := '';
        lbNalogNoCap.Caption := '';
        lbDocNalogSum.DataField := '';
        lbNalogSum.Expression := '';
        lbNalogSumInner.DataField := '';
    end;

    PrintTitle:=true;
end;

procedure TReportBookOut.TitleBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=PrintTitle;
end;

procedure TReportBookOut.PageHeaderBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=not PrintTitle;
    PrintTitle:=false;
end;

procedure TReportBookOut.SubDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbDoc.Caption:='№'+qry.FieldByName('DOCNO').AsString+' от '+qry.FieldByName('DATE1').AsString;
end;

procedure TReportBookOut.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=not qryInner.EOF;
end;

end.
