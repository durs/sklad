unit RepAuto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, DB,
  QuickRpt, Qrctrls, ExtCtrls, StdCtrls, Forms, Printers;

type
  TReportAuto = class(TQuickRep)
    TitleBand: TQRBand;
    SubDetailBand: TQRSubDetail;
    GroupHeaderBand: TQRBand;
    GroupFooterBand: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    SubTitleLabel: TQRLabel;
  private
  public
  end;

function CreateAutoReport(Owner:TComponent; const Title,SubTitle:string; Dataset:TDataset; Summary:string; Orientation:TPrinterOrientation=poPortrait):TQuickRep;

implementation

{$R *.DFM}

function CreateAutoReport(Owner:TComponent; const Title,SubTitle:string; Dataset:TDataset; Summary:string; Orientation:TPrinterOrientation=poPortrait):TQuickRep;
const
  CharWidth=6;
  Offset=CharWidth;
var
  i:integer;
  L,W:integer;
  BreakFlag:boolean;
  F:TField;
begin
  Result:=TReportAuto.Create(Owner);
  Result.ReportTitle:=Title;
  Result.Dataset:=Dataset;
  with TReportAuto(Result) do try
    SubTitleLabel.Caption:=SubTitle;
    SubDetailBand.Dataset:=Dataset;
    Page.Orientation:=Orientation;
    L:=Offset; BreakFlag:=false;
    for i:=0 to Dataset.FieldCount-1 do begin
      F:=Dataset.Fields[i];
      if not F.Visible then Continue;
      W:=F.DisplayWidth*CharWidth;
      if L+W+2*Offset+1>GroupHeaderBand.Width then begin
        if Page.Orientation=poPortrait then begin
          Page.Orientation:=poLandscape;
          if L+W+2*Offset+1>GroupHeaderBand.Width then begin
            W:=GroupHeaderBand.Width-L-2*Offset-1;
            BreakFlag:=true;
          end;
        end else begin
          W:=GroupHeaderBand.Width-L-2*Offset-1;
          BreakFlag:=true;
        end;
        if (W <= 0) then break;
      end;
      if L>Offset then begin
        with TQRShape.Create(Result) do begin
          Shape:=qrsVertLine;
          Brush.Style:=bsClear;
          Left:=L-1; Top:=0; Height:=GroupHeaderBand.Height; Width:=3;
          Parent:=GroupHeaderBand;
        end;
        with TQRShape.Create(Result) do begin
          Shape:=qrsVertLine;
          Brush.Style:=bsClear;
          Left:=L-1; Top:=0; Height:=SubDetailBand.Height; Width:=3;
          Parent:=SubDetailBand;
        end;
        Inc(L);
      end;
      with TQRLabel.Create(Result) do begin
        Caption:=F.DisplayLabel;
        AutoSize:=false;
        WordWrap:=true;
        //Alignment:=F.Alignment;
        Transparent:=true;
        Left:=L+Offset; Top:=1; Height:=GroupHeaderBand.Height-2; Width:=W;
        Parent:=GroupHeaderBand;
      end;
      with TQRDBText.Create(Result) do begin
        Dataset:=Result.Dataset;
        DataField:=F.FieldName;
        AutoSize:=false;
        WordWrap:=false;
        Alignment:=F.Alignment;
        Transparent:=true;
        Left:=L+Offset; Top:=1; Height:=SubDetailBand.Height-2; Width:=W;
        Parent:=SubDetailBand;
      end;
      if Pos(F.FieldName+';',Summary)>0 then with TQRExpr.Create(Result) do begin
        Expression:='sum('+F.FieldName+')';
        Master:=SubDetailBand;
        if F is TFloatField then Mask:=TFloatField(F).DisplayFormat;
        AutoSize:=false;
        WordWrap:=false;
        Alignment:=F.Alignment;
        Transparent:=true;
        Left:=L; Top:=10; Width:=W+2*Offset;
        Parent:=GroupFooterBand;
      end;
      if BreakFlag then Break;
      L:=L+W+2*Offset;
    end;
  except
    Destroy;
    raise;
  end;
end;

end.
