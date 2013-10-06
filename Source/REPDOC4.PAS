unit repdoc4;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  IBCustomDataSet, IBQuery;

type
  TReportDoc4 = class(TQuickRep)
    DetailBand: TQRBand;
    SubDetailBand: TQRSubDetail;
    HeaderBand: TQRChildBand;
    FooterBand: TQRChildBand;
    QRLabel12: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape15: TQRShape;
    lbDocCount: TQRExpr;
    lbClient: TQRLabel;
    PageHeaderBand: TQRBand;
    PageLabel: TQRExpr;
    lbTitle: TQRLabel;
    lbCaption: TQRLabel;
    qryDoc: TIBQuery;
    qryRec: TIBQuery;
    qryClient: TIBQuery;
    QRShape2: TQRShape;
    lbDocCaption: TQRLabel;
    lbDocDate: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    lbDocNo: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape11: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    lbSertificat: TQRDBText;
    lbCount: TQRDBText;
    lbUnit: TQRDBText;
    lbPrice: TQRDBText;
    lbNo: TQRExpr;
    lbProduct: TQRDBText;
    QRShape16: TQRShape;
    lbDim: TQRDBText;
    lbSum: TQRLabel;
    lbDocSum: TQRLabel;
    procedure FooterBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SubDetailBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    DocSum:double;
  protected
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure setDataset(qry:TDataSet);
    procedure setSubDataset(qry:TDataSet);
  end;

var
    ReportDoc4:TReportDoc4;

implementation
uses DataUnit, DyUtils, Print;
{$R *.DFM}

constructor TReportDoc4.Create(AOwner:TComponent);
begin
  inherited;
  lbCount.Mask:=FormatNum;
  lbDocCount.Mask:=FormatNum;
  lbUnit.Mask:=FormatNum;
  lbPrice.Mask:=FormatCur;
end;

destructor TReportDoc4.Destroy;
begin
    if self=ReportDoc4 then ReportDoc4:=nil;
    inherited;
end;

procedure TReportDoc4.setDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then exit;
    lbDocDate.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportDoc4.setSubDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryRec;
    if SubDetailBand.DataSet=qry then exit;
    lbProduct.DataSet:=qry;
    lbDim.DataSet:=qry;
    lbUnit.DataSet:=qry;
    lbCount.DataSet:=qry;
    lbPrice.DataSet:=qry;
    lbSertificat.DataSet:=qry;
    SubDetailBand.DataSet:=qry;
end;

procedure TReportDoc4.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var str, font:string;
begin
    str:='Накладная на реализацию';
    ReportTitle:=str+' №'+Dataset.FieldByName('DOCNO').AsString+' от '+Dataset.FieldByName('DATE1').AsString;
    PageLabel.Expression:=''''+ReportTitle+' Страница ''+PAGENUMBER';
    lbDocCaption.Caption:=UpperCase(str);
    if data.setActiveSklad(Dataset.FieldByName('CLIENTID2').AsInteger) then begin
        lbTitle.Caption:=Data.qrySkladTITLE.Value;
        lbCaption.Caption:=Data.qrySkladCAPTION.Value;
        font:=Data.qrySkladFONTNAME.Value;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID2').AsInteger;
        qryClient.Active:=true;
        lbTitle.Caption:=Dataset.FieldByName('CLIENT2').AsString;
        lbCaption.Caption:='';
    finally
        qryClient.Active:=false;
    end;
    if lbTitle.left<1 then begin
        lbTitle.Left:=1;
        lbCaption.Width:=lbTitle.Width;
    end;
    ChangeReportFont(self, font);

    str:='';
    //str:=Dataset.FieldByName('PARAM5').AsString;
    //if str<>'' then str:=' через '+Dataset.FieldByName('PARAM5').Value;
    lbClient.Caption:=Dataset.FieldByName('CLIENT1').AsString+str;
    lbDocNo.Caption:=Dataset.FieldByName('DOCNO').AsString;
    DocSum:=0;
end;

procedure TReportDoc4.SubDetailBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var V:double;
begin
    with SubDetailBand.Dataset do
        V:=CurrRound(FieldByName('UNIT').AsFloat*FieldByName('CNT').AsFloat*FieldByName('NEWPRICE').AsFloat);
    lbSum.Caption:=FormatFloat(FormatCur, V);
    DocSum:=DocSum+V;
end;

procedure TReportDoc4.FooterBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbDocSum.Caption:=FormatFloat(FormatCur,DocSum);
    //lbDocSumText.Caption:=CurrConvert(DocSum);
end;

end.
