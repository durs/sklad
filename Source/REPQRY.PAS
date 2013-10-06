unit repqry;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  IBCustomDataSet, IBQuery;

type
  TReportQuery = class(TQuickRep)
    DetailBand: TQRBand;
    SubDetailBand: TQRSubDetail;
    HeaderBand: TQRChildBand;
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
    lbCreditNo: TQRLabel;
    lbCreditDate: TQRLabel;
    lbClient2: TQRLabel;
    lbInfo1: TQRLabel;
    QRShape18: TQRShape;
    lbCount: TQRExpr;
    lbPrice: TQRExpr;
    FooterBand: TQRChildBand;
    lbInfo2: TQRLabel;
    qryCredit: TIBQuery;
    lbDocNo: TQRLabel;
    QRShape38: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRShape35: TQRShape;
    QRLabel25: TQRLabel;
    QRShape31: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel24: TQRLabel;
    lbComment: TQRLabel;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape22: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape19: TQRShape;
    QRShape25: TQRShape;
    QRShape39: TQRShape;
    QRShape16: TQRShape;
    QRShape20: TQRShape;
    QRShape24: TQRShape;
    QRShape21: TQRShape;
    QRShape41: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape15: TQRShape;
    QRLabel51: TQRLabel;
    QRShape27: TQRShape;
    lbNo: TQRExpr;
    lbBugalter: TQRLabel;
    lbKassir: TQRLabel;
    mInfo: TQRMemo;
    QRShape3: TQRShape;
    QRShape11: TQRShape;
    QRShape28: TQRShape;
    QRLabel1: TQRLabel;
    QRShape17: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape32: TQRShape;
    QRShape37: TQRShape;
    QRShape40: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel28: TQRLabel;
    lbDocSumText: TQRLabel;
    lbDocSum: TQRDBText;
    lbDocNDSSum: TQRLabel;
    lbDocNDSSumCaption: TQRLabel;
    lbSum: TQRExpr;
    lbDocNo_2: TQRLabel;
    lbComment_2: TQRLabel;
    lbInfo2_2: TQRLabel;
    lbInfo1_2: TQRLabel;
    lbDocDate_2: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    lbCreditNo_2: TQRLabel;
    lbCreditDate_2: TQRLabel;
    lbClient2_2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRLabel31: TQRLabel;
    QRShape9: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel37: TQRLabel;
    mInfo_2: TQRMemo;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRLabel38: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape23: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape26: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape46: TQRShape;
    lbSumWithNDS_2: TQRDBText;
    QRShape49: TQRShape;
    lbPrice_2: TQRExpr;
    QRShape50: TQRShape;
    lbCount_2: TQRExpr;
    QRShape51: TQRShape;
    lbDim_2: TQRDBText;
    QRShape52: TQRShape;
    lbProduct_2: TQRDBText;
    lbNo_2: TQRExpr;
    QRShape53: TQRShape;
    lbKassir_2: TQRLabel;
    lbBugalter_2: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape54: TQRShape;
    QRLabel53: TQRLabel;
    QRShape55: TQRShape;
    lbDocSumText_2: TQRLabel;
    lbDocSum_2: TQRDBText;
    lbDocNDSSum_2: TQRLabel;
    lbDocNDSSumCaption_2: TQRLabel;
    lbPage_2: TQRExpr;
    QRImage1: TQRImage;
    QRLabel30: TQRLabel;
    QRShape56: TQRShape;
    QRLabel49: TQRLabel;
    QRShape57: TQRShape;
    lbSumWithNDS: TQRDBText;
    QRShape44: TQRShape;
    QRLabel2: TQRLabel;
    QRShape45: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape58: TQRShape;
    QRLabel55: TQRLabel;
    QRShape59: TQRShape;
    lbSum_2: TQRExpr;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FooterBandBeforePrint(Sender: TQRCustomBand;
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
    ReportQuery:TReportQuery;

implementation
uses DataUnit, DyUtils, Print;
{$R *.DFM}

constructor TReportQuery.Create(AOwner:TComponent);
begin
  inherited;
  lbCount.Mask:=FormatNum;      lbCount_2.Mask:=FormatNum;
  lbPrice.Mask:=FormatCur;      lbPrice_2.Mask:=FormatCur;
  lbSum.Mask:=FormatCur;        lbSum_2.Mask:=FormatCur;
  lbSumWithNDS.Mask:=FormatCur; lbSumWithNDS_2.Mask:=FormatCur;
  lbDocSum.Mask:=FormatCur;     lbDocSum_2.Mask:=FormatCur;
end;

destructor TReportQuery.Destroy;
begin
    if self = ReportQuery then ReportQuery := nil;
    inherited;
end;

procedure TReportQuery.setDataset(qry:TDataSet);
begin
    if qry = nil then qry := qryDoc;
    if DataSet=qry then exit;
    lbDocDate.DataSet:=qry;     lbDocDate_2.DataSet:=qry;
    lbDocSum.DataSet:=qry;      lbDocSum_2.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportQuery.setSubDataset(qry:TDataSet);
begin
    if qry=nil then qry:=qryRec;
    if SubDetailBand.DataSet=qry then exit;
    lbProduct.DataSet:=qry;         lbProduct_2.DataSet:=qry;
    lbDim.DataSet:=qry;             lbDim_2.DataSet:=qry;
    lbSumWithNDS.DataSet:=qry;      lbSumWithNDS_2.DataSet:=qry;
    SubDetailBand.DataSet:=qry;
end;

procedure TReportQuery.qryRecAfterOpen(DataSet: TDataSet);
begin
    qryRec.FieldByName('NTD').OnGetText := qryBlobGetText;
end;

procedure TReportQuery.qryBlobGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text := Sender.AsString;
end;

procedure TReportQuery.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    str, font:string;
    f:TField;
    //skind:integer;
begin
    //skind := Dataset.FieldByName('SKIND').AsInteger;
    //if (skind < docSKindMin) or (skind > docSKindMax) then skind := 0;
    str := 'счёт';
    ReportTitle := str + ' №' + Dataset.FieldByName('DOCNO').AsString+' от '+Dataset.FieldByName('DATE1').AsString;
    lbPage.Expression := '''' + ReportTitle + ' Страница ''+PAGENUMBER';
    lbPage_2.Expression := lbPage.Expression;
    lbDocNo.Caption := Dataset.FieldByName('DOCNO').AsString;
    lbDocNo_2.Caption := lbDocNo.Caption;

    if data.setActiveSklad(Dataset.FieldByName('CLIENTID2').AsInteger) then begin
        lbClient2.Caption := Dataset.FieldByName('CLIENT2').AsString + #13#10 + Data.qrySkladADRESS.Value;
        str := Data.qrySkladPHONE.Value;
    end else try
        qryClient.Params[0].AsInteger := Dataset.FieldByName('CLIENTID2').AsInteger;
        qryClient.Active := true;
        lbClient2.Caption := Dataset.FieldByName('CLIENT2').AsString + #13#10 + qryClient.FieldByName('ADRESS').AsString;
        str := qryClient.FieldByName('PHONE').AsString;
    finally
        qryClient.Active:=false;
    end;
    if (str <> '') then lbClient2.Caption := lbClient2.Caption + ' тел. ' + str;
    lbClient2_2.Caption := lbClient2.Caption;

    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        data.getClientInfo(Data.qrySklad, mInfo.Lines);

        str := Data.qrySkladBUGALTER.Value;
        if str <> '' then str := '/' + str + '/';
        lbBugalter.Caption := str;
        str := Data.qrySkladKASSIR.Value;
        if str <> '' then str := '/' + str + '/';
        lbKassir.Caption := str;

        font := Data.qrySkladFONTNAME.Value;
    end else try
        qryClient.Params[0].AsInteger := Dataset.FieldByName('CLIENTID1').AsInteger;
        qryClient.Active := true;

        data.getClientInfo(qryClient, mInfo.Lines);

        lbBugalter.Caption:='';
        lbKassir.Caption:='';
    finally
        qryClient.Active:=false;
    end;
    mInfo.Lines.Insert(0, Dataset.FieldByName('CLIENT1').AsString);

    mInfo_2.Lines.Text := mInfo.Lines.Text;
    lbBugalter_2.Caption := lbBugalter.Caption;
    lbKassir_2.Caption := lbKassir.Caption;

    lbInfo1.Caption := Dataset.FieldByName('CLIENT1').AsString;
    lbInfo1_2.Caption := lbInfo1.Caption;
    lbInfo2.Caption := Dataset.FieldByName('CLIENT2').AsString;
    lbInfo2_2.Caption := lbInfo2.Caption;

    ChangeReportFont(self, font);

    if not qryCredit.Active then begin
        f := Dataset.FieldByName('PDOCID');
        if not f.isNull then begin
            qryCredit.Params[0].AsInteger := f.AsInteger;
            qryCredit.Active := true;
        end;
    end;
    if qryCredit.Active then begin
        lbCreditNo.Caption := qryCredit.FieldByName('DOCNO').AsString;
        lbCreditDate.Caption := qryCredit.FieldByName('DATE1').AsString;
    end else begin
        lbCreditNo.Caption := '';
        lbCreditDate.Caption := '';
    end;
    lbCreditNo_2.Caption := lbCreditNo.Caption;
    lbCreditDate_2.Caption := lbCreditDate.Caption;

    lbComment.Caption := ''; //docSKindName[skind];
    lbComment_2.Caption := lbComment.Caption;
end;

procedure TReportQuery.FooterBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbDocSumText.Caption := CurrConvert(Dataset.FieldByName('SUM0').AsFloat);
    lbDocSumText_2.Caption := lbDocSumText.Caption;
    if Dataset.FieldByName('SUM1').AsFloat = 0 then begin
        lbDocNDSSumCaption.Caption := '';
        lbDocNDSSum.Caption := '';
    end else begin
        lbDocNDSSumCaption.Caption := 'в том числе НДС';
        lbDocNDSSum.Caption := FormatFloat(FormatCur, Dataset.FieldByName('SUM1').AsFloat);
    end;
    lbDocNDSSumCaption_2.Caption := lbDocNDSSumCaption.Caption;
    lbDocNDSSum_2.Caption := lbDocNDSSum.Caption;
end;

end.
