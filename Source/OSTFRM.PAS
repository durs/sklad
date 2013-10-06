unit ostfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  basefrm, DyLook, IniFiles, QuickRpt, IBCustomDataSet, IBUpdateSQL, variants,
  ActnList, Db, IBQuery, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, ComCtrls, ToolWin, Mask, Grids, Wwdbigrd, Wwdbgrid,
  Menus;

type
  TOstatokForm = class(TBaseForm)
    srcProd: TDataSource;
    qryProd: TIBQuery;
    ActionList: TActionList;
    actCancel: TAction;
    actApply: TAction;
    actNew: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actView: TAction;
    actPrint: TAction;
    ControlBar: TControlBar;
    barTool: TToolBar;
    btnSep1: TToolButton;
    barNavigator: TDBNavigator;
    pnlSearch: TPanel;
    edtSearch: TEdit;
    actListView: TAction;
    actRefresh: TAction;
    btnRefresh: TToolButton;
    btnFilter: TSpeedButton;
    btnPrint: TToolButton;
    cbFields: TwwDBComboBox;
    updProd: TIBUpdateSQL;
    grdRec: TwwDBGrid;
    qryProdDOCID: TIntegerField;
    qryProdRECID: TIntegerField;
    qryProdPRODID: TIntegerField;
    qryProdCNT: TFloatField;
    qryProdRCNT: TFloatField;
    qryProdUCNT: TFloatField;
    qryProdUNIT: TFloatField;
    qryProdPRICE: TFloatField;
    qryProdNDSPRICE: TFloatField;
    qryProdNEWPRICE: TFloatField;
    qryProdCOMMENT: TBlobField;
    qryProdDATE1: TDateTimeField;
    qryProdNAME: TIBStringField;
    qryProdLEN: TIBStringField;
    qryProdCLASSNAME: TIBStringField;
    qryProdPRODUSERNAME: TIBStringField;
    qryProdKIND: TSmallintField;
    qryProdDOCNO: TIBStringField;
    pnlSklad: TPanel;
    edtSklad: TDBLookupComboBox;
    mPrint: TPopupMenu;
    miPrice: TMenuItem;
    miOstatok: TMenuItem;
    miCennik: TMenuItem;
    qryProdOSTCNT: TFloatField;
    qryProdOSTSUM: TFloatField;
    qryProdPRODUCT: TIBStringField;
    qryProdDOC: TIBStringField;
    qryProdCLASS: TIBStringField;
    qryProdPRODUSER: TIBStringField;
    qryProdDIM: TIBStringField;
    qryProdSERTIFICAT: TBlobField;
    actQuery: TAction;
    btnQuery: TToolButton;
    mQuery: TPopupMenu;
    mChangePrice: TMenuItem;
    mCreateDoc: TMenuItem;
    ToolButton2: TToolButton;
    btnApplay: TToolButton;
    btnEdit: TToolButton;
    btnCancel: TToolButton;
    qryProdPRICEPER: TFloatField;
    miCennik2: TMenuItem;
    N1: TMenuItem;
    miPrintFile: TMenuItem;
    qryProdALLCNT: TFloatField;
    mRec: TPopupMenu;
    miRecOut: TMenuItem;
    qryProdINDOCID: TIntegerField;
    qryProdINRECID: TIntegerField;
    miRecFields: TMenuItem;
    qryProdNEWPRICE2: TFloatField;
    qryProdNEWPRICE3: TFloatField;
    qryProdPRICEPER2: TFloatField;
    qryProdPRICEPER3: TFloatField;
    qryProdNEWPRICE4: TFloatField;
    qryProdNEWPRICE5: TFloatField;
    qryProdPRICEPER4: TFloatField;
    qryProdPRICEPER5: TFloatField;
    procedure SeachEditChange(Sender: TObject);
    procedure ActionExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModifiedData(DataSet: TDataSet);
    procedure qryProdBeforeDelete(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SelectRecord(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFilterClick(Sender: TObject);
    procedure qryProdBeforeOpen(DataSet: TDataSet);
    procedure cbFieldsChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdRecTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure grdRecCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure grdRecCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure edtSkladChange(Sender: TObject);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBlobSetText(Sender: TField; const Text: String);
    procedure mQueryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure grdRecKeyPress(Sender: TObject; var Key: Char);
    procedure qryProdBeforeInsert(DataSet: TDataSet);
    procedure qryProdCalcFields(DataSet: TDataSet);
    procedure grdRecMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure srcProdDataChange(Sender: TObject; Field: TField);
    procedure miRecOutClick(Sender: TObject);
    procedure miRecFieldsClick(Sender: TObject);
    procedure PrintReport(Sender: TObject);
    procedure PrintReportPrice(Sender: TObject);
  private
    FieldCalcLock: boolean;
    Modified, lock: boolean;

    DBLookup: TDyDBLookup;
    SQLParser: TDySQLParser;

    SkladID: integer;
    DocParams: integer;
    DocNalog: double;
    
    procedure SetModified(Value:boolean);
    procedure WMTimer(var Message:TWMTimer); message WM_TIMER;
    procedure FilterRecords(Sender:TObject; const filter:string);
    procedure updateSklad;
  protected
    procedure DestroyCancel; override;
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
  end;

implementation
uses dataunit, config, print, tools, dyutils, dydbutil, gridfrm, docfrm, docoutfrm,
  RepDataUnit;
{$R *.DFM}

constructor TOstatokForm.Create(AOwner:TComponent);
begin
    inherited;
    lock := false;
    updateSklad;
    edtSklad.KeyValue:=SkladID;

    //init objects
    DBLookup:=TDyDBLookup.Create(Data.QuoteChar);
    DBLookup.Style:=DBLookup.Style+[lsSQLFilter];
    DBLookup.RecordCount:=5;
    DBLookup.OnApply:=SelectRecord;
    DBLookup.DataSource:=srcProd;
    DBLookup.Control:=edtSearch;
    DBLookup.OnFilter:=FilterRecords;
    SQLParser:=TDySQLParser.Create(qryProd.SQL.Text);
    SQLParser.OrderBy:=CurrentConfig.getString(Key+'.orderby');

    //configurate
    qryProdUNIT.DisplayFormat:=FormatNum;
    qryProdCNT.DisplayFormat:=FormatNum;
    qryProdRCNT.DisplayFormat:=FormatNum;
    qryProdUCNT.DisplayFormat:=FormatNum;
    qryProdALLCNT.DisplayFormat:=FormatNum;
    qryProdOSTCNT.DisplayFormat:=FormatNum;
    qryProdNDSPRICE.DisplayFormat:=FormatCur;
    qryProdPRICEPER.DisplayFormat:=FormatPer;
    qryProdPRICEPER2.DisplayFormat:=FormatPer;
    qryProdPRICEPER3.DisplayFormat:=FormatPer;
    qryProdPRICEPER4.DisplayFormat:=FormatPer;
    qryProdPRICEPER5.DisplayFormat:=FormatPer;

    grdRec.OnCalcCellColors:=Data.GridCalcCellColors;

    cbFields.Items.Text := getSearchFieldsMapped(qryProd);
    cbFields.Value := qryProdNAME.FieldName;
    cbFields.Hint := msgFilterComboHint;

    btnFilter.Down:=CurrentConfig.getBoolean(Key+'.filtered');
    btnFilter.Hint:=msgFilterBtnHint;
    btnFilterClick(btnFilter);

    // append reports
    if RepData.InitMenu(miPrice.Parent, miPrice.Parent.IndexOf(miPrice), 1, PrintReportPrice) then
        miPrice.Free;

    //activate queries
    qryProd.Active:=true;
    CurrentConfig.readFields(key+'.query',qryProd);
    actEdit.Execute;
end;

procedure TOstatokForm.FormActivate(Sender: TObject);
begin
    if (qryProd.Tag=1) then begin
        qryProd.Tag:=0;
        actRefresh.Execute;
    end;
end;

procedure TOstatokForm.DestroyCancel;
begin
    inherited;
    FormActivate(self);
end;

destructor TOstatokForm.Destroy;
begin
    CurrentConfig.writeFields(key+'.query', qryProd);
    CurrentConfig.setString(Key+'.orderby', SQLParser.OrderBy);
    CurrentConfig.setBoolean(Key+'.filtered', btnFilter.Down);
    DBLookup.Free;
    SQLParser.Free;
    inherited;
end;

procedure TOstatokForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if Modified then case MessageBox(msgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: actApply.Execute;
        mrNo: SetModified(false);
        mrCancel: CanClose:=false;
    end;
end;

procedure TOstatokForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if (frmRecRef <> nil) then frmRecRef.Close; 
    DestroyTimeout;
end;

procedure TOstatokForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
    inherited;
    case Event of
        appSkladSelect: edtSkladChange(nil);
        appOstatokChange: qryProd.Tag:=1;
    end;
end;

procedure TOstatokForm.SetModified(Value:boolean);
begin
    Modified:=Value;
    actApply.Enabled:=Modified;
    actCancel.Enabled:=Modified;
end;

procedure TOstatokForm.ActionExecute(Sender: TObject);
var
    CurBookmark: string;
    readonly:boolean;
begin
    if (Sender=actNew) then begin
        //btnEdit.Down:=true;
        //actEdit.Execute;
        //qryProd.Insert;
    end else if (Sender=actDelete) then begin
        //if MessageBox(msgDelete,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
        //qryProd.Delete;
    end else if (Sender=actEdit) then begin
        if (btnEdit.Down and not Data.CanOstModify()) then btnEdit.Down:=false;
        readonly:=not btnEdit.Down;
        grdRec.ReadOnly:=readonly;
        with grdRec do if readonly then Options:=Options - [dgEditing] else Options:=Options + [dgEditing];
    end else if (Sender=actApply) then begin
        if not Modified then Exit;
        Data.ApplyUpdates([qryProd]);
        SetModified(false);
        appEventPost(self,appOstatokChange,nil);
    end else if (Sender=actCancel) then begin
        if not Modified or (MessageBox(MsgCancel, MsgQuestion, MB_ICONQUESTION or MB_YESNO)<>mrYes) then Exit;
        qryProd.CheckBrowseMode;
        SetModified(false);
        actRefresh.Execute;
        //qryClient.CancelUpdates;
    end else if (Sender=actRefresh) then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        with qryProd do try
            if Active and not qryProdRECID.IsNull then CurBookmark:=Bookmark;
            DisableControls;
            Active:=false;
            Active:=true;
            Bookmark:=CurBookmark;
        finally
            EnableControls;
        end;
    end;
end;

procedure TOstatokForm.PrintReportPrice(Sender: TObject);
var priceinfo: integer;
begin
    priceinfo := 0;
    if qryProdNEWPRICE.Visible then priceinfo := priceinfo or 1;
    if qryProdNEWPRICE2.Visible then priceinfo := priceinfo or 2;
    if qryProdNEWPRICE3.Visible then priceinfo := priceinfo or 4;
    if qryProdNEWPRICE4.Visible then priceinfo := priceinfo or 8;
    if qryProdNEWPRICE5.Visible then priceinfo := priceinfo or 16;
    printPrice(priceinfo, SkladID, qryProd, (Sender as TMenuItem).Tag);
end;

procedure TOstatokForm.PrintReport(Sender: TObject);
var priceinfo: integer;
begin
    if (Sender = miPrice) then begin
        priceinfo := 0;
        if qryProdNEWPRICE.Visible then priceinfo := priceinfo or 1;
        if qryProdNEWPRICE2.Visible then priceinfo := priceinfo or 2;
        if qryProdNEWPRICE3.Visible then priceinfo := priceinfo or 4;
        if qryProdNEWPRICE4.Visible then priceinfo := priceinfo or 8;
        if qryProdNEWPRICE5.Visible then priceinfo := priceinfo or 16;
        printPrice(priceinfo, SkladID, qryProd);
    end
    else if (Sender = miOstatok) then begin
        printOstatok(SkladID, qryProd);
    end
    else if (Sender = miCennik) then begin
        printCennik(1, SkladID, qryProd);
    end
    else if (Sender = miCennik2) then begin
        printCennik(2, SkladID, qryProd);
    end
    else if (Sender = miPrintFile) then begin
        Data.save(grdRec, Caption + ' ' + edtSklad.Text + ' от ' + DateToStr(Now()));
    end;
end;

procedure TOstatokForm.SelectRecord(Sender: TObject);
begin
    if qryProdRECID.isNull then Exit;
    if (GetKeyState(VK_CONTROL) and $80 <> 0)
        then appEventPost(Self, appOstatokSelect, qryProd)
        else actView.Execute;
end;

procedure TOstatokForm.mQueryClick(Sender: TObject);
var
    frm:TForm;
    id:integer;
begin
    if (modified) then actApply.Execute;
    if (not btnEdit.Down and not Data.CanOstModify()) then Exit;

    if Sender=mChangePrice then begin
        OstatokChangePrice(SkladID);
        actRefresh.Execute;
    end else if Sender=mCreateDoc then begin
        if MessageBox(PChar(TMenuItem(Sender).Caption+'?'),msgQuestion,MB_ICONQUESTION+MB_YESNO)<>mrYes then Exit;
        id:=OstatokCreateDoc(SkladID);
        frm:=Load(TDocForm);
        if frm is TDocForm then TDocForm(frm).open(id,deskOutDoc);
        appEventPost(nil,appOstatokChange,nil);
        appEventPost(self,appDocChange,nil);
    end
end;

//------------search and filter routens----------------------

procedure TOstatokForm.cbFieldsChange(Sender: TObject);
begin
    if (DBLookup = nil) or (lock) then exit;
    lock := true;
    try
        DBLookup.DataField := cbFields.Value;
        DBLookup.Lookup(edtSearch.Text);
    finally
        lock := false;
    end;
end;

procedure TOstatokForm.WMTimer(var Message:TWMTimer);
begin
    inherited;
    if Message.TimerID = 1 then DBLookup.Lookup(edtSearch.Text);
end;

procedure TOstatokForm.SeachEditChange(Sender: TObject);
begin
    DBLookup.LookupPause(Handle, 0, 1);
end;

procedure TOstatokForm.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    FormKeyDown(Sender, Key, Shift);
    if (key <> 0) and DBLookup.DoKey(Key, Shift) then Key := 0;
end;

procedure TOstatokForm.btnFilterClick(Sender: TObject);
begin
    with DBLookup do if btnFilter.Down
        then Style := Style + [lsFiltered]
        else Style := Style - [lsFiltered];
    if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
end;

procedure TOstatokForm.FilterRecords(Sender:TObject; const filter:string);
begin
    SQLParser.Where:=filter;
    try
        actRefresh.Execute;
    except
        SQLParser.Where:='';
    end;
end;

//---------------------query routens--------------------

procedure TOstatokForm.qryProdCalcFields(DataSet: TDataSet);
var X, X2, X3, X4, X5: double;
begin
    FieldCalcLock := true;
    try
        if qryProdPRICE.Value = 0 then begin
            qryProdPRICEPER.AsVariant := null;
            qryProdPRICEPER2.AsVariant := null;
            qryProdPRICEPER3.AsVariant := null;
            qryProdPRICEPER4.AsVariant := null;
            qryProdPRICEPER5.AsVariant := null;
        end
        else begin
            X := qryProdNEWPRICE.Value;
            X2 := qryProdNEWPRICE2.Value;
            X3 := qryProdNEWPRICE3.Value;
            X4 := qryProdNEWPRICE4.Value;
            X5 := qryProdNEWPRICE5.Value;

            // remove nalog from price (17.01.2002)
            if (DocParams and dpNalogInPrice <> 0) and (DocNalog <> 0) then
            begin
                X := FloatRemovePer(X, DocNalog);
                X2 := FloatRemovePer(X2, DocNalog);
                X3 := FloatRemovePer(X3, DocNalog);
                X4 := FloatRemovePer(X4, DocNalog);
                X5 := FloatRemovePer(X5, DocNalog);
            end;

            qryProdPRICEPER.Value := (X / qryProdPRICE.Value - 1) * 100;
            qryProdPRICEPER2.Value := (X2 / qryProdPRICE.Value - 1) * 100;
            qryProdPRICEPER3.Value := (X3 / qryProdPRICE.Value - 1) * 100;
            qryProdPRICEPER4.Value := (X4 / qryProdPRICE.Value - 1) * 100;
            qryProdPRICEPER5.Value := (X5 / qryProdPRICE.Value - 1) * 100;
        end;
    finally
        FieldCalcLock := false;
    end;
end;

procedure TOstatokForm.qryBlobGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TOstatokForm.qryBlobSetText(Sender: TField;
  const Text: String);
begin
    data.setBlobValue(Sender as TBlobField,Text);
end;

procedure TOstatokForm.ModifiedData(DataSet: TDataSet);
begin
    SetModified(true);
end;

procedure TOstatokForm.qryProdBeforeOpen(DataSet: TDataSet);
begin
    qryProd.SQL.Text := SQLParser.SQL;
    TIBQuery(Dataset).ParamByName('clientid').Value := SkladID;
end;

procedure TOstatokForm.qryProdBeforeDelete(DataSet: TDataSet);
begin
    raise Exception.Create(msgDoNotDelete);
end;

procedure TOstatokForm.qryProdBeforeInsert(DataSet: TDataSet);
begin
    raise Exception.Create(msgDoNotInsert);
end;

procedure TOstatokForm.srcProdDataChange(Sender: TObject; Field: TField);
var X: double;
begin
    // calulate new price on price percent (17.01.2002)
    if (Field = qryProdPRICEPER) and not FieldCalcLock then begin
        X := FloatAddPer(qryProdPRICE.Value, qryProdPRICEPER.Value);
        if (DocParams and dpNalogInPrice <> 0) and (DocNalog <> 0) then X := FloatAddPer(X, DocNalog);
        qryProdNEWPRICE.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryProdPRICEPER2) and not FieldCalcLock then begin
        X := FloatAddPer(qryProdPRICE.Value, qryProdPRICEPER2.Value);
        if (DocParams and dpNalogInPrice <> 0) and (DocNalog <> 0) then X := FloatAddPer(X, DocNalog);
        qryProdNEWPRICE2.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryProdPRICEPER3) and not FieldCalcLock then begin
        X := FloatAddPer(qryProdPRICE.Value, qryProdPRICEPER3.Value);
        if (DocParams and dpNalogInPrice <> 0) and (DocNalog <> 0) then X := FloatAddPer(X, DocNalog);
        qryProdNEWPRICE3.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryProdPRICEPER4) and not FieldCalcLock then begin
        X := FloatAddPer(qryProdPRICE.Value, qryProdPRICEPER4.Value);
        if (DocParams and dpNalogInPrice <> 0) and (DocNalog <> 0) then X := FloatAddPer(X, DocNalog);
        qryProdNEWPRICE4.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryProdPRICEPER5) and not FieldCalcLock then begin
        X := FloatAddPer(qryProdPRICE.Value, qryProdPRICEPER5.Value);
        if (DocParams and dpNalogInPrice <> 0) and (DocNalog <> 0) then X := FloatAddPer(X, DocNalog);
        qryProdNEWPRICE5.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if ((Field = qryProdNEWPRICE) or (Field = qryProdNEWPRICE2) or (Field = qryProdNEWPRICE3) or (Field = qryProdNEWPRICE4) or (Field = qryProdNEWPRICE5)) and not FieldCalcLock then
    begin
        grdRec.Refresh;
    end;
end;

//------------------------sklad routens---------------------------------

procedure TOstatokForm.updateSklad;
var PriceName, PriceName2, PriceName3, PriceName4, PriceName5: string;
begin
    SkladID := Data.qrySkladCLIENTID.Value;
    DocParams := data.qrySkladDOCPARAM1.Value;
    DocNalog := data.qrySkladDOCPARAM3.Value;

    PriceName := data.qrySkladPRICE_NAME.AsString;
    PriceName2 := data.qrySkladPRICE_NAME2.AsString;
    PriceName3 := data.qrySkladPRICE_NAME3.AsString;
    PriceName4 := data.qrySkladPRICE_NAME4.AsString;
    PriceName5 := data.qrySkladPRICE_NAME5.AsString;

    qryProdNEWPRICE.Visible := (PriceName <> '') and not data.qrySkladPRICE_PERCENT.IsNull;
    qryProdNEWPRICE2.Visible := (PriceName2 <> '') and not data.qrySkladPRICE_PERCENT2.IsNull;
    qryProdNEWPRICE3.Visible := (PriceName3 <> '') and not data.qrySkladPRICE_PERCENT3.IsNull;
    qryProdNEWPRICE4.Visible := (PriceName4 <> '') and not data.qrySkladPRICE_PERCENT4.IsNull;
    qryProdNEWPRICE5.Visible := (PriceName5 <> '') and not data.qrySkladPRICE_PERCENT5.IsNull;

    qryProdPRICEPER.Visible := qryProdNEWPRICE.Visible;
    qryProdPRICEPER2.Visible := qryProdNEWPRICE2.Visible;
    qryProdPRICEPER3.Visible := qryProdNEWPRICE3.Visible;
    qryProdPRICEPER4.Visible := qryProdNEWPRICE4.Visible;
    qryProdPRICEPER5.Visible := qryProdNEWPRICE5.Visible;

    if PriceName = '' then PriceName := 'Прайс 1';
    if PriceName2 = '' then PriceName2 := 'Прайс 2';
    if PriceName3 = '' then PriceName3 := 'Прайс 3';
    if PriceName4 = '' then PriceName4 := 'Прайс 4';
    if PriceName5 = '' then PriceName5 := 'Прайс 5';

    qryProdNEWPRICE.DisplayLabel := PriceName + '~цена';
    qryProdNEWPRICE2.DisplayLabel := PriceName2 + '~цена';
    qryProdNEWPRICE3.DisplayLabel := PriceName3 + '~цена';
    qryProdNEWPRICE4.DisplayLabel := PriceName4 + '~цена';
    qryProdNEWPRICE5.DisplayLabel := PriceName5 + '~цена';

    qryProdPRICEPER.DisplayLabel := PriceName + '~наценка(%)';
    qryProdPRICEPER2.DisplayLabel := PriceName2 + '~наценка(%)';
    qryProdPRICEPER3.DisplayLabel := PriceName3 + '~наценка(%)';
    qryProdPRICEPER4.DisplayLabel := PriceName4 + '~наценка(%)';
    qryProdPRICEPER5.DisplayLabel := PriceName5 + '~наценка(%)';
end;

procedure TOstatokForm.edtSkladChange(Sender: TObject);
begin
    if (Data.qrySkladCLIENTID.Value<>SkladID) then begin
        updateSklad;
        actRefresh.Execute;
    end;
end;

//------------------------grid routens---------------------------------

procedure TOstatokForm.grdRecTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
    if SQLParser.OrderByUpdate(qryProd.FieldByName(AFieldName).origin) then actRefresh.Execute;
end;

procedure TOstatokForm.grdRecCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
    case SQLParser.OrderByState(qryProd.FieldByName(AFieldName).origin) of
        0: AFont.Style:=[];
        else AFont.Style:=[fsBold];
    end;
end;

procedure TOstatokForm.grdRecCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
    case SQLParser.OrderByState(Field.origin) of
        -1 : TitleImageAttributes.ImageIndex:=1;
        1  : TitleImageAttributes.ImageIndex:=0;
        else TitleImageAttributes.ImageIndex:=-1;
    end;
end;

//----------------------keys routens-------------------------------------

procedure TOstatokForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case data.getKeyAction(key,shift) of
        //keyView : actView.Execute;
        //keyNew : actNew.Execute;
        //keyDelete : actDelete.Execute;
        keyEdit : begin btnEdit.Down:=not btnEdit.Down; actEdit.Execute; end;
        keyRefresh : actRefresh.Execute;
        keyApply : actApply.Execute;
        keyCancel : actCancel.Execute;
        keyPrint : btnPrint.CheckMenuDropdown;
        keySearch : if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
        keyProcess : ;
        else begin
            if (Key=VK_RETURN) then begin
                if (Sender=grdrec) then SelectRecord(Sender)
                else if (Sender=edtSklad) then edtSkladChange(edtSklad)
                else exit;
            end else exit;
        end;
    end;
    key:=0;
end;

procedure TOstatokForm.grdRecKeyPress(Sender: TObject; var Key: Char);
begin
    if not btnEdit.Down then
        Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

//-------------------------------------------------------------------------

procedure TOstatokForm.grdRecMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
    p:TPoint;
begin
    if Button<>mbRight then Exit;
    p.x:=X;
    p.y:=Y;
    with TGridForm.Create(self) do begin
        Grid:=grdRec;
        p:=grdRec.ClientToScreen(p);
        Left:=p.x;
        Top:=p.y;
        Show;
    end;
end;

//------------------------------------------------------------------------------
// Show Rec Out Data

procedure TOstatokForm.miRecOutClick(Sender: TObject);
var p: TPoint;
begin
    if frmRecRef = nil then frmRecRef := TfrmRecRef.Create(Application);
    p := Mouse.CursorPos;
    if (p.X + frmRecRef.Width) > Screen.Width then p.X := Screen.Width - frmRecRef.Width;
    if (p.Y + frmRecRef.Height) > Screen.Height then p.Y := Screen.Height - frmRecRef.Height;
    frmRecRef.Left := p.X;
    frmRecRef.Top := p.Y;
    frmRecRef.Init(srcProd);
end;

procedure TOstatokForm.miRecFieldsClick(Sender: TObject);
var p:TPoint;
begin
    p := Mouse.CursorPos;
    with TGridForm.Create(self) do begin
        Grid:=grdRec;
        Left:=p.x;
        Top:=p.y;
        Show;
    end;
end;

end.
