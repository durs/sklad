unit debitfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  basefrm, DyLook, IniFiles, QuickRpt, IBCustomDataSet, IBUpdateSQL, variants,
  ActnList, Db, IBQuery, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, ComCtrls, ToolWin, Mask, Grids, Wwdbigrd, Wwdbgrid,
  wwdblook, Menus;

type
  TDebitForm = class(TBaseForm)
    DataSource: TDataSource;
    qryDebit: TIBQuery;
    ActionList: TActionList;
    actCancel: TAction;
    actApply: TAction;
    actNew: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actView: TAction;
    actPrint: TAction;
    barControl: TControlBar;
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
    grdRec: TwwDBGrid;
    pnlSklad: TPanel;
    btnDebit: TRadioButton;
    btnCredit: TRadioButton;
    edtClientKind: TComboBox;
    qryDebitSummary: TIBQuery;
    qryDebitCLIENTID: TIntegerField;
    qryDebitCLIENT: TIBStringField;
    qryDebitOST: TFloatField;
    qryDebitSUM0: TFloatField;
    qryDebitDOC: TIBStringField;
    qryDebitDOCID: TIntegerField;
    qryDebitSummaryCLIENTID: TIntegerField;
    qryDebitSummaryOST: TFloatField;
    qryDebitSummaryCLIENT: TIBStringField;
    btnSummary: TCheckBox;
    edtSklad: TDBLookupComboBox;
    mPrint: TPopupMenu;
    miRepDebitCredit: TMenuItem;
    miRepDebit: TMenuItem;
    miRepSaldo: TMenuItem;
    N2: TMenuItem;
    procedure SeachEditChange(Sender: TObject);
    procedure ActionExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModifiedData(DataSet: TDataSet);
    procedure qryDebitAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SelectRecord(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFilterClick(Sender: TObject);
    procedure qryDebitBeforeOpen(DataSet: TDataSet);
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
    procedure RefreshData(Sender: TObject);
    procedure qryDebitSUMGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure mPrintClick(Sender: TObject);
    procedure mPrintPopup(Sender: TObject);
    procedure grdRecKeyPress(Sender: TObject; var Key: Char);
  private
    SkladID: integer;
    Modified, lock: boolean;
    DBLookup: TDyDBLookup;
    SQLParser: TDySQLParser;
    filter: string;
    procedure SetModified(Value:boolean);
    procedure WMTimer(var Message:TWMTimer); message WM_TIMER;
    procedure FilterRecords(Sender:TObject; const filter:string);
  protected
    procedure DestroyCancel; override;
    procedure setQuery(qry:TIBQuery);
    function getQuery:TIBQuery;
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
  end;

implementation
uses dataunit,config,dydbutil,print;
{$R *.DFM}

constructor TDebitForm.Create(AOwner:TComponent);
begin
    inherited;
    lock := false;
    include(State,fsCreate);
    //
    SkladID:=Data.qrySkladCLIENTID.Value;
    edtSklad.KeyValue:=SkladID;

    //init objects
    DBLookup:=TDyDBLookup.Create(Data.QuoteChar);
    DBLookup.Style:=DBLookup.Style+[lsSQLFilter];
    DBLookup.RecordCount:=5;
    DBLookup.OnApply:=SelectRecord;
    DBLookup.DataSource:=DataSource;
    DBLookup.Control:=edtSearch;
    DBLookup.OnFilter:=FilterRecords;
    //configurate
    grdRec.OnCalcCellColors:=Data.GridCalcCellColors;

    btnCredit.Checked:=CurrentConfig.getBoolean(Key+'.iscredit');
    btnDebit.Checked:=not btnCredit.Checked;
    edtClientKind.ItemIndex:=CurrentConfig.getInteger(Key+'.clientkind',0);
    btnSummary.Checked:=CurrentConfig.getBoolean(Key+'.issummary');

    btnFilter.Down:=CurrentConfig.getBoolean(Key+'.filtered');
    btnFilter.Hint:=msgFilterBtnHint;
    btnFilterClick(btnFilter);

    //activate queries
    exclude(State,fsCreate);
    RefreshData(btnSummary);
end;

procedure TDebitForm.DestroyCancel;
begin
    inherited;
    DataSource.DataSet.Active:=true;
end;

destructor TDebitForm.Destroy;
begin
    CurrentConfig.setBoolean(Key+'.filtered',btnFilter.Down);
    CurrentConfig.setInteger(Key+'.clientkind',edtClientKind.ItemIndex);
    CurrentConfig.setBoolean(Key+'.iscredit',btnCredit.Checked);
    CurrentConfig.getBoolean(Key+'.issummary',btnSummary.Checked);
    DBLookup.Free;
    SQLParser.Free;
    inherited;
end;

procedure TDebitForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Modified then case MessageBox(msgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
    mrYes: actApply.Execute;
    mrNo: SetModified(false);
    mrCancel: CanClose:=false;
  end;
end;

procedure TDebitForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DestroyTimeout;
end;

procedure TDebitForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
    inherited;
    case Event of
        appSkladSelect: edtSkladChange(nil);
        appDebitChange: if not Modified then actRefresh.Execute;
    end;
end;

procedure TDebitForm.SetModified(Value:boolean);
begin
    Modified:=Value;
    actApply.Enabled:=Modified;
    actCancel.Enabled:=Modified;
end;

procedure TDebitForm.ActionExecute(Sender: TObject);
var
    CurBookmark: string;
    readonly:boolean;
begin
    if (Sender=actNew) then begin
        //btnEdit.Down:=true;
        actEdit.Execute;
        qryDebit.Insert;
    end else if (Sender=actDelete) then begin
        if MessageBox(msgDelete,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
        qryDebit.Delete;
    end else if (Sender=actEdit) then begin
        readonly:=true;//not btnEdit.Down;
        grdRec.ReadOnly:=readonly;
    end else if (Sender=actApply) then begin
        if not Modified then Exit;
        Data.ApplyUpdates([qryDebit]);
        SetModified(false);
        appEventPost(self,appClientChange,nil);
    end else if (Sender=actCancel) then begin
        if not Modified then Exit;
        qryDebit.CheckBrowseMode;
        SetModified(false);
        actRefresh.Execute;
        //qryClient.CancelUpdates;
    end else if (Sender=actRefresh) then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        if (DataSource.DataSet<>nil) then with TIBQuery(DataSource.DataSet) do try
            if Active and not FieldByName('CLIENTID').IsNull then CurBookmark:=Bookmark;
            DisableControls;
            Active:=false;
            if not (fsInactive in self.State) then begin
                Active:=true;
                Bookmark:=CurBookmark;
            end;
        finally
            EnableControls;
        end;
    end;
end;

procedure TDebitForm.SelectRecord(Sender: TObject);
begin
    if not qryDebit.Active or qryDebitDOCID.isNull then Exit;
    if (GetKeyState(VK_CONTROL) and $80 <> 0)
        then appEventPost(Self,appDebitSelect,qryDebit)
        else actView.Execute;
end;

procedure TDebitForm.setQuery(qry:TIBQuery);
var s:string;
begin
    with DataSource do begin
        if (Dataset=qry) then exit;
        if (Dataset<>nil) then begin
            CurrentConfig.writeFields(key+'.'+Dataset.Name,Dataset);
            if SQLParser<>nil then CurrentConfig.setString(key+'.'+Dataset.Name+'.orderby',SQLParser.OrderBy);

            s := cbFields.Value;
            cbFields.Clear;

            Dataset.Active := false;
            SQLParser.Where:='';
            TIBQuery(Dataset).SQL.Text:=SQLParser.SQL;
        end;
        Dataset:=qry;
    end;
    filter:='';
    SQLParser.Free; SQLParser:=nil;
    if qry <> nil then begin
        SQLParser := TDYSQLParser.Create(qry.SQL.Text);
        //SQLParser.OrderBy := CurrentConfig.getString(key + '.' + qry.Name + '.orderby');
        qry.Active := true;
        CurrentConfig.readFields(key + '.' + qry.Name, qry);
        with cbFields do begin
            Items.Text := getSearchFieldsMapped(Qry);
            Value := s;
            if ItemIndex < 0 then ItemIndex := 0;
        end;
    end;
end;

function TDebitForm.getQuery:TIBQuery;
begin
    result:=DataSource.Dataset as TIBQuery;
    if not result.Active then result:=nil;
end;

procedure TDebitForm.RefreshData(Sender: TObject);
var qry:TIBQuery;
begin
    if (fsCreate in State) then exit;
    if Sender=btnSummary then begin
        if btnSummary.Checked then qry:=qryDebitSummary else qry:=qryDebit;
        setQuery(qry);
    end else begin
        actRefresh.Execute;
    end;
end;

procedure TDebitForm.mPrintPopup(Sender: TObject);
begin
    if btnDebit.Checked then miRepDebit.Caption:=btnDebit.Caption else miRepDebit.Caption:=btnCredit.Caption
end;

procedure TDebitForm.mPrintClick(Sender: TObject);
var
    qry1,qry2:TIBQuery;
    debitkind,id:integer;
begin
    if (Sender=miRepDebit) then begin
        debitkind:=1;
        if btnSummary.Checked then qry1:=qryDebitSummary else qry1:=qryDebit;
        qry2:=nil;
        if (not btnDebit.Checked) then begin
            debitkind:=2;
            qry2:=qry1;
            qry1:=nil;
        end;
        printDebit(btnSummary.Checked,debitkind,SkladID,edtClientKind.ItemIndex,qry1,qry2);
    end else if (Sender=miRepDebitCredit) then begin
        printDebit(btnSummary.Checked,3,SkladID,edtClientKind.ItemIndex);
    end else if (Sender=miRepSaldo) then begin
        qry1:=getQuery;
        if qry1=nil then id:=0 else id:=qry1.FieldByName('CLIENTID').AsInteger;
        printSaldo(SkladID,id);
    end;
end;

//------------search and filter routens----------------------

procedure TDebitForm.cbFieldsChange(Sender: TObject);
begin
    if (DBLookup = nil) or (DataSource.DataSet = nil) or (lock) then exit;
    lock := true;
    try
        DBLookup.DataField := cbFields.Value;
        DBLookup.Lookup(edtSearch.Text);
    finally
        lock := false;
    end;

end;

procedure TDebitForm.WMTimer(var Message:TWMTimer);
begin
    inherited;
    if Message.TimerID=1 then DBLookup.Lookup(edtSearch.Text);
end;

procedure TDebitForm.SeachEditChange(Sender: TObject);
begin
    if DBLookup<>nil then DBLookup.LookupPause(Handle,0,1);
end;

procedure TDebitForm.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    FormKeyDown(Sender,Key,Shift);
    if (key<>0) and DBLookup.DoKey(Key,Shift) then Key:=0;
end;

procedure TDebitForm.btnFilterClick(Sender: TObject);
begin
    with DBLookup do if btnFilter.Down
        then Style:=Style+[lsFiltered]
        else Style:=Style-[lsFiltered];
    if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
end;

procedure TDebitForm.FilterRecords(Sender:TObject; const filter:string);
begin
    self.filter:=filter;
    try
        actRefresh.Execute;
    finally
        //self.filter:='';
    end
end;
//---------------------query routens--------------------
procedure TDebitForm.qryBlobGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TDebitForm.qryBlobSetText(Sender: TField;
  const Text: String);
begin
    data.setBlobValue(Sender as TBlobField,Text);
end;

procedure TDebitForm.qryDebitSUMGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    Text:=FormatFloat(FormatCur,abs(Sender.AsFloat));
end;

procedure TDebitForm.ModifiedData(DataSet: TDataSet);
begin
    SetModified(true);
end;

procedure TDebitForm.qryDebitBeforeOpen(DataSet: TDataSet);
var
    s:string;
    kind:variant;
begin
    if btnDebit.Checked then s:='(ost>0)' else s:='(ost<0)';
    if edtClientKind.ItemIndex=0 then kind:=null else kind:=edtClientKind.ItemIndex;
    if filter<>'' then begin
        if S<>'' then S:=S+' and ';
        S:=S+filter;
    end;
    SQLParser.Where:=S;
    TIBQuery(Dataset).SQL.Text:=SQLParser.SQL;
    TIBQuery(Dataset).ParamByName('clientid').AsInteger:=SkladID;
    TIBQuery(Dataset).ParamByName('kind').Value:=kind;
end;

procedure TDebitForm.qryDebitAfterInsert(DataSet: TDataSet);
begin
    raise Exception.Create('');
end;
//------------------------sklad routens---------------------------------

procedure TDebitForm.edtSkladChange(Sender: TObject);
begin
    if (Data.qrySkladCLIENTID.Value<>SkladID) then begin
        SkladID:=Data.qrySkladCLIENTID.Value;
        actRefresh.Execute;
    end;
end;

//------------------------grid routens---------------------------------

procedure TDebitForm.grdRecTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
    if SQLParser=nil then exit;
    if SQLParser.OrderByUpdate(DataSource.DataSet.FieldByName(AFieldName).origin) then actRefresh.Execute;
end;

procedure TDebitForm.grdRecCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
    if SQLParser=nil then exit;
    case SQLParser.OrderByState(DataSource.DataSet.FieldByName(AFieldName).origin) of
        0: AFont.Style:=[];
        else AFont.Style:=[fsBold];
    end;
end;

procedure TDebitForm.grdRecCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
    if SQLParser=nil then exit;
    case SQLParser.OrderByState(Field.origin) of
        -1 : TitleImageAttributes.ImageIndex:=1;
        1  : TitleImageAttributes.ImageIndex:=0;
        else TitleImageAttributes.ImageIndex:=-1;
    end;
end;
//----------------------keys routens-------------------------------------
procedure TDebitForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case data.getKeyAction(key,shift) of
        //keyView : actView.Execute;
        //keyNew : actNew.Execute;
        //keyDelete : actDelete.Execute;
        //keyEdit : begin btnEdit.Down:=not btnEdit.Down; actEdit.Execute; end;
        keyRefresh : actRefresh.Execute;
        keyApply : actApply.Execute;
        keyCancel : actCancel.Execute;
        keyPrint : btnPrint.CheckMenuDropdown;
        keySearch : if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
        keyProcess : ;
        else begin
            if (Key=VK_RETURN) then begin
                if (Sender=grdRec) then SelectRecord(Sender)
                else if (Sender=edtSklad) then edtSkladChange(edtSklad)
                else exit;
            end else exit;
        end;
    end;
    key:=0;
end;

procedure TDebitForm.grdRecKeyPress(Sender: TObject; var Key: Char);
begin
    Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

//-------------------------------------------------------------------------


end.
