unit repdebit;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TReportDebit = class(TQuickRep)
    bandHeader: TQRBand;
    bandDebit: TQRSubDetail;
    QRShape10: TQRShape;
    QRShape2: TQRShape;
    hdrDebit: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    qryDebit: TIBQuery;
    qryCredit: TIBQuery;
    bandCredit: TQRSubDetail;
    CreditColumnHeaderBand: TQRChildBand;
    footDebit: TQRBand;
    bandPage: TQRBand;
    lbPage: TQRExpr;
    QRLabel6: TQRLabel;
    footCredit: TQRBand;
    bandSummary: TQRChildBand;
    QRLabel13: TQRLabel;
    lbSum: TQRLabel;
    hdrCredit: TQRChildBand;
    lbCreditCaption: TQRLabel;
    imgLogo: TQRImage;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    QRSysData1: TQRSysData;
    lbDate: TQRLabel;
    lbReportCaption: TQRLabel;
    lbDebitClient: TQRDBText;
    lbDebitDoc: TQRDBText;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    lbCreditClient: TQRDBText;
    QRShape3: TQRShape;
    lbCreditDoc: TQRDBText;
    QRShape4: TQRShape;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    lbDebitSum: TQRLabel;
    lbCreditSum: TQRLabel;
    lbDebit: TQRLabel;
    lbCredit: TQRLabel;
    qryDebitSummary: TIBQuery;
    qryCreditSummary: TIBQuery;
    lbKind: TQRLabel;
    procedure bandSummaryBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure hdrCreditBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure footDebitBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure footCreditBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bandDebitBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bandCreditBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qryDebitSummaryBeforeOpen(DataSet: TDataSet);
  private
    ofs:integer;
    DebitSum,CreditSum:double;
  protected
  public
    clientid:integer;
    kind:integer;
    constructor Create(AOwner:TComponent); override;
    procedure setDebitQuery(qry:TIBQuery; summary:boolean=false);
    procedure setCreditQuery(qry:TIBQuery; summary:boolean=false);
  end;

implementation
uses DataUnit;
{$R *.DFM}

constructor TReportDebit.Create(AOwner:TComponent);
begin
    inherited;
    ofs:=lbTitle.Left;
end;

procedure TReportDebit.qryDebitSummaryBeforeOpen(DataSet: TDataSet);
begin
    TIBQuery(DataSet).ParamByName('CLIENTID').AsInteger:=clientid;
    TIBQuery(DataSet).ParamByName('KIND').AsInteger:=kind;
end;

procedure TReportDebit.setDebitQuery(qry:TIBQuery; summary:boolean=false);
begin
    if (qry=nil) then begin
        if summary then qry:=qryDebitSummary else qry:=qryDebit;
    end;
    qry.Active:=true;
    bandDebit.DataSet:=qry;
    lbDebitClient.DataSet:=qry;
    lbDebitDoc.DataSet:=qry;
end;

procedure TReportDebit.setCreditQuery(qry:TIBQuery; summary:boolean=false);
begin
    if (qry=nil) then begin
        if summary then qry:=qryCreditSummary else qry:=qryCredit;
    end;
    qry.Active:=true;
    bandCredit.DataSet:=qry;
    lbCreditClient.DataSet:=qry;
    lbCreditDoc.DataSet:=qry;
end;

procedure TReportDebit.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var H:integer;
begin
    if bandDebit.DataSet.Active and not bandDebit.DataSet.EOF then lbReportCaption.Caption:=AnsiUpperCase(ReportTitle) else lbReportCaption.Caption:=lbCreditCaption.Caption;
    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    if (imgLogo.Picture.Graphic=nil) or (imgLogo.Picture.Graphic.Empty) then H:=imgLogo.Width+20 else H:=0;
    lbTitle.Left:=ofs-H;
    lbCaption.Left:=lbTitle.Left;
    lbDate.Caption:=FormatDateTime('d mmmm yyyy года',Date);
    if kind=1 then lbKind.Caption:='Покупатели'
    else if kind=2 then lbKind.Caption:='Поставщики'
    else lbKind.Caption:='';
    DebitSum:=0; CreditSum:=0;
end;

procedure TReportDebit.hdrCreditBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=bandCredit.DataSet.Active and bandDebit.DataSet.Active;
end;

procedure TReportDebit.bandDebitBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var v:double;
begin
    v:=bandDebit.DataSet.FieldByName('OST').AsFloat;
    lbDebit.Caption:=FormatFloat(FormatCur,v);
    DebitSum:=DebitSum+v;
end;

procedure TReportDebit.footDebitBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbDebitSum.Caption:=FormatFloat(FormatCur,DebitSum);
end;

procedure TReportDebit.bandCreditBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var v:double;
begin
    v:=-bandCredit.DataSet.FieldByName('OST').AsFloat;
    lbCredit.Caption:=FormatFloat(FormatCur,v);
    CreditSum:=CreditSum+v;
end;

procedure TReportDebit.footCreditBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbCreditSum.Caption:=FormatFloat(FormatCur,CreditSum);
end;

procedure TReportDebit.bandSummaryBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=bandCredit.DataSet.Active and bandDebit.DataSet.Active;
    lbSum.Caption:=FormatFloat(FormatCur,DebitSum-CreditSum);
end;

end.
