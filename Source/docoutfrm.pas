unit docoutfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls;

type
  TfrmRecRef = class(TForm)
    grdRec: TwwDBGrid;
    srcRec: TDataSource;
    qryRec: TIBQuery;
    qryRecRECID: TIntegerField;
    qryRecUNIT: TFloatField;
    qryRecCNT: TFloatField;
    qryRecALLCNT: TFloatField;
    qryRecPRICE: TFloatField;
    qryRecSUMM: TFloatField;
    qryRecDOCID: TIntegerField;
    qryRecDOC: TIBStringField;
    grdInRec: TwwDBGrid;
    qryInRec: TIBQuery;
    qryInRecDOCID: TIntegerField;
    qryInRecDOC: TIBStringField;
    qryInRecRECID: TIntegerField;
    qryInRecALLCNT: TFloatField;
    qryInRecPRICE: TFloatField;
    qryInRecSUMM: TFloatField;
    qryInRecUNIT: TFloatField;
    qryInRecCNT: TFloatField;
    srcInRec: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    qryInRecCLIENT: TIBStringField;
    qryRecCLIENT: TIBStringField;
    qryRecKIND: TSmallintField;
    qryInRecKIND: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdRecSelect(Sender: TObject);
    procedure grdRecCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    procedure Init(src: TDataSource);
    procedure Done();
  end;

var
  frmRecRef: TfrmRecRef;

implementation
uses config, dyutils, dataunit, basefrm, docfrm;

{$R *.dfm}

procedure TfrmRecRef.FormCreate(Sender: TObject);
begin
    //CurrentConfig.readBounds(ClassName, self);
end;

procedure TfrmRecRef.FormDestroy(Sender: TObject);
begin
    //CurrentConfig.writeBounds(Classname, self);
end;


procedure TfrmRecRef.Init(src: TDataSource);
begin
    if (not qryRec.Active) or (qryRec.DataSource <> src) then
    begin
        qryInRec.Active := false;
        qryRec.Active := false;
        qryInRec.DataSource := src;
        qryRec.DataSource := src;
        qryInRec.Active := true;
        qryRec.Active := true;
    end;
    Show;
end;

procedure TfrmRecRef.Done;
begin
    Close;
end;

procedure TfrmRecRef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    qryRec.Active := false;
    if (frmRecRef = self) then frmRecRef := nil;
    Action := caFree;
end;

procedure TfrmRecRef.grdRecSelect(Sender: TObject);
var
    docid, recid, desktop: integer;
    frm: TForm;
begin
    if (Sender = grdRec) then begin
        docid := qryRecDOCID.AsInteger;
        recid := qryRecRECID.AsInteger;
        desktop := deskOutDoc;
    end else begin
        docid := qryInRecDOCID.AsInteger;
        recid := qryInRecRECID.AsInteger;
        desktop := deskInDoc
    end;
    if (docid = 0) then Exit;

    frm := TBaseForm.Load(TDocForm);
    with frm as TDocForm do begin
        open(docid, desktop);
        qryRec.Locate('RECID', recid, []);
    end;
end;

procedure TfrmRecRef.grdRecCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
var kind:integer;
begin
    if not UseColorSelection then exit;

    if Sender = grdRec then kind := qryRecKIND.AsInteger
    else kind := qryInRecKIND.AsInteger;

    if (kind = 1) then ABrush.Color:=clRezerv
    else begin
        Data.GridCalcCellColors(Sender,Field,State,Highlight,AFont,ABrush);
        Exit;
    end;
    if Highlight then ABrush.Color := getHighlightColor(Abrush.Color,clHighlightOffset);
end;

end.
