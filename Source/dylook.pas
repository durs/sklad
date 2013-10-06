unit DyLook;
interface
uses
    Windows,Messages,SysUtils,Classes,Controls,StdCtrls,ExtCtrls,Buttons,
    DB,DBCtrls,IBCustomDataSet,Variants;

var
  DefLookupPause:integer=1000;

type
  TDyLookupStyle = set of (lsFiltered,lsAllowScroll,lsAllowScrollOut,lsSQLFilter);
  TDyOnFilter = procedure (Sender:TObject; const filter:string) of object;

  TDyQuickLookup = class(TPersistent)
  private
    timer:TTimer;
    dataset:TDataSet;
    datafield:string;
    value:string;
    procedure OnTimer(Sender:TObject);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Lookup(ds:TDataSet; df:TField; key:char);
  end;

  TDyDBLookup = class(TPersistent)
  private
    FQuoteChar: char;
    FState:set of (lsSearch,lsFind,lsScroll);
    FStyle:TDyLookupStyle;
    FDataLink:TFieldDataLink;
    FValue:string;
    FRecordCount:integer;
    FOnApply,FOnCancel:TNotifyEvent;
    Timer:integer;
    Handle:THandle;
    FOnFilter:TDyOnFilter;
    procedure SetDataSource(Value:TDataSource);
    procedure SetDataField(Value:string);
    procedure SetControl(Value:TComponent);
    procedure SetStyle(Value:TDyLookupStyle);
    function GetDataSource:TDataSource;
    function GetDataField:string;
    function GetControl:TComponent;
    procedure DataChange(Sender:TObject);
    function GetActive:boolean;
    procedure SetFilter(value:string);
    procedure RefreshFilter;
  public
    constructor Create(AQuoteChar:char);
    destructor Destroy; override;
    procedure LookupPause(Handle:THandle; Pause:integer=0; Timer:integer=1);
    function Lookup(Value:string):boolean;
    function LookupValue(Value:string):string;
    procedure Reset;
    function DoKey(Key:word; Shift:TShiftState):boolean;
    property Control:TComponent read GetControl write SetControl;
    property OnApply:TNotifyEvent read FOnApply write FOnApply;
    property OnCancel:TNotifyEvent read FOnCancel write FOnCancel;
    property Style:TDyLookupStyle read FStyle write SetStyle default [lsAllowScroll,lsAllowScrollOut];
    property Active:boolean read GetActive;
  published
    property DataSource:TDataSource read GetDataSource write SetDataSource;
    property DataField:string read GetDataField write SetDataField;
    property RecordCount:integer read FRecordCount write FRecordCount default 8;
    property OnFilter:TDyOnFilter read FOnFilter write FOnFilter;
    property QuoteChar:char read FQuoteChar write FQuoteChar;
  end;

  TDySQLParser = class
  private
    sqlText,sqlOrderBy,sqlWhere:string;
    pSelect,pWhere,pGroupBy,pOrderBy,pEnd:integer;
    procedure parse;
    function GetSQL:string;
    function GetOrderBy:string;
    procedure SetOrderBy(value:string);
    function GetWhere:string;
    procedure SetWhere(value:string);
  public
    constructor Create(const sql:string);
    function OrderByUpdate(FieldName:string):boolean; overload;
    function OrderByState(FieldName:string):integer; overload;
    property OrderBy:String read GetOrderBy write SetOrderBy;
    property Where:String read GetWhere write SetWhere;
    property SQL:string read GetSQL;
  end;

implementation

//------------------------TDyGridLookup--------------------------------------

constructor TDyQuickLookup.Create;
begin
    timer:=TTimer.Create(nil);
    timer.Interval:=DefLookupPause;
    timer.OnTimer:=OnTimer;
    timer.Enabled:=false;
end;

destructor TDyQuickLookup.Destroy;
begin
    timer.Free;
    inherited;
end;

procedure TDyQuickLookup.OnTimer(Sender:TObject);
begin
    timer.Enabled:=false;
    if (dataset is TIBCustomDataset) then begin
        TIBCustomDataset(dataset).LocateNext(datafield,value,[loCaseInsensitive, loPartialKey]);
    end else begin
        dataset.Locate(datafield,value,[loCaseInsensitive, loPartialKey]);
    end;
    value:='';
end;

procedure TDyQuickLookup.Lookup(ds:TDataSet; df:TField; key:char);
begin
    timer.Enabled:=false;
    dataset:=ds;
    datafield:=df.FieldName;
    value:=value+key;
    timer.Enabled:=true;
end;
//--------------------------TDyDBLookup--------------------------------------

constructor TDyDBLookup.Create(AQuoteChar:char);
begin
  inherited Create;
  FQuoteChar := AQuoteChar;
  FRecordCount:=8;
  FStyle:=[lsAllowScroll,lsAllowScrollOut];
  FDataLink:=TFieldDataLink.Create;
  FDataLink.OnDataChange:=DataChange;
end;

destructor TDyDBLookup.Destroy;
begin
  FDataLink.Free;
  inherited;
end;

procedure TDyDBLookup.SetDataSource(Value:TDataSource);
begin
  FDataLink.DataSource:=Value;
end;

function TDyDBLookup.GetDataSource:TDataSource;
begin
  Result:=FDataLink.DataSource;
end;

procedure TDyDBLookup.SetDataField(Value:string);
begin
  //if FDataLink.FieldName = Value then Exit;
  FDataLink.FieldName := Value;
  //if (Control is TControl) and (lsFiltered in FStyle) then TEdit(Control).Text:='';
  //if (lsFiltered in FStyle) and (FValue <> '') then RefreshFilter;
  FValue := '';
end;

function TDyDBLookup.GetDataField:string;
begin
  Result:=FDataLink.FieldName;
end;

procedure TDyDBLookup.SetControl(Value:TComponent);
begin
  FDataLink.Control:=Value;
  FState:=[];
  FValue:='';
end;

function TDyDBLookup.GetControl:TComponent;
begin
  Result:=FDataLink.Control;
end;

procedure TDyDBLookup.SetFilter(value:string);
begin
  if (FValue = value) then exit;
  FValue := Value;
  RefreshFilter;
end;

procedure TDyDBLookup.RefreshFilter;
var
    filter,fname:string;
    p:integer;
begin
  filter:='';
  if FValue<>'' then with FDataLink do begin
    if Field=nil then FValue:=''
    else if Field is TDateTimeField then try
      StrToDate(FValue); except FValue:='';
    end else if Field is TIntegerField then try
      StrToInt(FValue); except FValue:='';
    end else if Field is TFloatField then try
      StrToFloat(FValue);
      p:=Pos(',',FValue);
      if (p>0) then FValue[p]:='.';
      except FValue:='';
    end else if not (Field is TStringField) then begin
      FValue:='';
    end;
  end;
  if FValue<>'' then with FDataLink do begin
    if lsSQLFilter in FStyle then begin
      fname:=Field.Origin; if fname='' then fname:=Field.FieldName;
      if Field is TStringField then filter := 'upper(' + fname + ' collate pxw_cyrl) like ' + FQuoteChar + AnsiUpperCase(FValue) + '%' + FQuoteChar
      else if Field is TDateTimeField then filter := fname + '=' + FQuoteChar + FValue + FQuoteChar
      else if Field is TFloatField then filter := fname + '>' + FValue + '-0.00001 and ' + fname + '<' + FValue + '+0.00001'
      else filter := fname+' like ' + FQuoteChar + FValue + '%' + FQuoteChar;
    end else begin
      if Field is TStringField then FValue := FValue + '*';
      filter := '['+FieldName+'] = ''' + FValue + '''';
    end;
  end;
  if lsSQLFilter in FStyle then begin
    if assigned(FOnFilter) then FOnFilter(self,filter);
  end else begin
    FDataLink.DataSet.Filter:=filter;
    FDataLink.DataSet.Filtered:=filter<>'';
  end;
end;

procedure TDyDBLookup.SetStyle(Value:TDyLookupStyle);
begin
  if FStyle=Value then Exit;
  if not(lsFiltered in FStyle) then FValue:='';
  FStyle:=Value;
  Include(FState,lsSearch);
  try
    SetFilter('');
    if not (lsFiltered in FStyle) and FDataLink.Active and (FDataLink.Field<>nil)
      then TEdit(Control).Text:=FDataLink.Field.AsString
      else TEdit(Control).Text:='';
  finally
    Exclude(FState,lsSearch);
  end;
end;

procedure TDyDBLookup.DataChange(Sender:TObject);
begin
  if not (Control is TControl)
    or (lsSearch in FState)
    or (lsScroll in FState)
    or not(lsAllowScrollOut in FStyle)
    or (lsFiltered in FStyle) then Exit;
  with FDataLink do try
    Include(FState,lsSearch);
    if Active and (Field<>nil) then TEdit(Control).Text:=Field.AsString else TEdit(Control).Text:='';
    if (Control is TCustomEdit) and TCustomEdit(Control).HandleAllocated then TEdit(Control).SelectAll;
  finally
    Exclude(FState,lsSearch);
  end;
end;

procedure TDyDBLookup.LookupPause(Handle:THandle; Pause:integer=0; Timer:integer=1);
begin
  if lsSearch in FState then Exit;
  if Pause<=0 then Pause:=DefLookupPause;
  KillTimer(self.Handle,self.Timer);
  self.Handle:=Handle;
  self.Timer:=Timer;
  SetTimer(Handle,Timer,Pause,nil);
end;

function TDyDBLookup.Lookup(Value:string):boolean;
var
  L1,L2:integer;
  F,S:boolean;
  V:variant;
begin
  Result:=false;
  if lsSearch in FState then Exit;
  KillTimer(Handle,Timer);
  with FDataLink do try
    Include(FState,lsSearch);
    if lsFiltered in FStyle then begin
      SetFilter(Value);
      Result:=true;
    end else if Active and (Field<>nil) then begin
      F:=true; S:=true;
      L1:=Length(FValue);
      L2:=Length(Value);
      if Field is TDateTimeField then try
        if (lsFind in FState) and (Value<>FValue) then Exclude(FState,lsFind);
        S:=false;
        V:=StrToDate(Value); except V:=Null;
      end else if Field is TFloatField then try
        if (lsFind in FState) and (Value<>FValue) then Exclude(FState,lsFind);
        V:=StrToFloat(Value); except V:=Null;
      end else begin
        if Field is TStringField then V:=Copy(Value,1,Field.Size) else V:=Value;
        if not (lsFind in FState) and (FValue<>'') and (L2>=L1) then F:=FValue<>Copy(Value,1,L1)
        else if (lsFind in FState) and (Value<>FValue) then Exclude(FState,lsFind);
      end;
      if F and not (lsFind in FState) and (AnsiCompareText(Value,Copy(Field.AsString,1,L2))=0) then Include(FState,lsFind);
      //if F and not (lsFind in FState) then MessageBeep(MB_Ok);
      if F and ((lsFind in FState) or Dataset.Locate(FieldName,V,[loCaseInsensitive, loPartialKey])) then begin
        Result:=true;
        Include(FState,lsFind);
        if S and (Control is TCustomEdit) then with TEdit(Control) do begin
          Text:=Field.AsString;
          SelStart:=L2;
          SelLength:=Length(Text)-L2;
        end;
      end else begin
        Result:=false;
        Exclude(FState,lsFind);
      end;
      FValue:=Value;
    end;
  finally
    Exclude(FState,lsSearch);
  end;
end;

function TDyDBLookup.LookupValue(Value:string):string;
begin
  if (Value<>'') and Lookup(Value) then Result:=FDataLink.Field.AsString else Result:='';
end;

function TDyDBLookup.DoKey(Key:word; Shift:TShiftState):boolean;
var L:integer;
begin
  Result:=false;
  if FDataLink.Active and (lsAllowScroll in FStyle) then try
    Include(FState,lsScroll);
    case Key of
      VK_UP: begin FDataLink.Dataset.Prior; Result:=true; end;
      VK_DOWN: begin FDataLink.Dataset.Next; Result:=true; end;
      VK_HOME: if ssCtrl in Shift then begin FDataLink.Dataset.First; Result:=true; end;
      VK_END: if ssCtrl in Shift then begin FDataLink.Dataset.Last; Result:=true; end;
      VK_PRIOR: begin FDataLink.Dataset.MoveBy(-FRecordCount); Result:=true; end;
      VK_NEXT: begin FDataLink.Dataset.MoveBy(FRecordCount); Result:=true; end;
    end;
  finally
    Exclude(FState,lsScroll);
  end;
  if not Result then case Key of
    VK_BACK: if FDataLink.Active and(Control is TCustomEdit) and not (lsFiltered in FStyle) then begin
      with TEdit(Control) do if (SelLength<>0) and (SelStart>0) then begin
        L:=SelLength;
        SelStart:=SelStart-1;
        SelLength:=L+1;
      end;
      Result:=true;
    end;
    VK_RETURN: if assigned(FOnApply) then begin FOnApply(Control); Result:=true; end;
    VK_ESCAPE: if assigned(FOnCancel) then begin FOnCancel(Control); Result:=true; end;
  end;
end;

function TDyDBLookup.GetActive:boolean;
begin
  with FDataLink do Result:=Active and (Field<>nil);
end;

procedure TDyDBLookup.Reset;
begin
  try
    Include(FState,lsScroll);
    FDataLink.Reset;
  finally
    Exclude(FState,lsScroll);
  end;
end;

//======================TDySQLParser=============================
constructor TDySQLParser.Create(const sql:string);
begin
    sqlText:=sql;
    parse;
end;

procedure TDySQLParser.parse;
var sql:string;
begin
    sql:=AnsiLowerCase(sqlText);
    pSelect:=1;
    pEnd:=length(sqlText)+1;
    pOrderBy:=pos('order by',sql);
    if pOrderBy<=0 then pOrderBy:=pEnd;
    pGroupBy:=pos('group by',sql);
    if pGroupBy<=0 then pGroupBy:=pOrderBy;
    pWhere:=pos('where',sql);
    if pWhere<=0 then pWhere:=pGroupBy;
end;

function TDySQLParser.GetSQL:string;
begin
    result:=copy(sqlText,pSelect,pWhere-pSelect)+' '+GetWhere+' '+copy(sqlText,pGroupBy,pOrderBy-pGroupBy)+' '+GetOrderBy;
end;

function TDySQLParser.GetOrderBy:string;
begin
    if sqlOrderBy='' then result:=copy(sqlText,pOrderBy,pEnd-pOrderBy)
    else Result:=sqlOrderBy;
end;

procedure TDySQLParser.SetOrderBy(value:string);
begin
    sqlOrderBy:=value;
end;

function TDySQLParser.GetWhere:string;
begin
    result:=copy(sqlText,pWhere,pGroupBy-pWhere);
    if sqlWhere<>'' then begin
        if result<>'' then result:=result+' and ' else result:='where ';
        result:=result+sqlWhere;
    end;
end;

procedure TDySQLParser.SetWhere(value:string);
begin
    sqlWhere:=value;
end;

function TDySQLParser.OrderByUpdate(FieldName:string):boolean;
var
  N,LS,LF: integer;
  S: string;
begin
  Result := false;
  if FieldName = '' then Exit;
  S := GetOrderBy;
  N := Pos(' ' + FieldName + ' ', S + ' ');


  { new }

  if N > 0 then
  begin
    LS := Length(S);
    LF := Length(FieldName);
    if (LS < N + LF + 2) or (S[N + LF + 2] = ',')
    // append desc to order by
    then begin
        S := Copy(S, 1, N + LF) + ' desc ' + Copy(S, N +LF + 2, LS)
    end

    // remove from order by
    else begin
        S := Copy(S, 1, N - 1) + Copy(S, N + LF + 8, LS);
        LS := Length(S);
        if S[LS] = ',' then S := Copy(S, 1, LS - 2);
    end;
  end
  else begin
    // append to order by
    if S = ''
        then S:='order by ' + FieldName
        else S := S + ' , ' + FieldName;
  end;

  S := Trim(S);
  if S = 'order by' then S := '';

  {
  if GetKeyState(VK_CONTROL) and $80 = 0 then begin
    if N>0 then begin
      LS:=Length(S); LF:=Length(FieldName);
      if (LS<N+LF+2) or (S[N+LF+2]=',')
        then S:=Copy(S,1,N+LF)+' desc '+Copy(S,N+LF+2,LS)
        else S:=Copy(S,1,N+LF+1)+Copy(S,N+LF+7,LS);
      LS:=Length(S);
      if S[LS]=' ' then S:=Copy(S,1,LS-1);
    end else begin
      S:='order by '+FieldName;
    end;
  end else begin
    if N>0 then begin
      LS:=Length(S); LF:=Length(FieldName);
      if (LS<N+LF+2) or (S[N+LF+2]=',')
        then S:=Copy(S,1,N-1)+Copy(S,N+LF+3,LS)
        else S:=Copy(S,1,N-1)+Copy(S,N+LF+8,LS);
      LS:=Length(S);
      if S[LS]=',' then S:=Copy(S,1,LS-2) else
      if S='order by' then S:='';
    end else begin
      if S='' then S:='order by '+FieldName else S:=S+' , '+FieldName;
    end;
  end;
  }

  SetOrderBy(S);
  Result:=true;
end;

function TDySQLParser.OrderByState(FieldName:string):integer;
var
  N,LS,LF:integer;
  S:string;
begin
  Result:=0;
  S:=GetOrderBy;
  if (FieldName='') or (S='') then Exit;
  N:=Pos(' '+FieldName+' ',S+' ');
  if N>0 then begin
    LS:=Length(S); LF:=Length(FieldName);
    if (LS<N+LF+2) or (S[N+LF+2]=',')
      then Result:=1
      else Result:=-1;
  end;
end;

end.
