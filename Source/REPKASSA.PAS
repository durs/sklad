unit repkassa;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, DBTables,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Variants;

type
  TReportKassa = class(TQuickRep)
    bandPageHeader: TQRBand;
    bandSubDetail: TQRSubDetail;
    QRShape4: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    bandHeader: TQRChildBand;
    QRShape21: TQRShape;
    qry: TIBQuery;
    QRShape2: TQRShape;
    bandFooter: TQRBand;
    QRLabel18: TQRLabel;
    lbSumCaption2: TQRLabel;
    lbSum2: TQRLabel;
    lbBugalter: TQRLabel;
    QRShape22: TQRShape;
    QRLabel7: TQRLabel;
    lbKassir: TQRLabel;
    QRShape9: TQRShape;
    QRLabel5: TQRLabel;
    lbComment: TQRLabel;
    bandHeaderChild: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape24: TQRShape;
    QRShape29: TQRShape;
    QRShape32: TQRShape;
    QRShape37: TQRShape;
    QRShape1: TQRShape;
    imgLogo: TQRImage;
    lbTitle: TQRDBText;
    lbCaption: TQRDBText;
    QRLabel2: TQRLabel;
    lbDate: TQRLabel;
    lbPage: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    lbNo: TQRExpr;
    lbSumCaption1: TQRLabel;
    lbSum1: TQRLabel;
    lbDocInSum: TQRDBText;
    lbDocOutSum: TQRDBText;
    lbInSum: TQRExpr;
    lbOutSum: TQRExpr;
    qrySum: TIBQuery;
    procedure bandSubDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bandPageHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bandHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bandFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    ofs:integer;
    PrintTitle:boolean;
    InCount,OutCount:integer;
  public
    sum: variant;
    pageno: variant;
    constructor Create(AOwner:TComponent); override;
  end;

implementation
uses dataunit;
{$R *.DFM}

constructor TReportKassa.Create(AOwner:TComponent);
begin
    inherited;
    sum := null;
    pageno := null;
    ofs := lbTitle.Left;
    lbDocInSum.Mask := FormatCur;
    lbDocOutSum.Mask := FormatCur;
    lbInSum.Mask := FormatCur;
    lbOutSum.Mask := FormatCur;
end;

procedure TReportKassa.ReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    s: string;
    H: integer;
    date1, date2: TDateTime;
    y, m, d: Word;
begin
    if VarIsNull(sum) then
    try
        date2 := Trunc(qry.Params.Items[1].AsFloat);
        DecodeDate(date2, y, m, d);
        date1 := EncodeDate(y, 1, 1);

        qrySum.Params.Items[0].Assign(qry.Params.Items[0]);
        qrySum.Params.Items[1].AsDateTime := date1;
        qrySum.Params.Items[2].AsDateTime := date2;
        qrySum.Active := true;
        sum := -qrySum.Fields.Fields[0].AsFloat;
    finally
        qrySum.Active := false;
    end;

    if VarIsNull(pageno) then
    begin

    end;

    data.getBlobImage(Data.qrySkladLOGO,imgLogo.Picture);
    if (imgLogo.Picture.Graphic = nil) or (imgLogo.Picture.Graphic.Empty) then H := imgLogo.Width + 20 else H := 0;
    lbTitle.Left := ofs - H;
    lbCaption.Left := lbTitle.Left;
    s := Data.qrySkladBUGALTER.Value;
    if s <> '' then s := '/' + s + '/';
    lbBugalter.Caption := s;
    s := Data.qrySkladKASSIR.Value;
    if s <> '' then s := '/' + s + '/';
    lbKassir.Caption := s;

    if qry.ParamByName('date1').AsDateTime = qry.ParamByName('date2').AsDateTime then begin
        lbDate.Caption := 'за ' + qry.ParamByName('date1').AsString;
        lbSumCaption1.Caption := 'Остаток на начало дня :';
        lbSumCaption2.Caption := 'Остаток на конец дня :';
    end else begin
        lbDate.Caption := 'с ' + qry.ParamByName('date1').AsString + ' по ' + qry.ParamByName('date2').AsString;
        lbSumCaption1.Caption := 'Остаток на начало периода :';
        lbSumCaption2.Caption := 'Остаток на конец периода :';
    end;
    lbPage.Expression := '''' + ReportTitle + ' ' + lbDate.Caption + ' Страница ''+PAGENUMBER';
    lbSum1.Caption := FormatFloat(FormatCur, sum);
    PrintTitle := true;
    InCount := 0; OutCount := 0;
end;

procedure TReportKassa.bandHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand := PrintTitle;
end;

procedure TReportKassa.bandPageHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand := not PrintTitle;
    PrintTitle := false;
end;

procedure TReportKassa.bandSubDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if qry.FieldByName('KIND').AsInteger = 1 then inc(InCount) else inc(OutCount);
end;

procedure TReportKassa.bandFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbSum2.Caption := FormatFloat(FormatCur, sum + lbInSum.Value.dblResult - lbOutSum.Value.dblResult);
    lbComment.Caption := 'Проверил и документы в количестве ' + IntToStr(InCount) + ' приходных и ' + IntToStr(OutCount) + ' расходных получил';
end;

end.

