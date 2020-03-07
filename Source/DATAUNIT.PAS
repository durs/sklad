unit dataunit;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Variants, Db, IBDatabase, IBEvents, AppEvnts, comctrls, basefrm, config,
    Wwintl, ExtCtrls, ImgList, IBCustomDataSet, IBQuery, IBUpdateSQL, IBStoredProc,
    grids, wwdbigrd, wwdbgrid, wwdblook, wwexport, dylook, IB, IBSQL, Registry,
    QRExport, QRWebFilt, QRXMLSFilt, QRPDFFilt, XPMan;
    
const
    //application event types
    appClientChange=AppUser+1;
    appClientSelect=AppUser+2;
    appProductChange=AppUser+3;
    appProductSelect=AppUser+4;
    appDocChange=AppUser+5;
    appDocSelect=AppUser+6;
    appOstatokChange=AppUser+7;
    appOstatokSelect=AppUser+8;
    appDebitChange=AppUser+9;
    appDebitSelect=AppUser+10;
    appSkladChange=AppUser+11;
    appSkladSelect=AppUser+12;

    //alert types
    LOG_MSG=0;
    LOG_ERROR=1;
    LOG_EXCLAMATION=2;
    LOG_ALERT=3;
    LOG_TYPES:array [0..3] of string=('сообщение','ошибка','внимание','ЧП');

    //key actions
    keyNone=0;

    keyProcess=-1;
    keyEnter=1;
    keyExit=2;
    keyRefresh=3;
    keyNew=4;
    keyDelete=5;
    keyEdit=6;
    keyApply=7;
    keyCancel=8;
    keyView=9;
    keyPrint=10;
    keyExecute=11;
    keySearch=12;

    //doc kinds
    docUnknown=0;
    docProduct=1;
    docCredit=2;
    docQuery=3;
    docKindMask=$FF;
    docRezervMask=$100; //256
    docArchivMask=$200; //512

    //doc oplata
    docExport=-1;
    docInner=0;
    docCheck=1;
    docOrder=2;
    docBeznal=3;
    docZachet=4;
    docBarter=5;
    docCard=6;

    docSKindMin=-1;
    docSKindMax=6;
    //for doc prod
    docSKindName:array [docSKindMin..docSKindMax] of string =('Экспорт товара','Внутр.перемещение','Касс.чек','Касс.ордер','Безналично','Взаимозачёт','Бартер','Платежная карта');
    //for credit doc if sum0>=0
    docSKindName1:array [docSKindMin..docSKindMax] of string =('','Внутр.перем.','Касс.чек','Прих.касс.ордер','Плат.поруч.','','','Пл.карта');
    //for credit doc if sum0<0
    docSKindName2:array [docSKindMin..docSKindMax] of string =('','Внутр.перем.','Касс.чек','Расх.касс.ордер','Плат.поруч.','','','Пл.карта');

    docSPriceName:array [1..5] of string =('Опт. цена','Опт.-розн. цена','Розн. цена','Розн. цена 2','Розн. цена 3');

    docSAutoNo='<авто>';

    //doc parameters
    CreditDocSchet='62';
    CreditDocNDS=18;

    //doc parameter flags
    dpVozvrat=1;
    dpNds=2;
    dpInPrice=4;
    dpNalogInPrice=8;
    dpPrice2=16;
    dpPrice3=32;
    dpPrice4=64;
    dpPrice5=128;

    //desktops
    deskNone=0;
    deskInDoc=1;
    deskOutDoc=2;

    //colors
    clPastelYellow = $00CEFFFF;
    clPastelGreen = $00D9FFD9;
    clPastelBlue = $00FFECD9;
    clPastelRed = $00E4DFFF;
    clHighlightOffset = $80;

    //messages
    msgQuestion = 'Вопрос';
    msgInfo = 'Сообщение';
    msgWarning = 'Предупреждение';
    msgError = 'Ошибка';
    msgWait = 'Ждите! Идет обработка данных ...';
    msgWaitPrint = 'Ждите! Идет подготовка отчёта ...';
    msgWaitQuery = 'Ждите! Идет выполнение запроса ...';
    msgWaitConnect = 'Ждите! Идет подключение к серверу баз данных ...';
    msgWaitDisconnect = 'Ждите! Идет отключение от сервера баз данных ...';
    msgConnect = 'Произошло подключение к серверу баз данных';
    msgDisconnect = 'Произошло отключение от сервера баз данных';
    msgFailConnect = 'Невозможно подключиться к серверу баз данных!';
    msgUpdate = 'База данных имеет устаревшую структуру. Обновить?';
    msgUpdateWait = 'Ждите! Идет обновление структуры базы данных ...';
    msgUpdateError = 'Ошибка обновления структуры базы данных';
    msgUpdateWarning = 'Программа может работать некорректно!';
    msgEmptyDatabaseList = 'Список баз пуст. Настройте приложение';
    msgEmptySkladList = 'Список складов пуст. Необходимо добавить описание склада в разделе "Клиенты"';
    msgSkladNotFound = 'Склад ненайден!';
    msgDoNotInsert = 'Увы! Невозможно вставить запись в таблицу';
    msgDoNotDelete = 'Увы! Невозможно удалить запись из таблицы';
    msgRecalc = 'Были изменены параметры документа.'+#13#10+'Пересчитать накладную ?';
    msgApply = 'Сохранить внесенные изменения?';
    msgCancel = 'Отменить внесенные изменения?';
    msgInsert = 'Вставить новую запись?';
    msgDelete = 'Удалить запись?';
    msgDeleteDoc = 'Удалить документ?';
    msgDeleteClient = 'Удалить информацию о клиенте?';
    msgDocNotFound = 'Документ ненайден!';
    msgOstTooSmallCount = 'Товара на остатке меньше чем требуется!';
    msgNotCreateDocProduct = 'Указанный товар на складе отсутствует'+#13+#10+'или заказ уже обналичен!';
    msgNotCreateDocQuery = 'Все заказы уже обналичены!';
    msgLoadDocNotFoundPrefix = 'НЕ НАЙДЕНО: ';

    msgFilterBtnHint = 'Поиск/Фильтр| Изменение режима Поиск/Фильтр';
    msgFilterComboHint = '| Выбор поля для поиска/фильтра';

    QueriesFileName='queries.xml';
    UpdateFileName='script\update_v';


//doc product oplata
const docProductOplataList =  [docCheck,docOrder,docBeznal,docCard];
var docProductOplataListDef: TIntegerSet = [docCheck,docOrder];

type
  TCrackLookup = class (TwwDBCustomLookupCombo)
  public
    property Grid:TwwPopupGrid read FGrid;
  end;

  TCrackDataSet = class (TDataSet)
  public
    procedure RefreshControls;
    procedure UpdateControls;
  end;

  TData = class(TDataModule)
    db: TIBDatabase;
    trDefault: TIBTransaction;
    app: TApplicationEvents;
    imgBar: TImageList;
    imgHotBar: TImageList;
    imgDisableBar: TImageList;
    wwIntl: TwwIntl;
    imgType: TImageList;
    trApply: TIBTransaction;
    qry: TIBQuery;
    proc: TIBStoredProc;
    imgTitle: TImageList;
    qrySklad: TIBQuery;
    srcSklad: TDataSource;
    qrySkladCLIENTID: TIntegerField;
    qrySkladNAME: TIBStringField;
    qrySkladFULLNAME: TIBStringField;
    qrySkladADRESS: TIBStringField;
    qrySkladPHONE: TIBStringField;
    qrySkladDIRECTOR: TIBStringField;
    qrySkladBUGALTER: TIBStringField;
    qrySkladOKONX: TIBStringField;
    qrySkladOKPO: TIBStringField;
    qrySkladREG: TIBStringField;
    qrySkladINN: TIBStringField;
    qrySkladBIK: TIBStringField;
    qrySkladRS: TIBStringField;
    qrySkladKS: TIBStringField;
    qrySkladSKS: TIBStringField;
    qrySkladBANK: TIBStringField;
    qrySkladKORBANK: TIBStringField;
    qrySkladDOCPARAM1: TSmallintField;
    qrySkladDOCPARAM2: TFloatField;
    qrySkladDOCPARAM3: TFloatField;
    qrySkladKASSIR: TIBStringField;
    qrySkladTITLE: TIBStringField;
    qrySkladCAPTION: TIBStringField;
    qrySkladLOGO: TBlobField;
    qrySkladCOMMENT1: TBlobField;
    qrySkladCOMMENT2: TBlobField;
    qrySkladCOMMENT3: TBlobField;
    qrySkladPRICE_PERCENT: TFloatField;
    qrySkladPRICE_ROUND: TSmallintField;
    imgPreview: TImageList;
    qryClient: TIBQuery;
    qryClientCLIENTID: TIntegerField;
    srcClient: TDataSource;
    qryClientNAME: TIBStringField;
    QRTextFilter: TQRTextFilter;
    QRHTMLFilter: TQRHTMLFilter;
    QRCSVFilter: TQRCSVFilter;
    qrySkladFONTNAME: TStringField;
    dlgSave: TSaveDialog;
    qryClientCLIENT: TIBStringField;
    qrySkladCLIENT: TIBStringField;
    qrySkladKLADOVCHIK: TIBStringField;
    qrySkladADDRESS2: TIBStringField;
    qrySkladPRICE_PARAM: TIntegerField;
    qrySkladPRICE_PERCENT2: TFloatField;
    qrySkladPRICE_ROUND2: TSmallintField;
    qrySkladPRICE_PERCENT3: TFloatField;
    qrySkladPRICE_ROUND3: TSmallintField;
    QRPDFFilter: TQRPDFFilter;
    QRXMLSFilter: TQRXMLSFilter;
    QRExcelFilter: TQRExcelFilter;
    QRRTFFilter: TQRRTFFilter;
    QRWMFFilter: TQRWMFFilter;
    XPManifest: TXPManifest;
    qrySkladPRICE_NAME: TIBStringField;
    qrySkladPRICE_NAME2: TIBStringField;
    qrySkladPRICE_NAME3: TIBStringField;
    qrySkladPRICE_PERCENT4: TFloatField;
    qrySkladPRICE_ROUND4: TSmallintField;
    qrySkladPRICE_NAME4: TIBStringField;
    qrySkladPRICE_PERCENT5: TFloatField;
    qrySkladPRICE_ROUND5: TSmallintField;
    qrySkladPRICE_NAME5: TIBStringField;
    qrySkladActive: TIBQuery;
    qrySkladActiveID: TIntegerField;
    updSkladActive: TIBUpdateSQL;
    srcSkladActive: TDataSource;
    qrySkladREASON_PKO: TIBStringField;
    qrySkladREASON_RKO: TIBStringField;
    qrySkladSTAMP: TBlobField;
    procedure appHint(Sender: TObject);
    procedure dbAfterConnect(Sender: TObject);
    procedure dbBeforeDisconnect(Sender: TObject);
    procedure appException(Sender: TObject; E: Exception);
    procedure qrySkladAfterOpen(DataSet: TDataSet);
    procedure qrySkladBeforeClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure srcSkladDataChange(Sender: TObject; Field: TField);
  private
    AppTitle:string;
    queryUpdate:boolean;
    inUpdate:boolean;
    function updateVersion(ver:integer):boolean;
  public
    QuoteChar:char;
    lookup:TDyQuickLookup;
    DocUpdateInterval: integer;
    DocUpdateParams: Integer;
    DocUpdatePassword: string;

    function connect(caption, server, filename: string): boolean; overload;
    function connect(index:integer): boolean; overload;
    procedure disconnect;
    function check_connection: boolean;
    procedure check_sklad;
    procedure refresh_sklad;
    procedure msgStatus(const msg:string; id:integer=LOG_MSG);
    procedure ApplyUpdates(Dataset:array of TIBCustomDataSet);
    function GenID(const ProcName:string):integer;
    procedure ExecuteSQL(const sql:string);
    procedure ExecuteSQL2(const sql:string);
    procedure ReadTransport();
    function getKeyAction(key:word; shift:TShiftState):integer;
    function setActiveSklad(id:integer):boolean;
    procedure GridCalcCellColors(Sender:TObject; Field:TField; State:TGridDrawState; Highlight:Boolean; AFont:TFont; ABrush:TBrush);
    procedure getClientInfo(DataSet:TDataSet; Info:TStrings); overload;
    function getClientInfo(DataSet:TDataSet): string; overload;
    procedure getBlobImage(Field:TBlobField; Picture:TPicture);
    procedure setBlobValue(field:TBlobField; const value:string);
    function getDocNo(const keyfrm,keyno:string):variant;
    procedure lookupDatasetKey(DataSet: TDataSet; Field: TField; Key:Char);
    procedure save(grid: TwwDBGrid; title, id: string; date1, date2: TDateTime; kind: integer);
    procedure save_xml(qry: TIBQuery; filename, id: string; date1, date2: TDateTime; kind: integer);

    function IsDocReadonly(DocDate: TDateTime): boolean;
    function IsOstReadonly(): boolean;
    function CanDocModify(DocDate: TDateTime): boolean;
    function CanOstModify(): boolean;
    procedure ConfigRead();
    procedure ConfigApply();

  end;

var
    Data: TData;
    AppPath: string;
    AppCfgPath: string;
    AppVersion: string;
    //readed from config
    Databases: TStrings;
    DatabaseIndex: integer = -1;
    ExtendedInfo: boolean = false;
    PreviewReports: boolean = true;
    TransportNDS: double = 0;
    TransportName: string;
    FormatNum, FormatCur, FormatPer, FormatInt: string;
    FormatNum2: string = '#0.####';
    FormatEditCur: string = '#0.####';
    UseAnyPrice: boolean = false;
    UseColorSelection: boolean = true;
    UseNalog: boolean = false;
    UseCachedUpdates: boolean = true;
    clNameField, clCountField, clPriceField,
    clSumField, clClientField, clDateField, clNoField, clDocField,
    clArchiv, clRezerv: integer;

function getVarString(v:OleVariant; def:string=''):string;
function getVarInteger(v:OleVariant; def:integer=0):integer;
function getVarBool(v:OleVariant; def:boolean=false):boolean;

function checkIB(): boolean;
function getIBPath(name:string):string;

implementation
uses dyutils,dyobject,mainfrm,toolfrm,pswdfrm,repdataunit;
{$R *.DFM}

function getIBPath(name:string):string;
begin
    with TRegistry.Create do try
        RootKey:=HKEY_LOCAL_MACHINE;
        result:=name;
        try
            if OpenKeyReadOnly('Software\Firebird Project\Firebird Server\Instances')
                then result := ReadString('DefaultInstance') + 'bin\' + result
            else if OpenKeyReadOnly('Software\Borland\InterBase\CurrentVersion') or
               OpenKeyReadOnly('Software\InterBase Corp\InterBase\CurrentVersion')
                then result := ReadString('ServerDirectory') + result;
        except
        end;
    finally
        Destroy;
    end;
end;

function checkIB(): boolean;
var
    h: THandle;
    fn, fn2: string;
    hf: THandle;
    d1, d2: FileTime;
    upd: boolean;
begin
    h := LoadLibrary('gds32.dll');
    result := h <> 0;
    if (not result) then begin
        MessageBox(0,
            'В системе не найдена библиотека Firebird клиента! '+
            'Пожалуйста установите Firebird server 1.5.6 (другие версии не подходят)'#13#10+
            'При работе с серверм в сети, достаточно установить Firebird клиент. '#13#10+
            'Ссылку на дистрибутив можно поучить в разделе новостей". ', msgInfo, MB_ICONEXCLAMATION + MB_OK);
        exit;
    end;
    FreeLibrary(h);
    fn := getIBPath('');
    fn2 := ExpandFileName('Udf\dy_udf.dll');
    if FileExists(fn2) and (fn <> '') and (fn[Length(fn) - 4] = '\') then
    begin
        fn := Copy(fn, 1, Length(fn) - 4) + 'Udf\dy_udf.dll';
        upd := not FileExists(fn);
        if not upd then
        begin
          hf := CreateFile(pchar(fn), 0, FILE_SHARE_READ, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
          if hf <> INVALID_HANDLE_VALUE then
          begin
            GetFileTime(hf, nil, nil, @d1);
            CloseHandle(hf)
          end;

          hf := CreateFile(pchar(fn2), 0, FILE_SHARE_READ, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
          if hf <> INVALID_HANDLE_VALUE then
          begin
            GetFileTime(hf, nil, nil, @d2);
            CloseHandle(hf)
          end;

          upd := (d1.dwHighDateTime < d2.dwHighDateTime) or ((d1.dwHighDateTime = d2.dwHighDateTime) and (d1.dwLowDateTime < d2.dwLowDateTime));
        end;

        if (upd) then
        begin
            CopyFile(pchar(fn2), pchar(fn), false);
        end;

    end;
end;

procedure TCrackDataSet.RefreshControls;
begin
    DataEvent(deRecordChange,0);
end;

procedure TCrackDataSet.UpdateControls;
begin
    DataEvent(deUpdateRecord,0);
end;

function getVarString(v:OleVariant; def:string=''):string;
begin
    try
        if VarIsNull(v) then result:=def else result:=VarAsType(v,varString);
    except
        result:=def;
    end;
end;

function getVarInteger(v:OleVariant; def:integer=0):integer;
begin
    try
        if VarIsNull(v) then result:=def else result:=VarAsType(v,varInteger);
    except
        result:=def;
    end;
end;

function getVarBool(v:OleVariant; def:boolean=false):boolean;
begin
    try
        if VarIsNull(v) then result:=def else result:=VarAsType(v,varBoolean);
    except
        result:=def;
    end;
end;

//-------------------------------------------

procedure TData.DataModuleCreate(Sender: TObject);
begin
  if db.SQLDialect = 3 then QuoteChar := '''' else QuoteChar := '"';
  AppTitle := Application.Title;
  lookup := TDyQuickLookup.Create;
  inUpdate := false;
  dlgSave.FilterIndex := CurrentConfig.GetInteger('general.filterindex');
end;

procedure TData.DataModuleDestroy(Sender: TObject);
begin
    if (not db.Connected) then DatabaseIndex := -1;
    CurrentConfig.SetInteger('general.databaseindex', DatabaseIndex);
    CurrentConfig.SetInteger('general.filterindex', dlgSave.FilterIndex);
    lookup.Free;
end;

function TData.connect(caption, server, filename: string): boolean;
var
    cnt, i, p, index: integer;
    str, dbname, dbcaption: string;
begin

    str := server;
    if str <> '' then str := str + ':';
    str := str + filename;

    index := -1;
    cnt := Databases.Count;
    for i := 0 to cnt - 1  do
    begin
        dbname := Databases[i];
        p := pos('=', dbname);
        if p > 0 then begin
            dbcaption := trim(copy(dbname, 1, p-1));
            dbname := trim(copy(dbname, p+1, length(dbname)));
        end else begin
            dbcaption := '';
        end;

        if AnsiCompareText(str, dbname) = 0 then begin
            index := i;
            if (caption = '') then caption := dbcaption;
            break;
        end;
    end;

    dbname := caption;
    if (dbname <> '') then dbname := dbname + '=';
    dbname := dbname + str;
    if (index >= 0) then begin
        Databases[index] := dbname;
    end else begin
        Databases.Add(dbname);
        index := cnt;
    end;

    try   
        result := connect(index);
    except
        Databases.Delete(index);
        raise;
    end;
end;


function TData.connect(index:integer): boolean;
var
    dbcaption,dbname,username,password,role,dir:string;
    p:integer;
begin
    result := true;
    if db.Connected then begin
        if index = DatabaseIndex then exit;
        disconnect;
    end;
    try
        Screen.Cursor:=crHourGlass;
        msgStatus(msgWaitConnect);
        dbname:=Databases[index];
        p:=pos('=',dbname);
        if p>0 then begin
            dbcaption:=trim(copy(dbname,1,p-1));
            dbname:=trim(copy(dbname,p+1,length(dbname)));
        end;
        if (dbcaption = '') then dbcaption := dbname;
        dbname := ExpandFileNameDb(dbname);
        {
        if pos(':',dbname) <= 0 then begin
            dir := GetCurrentDir();
            SetCurrentDir(AppPath);
            dbname := ':' + ExpandFileName(dbname);
            SetCurrentDir(dir);
        end;
        }
        username:=CurrentConfig.getString('general.username');
        password:=CurrentConfig.getString('general.password');
        role:=CurrentConfig.getString('general.role');
        db.DatabaseName:=dbname;
        db.LoginPrompt:=CurrentConfig.getBoolean('general.loginprompt');
        db.Params.Values['user_name']:=username;
        if not db.LoginPrompt then db.Params.Values['password']:=password else db.Params.Values['password']:='';
        db.Params.Values['role']:=role;

        if (CurrentConfig.getBoolean('options.transold')) then begin
            trDefault.Params.Text := 'read_committed';
            trApply.Params.Text := '';
        end else begin
            trDefault.Params.Text := 'read_committed'#13#10'rec_version'#13#10'nowait'#13#10'read';
            trApply.Params.Text := 'read_committed'#13#10'rec_version'#13#10'nowait'#13#10'write';
        end;

        try
            db.Connected := true;
            if queryUpdate then begin
                db.Connected := false;
                db.Connected := true;
            end;
        except
            on E:Exception do begin
                result := false;
                if (E.ClassType = EIBClientError) and (EIBClientError(E).SQLCode = Ord(ibxeOperationCancelled)) then Exit;
                E.Message:=msgFailConnect+#13+#10+E.Message;
                raise;
            end;
        end;

        Application.Title := dbcaption;

        // Move To Up
        if (index > 0) then begin
            Databases.Insert(0, Databases[index]);
            Databases.Delete(index + 1);
        end;
        while (Databases.Count > 20) do Databases.Delete(Databases.Count - 1);
        CurrentConfig.setMem('general.databases', Databases.Text);
        DatabaseIndex := 0;

        msgStatus(msgConnect,LOG_EXCLAMATION);
        TBaseForm.appEventPost(nil,appRefresh);
    finally
        Screen.Cursor:=crDefault;
    end;
end;

procedure TData.disconnect;
begin
    if not db.Connected or not TBaseForm.appEventSend(nil,appClear) then exit;
    try
        Screen.Cursor:=crHourGlass;
        msgStatus(msgWaitDisconnect);
        db.Connected:=false;
        msgStatus(msgDisconnect,LOG_EXCLAMATION);
        TBaseForm.appEventPost(nil,appRefresh);
    finally
        Screen.Cursor:=crDefault;
    end;
end;

function TData.check_connection: boolean;
begin
    result := true;
    if db.Connected then exit;
    if DatabaseIndex<0 then begin
        if Databases.Count>0 then DatabaseIndex:=0
        else raise Exception.create(msgEmptyDatabaseList);
    end;
    result := Data.Connect(DatabaseIndex);
end;

procedure TData.check_sklad;
begin
    qrySklad.Active:=true;
    if qrySkladCLIENTID.isNull then raise Exception.create(msgEmptySkladList);
end;

procedure TData.refresh_sklad;
var bkm:string;
begin
    if not qrySklad.Active then exit;
    bkm:=qrySklad.Bookmark;
    qrySklad.Active:=false;
    //check_sklad;
    qrySklad.Active:=true;
    qrySklad.Bookmark:=bkm;
end;

function TData.setActiveSklad(id:integer):boolean;
begin
    result:= (qrySkladCLIENTID.Value = id) or qrySklad.Locate('CLIENTID', id, []);
end;

procedure TData.qrySkladAfterOpen(DataSet: TDataSet);
var id:integer;
begin
    qrySklad.FetchAll;
    id:=CurrentConfig.getInteger('general.clientid');
    if id<>0 then qrySklad.Locate('CLIENTID',id,[]);

    // Only for lookup combos
    qrySkladActive.Active := true;
    if qrySkladActive.Eof then qrySkladActive.Insert;
    qrySkladActiveID.Value := id;
end;

procedure TData.qrySkladBeforeClose(DataSet: TDataSet);
begin
    //CurrentConfig.setInteger('general.clientid',qrySkladCLIENTID.Value);
end;

procedure TData.dbAfterConnect(Sender: TObject);
var
    ver:integer;
begin

    if not inUpdate then begin

      // read database version
      with proc do try
          StoredProcName:='GET_VERSION';
          if not trDefault.InTransaction then trDefault.StartTransaction;
          Prepare;
          ParamByName('INCR').AsInteger:=0;
          ExecProc;
          ver:=ParamByName('ID').Value;
      except
          ver:=0;
      end;

      // update version
      inUpdate:=true;
      try
          queryUpdate:=false;
          while updateVersion(ver) do inc(ver);
      except
          on E:Exception do begin
              Application.MessageBox(PChar(msgUpdateError+#13#10+E.Message+#13#10+msgUpdateWarning), msgError, MB_ICONERROR+MB_OK);
          end;
      end;
      inUpdate:=false;
    end;

    // read configuration
    ConfigRead();

    // other
    ReadTransport;

    msgStatus('');
end;

procedure TData.ReadTransport();
begin
    TransportNDS := 0;
    TransportName := '';
    try
        qry.sql.text := 'select nds, name from product where prodid = -1';
        qry.Active := true;
        if qry.EOF then ExecuteSQL2('INSERT INTO PRODUCT (PRODID, NAME, NDS) VALUES (-1, ''Транспортные услуги'', 0)')
        else begin
            TransportNDS := qry.Fields[0].AsFloat;
            TransportName := qry.Fields[1].AsString;
        end;
    except
        on E:Exception do begin
            msgStatus('Database correction error: ' + E.Message);
        end;
    end;
    qry.Active := false;
    if (TransportName = '') then TransportName := 'Транспортные услуги';
end;

function TData.updateVersion(ver:integer):boolean;
var
    filename,script,term,cmd:string;
    strm:TFileStream;
    qry:TIBSQL;
    pscript,pcmd,ptr:PChar;
    len:integer;
begin
    result:=false;
    filename:=AppPath+UpdateFileName+IntToStr(ver)+'.txt';
    if not FileExists(filename) then exit;
    if not queryUpdate then begin
        queryUpdate:=true;
        if Application.MessageBox(msgUpdate, msgQuestion, MB_ICONQUESTION+MB_YESNO)<>mrYes then begin
            Application.MessageBox(PChar(msgUpdateWarning), msgWarning, MB_ICONWARNING+MB_OK);
            exit;
        end;
        msgStatus(msgUpdateWait);
    end;

    strm:=TFileStream.Create(filename, fmOpenRead);
    try
        setLength(script, strm.Size);
        strm.ReadBuffer(PChar(script)^, strm.Size);
    finally
        strm.Destroy;
    end;
    qry:=TIBSQL.Create(nil);
    try
        qry.Database:=db;
        qry.Transaction:=trApply;
        qry.ParamCheck:=false;
        if not trApply.InTransaction then trApply.StartTransaction;
        try
            //pscript:=StrUpper(PChar(script));
            pscript:=PChar(script);
            term:=';';
            repeat
                ptr:=StrPos(pscript, PChar(term));
                if ptr=nil then len:=StrLen(pscript) else len:=ptr-pscript;
                SetLength(cmd,len);
                Move(pscript^, PChar(cmd)^, len);
                pscript:=pscript+len+StrLen(PChar(term));
                cmd:=Trim(cmd);
                pcmd:=PChar(cmd);
                if CompareText(copy(cmd,1,8), 'SET TERM')=0 then begin
                    pcmd:=pcmd+8;
                    while pcmd[0] in [' ',#10,#13,#9] do pcmd:=pcmd+1;
                    if pcmd[0]<>#0 then term:=pcmd;
                end else if CompareText(cmd, 'COMMIT WORK')=0 then begin
                    trApply.Commit;
                    db.Connected := false;
                    db.Connected := true;
                    trApply.StartTransaction;
                end else if pcmd[0]<>#0 then begin
                    if Copy(pcmd, 1, 3) <> 'TRY' then begin
                        qry.SQL.Text := pcmd;
                        qry.ExecQuery;
                    end else try
                        qry.SQL.Text := pcmd + 3;
                        qry.ExecQuery;
                    except end;
                end;
            until (ptr=nil) or (pscript[0]=#0);
        except
            trApply.Rollback;
            raise;
        end;
        trApply.Rollback;
    finally
        qry.Destroy;
    end;
    result:=true;
end;

procedure TData.dbBeforeDisconnect(Sender: TObject);
begin
    Application.Title:=AppTitle;
end;

procedure TData.appHint(Sender: TObject);
begin
    msgStatus(Application.Hint);
end;

procedure TData.appException(Sender: TObject; E: Exception);
begin
    Application.ShowException(E);
    msgStatus(E.Message,LOG_ERROR);
end;

procedure TData.msgStatus(const msg:string; id:integer=LOG_MSG);
begin
    TBaseForm.msgStatus(msg,id);
end;

procedure TData.ExecuteSQL(const sql:string);
begin
    qry.sql.text:=sql;
    qry.ExecSQL;
    qry.Transaction.CommitRetaining;
end;

procedure TData.ExecuteSQL2(const sql:string);
var qry:TIBQuery;
begin
    qry:=TIBQuery.Create(nil);
    try
        qry.Database:=db;
        qry.Transaction:=trApply;
        qry.SQL.Text:=sql;
        if not trApply.InTransaction then trApply.StartTransaction;
        try
            qry.ExecSQL;
        except
            trApply.Rollback;
            raise;
        end;
        trApply.Commit;
    finally
        qry.Destroy;
    end;
end;

procedure TData.ApplyUpdates(Dataset:array of TIBCustomDataSet);
var
  i:integer;
  TR:TIBTransaction;
  UK:TUpdateKind;
  UA:TIBUpdateAction;
  bm: array of string;
begin
  for i:=0 to High(Dataset) do
    if Dataset[i].Active then Dataset[i].CheckBrowseMode;
  TR:=trApply;
  if not TR.InTransaction then TR.StartTransaction;
  try try
    Screen.Cursor:=crHourGlass;
    SetLength(bm,High(Dataset)+1);
    for i:=0 to High(Dataset) do with Dataset[i] do if Active and UpdatesPending then try
      bm[i]:=Bookmark;
      DisableControls;
      UpdateRecordTypes:=[cusModified,cusInserted,cusDeleted];
      First;
      while not EOF do begin
        case UpdateStatus of
          usInserted: UK:=ukInsert;
          usDeleted: UK:=ukDelete;
          else UK:=ukModify;
        end;
        UA:=uaApply;
        if assigned(OnUpdateRecord) then OnUpdateRecord(Dataset[i],UK,UA);
{?}     if (UA in [uaAbort,uaFail]) then break;
        if (UA=uaApply) and (UpdateObject<>nil) then begin
          TIBUpdateSQL(UpdateObject).SetParams(UK);
          TIBUpdateSQL(UpdateObject).Query[UK].Transaction:=TR;
          TIBUpdateSQL(UpdateObject).ExecSQL(UK);
        end;
        Next;
      end;
      UpdateRecordTypes:=[cusModified,cusInserted,cusUnmodified];
    except
      if UpdateStatus<>usDeleted then bm[i]:=Bookmark;
      UpdateRecordTypes:=[cusModified,cusInserted,cusUnmodified];
      try Bookmark:=bm[i]; except end;
      raise;
    end;
    TR.Commit;
    for i:=0 to High(Dataset) do with Dataset[i] do
        if Active and UpdatesPending then begin
            Active:=false;
            Active:=true;
            //if BookmarkValid(pchar(bm[i])) then
            try Bookmark:=bm[i]; except end;
        end;
  except
    if TR.InTransaction then TR.Rollback;
    raise;
  end finally
    for i:=0 to High(Dataset) do with Dataset[i] do EnableControls;
    Screen.Cursor:=crDefault;
  end
end;

function TData.GenID(const ProcName:string):integer;
begin
  with proc do begin
    StoredProcName:=ProcName;
    ExecProc;
    Result:=ParamByName('ID').Value;
  end;
end;

function TData.getKeyAction(key:word; shift:TShiftState):integer;
begin
    result:=keyNone;
    if (key=VK_F4) and (ssCtrl in Shift) then begin
        TBaseForm.load(nil);
        result:=keyProcess;
    end else case key of
        word('1'):  if ssCtrl in Shift then begin
            MainForm.actDocList.Execute();
            result:=keyProcess;
        end;
        word('2'):  if ssCtrl in Shift then begin
            MainForm.actOstatok.Execute();
            result:=keyProcess;
        end;
        word('3'):  if ssCtrl in Shift then begin
            MainForm.actDebit.Execute();
            result:=keyProcess;
        end;
        word('4'):  if ssCtrl in Shift then begin
            MainForm.actClient.Execute();
            result:=keyProcess;
        end;
        word('5'):  if ssCtrl in Shift then begin
            MainForm.actProduct.Execute();
            result:=keyProcess;
        end;
        word('6'):  if ssCtrl in Shift then begin
            MainForm.actQuery.Execute();
            result:=keyProcess;
        end;
        word('Q'),word('q'): begin
            if ssCtrl in Shift then result:=keyRefresh;
        end;
        word('N'),word('n'): begin
            if ssCtrl in Shift then result:=keyNew;
        end;
        word('D'),word('d'): begin
            if ssCtrl in Shift then result:=keyDelete;
        end;
        word('E'),word('e'): begin
            if ssCtrl in Shift then result:=keyEdit;
        end;
        word('A'),word('a'): begin
            if ssCtrl in Shift then result:=keyApply;
        end;
        word('Z'),word('z'): begin
            if ssCtrl in Shift then result:=keyCancel;
        end;
        word('P'),word('p'): begin
            if ssCtrl in Shift then result:=keyPrint;
        end;
        word('R'),word('r'): begin
            if ssCtrl in Shift then result:=keyExecute;
        end;
        word('F'),word('f'): begin
            if ssCtrl in Shift then result:=keySearch;
        end;
        word('S'),word('s'): begin
            if ssCtrl in Shift then result:=keyView;
        end;
    end;
end;

procedure TData.GridCalcCellColors(Sender:TObject; Field:TField; State:TGridDrawState; Highlight:Boolean; AFont:TFont; ABrush:TBrush);
var FieldName:string;
begin
    if not UseColorSelection then exit;
    FieldName:=Field.FieldName;
    case FieldName[1] of
        'A':    if (FieldName='ALLCNT') then ABrush.Color:=clCountField;
        'C':    if (FieldName='CNT') then ABrush.Color:=clCountField
                else if (FieldName='CLASSNAME') then ABrush.Color:=clNameField
                else if (FieldName='CLIENT') or (FieldName='CLIENT1') or (FieldName='CLIENT2') or (FieldName='CLIENTNAME') or (FieldName='CLIENTNAME1') or (FieldName='CLIENTNAME2') then ABrush.Color:=clClientField;
        'D':    if (FieldName='DATE1') or (FieldName='DATE2') then ABrush.Color:=clDateField
                else if (FieldName='DOCNO') then ABrush.Color:=clNoField
                else if (FieldName='DOC') then ABrush.Color:=clDocField;
        'I':    if (FieldName='INPRICE') or (FieldName='INPRICE2') or (FieldName='INNDSPRICE') then ABrush.Color:=clPriceField;
        'N':    if (FieldName='NAME') then ABrush.Color:=clNameField
                else if (FieldName='NDSPRICE') or (FieldName='NEWPRICE') or (FieldName='NEWPRICE2') or (FieldName='NEWPRICE3') or (FieldName='NEWPRICE4') or (FieldName='NEWPRICE5') then ABrush.Color:=clPriceField
                else if (FieldName='NDSSUM') or (FieldName='NALOGSUM') then ABrush.Color:=clSumField;
        'O':    if (FieldName='OUTPRICE') or (FieldName='OUTPRICE2') then ABrush.Color:=clPriceField
                else if (FieldName='OSTCNT') then ABrush.Color:=clCountField
                else if (FieldName='OST') then ABrush.Color:=clSumField;
        'P':    if (FieldName='PRODUCT') or (FieldName='PRODUCT2') or (FieldName='PRODUCTNAME') or (FieldName='PRODUSERNAME') then ABrush.Color:=clNameField
                else if (FieldName='PRICE') then ABrush.Color:=clPriceField;
        'R':    if (FieldName='RCNT') then ABrush.Color:=clCountField;
        'S':    if (FieldName='SUM0') or (FieldName='SUM1') or (FieldName='SUM2') or (FieldName='SUM3') then ABrush.Color:=clSumField;
        'U':    if (FieldName='UNIT') or (FieldName='UCNT') then ABrush.Color:=clCountField;
    end;
    if Highlight then begin
        ABrush.Color:=getHighlightColor(ABrush.Color,clHighlightOffset);
        AFont.Color:=clWhite;
    end else begin
        AFont.Color:=clBlack;
    end;
end;

procedure TData.getClientInfo(DataSet:TDataSet; Info:TStrings);
//var S,Str:String;
begin
    Info.Text := getClientInfo(DataSet);
  {
  Info.Clear;

  S:='';
  Str:=DataSet.FieldByName('ADRESS').AsString;
  if Str<>'' then S:=S+' Адрес: '+Str;
  Str:=DataSet.FieldByName('PHONE').AsString;
  if Str<>'' then S:=S+' Тел. '+Str;
  if S<>'' then Info.Add(S);

  Str:=DataSet.FieldByName('REG').AsString;
  if Str<>'' then Info.Add(' '+Str);

  Str:=DataSet.FieldByName('RS').AsString;
  if Str<>'' then begin
    S:=' р/с '+Str;
    Str:=DataSet.FieldByName('BANK').AsString;
    if Str<>'' then S:=S+' в '+Str;
    Info.Add(S);
  end;

  Str:=DataSet.FieldByName('KS').AsString;
  if Str<>'' then begin
    S:=' к/с '+Str;
    Str:=DataSet.FieldByName('KORBANK').AsString;
    if Str<>'' then S:=S+' в '+Str;
    Info.Add(S);
  end;

  S:='';
  Str:=DataSet.FieldByName('BIK').AsString; if Str<>'' then S:=S+' БИК '+Str;
  Str:=DataSet.FieldByName('INN').AsString; if Str<>'' then S:=S+' ИНН '+Str;
  Str:=DataSet.FieldByName('OKONX').AsString; if Str<>'' then S:=S+' ОКОНХ '+Str;
  Str:=DataSet.FieldByName('OKPO').AsString; if Str<>'' then S:=S+' ОКПО '+Str;
  if S<>'' then Info.Add(S);
  }
end;

function TData.getClientInfo(DataSet:TDataSet): string;
var S,Str:String;
begin
  S:='';
  Str:=DataSet.FieldByName('ADRESS').AsString;
  if Str<>'' then S:=S+' Адрес: '+Str;
  Str:=DataSet.FieldByName('PHONE').AsString;
  if Str<>'' then S:=S+' Тел. '+Str;
  if S<>'' then result := result + S + #13;
  {}
  Str:=DataSet.FieldByName('REG').AsString;
  if Str<>'' then result := result + Str + #13;
  {}
  Str:=DataSet.FieldByName('RS').AsString;
  if Str<>'' then begin
    S:=' р/с '+Str;
    Str:=DataSet.FieldByName('BANK').AsString;
    if Str<>'' then S:=S+' в '+Str;
    result := result + S + #13;
  end;
  {}
  Str:=DataSet.FieldByName('KS').AsString;
  if Str<>'' then begin
    S:=' к/с '+Str;
    Str:=DataSet.FieldByName('KORBANK').AsString;
    if Str<>'' then S:=S+' в '+Str;
    result := result + S + #13;
  end;
  {}
  S:='';
  Str:=DataSet.FieldByName('BIK').AsString; if Str<>'' then S:=S+' БИК '+Str;
  Str:=DataSet.FieldByName('INN').AsString; if Str<>'' then S:=S+' ИНН '+Str;
  Str:=DataSet.FieldByName('OKONX').AsString; if Str<>'' then S:=S+' ОКОНХ '+Str;
  Str:=DataSet.FieldByName('OKPO').AsString; if Str<>'' then S:=S+' ОКПО '+Str;
  if S<>'' then result := result + S + #13;
end;

procedure TData.getBlobImage(Field:TBlobField; Picture:TPicture);
var
    S:TStream;
    Image:TImage;
begin
    Picture.Graphic:=nil;
    S:=TMemoryStream.Create; Image:=nil;
    try
        Image:=TImage.Create(nil);
        TBlobField(Field).SaveToStream(S);
        if S.Size>0 then try
            S.Position:=0;
            LoadPropertyFromStream(Image,S);
        except
        end;
        Picture.Assign(Image.Picture);
    finally
        S.Free;
        Image.Free;
    end;
end;

procedure TData.setBlobValue(field:TBlobField; const value:string);
begin
    field.AsString:=value;
    //if value='' then field.Clear {AsVariant:=null} else field.AsString:=value;
end;

procedure TData.srcSkladDataChange(Sender: TObject; Field: TField);
begin
  if (Field = nil) or (Field = qrySkladActiveID) then
  begin
    if qrySkladCLIENTID.IsNull and not qrySklad.Eof then qrySklad.First
    else MainForm.appEventPost(self, appSkladSelect, nil);
  end;
end;

function TData.getDocNo(const keyfrm,keyno:string):variant;
var
    n:integer;
    frm:string;
begin
    n:=CurrentConfig.getInteger(keyno);
    if n=0 then begin
        result:=null;
    end else begin
        frm:=CurrentConfig.getString(keyfrm);
        if frm<>'' then try
            result:=Format(frm,[n]);
        except
            frm:='';
        end;
        if frm='' then result:=IntToStr(n);
        CurrentConfig.setInteger(keyno,n+1);
    end;
end;

procedure TData.lookupDatasetKey(DataSet: TDataSet; Field: TField; Key:Char);
begin
    if (DataSet <> nil) and DataSet.Active and (GetKeyState(VK_CONTROL) and $80 = 0)
        then lookup.Lookup(DataSet, Field, Key);
end;

procedure TData.save(grid: TwwDBGrid; title, id: string; date1, date2: TDateTime; kind: integer);
var
    fn, ext, str: string;
    len, i: integer;
begin
    str := title;
    len := Length(str);
    for i := 1 to len do
    case str[i] of
    '"': str[i] := '''';
    '.', '?', '*', '/', '\': str[i] := ' ';
    end;

    dlgSave.FileName := str;
    if not dlgSave.Execute then exit;
    fn := dlgSave.FileName;

    case dlgSave.FilterIndex of
      1: begin ext := '.html'; grid.ExportOptions.ExportType := wwgetHTML; end;
      2: begin ext := '.slk'; grid.ExportOptions.ExportType := wwgetSYLK; end;
      3: begin ext := '.txt'; grid.ExportOptions.ExportType := wwgetTXT; end;
      else ext := '.xml';
    end;
    if ext <> AnsiLowerCase(ExtractFileExt(fn)) then
      fn := fn + ext;

    if ext = '.xml' then begin
      save_xml(grid.DataSource.DataSet as TIBQuery, fn, id, date1, date2,  kind);
    end
    else begin
      grid.ExportOptions.FileName := fn;
      grid.ExportOptions.Options := grid.ExportOptions.Options - [esoClipboard] + [esoShowHeader, esoShowFooter, esoShowTitle, esoDynamicColors, esoShowRecordNo];
      grid.ExportOptions.TitleName := title;
      grid.ExportOptions.Delimiter := #9;
      grid.ExportOptions.Save;
    end;
end;

procedure TData.save_xml(qry: TIBQuery; filename, id: string; date1, date2: TDateTime; kind: integer);
var
  fld: TField;
  strm: TFileStream;
  i: integer;
  docs: boolean;
  tag: string;

  procedure write(str:string);
  begin
    strm.Write(PChar(str)^, Length(str));
  end;

begin
  docs := id = 'documents';
  if docs then tag := 'doc' else tag := 'rec';
  
  if FileExists(filename) then DeleteFile(filename);
  strm := TFileStream.Create(filename, fmCreate);
  qry.DisableControls;
  try
    write('<?xml version="1.0" encoding="windows-1251"?>');

    write(#13#10'<sklad');
    if date1 > 0 then write(' from="' + DateToStr(date1) + '"');
    if date2 > 0 then write(' to="' + DateToStr(date2) + '"');
    write('>');

    write(#13#10'<' + id + '>');

    // write records
    qry.First;
    while not qry.EOF do begin

      // write document
      if docs and (qry.FieldByName('KIND').AsInteger = docProduct) then begin
        RepData.WriteDoc(strm, qry.FieldByName('DOCID').AsInteger);
      end

      // write record fields
      else begin
        write(#13#10'<' + tag + ' ');
        for i := 0 to qry.FieldCount - 1 do begin
          fld := qry.Fields[i];
          if not fld.IsNull then
            write(fld.FieldName + '="' + xml_correct(fld.AsString) + '" ');
        end;
        write('/>');
      end;

      qry.Next;
    end;

    write(#13#10'</' + id + '>');
    write(#13#10'</sklad>');
  finally
    qry.EnableControls;
    strm.Destroy;
  end
end;

function TData.IsDocReadonly(DocDate: TDateTime): boolean;
begin;
    result := (DocUpdateInterval > 0) and (DocDate > 1000) and ((Now - DocDate) > DocUpdateInterval);
end;

function TData.IsOstReadonly(): boolean;
begin;
  result := (DocUpdateParams and $01) = $01;
end;

function TData.CanDocModify(DocDate: TDateTime): boolean;
begin;
    result := true;
    if IsDocReadonly(DocDate) then
    begin
        result := (DocUpdatePassword <> '') and (CheckPassword('Документ защищён от записи', DocUpdatePassword) > 0);
        if not result then msgStatus('Документ защищён от записи!');
    end;
end;

function TData.CanOstModify(): boolean;
begin;
    result := true;
    if IsOstReadonly() then
    begin
        result := (DocUpdatePassword <> '') and (CheckPassword('Остаток защищён от записи', DocUpdatePassword) > 0);
        if not result then msgStatus('Остаток защищён от записи!');
    end;
end;

procedure TData.ConfigRead();
begin;
    // read configuration
    DocUpdateInterval := 0;
    DocUpdateParams := 0;
    DocUpdatePassword := '';
    try
        qry.SQL.Text:='select cfg_key, cfg_value from config';
        qry.Active:=true;
        while not qry.Eof do
        begin
            if (qry.Fields[0].AsString = 'doc_update_password') then
            begin
                DocUpdatePassword := qry.Fields[1].AsString;
            end
            else if (qry.Fields[0].AsString = 'doc_update_interval') then
            begin
              DocUpdateInterval := qry.Fields[1].AsInteger;
            end
            else if (qry.Fields[0].AsString = 'doc_update_params') then
            begin
              DocUpdateParams := qry.Fields[1].AsInteger;
            end;
            qry.Next;
        end;
    except
    end;
end;


procedure TData.ConfigApply();
var qry:TIBQuery;

procedure ConfigApplyParam(const key, value:string);
begin
    qry.SQL.Text:='update config set cfg_value=:cfg_value where cfg_key=:cfg_key';
    qry.Prepare;
    qry.Params[0].AsString:=value;
    qry.Params[1].AsString:=key;
    qry.ExecSQL;
    if (qry.RowsAffected > 0) then exit;

    qry.SQL.Text:='insert into config (cfg_value, cfg_key) values (:cfg_value, :cfg_key)';
    qry.Prepare;
    qry.Params[0].AsString:=value;
    qry.Params[1].AsString:=key;
    qry.ExecSQL;
end;

begin
    qry:=TIBQuery.Create(nil);
    try
        qry.Database:=db;
        qry.Transaction:=trApply;
        if not trApply.InTransaction then trApply.StartTransaction;
        try
            ConfigApplyParam('doc_update_password', DocUpdatePassword);
            ConfigApplyParam('doc_update_interval', IntToStr(DocUpdateInterval));
            ConfigApplyParam('doc_update_params', IntToStr(DocUpdateParams));
        except
            trApply.Rollback;
            raise;
        end;
        trApply.Commit;
    finally
        qry.Destroy;
    end;
end;

procedure InitAppVersion();
var
  filename: string;
  pVerInfo: Pointer;
  dwInfoLength, dwDummy: Cardinal;
  FileInformation: PVSFixedFileInfo;
  ptr: Pointer;

begin
  try
    filename := Forms.Application.ExeName;
    dwInfoLength := GetFileVersionInfoSize(PChar(filename), dwDummy);
    GetMem(pVerInfo, dwInfoLength);
    GetFileVersionInfo(PChar(filename), dwDummy, dwInfoLength, pVerInfo);
    if VerQueryValue(pVerInfo, '\', ptr, dwInfoLength) then begin
      FileInformation := PVSFixedFileInfo(ptr);
      //AppVersion := Format('%d.%d.%d.%d', [(FileInformation.dwFileVersionMS shr 16) and $FFFF, FileInformation.dwFileVersionMS and $FFFF, (FileInformation.dwFileVersionLS shr 16) and $FFFF, FileInformation.dwFileVersionLS and $FFFF]);
      AppVersion := Format('%d.%d', [(FileInformation.dwFileVersionMS shr 16) and $FFFF, FileInformation.dwFileVersionMS and $FFFF, (FileInformation.dwFileVersionLS shr 16) and $FFFF, FileInformation.dwFileVersionLS and $FFFF]);
    end;
    FreeMem(pVerInfo);
  except
  end;
end;

initialization
    InitAppVersion;
    Databases:=TStringList.Create;
    AppPath:=AnsiLowerCase(ExtractFilePath(Application.ExeName));
    if ParamCount >= 1 then AppCfgPath := ExpandFileName(ParamStr(1))
    else AppCfgPath := ChangeFileExt(Application.ExeName,'.cfg');
    CurrentConfig:=TConfig.Create(AppCfgPath,''+
        'general.databases='+#13+#10+
        'general.databaseindex=-1'+#13+#10+
        'general.username=SYSDBA'+#13+#10+
        'general.password=masterkey'+#13+#10+
        'general.loginprompt=1'+#13+#10+
        'options.preview=1'+#13+#10+
        'options.destroytimeout=180'+#13+#10+
        'options.dbtemplate=database\empty.gdb'+#13+#10+
        'options.cachedupdates=1'+#13+#10+
        'view.leftbar.visible=1'+#13+#10+
        'view.leftbar.wallpaper=backgrnd.bmp'+#13+#10+
        'view.format.num=#,###,##0.##'+#13+#10+
        'view.format.int=#,###,##0.'+#13+#10+
        'view.format.cur=#,###,##0.00'+#13+#10+
        'view.format.per=##0.##'+#13+#10+
        'view.colors.use=1'+#13+#10+
        'view.colors.name='+IntToStr(clPastelYellow)+#13+#10+
        'view.colors.count='+IntToStr(clPastelBlue)+#13+#10+
        'view.colors.price='+IntToStr(clPastelYellow)+#13+#10+
        'view.colors.sum='+IntToStr(clWindow)+#13+#10+
        'view.colors.client='+IntToStr(clPastelRed)+#13+#10+
        'view.colors.doc='+IntToStr(clPastelGreen)+#13+#10+
        'view.colors.no='+IntToStr(clPastelGreen)+#13+#10+
        'view.colors.date='+IntToStr(clPastelGreen)+#13+#10+
        'view.colors.rezerv='+IntToStr(clSilver)+#13+#10+
        'view.colors.archiv='+IntToStr(clSilver)+#13+#10
    );
    Integer(docProductOplataListDef):=CurrentConfig.getInteger('doc_oplata_list_def', Integer(docProductOplataListDef));
finalization
    CurrentConfig.setInteger('doc_oplata_list_def', Integer(docProductOplataListDef));
    CurrentConfig.Free;
    Databases.Free;
end.
