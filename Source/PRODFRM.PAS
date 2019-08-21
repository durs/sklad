// Comments:
//    grdProduict.Columns:
//          CLASSNAME.ReadOnly = true
//          PRODUSERNAME.ReadOnly = true
//

unit prodfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  basefrm, editfrm, DyLook, IniFiles, QuickRpt, IBCustomDataSet, IBUpdateSQL,
  ActnList, Db, IBQuery, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, ComCtrls, ToolWin, Mask, Grids, Wwdbigrd, Wwdbgrid,
  wwdblook, Variants, Menus;

type
  TProductForm = class(TBaseForm)
    srcProduct: TDataSource;
    qryProduct: TIBQuery;
    ActionList: TActionList;
    actCancel: TAction;
    actApply: TAction;
    actNew: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actView: TAction;
    actPrint: TAction;
    ControlBar: TControlBar;
    ToolBar: TToolBar;
    btnAdd: TToolButton;
    btnDelete: TToolButton;
    btnEdit: TToolButton;
    btnView: TToolButton;
    btnSep1: TToolButton;
    btnSep2: TToolButton;
    btnCancel: TToolButton;
    btnApply: TToolButton;
    barNavigator: TDBNavigator;
    pnlSearch: TPanel;
    edtSearch: TEdit;
    actListView: TAction;
    actRefresh: TAction;
    btnRefresh: TToolButton;
    btnFilter: TSpeedButton;
    btnPrint: TToolButton;
    cbFields: TwwDBComboBox;
    updProduct: TIBUpdateSQL;
    qryProductPRODID: TIntegerField;
    qryProductCLASSID: TIntegerField;
    qryProductNAME: TIBStringField;
    qryClass: TIBQuery;
    qryClassCLASSID: TIntegerField;
    qryClassNAME: TIBStringField;
    qryClassSMALLNAME: TIBStringField;
    updClass: TIBUpdateSQL;
    srcClass: TDataSource;
    qryProductCLASSNAME: TIBStringField;
    qryClassFULLNAME: TIBStringField;
    updProduser: TIBUpdateSQL;
    qryProduser: TIBQuery;
    srcProduser: TDataSource;
    qryProduserPRODUSERID: TIntegerField;
    qryProduserNAME: TIBStringField;
    qryProduserSMALLNAME: TIBStringField;
    qryProduserFULLNAME: TIBStringField;
    qryProduserCOUNTRY: TIBStringField;
    qryProductPRODUSERID: TIntegerField;
    qryProductDIM: TIBStringField;
    qryProductUNIT: TFloatField;
    qryProductNDS: TFloatField;
    qryProductPRODUSERNAME: TIBStringField;
    qryProductLEN: TIBStringField;
    qryProductWEIGHT: TFloatField;
    qryProductCOMMENT: TBlobField;
    qryProductSPOT: TIBStringField;
    qryProductSERTIFICAT: TBlobField;
    pnlView: TScrollBox;
    Label3: TLabel;
    Label1: TLabel;
    lbId: TDBText;
    Label17: TLabel;
    btnClass: TSpeedButton;
    Label2: TLabel;
    btnProduser: TSpeedButton;
    Label27: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label23: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtComment: TDBEdit;
    edtName: TDBEdit;
    edtClass: TwwDBLookupCombo;
    edtProduser: TwwDBLookupCombo;
    edtSert: TDBEdit;
    edtLen: TwwDBComboBox;
    edtDim: TwwDBComboBox;
    edtUnit: TDBEdit;
    edtNDS: TDBEdit;
    edtWeight: TDBEdit;
    edtSpot: TDBEdit;
    grdProduct: TwwDBGrid;
    splitter: TSplitter;
    qryProductKIND: TSmallintField;
    qryProductPRICE: TFloatField;
    Label9: TLabel;
    edtPrice: TDBEdit;
    btnPrice: TDBCheckBox;
    mPrint: TPopupMenu;
    miPrice: TMenuItem;
    N1: TMenuItem;
    miPrintFile: TMenuItem;
    btnFilterPrice: TCheckBox;
    actQuery: TAction;
    mQuery: TPopupMenu;
    btnQuery: TToolButton;
    miCorrectWeight: TMenuItem;
    Label10: TLabel;
    edtPrice2: TDBEdit;
    Label11: TLabel;
    edtPrice3: TDBEdit;
    qryProductPRICE2: TFloatField;
    qryProductPRICE3: TFloatField;
    qryProductCLASS: TIBStringField;
    qryProductPRODUSER: TIBStringField;
    qryProductNEWPRICE: TFloatField;
    qryProductNEWPRICE2: TFloatField;
    qryProductNEWPRICE3: TFloatField;
    qryProductPRICE4: TFloatField;
    qryProductPRICE5: TFloatField;
    qryProductNEWPRICE4: TFloatField;
    qryProductNEWPRICE5: TFloatField;
    Label12: TLabel;
    edtPrice4: TDBEdit;
    Label13: TLabel;
    edtPrice5: TDBEdit;
    qryProductWCNT: TFloatField;
    Label14: TLabel;
    edtWeightCount: TDBEdit;
    procedure SeachEditChange(Sender: TObject);
    procedure ActionExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModifiedData(DataSet: TDataSet);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SelectRecord(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFilterClick(Sender: TObject);
    procedure cbFieldsChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdProductTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure grdProductCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure grdProductCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure btnClassClick(Sender: TObject);
    procedure frmEditClose(Sender: TObject);
    procedure edtClassEnter(Sender: TObject);
    procedure srcProductDataChange(Sender: TObject; Field: TField);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryBeforeOpen(DataSet: TDataSet);
    procedure qryBlobSetText(Sender: TField; const Text: String);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure grdProductKeyPress(Sender: TObject; var Key: Char);
    procedure PrintReport(Sender: TObject);
    procedure PrintReportPrice(Sender: TObject);
    procedure ExecuteQuery(Sender: TObject);
    procedure qryProductFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryProductCalcFields(DataSet: TDataSet);
  private
    Modified, lock:boolean;
    DBLookup:TDyDBLookup;
    SQLParser:TDySQLParser;
    filter:string;
    frmEdit:TfrmEdit;
    frmEditHeight:integer;
    printlck: boolean;
    procedure SetModified(Value:boolean);
    procedure WMTimer(var Message:TWMTimer); message WM_TIMER;
    procedure FilterRecords(Sender:TObject; const filter:string);
  protected
    procedure DestroyCancel; override;
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
  end;

implementation
uses dataunit, config, dydbutil, print, repdataunit;
{$R *.DFM}

constructor TProductForm.Create(AOwner:TComponent);
begin
    inherited;
    //init objects
    lock := false;
    DBLookup:=TDyDBLookup.Create(Data.QuoteChar);
    DBLookup.Style:=DBLookup.Style+[lsSQLFilter];
    DBLookup.RecordCount:=5;
    DBLookup.OnApply:=SelectRecord;
    DBLookup.DataSource:=srcProduct;
    DBLookup.DataField:='NAME';
    DBLookup.Control:=edtSearch;
    DBLookup.OnFilter:=FilterRecords;
    SQLParser:=TDySQLParser.Create(qryProduct.SQL.Text);
    SQLParser.OrderBy:=CurrentConfig.getString(Key+'.orderby');
    pnlView.Height:=CurrentConfig.getInteger(Key+'.pnlview.height', pnlView.Height);

    //configurate
    qryProductWEIGHT.DisplayFormat := FormatNum2;
    grdProduct.OnCalcCellColors := Data.GridCalcCellColors;
    cbFields.Items.Text := getSearchFieldsMapped(qryProduct);
    cbFields.Value := qryProductNAME.FieldName;
    cbFields.Hint := msgFilterComboHint;

    btnFilter.Down:=CurrentConfig.getBoolean(Key+'.filtered');
    btnFilter.Hint:=msgFilterBtnHint;
    btnFilterClick(btnFilter);

    qryProduct.CachedUpdates := UseCachedUpdates;
    qryClass.CachedUpdates := UseCachedUpdates;
    qryProduser.CachedUpdates := UseCachedUpdates;
    if UseCachedUpdates then begin
        qryProduct.Transaction := Data.trDefault;
        qryClass.Transaction := Data.trDefault;
        qryProduser.Transaction := Data.trDefault;
    end else begin
        qryProduct.Transaction := Data.trApply;
        qryClass.Transaction := Data.trApply;
        qryProduser.Transaction := Data.trApply;
    end;

    // append reports
    if RepData.InitMenu(miPrice.Parent, miPrice.Parent.IndexOf(miPrice), 1, PrintReportPrice) then
        miPrice.Free;

    //activate queries
    qryProduct.Active:=true;
    CurrentConfig.readFields(key + '.query', qryProduct);
    
    actEdit.Execute;
end;

procedure TProductForm.DestroyCancel;
begin
  inherited;
  qryProduct.Active:=true;
end;

destructor TProductForm.Destroy;
begin
  CurrentConfig.setInteger(Key+'.pnlview.height', pnlView.Height);
  CurrentConfig.writeFields(key+'.query', qryProduct);
  CurrentConfig.setString(Key+'.orderby', SQLParser.OrderBy);
  CurrentConfig.setBoolean(Key+'.filtered', btnFilter.Down);
  DBLookup.Free;
  SQLParser.Free;
  inherited;
end;

procedure TProductForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Modified then case MessageBox(msgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
    mrYes: actApply.Execute;
    mrNo: SetModified(false);
    mrCancel: CanClose:=false;
  end;
end;

procedure TProductForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DestroyTimeout;
end;

procedure TProductForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
  inherited;
  case Event of
    appProductChange: if not Modified then actRefresh.Execute;
  end;
end;

procedure TProductForm.SetModified(Value:boolean);
begin
  Modified:=Value;
  actApply.Enabled:=Modified;
  actCancel.Enabled:=Modified;
end;

procedure TProductForm.ActionExecute(Sender: TObject);
var
    readonly:boolean;
    //CurBookmark: string;
    //id: integer;
begin
    if (Sender=actNew) then begin
        btnEdit.Down:=true;
        actEdit.Execute;
        btnView.Down:=true;
        actView.Execute;
        qryProduct.Insert;
        
    end else if (Sender=actDelete) then begin
        if MessageBox(msgDelete,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
        btnView.Down:=false;
        actView.Execute;
        qryProduct.Delete;

    end else if (Sender=actEdit) then begin
        readonly:=not btnEdit.Down;
        grdProduct.ReadOnly:=readonly;
        with grdProduct do if readonly then Options := Options - [dgEditing] else Options := Options + [dgEditing];
        btnPrice.ReadOnly:=readonly;
        edtName.ReadOnly:=readonly;
        edtClass.ReadOnly:=readonly;
        edtProduser.ReadOnly:=readonly;
        edtDim.ReadOnly:=readonly;
        edtUnit.ReadOnly:=readonly;
        edtLen.ReadOnly:=readonly;
        edtWeight.ReadOnly:=readonly;
        edtWeightCount.ReadOnly:=readonly;
        edtNds.ReadOnly:=readonly;
        edtPrice.ReadOnly:=readonly;
        edtPrice2.ReadOnly:=readonly;
        edtPrice3.ReadOnly:=readonly;
        edtPrice4.ReadOnly:=readonly;
        edtPrice5.ReadOnly:=readonly;
        edtSert.ReadOnly:=readonly;
        edtSpot.ReadOnly:=readonly;
        edtComment.ReadOnly:=readonly;
        
    end else if (Sender=actApply) then begin
        if not Modified then Exit;
        //if not UseCachedUpdates or (qryProduct.UpdateStatus = usInserted) then id := qryProductPRODID.Value else id := 0;
        if UseCachedUpdates then Data.ApplyUpdates([qryClass,qryProduser,qryProduct])
        else Data.trApply.CommitRetaining;
        SetModified(false);
        appEventPost(self, appProductChange, nil);
        //if (id <> 0) then qryProduct.Locate('PRODID', id, []);  // עמנלמח

    end else if (Sender=actCancel) then begin
        if not Modified or (MessageBox(MsgCancel, MsgQuestion, MB_ICONQUESTION or MB_YESNO)<>mrYes) then Exit;
        qryProduct.CheckBrowseMode;
        SetModified(false);
        if UseCachedUpdates then actRefresh.Execute
        else Data.trApply.RollbackRetaining;

    end else if (Sender=actRefresh) then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        with qryProduct do try
            //if Active and not qryProductPRODID.IsNull then CurBookmark:=Bookmark;
            DisableControls;
            Active:=false;
            qryClass.Active:=false;
            qryProduser.Active:=false;
            if not (fsInactive in self.State) then begin
                Active:=true;
                if (edtClass.Focused) then qryClass.Active:=true;
                if (edtProduser.Focused) then qryProduser.Active:=true;
                //Bookmark:=CurBookmark; - עמנלמח
            end;
        finally
            EnableControls;
        end;
        TCrackDataSet(qryProduct).RefreshControls; //refresh

    end else if (Sender=actView) or (Sender=actListView) then begin
        pnlView.Visible := btnView.Down;
        splitter.Visible := btnView.Down;
        btnView.Top := 0;
    end;
end;

procedure TProductForm.ExecuteQuery(Sender: TObject);
begin
    if MessageBox(pchar(TMenuItem(Sender).Caption + '?'), MsgQuestion, MB_ICONQUESTION or MB_YESNO) <> mrYes then exit;

    if Sender = miCorrectWeight then try
        Screen.Cursor := crHourGlass;
        msgStatus(msgWait);

        btnEdit.Down := true;
        actEdit.Execute;

        qryProduct.First;
        while (not qryProduct.Eof) do begin
            qryProduct.Edit;
            srcProductDataChange(nil, qryProductLEN);
            qryProduct.Next;
        end;

    finally
        Screen.Cursor := crDefault;
    end;
    msgStatus('');
end;

procedure TProductForm.SelectRecord(Sender: TObject);
begin
    if qryProductPRODID.isNull then Exit;
    if (GetKeyState(VK_CONTROL) and $80 <> 0)
        then appEventPost(Self, appProductSelect, qryProduct)
        else begin
            btnView.Down:=true;
            actView.Execute;
        end;
end;
//------------search and filter routens----------------------
procedure TProductForm.cbFieldsChange(Sender: TObject);
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

procedure TProductForm.WMTimer(var Message:TWMTimer);
begin
    inherited;
    if Message.TimerID=1 then DBLookup.Lookup(edtSearch.Text);
end;

procedure TProductForm.SeachEditChange(Sender: TObject);
begin
    if Sender=edtSearch then begin
        DBLookup.LookupPause(Handle, 0, 1);
    end else begin
        actRefresh.Execute;
    end;
end;

procedure TProductForm.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    FormKeyDown(Sender, Key, Shift);
    if (key <> 0) and DBLookup.DoKey(Key, Shift) then key := 0;
end;

procedure TProductForm.btnFilterClick(Sender: TObject);
begin
    with DBLookup do if btnFilter.Down
        then Style := Style + [lsFiltered]
        else Style := Style - [lsFiltered];
    if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
end;

procedure TProductForm.FilterRecords(Sender:TObject; const filter:string);
begin
    self.filter := filter;
    try
        actRefresh.Execute;
    finally
        //self.filter := '';
    end;
end;

//-----------------------queries routens----------------------------

procedure TProductForm.qryBlobGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TProductForm.qryBlobSetText(Sender: TField;
  const Text: String);
begin
    data.setBlobValue(Sender as TBlobField,Text);
end;

procedure TProductForm.ModifiedData(DataSet: TDataSet);
begin
  SetModified(true);
end;

procedure TProductForm.qryBeforeOpen(DataSet: TDataSet);
var s: string;
begin
    printlck := false;
    if Dataset=qryProduct then begin
        s:='';
        if btnFilterPrice.Checked then s := ' (kind = 1) ';
        if filter <> '' then begin
            if s <> '' then s := s + ' and ';
            s := s + filter;
        end;
        SQLParser.Where := s;
        qryProduct.SQL.Text := SQLParser.SQL;
    end;
end;

procedure TProductForm.qryAfterInsert(DataSet: TDataSet);
begin
    if Dataset=qryProduct then begin
        qryProductPRODID.AsInteger:=Data.GenID('GEN_PRODID');
        qryProductDIM.AsString:='רע';
        qryProductUNIT.AsFloat:=1;
        qryProductNDS.AsFloat:=20;
        qryProductWCNT.AsInteger:=1;
        qryProductKIND.AsInteger:=1;
        qryProductSERTIFICAT.AsVariant:=null;
        qryProductCOMMENT.AsVariant:=null;
        if Visible and edtName.CanFocus then edtName.SetFocus;
    end else if Dataset=qryClass then begin
        qryClassCLASSID.AsInteger:=0;
    end else if Dataset=qryProduser then begin
        qryProduserPRODUSERID.AsInteger:=0;
    end;
end;

procedure TProductForm.qryBeforePost(DataSet: TDataSet);
begin
    if Dataset=qryClass then begin
        if not qryClassNAME.IsNull and (qryClassCLASSID.AsInteger=0) then qryClassCLASSID.AsInteger:=Data.GenID('GEN_CLASSID')
    end else if Dataset=qryProduser then begin
        if not qryProduserNAME.IsNull and (qryProduserPRODUSERID.AsInteger=0) then qryProduserPRODUSERID.AsInteger:=Data.GenID('GEN_PRODUSERID');
    end;
end;

procedure TProductForm.qryAfterPost(DataSet: TDataSet);
begin
    if Dataset=qryClass then begin
        if qryClassCLASSID.AsInteger=0 then qryClass.Delete;
    end else if Dataset=qryProduser then begin
        if qryProduserPRODUSERID.AsInteger=0 then qryProduser.Delete;
    end;
end;

procedure TProductForm.srcProductDataChange(Sender: TObject;
  Field: TField);
var
    i, j: integer;
    s, dim, len, buf: string;
    weight, v1, v2: double;
begin
    if (Field = qryProductDIM) or (Field = qryProductLEN) then begin
        dim := AnsiLowerCase(Trim(qryProductDIM.AsString));
        len := AnsiLowerCase(Trim(qryProductLEN.AsString));

        if (dim = 'ךד') or (dim = 'כ') then v2 := 1
        else if dim = 'ע' then v2 := 1000
        else v2 := 0.001;

        v1 := 0; j := 0;
        SetLength(buf, Length(len) + 1);
        for i := 1 to Length(len) do begin
            case len[i] of
            '0' .. '9': begin
                    inc(j);
                    buf[j] := len[i];
                end;
            '.', ',': begin
                    inc(j);
                    buf[j] := DecimalSeparator;
                end;
            '/': try
                    buf[j + 1] := #0;
                    j := 0;
                    v1 := StrToFloat(buf);
                except
                end;
            'ד': if (i > 1) and (len[i - 1] = 'ך') then v2 := 1 else v2 := 0.001;
            'כ': v2 := 1;
            'ע': v2 := 1000;
            end;
        end;

        if (j > 0) and ((j > 1) or (buf[1] <> DecimalSeparator)) then
        try
            buf[j + 1] := #0;
            v2 := StrToFloat(buf) * v2;
        except
        end;
        weight := v2;
        if (v1 <> 0) then weight := weight * v1;
        qryProductWEIGHT.Value := ABS(weight);
        
        (*
        if (dim = 'ךד') or (dim = 'כ') then qryProductWEIGHT.Value := 1
        else if dim = 'ע' then qryProductWEIGHT.Value := 1000
        else begin
            p := Pos('/', len);
            if p > 0 then try
                qryProductWEIGHT.Value := StrToFloat(Copy(len, p + 1, Length(len))) / 1000;
            except
                qryProductWEIGHT.AsVariant := null;
            end;
        end
        *)
    end;
    if (Field=qryProductDIM) then begin
        if qryProductDIM.AsString='ךד' then qryProductLEN.AsString:='גוס.' else qryProductLEN.AsVariant:=null;
    end else if (Field=qryProductCLASSNAME) then begin
        s:=qryProductCLASSNAME.Value;
        if (s<>'')and((qryClassNAME.Value=s) or qryClass.Locate('NAME',s,[])) then begin
            qryProductCLASSID.Value:=qryClassCLASSID.Value;
        end else begin
            if s<>'' then qryProductCLASSNAME.AsVariant:=null;
            qryProductCLASSID.AsVariant:=null;
        end;
    end else if (Field=qryProductPRODUSERNAME) then begin
        s:=qryProductPRODUSERNAME.Value;
        if (s<>'')and((qryProduserNAME.Value=s) or qryProduser.Locate('NAME',s,[])) then begin
            qryProductPRODUSERID.Value:=qryProduserPRODUSERID.Value;
        end else begin
            if s<>'' then qryProductPRODUSERNAME.AsVariant:=null;
            qryProductPRODUSERID.AsVariant:=null;
        end;
    end;
end;
//-----------------------grid routens-----------------------------------
procedure TProductForm.grdProductTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if SQLParser.OrderByUpdate(qryProduct.FieldByName(AFieldName).origin) then actRefresh.Execute;
end;

procedure TProductForm.grdProductCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
    case SQLParser.OrderByState(qryProduct.FieldByName(AFieldName).origin) of
        0: AFont.Style:=[];
        else AFont.Style:=[fsBold];
    end;
end;

procedure TProductForm.grdProductCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
  case SQLParser.OrderByState(Field.origin) of
    -1 : TitleImageAttributes.ImageIndex:=1;
    1  : TitleImageAttributes.ImageIndex:=0;
    else TitleImageAttributes.ImageIndex:=-1;
  end;
end;
//----------------------keys routens-------------------------------
procedure TProductForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case data.getKeyAction(key,shift) of
        keyView : begin btnView.Down:=not btnView.Down; actView.Execute; end;
        keyNew : actNew.Execute;
        keyDelete : actDelete.Execute;
        keyEdit : begin btnEdit.Down:=not btnEdit.Down; actEdit.Execute; end;
        keyRefresh : actRefresh.Execute;
        keyApply : actApply.Execute;
        keyCancel : actCancel.Execute;
        keyPrint : actPrint.Execute;
        keySearch : if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
        keyProcess : ;
        else begin
            if (Key=VK_RETURN) then begin
                if (Sender=grdProduct) then SelectRecord(Sender)
                else if (ssCtrl in Shift) then begin
                    if (Sender=edtClass) then btnClass.Click
                    else if (Sender=edtProduser) then btnProduser.Click
                    else exit;
                end else exit;
            end else if (Key=VK_INSERT) and (ssCtrl in Shift) then begin
                if (Sender=edtClass) then begin qryProductCLASSID.AsVariant:=null; btnClass.Click; end
                else if (Sender=edtProduser) then begin qryProductPRODUSERID.AsVariant:=null; btnProduser.Click; end
                else exit;
            end else if (Key=VK_DOWN) and (ssCtrl in Shift) then begin
                if Sender<>grdProduct then qryProduct.Next else exit;
            end else if (Key=VK_UP) and (ssCtrl in Shift) then begin
                if Sender<>grdProduct then qryProduct.Prior else exit;
            end else if (Key=VK_HOME) and (ssCtrl in Shift) then begin
                if Sender<>grdProduct then qryProduct.First else exit;
            end else if (Key=VK_END) and (ssCtrl in Shift) then begin
                if Sender<>grdProduct then qryProduct.Last else exit;
            end else exit;
        end;
    end;
    key:=0;
end;
//----------------class & produser routens-----------------------------
procedure TProductForm.edtClassEnter(Sender: TObject);
begin
    if Sender = edtClass then qryClass.Active:=true
    else if Sender = edtProduser then qryProduser.Active:=true;
end;

procedure TProductForm.btnClassClick(Sender: TObject);
var value:integer;
begin
    if frmEdit=nil then begin
        frmEdit:=TfrmEdit.Create(self);
        frmEdit.Parent:=self;
        frmEdit.onClose:=frmEditClose;
        frmEditHeight:=frmEdit.Height;
    end;
    if frmEdit.visible then begin
        frmEdit.Hide;
        Exit;
    end;
    frmEdit.Readonly:=not btnEdit.Down;
    if sender=btnClass then begin
        edtClass.setFocus;
        value:=qryProductCLASSID.value;
        if ((value=0) or ((qryClassCLASSID.value<>value) and not qryClass.Locate('CLASSID',value,[]))) and btnEdit.Down and qryClass.CanModify then qryClass.Insert;
        frmEdit.DataSource:=srcClass;
    end else if sender=btnProduser then begin
        edtProduser.setFocus;
        value:=qryProductPRODUSERID.value;
        if ((value=0) or ((qryProduserPRODUSERID.value<>value) and not qryProduser.Locate('PRODUSERID',value,[]))) and btnEdit.Down and qryProduser.CanModify then qryProduser.Insert;
        frmEdit.DataSource:=srcProduser;
    end else Exit;
    frmEdit.Top:=pnlView.Top+TControl(Sender).Top+TControl(Sender).Height + 2;
    frmEdit.Height:=pnlView.Height-(frmEdit.Top-pnlView.Top); if (frmEdit.Height > frmEditHeight) then frmEdit.Height := frmEditHeight;
    frmEdit.Left:=edtClass.Left;
    frmEdit.Width:=edtClass.Width+btnClass.Width;
    frmEdit.Show;
    frmEdit.SetFocus;
end;

procedure TProductForm.frmEditClose(Sender: TObject);
begin
    if frmEdit.DataSource=srcClass then begin
        if btnEdit.Down and frmEdit.Applied then begin
            qryProduct.Edit;
            qryProductCLASSNAME.Value:=qryClassNAME.Value
        end;
        if Visible then edtClass.SetFocus;
    end else if frmEdit.DataSource=srcProduser then begin
        if btnEdit.Down and frmEdit.Applied then begin
            qryProduct.Edit;
            qryProductPRODUSERNAME.Value:=qryProduserNAME.Value
        end;
        if Visible then edtProduser.SetFocus;
    end;
end;

procedure TProductForm.grdProductKeyPress(Sender: TObject; var Key: Char);
begin
    if not btnEdit.Down then
        Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

//-------------------------------------------------------------------------------------

procedure TProductForm.PrintReportPrice(Sender: TObject);
begin
    if Modified then case MessageBox(MsgApply, MsgQuestion, MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: begin actApply.Execute; end;
        mrNo: ;
        mrCancel: Exit;
    end;
    Data.check_sklad;
    printlck := true;
    try
        printPrice(rpUseProduct, 0, qryProduct, (Sender as TMenuItem).Tag);
    finally
        printlck := false;
        qryProduct.Resync([rmExact]);
    end;
end;

procedure TProductForm.PrintReport(Sender: TObject);
begin
    if (Sender = miPrice) then begin
        if Modified then case MessageBox(MsgApply, MsgQuestion, MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; end;
            mrNo: ;
            mrCancel: Exit;
        end;
        Data.check_sklad;
        printlck := true;
        try
            printPrice(rpUseProduct, 0, qryProduct);
        finally
            printlck := false;
            qryProduct.Resync([rmExact]);
        end;
    end
    else if (Sender = miPrintFile) then begin
        Data.save(grdProduct, Caption, 'products', 0, 0, 0);
    end;
end;

procedure TProductForm.qryProductFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept := not printlck or (qryProductKIND.Value = 1);
end;

procedure TProductForm.qryProductCalcFields(DataSet: TDataSet);
begin
    qryProductNEWPRICE.Value := qryProductPRICE.Value;
    qryProductNEWPRICE2.Value := qryProductPRICE2.Value;
    qryProductNEWPRICE3.Value := qryProductPRICE3.Value;
    qryProductNEWPRICE4.Value := qryProductPRICE4.Value;
    qryProductNEWPRICE5.Value := qryProductPRICE5.Value;
end;

end.
