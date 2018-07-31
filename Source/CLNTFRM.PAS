unit clntfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  basefrm, IniFiles, QuickRpt, IBCustomDataSet, IBUpdateSQL,
  ActnList, Db, IBQuery, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, ComCtrls, ToolWin, Mask, Grids, Wwdbigrd, Wwdbgrid,
  DyLook, DyImage, Menus, wwdblook;

type
  TClientForm = class(TBaseForm)
    srcClient: TDataSource;
    qryClient: TIBQuery;
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
    qryClientCLIENTID: TIntegerField;
    qryClientNAME: TStringField;
    qryClientPHONE: TStringField;
    qryClientINN: TStringField;
    qryClientRS: TStringField;
    qryClientKS: TStringField;
    qryClientSKS: TStringField;
    qryClientBIK: TStringField;
    qryClientOKONX: TStringField;
    qryClientOKPO: TStringField;
    qryClientREG: TStringField;
    qryClientADRESS: TStringField;
    qryClientBANK: TStringField;
    qryClientKORBANK: TStringField;
    actRefresh: TAction;
    btnRefresh: TToolButton;
    btnFilter: TSpeedButton;
    btnPrint: TToolButton;
    cbFields: TwwDBComboBox;
    ClientUpdateSQL: TIBUpdateSQL;
    qryClientFULLNAME: TIBStringField;
    updSklad: TIBUpdateSQL;
    qrySklad: TIBQuery;
    srcSklad: TDataSource;
    qrySkladCLIENTID: TIntegerField;
    qrySkladDOCPARAM1: TSmallintField;
    qrySkladDOCPARAM2: TFloatField;
    qrySkladDOCPARAM3: TFloatField;
    qrySkladHIDDEN: TSmallintField;
    qrySkladCAPTION: TIBStringField;
    qrySkladLOGO: TBlobField;
    qrySkladCOMMENT1: TBlobField;
    qrySkladCOMMENT2: TBlobField;
    qrySkladCOMMENT3: TBlobField;
    qrySkladPRICE_PERCENT: TFloatField;
    qrySkladTITLE: TIBStringField;
    qrySkladPRICE_ROUND: TSmallintField;
    qrySkladKIND: TIntegerField;
    qrySkladNODOCPROD: TIntegerField;
    qrySkladNODOCPROD1: TIntegerField;
    qrySkladNOCHECK: TIntegerField;
    qrySkladNOORDER: TIntegerField;
    qrySkladNORORDER: TIntegerField;
    qrySkladNOPLAT: TIntegerField;
    qrySkladNOQUERY: TIntegerField;
    qrySkladNOVDOCPROD: TIntegerField;
    btnSklad: TCheckBox;
    grdClient: TwwDBGrid;
    pnlView: TPanel;
    pcClient: TPageControl;
    tsClient: TTabSheet;
    tsSklad: TTabSheet;
    Label6: TLabel;
    btnSkladCreate: TButton;
    pcSklad: TPageControl;
    tsOptions: TTabSheet;
    btnSkladDelete: TButton;
    edtSkladHidden: TDBCheckBox;
    edtSkladKind: TDBCheckBox;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtNoDocProd: TDBEdit;
    edtNoDocProd1: TDBEdit;
    edtNoCheck: TDBEdit;
    edtNoOrder: TDBEdit;
    edtNoPlat: TDBEdit;
    edtNoROrder: TDBEdit;
    edtNoQuery: TDBEdit;
    edtNoVDocProd: TDBEdit;
    tsPrice: TTabSheet;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label7: TLabel;
    edtSkladPricePer: TDBEdit;
    GroupBox1: TGroupBox;
    edtSkladParam2: TDBComboBox;
    btnInPrice: TCheckBox;
    GroupBox5: TGroupBox;
    edtSkladParam3: TDBComboBox;
    btnNalogInPrice: TCheckBox;
    btnNDS: TCheckBox;
    tsReport: TTabSheet;
    tsLogo: TTabSheet;
    pnlImage: TPanel;
    pnlName: TPanel;
    Label1: TLabel;
    lbClientID: TDBText;
    DBEdit5: TDBEdit;
    splitter: TSplitter;
    ScrollBox1: TScrollBox;
    Label31: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit11: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit16: TDBEdit;
    ScrollBox2: TScrollBox;
    Label20: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    edtSkladComment1: TDBMemo;
    edtSkladComment3: TDBMemo;
    edtSkladComment2: TDBMemo;
    edtSkladTitle: TDBEdit;
    edtSkladCaption: TDBEdit;
    qrySkladFONTNAME: TStringField;
    Label19: TLabel;
    edtSkladFont: TDBEdit;
    qrySkladDIRECTOR: TIBStringField;
    qrySkladBUGALTER: TIBStringField;
    qrySkladKASSIR: TIBStringField;
    qrySkladKLADOVCHIK: TIBStringField;
    Label43: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    qryClientADDRESS2: TIBStringField;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    mPrint: TPopupMenu;
    miPrintFile: TMenuItem;
    qrySkladPRICE_PARAM: TIntegerField;
    btnSkladUseLastPrice: TDBCheckBox;
    qrySkladPRICE_PERCENT2: TFloatField;
    qrySkladPRICE_ROUND2: TSmallintField;
    qrySkladPRICE_PERCENT3: TFloatField;
    qrySkladPRICE_ROUND3: TSmallintField;
    edtSkladPriceRound: TwwDBComboBox;
    edtSkladPricePer2: TDBEdit;
    edtSkladPriceRound2: TwwDBComboBox;
    edtSkladPricePer3: TDBEdit;
    edtSkladPriceRound3: TwwDBComboBox;
    qrySkladPRICE_PERCENT4: TFloatField;
    qrySkladPRICE_ROUND4: TSmallintField;
    qrySkladPRICE_PERCENT5: TFloatField;
    qrySkladPRICE_ROUND5: TSmallintField;
    qrySkladPRICE_NAME: TIBStringField;
    qrySkladPRICE_NAME2: TIBStringField;
    qrySkladPRICE_NAME3: TIBStringField;
    qrySkladPRICE_NAME4: TIBStringField;
    qrySkladPRICE_NAME5: TIBStringField;
    edtSkladPriceName: TDBEdit;
    edtSkladPriceName2: TDBEdit;
    edtSkladPriceName3: TDBEdit;
    Label27: TLabel;
    edtSkladPricePer4: TDBEdit;
    edtSkladPriceRound4: TwwDBComboBox;
    edtSkladPriceName4: TDBEdit;
    edtSkladPricePer5: TDBEdit;
    edtSkladPriceRound5: TwwDBComboBox;
    edtSkladPriceName5: TDBEdit;
    tsOffice: TTabSheet;
    qrySkladTOWN: TIBStringField;
    qrySkladMANAGER: TIBStringField;
    qrySkladDOVEREN: TIBStringField;
    Label21: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    qryClientREASON_PKO: TIBStringField;
    qryClientREASON_RKO: TIBStringField;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    qrySkladSTAMP: TBlobField;
    tsStamp: TTabSheet;
    pnlStamp: TPanel;
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
    procedure qryClientBeforeOpen(DataSet: TDataSet);
    procedure cbFieldsChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdClientTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure grdClientCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure grdClientCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure btnSkladCreateClick(Sender: TObject);
    procedure srcClientDataChange(Sender: TObject; Field: TField);
    procedure pcClientChange(Sender: TObject);
    procedure btnSkladDeleteClick(Sender: TObject);
    procedure DataChanged(Sender: TObject);
    procedure srcSkladDataChange(Sender: TObject; Field: TField);
    procedure PerFieldSetText(Sender: TField;
        const Text: String);
    procedure PerFieldGetText(Sender: TField;
        var Text: String; DisplayText: Boolean);
    procedure grdClientKeyPress(Sender: TObject; var Key: Char);
    procedure PrintReport(Sender: TObject);
  private
    Modified, ParamLock, lock: boolean;
    DocParam1: integer;
    DBLookup: TDyDBLookup;
    SQLParser: TDySQLParser;
    filter: string;
    imgLogo, imgStamp: TDyImage;
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
uses dataunit,config,dydbutil,dyobject;
{$R *.DFM}

constructor TClientForm.Create(AOwner:TComponent);
begin
  inherited;
  lock := false;
  pcClient.ActivePage := tsClient;
  pcSklad.ActivePage := tsOptions;
  TEdit(pcClient).OnKeyDown := OnKeyDown;
  TEdit(pcSklad).OnKeyDown := OnKeyDown;
  //init objects
  imgLogo := TDyImage.Create(self);
  imgLogo.Parent:=pnlImage;
  imgLogo.Align:=alClient;
  imgLogo.OnChange:=DataChanged;
  imgStamp := TDyImage.Create(self);
  imgStamp.Parent:=pnlStamp;
  imgStamp.Align:=alClient;
  imgStamp.OnChange:=DataChanged;
  DBLookup:=TDyDBLookup.Create(Data.QuoteChar);
  DBLookup.Style:=DBLookup.Style+[lsSQLFilter];
  DBLookup.RecordCount:=5;
  DBLookup.OnApply:=SelectRecord;
  DBLookup.DataSource:=srcClient;
  DBLookup.DataField:='NAME';
  DBLookup.Control:=edtSearch;
  DBLookup.OnFilter:=FilterRecords;
  SQLParser:=TDySQLParser.Create(qryClient.SQL.Text);
  SQLParser.OrderBy:=CurrentConfig.getString(Key+'.orderby');
  pnlView.Height:=CurrentConfig.getInteger(Key+'.pnlview.height', pnlView.Height);
  //configurate
  qrySkladPRICE_PERCENT.DisplayFormat:=FormatPer;

  grdClient.OnCalcCellColors:=Data.GridCalcCellColors;
  cbFields.Items.Text := getSearchFieldsMapped(qryClient);
  cbFields.Value := qryClientNAME.FieldName;
  cbFields.Hint := msgFilterComboHint;

  btnFilter.Down:=CurrentConfig.getBoolean(Key+'.filtered');
  btnFilter.Hint:=msgFilterBtnHint;
  btnFilterClick(btnFilter);

  //activate queries
  qrySklad.Active:=true;
  qryClient.Active:=true;
  CurrentConfig.readFields(key+'.query',qryClient);
end;

procedure TClientForm.DestroyCancel;
begin
  inherited;
  qryClient.Active:=true;
  qrySklad.Active:=true;
end;

destructor TClientForm.Destroy;
begin
  CurrentConfig.setInteger(Key+'.pnlview.height', pnlView.Height);
  CurrentConfig.writeFields(key+'.query',qryClient);
  CurrentConfig.setString(Key+'.orderby',SQLParser.OrderBy);
  CurrentConfig.setBoolean(Key+'.filtered',btnFilter.Down);
  DBLookup.Free;
  SQLParser.Free;
  inherited;
end;

procedure TClientForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Modified then case MessageBox(msgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
    mrYes: actApply.Execute;
    mrNo: SetModified(false);
    mrCancel: CanClose:=false;
  end;
end;

procedure TClientForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DestroyTimeout;
end;

procedure TClientForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
  inherited;
  case Event of
    appClientChange: if not Modified then actRefresh.Execute;
  end;
end;

procedure TClientForm.SetModified(Value:boolean);
begin
  Modified:=Value;
  actApply.Enabled:=Modified;
  actCancel.Enabled:=Modified;
end;

procedure TClientForm.ActionExecute(Sender: TObject);
var
    CurBookmark: string;
    id: integer;
    readonly:boolean;
    b2:boolean;
begin
    if (Sender=actNew) then begin
        btnEdit.Down:=true;
        actEdit.Execute;
        pcClient.ActivePage:=tsClient;
        btnView.Down:=true;
        actView.Execute;
        qryClient.Insert;
    end else if (Sender=actDelete) then begin
        if MessageBox(msgDeleteClient,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
        btnView.Down:=false;
        actView.Execute;
        qryClient.Delete;
    end else if (Sender=actEdit) then begin
        readonly:=not btnEdit.Down;
        DBEdit1.ReadOnly:=readonly; DBEdit2.ReadOnly:=readonly;
        DBEdit3.ReadOnly:=readonly; DBEdit4.ReadOnly:=readonly;
        DBEdit5.ReadOnly:=readonly; DBEdit6.ReadOnly:=readonly;
        DBEdit7.ReadOnly:=readonly; DBEdit8.ReadOnly:=readonly;
        DBEdit9.ReadOnly:=readonly; DBEdit10.ReadOnly:=readonly;
        DBEdit11.ReadOnly:=readonly; DBEdit12.ReadOnly:=readonly;
        DBEdit13.ReadOnly:=readonly; DBEdit14.ReadOnly:=readonly;
        DBEdit15.ReadOnly:=readonly; DBEdit16.ReadOnly:=readonly;
        DBEdit17.ReadOnly:=readonly; DBEdit18.ReadOnly:=readonly;
        DBEdit19.ReadOnly:=readonly;
        DBEdit20.ReadOnly:=readonly;
        DBEdit21.ReadOnly:=readonly;
        DBEdit22.ReadOnly:=readonly;
        DBEdit23.ReadOnly:=readonly;
        DBEdit24.ReadOnly:=readonly;

        edtSkladHidden.ReadOnly:=readonly;
        edtSkladKind.ReadOnly:=readonly;

        edtNoDocProd.ReadOnly:=readonly;
        edtNoVDocProd.ReadOnly:=readonly;
        edtNoDocProd1.ReadOnly:=readonly;
        edtNoCheck.ReadOnly:=readonly;
        edtNoOrder.ReadOnly:=readonly;
        edtNoROrder.ReadOnly:=readonly;
        edtNoPlat.ReadOnly:=readonly;
        edtNoQuery.ReadOnly:=readonly;

        edtSkladPriceName.ReadOnly:=readonly;
        edtSkladPricePer.ReadOnly:=readonly;
        edtSkladPriceRound.ReadOnly:=readonly;
        edtSkladPriceName2.ReadOnly:=readonly;
        edtSkladPricePer2.ReadOnly:=readonly;
        edtSkladPriceRound2.ReadOnly:=readonly;
        edtSkladPriceName3.ReadOnly:=readonly;
        edtSkladPricePer3.ReadOnly:=readonly;
        edtSkladPriceRound3.ReadOnly:=readonly;
        edtSkladPriceName4.ReadOnly:=readonly;
        edtSkladPricePer4.ReadOnly:=readonly;
        edtSkladPriceRound4.ReadOnly:=readonly;
        edtSkladPriceName5.ReadOnly:=readonly;
        edtSkladPricePer5.ReadOnly:=readonly;
        edtSkladPriceRound5.ReadOnly:=readonly;
        btnSkladUseLastPrice.ReadOnly:=readonly;
        edtSkladParam2.ReadOnly:=readonly;
        edtSkladParam3.ReadOnly:=readonly;
        edtSkladTitle.ReadOnly:=readonly;
        edtSkladCaption.ReadOnly:=readonly;
        edtSkladComment1.ReadOnly:=readonly;
        edtSkladComment2.ReadOnly:=readonly;
        edtSkladComment3.ReadOnly:=readonly;
        edtSkladFont.ReadOnly:=readonly;
        imgLogo.ReadOnly:=readonly;
        imgStamp.ReadOnly:=readonly;
    end else if (Sender=actApply) then begin
        if not Modified then Exit;
        //if qryClient.Active then qryClient.CheckBrowseMode; b1:=qryClient.Active and qryClient.UpdatesPending;
        if qrySklad.Active then qrySklad.CheckBrowseMode; b2:=qrySklad.Active and qrySklad.UpdatesPending;
        if (qryClient.UpdateStatus = usInserted) then id := qryClientCLIENTID.Value else id := 0;
        Data.ApplyUpdates([qryClient,qrySklad]);
        SetModified(false);
        appEventPost(self, appClientChange, nil);
        if b2 then appEventPost(self, appSkladChange, nil);
        if (id <> 0) then qryClient.Locate('CLIENTID', id, []);
    end else if (Sender=actCancel) then begin
        if not Modified or (MessageBox(MsgCancel, MsgQuestion, MB_ICONQUESTION or MB_YESNO)<>mrYes) then Exit;
        qryClient.CheckBrowseMode;
        qrySklad.CheckBrowseMode;
        SetModified(false);
        actRefresh.Execute;
        //qryClient.CancelUpdates;
    end else if (Sender=actRefresh) then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        try
            if qryClient.Active and not qryClientCLIENTID.IsNull then CurBookmark:=qryClient.Bookmark;
            qryClient.DisableControls;
            qryClient.Active:=false;
            qrySklad.Active:=false;
            if not (fsInactive in self.State) then begin
                qrySklad.Active:=true;
                qryClient.Active:=true;
                qryClient.Bookmark:=CurBookmark;
            end;
        finally
            qryClient.EnableControls;
        end;
        TCrackDataSet(qryClient).RefreshControls; //refresh
    end else if (Sender=actView) or (Sender=actListView) then begin
        pcClient.ActivePage:=tsClient;
        pnlView.Visible := btnView.Down;
        splitter.Visible := btnView.Down;
        btnView.Top := 0;
    end;
end;

procedure TClientForm.pcClientChange(Sender: TObject);
begin
    srcClientDataChange(Sender,nil);
end;

procedure TClientForm.btnSkladCreateClick(Sender: TObject);
begin
    qrySklad.Insert;
    pcSklad.Visible:=true;
    btnEdit.Down:=true;
    actEdit.Execute;
end;

procedure TClientForm.btnSkladDeleteClick(Sender: TObject);
begin
    qrySklad.Delete;
    pcSklad.Visible:=false;
    btnEdit.Down:=true;
    actEdit.Execute;
end;

procedure TClientForm.SelectRecord(Sender: TObject);
begin
    if qryClientCLIENTID.isNull then Exit;
    if (GetKeyState(VK_CONTROL) and $80 <> 0)
        then appEventPost(Self,appClientSelect,qryClient)
        else begin
            btnView.Down:=true;
            actView.Execute;
        end;
end;

procedure TClientForm.DataChanged(Sender: TObject);
var S:TStream;
begin
    if ParamLock then exit;
    if not btnEdit.Down then srcSkladDataChange(nil,nil)
    else if (Sender=btnNds) or (Sender=btnInPrice) or (Sender=btnNalogInPrice) then begin
        if btnNds.Checked then DocParam1:=DocParam1 or dpNds else DocParam1:=DocParam1 and not dpNds;
        if btnInPrice.Checked then DocParam1:=DocParam1 or dpInPrice else DocParam1:=DocParam1 and not dpInPrice;
        if btnNalogInPrice.Checked then DocParam1:=DocParam1 or dpNalogInPrice else DocParam1:=DocParam1 and not dpNalogInPrice;
        qrySklad.Edit;
        qrySkladDOCPARAM1.Value:=DocParam1;
    end else if (Sender=imgLogo) then begin
        qrySklad.Edit;
        S:=TMemoryStream.Create;
        try
            ParamLock:=true;
            SavePropertyToStream(imgLogo,'Picture',S);
            S.Position:=0;
            qrySkladLOGO.LoadFromStream(S);
        finally
            ParamLock:=false;
            S.Free;
        end;
    end else if (Sender=imgStamp) then begin
        qrySklad.Edit;
        S:=TMemoryStream.Create;
        try
            ParamLock:=true;
            SavePropertyToStream(imgStamp,'Picture',S);
            S.Position:=0;
            qrySkladSTAMP.LoadFromStream(S);
        finally
            ParamLock:=false;
            S.Free;
        end;
    end;
end;

{procedure TClientForm.edtDoChange(Sender: TObject);
var value:string;
begin
    if (Sender is TDBCheckBox) then with TDBCheckBox(Sender) do begin
        if Checked then value:=ValueChecked else value:=ValueUnchecked;
        DataSource.DataSet.FieldByName(DataField).Text:=value;
    end;
end;
}
//------------search and filter routens----------------------

procedure TClientForm.cbFieldsChange(Sender: TObject);
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

procedure TClientForm.WMTimer(var Message:TWMTimer);
begin
  inherited;
  if Message.TimerID=1 then DBLookup.Lookup(edtSearch.Text);
end;

procedure TClientForm.SeachEditChange(Sender: TObject);
begin
    if Sender = edtSearch then begin
        DBLookup.LookupPause(Handle, 0, 1);
    end else begin
        actRefresh.Execute;
    end;
end;

procedure TClientForm.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    FormKeyDown(Sender, Key, Shift);
    if (key <> 0) and DBLookup.DoKey(Key, Shift) then Key := 0;
end;

procedure TClientForm.btnFilterClick(Sender: TObject);
begin
    with DBLookup do if btnFilter.Down
        then Style := Style + [lsFiltered]
        else Style := Style - [lsFiltered];
    if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
end;

procedure TClientForm.FilterRecords(Sender:TObject; const filter:string);
begin
    self.filter:=filter;
    try
        actRefresh.Execute;
    finally
        //self.filter:='';
    end
end;
//==================query routens--------------------
procedure TClientForm.ModifiedData(DataSet: TDataSet);
begin
    SetModified(true);
end;

procedure TClientForm.PerFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=FormatFloat(FormatPer,Sender.AsFloat)+' %';
end;

procedure TClientForm.PerFieldSetText(Sender: TField;
  const Text: String);
var
  P1,P2:integer;
  F:Double;
begin
  P1:=Pos(' ',Text); P2:=Pos('%',Text);
  if (P2<>0) and (P2<P1) then P1:=P2;
  if P1>1 then F:=StrToFloat(Copy(Text,1,P1-1)) else F:=StrToFloat(Text);
  Sender.AsFloat:=F;
end;

procedure TClientForm.qryClientBeforeOpen(DataSet: TDataSet);
var s:string;
begin
    s:='';
    if btnSklad.Checked then s := ' (clientid in (select clientid from sklad)) ';
    if filter <> '' then begin
        if s <> '' then s := s + ' and ';
        s := s + filter;
    end;
    SQLParser.Where := s;
    qryClient.SQL.Text := SQLParser.SQL;
end;

procedure TClientForm.qryAfterInsert(DataSet: TDataSet);
begin
    if DataSet=qryClient then qryClientCLIENTID.AsInteger:=Data.GenID('GEN_CLIENTID')
    else if DataSet = qrySklad then begin
        qrySkladCLIENTID.AsInteger := qryClientCLIENTID.AsInteger;
        qrySkladTITLE.AsString := qryClientNAME.AsString;
        qrySkladHIDDEN.AsInteger := 0;
        qrySkladKIND.AsInteger := 0;
        qrySkladPRICE_PERCENT.AsFloat := 10;
        qrySkladPRICE_NAME.AsString := docSPriceName[1];
        qrySkladPRICE_NAME2.AsString := docSPriceName[2];
        qrySkladPRICE_NAME3.AsString := docSPriceName[3];
    end;
end;

procedure TClientForm.srcClientDataChange(Sender: TObject; Field: TField);
var id:integer;
begin
    if Field=nil then begin
        if pcClient.ActivePage=tsSklad then begin
            id:=qryClientCLIENTID.AsInteger;
            qrySklad.CheckBrowseMode;
            pcSklad.Visible:=(qrySkladCLIENTID.AsInteger=id) or (qrySklad.locate('CLIENTID',id,[]));
        end;
    end;
end;

procedure TClientForm.srcSkladDataChange(Sender: TObject; Field: TField);
var S:TStream;
begin
    if (Field=nil) or (Field=qrySkladDOCPARAM1) then begin
        DocParam1:=qrySkladDOCPARAM1.Value;
        ParamLock:=true;
        try
            //nds
            btnNds.Checked:=(dpNds and DocParam1)<>0;
            //in price
            btnInPrice.Checked:=(dpInPrice and DocParam1)<>0;
            //nalog in price
            btnNalogInPrice.Checked:=(dpNalogInPrice and DocParam1)<>0;
        finally
            ParamLock:=false;
        end;
    end;
    if (Field=nil) then try
        ParamLock:=true;
        imgLogo.Picture.Graphic:=nil;
        S:=TMemoryStream.Create;
        try
            qrySkladLOGO.SaveToStream(S);
            if S.Size>0 then try
                S.Position:=0;
                LoadPropertyFromStream(imgLogo,S);
            except
            end;
        finally
            S.Free;
        end;
        imgStamp.Picture.Graphic:=nil;
        S:=TMemoryStream.Create;
        try
            qrySkladSTAMP.SaveToStream(S);
            if S.Size>0 then try
                S.Position:=0;
                LoadPropertyFromStream(imgStamp,S);
            except
            end;
        finally
            S.Free;
        end;
    finally
        ParamLock:=false;
    end;
end;
//------------------------grid routens---------------------------------
procedure TClientForm.grdClientTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
    if SQLParser.OrderByUpdate(qryClient.FieldByName(AFieldName).origin) then actRefresh.Execute;
end;

procedure TClientForm.grdClientCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
    case SQLParser.OrderByState(qryClient.FieldByName(AFieldName).origin) of
        0: AFont.Style:=[];
        else AFont.Style:=[fsBold];
    end;
end;

procedure TClientForm.grdClientCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
    case SQLParser.OrderByState(Field.origin) of
        -1 : TitleImageAttributes.ImageIndex:=1;
        1  : TitleImageAttributes.ImageIndex:=0;
        else TitleImageAttributes.ImageIndex:=-1;
    end;
end;
//----------------------keys routens-------------------------------------
procedure TClientForm.FormKeyDown(Sender: TObject; var Key: Word;
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
                if (Sender=grdClient) then SelectRecord(Sender) else exit;
            end else if (Key=VK_DOWN) and (ssCtrl in Shift) then begin
                if Sender <> grdClient then qryClient.Next else exit;
            end else if (Key=VK_UP) and (ssCtrl in Shift) then begin
                if Sender <> grdClient then qryClient.Prior else exit;
            end else if (Key=VK_HOME) and (ssCtrl in Shift) then begin
                if Sender <> grdClient then qryClient.First else exit;
            end else if (Key=VK_END) and (ssCtrl in Shift) then begin
                if Sender <> grdClient then qryClient.Last else exit;
            end else exit;
        end;
    end;
    key:=0;
end;

procedure TClientForm.grdClientKeyPress(Sender: TObject; var Key: Char);
begin
    Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

//-------------------------------------------------------------------------

procedure TClientForm.PrintReport(Sender: TObject);
begin
    if (Sender = miPrintFile) then begin
        Data.save(grdClient, Caption, 'clients', 0, 0, 0);
    end;
end;

end.
