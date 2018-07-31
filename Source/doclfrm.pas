unit doclfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, DataUnit,
  basefrm, DyLook, IniFiles, Db,
  IBCustomDataSet, IBQuery, Menus, ActnList, DBCtrls, ComCtrls, ToolWin,
  wwdbedit, Wwdotdot, Wwdbcomb, Mask, StdCtrls, Buttons,
  ExtCtrls, Grids, DBGrids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, fcCombo, fctreecombo, fcTreeView, IBStoredProc,
  fcOutlookList, fcButton, fcImgBtn, fcShapeBtn, fcClearPanel,
  fcButtonGroup, fcOutlookBar;

type
  TDocListForm = class(TBaseForm)
    grdDoc: TwwDBGrid;
    ControlBar: TControlBar;
    barNavigator: TDBNavigator;
    pnlSearch: TPanel;
    barTool: TToolBar;
    btnView: TToolButton;
    btnNew: TToolButton;
    btnDelete: TToolButton;
    DataSource: TDataSource;
    btnPrint: TToolButton;
    ActionList: TActionList;
    actCancel: TAction;
    actApply: TAction;
    actNew: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actView: TAction;
    actPrint: TAction;
    mPrint: TPopupMenu;
    miPrintDoc1: TMenuItem;
    miPrintDoc2: TMenuItem;
    miPrintDoc3: TMenuItem;
    miPrintOrder: TMenuItem;
    actRefresh: TAction;
    btnRefresh: TToolButton;
    ToolButton2: TToolButton;
    qryDoc: TIBQuery;
    miPrintBegin: TMenuItem;
    miPrintDocList: TMenuItem;
    edtSearch: TEdit;
    btnFilter: TSpeedButton;
    Label2: TLabel;
    cbFields: TwwDBComboBox;
    edtDocDate1: TwwDBDateTimePicker;
    edtDocDate2: TwwDBDateTimePicker;
    Splitter1: TSplitter;
    qryDocDOCID: TIntegerField;
    qryDocKIND: TIntegerField;
    qryDocDOCNO: TIBStringField;
    qryDocDATE1: TDateTimeField;
    qryDocCLIENTID1: TIntegerField;
    qryDocCLIENTID2: TIntegerField;
    qryDocCLIENTNAME1: TIBStringField;
    qryDocCLIENTNAME2: TIBStringField;
    qryInDoc: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    DateTimeField1: TDateTimeField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    qryOutDoc: TIBQuery;
    IntegerField5: TIntegerField;
    IBStringField5: TIBStringField;
    DateTimeField3: TDateTimeField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    qryInDocQuery: TIBQuery;
    IntegerField9: TIntegerField;
    IBStringField9: TIBStringField;
    DateTimeField5: TDateTimeField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    qryOutDocQuery: TIBQuery;
    IntegerField13: TIntegerField;
    IBStringField13: TIBStringField;
    DateTimeField7: TDateTimeField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    qryInDocProd: TIBQuery;
    IntegerField17: TIntegerField;
    IBStringField17: TIBStringField;
    DateTimeField2: TDateTimeField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    qryInDocProdSUM1: TFloatField;
    qryOutDocProd: TIBQuery;
    IntegerField21: TIntegerField;
    IBStringField21: TIBStringField;
    DateTimeField4: TDateTimeField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    FloatField0: TFloatField;
    FloatField1: TFloatField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    qryDocCOMMENT: TBlobField;
    qryInDocCOMMENT: TBlobField;
    qryInDocProdCOMMENT: TBlobField;
    qryInDocQueryCOMMENT: TBlobField;
    qryOutDocCOMMENT: TBlobField;
    qryOutDocProdCOMMENT: TBlobField;
    qryOutDocQueryCOMMENT: TBlobField;
    actCreateQuery: TAction;
    btnCreateQuery: TToolButton;
    btnSep: TToolButton;
    procCreateQuery: TIBStoredProc;
    qryInDocCredit: TIBQuery;
    IntegerField25: TIntegerField;
    IBStringField4: TIBStringField;
    DateTimeField6: TDateTimeField;
    IBStringField8: TIBStringField;
    IBStringField12: TIBStringField;
    BlobField1: TBlobField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    qryOutDocCredit: TIBQuery;
    IntegerField29: TIntegerField;
    IBStringField16: TIBStringField;
    DateTimeField8: TDateTimeField;
    IBStringField20: TIBStringField;
    IBStringField24: TIBStringField;
    BlobField2: TBlobField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    qryInDocCreditSUM0: TFloatField;
    qryOutDocCreditSUM0: TFloatField;
    qryOutDocCreditPARAM6: TIBStringField;
    qryInDocCreditPARAM6: TIBStringField;
    qryInDocProdSUM0: TFloatField;
    pnlSklad: TPanel;
    edtSklad: TDBLookupComboBox;
    srcSklad: TDataSource;
    qryInDocProdSKIND: TSmallintField;
    qryInDocProdOPLATA: TStringField;
    qryOutDocProdSKIND: TSmallintField;
    qryOutDocProdOPLATA: TStringField;
    qryInDocCreditSKIND: TSmallintField;
    qryInDocCreditOPLATA: TStringField;
    qryOutDocCreditSKIND: TSmallintField;
    qryOutDocCreditOPLATA: TStringField;
    miPrintBeznal: TMenuItem;
    qryDocSKIND: TSmallintField;
    qryInDocSKIND: TSmallintField;
    qryOutDocSKIND: TSmallintField;
    qryInDocQuerySKIND: TSmallintField;
    qryOutDocQuerySKIND: TSmallintField;
    miPrintDoc4: TMenuItem;
    pnlDocKind: TPanel;
    bgDocKind: TfcButtonGroup;
    btnDoc: TfcShapeBtn;
    btnDocIn: TfcShapeBtn;
    btnDocOut: TfcShapeBtn;
    treeDoc: TfcTreeView;
    qryOutDocProdOST: TFloatField;
    qryOutDocProdOPLATASUM: TFloatField;
    qryInDocProdOST: TFloatField;
    qryInDocProdOPLATASUM: TFloatField;
    N1: TMenuItem;
    miPrintFile: TMenuItem;
    qryOutDocProdSUM3: TFloatField;
    qryOutDocQuerySUM0: TFloatField;
    qryOutDocQuerySUM1: TFloatField;
    qryOutDocQuerySUM3: TFloatField;
    N2: TMenuItem;
    N3: TMenuItem;
    miPrintEnd: TMenuItem;
    procedure RefreshData(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionExecute(Sender: TObject);
    procedure PrintData(Sender: TObject);
    procedure qryDocBeforeOpen(DataSet: TDataSet);
    procedure qryDocAfterOpen(DataSet: TDataSet);
    procedure edtSearchChange(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFilterClick(Sender: TObject);
    procedure cbFieldsChange(Sender: TObject);
    procedure grdDocTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure grdDocCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure treeDoc1Changing(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; var AllowChange: Boolean);
    procedure grdDocCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure SelectRecord(Sender: TObject);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBlobSetText(Sender: TField; const Text: String);
    procedure grdDocCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure edtSkladChange(Sender: TObject);
    procedure qryDocCalcFields(DataSet: TDataSet);
    procedure mPrintPopup(Sender: TObject);
    procedure qryCreditSUMGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure grdDocKeyPress(Sender: TObject; var Key: Char);
    procedure bgDocKindChange(ButtonGroup: TfcCustomButtonGroup;
      OldSelected, Selected: TfcButtonGroupItem);
    procedure treeDocChange(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
  private
    SkladID:integer;
    ClientName:string;
    DBLookup:TDyDBLookup;
    SQLParser:TDySQLParser;
    filter,qryFilter:string;
    lock: boolean;
    qryid: integer;
    procedure WMTimer(var Message:TWMTimer); message WM_TIMER;
    procedure FilterRecords(Sender:TObject; const filter:string);
    procedure setQuery(qry:TIBQuery; qrysid:string=''; prm:integer=0);
    function getQuery:TIBQuery;
  protected
    procedure DestroyCancel; override;
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
  end;

implementation
uses
    dyutils,dydbutil,config,print, repdataunit,
    docfrm,docqfrm,doccfrm;
{$R *.DFM}

const qry_filters: array [1..6] of string = (
    'skind<>1 and sum0>0',
    'skind<>1 and sum0<=0',
    'skind=1',
    'skind=2 and sum0<=0',
    'skind=3',
    'skind=2 and sum0>0'
);
const qry_params: array [1..6] of string = (
    '2',   // docOrder
    '2;1', // docOrder;dpVozvrat
    '1',   // docCheck
    '2',   // docOrder
    '3',   // docBeznal
    '2'    // docOrder
);


constructor TDocListForm.Create(AOwner:TComponent);
var
    kind:integer;
    v:string;
    node:TfcTreeNode;
begin
    inherited;
    lock := false;
    SkladID:=Data.qrySkladCLIENTID.Value;
    ClientName:=Data.qrySkladNAME.Value;
    edtSklad.KeyValue:=SkladID;
    //init objects
    DBLookup:=TDyDBLookup.Create(Data.QuoteChar);
    DBLookup.Style:=DBLookup.Style+[lsSQLFilter];
    DBLookup.RecordCount:=5;
    //DBLookup.OnApply:=;
    DBLookup.DataSource:=DataSource;
    DBLookup.Control:=edtSearch;
    DBLookup.OnFilter:=FilterRecords;
    //configure
    cbFields.Hint:=msgFilterComboHint;
    btnFilter.Down:=CurrentConfig.getBoolean(Key+'.filtered');
    btnFilter.Hint:=msgFilterBtnHint;
    btnFilterClick(btnFilter);
    v:=CurrentConfig.getString(key+'.date1');
    if v<>'' then try edtDocDate1.Date:=StrToDate(v); except end;
    v:=CurrentConfig.getString(key+'.date2');
    if v<>'' then try edtDocDate2.Date:=StrToDate(CurrentConfig.getString(key+'.date2')); except end;

    // set doc kind button
    kind:=CurrentConfig.getInteger(key+'.doc_kind');
    if (kind = 1) then btnDocIn.Down := true
    else if (kind = 2) then btnDocOut.Down := true
    else btnDoc.Down := true;

    // set active query item
    v:=CurrentConfig.getString(key+'.query');
    node:=treeDoc.Items.GetFirstNode;
    while (node<>nil) do begin
        if AnsiCompareText(node.StringData,v)=0 then break;
        node:=node.GetNext;
    end;
    if node=nil then node:=treeDoc.Items.GetFirstNode;
    if node<>nil then node.MakeVisible;
    treeDoc.Selected:=node;
end;

procedure TDocListForm.FormShow(Sender: TObject);
var
    node:TfcTreeNode;
begin
    node:=treeDoc.Items.GetFirstNode;
    if node<>nil then node.Expand(true);
end;

procedure TDocListForm.FormActivate(Sender: TObject);
begin
    if DataSource.Tag=1 then begin
        DataSource.Tag:=0;
        actRefresh.Execute;
    end;
end;

procedure TDocListForm.DestroyCancel;
begin
    inherited;
    FormActivate(self);
end;

destructor TDocListForm.Destroy;
var
    kind:integer;
    v:string;
begin
    if (btnDocIn.Down) then kind := 1
    else if (btnDocOut.Down) then kind := 2
    else kind := 0;
    if treeDoc.Selected<>nil then v:=treeDoc.Selected.StringData;

    CurrentConfig.setString(key+'.date1',edtDocDate1.Text);
    CurrentConfig.setString(key+'.date2',edtDocDate2.Text);
    CurrentConfig.setInteger(key+'.doc_kind', kind);
    CurrentConfig.setString(key+'.query',v);
    CurrentConfig.setBoolean(Key+'.filtered',btnFilter.Down);
    setQuery(nil);
    DBLookup.Free;
    SQLParser.Free;
    inherited;
end;

procedure TDocListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DestroyTimeout;
end;

procedure TDocListForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
    inherited;
    case Event of
        appSkladSelect: edtSkladChange(nil);
        appDocChange: DataSource.Tag:=1;
    end;
end;
//-----------------------------action routens---------------------------------
procedure TDocListForm.ActionExecute(Sender: TObject);
var
    qry:TIBQuery;
    CurBookmark:string;
    frm:TForm;
    id,desktop:integer;
    doc_init_params:string;
begin
    if Sender=actNew then begin
        qry:=getQuery;
        if (qryid>0) and (qryid<=length(qry_params)) then doc_init_params:=qry_params[qryid];
        if qry=qryInDocProd then begin
            frm:=Load(TDocForm);
            if frm is TDocForm then with TDocForm(frm) do begin
                open(0,deskInDoc);
                setClient2(SkladID);
                if doc_init_params<>'' then setParams(doc_init_params);
            end;
        end else if qry=qryOutDocProd then begin
            frm:=Load(TDocForm);
            if frm is TDocForm then with TDocForm(frm) do begin
                open(0,deskOutDoc);
                setClient1(SkladID);
                if doc_init_params<>'' then setParams(doc_init_params);
            end;
        end else if qry=qryInDocCredit then begin
            frm:=Load(TCreditDocForm);
            if frm is TCreditDocForm then with TCreditDocForm(frm) do begin
                open(0,deskInDoc);
                setClient2(SkladID);
                if doc_init_params<>'' then setParams(doc_init_params);
            end;
        end else if qry=qryOutDocCredit then begin
            frm:=Load(TCreditDocForm);
            if frm is TCreditDocForm then with TCreditDocForm(frm) do begin
                open(0,deskOutDoc);
                setClient1(SkladID);
                if doc_init_params<>'' then setParams(doc_init_params);
            end;
        end else if qry=qryInDocQuery then begin
            frm := Load(TDocForm);
            if frm is TDocForm then with TDocForm(frm) do begin
                open(0, deskInDoc, true);
                setClient2(SkladID);
                if doc_init_params<>'' then setParams(doc_init_params);
            end;
        end else if qry=qryOutDocQuery then begin
            frm := Load(TDocForm);
            if frm is TDocForm then with TDocForm(frm) do begin
                open(0, deskOutDoc, true);
                setClient1(SkladID);
                if doc_init_params<>'' then setParams(doc_init_params);
            end;
        end;
    end else if Sender=actDelete then begin
        with DataSource do if (Dataset<>nil) and Dataset.Active and not Dataset.FieldByName('DOCID').IsNull then begin
            if (not Data.CanDocModify(Dataset.FieldByName('DATE1').AsDateTime)) then Exit;
            if MessageBox(MsgDelete,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
            Data.ExecuteSQL2('delete from doc where docid='+intToStr(Dataset.FieldByName('DOCID').AsInteger));
            appEventPost(Self,appOstatokChange,nil);
            appEventPost(Self,appDocChange,nil);
            Dataset.Prior;
            actRefresh.Execute;
        end;
    end else if Sender=actRefresh then begin
        if DataSource.Dataset<>nil then with TIBQuery(DataSource.Dataset) do try
            if Active and not FieldByName('DOCID').IsNull then CurBookmark:=Bookmark;
            DisableControls;
            Active:=false;
            Active:=true;
            Bookmark:=CurBookmark;
        finally
            EnableControls;
        end;
    end else if Sender=actView then begin
        qry:=getQuery;
        id:=qry.FieldByName('DOCID').AsInteger;
        if id<=0 then exit;
        case qry.FieldByName('KIND').AsInteger and docKindMask of
            docProduct: begin
                frm:=Load(TDocForm);
                if (qry=qryInDoc) or (qry=qryInDocProd) then desktop:=deskInDoc
                else if (qry=qryOutDoc) or (qry=qryOutDocProd) then desktop:=deskOutDoc
                else desktop:=deskNone;
                if frm is TDocForm then  TDocForm(frm).open(id,desktop);
            end;
            docCredit: begin
                frm:=Load(TCreditDocForm);
                if (qry=qryInDoc) or (qry=qryInDocCredit) then desktop:=deskInDoc
                else if (qry=qryOutDoc) or (qry=qryOutDocCredit) then desktop:=deskOutDoc
                else desktop:=deskNone;
                if frm is TCreditDocForm then  TCreditDocForm(frm).open(id,desktop);
            end;
            docQuery: begin
                frm := Load(TDocForm);
                if (qry = qryInDoc) or (qry = qryInDocQuery) then desktop := deskInDoc
                else if (qry = qryOutDoc) or (qry = qryOutDocQuery) then desktop := deskOutDoc
                else desktop := deskNone;
                if frm is TDocForm then  TDocForm(frm).open(id, desktop, true);
                (*
                frm:=Load(TQueryDocForm);
                if (qry=qryInDoc) or (qry=qryInDocQuery) then desktop:=deskInDoc
                else if (qry=qryOutDoc) or (qry=qryOutDocQuery) then desktop:=deskOutDoc
                else desktop:=deskNone;
                if frm is TQueryDocForm then  TQueryDocForm(frm).open(id,desktop);
                *)
            end;
        end;
        if qry=qryInDocProd then ;
    end else if Sender=actCreateQuery then begin
        try
            msgStatus(msgWait);
            procCreateQuery.ParamByName('CLIENTID').AsInteger:=SkladID;
            procCreateQuery.ExecProc;
            if Data.trApply.InTransaction then Data.trApply.Commit;
            id:=procCreateQuery.ParamByName('DOCID').AsInteger;
            if id>0 then begin
                frm:=Load(TQueryDocForm);
                if frm is TQueryDocForm then TQueryDocForm(frm).open(id);
            end else begin
                MessageBox(msgNotCreateDocQuery,msgInfo,MB_ICONEXCLAMATION or MB_OK);
            end;
        finally
            msgStatus('');
        end;
    end;
end;

procedure TDocListForm.setQuery(qry:TIBQuery; qrysid:string=''; prm:integer=0);
var
    s, fltr:string;
    fld1, fld2: TField;
begin
    qryid:=StrToIntDef(qrysid, 0);
    if (qryid>0) and (qryid<=length(qry_filters)) then fltr:=qry_filters[qryid];
    with DataSource do begin
        if (Dataset=qry) and (qryFilter=fltr) then exit;
        if (Dataset<>nil) then begin
            CurrentConfig.writeFields(key+'.'+Dataset.Name,Dataset);
            if SQLParser<>nil then CurrentConfig.setString(key+'.'+Dataset.Name+'.orderby',SQLParser.OrderBy);
            s:=cbFields.Value;
            lock := true;
            try
                cbFields.Clear;
            finally
                lock := false;
            end;
            Dataset.Active:=false;
            SQLParser.Where:='';
            TIBQuery(Dataset).SQL.Text:=SQLParser.SQL;
        end
        else s:='DOCNO';
        Dataset:=qry;
    end;
    filter:='';
    qryFilter:=fltr;
    SQLParser.Free; SQLParser:=nil;
    if qry <> nil then begin
        SQLParser := TDYSQLParser.Create(qry.SQL.Text);
        SQLParser.OrderBy := CurrentConfig.getString(key+'.'+qry.Name+'.orderby');
        try
            qry.Active := true;
        except
            SQLParser.OrderBy := '';
        end;

        CurrentConfig.readFields(key+'.'+qry.Name, qry);

        if (qry = qryInDocCredit) or (qry = qryOutDocCredit) then begin
            fld1 := qry.FieldByName('CLIENTNAME1');
            fld2 := qry.FieldByName('CLIENTNAME2');

            case prm of
            1: begin
                fld1.DisplayLabel := 'Получатель';
                fld2.DisplayLabel := 'Плательщик';
                end;
            2: begin
                fld1.DisplayLabel := 'Плательщик';
                fld2.DisplayLabel := 'Получатель';
                end;
            else begin
                fld1.DisplayLabel := 'От кого';
                fld2.DisplayLabel := 'Кому';
                end
            end;
        end;

        with cbFields do begin
            Items.Text := getSearchFieldsMapped(Qry);
            Value := s;
            if ItemIndex < 0 then ItemIndex := 0;
        end;
    end;
    actNew.Enabled := (qry <> nil) and (qry.tag and 1 <> 0);
    actCreateQuery.Visible := false; //qry=qryOutDocQuery;
end;

function TDocListForm.getQuery:TIBQuery;
begin
    result:=DataSource.Dataset as TIBQuery;
    if not result.Active then result:=nil;
end;

procedure TDocListForm.mPrintPopup(Sender: TObject);
var
    qry:TIBQuery;
    i, id, kind, skind:integer;
begin
    qry:=getQuery;
    id:=qry.FieldByName('DOCID').AsInteger;
    kind:=qry.FieldByName('KIND').AsInteger and docKindMask;
    skind:=qry.FieldByName('SKIND').AsInteger;

    // Clear reports
    with miPrintEnd.Parent do begin
        for i := IndexOf(miPrintEnd) - 1 downto IndexOf(miPrintBegin) + 1 do
            Items[i].Destroy;
    end;

    // Append reports
    miPrintEnd.Visible := id > 0;
    if miPrintEnd.Visible then begin
        if (kind = docProduct) then RepData.InitMenu(miPrintEnd.Parent, miPrintEnd.Parent.IndexOf(miPrintEnd), 21, PrintData);
        if (kind = docCredit) then RepData.InitMenu(miPrintEnd.Parent, miPrintEnd.Parent.IndexOf(miPrintEnd), 22, PrintData);
        if (kind = docQuery) then RepData.InitMenu(miPrintEnd.Parent, miPrintEnd.Parent.IndexOf(miPrintEnd), 23, PrintData);
    end;

    miPrintDocList.Enabled:=qry.Active;
    miPrintDoc1.Visible:=(id>0) and (kind=docProduct);
    miPrintDoc2.Visible:=(id>0) and (kind=docProduct);
    miPrintDoc3.Visible:=(id>0) and (kind=docProduct);
    miPrintDoc4.Visible:=(id>0) and (kind=docProduct);
    miPrintOrder.Visible:=(id>0) and (kind=docCredit) and (skind=docOrder);
    miPrintBeznal.Visible:=(id>0) and (kind=docCredit) and (skind=docBeznal);

{
    miDevider.Visible:=miPrintDoc1.Visible
                    or miPrintDoc10.Visible
                    or miPrintDoc11.Visible
                    or miPrintDoc12.Visible
                    or miPrintDoc13.Visible
                    or miPrintDoc2.Visible
                    or miPrintDoc3.Visible
                    or miPrintOrder.Visible
                    or miPrintBeznal.Visible;
}
end;

procedure TDocListForm.PrintData(Sender: TObject);
var
    qry:TIBQuery;
    id:integer;
    title:string;
    params: integer;

begin
    qry:=getQuery;

    params := 0;
    if (PreviewReports) then params := params or rpPreview;

    if (Sender=miPrintDocList) or (Sender=miPrintFile) then begin
        if not qry.Active then Exit;
        title:='Документы ' + edtSklad.Text;//DocTypeList.Text;
        if edtDocDate1.Text=edtDocDate2.Text then begin
            if edtDocDate1.Text<>'' then title:=title+' за '+edtDocDate1.Text;
        end else begin
            if edtDocDate1.Date<>0 then title:=title+' c '+edtDocDate1.Text;
            if edtDocDate2.Date<>0 then title:=title+' по '+edtDocDate2.Text;
        end;
        if Sender=miPrintDocList then printAuto(title,'',qry,'')
        else Data.save(grdDoc, title, 'documents', edtDocDate1.Date, edtDocDate2.Date, 1);
        exit;
    end;
    id := qry.FieldByName('DOCID').AsInteger;
    if id<=0 then exit;

    if Sender=miPrintDoc1 then printDoc1(id)
    else if Sender=miPrintDoc2 then printDoc2(id)
    else if Sender=miPrintDoc3 then printDoc3(id)
    else if Sender=miPrintDoc4 then printDoc4(id)
    else if Sender=miPrintOrder then begin if (qry.FieldByName('SUM0').AsFloat<=0) then printOrder(id) else printROrder(id) end
    else if Sender=miPrintBeznal then printPlat(id)
    else RepData.printDoc((Sender as TMenuItem).Tag, params, id)
    ;
end;

procedure TDocListForm.RefreshData(Sender: TObject);
begin
    actRefresh.Execute;
end;

procedure TDocListForm.treeDoc1Changing(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; var AllowChange: Boolean);
begin
    if Node=nil then setQuery(nil) else setQuery(FindComponent(Node.StringData) as TIBQuery,Node.StringData2);
end;

procedure TDocListForm.treeDocChange(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode);
var
    prefix:string;
    qry:TIBQuery;
begin
    if (btnDocIn.Down) then prefix := 'qryIn'
    else if (btnDocOut.Down) then prefix := 'qryOut'
    else prefix := 'qry';
    if Node=nil then setQuery(nil)
    else begin
        qry := FindComponent(prefix + Node.StringData) as TIBQuery;
        setQuery(qry, Node.StringData2, Node.ImageIndex);
    end;
end;

procedure TDocListForm.bgDocKindChange(ButtonGroup: TfcCustomButtonGroup;
  OldSelected, Selected: TfcButtonGroupItem);
begin
    treeDocChange(treeDoc, treeDoc.Selected);
end;

procedure TDocListForm.SelectRecord(Sender: TObject);
var qry:TIBQuery;
begin
    qry:=getQuery;
    if qry.FieldByName('DOCID').IsNull then Exit;
    if (GetKeyState(VK_CONTROL) and $80 <> 0)
        then appEventPost(Self,appDocSelect,qry)
        else actView.Execute;
end;

procedure TDocListForm.grdDocCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
var kind:integer;
begin
    if not UseColorSelection then exit;
    kind:=getQuery.FieldByName('KIND').AsInteger;
    if (kind and docRezervMask <> 0) then ABrush.Color:=clRezerv
    else if (kind and docArchivMask <> 0) then ABrush.Color:=clArchiv
    else begin
        Data.GridCalcCellColors(Sender,Field,State,Highlight,AFont,ABrush);
        Exit;
    end;
    if Highlight then ABrush.Color:=getHighlightColor(Abrush.Color,clHighlightOffset);
end;
//---------------------------queries routens-------------------------
procedure TDocListForm.qryBlobGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TDocListForm.qryBlobSetText(Sender: TField;
  const Text: String);
begin
    data.setBlobValue(Sender as TBlobField,Text);
end;

procedure TDocListForm.qryCreditSUMGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text := FormatFloat(FormatCur, abs(Sender.AsFloat));
end;

procedure TDocListForm.qryDocBeforeOpen(DataSet: TDataSet);
var S:string;
begin
    if edtDocDate1.Text <> '' then S := 'date1 >= ' + Data.QuoteChar + edtDocDate1.Text + Data.QuoteChar else S := '';
    if edtDocDate2.Text<>'' then begin
        if S <> '' then S := S + ' and ';
        S := S + 'date1 <= ' + Data.QuoteChar + edtDocDate2.Text + Data.QuoteChar;
    end;
    if S<>'' then S:='(('+S+') or date1 is null)';
    if (qryFilter<>'') then begin
        if S<>'' then S:=S+' and ';
        S:=S+qryFilter;
    end;
    if filter<>'' then begin
        if S<>'' then S:=S+' and ';
        S:=S+filter;
    end;
    SQLParser.Where:=S;
    TIBQuery(Dataset).SQL.Text:=SQLParser.SQL;
    TIBQuery(Dataset).ParamByName('clientid').Value:=SkladID;
end;

procedure TDocListForm.qryDocAfterOpen(DataSet: TDataSet);
begin
    //
end;

procedure TDocListForm.qryDocCalcFields(DataSet: TDataSet);
var skind:integer;
begin
    if (DataSet.FieldByName('DOCID').IsNull) then exit;
    if (DataSet=qryInDocProd) or (DataSet=qryInDocCredit) or (DataSet=qryOutDocProd) or (DataSet=qryOutDocCredit)then begin
        skind:=DataSet.FieldByName('SKIND').AsInteger;
        if (skind<docSKindMin) or (skind>docSKindMax) then skind:=0;
        if (DataSet=qryInDocProd) or (DataSet=qryOutDocProd) then DataSet.FieldByName('OPLATA').AsString:=docSKindName[skind]
        else if (DataSet=qryInDocCredit) or (DataSet=qryOutDocCredit) then begin
            if DataSet.FieldByName('SUM0').Value<=0 then DataSet.FieldByName('OPLATA').AsString:=docSKindName1[skind]
            else DataSet.FieldByName('OPLATA').AsString:=docSKindName2[skind];
        end;
    end;
    if (DataSet=qryInDocProd) or (DataSet=qryOutDocProd) then begin
        with (DataSet.FieldByName('OPLATASUM') as TFloatField) do begin
            AsFloat := DataSet.FieldByName('SUM0').AsFloat - DataSet.FieldByName('OST').AsFloat;
            DisplayFormat := FormatCur;
        end;
    end;
end;

//-------------------sklad routens----------------------------------

procedure TDocListForm.edtSkladChange(Sender: TObject);
begin
    if (Data.qrySkladCLIENTID.Value<>SkladID) then begin
        SkladID:=Data.qrySkladCLIENTID.Value;
        actRefresh.Execute;
    end;
end;

//-------------------grid routens----------------------------------

procedure TDocListForm.grdDocTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
    if (SQLParser<>nil) and SQLParser.OrderByUpdate(DataSource.Dataset.FieldByName(AFieldName).origin) then actRefresh.Execute;
end;

procedure TDocListForm.grdDocCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
    if SQLParser<>nil then case SQLParser.OrderByState(DataSource.Dataset.FieldByName(AFieldName).origin) of
        0: AFont.Style:=[];
        else AFont.Style:=[fsBold];
    end;
end;

procedure TDocListForm.grdDocCalcTitleImage(Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
    if SQLParser<>nil then case SQLParser.OrderByState(Field.origin) of
        -1 : TitleImageAttributes.ImageIndex:=1;
        1  : TitleImageAttributes.ImageIndex:=0;
        else TitleImageAttributes.ImageIndex:=-1;
    end;
end;

//-----------------search & filter routens-------------------------

procedure TDocListForm.cbFieldsChange(Sender: TObject);
begin
    if (DBLookup = nil) or (lock) then exit;
    lock := true;
    try
        DBLookup.DataField := cbFields.Value;
        DBLookup.Lookup(edtSearch.Text);
    finally
        lock := false;
    end
end;

procedure TDocListForm.WMTimer(var Message:TWMTimer);
begin
    inherited;
    if Message.TimerID=1 then DBLookup.Lookup(edtSearch.Text);
end;

procedure TDocListForm.edtSearchChange(Sender: TObject);
begin
    if DBLookup<>nil then DBLookup.LookupPause(Handle,0,1);
end;

procedure TDocListForm.btnFilterClick(Sender: TObject);
begin
    with DBLookup do if btnFilter.Down
        then Style:=Style+[lsFiltered]
        else Style:=Style-[lsFiltered];
    if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
end;

procedure TDocListForm.FilterRecords(Sender:TObject; const filter:string);
begin
    self.filter:=filter;
    try
        actRefresh.Execute;
    finally
        //self.filter:='';
    end;
end;

procedure TDocListForm.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    FormKeyDown(Sender,Key,Shift);
    if (Key<>0) and DBLookup.DoKey(Key,Shift) then Key:=0;
end;

//-----------------------------keys routens--------------------------

procedure TDocListForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case data.getKeyAction(key, shift) of
        keyView : actView.Execute;
        keyNew : actNew.Execute;
        keyDelete : actDelete.Execute;
        keyRefresh : actRefresh.Execute;
        keyPrint : btnPrint.CheckMenuDropdown;
        keySearch : if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
        keyProcess : ;
        else begin
            if (Key=VK_RETURN) then begin
                if (Sender=grdDoc) then SelectRecord(Sender)
                else if (Sender=edtSklad) then edtSkladChange(edtSklad)
                else exit;
            end else exit;
        end;
    end;
    key:=0;
end;

procedure TDocListForm.grdDocKeyPress(Sender: TObject; var Key: Char);
begin
    Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

//------------------------------------------------------------------

end.
