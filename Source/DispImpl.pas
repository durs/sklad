unit DispImpl;
{$M+}
interface
uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants, DB;

const
    IID_IDispComponent: TGUID = '{417FF2DF-83A9-41BB-A12B-000000000001}';
    IID_IDispDataSet: TGUID = '{417FF2DF-83A9-41BB-A12B-000000000002}';

type

  TDispatchImplNameResolve = function(const Name: string): Integer of object;
  TDispatchImplInvoke = procedure(DispID: Integer; Flags: Word; var Params: TVariantArray; var Result: OleVariant) of object;

  TDispatchImpl = class(TObject, IUnknown, IDispatch)
  private
    InternalRefCount : Integer;
    IntfIID: TGUID;
    FOnNameResolve: TDispatchImplNameResolve;
    FOnInvoke: TDispatchImplInvoke;
  protected
    function DoNameResolve(const Name: string): Integer; virtual;
    procedure DoInvoke(DispID: Integer; Flags: Word; var Params: TVariantArray; var Ret: OleVariant); virtual;
    { IUnknown }
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
    { IDispatch }
    function GetTypeInfoCount(out Count: Integer): HResult; stdcall;
    function GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult; stdcall;
    function GetIDsOfNames(const IID: TGUID; Names: Pointer;
      NameCount, LocaleID: Integer; DispIDs: Pointer): HResult; stdcall;
    function Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer;
      Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult; stdcall;
  public
    constructor Create(const IID: TGUID);
    destructor Destroy; override;
  published
    property OnInvoke: TDispatchImplInvoke read FOnInvoke write FOnInvoke;
    property OnNameResolve: TDispatchImplNameResolve read FOnNameResolve write FOnNameResolve;
  end;

  TDispatchComponentImpl = class(TDispatchImpl)
  private
    Comp: TComponent;
  protected
    function DoNameResolve(const Name: string): Integer; override;
  public
    constructor Create(aComp: TComponent);
  end;

  TDispatchDataSetImpl = class(TDispatchImpl)
  private
    DataSet: TDataSet;
  protected
    function DoNameResolve(const Name: string): Integer; override;
    procedure DoInvoke(DispID: Integer; Flags: Word; var Params: TVariantArray; var Ret: OleVariant); override;
  public
    constructor Create(ADataSet: TDataSet);
  end;

implementation
uses TypInfo, SysUtils;

{ TServerEventDispatch }
constructor TDispatchImpl.Create(const IID: TGUID);
begin
  inherited Create;
  InternalRefCount := 1;
  IntfIID := IID;
  FOnInvoke := nil;
  FOnNameResolve := nil;
end;

destructor TDispatchImpl.Destroy;
begin
  inherited Destroy;
end;

function TDispatchImpl.DoNameResolve(const Name: string): Integer;
begin
  if assigned(FOnNameResolve) then
    Result := FOnNameResolve(Name)
  else
    Result := DISPID_UNKNOWN;
end;

procedure TDispatchImpl.DoInvoke(DispID: Integer; Flags: Word; var Params: TVariantArray; var Ret: OleVariant);
begin
  if assigned(FOnInvoke) then
    FOnInvoke(DispID, Flags, Params, Ret);
end;

{ TServerEventDispatch.IUnknown }
function TDispatchImpl.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
  begin
    Result := S_OK;
    Exit;
  end;
  if IsEqualIID(IID, IntfIID) then
  begin
    GetInterface(IDispatch, Obj);
    Result := S_OK;
    Exit;
  end;
  Result := E_NOINTERFACE;
end;

function TDispatchImpl._AddRef: Integer;
begin
  InternalRefCount := InternalRefCount + 1;
  Result := InternalRefCount;
end;

function TDispatchImpl._Release: Integer;
begin
  InternalRefCount := InternalRefCount -1;
  Result := InternalRefCount;
end;

{ TServerEventDispatch.IDispatch }
function TDispatchImpl.GetTypeInfoCount(out Count: Integer): HResult;
begin
  Count := 0;
  Result:= S_OK;
end;

function TDispatchImpl.GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult;
begin
  Pointer(TypeInfo) := nil;
  Result := E_NOTIMPL;
end;

function TDispatchImpl.GetIDsOfNames(const IID: TGUID; Names: Pointer;
  NameCount, LocaleID: Integer; DispIDs: Pointer): HResult;
var id: Integer;
begin
  if NameCount > 1 then
  begin
    Result := E_NOTIMPL;
    Exit;
  end;
  id := DoNameResolve(PPOLESTR(Names)^);
  if id = DISPID_UNKNOWN then
  begin
    Result := DISP_E_UNKNOWNNAME;
    Exit;
  end;
  PInteger(DispIDs)^ := id;
  Result := S_OK;
end;

function TDispatchImpl.Invoke(DispID: Integer; const IID: TGUID;
  LocaleID: Integer; Flags: Word; var Params;
  VarResult, ExcepInfo, ArgErr: Pointer): HResult;
var
  i: integer;
  vVarArray : TVariantArray;
  vRet: OleVariant;
  vPVarArgIn: PVariantArg;
  vPDispParams: PDispParams;
  vFistArrItem, vLastArrItem: integer;

begin
  Result := S_OK;
  vPDispParams := PDispParams(@Params);     // DispParams
  SetLength(vVarArray, vPDispParams.cArgs); // set our array to appropriate length

  // array boundaries
  vFistArrItem := Low(vVarArray); vLastArrItem := High(vVarArray);

  if vPDispParams.cNamedArgs > 0 then
    // Copy over data from Params in NamedArgs order
    for i := vFistArrItem to vLastArrItem do
    begin
      vPVarArgIn := @vPDispParams.rgvarg[i];
      vVarArray[vPDispParams.rgdispidNamedArgs[i]] := POleVariant(vPVarArgIn)^;
    end
  else
    // Copy over data from Params in reverse order
    for i := vFistArrItem to vLastArrItem do
    begin
      vPVarArgIn := @vPDispParams.rgvarg[i];
      vVarArray[vLastArrItem - i] := POleVariant(vPVarArgIn)^;
    end;

  // Invoke
  vRet := Unassigned;
  try
    DoInvoke(DispID, Flags, vVarArray, vRet);
    if (VarResult <> nil) then POleVariant(VarResult)^ := vRet;
  except
    Result := DISP_E_EXCEPTION;
  end;

  if vPDispParams.cNamedArgs > 0 then
    // Copy data back to DispParams if Item passed by reference (NamedArgs order)
    for i := vFistArrItem to vLastArrItem do
    begin
      vPVarArgIn := @vPDispParams.rgvarg[i];
      if (vPVarArgIn.vt and varByRef) <> varByRef then
        Continue;
      POleVariant(vPVarArgIn)^ := vVarArray[vPDispParams.rgdispidNamedArgs[i]];
    end
  else
    // Copy data back to DispParams if Item passed by reference (reverse order)
    for i := vFistArrItem to vLastArrItem do
    begin
      vPVarArgIn := @vPDispParams.rgvarg[i];
      if (vPVarArgIn.vt and varByRef) <> varByRef then
        Continue;
      POleVariant(vPVarArgIn)^ := vVarArray[vLastArrItem - i];
    end;

  // Clean array
  SetLength(vVarArray, 0);
end;

//------------------------------------------------------------------------------

constructor TDispatchComponentImpl.Create(AComp: TComponent);
begin
  inherited Create(IID_IDispComponent);
  Comp := AComp;
end;

function TDispatchComponentImpl.DoNameResolve(const Name: string): Integer;
//var prop: PPropInfo;
begin
  Result := inherited DoNameResolve(Name);
  //if Result <> 0 then Exit;
  //prop := GetPropInfo(Comp, Name);
end;

//------------------------------------------------------------------------------

constructor TDispatchDataSetImpl.Create(ADataSet: TDataSet);
begin
  inherited Create(IID_IDispDataSet);
  DataSet := ADataSet;
end;

function TDispatchDataSetImpl.DoNameResolve(const Name: string): Integer;
begin
  Result := inherited DoNameResolve(Name);
  if Result <> DISPID_UNKNOWN then Exit;
  if CompareText(Name, 'Value') = 0 then Result := 100
  else if CompareText(Name, 'Field') = 0 then Result := 101
  else if CompareText(Name, 'MoveFirst') = 0 then Result := 201
  else if CompareText(Name, 'MoveLast') = 0 then Result := 202
  else if CompareText(Name, 'MoveNext') = 0 then Result := 203
  else if CompareText(Name, 'MovePrev') = 0 then Result := 204
end;

procedure TDispatchDataSetImpl.DoInvoke(DispID: Integer; Flags: Word; var Params: TVariantArray; var Ret: OleVariant);
var
  cnt: integer;
  fld: TField;
begin
  cnt := Length(Params);
  try
  DataSet.Active := true;

  case DispID of
  DISPID_VALUE, 100: if cnt > 0 then
    begin
      if VarIsNumeric(Params[0]) then fld := DataSet.Fields.FieldByNumber(Params[0])
      else fld := DataSet.Fields.FieldByName(Params[0]);
      Ret := fld.Value;
      if VarIsStr(Ret) then Ret := Trim(Ret);
    end else begin
      Ret := not DataSet.Eof;
    end;
  101: if cnt > 0 then
    begin
      if VarIsNumeric(Params[0]) then Ret := DataSet.Fields.FieldByNumber(Params[0]).FieldName
      else Ret := DataSet.Fields.FieldByName(Params[0]).FieldNo;
    end;
  201: begin
    DataSet.First;
    Ret := not DataSet.Eof;
    end;
  202: begin DataSet.Last; Ret := not DataSet.Eof; end;
  203: begin DataSet.Next; Ret := not DataSet.Eof; end;
  204: begin DataSet.Prior; Ret := not DataSet.Eof; end;
  else inherited DoInvoke(DispID, Flags, Params, Ret);
  end;

  except
    on e:Exception do begin
      //ApplicationShowException(e);
      Ret := null;
    end;
  end;
end;

//------------------------------------------------------------------------------

end.
