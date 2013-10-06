unit repdoc3;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  IBCustomDataSet, IBQuery;

type
  TReportDoc3 = class(TQuickRep)
    DetailBand: TQRBand;
    SubDetailBand: TQRSubDetail;
    HeaderBand: TQRChildBand;
    FooterBand: TQRChildBand;
    lbNdsSum: TQRDBText;
    lbDim: TQRDBText;
    PageHeaderBand: TQRBand;
    lbPage: TQRExpr;
    qryDoc: TIBQuery;
    qryRec: TIBQuery;
    lbProduct: TQRDBText;
    qryClient: TIBQuery;
    lbDocDate: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel19: TQRLabel;
    lbAdress1: TQRLabel;
    lbCreditInfo: TQRLabel;
    lbAdress2: TQRLabel;
    lbClient1: TQRDBText;
    lbClient2: TQRDBText;
    lbINN1: TQRLabel;
    lbInfo1: TQRLabel;
    lbINN2: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    lbSum1: TQRExpr;
    lbCount: TQRExpr;
    lbPrice: TQRLabel;
    lbNds: TQRDBText;
    lbSum2: TQRExpr;
    lbCountry: TQRDBText;
    lbNTD: TQRDBText;
    FooterBand2: TQRChildBand;
    lbInfo2: TQRLabel;
    qryCredit: TIBQuery;
    lbDocNo: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape35: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
    QRShape22: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape26: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape42: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape19: TQRShape;
    QRShape25: TQRShape;
    QRShape39: TQRShape;
    QRLabel48: TQRLabel;
    QRShape1: TQRShape;
    QRShape23: TQRShape;
    QRShape4: TQRShape;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRShape20: TQRShape;
    QRShape24: TQRShape;
    QRShape21: TQRShape;
    QRShape41: TQRShape;
    lbNo: TQRExpr;
    QRMemo1: TQRMemo;
    FooterBand3: TQRChildBand;
    QRLabel52: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel16: TQRLabel;
    lbDirector: TQRLabel;
    lbBugalter: TQRLabel;
    QRLabel15: TQRLabel;
    lbDocComment: TQRLabel;
    lbDocComment2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel51: TQRLabel;
    QRShape27: TQRShape;
    QRLabel34: TQRLabel;
    QRShape3: TQRShape;
    QRLabel55: TQRLabel;
    lbDocNdsSum: TQRDBText;
    lbDocSum1: TQRExpr;
    lbDocSum2: TQRExpr;
    QRLabel58: TQRLabel;
    lbTransport: TQRLabel;
    lbDocTransportSum2: TQRLabel;
    lbDocTransportSum: TQRLabel;
    lbDocTransportNdsSum: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FooterBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryRecAfterOpen(DataSet: TDataSet);
    procedure SubDetailBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FooterBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  protected
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure setDataset(qry:TDataSet);
    procedure setSubDataset(qry:TDataSet);
  end;

var
    ReportDoc3:TReportDoc3;

implementation
uses DataUnit, DyUtils, Print;
{$R *.DFM}

constructor TReportDoc3.Create(AOwner:TComponent);
begin
  inherited;
  lbCount.Mask:=FormatNum;

  //lbPrice.Mask:=FormatEditCur;
  lbSum1.Mask:=FormatCur;
  lbSum2.Mask:=FormatCur;
  lbNdsSum.Mask:=FormatCur;

  //lbDocSum.Mask:=FormatCur;
  lbDocSum1.Mask:=FormatCur;
  lbDocSum2.Mask:=FormatCur;
  lbDocNdsSum.Mask:=FormatCur;
end;

destructor TReportDoc3.Destroy;
begin
    if self=ReportDoc3 then ReportDoc3:=nil;
    inherited;
end;

procedure TReportDoc3.setDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then exit;
    lbDocDate.DataSet:=qry;
    lbClient1.DataSet:=qry;
    lbClient2.DataSet:=qry;
    //lbDocSum.DataSet:=qry;
    lbDocNdsSum.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportDoc3.setSubDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryRec;
    if SubDetailBand.DataSet=qry then exit;
    lbProduct.DataSet:=qry;
    lbDim.DataSet:=qry;
    lbNds.DataSet:=qry;
    lbNdsSum.DataSet:=qry;
    lbCountry.DataSet:=qry;
    lbNTD.DataSet:=qry;
    SubDetailBand.DataSet:=qry;
end;

procedure TReportDoc3.qryRecAfterOpen(DataSet: TDataSet);
begin
    qryRec.FieldByName('NTD').OnGetText:=qryBlobGetText;
end;

procedure TReportDoc3.qryBlobGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TReportDoc3.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    str, str2, font: string;
    f: TField;
    //skind:integer;
begin
    //skind:=Dataset.FieldByName('SKIND').AsInteger;
    //if (skind < docSKindMin) or (skind > docSKindMax) then skind:=0;
    str:='счёт-фактура';
    ReportTitle:=str+' №'+Dataset.FieldByName('DOCNO').AsString+' от '+Dataset.FieldByName('DATE1').AsString;
    lbPage.Expression:=''''+ReportTitle+' Страница ''+PAGENUMBER';
    lbDocNo.Caption:=Dataset.FieldByName('DOCNO').AsString;

    if data.setActiveSklad(Dataset.FieldByName('CLIENTID2').AsInteger) then begin
        lbAdress2.Caption:=Data.qrySkladADRESS.Value+' тел. '+Data.qrySkladPHONE.Value;
        lbINN2.Caption:=Data.qrySkladINN.Value;
        lbInfo2.Caption:=Data.qrySkladADDRESS2.Value;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID2').AsInteger;
        qryClient.Active:=true;
        lbAdress2.Caption:=qryClient.FieldByName('ADRESS').AsString+' тел. '+qryClient.FieldByName('PHONE').AsString;
        lbINN2.Caption:=qryClient.FieldByName('INN').AsString;
        lbInfo2.Caption:=qryClient.FieldByName('ADDRESS2').AsString;
    finally
        qryClient.Active:=false;
    end;

    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        lbAdress1.Caption:=Data.qrySkladADRESS.Value+' тел. '+Data.qrySkladPHONE.Value;
        lbINN1.Caption:=Data.qrySkladINN.Value;
        lbInfo1.Caption:=Data.qrySkladADDRESS2.Value;

        str:=Data.qrySkladDIRECTOR.Value;
        if str<>'' then str:='/'+str+'/';
        lbDirector.Caption:=str;
        str:=Data.qrySkladBUGALTER.Value;
        if str<>'' then str:='/'+str+'/';
        lbBugalter.Caption:=str;
        //str:=Data.qrySkladKLADOVCHIK.Value;
        //if str<>'' then str:='/'+str+'/';
        //lbKladovchik.Caption:=str;

        font:=Data.qrySkladFONTNAME.Value;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID1').AsInteger;
        qryClient.Active:=true;
        lbAdress1.Caption:=qryClient.FieldByName('ADRESS').AsString+' тел. '+qryClient.FieldByName('PHONE').AsString;
        lbINN1.Caption:=qryClient.FieldByName('INN').AsString;
        lbInfo1.Caption:=qryClient.FieldByName('ADDRESS2').AsString;

        lbDirector.Caption:='';
        lbBugalter.Caption:='';
        //lbKladovchik.Caption:='';
    finally
        qryClient.Active:=false;
    end;
    ChangeReportFont(self, font);

    qryCredit.Active := false;
    if not qryCredit.Active then begin
        f:=Dataset.FieldByName('PDOCID');
        if not f.isNull then begin
            qryCredit.Params[0].AsInteger:=f.AsInteger;
            qryCredit.Active:=true;
        end;
    end;

    str := '';
    if qryCredit.Active then begin
        str := '№ ' + qryCredit.FieldByName('DOCNO').AsString + ' от ' + qryCredit.FieldByName('DATE1').AsString;
    end;
    str2 := Dataset.FieldByName('COMMENT').AsString;
    if str2 <> '' then begin
        if str <> '' then str := str + ';   ';
        str := str + str2;
    end;
    lbCreditInfo.Caption:=str;
end;

procedure TReportDoc3.FooterBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var sum3, sum3_nds: double;
begin
    sum3 := Dataset.FieldByName('SUM3').AsFloat;
    PrintBand := sum3 <> 0;
    if not PrintBand then exit;
    lbTransport.Caption := TransportName;
    sum3_nds := CurrRound(FloatInPer(sum3, TransportNDS));
    lbDocTransportSum.Caption := FormatFloat(FormatCur, sum3 - sum3_nds);
    lbDocTransportSum2.Caption := FormatFloat(FormatCur, sum3);
    lbDocTransportNdsSum.Caption := FormatFloat(FormatCur, sum3_nds);
end;

procedure TReportDoc3.FooterBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    //lbDocSumText.Caption := CurrConvert(Dataset.FieldByName('SUM0').AsFloat);
    //if Dataset.FieldByName('SUM2').AsFloat = 0 then begin
    //    lbDocNalogSumCaption.Caption := '';
    //    lbDocNalogSum.Caption := '';
    //end else begin
    //    lbDocNalogSumCaption.Caption := 'в том числе налог с продаж';
    //    lbDocNalogSum.Caption := FormatFloat(FormatCur, Dataset.FieldByName('SUM2').AsFloat);
    //end;
    //lbDocComment.Caption := '';
    //lbDocComment1.Caption := '';
    //lbDocComment2.Caption := '';
end;

procedure TReportDoc3.SubDetailBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
    qry: TDataSet;
    allcnt, summ, price: double;
begin
    qry := SubDetailBand.DataSet;
    allcnt := qry.FieldByName('CNT').AsFloat * qry.FieldByName('UNIT').AsFloat;
    summ := qry.FieldByName('SUMM').AsFloat - qry.FieldByName('NDSSUM').AsFloat - qry.FieldByName('NALOGSUM').AsFloat;
    if (allcnt = 0) then price := 0 else price := summ / allcnt;

    lbPrice.Caption := FormatFloat(FormatEditCur, price);
end;

end.
