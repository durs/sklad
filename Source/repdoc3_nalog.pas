unit repdoc3_nalog;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  IBCustomDataSet, IBQuery;

type
  TReportDoc3_Nalog = class(TQuickRep)
    DetailBand: TQRBand;
    SubDetailBand: TQRSubDetail;
    HeaderBand: TQRChildBand;
    FooterBand: TQRChildBand;
    lbNalogSum: TQRDBText;
    lbNdsSum: TQRDBText;
    lbDim: TQRDBText;
    PageHeaderBand: TQRBand;
    lbPage: TQRExpr;
    qryDoc: TIBQuery;
    qryRec: TIBQuery;
    lbProduct: TQRDBText;
    lbDocNdsSum: TQRDBText;
    lbDocNalogSum: TQRDBText;
    qryClient: TIBQuery;
    lbDocDate: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel19: TQRLabel;
    lbAdress1: TQRLabel;
    lbCreditNo: TQRLabel;
    lbCreditDate: TQRLabel;
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
    lbPrice: TQRDBText;
    lbNds: TQRDBText;
    lbSum2: TQRExpr;
    lbCountry: TQRDBText;
    lbNTD: TQRDBText;
    lbDocSum1: TQRExpr;
    lbDocSum2: TQRExpr;
    FooterBand2: TQRChildBand;
    lbDocSumText: TQRLabel;
    lbDocSum: TQRDBText;
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
    QRShape36: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape35: TQRShape;
    QRLabel25: TQRLabel;
    QRShape31: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    lbComment: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
    QRShape22: TQRShape;
    QRShape11: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape26: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel34: TQRLabel;
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
    QRLabel43: TQRLabel;
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
    QRShape3: TQRShape;
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
    QRLabel15: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape15: TQRShape;
    QRShape2: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape27: TQRShape;
    lbNo: TQRExpr;
    lbDirector: TQRLabel;
    lbBugalter: TQRLabel;
    lbKladovchik: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryRecAfterOpen(DataSet: TDataSet);
  private
  protected
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure setDataset(qry:TDataSet);
    procedure setSubDataset(qry:TDataSet);
  end;

var
    ReportDoc3_Nalog:TReportDoc3_Nalog;

implementation
uses DataUnit, DyUtils, Print;
{$R *.DFM}

constructor TReportDoc3_Nalog.Create(AOwner:TComponent);
begin
  inherited;
  lbCount.Mask:=FormatNum;

  lbPrice.Mask:=FormatCur;
  lbSum1.Mask:=FormatCur;
  lbSum2.Mask:=FormatCur;
  lbNdsSum.Mask:=FormatCur;
  lbNalogSum.Mask:=FormatCur;

  lbDocSum.Mask:=FormatCur;
  lbDocSum1.Mask:=FormatCur;
  lbDocSum2.Mask:=FormatCur;
  lbDocNdsSum.Mask:=FormatCur;
  lbDocNalogSum.Mask:=FormatCur;
end;

destructor TReportDoc3_Nalog.Destroy;
begin
    if self=ReportDoc3_Nalog then ReportDoc3_Nalog:=nil;
    inherited;
end;

procedure TReportDoc3_Nalog.setDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then exit;
    lbDocDate.DataSet:=qry;
    lbClient1.DataSet:=qry;
    lbClient2.DataSet:=qry;
    lbDocSum.DataSet:=qry;
    lbDocNdsSum.DataSet:=qry;
    lbDocNalogSum.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportDoc3_Nalog.setSubDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryRec;
    if SubDetailBand.DataSet=qry then exit;
    lbProduct.DataSet:=qry;
    lbDim.DataSet:=qry;
    lbPrice.DataSet:=qry;
    lbNds.DataSet:=qry;
    lbNdsSum.DataSet:=qry;
    lbNalogSum.DataSet:=qry;
    lbCountry.DataSet:=qry;
    lbNTD.DataSet:=qry;
    SubDetailBand.DataSet:=qry;
end;

procedure TReportDoc3_Nalog.qryRecAfterOpen(DataSet: TDataSet);
begin
    qryRec.FieldByName('NTD').OnGetText:=qryBlobGetText;
end;

procedure TReportDoc3_Nalog.qryBlobGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TReportDoc3_Nalog.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    str, font:string;
    f:TField;
    skind:integer;
begin
    skind:=Dataset.FieldByName('SKIND').AsInteger;
    if (skind < docSKindMin) or (skind > docSKindMax) then skind:=0;
    str:='счёт-фактура';
    ReportTitle:=str+' №'+Dataset.FieldByName('DOCNO').AsString+' от '+Dataset.FieldByName('DATE1').AsString;
    lbPage.Expression:=''''+ReportTitle+' Страница ''+PAGENUMBER';
    lbDocNo.Caption:=Dataset.FieldByName('DOCNO').AsString;

    if data.setActiveSklad(Dataset.FieldByName('CLIENTID2').AsInteger) then begin
        lbAdress2.Caption:=Data.qrySkladADRESS.Value+' тел. '+Data.qrySkladPHONE.Value;
        lbINN2.Caption:=Data.qrySkladINN.Value;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID2').AsInteger;
        qryClient.Active:=true;
        lbAdress2.Caption:=qryClient.FieldByName('ADRESS').AsString+' тел. '+qryClient.FieldByName('PHONE').AsString;
        lbINN2.Caption:=qryClient.FieldByName('INN').AsString;
    finally
        qryClient.Active:=false;
    end;

    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        lbAdress1.Caption:=Data.qrySkladADRESS.Value+' тел. '+Data.qrySkladPHONE.Value;
        lbINN1.Caption:=Data.qrySkladINN.Value;

        str:=Data.qrySkladDIRECTOR.Value;
        if str<>'' then str:='/'+str+'/';
        lbDirector.Caption:=str;
        str:=Data.qrySkladBUGALTER.Value;
        if str<>'' then str:='/'+str+'/';
        lbBugalter.Caption:=str;
        str:=Data.qrySkladKLADOVCHIK.Value;
        if str<>'' then str:='/'+str+'/';
        lbKladovchik.Caption:=str;

        font:=Data.qrySkladFONTNAME.Value;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID1').AsInteger;
        qryClient.Active:=true;
        lbAdress1.Caption:=qryClient.FieldByName('ADRESS').AsString+' тел. '+qryClient.FieldByName('PHONE').AsString;
        lbINN1.Caption:=qryClient.FieldByName('INN').AsString;

        lbDirector.Caption:='';
        lbBugalter.Caption:='';
        lbKladovchik.Caption:='';
    finally
        qryClient.Active:=false;
    end;
    lbInfo1.Caption:='';
    lbInfo2.Caption:='';
    ChangeReportFont(self, font);

    if not qryCredit.Active then begin
        f:=Dataset.FieldByName('PDOCID');
        if not f.isNull then begin
            qryCredit.Params[0].AsInteger:=f.AsInteger;
            qryCredit.Active:=true;
        end;
    end;
    if qryCredit.Active then begin
        lbCreditNo.Caption:=qryCredit.FieldByName('DOCNO').AsString;
        lbCreditDate.Caption:=qryCredit.FieldByName('DATE1').AsString;
    end else begin
        lbCreditNo.Caption:='';
        lbCreditDate.Caption:='';
    end;
    lbComment.Caption:=docSKindName[skind];
end;

procedure TReportDoc3_Nalog.FooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbDocSumText.Caption:=CurrConvert(Dataset.FieldByName('SUM0').AsFloat);
end;

end.
