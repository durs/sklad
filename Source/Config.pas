unit config;

{$DEFINE IP}

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DB, Wwdbgrid;

type

  TConfig = class
  private
    FileName:string;
    Section:string;
    FItems,FDefaults:TStrings;
    procedure Update;
  public
    constructor Create(FileName:string; const DefaultValues:string);
    destructor Destroy; override;
    procedure Load(FileName:string='');
    procedure Save(FileName:string='');
    procedure setString(id:string; value:string);
    procedure setInteger(id:string; value:integer);
    procedure setBoolean(id:string; value:boolean);
    procedure setMem(id:string; value:string);
    function getString(id:string):string; overload;
    function getInteger(id:string; def:integer=0):integer; overload;
    function getBoolean(id:string; def:boolean=false):boolean; overload;
    function getMem(id:string):string; overload;
    procedure readBounds(id:string; Control:TControl);
    procedure writeBounds(id:string; Control:TControl);
    procedure writeFields(id:string; Dataset:TDataset);
    procedure readFields(id:string; Dataset:TDataset);
    procedure writeColumns(id:string; Grid:TwwDBGrid);
    procedure readColumns(id:string; Grid:TwwDBGrid);
    property Items:TStrings read FItems;
    property Defaults:TStrings read FDefaults;
  end;

var
  CurrentConfig: TConfig;

implementation
uses DyUtils;

constructor TConfig.Create(FileName:string; const DefaultValues:string);
begin
  self.FileName:=FileName;
  Section:='config';
  FDefaults:=TStringList.Create;
  FDefaults.Text:=DefaultValues;
  Fitems:=TStringList.Create;
  load;
end;

destructor TConfig.Destroy;
begin
  save;
  Fitems.Free;
  FDefaults.Free;
  inherited;
end;

procedure TConfig.Update;
var
  i:integer;
  key:string;
begin
  for i:=0 to FDefaults.count-1 do begin
    key:=FDefaults.Names[i];
    if FItems.Values[key]='' then FItems.Values[key]:=FDefaults.Values[key];
  end;
end;

procedure TConfig.Load(FileName:string='');
begin
  if FileName='' then FileName:=self.FileName;
  if FileExists(FileName) then Fitems.LoadFromFile(FileName) else Fitems.Clear;
  Update;
end;

procedure TConfig.Save(FileName:string='');
var
  i:integer;
  key:string;
begin
  for i:=0 to FDefaults.count-1 do begin
    key:=FDefaults.Names[i];
    if FItems.Values[key]=FDefaults.Values[key] then FItems.Values[key]:='';
  end;
  if FileName='' then FileName:=self.FileName;
  Fitems.SaveToFile(FileName);
end;

procedure TConfig.setString(id:string; value:string);
begin
  Fitems.values[id]:=value;
end;

function TConfig.getString(id:string):string;
begin
  result:=Fitems.values[id];
  if result='' then result:=fdefaults.values[id];
end;

procedure TConfig.setMem(id:string; value:string);
begin
  Fitems.values[id]:=MemToStr(value);
end;

function TConfig.getMem(id:string):string;
begin
  result:=Fitems.values[id];
  if result='' then result:=fdefaults.values[id];
  result:=StrToMem(result);
end;

procedure TConfig.setInteger(id:string; value:integer);
begin
  setString(id,intToStr(value));
end;

function TConfig.getInteger(id:string; def:integer=0):integer;
var value:string;
begin
  try
    value:=getString(id);
    if value='' then result:=def else result:=StrToInt(value);
  except result:=def end;
end;

procedure TConfig.setBoolean(id:string; value:boolean);
begin
  if value then setString(id,'1') else setString(id,'0');
end;

function TConfig.getBoolean(id:string; def:boolean=false):boolean;
var value:string;
begin
  try
    value:=getString(id);
    if value='' then result:=def else result:=StrToInt(value)<>0;
  except result:=def end;
end;

procedure TConfig.readBounds(id:string; Control:TControl);
begin
  Control.Left:=getInteger(id+'.left',Control.Left);
  Control.Top:=getInteger(id+'.top',Control.Top);
  Control.Width:=getInteger(id+'.width',Control.Width);
  Control.Height:=getInteger(id+'.height',Control.Height);

  if Control.Width > Screen.Width then Control.Width := Screen.Width;
  if Control.Height > Screen.Height then Control.Height := Screen.Height;

  if Control.Left < 0 then Control.Left := 0
  else if Control.Left > Control.Width then Control.Left := Control.Width - 5;

  if Control.Top < 0 then Control.Top := 0
  else if Control.Top > Control.Height then Control.Top := Control.Height - 5;

  if (Control is TForm) then begin
    if getInteger(id+'.showcmd',SW_SHOW)=SW_SHOWMAXIMIZED then TForm(Control).WindowState:=wsMaximized;
  end;
end;

procedure TConfig.writeBounds(id:string; Control:TControl);
var Placement:TWindowPlacement;
begin
  Placement.Length:=SizeOf(Placement);
  if (Control is TForm) and GetWindowPlacement(TForm(Control).Handle,@Placement) then with Placement do begin
    setInteger(id+'.showcmd',ShowCmd);
    setInteger(id+'.left',rcNormalPosition.Left);
    setInteger(id+'.top',rcNormalPosition.Top);
    setInteger(id+'.width',rcNormalPosition.Right-rcNormalPosition.Left);
    setInteger(id+'.height',rcNormalPosition.Bottom-rcNormalPosition.Top);
  end else begin
    setInteger(id+'.left',Control.Left);
    setInteger(id+'.top',Control.Top);
    setInteger(id+'.width',Control.Width);
    setInteger(id+'.height',Control.Height);
  end;
end;

procedure TConfig.writeFields(id:string; Dataset:TDataset);
var
  i:integer;
  S:string;
begin
  with Dataset do for i:=0 to FieldCount-1 do if Fields[i].Visible then begin
    S:=id+'.'+Fields[i].FieldName;
    setInteger(S+'.DisplayWidth',Fields[i].DisplayWidth);
    setInteger(S+'.Index',Fields[i].Index);
  end;
end;

procedure TConfig.readFields(id:string; Dataset:TDataset);
var
  i,N:integer;
  S:string;
  Pos:array of TField;
begin
  SetLength(Pos,Dataset.FieldCount);
  with Dataset do begin
    for i:=0 to FieldCount-1 do
    try
      S:=id+'.'+Fields[i].FieldName;
      Fields[i].DisplayWidth:=getInteger(S+'.DisplayWidth',Fields[i].DisplayWidth);
      Fields[i].Visible:=getBoolean(S+'.Visible',Fields[i].Visible);
      N:=getInteger(S+'.Index',-1);
      if N>=0 then Pos[N]:=Fields[i];
    except
    end;
    for i:=0 to FieldCount-1 do
      if Pos[i]<>nil then Pos[i].Index:=i;
  end;
end;

// не работает
procedure TConfig.writeColumns(id:string; Grid:TwwDBGrid);
var
    i: integer;
    S: string;
begin
    with Grid do
    for i := 0 to Grid.GetColCount - 1 do begin
        S := id + '.' + Columns[i].FieldName;
        setInteger(S + '.DisplayWidth', Columns[i].DisplayWidth);
        //setInteger(S + '.Index', Columns[i].Index);
    end;
end;

// не работает
procedure TConfig.readColumns(id:string; Grid:TwwDBGrid);
var
    i: integer;
    S: string;
begin
    with Grid do
    for i := 0 to GetColCount - 1 do begin
        S := id + '.' + Columns[i].FieldName;
        Columns[i].DisplayWidth := getInteger(S + '.DisplayWidth', Fields[i].DisplayWidth);
    end;
end;


end.
