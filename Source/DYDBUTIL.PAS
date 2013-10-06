unit dydbutil;
interface
uses Windows,SysUtils,Classes,DB;

function SQLOrderByUpdate(var S:string; FieldNo:integer):boolean;
function SQLOrderByState(const S:string; FieldNo:integer):integer;
function SQLOrderByGet(const SQL:string):string;
function SQLOrderBySet(const SQL:string; OrderBy:string):string;
function SQLWhereGet(const SQL:string):string;
function SQLWhereSet(const SQL:string; Where:string):string;

function getSearchFieldsMapped(Dataset:TDataset):string;
//function getSearchFields(Dataset:TDataset):string;
//function getFieldByLabel(Dataset:TDataset; DisplayLabel:string):TField;

implementation

function SQLOrderByUpdate(var S:string; FieldNo:integer):boolean;
var
  N,LS,LSNo:integer;
  SNo:string;
begin
  Result:=false;
  if FieldNo=0 then Exit;
  SNo:=IntToStr(FieldNo);
  N:=Pos(' '+SNo+' ',S+' ');
  if GetKeyState(VK_CONTROL) and $80 = 0 then begin
    if N>0 then begin
      LS:=Length(S); LSNo:=Length(SNo);
      if (LS<N+LSNo+2) or (S[N+LSNo+2]=',')
        then S:=Copy(S,1,N+LSNo)+' desc '+Copy(S,N+LSNo+2,LS)
        else S:=Copy(S,1,N+LSNo+1)+Copy(S,N+LSNo+7,LS);
      LS:=Length(S);
      if S[LS]=' ' then S:=Copy(S,1,LS-1);
    end else begin
      S:='order by '+SNo;
    end;
  end else begin
    if N>0 then begin
      LS:=Length(S); LSNo:=Length(SNo);
      if (LS<N+LSNo+2) or (S[N+LSNo+2]=',')
        then S:=Copy(S,1,N-1)+Copy(S,N+LSNo+3,LS)
        else S:=Copy(S,1,N-1)+Copy(S,N+LSNo+8,LS);
      LS:=Length(S);
      if S[LS]=',' then S:=Copy(S,1,LS-2) else
      if S='order by' then S:='';
    end else begin
      if S='' then S:='order by '+SNo else S:=S+' , '+SNo;
    end;
  end;
  Result:=true;
end;

function SQLOrderByState(const S:string; FieldNo:integer):integer;
var
  N,LS,LSNo:integer;
  SNo:string;
begin
  Result:=0;
  if (FieldNo=0) or (S='') then Exit;
  SNo:=IntToStr(FieldNo);
  N:=Pos(' '+SNo+' ',S+' ');
  if N>0 then begin
    LS:=Length(S); LSNo:=Length(SNo);
    if (LS<N+LSNo+2) or (S[N+LSNo+2]=',')
      then Result:=1
      else Result:=-1;
  end;
end;

function SQLOrderByGet(const SQL:string):string;
var P:integer;
begin
  Result:=AnsiLowerCase(SQL);
  P:=Pos('order by',Result);
  if P<=0 then Result:='' else Result:=Trim(Copy(Result,P,length(SQL)));
end;

function SQLOrderBySet(const SQL:string; OrderBy:string):string;
var P:integer;
begin
  Result:=AnsiLowerCase(SQL);
  P:=Pos('order by',Result);
  if P>0 then Result:=Copy(SQL,1,P-2) else Result:=SQL;
  if OrderBy<>'' then Result:=Result+' '+OrderBy;
end;

function SQLWhereGet(const SQL:string):string;
var P,L:integer;
begin
  Result:=AnsiLowerCase(SQL);
  P:=Pos('where',Result);
  if P<=0 then Result:='' else begin
    L:=Pos('group by',Result);
    if L<=0 then L:=Pos('order by',Result);
    if L<=0 then L:=length(SQL) else L:=L-P-1;
    Result:=Trim(Copy(SQL,P,L));
  end;
end;

function SQLWhereSet(const SQL:string; Where:string):string;
var P1,P2:integer;
begin
  Result:=AnsiLowerCase(SQL);
  P1:=Pos('where',Result);
  P2:=Pos('group by',Result);
  if P2<=0 then P2:=Pos('order by',Result);
  if P2<=0 then P2:=length(SQL)+2;
  if (P1<=0) then P1:=P2;
  Result:=Copy(SQL,1,P1-2)+' '+Where+' '+Copy(SQL,P2,length(SQL));
end;

function getSearchFields(Dataset:TDataset):string;
var
    str: string;
    i{, j, len}: integer;
begin
    with Dataset do begin
        Result := '';
        for i := 0 to FieldCount - 1 do
            if Fields[i].Origin <> '' {.Visible} then begin
                str := Fields[i].DisplayLabel;
                {
                len := Length(str);
                for j := 1 to len do
                    if str[j] = '~' then str[j] := ' ';
                }
                Result := Result + str + #13#10;
            end;
    end;
end;

function getSearchFieldsMapped(Dataset:TDataset):string;
var
    str: string;
    len, i, j: integer;
begin
    with Dataset do begin
        Result := '';
        for i := 0 to FieldCount - 1 do
            if Fields[i].Origin <> '' {.Visible} then begin
                str := Fields[i].DisplayLabel;
                len := Length(str);
                for j := 1 to len do
                    if str[j] = '~' then str[j] := ' ';
                Result := Result + str + #9 + Fields[i].FieldName + #13#10;
            end;
    end;
end;

function getFieldByLabel(Dataset:TDataset; DisplayLabel:string):TField;
var i:integer;
begin
  with Dataset do begin
    for i := 0 to FieldCount-1 do begin
      Result := Fields[i];
      if Result.DisplayLabel = DisplayLabel then Exit;
    end;
    Result := nil;
  end;
end;


end.
