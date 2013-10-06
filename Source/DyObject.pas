unit DyObject;
interface
uses SysUtils,TypInfo,Classes,Graphics,Variants;

const
  MsgNotGetProp = 'Can`t get write only property';
  MsgNotSetProp = 'Can`t set read only property';

type
  TDyReader = class (TReader)
  private
  public
    procedure ReadProperty(Instance:TPersistent);
  end;

  TDyWriter = class (TWriter)
  private
  public
    procedure WriteProperty(Instance:TPersistent; const Name:string);
  end;


procedure LoadPropertyFromStream(Instance:TPersistent; Stream:TStream);
procedure SavePropertyToStream(Instance:TPersistent; const PropertyName:string; Stream:TStream);
function GetObjectProperty(Instance:TObject; const Name:string):variant;
function SetObjectProperty(Instance:TObject; const Name:string; const Value:variant):variant;
function GetPropValue(Instance:TObject; PropInfo:PPropInfo):variant;
procedure SetPropValue(Instance:TObject; const PropInfo:PPropInfo; const Value:variant);
function GetPropValueStr(Instance:TObject; PropInfo:PPropInfo):string;
procedure SetPropValueStr(Instance:TObject; const PropInfo:PPropInfo; const Value:string);

implementation

procedure TDyReader.ReadProperty(Instance:TPersistent);
begin
  inherited ReadProperty(Instance);
end;

procedure TDyWriter.WriteProperty(Instance:TPersistent; const Name:string);
var
  ClassInfo:pointer;
  PropInfo:PPropInfo;
begin
  ClassInfo:=Instance.ClassInfo;
  if ClassInfo=nil then Exit;
  PropInfo:=GetPropInfo(ClassInfo,Name);
  if PropInfo=nil then Exit;
  inherited WriteProperty(Instance,PropInfo);
end;

function GetPropValue(Instance:TObject; PropInfo:PPropInfo):variant;
var
  PropType: PTypeInfo;
begin
  if PPropInfo(PropInfo)^.GetProc = nil then raise Exception.create(MsgNotGetProp);
  PropType:=PPropInfo(PropInfo)^.PropType^;
  case PropType^.Kind of
    tkInteger,tkChar,tkEnumeration,tkSet: Result:=GetOrdProp(Instance,PropInfo);
    tkClass: begin TVarData(Result).VType:=varInteger; TVarData(Result).VInteger:=GetOrdProp(Instance,PropInfo); end;
    tkFloat: Result:=GetFloatProp(Instance,PropInfo);
    tkString,tkLString,tkWString: VarCast(Result,GetStrProp(Instance,PropInfo),varString);
    //tkMethod: Result:=GetOrdProp(Instance,PropInfo);
    tkVariant: Result:=GetVariantProp(Instance,PropInfo);
  end;
end;

procedure SetPropValue(Instance:TObject; const PropInfo:PPropInfo; const Value:variant);
var
  PropType: PTypeInfo;
begin
  if PPropInfo(PropInfo)^.SetProc = nil then raise Exception.create(MsgNotSetProp);
  PropType:=PPropInfo(PropInfo)^.PropType^;
  case PropType^.Kind of
    tkInteger: SetOrdProp(Instance,PropInfo,VarAsType(Value,varInteger));
    tkChar: SetOrdProp(Instance,PropInfo,VarAsType(Value,varByte));
    tkEnumeration: case VarType(Value) of
      varOleStr,varString: SetOrdProp(Instance,PropInfo,GetEnumValue(PropType,Value))
      else SetOrdProp(Instance,PropInfo,VarAsType(Value,varInteger));
    end;
    tkFloat: SetFloatProp(Instance,PropInfo,VarAsType(Value,varDouble));
    tkString,tkLString,tkWString: SetStrProp(Instance,PropInfo,string(VarAsType(Value,varString)));
    tkSet: SetOrdProp(Instance,PropInfo,VarAsType(Value,varInteger));
    tkClass: SetOrdProp(Instance,PropInfo,TVarData(Value).VInteger);
    //tkMethod: begin VarCast(Value,Value,varInteger); SetMethodProp(Instance,PropInfo,TMethod(pointer(integer(Value))^)); end;
    tkVariant: SetVariantProp(Instance,PropInfo,Value);
  end;
end;

function GetPropValueStr(Instance:TObject; PropInfo:PPropInfo):string;
var
  TypeInfo: PTypeInfo;
  TypeData: PTypeData;
begin
  if PPropInfo(PropInfo)^.GetProc = nil then raise Exception.create(MsgNotGetProp);
  TypeInfo:=PPropInfo(PropInfo)^.PropType^;
  case TypeInfo^.Kind of
    tkUnknown: Result:='Unknown';
    tkInteger: Result:=IntToStr(GetOrdProp(Instance,PropInfo));
    tkChar: Result:=IntToStr(GetOrdProp(Instance,PropInfo));
    tkEnumeration: Result:=GetEnumName(TypeInfo,GetOrdProp(Instance,PropInfo));
    tkSet: Result:=IntToStr(GetOrdProp(Instance,PropInfo));
    tkClass: begin
      TypeData:=GetTypeData(TypeInfo);
      Result:=TypeData.ClassType.ClassName;
    end;
    tkFloat: Result:=FloatToStr(GetFloatProp(Instance,PropInfo));
    tkString,tkLString,tkWString: Result:=GetStrProp(Instance,PropInfo);
    tkMethod: Result:='Method';
    tkVariant: Result:=VarAsType(GetVariantProp(Instance,PropInfo),varString);
  end;
end;

procedure SetPropValueStr(Instance:TObject; const PropInfo:PPropInfo; const Value:string);
var
  PropType: PTypeInfo;
begin
  if PPropInfo(PropInfo)^.SetProc = nil then raise Exception.create(MsgNotSetProp);
  PropType:=PPropInfo(PropInfo)^.PropType^;
  try case PropType^.Kind of
    tkInteger,tkChar: SetOrdProp(Instance,PropInfo,StrToInt(Value));
    tkEnumeration: SetOrdProp(Instance,PropInfo,GetEnumValue(PropType,Value));
    tkFloat: SetFloatProp(Instance,PropInfo,StrToFloat(Value));
    tkString,tkLString,tkWString: SetStrProp(Instance,PropInfo,Value);
    tkSet: SetOrdProp(Instance,PropInfo,StrToInt(Value));
    tkVariant: SetVariantProp(Instance,PropInfo,Value);
  end except
  end;
end;

function GetObjectProperty(Instance:TObject; const Name:string):variant;
var
  ClassInfo:pointer;
  PropInfo:PPropInfo;
begin
  Result:=Unassigned;
  ClassInfo:=Instance.ClassInfo;
  if ClassInfo=nil then Exit;
  PropInfo:=GetPropInfo(ClassInfo,Name);
  if PropInfo=nil then Exit;
  Result:=GetPropValue(Instance,PropInfo);
end;

function SetObjectProperty(Instance:TObject; const Name:string; const Value:variant):variant;
var
  ClassInfo:pointer;
  PropInfo:PPropInfo;
begin
  ClassInfo:=Instance.ClassInfo;
  if ClassInfo=nil then Exit;
  PropInfo:=GetPropInfo(ClassInfo,Name);
  if PropInfo=nil then Exit;
  SetPropValue(Instance,PropInfo,Value);
  Result:=Value;
end;

procedure LoadPropertyFromStream(Instance:TPersistent; Stream:TStream);
var
  Reader:TDyReader;
begin
  Reader:=TDyReader.Create(Stream, 4096);
  try
    Reader.ReadProperty(Instance);
  finally
    Reader.Free;
  end;
end;

procedure SavePropertyToStream(Instance:TPersistent; const PropertyName:string; Stream:TStream);
var
  Writer:TDyWriter;
begin
  Writer:=TDyWriter.Create(Stream, 4096);
  try
    Writer.WriteProperty(Instance,PropertyName);
  finally
    Writer.Free;
  end;
end;


end.
