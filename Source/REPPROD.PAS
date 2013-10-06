unit repprod;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TReportProduct = class(TQuickRep)
    SummaryBand: TQRBand;
    qry: TIBQuery;
    SubDetail: TQRSubDetail;
    TitleBand: TQRBand;
    QRLabel9: TQRLabel;
    lbDate: TQRLabel;
    HeaderBand2: TQRChildBand;
    QRShape1: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    lbNo: TQRExpr;
    QRDBText1: TQRDBText;
    lbInSum1: TQRLabel;
    lbInSum2: TQRLabel;
    lbOutSum1: TQRLabel;
    lbOutSum2: TQRLabel;
    lbOutSum3: TQRLabel;
    lbSum1: TQRLabel;
    lbSum2: TQRLabel;
    lbOutSum4: TQRLabel;
    FooterBand1: TQRBand;
    QRLabel26: TQRLabel;
    lbDocInSum1: TQRLabel;
    lbDocInSum2: TQRLabel;
    lbDocOutSum1: TQRLabel;
    lbDocOutSum2: TQRLabel;
    lbDocOutSum3: TQRLabel;
    lbDocSum1: TQRLabel;
    lbDocSum2: TQRLabel;
    lbDocOutSum4: TQRLabel;
    QRLabel13: TQRLabel;
    lbAllOutSum1: TQRLabel;
    lbAllOutSum2: TQRLabel;
    lbAllOutSum3: TQRLabel;
    lbAllSum1: TQRLabel;
    lbAllSum2: TQRLabel;
    lbAllOutSum4: TQRLabel;
    lbAllInSum2: TQRLabel;
    lbAllInSum1: TQRLabel;
    HeaderBand3: TQRChildBand;
    QRLabel24: TQRLabel;
    QRShape26: TQRShape;
    QRLabel3: TQRLabel;
    QRShape24: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRLabel21: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel20: TQRLabel;
    QRShape23: TQRShape;
    QRLabel19: TQRLabel;
    QRShape21: TQRShape;
    QRLabel18: TQRLabel;
    QRShape22: TQRShape;
    QRLabel17: TQRLabel;
    lbFirst: TQRLabel;
    QRShape37: TQRShape;
    QRLabel2: TQRLabel;
    QRShape38: TQRShape;
    lbLast: TQRLabel;
    QRShape33: TQRShape;
    HeaderBand: TQRGroup;
    HeaderBand1: TQRGroup;
    lbDoc: TQRLabel;
    lbGroup: TQRLabel;
    FooterBand: TQRBand;
    lbOstInSum2: TQRLabel;
    lbOstOutSum1: TQRLabel;
    lbOstOutSum2: TQRLabel;
    lbOstOutSum3: TQRLabel;
    lbOstSum1: TQRLabel;
    lbOstSum2: TQRLabel;
    lbOstOutSum4: TQRLabel;
    lbOstInSum1: TQRLabel;
    lbFooter: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape14: TQRShape;
    QRLabel11: TQRLabel;
    QRShape15: TQRShape;
    QRDBText3: TQRDBText;
    PageHeaderBand: TQRBand;
    lbPage: TQRExpr;
    QRShape25: TQRShape;
    QRLabel12: TQRLabel;
    QRShape27: TQRShape;
    lbInSum3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape35: TQRShape;
    QRLabel15: TQRLabel;
    QRShape36: TQRShape;
    QRShape39: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape4: TQRShape;
    QRShape40: TQRShape;
    lbOutSum5: TQRLabel;
    QRShape41: TQRShape;
    lbOutSum6: TQRLabel;
    lbDocInSum3: TQRLabel;
    lbOstInSum3: TQRLabel;
    lbDocOutSum5: TQRLabel;
    lbDocOutSum6: TQRLabel;
    lbOstOutSum5: TQRLabel;
    lbOstOutSum6: TQRLabel;
    QRShape34: TQRShape;
    lbAllInSum3: TQRLabel;
    lbAllOutSum5: TQRLabel;
    lbAllOutSum6: TQRLabel;
    QRShape7: TQRShape;
    lbOutSum7Cap: TQRLabel;
    QRShape42: TQRShape;
    lbOutSum7: TQRLabel;
    lbDocOutSum7: TQRLabel;
    lbOstOutSum7: TQRLabel;
    lbAllOutSum7: TQRLabel;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    imgLogo: TQRImage;
    qryDoc: TIBQuery;
    lbInCount: TQRLabel;
    QRDBText2: TQRDBText;
    lbDocInCount: TQRLabel;
    lbOstInCount: TQRLabel;
    lbAllInCount: TQRLabel;
    lbOutCount: TQRLabel;
    lbDocOutCount: TQRLabel;
    lbCount: TQRLabel;
    lbDocCount: TQRLabel;
    lbOstCount: TQRLabel;
    lbOstOutCount: TQRLabel;
    lbAllOutCount: TQRLabel;
    lbAllCount: TQRLabel;
    lbInPrice: TQRLabel;
    InnerSummaryBand: TQRChildBand;
    QRLabel10: TQRLabel;
    qryInner: TIBQuery;
    lbInnerCnt: TQRLabel;
    lbInnerOutSum1: TQRLabel;
    lbInnerOutSum2: TQRLabel;
    lbInnerOutSum3: TQRLabel;
    lbInnerOutSum4: TQRLabel;
    lbInnerOutSum5: TQRLabel;
    lbInnerOutSum6: TQRLabel;
    lbInnerOutSum7: TQRLabel;
    lbInnerInSum1: TQRLabel;
    lbInnerInSum2: TQRLabel;
    lbInnerInSum3: TQRLabel;
    lbInnerSum1: TQRLabel;
    lbInnerSum2: TQRLabel;
    procedure ReportProductBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure HeaderBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure HeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SubDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FooterBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure InnerSummaryBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    SkladDocParam1, DocSKind, ofs:integer;
    use_nalog: boolean;
    DocInCount,DocInSum1,DocInSum2,DocOutCount,DocOutSum1,DocOutSum2,DocOutSum5,DocOutSum6,DocOutSum7,DocCount,DocSum1,DocSum2,
    OstInCount,OstInSum1,OstInSum2,OstOutCount,OstOutSum1,OstOutSum2,OstOutSum5,OstOutSum6,OstOutSum7,OstCount,OstSum1,OstSum2,
    AllInCount,AllInSum1,AllInSum2,AllOutCount,AllOutSum1,AllOutSum2,AllOutSum5,AllOutSum6,AllOutSum7,AllCount,AllSum1,AllSum2,
    InnerInCount,InnerInSum1,InnerInSum2,InnerCount,InnerSum1,InnerSum2: Double;
 public
    constructor Create(AOwner:TComponent); override;
  end;

var
  ReportProduct: TReportProduct;

implementation

uses DyUtils,DataUnit;

{$R *.DFM}

constructor TReportProduct.Create(AOwner:TComponent);
begin
    inherited;
    ofs:=lbTitle.Left;
end;

procedure TReportProduct.ReportProductBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var
    H:integer;
    yy, mm, dd: word;
begin
    SkladDocParam1 := Data.qrySkladDOCPARAM1.AsInteger;
    data.getBlobImage(Data.qrySkladLOGO, imgLogo.Picture);
    if (imgLogo.Picture.Graphic = nil) or (imgLogo.Picture.Graphic.Empty) then H := imgLogo.Width + 20 else H := 0;
    lbTitle.Left := ofs - H;
    lbCaption.Left := lbTitle.Left;

    lbDate.Caption:='с '+qry.ParamByName('date1').AsString+' по '+qry.ParamByName('date2').AsString;
    lbPage.Expression:=''''+ReportTitle+' '+lbDate.Caption+' Страница ''+PAGENUMBER';

    DocInCount:=0;DocInSum1:=0;DocInSum2:=0;DocOutCount:=0;DocOutSum1:=0;DocOutSum2:=0;DocOutSum5:=0;DocOutSum6:=0;DocOutSum7:=0;DocCount:=0;DocSum1:=0;DocSum2:=0;
    OstInCount:=0;OstInSum1:=0;OstInSum2:=0;OstOutCount:=0;OstOutSum1:=0;OstOutSum2:=0;OstOutSum5:=0;OstOutSum6:=0;OstOutSum7:=0;OstCount:=0;OstSum1:=0;OstSum2:=0;
    AllInCount:=0;AllInSum1:=0;AllInSum2:=0;AllOutCount:=0;AllOutSum1:=0;AllOutSum2:=0;AllOutSum5:=0;AllOutSum6:=0;AllOutSum7:=0;AllCount:=0;AllSum1:=0;AllSum2:=0;
    InnerInCount:=0;InnerInSum1:=0;InnerInSum2:=0;InnerCount:=0;InnerSum1:=0;InnerSum2:=0;

    DecodeDate(qry.ParamByName('date1').AsDateTime, yy, mm, dd);
    use_nalog := yy < 2004;
    if (use_nalog) then begin
        lbOutSum7Cap.Caption := 'Сумма налога с продаж';
    end else begin
        lbOutSum7Cap.Caption := '';
    end;
end;

procedure TReportProduct.HeaderBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if Dataset.FieldByName('ISOST').AsInteger<>0 then begin
        lbGroup.Caption:='1. Остаток товара';
        lbFooter.Caption:='Итого по остаткам товара :';
        lbFirst.Caption:='Остаток на '+qry.ParamByName('date1').AsString;
    end else begin
        lbGroup.Caption:='2. Приход товара';
        lbFooter.Caption:='Итого по приходу товара :';
        lbFirst.Caption:='Приход с '+qry.ParamByName('date1').AsString+' по '+qry.ParamByName('date2').AsString;
    end;
    lbLast.Caption:='Остаток на '+qry.ParamByName('date2').AsString;
end;

procedure TReportProduct.HeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    qryDoc.Params[0].AsInteger := Dataset.FieldByName('INDOCID').AsInteger;
    qryDoc.Active := true;
    try
        DocSKind := qryDoc.Fields[0].AsInteger;
        lbDoc.Caption := qryDoc.Fields[1].AsString;
    finally
        qryDoc.Active := false;
    end;
end;

procedure TReportProduct.SubDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
    InUnit,InSum1,InSum2,Sum1,Sum2,OutSum1,OutSum2,OutSum5,OutSum6,OutSum7,InCount,Count,OutCount,InPrice,NDSPrice:Double;
    Sum3: double;
begin
    with Dataset do begin
        InUnit := FieldByName('UNIT').AsFloat;
        InCount := FieldByName('INCNT').AsFloat * InUnit;
        OutCount := FieldByName('OUTCNT').AsFloat * InUnit;
        Count := FieldByName('CNT').AsFloat * InUnit;
        InPrice := FieldByName('INPRICE').AsFloat;
        NDSPrice := FieldByName('INNDSPRICE').AsFloat;
        Sum1 := Count * (InPrice - NDSPrice);
        Sum2 := Count * NDSPrice;
        OutSum1 := OutCount * (InPrice-NDSPrice);
        OutSum2 := OutCount * NDSPrice;
        OutSum5 := FieldByName('OUTNDSSUM').AsFloat;
        OutSum7 := FieldByName('OUTNALOGSUM').AsFloat;
        OutSum6 := FieldByName('OUTSUM').AsFloat - OutSum7;
        InSum1 := (Count+OutCount) * (InPrice - NDSPrice);
        InSum2 := (Count+OutCount) * NDSPrice
    end;
    if (SkladDocParam1 and dpNDS <> 0)
        then Sum3 := OutSum6 - OutSum5 - OutSum1
        else Sum3 := OutSum6 - OutSum1 - OutSum2;

    DocInCount:=DocInCount+InCount;     lbInCount.Caption:=FormatFloat(FormatNum, InCount);
                                        lbInPrice.Caption:=FormatFloat(FormatCur, InPrice);
    DocInSum1:=DocInSum1+InSum1;        lbInSum1.Caption:=FormatFloat(FormatCur, InSum1);
    DocInSum2:=DocInSum2+InSum2;        lbInSum2.Caption:=FormatFloat(FormatCur, InSum2);
                                        lbInSum3.Caption:=FormatFloat(FormatCur, InSum1+InSum2);
    DocOutCount:=DocOutCount+OutCount;  lbOutCount.Caption:=FormatFloat(FormatNum, OutCount);
    DocOutSum1:=DocOutSum1+OutSum1;     lbOutSum1.Caption:=FormatFloat(FormatCur, OutSum1);
    DocOutSum2:=DocOutSum2+OutSum2;     lbOutSum2.Caption:=FormatFloat(FormatCur, OutSum2);
                                        lbOutSum3.Caption:=FormatFloat(FormatCur, Sum3);
                                        lbOutSum4.Caption:=FormatFloat(FormatCur, OutSum6-OutSum5);
    DocOutSum5:=DocOutSum5+OutSum5;     lbOutSum5.Caption:=FormatFloat(FormatCur, OutSum5);
    DocOutSum6:=DocOutSum6+OutSum6;     lbOutSum6.Caption:=FormatFloat(FormatCur,OutSum6);
    DocOutSum7:=DocOutSum7+OutSum7;     if use_nalog then lbOutSum7.Caption:=FormatFloat(FormatCur,OutSum7) else lbOutSum7.Caption:='';
    DocCount:=DocCount+Count;           lbCount.Caption:=FormatFloat(FormatNum,Count);
    DocSum1:=DocSum1+Sum1;              lbSum1.Caption:=FormatFloat(FormatCur,Sum1);
    DocSum2:=DocSum2+Sum2;              lbSum2.Caption:=FormatFloat(FormatCur,Sum2);
end;

procedure TReportProduct.FooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
    Sum3: double;
begin
    lbNo.Reset;

    if DocSKind <= 0 then begin
        InnerInCount := InnerInCount + DocInCount;
        InnerInSum1 := InnerInSum1 + DocInSum1;
        InnerInSum2 := InnerInSum2 + DocInSum2;
        InnerCount := InnerCount + DocCount;
        InnerSum1 := InnerSum1 + DocSum1;
        InnerSum2 := InnerSum2 + DocSum2;
    end;

    if (SkladDocParam1 and dpNDS <> 0)
        then Sum3 := DocOutSum6 - DocOutSum5 - DocOutSum1
        else Sum3 := DocOutSum6 - DocOutSum1 - DocOutSum2;

    OstInCount:=OstInCount+DocInCount;      lbDocInCount.Caption:=FormatFloat(FormatNum,DocInCount);
    OstInSum1:=OstInSum1+DocInSum1;         lbDocInSum1.Caption:=FormatFloat(FormatCur,DocInSum1);
    OstInSum2:=OstInSum2+DocInSum2;         lbDocInSum2.Caption:=FormatFloat(FormatCur,DocInSum2);
                                            lbDocInSum3.Caption:=FormatFloat(FormatCur,DocInSum1+DocInSum2);
    OstOutCount:=OstOutCount+DocOutCount;   lbDocOutCount.Caption:=FormatFloat(FormatNum,DocOutCount);
    OstOutSum1:=OstOutSum1+DocOutSum1;      lbDocOutSum1.Caption:=FormatFloat(FormatCur,DocOutSum1);
    OstOutSum2:=OstOutSum2+DocOutSum2;      lbDocOutSum2.Caption:=FormatFloat(FormatCur,DocOutSum2);
                                            lbDocOutSum3.Caption:=FormatFloat(FormatCur,Sum3);
                                            lbDocOutSum4.Caption:=FormatFloat(FormatCur,DocOutSum6-DocOutSum5);
    OstOutSum5:=OstOutSum5+DocOutSum5;      lbDocOutSum5.Caption:=FormatFloat(FormatCur,DocOutSum5);
    OstOutSum6:=OstOutSum6+DocOutSum6;      lbDocOutSum6.Caption:=FormatFloat(FormatCur,DocOutSum6);
    OstOutSum7:=OstOutSum7+DocOutSum7;      if use_nalog then lbDocOutSum7.Caption:=FormatFloat(FormatCur,DocOutSum7) else lbDocOutSum7.Caption:='';
    OstCount:=OstCount+DocCount;            lbDocCount.Caption:=FormatFloat(FormatNum,DocCount);
    OstSum1:=OstSum1+DocSum1;               lbDocSum1.Caption:=FormatFloat(FormatCur,DocSum1);
    OstSum2:=OstSum2+DocSum2;               lbDocSum2.Caption:=FormatFloat(FormatCur,DocSum2);

    DocInCount:=0; DocInSum1:=0; DocInSum2:=0;
    DocOutCount:=0; DocOutSum1:=0; DocOutSum2:=0; DocOutSum5:=0; DocOutSum6:=0; DocOutSum7:=0;
    DocCount:=0; DocSum1:=0; DocSum2:=0;
end;

procedure TReportProduct.FooterBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
    Sum3: double;
begin
    if (SkladDocParam1 and dpNDS <> 0)
        then Sum3 := OstOutSum6 - OstOutSum5 - OstOutSum1
        else Sum3 := OstOutSum6 - OstOutSum1 - OstOutSum2;

    AllInCount:=AllInCount+OstInCount;      lbOstInCount.Caption:=FormatFloat(FormatNum,OstInCount);
    AllInSum1:=AllInSum1+OstInSum1;         lbOstInSum1.Caption:=FormatFloat(FormatCur,OstInSum1);
    AllInSum2:=AllInSum2+OstInSum2;         lbOstInSum2.Caption:=FormatFloat(FormatCur,OstInSum2);
                                            lbOstInSum3.Caption:=FormatFloat(FormatCur,OstInSum1+OstInSum2);
    AllOutCount:=AllOutCount+OstOutCount;   lbOstOutCount.Caption:=FormatFloat(FormatNum,OstOutCount);
    AllOutSum1:=AllOutSum1+OstOutSum1;      lbOstOutSum1.Caption:=FormatFloat(FormatCur,OstOutSum1);
    AllOutSum2:=AllOutSum2+OstOutSum2;      lbOstOutSum2.Caption:=FormatFloat(FormatCur,OstOutSum2);
                                            lbOstOutSum3.Caption:=FormatFloat(FormatCur,Sum3);
                                            lbOstOutSum4.Caption:=FormatFloat(FormatCur,OstOutSum6-OstOutSum5);
    AllOutSum5:=AllOutSum5+OstOutSum5;      lbOstOutSum5.Caption:=FormatFloat(FormatCur,OstOutSum5);
    AllOutSum6:=AllOutSum6+OstOutSum6;      lbOstOutSum6.Caption:=FormatFloat(FormatCur,OstOutSum6);
    AllOutSum7:=AllOutSum7+OstOutSum7;      if use_nalog then lbOstOutSum7.Caption:=FormatFloat(FormatCur,OstOutSum7) else lbOstOutSum7.Caption:='';
    AllCount:=AllCount+OstCount;            lbOstCount.Caption:=FormatFloat(FormatNum,OstCount);
    AllSum1:=AllSum1+OstSum1;               lbOstSum1.Caption:=FormatFloat(FormatCur,OstSum1);
    AllSum2:=AllSum2+OstSum2;               lbOstSum2.Caption:=FormatFloat(FormatCur,OstSum2);

    OstInCount:=0; OstInSum1:=0; OstInSum2:=0;
    OstOutCount:=0; OstOutSum1:=0; OstOutSum2:=0; OstOutSum5:=0; OstOutSum6:=0; OstOutSum7:=0;
    OstCount:=0; OstSum1:=0; OstSum2:=0;
end;

procedure TReportProduct.SummaryBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
    Sum3: double;
begin
    if (SkladDocParam1 and dpNDS <> 0)
        then Sum3 := AllOutSum6 - AllOutSum5 - AllOutSum1
        else Sum3 := AllOutSum6 - AllOutSum1 - AllOutSum2;

    lbAllInCount.Caption:=FormatFloat(FormatNum,AllInCount);
    lbAllInSum1.Caption:=FormatFloat(FormatCur,AllInSum1);
    lbAllInSum2.Caption:=FormatFloat(FormatCur,AllInSum2);
    lbAllInSum3.Caption:=FormatFloat(FormatCur,AllInSum1+AllInSum2);
    lbAllOutCount.Caption:=FormatFloat(FormatNum,AllOutCount);
    lbAllOutSum1.Caption:=FormatFloat(FormatCur,AllOutSum1);
    lbAllOutSum2.Caption:=FormatFloat(FormatCur,AllOutSum2);
    lbAllOutSum3.Caption:=FormatFloat(FormatCur,Sum3);
    lbAllOutSum4.Caption:=FormatFloat(FormatCur,AllOutSum6-AllOutSum5);
    lbAllOutSum5.Caption:=FormatFloat(FormatCur,AllOutSum5);
    lbAllOutSum6.Caption:=FormatFloat(FormatCur,AllOutSum6);
    if use_nalog then lbAllOutSum7.Caption:=FormatFloat(FormatCur,AllOutSum7) else lbAllOutSum7.Caption:='';
    lbAllCount.Caption:=FormatFloat(FormatNum,AllCount);
    lbAllSum1.Caption:=FormatFloat(FormatCur,AllSum1);
    lbAllSum2.Caption:=FormatFloat(FormatCur,AllSum2);
end;

procedure TReportProduct.InnerSummaryBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand := not qryInner.EOF or (InnerInSum1 <> 0);
    if not PrintBand then exit;
    lbInnerInSum1.Caption := FormatFloat(FormatCur, InnerInSum1);
    lbInnerInSum2.Caption := FormatFloat(FormatCur, InnerInSum2);
    lbInnerInSum3.Caption := FormatFloat(FormatCur, InnerInSum1 + InnerInSum2);
    lbInnerSum1.Caption := FormatFloat(FormatCur, InnerSum1);
    lbInnerSum2.Caption := FormatFloat(FormatCur, InnerSum2);
    lbInnerCnt.Caption := FormatFloat(FormatNum, qryInner.FieldByName('CNT').AsFloat);
    lbInnerOutSum1.Caption := FormatFloat(FormatNum, qryInner.FieldByName('INSUM2').AsFloat);
    lbInnerOutSum2.Caption := FormatFloat(FormatNum, qryInner.FieldByName('INNDSSUM').AsFloat);
    if (SkladDocParam1 and dpNDS <> 0)
        then lbInnerOutSum3.Caption := FormatFloat(FormatNum, qryInner.FieldByName('OSTSUM').AsFloat)
        else lbInnerOutSum3.Caption := FormatFloat(FormatNum, qryInner.FieldByName('OSTSUM2').AsFloat);
    lbInnerOutSum4.Caption := FormatFloat(FormatNum, qryInner.FieldByName('OUTSUM2').AsFloat);
    lbInnerOutSum5.Caption := FormatFloat(FormatNum, qryInner.FieldByName('OUTNDSSUM').AsFloat);
    lbInnerOutSum6.Caption := FormatFloat(FormatNum, qryInner.FieldByName('OUTSUM').AsFloat);
    if use_nalog then lbInnerOutSum7.Caption := FormatFloat(FormatNum, qryInner.FieldByName('OUTNALOGSUM').AsFloat) else lbInnerOutSum7.Caption := '';
end;

end.
