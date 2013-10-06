unit mainfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcStatusBar, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls,
  ActnList, ImgList, Menus, Buttons, ComCtrls, ToolWin, basefrm, mmsystem,
  ActnColorMaps, XPStyleActnCtrls, ActnMan;

type
  TMainForm = class(TBaseForm)
    barStatus: TfcStatusBar;
    ActionList: TActionList;
    actClient: TAction;
    actProduct: TAction;
    actOptions: TAction;
    actExit: TAction;
    actAbout: TAction;
    mMain: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Images16: TImageList;
    Images32: TImageList;
    actLog: TAction;
    pnlDisplay: TPanel;
    ImagesLog: TImageList;
    N10: TMenuItem;
    barStatusBtn: TToolBar;
    btnLog: TToolButton;
    btnOptions: TToolButton;
    btnDatabase: TToolButton;
    actConnect: TAction;
    mDatabase: TPopupMenu;
    cprojectsdatabasenvggdb1: TMenuItem;
    N127001cprojectsdatabasenvggdb1: TMenuItem;
    Images24: TImageList;
    barCool: TCoolBar;
    barTool: TToolBar;
    btnClient: TToolButton;
    btnMap: TToolButton;
    spLog: TSplitter;
    viewLog: TListView;
    actCloseAll: TAction;
    N11: TMenuItem;
    mConnect: TMenuItem;
    actDocList: TAction;
    ToolButton1: TToolButton;
    N13: TMenuItem;
    actOstatok: TAction;
    ToolButton2: TToolButton;
    N14: TMenuItem;
    actDebit: TAction;
    N15: TMenuItem;
    ToolButton3: TToolButton;
    N17: TMenuItem;
    miRepDay: TMenuItem;
    miRepKassa: TMenuItem;
    miRepBookOut: TMenuItem;
    miRepProduct: TMenuItem;
    miPriceSep: TMenuItem;
    N20: TMenuItem;
    miRepBookIn: TMenuItem;
    miRepPrice: TMenuItem;
    miRepOstatok: TMenuItem;
    mTools: TMenuItem;
    mCorrectOstatok: TMenuItem;
    mCorrectDebit: TMenuItem;
    miRepNalog: TMenuItem;
    actQuery: TAction;
    ToolButton4: TToolButton;
    N18: TMenuItem;
    N19: TMenuItem;
    miRepDebit: TMenuItem;
    miRepSaldo: TMenuItem;
    actTools: TAction;
    N21: TMenuItem;
    mBrk: TMenuItem;
    N4: TMenuItem;
    mIBConsole: TMenuItem;
    dlgOpen: TOpenDialog;
    N12: TMenuItem;
    N16: TMenuItem;
    miDesignPrices: TMenuItem;
    mSetDocGuard: TMenuItem;
    miDesignDocs: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    miDesignDocProd: TMenuItem;
    miDesignDocCredit: TMenuItem;
    miDesignDocQuery: TMenuItem;
    miDesignPrice: TMenuItem;
    miCennik: TMenuItem;
    miCennik2: TMenuItem;
    procedure AppActionExecute(Sender: TObject);
    procedure FormActionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure connect(Sender: TObject);
    procedure mDatabasePopup(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mToolClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PrintReport(Sender: TObject);
    procedure PrintReportPrice(Sender: TObject);
    procedure DesignReportPrice(Sender: TObject);
    procedure DesignReportDoc(Sender: TObject);
    procedure mToolsClick(Sender: TObject);
    procedure mSetDocGuardClick(Sender: TObject);
  private
  protected
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
  public
    constructor Create(AOwner:TComponent); override;
  end;

var
  MainForm: TMainForm;

implementation
uses
    config, dataunit, aboutfrm, optnfrm, print, tools, toolfrm, repdataunit,
    clntfrm, prodfrm, doclfrm, ostfrm, debitfrm, qryfrm, openfrm, guardfrm,
    paramfrm;
{$R *.DFM}

constructor TMainForm.Create(AOwner:TComponent);
begin
    inherited;
    DisplayPanel:=pnlDisplay;
    appEventSend(nil,appConfig);
    appEventSend(nil,appRefresh);

    // Append reports
    if RepData.InitMenu(miRepPrice.Parent, miRepPrice.Parent.IndexOf(miRepPrice), 1, PrintReportPrice) then
        miRepPrice.Destroy;

    // Append templates
    if RepData.InitMenu(miDesignPrice.Parent, miDesignPrice.Parent.IndexOf(miDesignPrice), 1, DesignReportPrice) then
        miDesignPrice.Destroy;

    if RepData.InitMenu(miDesignDocProd.Parent, miDesignDocProd.Parent.IndexOf(miDesignDocProd), 21, DesignReportDoc) then
        miDesignDocProd.Destroy;

    if RepData.InitMenu(miDesignDocCredit.Parent, miDesignDocCredit.Parent.IndexOf(miDesignDocCredit), 22, DesignReportDoc) then
        miDesignDocCredit.Destroy;

    if RepData.InitMenu(miDesignDocQuery.Parent, miDesignDocQuery.Parent.IndexOf(miDesignDocQuery), 23, DesignReportDoc) then
        miDesignDocQuery.Destroy;

end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose:=appEventSend(self,appClear);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
    appEventPost(nil,appLoading);
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
    if (CurrentForm<>nil) and CurrentForm.Visible then CurrentForm.SetFocus;
end;

//------------------------------------------------------------------------------

procedure TMainForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
var
    alert:^TAppAlert;
    item:TListItem;
    sparam:string;
    f:boolean;
begin
    case Event of
        appConfig: begin
            //read databses
            sparam := CurrentConfig.getMem('general.databases');
            if (Trim(Databases.Text) <> Trim(sparam)) then begin
                if appEventSend(self,appClear) then dataunit.data.disconnect;
                Databases.Text := sparam;
                DatabaseIndex := CurrentConfig.getInteger('general.databaseindex');
                if (DatabaseIndex < 0) or (DatabaseIndex > Databases.Count-1) then DatabaseIndex := -1;
            end;
            //read params
            ExtendedInfo:=CurrentConfig.getBoolean('options.extended');
            PreviewReports:=CurrentConfig.getBoolean('options.preview');
            DestroyTime:=CurrentConfig.getInteger('options.destroytimeout', 0);
            UseCachedUpdates:=CurrentConfig.getBoolean('options.cachedupdates', true);
            //read formats
            FormatCur:=CurrentConfig.getString('view.format.cur');
            FormatNum:=CurrentConfig.getString('view.format.num');
            FormatInt:=CurrentConfig.getString('view.format.int');
            FormatPer:=CurrentConfig.getString('view.format.per');
            //read colors
            UseColorSelection:=CurrentConfig.getBoolean('view.colors.use');
            clNameField:=CurrentConfig.getInteger('view.colors.name');
            clCountField:=CurrentConfig.getInteger('view.colors.count');
            clPriceField:=CurrentConfig.getInteger('view.colors.price');
            clSumField:=CurrentConfig.getInteger('view.colors.sum');
            clClientField:=CurrentConfig.getInteger('view.colors.client');
            clDocField:=CurrentConfig.getInteger('view.colors.doc');
            clDateField:=CurrentConfig.getInteger('view.colors.date');
            clNoField:=CurrentConfig.getInteger('view.colors.no');
            clRezerv:=CurrentConfig.getInteger('view.colors.rezerv');
            clArchiv:=CurrentConfig.getInteger('view.colors.archiv');
            //read view params
            barCool.Visible:=CurrentConfig.getBoolean('view.leftbar.visible');
            sparam:=CurrentConfig.getString('view.leftbar.wallpaper');
            if sparam<>'' then try
                SetCurrentDir(AppPath);
                barCool.Bitmap.LoadFromFile(ExpandFileName(sparam));
            except
            end;
            //mTools.Visible:=ExtendedInfo;
        end;
        appLoading: begin
            Application.ProcessMessages;
            with DataUnit.Data do try
                if DatabaseIndex>=0 then connect(DatabaseIndex);
            finally
                sleep(500);
                AboutHide;
            end;
        end;
        appStatus: begin
            alert:=Data;
            barStatus.Panels[1].Text:=alert.msg;
            if alert.id>0 then begin
                item:=MainForm.viewLog.Items.Add;
                item.Caption:=alert.msg;
                item.ImageIndex:=alert.id;
                item.SubItems.Add(LOG_TYPES[alert.id]);
                item.SubItems.Add(DateTimeToStr(alert.time));
                if (alert.id=LOG_ALERT) then begin
                    if (not viewLog.Visible) then actLog.Execute;
                    sparam:=CurrentConfig.getString('view.alertsound');
                    if sparam<>'' then PlaySound(pchar(sparam),0,SND_FILENAME + SND_NOWAIT);
                end;
            end;
        end;
        appRefresh: begin
            f:=DataUnit.Data.db.Connected;
            if f then actConnect.ImageIndex:=15 else actConnect.ImageIndex:=14;
            mCorrectDebit.Enabled:=f;
            mCorrectOstatok.Enabled:=f;
            Caption:=Application.Title;
            if CurrentForm<>nil then Caption:=Caption+' >> '+CurrentForm.Caption;
        end;
        appClientChange: DataUnit.data.qryClient.Active:=false;
        appSkladChange: DataUnit.data.refresh_sklad;
        //appSkladSelect: if ParamForm <> nil then ParamForm.edtSklad.KeyValue:=dataunit.Data.qrySkladCLIENTID.Value;
    end;
end;

procedure TMainForm.AppActionExecute(Sender: TObject);
begin
    if Sender=actExit then begin
        Close;
    end else if Sender=actCloseAll then begin
        appEventSend(self,appClear);
    end else if Sender=actOptions then begin
        with TOptionsForm.Create(nil) do try
            ShowModal;
        finally
            Destroy;
        end;
    end else if Sender=actAbout then begin
        AboutExecute();
    end else if Sender=actLog then begin
        viewLog.Visible:=not viewLog.Visible;
        spLog.Visible:=viewLog.Visible;
        actLog.Checked:=viewLog.Visible;
        if actLog.Checked then actLog.ImageIndex:=13 else actLog.ImageIndex:=12;
    end else if Sender=actConnect then begin
        //
    end else if Sender=actTools then begin
        with TToolsForm.Create(nil) do try
            ShowModal;
        finally
            Destroy;
        end;
    end;
end;

procedure TMainForm.FormActionExecute(Sender: TObject);
begin
    if not Data.check_connection then exit;
    if (Sender=actClient) then begin
        load(TClientForm);
    end else if (Sender=actProduct) then begin
        load(TProductForm);
    end else if (Sender=actDocList) then begin
        Data.check_sklad;
        load(TDocListForm);
    end else if (Sender=actOstatok) then begin
        Data.check_sklad;
        load(TOstatokForm);
    end else if (Sender=actDebit) then begin
        Data.check_sklad;
        load(TDebitForm);
    end else if (Sender=actQuery) then begin
        Data.check_sklad;
        load(TQueryForm);
    end;
end;

//------------------------------------------------------------------------------

procedure TMainForm.PrintReport(Sender: TObject);
begin
    if not Data.check_connection then exit;
    Data.check_sklad;
    msgStatus(MsgWaitPrint);
    try
        if (Sender=miRepDay) then printDayReport()
        else if (Sender=miRepKassa) then printKassaReport()
        else if (Sender=miRepPrice) then printPrice(0)
        else if (Sender=miRepOstatok) then printOstatok()
        else if (Sender=miRepDebit) then printDebit(true)
        else if (Sender=miRepSaldo) then printSaldo()
        else if (Sender=miRepBookIn) then printBookIn()
        else if (Sender=miRepBookOut) then printBookOut()
        else if (Sender=miRepProduct) then printProductReport()
        else if (Sender=miRepNalog) then printNalogReport()
        else if (Sender = miCennik) then printCennik(1)
        else if (Sender = miCennik2) then printCennik(2);
    finally
        msgStatus('');
    end;
end;

procedure TMainForm.PrintReportPrice(Sender: TObject);
begin
    if not Data.check_connection then exit;
    Data.check_sklad;
    printPrice(0, 0, nil, (Sender as TMenuItem).Tag);
end;

procedure TMainForm.DesignReportPrice(Sender: TObject);
begin
    if not Data.check_connection then exit;
    Data.check_sklad;
    RepData.PrintPrice((Sender as TMenuItem).Tag, rpDesign + rpPrice1 + rpPrice2 + rpPrice3, 0, nil);
end;

procedure TMainForm.DesignReportDoc(Sender: TObject);
begin
    if not Data.check_connection then exit;
    Data.check_sklad;
    RepData.PrintDoc((Sender as TMenuItem).Tag, rpDesign, 0, nil);
end;

//------------------------------------------------------------------------------

procedure TMainForm.connect(Sender: TObject);
var
    index: integer;
begin
    if Sender is TMenuItem then begin
        index := TMenuItem(Sender).Tag;
        if (index < 0) then begin
            if frmOpen = nil then frmOpen := TfrmOpen.Create(Application);
            frmOpen.Execute;
        end else begin
            if TMenuItem(Sender).Checked then Data.Disconnect
            else Data.Connect(index);
        end;
    end;
end;

procedure TMainForm.mDatabasePopup(Sender: TObject);
var
    items,item:TMenuItem;
    dbname:string;
    i:integer;
begin
    if (Sender=mDatabase) then items:=mDatabase.Items else items:=mConnect;
    items.Clear;

    item:=TMenuItem.Create(mDatabase);
    item.Caption:='Открыть ...';
    item.Tag:=-1;
    item.OnClick:=connect;
    items.Add(item);

    item:=TMenuItem.Create(mDatabase);
    item.Caption:='-';
    items.Add(item);

    for i:=0 to Databases.Count-1 do begin
        dbname:=Databases.Names[i];
        if dbname='' then dbname:=Databases[i];
        item:=TMenuItem.Create(mDatabase);
        item.Caption:=dbName;
        item.Hint:='| '+Databases[i];
        item.Checked:=(i=DatabaseIndex) and Data.db.Connected;
        item.Tag:=i;
        item.OnClick:=connect;
        item.RadioItem:=true;
        item.GroupIndex:=1;
        items.Add(item);
    end;
end;

procedure TMainForm.mToolClick(Sender: TObject);
var
    path: string;
    dlg: TOpenDialog;
begin
    if Sender=mIBConsole then begin
        path := CurrentConfig.getString('options.ibconsole');
        if (path = '') then path := getIBPath('ibconsole.exe');
        if (WinExec(PChar(path), SW_SHOW) <= 31) then begin
            dlg := TOpenDialog.Create(nil);
            try
                dlg.FileName := path;
                dlg.Title := 'Укажите местоположение файла ibconsole.exe';
                if (dlg.Execute) then begin
                    path := dlg.FileName;
                    if (WinExec(PChar(path), SW_SHOW) > 31) then begin
                        CurrentConfig.setString('options.ibconsole', path);
                    end;
                end;
            finally
                dlg.Destroy;
            end    
        end;
        Exit;
    end;
    Data.check_connection;
    if MessageBox(PChar(TMenuItem(Sender).Caption+'?'), msgQuestion, MB_ICONQUESTION+MB_YESNO) <> mrYes then Exit;
    try
        msgStatus(msgWaitQuery);
        if Sender=mCorrectOstatok then OstatokCorrect
        else if Sender=mCorrectDebit then DebitCorrect;
    finally
        msgStatus('');
    end
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    data.getKeyAction(Key,shift);
end;

procedure TMainForm.mToolsClick(Sender: TObject);
begin
    mSetDocGuard.Enabled:=Data.db.Connected;
end;

procedure TMainForm.mSetDocGuardClick(Sender: TObject);
begin
    ChangeGuardParams();
end;

end.
