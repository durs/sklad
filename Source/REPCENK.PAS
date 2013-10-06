unit repcenk;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery;

type
  TReportCennik = class(TQuickRep)
    DetailBand: TQRBand;
    qry: TIBQuery;
    QRDBText1: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel1: TQRLabel;
    lbPrice1: TQRLabel;
    lbPrice2: TQRLabel;
    QRShape1: TQRShape;
    QRExpr5: TQRExpr;
    lbProduser: TQRLabel;
    procedure DetailBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    pricefld: string;
  protected
  public
    procedure Init(prices: integer);
  end;


implementation
uses DataUnit,DyUtils,ParamFrm;
{$R *.DFM}

procedure TReportCennik.Init(prices: integer);
var no: integer;
begin
  if (prices and $01) <> 0 then no := 1
  else if (prices and $02) <> 0 then no := 2
  else if (prices and $04) <> 0 then no := 3
  else if (prices and $08) <> 0 then no := 4
  else if (prices and $10) <> 0 then no := 5
  else no := 1;
  pricefld := 'NEWPRICE';
  if no > 1 then pricefld := pricefld + IntToStr(no);
end;

procedure TReportCennik.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    //
end;

procedure TReportCennik.DetailBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var S:Double;
begin
  with Dataset do begin
    lbProduser.Caption:='/'+FieldByName('PRODUSER').AsString+'/';
    S:=FieldByName(pricefld).AsFloat;
    lbPrice1.Caption:=CurrShortConvert(S);
    S:=S*FieldByName('UNIT').AsFloat;
    lbPrice2.Caption:=CurrShortConvert(S);
  end;
end;

end.
