unit REPSALDO2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TReportSaldo2 = class(TQuickRep)
    bandHeader: TQRBand;
    bandDebit: TQRSubDetail;
    QRShape10: TQRShape;
    QRShape2: TQRShape;
    hdrDeb: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    qry: TIBQuery;
    footDebit: TQRBand;
    bandPage: TQRBand;
    lbPage: TQRExpr;
    bandSummary: TQRChildBand;
    QRLabel13: TQRLabel;
    lbSum2: TQRLabel;
    imgLogo: TQRImage;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    lbDate: TQRLabel;
    lbReportCaption: TQRLabel;
    lbDebitDoc: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    lbDebit: TQRDBText;
    lbCredit: TQRDBText;
    lbDebitSum: TQRExpr;
    lbCreditSum: TQRExpr;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    lbSum1: TQRLabel;
    qryDOC: TIBStringField;
    qryDEBIT: TFloatField;
    qryCREDIT: TFloatField;
    QRExpr1: TQRExpr;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel6: TQRLabel;
    qryCLIENT1: TIBStringField;
    qryCLIENT2: TIBStringField;
    lbDebitClient: TQRLabel;
    qryCLIENTID1: TIntegerField;
    qryCLIENTID2: TIntegerField;
    procedure bandSummaryBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bandDebitBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    fBegin:boolean;
    Sum1:double;
    ofs:integer;
  protected
  public
    constructor Create(AOwner:TComponent); override;
  end;

implementation
uses DataUnit;
{$R *.DFM}

constructor TReportSaldo2.Create(AOwner:TComponent);
begin
    inherited;
    ofs:=lbTitle.Left;
    lbDebit.Mask:=FormatCur;
    lbDebitSum.Mask:=FormatCur;
    lbCredit.Mask:=FormatCur;
    lbCreditSum.Mask:=FormatCur;
end;


procedure TReportSaldo2.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var H:integer;
begin
    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    if (imgLogo.Picture.Graphic=nil) or (imgLogo.Picture.Graphic.Empty) then H:=imgLogo.Width+20 else H:=0;
    lbTitle.Left:=ofs-H;
    lbCaption.Left:=lbTitle.Left;
    lbDate.Caption:='� '+qry.ParamByName('date1').AsString+' �� '+qry.ParamByName('date2').AsString;
    lbPage.Expression:=''''+ReportTitle+' '+lbDate.Caption+' �������� ''+PAGENUMBER';

    qry.First;
    Sum1:=qryDEBIT.AsFloat - qryCREDIT.AsFloat;
    lbSum1.Caption:=FormatFloat(FormatCur, Sum1);
    fBegin:=true;
end;

procedure TReportSaldo2.bandDebitBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var name: string;
begin
  if qryCLIENTID1.AsInteger = Data.qrySkladCLIENTID.AsInteger
    then name := qryCLIENT2.AsString
    else name := qryCLIENT1.AsString;
  lbDebitClient.Caption := name;
  if fBegin then begin
      fBegin := false;
      qry.Next;
      PrintBand := not qry.EOF;
  end;
end;

procedure TReportSaldo2.bandSummaryBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbSum2.Caption:=FormatFloat(FormatCur,Sum1+lbDebitSum.Value.dblResult-lbCreditSum.Value.dblResult);
end;

end.
