unit repday;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TReportDay = class(TQuickRep)
    bandTitle: TQRBand;
    QRLabel1: TQRLabel;
    hdrDoc: TQRChildBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    qryDoc: TIBQuery;
    lbOutSum: TQRDBText;
    hdrKassa: TQRChildBand;
    footDoc: TQRBand;
    qryKassaIn: TIBQuery;
    QRLabel9: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    lbDocCreditSum: TQRDBText;
    hdrDebit: TQRChildBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    footCredit: TQRBand;
    footDebit: TQRBand;
    hdrDebitDoc: TQRChildBand;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    footDebitDoc: TQRBand;
    hdrBeznal: TQRChildBand;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    qryCredit: TIBQuery;
    hdrCredit: TQRChildBand;
    QRLabel10: TQRLabel;
    lbInSumCaption: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    lbOutNdsSum: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel6: TQRLabel;
    QRShape27: TQRShape;
    QRLabel26: TQRLabel;
    QRShape20: TQRShape;
    QRLabel14: TQRLabel;
    QRShape22: TQRShape;
    lbNalogSum: TQRDBText;
    QRShape24: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    imgLogo: TQRImage;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    QRSysData1: TQRSysData;
    lbDate: TQRLabel;
    QRLabel3: TQRLabel;
    qryKassaOut: TIBQuery;
    footKassa: TQRBand;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    lbKassaInSum: TQRDBText;
    lbKassaOutSum: TQRDBText;
    bandCredit: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    bandDebit: TQRSubDetail;
    QRLabel21: TQRLabel;
    lbCreditSum: TQRExpr;
    QRLabel20: TQRLabel;
    lbDebitSum: TQRExpr;
    bandDebitDoc: TQRSubDetail;
    QRLabel25: TQRLabel;
    lbDebitDocSum: TQRExpr;
    bandBeznal: TQRSubDetail;
    qryDebit: TIBQuery;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    lbDocDebitSum: TQRDBText;
    qryDebitDoc: TIBQuery;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    qryBeznal: TIBQuery;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    lbDocBeznalSum: TQRDBText;
    footBeznal: TQRBand;
    lbBeznalSum: TQRExpr;
    lbDocDebitDocSum: TQRExpr;
    lbQueryCaption: TQRLabel;
    lbKassaSum: TQRLabel;
    lbInSum: TQRLabel;
    lbInNdsSum: TQRLabel;
    lbOstSum: TQRLabel;
    bandDoc: TQRSubDetail;
    bandInnerDoc: TQRSubDetail;
    lbOutSum2: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    lbOutNdsSum2: TQRDBText;
    QRShape13: TQRShape;
    lbNalogSum2: TQRDBText;
    QRShape14: TQRShape;
    lbQueryCaption2: TQRLabel;
    lbInSum2: TQRLabel;
    lbInNdsSum2: TQRLabel;
    lbOstSum2: TQRLabel;
    hdrInnerDoc: TQRChildBand;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    lbInSumCaption2: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape26: TQRShape;
    QRShape28: TQRShape;
    QRShape31: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape32: TQRShape;
    footInnerDoc: TQRBand;
    QRLabel19: TQRLabel;
    qryInnerDoc: TIBQuery;
    hdrInner: TQRChildBand;
    QRLabel2: TQRLabel;
    bandInner: TQRSubDetail;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    lbDocInnerSum: TQRDBText;
    footInner: TQRBand;
    lbInnerSum: TQRExpr;
    qryInner: TIBQuery;
    hdrTransport: TQRChildBand;
    lbTransport: TQRLabel;
    bandTransport: TQRSubDetail;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    lbDocTransportSum: TQRDBText;
    footTransport: TQRBand;
    lbTransportSum: TQRExpr;
    qryTransport: TIBQuery;
    procedure ReportDayBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure hdrDocBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure lbQueryCaptionPrint(sender: TObject; var Value: String);
    procedure qryInnerBeforeOpen(DataSet: TDataSet);
    procedure bandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bandKassaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bandDocBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    fnds:boolean;
    ofs:integer;
    RecNo:integer;
    LastDate,MonthDate,YearDate:TDateTime;
  protected
  public
    constructor Create(AOwner:TComponent); override;
    procedure init(dt:TDateTime);
  end;


implementation
uses DataUnit,DyUtils;
{$R *.DFM}

constructor TReportDay.Create(AOwner:TComponent);
begin
  inherited;
  ofs:=lbTitle.Left;
  lbOutSum.Mask:=FormatCur;
  lbOutNdsSum.Mask:=FormatCur;
  //lbInSum.Mask:=FormatCur;
  //lbInNdsSum.Mask:=FormatCur;
  //lbOstSum.Mask:=FormatCur;
  lbNalogSum.Mask:=FormatCur;

  lbOutSum2.Mask:=FormatCur;
  lbOutNdsSum2.Mask:=FormatCur;
  //lbInSum2.Mask:=FormatCur;
  //lbInNdsSum2.Mask:=FormatCur;
  //lbOstSum2.Mask:=FormatCur;
  lbNalogSum2.Mask:=FormatCur;

  lbKassaInSum.Mask:=FormatCur;
  lbKassaOutSum.Mask:=FormatCur;

  lbDocCreditSum.Mask:=FormatCur;
  lbCreditSum.Mask:=FormatCur;

  lbDocDebitSum.Mask:=FormatCur;
  lbDebitSum.Mask:=FormatCur;

  lbDocDebitDocSum.Mask:=FormatCur;
  lbDebitDocSum.Mask:=FormatCur;

  lbDocBeznalSum.Mask:=FormatCur;
  lbBeznalSum.Mask:=FormatCur;

  lbDocInnerSum.Mask:=FormatCur;
  lbInnerSum.Mask:=FormatCur;
  
  lbDocTransportSum.Mask:=FormatCur;
  lbTransportSum.Mask:=FormatCur;
end;

procedure TReportDay.init(dt:TDateTime);
var
    Y,M,D:word;
begin
    LastDate:=dt;
    DecodeDate(LastDate,Y,M,D);
    MonthDate:=EncodeDate(Y,M,1);

    YearDate:=EncodeDate(Y,1,1);

    qryDoc.Active:=true;
    qryInnerDoc.Active:=true;
    qryKassaOut.Active:=true;
    qryKassaIn.Active:=true;
    qryCredit.Active:=true;
    qryDebit.Active:=true;
    qryDebitDoc.Active:=true;
    qryBeznal.Active:=true;
    qryInner.Active:=true;
    qryTransport.Active:=true;
end;

procedure TReportDay.qryInnerBeforeOpen(DataSet: TDataSet);
var qry:TIBQuery;
begin
    qry:=TIBQuery(DataSet);
    qry.ParamByName('clientid').AsInteger:=Data.qrySkladCLIENTID.Value;
    qry.ParamByName('last_date').AsDateTime:=LastDate;
    if (qry=qryDoc) or (qry=qryInnerDoc) then begin
        qry.ParamByName('month_date').AsDateTime:=MonthDate;
        qry.ParamByName('year_date').AsDateTime:=YearDate;
    end;
end;

procedure TReportDay.ReportDayBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var H:integer;
begin
    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    if (imgLogo.Picture.Graphic=nil) or (imgLogo.Picture.Graphic.Empty) then H:=imgLogo.Width+20 else H:=0;
    lbTitle.Left:=ofs-H;
    lbCaption.Left:=lbTitle.Left;
    lbDate.Caption:=FormatDateTime('d mmmm yyyy года',LastDate);
    fnds:=(data.qrySkladDOCPARAM1.Value and dpNds)<>0;
    if fnds then lbInSumCaption.Caption:='Чистый товар без НДС' else lbInSumCaption.Caption:='Покупной товар';
    lbInSumCaption2.Caption:=lbInSumCaption.Caption;
    lbTransport.Caption := TransportName;
end;

procedure TReportDay.hdrDocBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    RecNo:=0;
end;

procedure TReportDay.lbQueryCaptionPrint(sender: TObject;
  var Value: String);
begin
    inc(RecNo);
    case RecNo of
    1: Value:='За день';
    2: Value:='С начала месяца';
    3: Value:='С начала года';
    end;
end;

procedure TReportDay.bandDocBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
    insum,innds,ostsum:double;
    qry:TDataSet;
begin
    qry:=TQRSubDetail(Sender).DataSet;
    if fnds then begin
        innds:=qry.FieldByName('IN_NDS').AsFloat;
        insum:=qry.FieldByName('IN_SUM').AsFloat-innds;
        ostsum:=qry.FieldByName('OUT_SUM').AsFloat-qry.FieldByName('OUT_NDS').AsFloat-qry.FieldByName('NALOG').AsFloat-insum;
    end else begin
        innds:=0;
        insum:=qry.FieldByName('IN_SUM').AsFloat;
        ostsum:=qry.FieldByName('OUT_SUM').AsFloat-qry.FieldByName('OUT_NDS').AsFloat-qryDoc.FieldByName('NALOG').AsFloat-insum;
        lbInSum.Caption:=FormatFloat(FormatCur,insum);
        lbInNdsSum.Caption:='-';
        lbOstSum.Caption:=FormatFloat(FormatCur,ostsum);
    end;
    if (Sender=bandDoc) then begin
        lbInSum.Caption:=FormatFloat(FormatCur,insum);
        lbOstSum.Caption:=FormatFloat(FormatCur,ostsum);
        if fnds then lbInNdsSum.Caption:=FormatFloat(FormatCur,innds)
        else lbInNdsSum.Caption:='-';
    end else begin
        lbInSum2.Caption:=FormatFloat(FormatCur,insum);
        lbOstSum2.Caption:=FormatFloat(FormatCur,ostsum);
        if fnds then lbInNdsSum2.Caption:=FormatFloat(FormatCur,innds)
        else lbInNdsSum2.Caption:='-';
    end;
end;

procedure TReportDay.bandKassaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbKassaSum.Caption:=FormatFloat(FormatCur,qryKassaIn.FieldByName('INSUM').AsFloat-qryKassaOut.FieldByName('OUTSUM').AsFloat);
end;

procedure TReportDay.bandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=not TQRSubDetail(Sender).DataSet.Fields[0].IsNull;
    if Sender=bandDebitDoc then PrintBand:=PrintBand and ((qryDebitDoc.Fields[1].AsFloat+qryDebitDoc.Fields[2].AsFloat)<>0);
end;

end.
