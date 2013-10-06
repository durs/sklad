unit repdoc2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  IBCustomDataSet, IBQuery;

type
  TReportDoc2 = class(TQuickRep)
    DetailBand: TQRBand;
    SubDetailBand: TQRSubDetail;
    HeaderBand: TQRChildBand;
    FooterBand: TQRChildBand;
    mInfo: TQRMemo;
    QRShape11: TQRShape;
    QRLabel13: TQRLabel;
    QRShape12: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    lbSum: TQRDBText;
    lbCount: TQRDBText;
    lbUnit: TQRDBText;
    lbPrice: TQRDBText;
    PageHeaderBand: TQRBand;
    PageLabel: TQRExpr;
    lbNo: TQRExpr;
    lbTitle: TQRLabel;
    lbCaption: TQRLabel;
    qryDoc: TIBQuery;
    qryRec: TIBQuery;
    lbComment1: TQRLabel;
    lbProduct: TQRDBText;
    qryClient: TIBQuery;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRShape16: TQRShape;
    QRLabel9: TQRLabel;
    lbSum2: TQRLabel;
    lbSum3: TQRLabel;
    QRLabel12: TQRLabel;
    lbClient: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRLabel3: TQRLabel;
    QRShape6: TQRShape;
    QRLabel4: TQRLabel;
    QRShape7: TQRShape;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape17: TQRShape;
    QRLabel10: TQRLabel;
    QRShape18: TQRShape;
    lbDim: TQRDBText;
    lbDocCaption: TQRLabel;
    lbDocDate: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    lbDocNo: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    lbAllCount: TQRLabel;
    QRShape15: TQRShape;
    FooterBand2: TQRChildBand;
    QRLabel8: TQRLabel;
    lbDocCount: TQRExpr;
    lbDocSum: TQRDBText;
    lbDocSum2: TQRLabel;
    lbDocSum3: TQRLabel;
    lbDocSumText: TQRLabel;
    lbAddon: TQRLabel;
    lbDocNdsSum: TQRDBText;
    lbAddon2: TQRLabel;
    lbAddonSum2: TQRLabel;
    lbAddon3: TQRLabel;
    lbAddonSum3: TQRLabel;
    lbTransport: TQRLabel;
    lbDocTransportSum: TQRDBText;
    procedure FooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SubDetailBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FooterBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    f1,f2,f3,f4:TField;
    sum:double;
  protected
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure setDataset(qry:TDataSet);
    procedure setSubDataset(qry:TDataSet);
  end;

var
    ReportDoc2:TReportDoc2;

implementation
uses DataUnit, DyUtils, Print;
{$R *.DFM}

constructor TReportDoc2.Create(AOwner:TComponent);
begin
  inherited;
  lbCount.Mask:=FormatNum;
  lbDocCount.Mask:=FormatNum;
  lbUnit.Mask:=FormatNum;
  lbPrice.Mask:=FormatCur;
  lbSum.Mask:=FormatCur;
  lbDocSum.Mask:=FormatCur;
  lbDocTransportSum.Mask:=FormatCur;
  lbDocNdsSum.Mask:=FormatCur;
end;

destructor TReportDoc2.Destroy;
begin
    if self=ReportDoc2 then ReportDoc2:=nil;
    inherited;
end;

procedure TReportDoc2.setDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then exit;
    lbDocDate.DataSet:=qry;
    lbDocSum.DataSet:=qry;
    lbDocTransportSum.DataSet:=qry;
    lbDocNdsSum.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportDoc2.setSubDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryRec;
    if SubDetailBand.DataSet=qry then exit;
    lbProduct.DataSet:=qry;
    lbDim.DataSet:=qry;
    lbUnit.DataSet:=qry;
    lbCount.DataSet:=qry;
    lbPrice.DataSet:=qry;
    lbSum.DataSet:=qry;
    SubDetailBand.DataSet:=qry;
end;

procedure TReportDoc2.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    str, font: string;
    v: double;
begin
    str := 'Внутренняя накладная';
    ReportTitle := str + ' №' + Dataset.FieldByName('DOCNO').AsString + ' от ' + Dataset.FieldByName('DATE1').AsString;
    PageLabel.Expression := '''' + ReportTitle + ' Страница ''+PAGENUMBER';
    lbDocCaption.Caption := UpperCase(str);
    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        lbTitle.Caption := Data.qrySkladTITLE.Value;
        lbCaption.Caption := Data.qrySkladCAPTION.Value;
        data.getClientInfo(Data.qrySklad,mInfo.Lines);
        lbComment1.Caption := Data.qrySkladCOMMENT1.Value;
        font := Data.qrySkladFONTNAME.Value;
    end else try
        qryClient.Params[0].AsInteger := Dataset.FieldByName('CLIENTID1').AsInteger;
        qryClient.Active := true;
        lbTitle.Caption := Dataset.FieldByName('CLIENT1').AsString;
        lbCaption.Caption := '';
        data.getClientInfo(qryClient,mInfo.Lines);
        lbComment1.Caption := '';
    finally
        qryClient.Active := false;
    end;
    if lbTitle.left < 1 then begin
        lbTitle.Left := 1;
        lbCaption.Width := lbTitle.Width;
    end;
    ChangeReportFont(self, font);

    str := Dataset.FieldByName('PARAM5').AsString;
    if str <> '' then str := ' через ' + Dataset.FieldByName('PARAM5').Value;
    lbClient.Caption := Dataset.FieldByName('CLIENT2').AsString + str;
    lbDocNo.Caption := Dataset.FieldByName('DOCNO').AsString;

    v := Dataset.FieldByName('PARAM3').AsFloat;
    if (v = 0) then begin
        lbAddon2.Caption := '';
        lbAddonSum2.Caption := '';
    end else begin
        lbAddon2.Caption := 'Налог с продаж ' + FormatFloat(FormatPer, v) + ' %';
        lbAddonSum2.Caption := FormatFloat(FormatCur, v);
    end;

    lbAddon3.Caption := '';
    lbAddonSum3.Caption := '';

    f1 := SubDetailBand.Dataset.FieldByName('CNT');
    f2 := SubDetailBand.Dataset.FieldByName('UNIT');
    f3 := SubDetailBand.Dataset.FieldByName('INPRICE');
    f4 := SubDetailBand.Dataset.FieldByName('SUMM');
    sum := 0;
end;

procedure TReportDoc2.SubDetailBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var v: double;
begin
    with SubDetailBand.DataSet do begin
        //lbAllCount.Caption := FormatFloat(FormatNum, FieldByName('ALLCNT').AsFloat);
        if LowerCase(FieldByName('DIM').AsString) = 'шт' then lbAllCount.Caption := FormatFloat(FormatNum, FieldByName('ALLCNT').AsFloat)
        else lbAllCount.Caption := '';
    end;

    v := f1.AsFloat * f2.AsFloat * f3.AsFloat;
    lbSum2.Caption := FormatFloat(FormatCur, v);
    lbSum3.Caption := FormatFloat(FormatCur, f4.AsFloat - v);
    sum := sum + v;
end;

procedure TReportDoc2.FooterBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand := Dataset.FieldByName('SUM3').AsFloat <> 0;
    lbTransport.Caption := TransportName;
end;

procedure TReportDoc2.FooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var v: double;
begin
    v := Dataset.FieldByName('SUM0').AsFloat;
    lbDocSumText.Caption := CurrConvert(v);
    lbDocSum2.Caption := FormatFloat(FormatCur, sum);
    lbDocSum3.Caption := FormatFloat(FormatCur, v - sum);
end;

end.
