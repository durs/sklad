unit repdoc1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  IBCustomDataSet, IBQuery;

type
  TReportDoc1 = class(TQuickRep)
    DetailBand: TQRBand;
    SubDetailBand: TQRSubDetail;
    HeaderBand: TQRChildBand;
    FooterBand: TQRChildBand;
    lbDocCaption: TQRLabel;
    lbDocDate: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    mInfo: TQRMemo;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape11: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRLabel3: TQRLabel;
    QRShape9: TQRShape;
    QRShape6: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    lbSertificat: TQRDBText;
    lbSum: TQRDBText;
    lbCount: TQRDBText;
    lbUnit: TQRDBText;
    lbPrice: TQRDBText;
    lbClient: TQRLabel;
    PageHeaderBand: TQRBand;
    PageLabel: TQRExpr;
    lbNo: TQRExpr;
    lbTitle: TQRLabel;
    QRLabel6: TQRLabel;
    lbCaption: TQRLabel;
    qryDoc: TIBQuery;
    qryRec: TIBQuery;
    lbComment1: TQRLabel;
    lbProduct: TQRDBText;
    qryClient: TIBQuery;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRShape16: TQRShape;
    lbDim: TQRDBText;
    lbDocNo: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    lbAllCount: TQRLabel;
    FooterBand2: TQRChildBand;
    lbKladovchik: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape15: TQRShape;
    lbDocSumText: TQRLabel;
    lbDocCount: TQRExpr;
    QRLabel18: TQRLabel;
    lbAddon: TQRLabel;
    lbAddon2: TQRLabel;
    lbDocSum: TQRDBText;
    lbComment2: TQRLabel;
    lbDocNdsSum: TQRDBText;
    QRShape2: TQRShape;
    lbWeight: TQRLabel;
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
    weight: double;
  protected
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure setDataset(qry:TDataSet);
    procedure setSubDataset(qry:TDataSet);
  end;

var
    ReportDoc1:TReportDoc1;

implementation
uses DataUnit, DyUtils, Print;
{$R *.DFM}

constructor TReportDoc1.Create(AOwner:TComponent);
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

destructor TReportDoc1.Destroy;
begin
    if self=ReportDoc1 then ReportDoc1:=nil;
    inherited;
end;

procedure TReportDoc1.setDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then exit;
    lbDocDate.DataSet:=qry;
    lbDocSum.DataSet:=qry;
    lbDocTransportSum.DataSet:=qry;
    lbDocNdsSum.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportDoc1.setSubDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryRec;
    if SubDetailBand.DataSet=qry then exit;
    lbProduct.DataSet:=qry;
    lbDim.DataSet:=qry;
    lbUnit.DataSet:=qry;
    lbCount.DataSet:=qry;
    lbPrice.DataSet:=qry;
    lbSum.DataSet:=qry;
    lbSertificat.DataSet:=qry;
    SubDetailBand.DataSet:=qry;
end;

procedure TReportDoc1.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    str, str2, font:string;
    v:double;
begin
    if Dataset.FieldByName('SKIND').AsInteger=docCheck then begin
        str:='Товарный чек';
    end else begin
        if Dataset.FieldByName('SUM0').AsFloat<0 then str:='Возвратная накладная' else str:='Накладная';
    end;
    ReportTitle:=str+' №'+Dataset.FieldByName('DOCNO').AsString+' от '+Dataset.FieldByName('DATE1').AsString;
    PageLabel.Expression:=''''+ReportTitle+' Страница ''+PAGENUMBER';
    lbDocCaption.Caption:=UpperCase(str);
    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        lbTitle.Caption:=Data.qrySkladTITLE.Value;
        lbCaption.Caption:=Data.qrySkladCAPTION.Value;
        data.getClientInfo(Data.qrySklad, mInfo.Lines);
        lbComment1.Caption:=Data.qrySkladCOMMENT1.Value;
        lbComment2.Caption:=Data.qrySkladCOMMENT2.Value;

        str:=Data.qrySkladKLADOVCHIK.Value;
        if str<>'' then str:='/'+str+'/';
        lbKladovchik.Caption:=str;

        font:=Data.qrySkladFONTNAME.Value;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID1').AsInteger;
        qryClient.Active:=true;
        lbTitle.Caption:=Dataset.FieldByName('CLIENT1').AsString;
        lbCaption.Caption:='';
        data.getClientInfo(qryClient, mInfo.Lines);
        lbComment1.Caption:='';
        lbComment2.Caption:='';
        lbKladovchik.Caption:='';
    finally
        qryClient.Active:=false;
    end;
    if lbTitle.left<1 then begin
        lbTitle.Left:=1;
        lbCaption.Width:=lbTitle.Width;
    end;
    ChangeReportFont(self, font);

    str := Dataset.FieldByName('PARAM5').AsString;
    if str <> '' then str := ' через ' + str;
    str2 := Dataset.FieldByName('ADDRESS2').AsString;
    if str2 <> '' then str2 := '    Грузополучатель: ' + str2;
    lbClient.Caption:=Dataset.FieldByName('CLIENT2').AsString + str + str2;

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

    weight := 0;
end;

procedure TReportDoc1.SubDetailBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    with SubDetailBand.DataSet do begin
        weight := weight + FieldByName('ALLCNT').AsFloat * FieldByName('WEIGHT').AsFloat;
        //lbAllCount.Caption := FormatFloat(FormatNum, FieldByName('ALLCNT').AsFloat)
        if LowerCase(FieldByName('DIM').AsString) = 'шт' then lbAllCount.Caption := FormatFloat(FormatNum, FieldByName('ALLCNT').AsFloat)
        else lbAllCount.Caption := '';
    end;
end;

procedure TReportDoc1.FooterBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand := Dataset.FieldByName('SUM3').AsFloat <> 0;
    lbTransport.Caption := TransportName;
end;

procedure TReportDoc1.FooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbDocSumText.Caption := CurrConvert(Dataset.FieldByName('SUM0').AsFloat);
    if (weight < 0.0001) then lbWeight.Caption := ''
    else lbWeight.Caption := 'Вес нетто: ' + FormatFloat(FormatNum, weight) + ' кг.';
end;

end.
