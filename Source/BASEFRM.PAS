unit basefrm;
interface
uses Windows,SysUtils,Messages,Classes,Controls,Forms;

const
  APP_MESSAGE = WM_USER+1;

  msgWaitView = '∆дите! »дет загрузка данных ...';

  //application event types
  appCancel=0;
  appLoading=1;
  appRefresh=2;
  appStatus=3;
  appClear=4;
  appChange=5;
  appConfig=6;
  appUser=7;

type
  TAppAlert = record
    id:integer;
    time:TDateTime;
    msg:string;
  end;

  TBaseFormClass = class of TBaseForm;

  TBaseForm = class(TForm)
  private
    procedure AppMessage(var Message:TMessage); message APP_MESSAGE;
    procedure WMTimer(var Message:TWMTimer); message WM_TIMER;
  protected
    State:set of (fsLock,fsCreate,fsInactive,fsRefresh);
    DestroyTimerID:integer;
    Key:string;
    procedure CreateParams(var Params: TCreateParams); override;
    function MessageBox(Text, Caption:PChar; Flags:Longint):Integer;
    procedure DestroyTimeout(timeout:integer=0);
    procedure DestroyCancel; virtual;
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); virtual;
  public
    class function getKey:string;
    class function load(ClassType:TBaseFormClass):TBaseForm;
    class procedure appEventPost(Sender:TObject; Event:word; Data:pointer=nil);
    class function appEventSend(Sender:TObject; Event:word; Data:pointer=nil):boolean;
    class procedure msgStatus(const Value:string; id:integer=0);
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
  end;

var
  DisplayPanel:TWinControl;
  DestroyTime:integer=0;
  CurrentForm:TForm;

implementation
uses Config;

class function TBaseForm.getKey:string;
begin
  result:='forms.'+ClassName;
end;

class procedure TBaseForm.AppEventPost(Sender:TObject; Event:word; Data:pointer=nil);
var
  i:integer;
begin
  with Application do for i:=ComponentCount-1 downto 0 do
    if (Components[i] is TBaseForm) and (Components[i]<>Sender) then begin
      PostMessage(TBaseForm(Components[i]).Handle,APP_MESSAGE,integer(Event),integer(Data));
    end;
end;

class function TBaseForm.AppEventSend(Sender:TObject; Event:word; Data:pointer=nil):boolean;
var i:integer;
begin
  Result:=true;
  with Application do for i:=ComponentCount-1 downto 0  do
    if (Components[i] is TBaseForm) and (Components[i]<>Sender) then try
      TBaseForm(Components[i]).AppEvent(Sender,Event,Data);
      if Event=appCancel then begin
        Result:=false;
        break;
      end;
    except
      on E:Exception do begin
        Application.ShowException(E);
        Result:=false;
        Break;
      end;
    end;
end;

class procedure TBaseForm.msgStatus(const value:string; id:integer=0);
var alert:TAppAlert;
begin
  alert.id:=id;
  alert.time:=now;
  alert.msg:=value;
  AppEventSend(nil,appStatus,@alert);
end;

class function TBaseForm.Load(ClassType:TBaseFormClass):TBaseForm;
var
  notInPlace:boolean;
  F:TForm;
  i:integer;
begin
  Result:=nil;
  notInPlace:=(GetKeyState(VK_SHIFT) and $80<>0);
  if not notInPlace and (CurrentForm<>nil) and (CurrentForm.ClassType=ClassType) then begin
    result:=TBaseForm(CurrentForm);
    Exit;
  end;
  if not notInPlace and (CurrentForm<>nil) and not CurrentForm.CloseQuery then Exit;
  Application.ProcessMessages;
  if ClassType<>nil then try
    Screen.Cursor:=crHourGlass;
    MsgStatus(MsgWaitView);
    F:=nil;
    for i:=0 to Application.ComponentCount-1 do if Application.Components[i] is ClassType then begin
      if notInPlace then begin
        if (fsInactive in TBaseForm(Application.Components[i]).State) then begin
          F:=TBaseForm(Application.Components[i]);
          break;
        end;
      end else begin
        F:=TBaseForm(Application.Components[i]);
        if not (fsInactive in TBaseForm(F).State) then break;
      end;
    end;
    try
      if F=nil then begin
        Result:=ClassType.Create(Application);
      end else begin
        Result:=TBaseForm(F);
        if notInPlace then with Result do begin
          Result.DestroyCancel;
          Parent:=nil;
          BorderStyle:=bsSizeable;
          Align:=alNone;
          Position:=poDesigned;
          CurrentConfig.readBounds(Key,Result);
        end else begin
          notInPlace:=(Result.Parent=nil) and not (fsInactive in Result.State);
          Result.DestroyCancel;
        end;
      end;
      if notInPlace then begin
        if Result.WindowState=wsMinimized then Result.WindowState:=wsNormal;
      end else with Result do begin
        Parent:=DisplayPanel;
        BorderStyle:=bsNone;
        Position:=poDefault;
        BoundsRect:=Rect(0,0,DisplayPanel.ClientWidth,DisplayPanel.ClientHeight);
        Align:=alClient;
      end;
      Result.Show;
      Result.SetFocus;
    except
      Result.Free;
      raise;
    end;
  finally
    Screen.Cursor:=crDefault;
    MsgStatus('');
  end;
  if not notInPlace then begin
    F:=CurrentForm;
    CurrentForm:=Result;
    if F<>nil then try
      F.Close;
    except
      on E:Exception do Application.ShowException(E)
    end;
  end;
  AppEventSend(Result,appRefresh,nil);
end;

constructor TBaseForm.Create(AOwner:TComponent);
begin
  Key:=getKey;
  DestroyTimerID:=$FFFF;
  include(State,fsCreate);
  inherited;
  Name:='';
  exclude(State,fsCreate);
  CurrentConfig.readBounds(Key,self);
end;

destructor TBaseForm.Destroy;
begin
  if CurrentForm=self then CurrentForm:=nil;
  if Parent=nil then CurrentConfig.writeBounds(Key,self);
  inherited;
end;

procedure TBaseForm.CreateParams(var Params: TCreateParams);
begin
  inherited;
  with Params do begin
    //if Parent=nil then Params.WndParent:=0;
    if (self<>Application.MainForm) and (Application.MainForm<>nil) then ExStyle:=ExStyle or WS_EX_APPWINDOW;
  end;
end;

procedure TBaseForm.AppMessage(var Message:TMessage);
begin
  AppEvent(nil,Message.WParamLo,pointer(Message.LParam));
end;

procedure TBaseForm.AppEvent(Sender:TObject; var Event:word; Data:pointer);
begin
  case Event of
    appClear: if CloseQuery then Destroy else Event:=appCancel;
  end;
end;

function TBaseForm.MessageBox(Text, Caption:PChar; Flags:Longint):Integer;
begin
  if Visible and not Focused then SetFocus;
  Result:=Application.MessageBox(Text,Caption,Flags+MB_TOPMOST);
end;

procedure TBaseForm.DestroyTimeout(timeout:integer=0);
begin
  if timeout=0 then timeout:=basefrm.DestroyTime;
  SetTimer(Handle,DestroyTimerID,timeout*1000,nil);
  Hide;
  Include(State,fsInactive);
end;

procedure TBaseForm.DestroyCancel;
begin
  KillTimer(Handle,DestroyTimerID);
  Exclude(State,fsInactive);
end;

procedure TBaseForm.WMTimer(var Message:TWMTimer);
begin
  inherited;
  if Message.TimerID<>DestroyTimerID then exit;
  KillTimer(Handle,DestroyTimerID);
  Destroy;
end;

initialization
end.
