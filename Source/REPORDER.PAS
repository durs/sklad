unit reporder;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables,
  IBCustomDataSet, IBQuery;

type
  TReportOrder = class(TQuickRep)
    DetailBand: TQRBand;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape10: TQRShape;
    lbBugalter: TQRLabel;
    lbKassir: TQRLabel;
    lbComment: TQRLabel;
    OrderLabel: TQRLabel;
    ClientLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    ClientLabel22: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRImage1: TQRImage;
    lbDate2: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel23: TQRLabel;
    QRShape23: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    lbTextSum: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape5: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    lbNalog2: TQRLabel;
    lbBugalter2: TQRLabel;
    lbKassir2: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    lbTextSum2: TQRLabel;
    lbWhat: TQRLabel;
    lbDebitSchet: TQRLabel;
    qryDoc: TIBQuery;
    lbCaption: TQRLabel;
    lbOKPO: TQRLabel;
    lbOKONX: TQRLabel;
    lbDate: TQRDBText;
    lbCreditSchet: TQRDBText;
    qryDebit: TIBQuery;
    qryClient: TIBQuery;
    lbCaption2: TQRLabel;
    lbWhat2: TQRLabel;
    lbNalog: TQRLabel;
    lbClient: TQRLabel;
    lbClient2: TQRLabel;
    lbSum: TQRLabel;
    lbSum2: TQRLabel;
    qryScheta: TIBQuery;
    lbDocNo2: TQRLabel;
    lbDocNo: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure setDataset(qry:TDataset);
  end;

var
    ReportOrder:TReportOrder;

implementation
uses DataUnit,DyUtils;
{$R *.DFM}

constructor TReportOrder.Create(AOwner:TComponent);
begin
    inherited;
end;

destructor TReportOrder.Destroy;
begin
    if self=ReportOrder then ReportOrder:=nil;
    inherited;
end;

procedure TReportOrder.setDataset(qry:TDataset);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then Exit;
    lbDate.DataSet:=qry;
    lbCreditSchet.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportOrder.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    f:TField;
    sum:double;
    s,sid:string;
    id:integer;
begin
    //print sklad info
    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        lbCaption.Caption:=Data.qrySkladCAPTION.Value;
        lbOKPO.Caption:=Data.qrySkladOKPO.Value;
        lbOKONX.Caption:=Data.qrySkladOKONX.Value;
        s:=Data.qrySkladBUGALTER.Value;
        if s<>'' then s:='/'+s+'/';
        lbBugalter.Caption:=s;
        s:=Data.qrySkladKASSIR.Value;
        if s<>'' then s:='/'+s+'/';
        lbKassir.Caption:=s;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID1').AsInteger;
        qryClient.Active:=true;
        lbCaption.Caption:=qryClient.FieldByName('CLIENT').AsString;
        lbOKPO.Caption:=qryClient.FieldByName('OKPO').AsString;
        lbOKONX.Caption:=qryClient.FieldByName('OKONX').AsString;
        lbBugalter.Caption:='';
        lbKassir.Caption:='';
    finally
        qryClient.Active:=false;
    end;
    lbCaption2.Caption:=lbCaption.Caption;
    lbBugalter2.Caption:=lbBugalter.Caption;
    lbKassir2.Caption:=lbKassir.Caption;

    //print no and date2
    lbDocNo.Caption:=Dataset.FieldByName('DOCNO').AsString;
    lbDocNo2.Caption:=lbDocNo.Caption;
    lbDate2.Caption:=FormatDateTime('d mmmm yyyy года',Dataset.FieldByName('DATE1').AsDateTime);
    //lbDate2.Caption:='"    " ____________ 19___';

    //print client name
    s:='';
    f:=Dataset.FindField('CLIENT2');
    if f<>nil then begin
        s:=f.AsString;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID2').AsInteger;
        qryClient.Active:=true;
        s:=qryClient.FieldByName('CLIENT').AsString;
    finally
        qryClient.Active:=false;
    end;
    lbClient.Caption:=s;
    lbClient2.Caption:=s;

    //print what
    s:='';
    sid:=Dataset.FieldByName('PARAM6').AsString;
    f:=Dataset.FindField('SCHETNAME');
    if f<>nil then begin
        s:=f.AsString;
    end else if sid<>'' then try
        qryScheta.Params[0].AsString:=sid;
        qryScheta.Active:=true;
        s:=qryScheta.Fields[0].AsString;
    finally
        qryScheta.Active:=false;
    end;
    lbWhat.Caption:=s;

    //print ref doc
    s:='';
    id:=Dataset.FieldByName('PDOCID').AsInteger;
    f:=Dataset.FindField('DEBIT');
    if f<>nil then begin
        s:=f.AsString;
    end else if id<>0 then try
        qryDebit.Params[0].AsInteger:=id;
        qryDebit.Active:=true;
        s:=qryDebit.Fields[0].AsString;
    finally
        qryDebit.Active:=false;
    end;
    if s<>'' then begin
        lbWhat.Caption:=lbWhat.Caption+', '+s;
    end;
    lbWhat2.Caption:=lbWhat.Caption;

    //print comment
    lbComment.Caption:=Dataset.FieldByName('COMMENT').AsString;

    //print sum text
    sum:=abs(Dataset.FieldByName('SUM0').AsFloat);
    lbSum.Caption:=FormatFloat(FormatCur,sum);
    lbSum2.Caption:=lbSum.Caption;
    lbTextSum.Caption:=CurrConvert(sum);
    lbTextSum2.Caption:=lbTextSum.Caption;

    //print nalog
    s:='';
    sum:=abs(Dataset.FieldByName('SUM1').AsFloat);
    if sum<>0 then begin
        if s<>'' then s:=s+', ';
        s:=s+'НДС '+FormatFloat(FormatCur,sum);
    end;
    sum:=abs(Dataset.FieldByName('SUM2').AsFloat);
    if sum<>0 then begin
        if s<>'' then s:=s+', ';
        s:=s+'Налог с прожаж '+FormatFloat(FormatPer,Dataset.FieldByName('PARAM3').AsFloat)+'% '+FormatFloat(FormatCur,sum);
    end;
    lbNalog.Caption:=s;
    lbNalog2.Caption:=s;
end;

end.
