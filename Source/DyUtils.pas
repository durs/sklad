unit DyUtils;
interface
uses Windows, Menus, SysUtils, ComCtrls, Forms, Classes, Variants;
const
  CFormat='###,###,###,##0.00';
  CIFormat='###,###,###,##0.##';
  CLFormat='###,###,###,##0.00##';

  LongMonthNamesRus : array [1..12] of string = ('€нварь','февраль','март','апрель','май','июнь','июль','август','сент€брь','окт€брь','но€брь','декабрь');
  LongMonthNamesNRus : array [1..12] of string = ('€нвар€','феврал€','марта','апрел€','май€','июн€','июл€','августа','сент€бр€','окт€бр€','но€бр€','декабр€');


procedure ChangeReference(Obj:TObject; PropName:ShortString; Dest,Src:TComponent);
function VarAsTypeSafe(V:Variant; VType:integer):variant;

function StrToIntConvert(var S:string):string;
function RazryadConvert(Number:integer; const S1,S2,S3:string; M,Zero:boolean):string;
function IntConvert(C:double):string;
function CurrConvert(C:double):string;
function CurrShortConvert(C:double):string;
function CurrNewConvert(C:double):string;
function CurrRound(const F:double):double;

function RoundCor(const v: Extended):Int64;
function Round1(const F:Double):Double;
function Round2(const F:Double):Double;
function Round3(const F:Double):Double;
function Round4(const F:Double):Double;

function FloatPer(const Value,Per:Double):Double;
function FloatInPer(const Value,Per:Double):Double;
function FloatAddPer(const Value,Per:Double):Double;
function FloatAddPerCor(const Value,Per:Double):Double;
function FloatRemovePer(const Value,Per:Double):Double;

//color routens
function getHighlightColor(color:integer; ofs:byte=$A0):integer;

type
  TFileProc = procedure(SearchRec:TSearchRec) of object;

procedure GetFiles(Mask:String; Files:TStrings; Attr:integer);  {Attr-faAnyFile}
procedure ForEachFile(Mask:String; Attr:integer; FileProc:TFileProc);
function CopyFiles(Files:TStrings; SrcPath,DstPath:string; Hints:TStrings; Gauge:TProgressBar; MaxPercent:integer; Break:PBool):boolean;
function FolderName(Dir:string):string;
function LastFolder(Dir:string):string;
function ExpandFileName2(const str: string): string;
function ExpandFileNameDb(const str: string): string;

function CreatePopupItem(Parent:TMenuItem; Caption:string; Enabled:boolean; Tag:integer; OnClick:TNotifyEvent):TMenuItem;
function AutoFitRect(var R:TRect; const Src,Dest:TRect):double;

function ExtractWord(var S:string; D:Char):string;
function ReadKeyValue(Text:PChar; const Key:string; var Value:string):boolean;
function ReadStringKeyValue(Text:PChar; const Key:string; const DefaultValue:string=''):string;
function ReadIntegerKeyValue(Text:PChar; const Key:string; const DefaultValue:integer=0):integer;
function ReadDoubleKeyValue(Text:PChar; const Key:string; const DefaultValue:Double=0):Double;
function ReadBoolKeyValue(Text:PChar; const Key:string; const DefaultValue:boolean=false):boolean;

function QuickSearch(Item:pointer; List:PPointerList; L,R:Integer; var N:integer; SCompare:TListSortCompare):boolean;

function BinaryToStr(Value:pointer; Size:integer; kind:integer=0):string;
{kind=(0-bit,1-hex byte,2-decimal byte)}
procedure StrToBinary(Str:String; Value:pointer; Size:integer);

function ReplaceMem(var Src:pchar; const Old,New; SrcSize,OldSize,NewSize:integer):integer;
function MemToStr(var Src:pchar; SrcSize:integer):integer; overload;
function MemToStr(const Src:string):string; overload;
function StrToMem(var Src:pchar; SrcSize:integer):integer; overload;
function StrToMem(const Src:string):string; overload;

implementation

const
  Words1 : array[0..19] of string =
    ('','один','два','три','четыре','п€ть','шесть','семь','восемь','дев€ть',
    'дес€ть','одиннадцать','двенадцать','тринадцать','четырнадцать','п€тнадцать',
    'шестнадцать','семнадцать','восемнадцать','дев€тнадцать');
  Words1Add : array[0..2] of string = ('ноль','одна','две');
  Words10 : array[0..9] of string =
    ('','дес€ть','двадцать','тридцать','сорок','п€тьдес€т',
    'шестьдес€т','семьдес€т','восемьдес€т','дев€носто');
  Words100 : array[0..9] of string =
    ('','сто','двести','триста','четыреста','п€тьсот',
    'шестьсот','семьсот','восемьсот','дев€тьсот');

  IntChars : set of Char =
    ['0','1','2','3','4','5','6','7','8','9','-'];

function StrToIntConvert(var S:string):string;
var i,L:integer;
begin
  L:=length(S);
  i:=1;
  while i<=L do begin
    if not (S[i] in IntChars) then begin
      if i>1 then
        S:=Copy(S,1,i-1)
      else if i<L then
        S:=S+Copy(S,i+1,L-i);
      Dec(L);
    end;
    inc(i);
  end;
  Result:=S;
end;

function RazryadConvert(Number:integer; const S1,S2,S3:string; M,Zero:boolean):string;
begin
  if Number>99 then begin
    Result:=Words100[Number div 100];
    Number:=Number mod 100;
  end else Result:='';
  if Number>19 then begin
    if Result<>'' then Result:=Result+' ';
    Result:=Result+Words10[Number div 10];
    Number:=Number mod 10;
  end;
  if Result<>'' then Result:=Result+' ';
  case Number of
    0: if Result<>'' then
         Result:=Result+S3
       else begin
         if Zero then Result:=Words1Add[0]+' '+S3;
       end;
    1: if M then Result:=Result+Words1[1]+' '+S1 else Result:=Result+Words1Add[1]+' '+S1;
    2: if M then Result:=Result+Words1[2]+' '+S2 else Result:=Result+Words1Add[2]+' '+S2;
    3,4 : Result:=Result+Words1[Number]+' '+S2;
    else Result:=Result+Words1[Number]+' '+S3;
  end;
end;

function NumConvert(C:double; const S1,S2,S3:string; const S4:string):string;
var
  R,K:integer;
begin
  if C<0 then begin
    C:=-C;
    Result:='- ';
  end else
    Result:='';
  C:=CurrRound(C);
  R:=Trunc(C);
  K:=RoundCor((C-R)*100);
  if R>999999999 then begin
    Result:=Result+RazryadConvert(R div 1000000000,'миллиард','миллиарда','миллиардов',true,true);
    R:=R mod 1000000000;
  end;
  if R>999999 then begin
    if Result<>'' then Result:=Result+' ';
    Result:=Result+RazryadConvert(R div 1000000,'миллион','миллиона','миллионов',true,true);
    R:=R mod 1000000;
  end;
  if R>999 then begin
    if Result<>'' then Result:=Result+' ';
    Result:=Result+RazryadConvert(R div 1000,'тыс€ча','тыс€чи','тыс€ч',false,true);
    R:=R mod 1000;
  end;
  if Result='' then
    Result:=RazryadConvert(R,S1,S2,S3,true,true)
  else begin
    if R=0
      then Result:=Result + ' ' + S3
      else Result:=Result + ' ' + RazryadConvert(R,S1,S2,S3,true,false);
  end;
  if S4 <> '' then Result := Result + ' ' + FormatFloat('00.',K) + ' ' + S4;
  Result := AnsiUpperCase(Copy(Result, 1, 1)) + Copy(Result, 2, Length(Result) - 1);
end;

function IntConvert(C:double):string;
begin
    Result := NumConvert(C,'','','','');
end;

function CurrConvert(C:double):string;
begin
    //Result := NumConvert(C,'рубль','рубл€','рублей','копеек');
    Result := NumConvert(C,'руб.','руб.','руб.','коп.');
end;


{
function CurrConvert(C:double):string;
var
  R,K:integer;
begin
  if C<0 then begin
    C:=-C;
    Result:='- ';
  end else
    Result:='';
  C:=CurrRound(C);
  R:=Trunc(C);
  K:=RoundCor((C-R)*100);
  if R>999999999 then begin
    Result:=Result+RazryadConvert(R div 1000000000,'миллиард','миллиарда','миллиардов',true,true);
    R:=R mod 1000000000;
  end;
  if R>999999 then begin
    if Result<>'' then Result:=Result+' ';
    Result:=Result+RazryadConvert(R div 1000000,'миллион','миллиона','миллионов',true,true);
    R:=R mod 1000000;
  end;
  if R>999 then begin
    if Result<>'' then Result:=Result+' ';
    Result:=Result+RazryadConvert(R div 1000,'тыс€ча','тыс€чи','тыс€ч',false,true);
    R:=R mod 1000;
  end;
  if Result='' then
    Result:=RazryadConvert(R,'рубль','рубл€','рублей',true,true)
  else begin
    if R=0
      then Result:=Result+' рублей'
      else Result:=Result+' '+RazryadConvert(R,'рубль','рубл€','рублей',true,false);
  end;
  //Result:=Result+' '+RazryadConvert(K,'копейка','копейки','копеек',false,false);
  Result:=Result+' '+FormatFloat('00.',K)+' копеек';
  Result:=AnsiUpperCase(Copy(Result,1,1))+Copy(Result,2,Length(Result)-1);
end;
}
function CurrShortConvert(C:double):string;
var
  R,K:integer;
begin
  C:=CurrRound(C);
  R:=Trunc(C);
  K:=RoundCor((C-R)*100);
  Result:=FormatFloat(CIFormat,R)+'р.'+FormatFloat('00',K)+'к.';
end;

function CurrNewConvert(C:double):string;
var
  R,K:integer;
begin
  C:=CurrRound(C);
  R:=Trunc(C);
  K:=RoundCor((C-R)*100);
  Result:=FormatFloat(CIFormat,R)+'-'+FormatFloat('00',K);
end;

function RoundCor(const v: Extended): Int64;
begin
    if (v < 0) then Result := Trunc(v - 0.50000001)
    else Result := Trunc(v + 0.50000001);
end;

function CurrRound(const F:double):double;
begin
  Result:=RoundCor(F*100)/100;
end;

function Round1(const F:Double):Double;
begin
  Result:=RoundCor(F*10)/10;
end;

function Round2(const F:Double):Double;
begin
  Result:=RoundCor(F*100)/100;
end;

function Round3(const F:Double):Double;
begin
  Result:=RoundCor(F*100)/100;
end;

function Round4(const F:Double):Double;
begin
  Result:=RoundCor(F*1000)/1000;
end;

function FloatPer(const Value,Per:Double):Double;
begin
  Result:=Value*(Per/100);
end;

function FloatInPer(const Value,Per:Double):Double;
begin
  if Per=-100 then Result:=Value else Result:=Value*(Per/(100+Per));
end;

function FloatAddPer(const Value,Per:Double):Double;
begin
  Result := Value * ((100 + Per) / 100);
end;

function FloatAddPerCor(const Value,Per:Double):Double;
begin
  if Per >= 0 then Result := Value * ((100 + Per) / 100)
  else Result := Value;
end;

function FloatRemovePer(const Value,Per:Double):Double;
begin
  if Per=-100 then Result:=0 else Result:=Value*(100/(100+Per));
end;
{========================DirUtils========================}
procedure GetFiles(Mask:String; Files:TStrings; Attr:integer);
var
  Found:integer;
  SearchRec:TSearchRec;
begin
  Files.Clear;
  Found := FindFirst(Mask,Attr,SearchRec);
  while Found = 0 do
  begin
    Files.Add(SearchRec.Name);
    Found := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
end;

procedure ForEachFile(Mask:String; Attr:integer; FileProc:TFileProc);
var
  SearchRec:TSearchRec;
begin
  if FindFirst(Mask,Attr,SearchRec)=0 then
    repeat
      FileProc(SearchRec);
    until FindNext(SearchRec)<>0;
  FindClose(SearchRec);
end;

function CopyFiles(Files:TStrings; SrcPath,DstPath:string; Hints:TStrings; Gauge:TProgressBar; MaxPercent:integer; Break:PBool):boolean;
var
  Per,Count,N,i:integer;
  R:boolean;
begin
  Result:=true;
  if Gauge<>nil then Per:=Gauge.Position else Per:=0;
  Count:=0;
  for i:=0 to Files.Count-1 do begin
    if (Break<>nil) and Break^ then raise Exception.create('ѕроцесс копировани€ прерван пользователем !');
    R:=Windows.CopyFile(PChar(SrcPath+Files[i]),PChar(DstPath+Files[i]),true);
    if not R and (Hints<>nil) then Hints.Add('Ќевозможно скопировать файл "'+Files[i]+'" из папки "'+SrcPath+'" в папку "'+DstPath+'" !');
    if Gauge<>nil then begin
      N:=trunc(MaxPercent*(i+1)/Files.Count);
      if Count<>N then begin
        Count:=N;
        Gauge.Position:=Per+Count;
      end;
    end;
    Application.HandleMessage;
    Result:=Result and R;
  end;
  if Gauge<>nil then Gauge.Position:=Per+MaxPercent;
end;

function FolderName(Dir:string):string;
var i,L:integer;
begin
  Result:='';
  L:=Length(Dir);
  if L=0 then Exit;
  if Dir[L]='\' then i:=L-1 else i:=L;
  L:=i;
  while i>0 do begin
    if Dir[i]='\' then begin
      Result:=Copy(Dir,i+1,L-i);
      Break;
    end;
    Dec(i);
  end;
end;

function LastFolder(Dir:string):string;
var i,L:integer;
begin
  Result:='';
  L:=Length(Dir);
  if L=0 then Exit;
  if Dir[L]='\' then i:=L-1 else i:=L;
  while i>0 do begin
    if Dir[i]='\' then begin
      Result:=Copy(Dir,1,i);
      Break;
    end;
    Dec(i);
  end;
end;

function ExpandFileName2(const str: string): string;
begin
  if (pos(':', str) > 0) or (pos('\\', str) > 0) then result := str
  else result := ExpandFileName(str);
end;

function ExpandFileNameDb(const str: string): string;
var
  p: integer;
  host, full: boolean;
  dir: string;
begin
  p := pos(':', str);
  full := (p > 0);
  host := full and (str[p + 1] <> '\');
  if full then result := str
  else begin
    dir := GetCurrentDir();
    SetCurrentDir(ExtractFilePath(Application.ExeName));
    result := ExpandFileName(str);
    SetCurrentDir(dir);
  end;
  if not host then result := ':' + result;
end;

{====================================}
function AutoFitRect(var R:TRect; const Src,Dest:TRect):double;
var
  K:double;
  SrcSize,DestSize:TPoint;
  H:integer;
begin
  R:=Dest;
  SrcSize.X:=Src.Right-Src.Left;
  SrcSize.Y:=Src.Bottom-Src.Top;
  DestSize.X:=Dest.Right-Dest.Left;
  DestSize.Y:=Dest.Bottom-Dest.Top;
  Result:=DestSize.X/SrcSize.X;
  K:=DestSize.Y/SrcSize.Y;
  if K<Result then begin
    Result:=K;
    H:=trunc(SrcSize.X*Result);
    R.Left:=R.Left+(DestSize.X-H) div 2;
    R.Right:=R.Left+H;
  end else begin
    H:=trunc(SrcSize.Y*Result);
    R.Top:=R.Top+(DestSize.Y-H) div 2;
    R.Bottom:=R.Top+H;
  end;
end;

function CreatePopupItem(Parent:TMenuItem; Caption:string; Enabled:boolean; Tag:integer; OnClick:TNotifyEvent):TMenuItem;
begin
  Result:=TMenuItem.create(Parent);
  Result.Caption:=Caption;
  Result.Enabled:=Enabled;
  Result.Tag:=Tag;
  Result.OnClick:=OnClick;
  Parent.Add(Result);
end;

function ExtractWord(var S:string; D:Char):string;
var P:integer;
begin
  Result:='';
  repeat
    P:=Pos(D,S);
    case P of
      0: Break;
      1: S:=Copy(S,2,Length(S)-1);
      else begin
        Result:=Copy(S,1,P-1);
        S:=Copy(S,P+1,Length(S)-P);
        Break;
      end;
    end;
  until false;
end;

function ReadKeyValue(Text:PChar; const Key:string; var Value:string):boolean;
var P:integer;
begin
  P:=Pos(Key+'=',Text);
  Result:=P>0;
  if Result then begin
    Text:=@Text[P+Length(Key)];
    P:=Pos(#13+#10,Text);
    if P>0 then Value:=Copy(Text,0,P-1) else Value:=Text;
  end else begin
    Value:='';
  end;
end;

function ReadStringKeyValue(Text:PChar; const Key:string; const DefaultValue:string=''):string;
begin
  try
    if not ReadKeyValue(Text,Key,Result) then Result:=DefaultValue;
  except
    Result:=DefaultValue;
  end;
end;

function ReadIntegerKeyValue(Text:PChar; const Key:string; const DefaultValue:integer=0):integer;
var Value:string;
begin
  try
    if ReadKeyValue(Text,Key,Value)
      then Result:=StrToInt(Value)
      else Result:=DefaultValue;
  except
    Result:=DefaultValue;
  end;
end;

function ReadDoubleKeyValue(Text:PChar; const Key:string; const DefaultValue:Double=0):Double;
var Value:string;
begin
  try
    if ReadKeyValue(Text,Key,Value)
      then Result:=StrToFloat(Value)
      else Result:=DefaultValue;
  except
    Result:=DefaultValue;
  end;
end;

function ReadBoolKeyValue(Text:PChar; const Key:string; const DefaultValue:boolean=false):boolean;
var Value:string;
begin
  try
    if ReadKeyValue(Text,Key,Value)
      then Result:=StrToInt(Value)<>0
      else Result:=DefaultValue;
  except
    Result:=DefaultValue;
  end;
end;

function VarAsTypeSafe(V:Variant; VType:integer):variant;
var L:boolean;
begin
  try
    Result:=VarAsType(V,VType);
    L:=VarType(Result)=VType;
  except
    L:=false;
  end;
  if not L then case VType of
    varNull     : Result:=Null;
    varSmallint,varInteger,varSingle,
    varDouble,varCurrency,
    varDate     : Result:=VarAsType(0,VType);
    varOleStr   : Result:='';
    varBoolean  : Result:=false;
    varByte     : Result:=VarAsType(0,VType);
    varString   : Result:='';
    else Result:=Unassigned;
  end;
end;

procedure ChangeReference(Obj:TObject; PropName:ShortString; Dest,Src:TComponent);
var Field:^TComponent;
begin
  Field:=Obj.FieldAddress(PropName);
  if (Field<>nil) and (Field^=Dest) then Field^:=Src;
end;

function QuickSearch(Item:pointer; List:PPointerList; L,R:Integer; var N:integer; SCompare:TListSortCompare):boolean;
var Comp:integer;
begin
  if R<L then begin
    N:=0; Result:=false; Exit;
  end;
  Comp:=SCompare(Item,List^[L]);
  if Comp=0 then begin
    N:=L; Result:=true; Exit;
  end else if Comp<0 then begin
    N:=0; Result:=false; Exit;
  end;
  if R>L then Comp:=SCompare(Item,List^[R]) else Comp:=1;
  if Comp=0 then begin
    N:=R; Result:=true; Exit;
  end else if Comp>0 then begin
    N:=R+1; Result:=false; Exit;
  end;
  Result:=false;
  if R-L>1 then repeat
    N:=L+((R-L)div 2);
    Comp:=SCompare(Item,List^[N]);
    if Comp=0 then begin
      Result:=true; Exit;
    end else begin
      if Comp>0 then L:=N else R:=N;
    end;
  until R-L<2;
  N:=R;
end;

type
  Arr=array[0..10] of byte;

procedure StrToBinary(Str:String; Value:pointer; Size:integer);
var
  i,j:integer;
  Mask:byte;
begin
  j:=0; Mask:=128;
  for i:=1 to Length(Str) do begin
    if Size<j then break;
    if (Str[i]='0') then begin
      Arr(Value^)[j]:=Arr(Value^)[j] and not Mask;
    end else if (Str[i]='1') then begin
      Arr(Value^)[j]:=Arr(Value^)[j] or Mask;
    end else continue;
    if Mask=1 then begin
      inc(j);
      Mask:=128
    end else Mask:=Mask shr 1;
  end;
end;

function BinaryToStr(Value:pointer; Size:integer; Kind:integer=0):string;
const
  cnt:array[0..2]of integer=(8,2,3);
var
  i,j,k:integer;
  Mask:byte;
begin
  if kind<0 then Kind:=0 else if Kind>2 then Kind:=2;
  setLength(result,Size*(cnt[Kind]+1)); k:=1;
  for i:=0 to Size-1 do begin
    case Kind of
      0:begin
        Mask:=128;
        for j:=0 to 7 do begin
          if (Arr(Value^)[i] and Mask)=0 then result[k]:='0' else result[k]:='1';
          inc(k);
          Mask:=Mask shr 1;
        end;
        result[k]:=' '; inc(k);
      end;
      1: move(pchar(IntToHex(Arr(Value^)[i],2)+' ')^,pchar(result)[3*i],3);
      2: move(pchar(FormatFloat('000',Arr(Value^)[i])+' ')^,pchar(result)[4*i],4);
    end;
  end;
end;

function ReplaceMem(var Src:pchar; const Old,New; SrcSize,OldSize,NewSize:integer):integer;
var i:integer;
begin
  i:=0;
  while i<SrcSize do begin
    if CompareMem(@(Src[i]),@Old,OldSize) then begin
      if NewSize>OldSize then ReallocMem(Src,SrcSize+NewSize-OldSize);
      if NewSize<>OldSize then Move(Src[i+OldSize],Src[i+NewSize],SrcSize-i-OldSize);
      if NewSize<OldSize then ReallocMem(Src,SrcSize+NewSize-OldSize);
      SrcSize:=SrcSize+NewSize-OldSize;
      Move(New,Src[i],NewSize);
      inc(i,NewSize);
    end else
      inc(i);
  end;
  result:=SrcSize;
end;

function MemToStr(var Src:pchar; SrcSize:integer):integer;
begin
  Result:=SrcSize;
  Result:=ReplaceMem(Src,''+'\','\s',Result,1,2);
  Result:=ReplaceMem(Src,''+#0,'\0',Result,1,2);
  Result:=ReplaceMem(Src,''+#13,'\r',Result,1,2);
  Result:=ReplaceMem(Src,''+#10,'\n',Result,1,2);
end;

function MemToStr(const Src:string):string;
var
  str:pchar;
  size:integer;
begin
  size:=length(Src);
  str:=AllocMem(size);
  move(pchar(Src)^,str^,size);
  size:=MemToStr(str,size);
  setString(Result,str,size);
end;

function StrToMem(var Src:pchar; SrcSize:integer):integer;
begin
  Result:=SrcSize;
  Result:=ReplaceMem(Src,'\0',''+#0,Result,2,1);
  Result:=ReplaceMem(Src,'\r',''+#13,Result,2,1);
  Result:=ReplaceMem(Src,'\n',''+#10,Result,2,1);
  Result:=ReplaceMem(Src,'\s',''+'\',Result,2,1);
end;

function StrToMem(const Src:string):string;
var
  str:pchar;
  size:integer;
begin
  size:=length(Src);
  str:=AllocMem(size);
  move(pchar(Src)^,str^,size);
  size:=StrToMem(str,size);
  setString(Result,str,size);
end;

function ReadStringFromStream(S:TStream; Devider:string='#13+#10'; BufSize:integer=1024):string;
var
  buf: string;
  p,size: integer;
begin
  SetLength(buf,BufSize);
  result:='';
  repeat
    size:=S.Size-S.Position;
    if size>BufSize then size:=BufSize;
    S.ReadBuffer(pchar(buf)^,size);
    if size<BufSize then pchar(buf)[size]:=#0;
    p:=Pos(Devider,buf);
    if p>0 then begin
      result:=result+copy(buf,1,p-1);
      S.Position:=S.Position-(size-p);
      break;
    end;
  until size<BufSize;
end;

//--------------------color routens------------------------
function getHighlightColor(color:integer; ofs:byte=$A0):integer;
begin
    result:=(color and $0000FF-ofs)and $0000FF
    +(color and $00FF00-ofs shl 8)and $00FF00
    +(color and $FF0000-ofs shl 16)and $FF0000;
end;


procedure Init;
var i:integer;
begin
  for i:=1 to 12 do LongMonthNames[i]:=LongMonthNamesRus[i];
end;

initialization
  Init;
end.
