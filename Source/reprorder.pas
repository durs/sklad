unit reprorder;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables,
  IBCustomDataSet, IBQuery;

type
  TReportROrder = class(TQuickRep)
    DetailBand: TQRBand;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape10: TQRShape;
    lbBugalter: TQRLabel;
    lbKassir: TQRLabel;
    OrderLabel: TQRLabel;
    ClientLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
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
    lbSum: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape24: TQRShape;
    lbWhat: TQRLabel;
    QRShape25: TQRShape;
    lbTextSum: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRShape5: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    lbClient: TQRLabel;
    lbComment: TQRLabel;
    lbCreditSchet: TQRLabel;
    lbDirector: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    lbYear: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    lbReg: TQRLabel;
    lbCaption: TQRLabel;
    lbOKPO: TQRLabel;
    lbOKONX: TQRLabel;
    lbDate: TQRDBText;
    lbDebitSchet: TQRDBText;
    qryDoc: TIBQuery;
    qryDebit: TIBQuery;
    qryClient: TIBQuery;
    qryScheta: TIBQuery;
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
    ReportROrder:TReportROrder;  

implementation
uses DataUnit,DyUtils;
{$R *.DFM}

constructor TReportROrder.Create(AOwner:TComponent);
begin
  inherited;
end;

destructor TReportROrder.Destroy;
begin
    if self=ReportROrder then ReportROrder:=nil;
    inherited;
end;

procedure TReportROrder.setDataset(qry:TDataset);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then Exit;
    lbDate.DataSet:=qry;
    lbDebitSchet.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportROrder.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    f:TField;
    sum:double;
    sid,s:string;
    id:integer;
    y,m,d:word;
begin
    //print sklad info
    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        lbCaption.Caption:=Data.qrySkladCAPTION.Value;
        lbOKPO.Caption:=Data.qrySkladOKPO.Value;
        lbOKONX.Caption:=Data.qrySkladOKONX.Value;
        s:=Data.qrySkladDIRECTOR.Value;
        if s<>'' then s:='/'+s+'/';
        lbDirector.Caption:=s;
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
        lbDirector.Caption:='';
        lbBugalter.Caption:='';
        lbKassir.Caption:='';
    finally
        qryClient.Active:=false;
    end;

    //print no and year
    lbDocNo.Caption:=Dataset.FieldByName('DOCNO').AsString;
    DecodeDate(Date,y,m,d);
    lbYear.Caption:=IntToStr(y)+' ã.';

    //print client name and registration
    try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID2').AsInteger;
        qryClient.Active:=true;
        lbClient.Caption:=qryClient.FieldByName('CLIENT').AsString;
        lbReg.Caption:=qryClient.FieldByName('REG').AsString;
    finally
        qryClient.Active:=false;
    end;

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
    if s<>'' then lbWhat.Caption:=lbWhat.Caption+', '+s;

    //print comment
    lbComment.Caption:=Dataset.FieldByName('COMMENT').AsString;

    //print sum text
    sum:=abs(Dataset.FieldByName('SUM0').AsFloat);
    lbSum.Caption:=FormatFloat(FormatCur,sum);
    lbTextSum.Caption:=CurrConvert(sum);
end;

end.
