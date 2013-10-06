unit repplat;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables,
  IBCustomDataSet, IBQuery;

type
  TReportPlat = class(TQuickRep)
    DetailBand: TQRBand;
    lbDocName: TQRLabel;
    ClientLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape6: TQRShape;
    lbOKUD: TQRLabel;
    QRShape8: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRLabel28: TQRLabel;
    lbSum: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape24: TQRShape;
    lbBank1: TQRLabel;
    lbTextSum: TQRLabel;
    lbDate: TQRDBText;
    qryDoc: TIBQuery;
    qryDebit: TIBQuery;
    qryClient: TIBQuery;
    qryScheta: TIBQuery;
    QRShape7: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    lbBank2: TQRLabel;
    lbClient1: TQRLabel;
    lbClient2: TQRLabel;
    QRLabel3: TQRLabel;
    lbInn1: TQRLabel;
    QRLabel18: TQRLabel;
    lbInn2: TQRLabel;
    lbRS1: TQRLabel;
    lbBIK1: TQRLabel;
    lbRS12: TQRLabel;
    lbRS2: TQRLabel;
    lbBIK2: TQRLabel;
    lbRS22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape19: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    lbWhat: TQRLabel;
    lbComment: TQRLabel;
    lbNalog: TQRLabel;
    QRLabel16: TQRLabel;
    lbDocNo: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel19: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure setDataset(qry:TDataset);
  end;

var
    ReportPlat:TReportPlat;

implementation
uses DataUnit,DyUtils;
{$R *.DFM}

constructor TReportPlat.Create(AOwner:TComponent);
begin
  inherited;
end;

destructor TReportPlat.Destroy;
begin
    if self=ReportPlat then ReportPlat:=nil;
    inherited;
end;

procedure TReportPlat.setDataset(qry:TDataset);
begin
    if qry=nil then qry:=qryDoc;
    if DataSet=qry then Exit;
    lbDate.DataSet:=qry;
    DataSet:=qry;
end;

procedure TReportPlat.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
    f:TField;
    sum:double;
    sid,s:string;
    id:integer;
begin
    lbDocNo.Caption:=Dataset.FieldByName('DOCNO').AsString;
    //print sklad info
    if data.setActiveSklad(Dataset.FieldByName('CLIENTID1').AsInteger) then begin
        lbClient1.Caption:=Data.qrySkladCLIENT.Value;
        lbInn1.Caption:=Data.qrySkladINN.Value;
        lbBank1.Caption:=Data.qrySkladBANK.Value;
        lbBIK1.Caption:=Data.qrySkladBIK.Value;
        lbRS1.Caption:=Data.qrySkladRS.Value;
        lbRS12.Caption:=Data.qrySkladKS.Value;
    end else try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID1').AsInteger;
        qryClient.Active:=true;
        lbClient1.Caption:=qryClient.FieldByName('CLIENT').AsString;
        lbInn1.Caption:=qryClient.FieldByName('INN').AsString;
        lbBank1.Caption:=qryClient.FieldByName('BANK').AsString;
        lbBIK1.Caption:=qryClient.FieldByName('BIK').AsString;
        lbRS1.Caption:=qryClient.FieldByName('RS').AsString;
        lbRS12.Caption:=qryClient.FieldByName('KS').AsString;
    finally
        qryClient.Active:=false;
    end;

    try
        qryClient.Params[0].AsInteger:=Dataset.FieldByName('CLIENTID2').AsInteger;
        qryClient.Active:=true;
        lbClient2.Caption:=qryClient.FieldByName('CLIENT').AsString;
        lbInn2.Caption:=qryClient.FieldByName('INN').AsString;
        lbBank2.Caption:=qryClient.FieldByName('BANK').AsString;
        lbBIK2.Caption:=qryClient.FieldByName('BIK').AsString;
        lbRS2.Caption:=qryClient.FieldByName('RS').AsString;
        lbRS22.Caption:=qryClient.FieldByName('KS').AsString;
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

    //print nalog
    if lbWhat.Caption='' then lbNalog.Top:=lbWhat.Top else lbNalog.Top:=lbWhat.Top+lbWhat.Height;
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
    if s<>'' then s:='в том числе '+s;
    lbNalog.Caption:=s;

    //print comment
    if lbNalog.Caption='' then lbComment.Top:=lbNalog.Top else lbComment.Top:=lbNalog.Top+lbNalog.Height;
    lbComment.Caption:=Dataset.FieldByName('COMMENT').AsString;

    //print sum text
    sum:=abs(Dataset.FieldByName('SUM0').AsFloat);
    lbSum.Caption:=FormatFloat(FormatCur,sum);
    lbTextSum.Caption:=CurrConvert(sum);
end;

end.
