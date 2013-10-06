unit DyImage;

{$R-}

interface

uses Windows, TypInfo, SysUtils, Messages, Classes, Controls, Forms, ExtDlgs,
     Graphics, Menus, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls, Clipbrd,
     DyUtils;

type
  TDyPictureStyle = (psZoomed,psAutoSize,psAutoFit,psTile);

  TDyWallpaper = class(TGraphicControl)
  private
    FLock,FDrawing:boolean;
    FPicture:TPicture;
    FPictureTransparent:boolean;
    procedure SetPicture(Value:TPicture);
    procedure PictureChanged(Sender:TObject);
    procedure SetPictureTransparent(Value:boolean);
    function DoPaletteChange: Boolean;
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Picture:TPicture read FPicture write SetPicture;
    property PictureTransparent:boolean read FPictureTransparent write SetPictureTransparent default false;
  end;

  TDyImage = class(TScrollingWinControl)
  private
    FCanvas:TCanvas;
    FPicture:TPicture;
    FPictureStyle:TDyPictureStyle;
    FPictureZoom:Double;
    FPictureTransparent:boolean;
    FIncrementalDisplay: Boolean;
    FOnProgress: TProgressEvent;
    FReadOnly:boolean;
    FOnChange:TNotifyEvent;
    FLock,FDrawing:boolean;
    procedure SetPicture(Value:TPicture);
    procedure SetPictureStyle(Value:TDyPictureStyle);
    procedure SetPictureZoom(Value:Double);
    procedure SetPictureTransparent(Value:boolean);
    procedure PictureChanged(Sender:TObject);
    procedure DoChange;
    {function DoStoreImage:boolean;}
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure WMEraseBkgnd(var Message:TWMEraseBkgnd); message WM_ERASEBKGND;
    procedure WMNCHitTest(var Message: TMessage); message WM_NCHITTEST;
    procedure WMSize(var Message: TMessage); message WM_SIZE;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMCopy(var Message: TMessage); message WM_COPY;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure PopupClick(Sender:TObject);
  protected
    procedure Notification(AComponent:TComponent; Operation:TOperation); override;
    procedure PaintWindow(DC: HDC); override;
    function DoPaletteChange: Boolean;
    function GetPalette: HPALETTE; override;
    procedure Progress(Sender: TObject; Stage: TProgressStage;
      PercentDone: Byte; RedrawNow: Boolean; const R: TRect; const Msg: string); dynamic;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    function GetPopupMenu: TPopupMenu; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CreateParams(var Params: TCreateParams); override;
    destructor Destroy; override;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    procedure CopyToClipboard;
    procedure CutToClipboard;
    procedure PasteFromClipboard;
    procedure LoadFromFile(FileName:string);
    procedure SaveToFile(FileName:string);
    procedure Clear;
    function PictureIsEmpty:boolean;
    property Canvas:TCanvas read FCanvas;
  published
    property ReadOnly:boolean read FReadOnly write FReadOnly;
    property IncrementalDisplay: Boolean read FIncrementalDisplay write FIncrementalDisplay default false;
    property Picture:TPicture read FPicture write SetPicture {stored DoStoreImage};
    property PictureStyle:TDyPictureStyle read FPictureStyle write SetPictureStyle;
    property PictureZoom:Double read FPictureZoom write SetPictureZoom;
    property PictureTransparent:boolean read FPictureTransparent write SetPictureTransparent default false;
    property OnChange:TNotifyEvent read FOnChange write FOnChange;
    property AutoScroll;
    property Align;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Color;
    property Ctl3D;
    property Font;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
  end;

implementation

var
  ImagePopup:TPopupMenu;

type
  TDrawGraphicOptions=set of (dgoAutoFit,dgoProportion,dgoTile,dgoTransparent,dgoFillBkgrnd,dgoGradientFill,dgoBufferedDisplay);


procedure DrawGraphic(Canvas:TCanvas; G:TGraphic; R:TRect; Ofs:TPoint; var Zoom:double; C1,C2:TColor; Options:TDrawGraphicOptions);
var
  Rct:TRect;
  P:TPoint;
  X,Y,W,H,X0:integer;
  DC:THandle;
begin
  Rct:=R;
  if (G<>nil) and not G.Empty then
    if dgoTile in Options then
      Zoom:=1
    else if dgoAutoFit in Options then
      Zoom:=AutoFitRect(Rct,Rect(0,0,G.Width,G.Height),R)
    else begin
      if Zoom=0 then begin
        Zoom:=(Rct.Right-Rct.Left)/G.Width;
        if dgoProportion in Options then
          Rct.Bottom:=Rct.Top+G.Height*trunc(Zoom);
      end else begin
        Rct.Right:=Rct.Left+trunc(G.Width*Zoom);
        Rct.Bottom:=Rct.Top+trunc(G.Height*Zoom);
      end;
      OffsetRect(Rct,Ofs.X,Ofs.Y);
    end
  else Zoom:=0;

  if (dgoFillBkgrnd in Options) then begin
    DC:=SaveDC(Canvas.Handle);
    if not (dgoTransparent in Options) and (G<>nil) and not G.Empty then
      ExcludeClipRect(Canvas.Handle,Rct.Left,Rct.Top,Rct.Right,Rct.Bottom);
    with Canvas.Brush do begin
      Color:=C1;
      Style:=bsSolid;
    end;
    Canvas.FillRect(R);
    RestoreDC(Canvas.Handle,DC);
  end;

  if (G=nil) or G.Empty then Exit;
  if dgoTile in Options then begin
    W:=G.Width;
    H:=G.Height;
    P.X:=(R.Left-Ofs.X) mod W;
    P.Y:=(R.Top-Ofs.Y) mod H;
    X0:=R.Left-P.X;
    Y:=R.Top-P.Y;
    while Y<R.Bottom do begin
      X:=X0;
      while X<R.Right do begin
        Canvas.Draw(X,Y,G);
        X:=X+W;
      end;
      Y:=Y+H;
    end;
  end else begin
    Canvas.StretchDraw(Rct,G);
  end;
end;
{==================TDyWallpaper===============}
constructor TDyWallpaper.Create(AOwner:TComponent);
begin
  inherited;
  FPicture:=TPicture.Create;
  FPicture.OnChange:=PictureChanged;
end;

destructor TDyWallpaper.Destroy;
begin
  FPicture.Free;
  inherited;
end;

procedure TDyWallpaper.SetPicture(Value:TPicture);
begin
  FPicture.Assign(Value);
end;

procedure TDyWallpaper.SetPictureTransparent(Value:boolean);
begin
  if FPictureTransparent=Value then Exit;
  FPictureTransparent:=Value;
  PictureChanged(self);
end;

function TDyWallpaper.DoPaletteChange: Boolean;
var
  ParentForm: TCustomForm;
  Tmp: TGraphic;
begin
  Result := False;
  Tmp := Picture.Graphic;
  if Visible and (not (csLoading in ComponentState)) and (Tmp <> nil) and
    (Tmp.PaletteModified) then
  begin
    if (Tmp.Palette = 0) then
      Tmp.PaletteModified := False
    else
    begin
      ParentForm := GetParentForm(Self);
      if Assigned(ParentForm) and ParentForm.Active and Parentform.HandleAllocated then
      begin
        if FDrawing then
          ParentForm.Perform(wm_QueryNewPalette, 0, 0)
        else
          PostMessage(ParentForm.Handle, wm_QueryNewPalette, 0, 0);
        Result := True;
        Tmp.PaletteModified := False;
      end;
    end;
  end;
end;

procedure TDyWallpaper.PictureChanged(Sender:TObject);
begin
  if FLock then Exit;
  try
    FLock:=true;
    with FPicture do if (Graphic<>nil) and not Graphic.Empty then begin;
      if Sender=Picture
        then FPictureTransparent:=Graphic.Transparent
        else Graphic.Transparent:=FPictureTransparent;
      if DoPaletteChange and FDrawing then Update;
    end;
    if not FDrawing then Invalidate;
  finally
    FLock:=false;
  end;
end;

procedure TDyWallpaper.Paint;
var
  Optn:TDrawGraphicOptions;
  B:boolean;
  Zoom:Double;
begin
  Canvas.Lock;
  B:=FDrawing;
  FDrawing:=true;
  try
    Optn:=[dgoTile,dgoFillBkgrnd];
    if FPictureTransparent then Include(Optn,dgoTransparent);
    DrawGraphic(Canvas,Picture.Graphic,ClientRect,Point(0,0),Zoom,Color,Color,Optn);
  finally
    FDrawing:=B;
    Canvas.Unlock;
  end;
end;
{=================TDyImage===================}
constructor TDyImage.Create(AOwner: TComponent);
begin
  FLock:=false;
  FDrawing:=false;
  FReadOnly:=true;
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csAcceptsControls,csReplicatable,csOpaque];
  FCanvas:=TControlCanvas.Create;
  TControlCanvas(FCanvas).Control:=Self;
  FPicture:=TPicture.Create;
  FPicture.OnChange:=PictureChanged;
  FPicture.OnProgress:=Progress;
  VertScrollBar.Tracking:=true;
  HorzScrollBar.Tracking:=true;
end;

procedure TDyImage.CreateParams(var Params: TCreateParams);
begin
  inherited;
  {with Params.WindowClass do
    Style:=Style and not (CS_HREDRAW or CS_VREDRAW);}
end;

destructor TDyImage.Destroy;
begin
  FPicture.Free;
  FCanvas.Free;
  inherited;
end;

procedure TDyImage.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
end;

procedure TDyImage.DoChange;
begin
  if Assigned(FOnChange) then FOnChange(self);
end;

procedure TDyImage.WMNCHitTest(var Message: TMessage);
begin
  DefaultHandler(Message);
end;

procedure TDyImage.WMEraseBkgnd(var Message:TWMEraseBkgnd);
begin
  Message.Result:=1;
end;

procedure TDyImage.WMPaint(var Message: TWMPaint);
begin
  PaintHandler(Message);
end;

procedure TDyImage.PaintWindow(DC: HDC);
var
  Optn:TDrawGraphicOptions;
  B:boolean;
begin
  Canvas.Lock;
  B:=FDrawing;
  FDrawing:=true;
  try
    FCanvas.Handle := DC;
    case FPictureStyle of
      psZoomed : Optn:=[dgoFillBkgrnd];
      psAutoSize : Optn:=[dgoFillBkgrnd,dgoProportion];
      psAutoFit : Optn:=[dgoAutoFit,dgoFillBkgrnd];
      psTile : Optn:=[dgoTile,dgoFillBkgrnd];
    end;
    if FPictureTransparent then Include(Optn,dgoTransparent);
    DrawGraphic(FCanvas,Picture.Graphic,ClientRect,Point(-HorzScrollBar.Position,-VertScrollBar.Position),FPictureZoom,Color,Color,Optn);
  finally
    FDrawing:=B;
    FCanvas.Handle := 0;
    Canvas.Unlock;
  end;
end;

function TDyImage.GetPalette: HPALETTE;
begin
  Result := 0;
  if FPicture.Graphic <> nil then
    Result:=FPicture.Graphic.Palette;
end;

function TDyImage.DoPaletteChange: Boolean;
var
  ParentForm: TCustomForm;
  Tmp: TGraphic;
begin
  Result := False;
  Tmp := Picture.Graphic;
  if Visible and (not (csLoading in ComponentState)) and (Tmp <> nil) and
    (Tmp.PaletteModified) then
  begin
    if (Tmp.Palette = 0) then
      Tmp.PaletteModified := False
    else
    begin
      ParentForm := GetParentForm(Self);
      if Assigned(ParentForm) and ParentForm.Active and Parentform.HandleAllocated then
      begin
        if FDrawing then
          ParentForm.Perform(wm_QueryNewPalette, 0, 0)
        else
          PostMessage(ParentForm.Handle, wm_QueryNewPalette, 0, 0);
        Result := True;
        Tmp.PaletteModified := False;
      end;
    end;
  end;
end;

procedure TDyImage.Progress(Sender: TObject; Stage: TProgressStage;
  PercentDone: Byte; RedrawNow: Boolean; const R: TRect; const Msg: string);
begin
  if FIncrementalDisplay and RedrawNow then
  begin
    if DoPaletteChange then Update
    else Invalidate;
  end;
  if Assigned(FOnProgress) then FOnProgress(Sender, Stage, PercentDone, RedrawNow, R, Msg);
end;

procedure TDyImage.SetPicture(Value:TPicture);
begin
  FPicture.Assign(Value);
end;

procedure TDyImage.SetPictureStyle(Value:TDyPictureStyle);
begin
  if FPictureStyle=Value then Exit;
  FPictureStyle:=Value;
  PictureChanged(self);
end;

procedure TDyImage.SetPictureZoom(Value:double);
begin
  if FPictureStyle in [psAutoFit,psTile] then Exit;
  FPictureZoom:=Value;
  PictureChanged(nil);
end;

procedure TDyImage.SetPictureTransparent(Value:boolean);
begin
  if FPictureTransparent=Value then Exit;
  FPictureTransparent:=Value;
  PictureChanged(self);
end;

procedure TDyImage.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  if (FPictureStyle=psAutoSize) and (Picture.Graphic<>nil) and (not Picture.Graphic.Empty) then begin
    if Width<>AWidth
      then FPictureZoom:=AWidth/Picture.Graphic.Width
      else if Height<>AHeight then FPictureZoom:=AHeight/Picture.Graphic.Height;
    AHeight:=trunc(Picture.Graphic.Height*FPictureZoom);
    AWidth:=trunc(Picture.Graphic.Width*FPictureZoom);
  end;
  inherited;
end;

procedure TDyImage.PictureChanged(Sender:TObject);
var
  VRange,HRange:integer;
  SAuto:boolean;
begin
  if FLock then Exit;
  try
    FLock:=true;
    HRange:=0; VRange:=0; SAuto:=true;
    with FPicture do if (Graphic<>nil) and not Graphic.Empty then begin;
      case FPictureStyle of
        psZoomed: begin
          if Sender=FPicture then FPictureZoom:=1;
          HRange:=Trunc(Graphic.Width*FPictureZoom);
          VRange:=Trunc(Graphic.Height*FPictureZoom);
          SAuto:=false;
        end;
        psAutoSize: begin
          SetBounds(Left,Top,self.Width,self.Height);
          SAuto:=false;
        end;
        psAutoFit:SAuto:=false;
        psTile:;
      end;
      if Sender=Picture
        then FPictureTransparent:=Graphic.Transparent
        else Graphic.Transparent:=FPictureTransparent;
      if DoPaletteChange and FDrawing then Update;
    end;
    HorzScrollBar.Range:=HRange;
    VertScrollBar.Range:=VRange;
    AutoScroll:=SAuto;
    if not FDrawing then Invalidate;
  finally
    FLock:=false;
  end;
  if (Sender<>nil) and not FDrawing then DoChange;
end;

procedure TDyImage.Clear;
begin
  FPicture.Graphic := nil;
end;

procedure TDyImage.CopyToClipboard;
begin
  if FPicture.Graphic<>nil then Clipboard.Assign(FPicture);
end;

procedure TDyImage.CutToClipboard;
begin
  if FPicture.Graphic<>nil then begin
    CopyToClipboard;
    Clear;
  end;
end;

procedure TDyImage.PasteFromClipboard;
begin
  if Clipboard.HasFormat(CF_PICTURE) then begin
    FPicture.Assign(Clipboard);
  end;
end;

procedure TDyImage.LoadFromFile(FileName:string);
begin
  FPicture.LoadFromFile(FileName);
end;

procedure TDyImage.SaveToFile(FileName:string);
begin
  if FPicture.Graphic<>nil then begin
    FPicture.SaveToFile(FileName);
  end;
end;

procedure TDyImage.WMLButtonDown(var Message: TWMLButtonDown);
begin
  if TabStop and CanFocus then SetFocus;
  inherited;
end;

procedure TDyImage.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  case Key of
    VK_INSERT:
      if (ssShift in Shift) and not FReadOnly then PasteFromClipBoard else
        if ssCtrl in Shift then CopyToClipBoard;
    VK_DELETE:
      if (ssShift in Shift) and not FReadOnly  then CutToClipBoard;
  end;
end;

procedure TDyImage.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  case Key of
    ^X: if not FReadOnly then CutToClipBoard else CopyToClipBoard;
    ^C: CopyToClipBoard;
    ^V: if not FReadOnly then PasteFromClipBoard;
  end;
end;

procedure TDyImage.WMCut(var Message: TMessage);
begin
  if FReadOnly then CopyToClipboard else CutToClipboard;
end;

procedure TDyImage.WMCopy(var Message: TMessage);
begin
  CopyToClipboard;
end;

procedure TDyImage.WMPaste(var Message: TMessage);
begin
  if not FReadOnly then PasteFromClipboard;
end;

procedure TDyImage.WMSize(var Message: TMessage);
begin
  inherited;
  if FPictureStyle in [psAutoSize,psAutoFit] then PictureChanged(nil);
end;

function TDyImage.GetPopupMenu: TPopupMenu;
begin
  Result:= inherited GetPopupMenu;
  if Result=nil then begin
    if ImagePopup<>nil then ImagePopup.Destroy;
    ImagePopup:=TPopupMenu.create(Application);
    if FPictureStyle in [psZoomed,psAutoSize] then begin
      CreatePopupItem(ImagePopup.Items,'Увеличить',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,11,PopupClick);
      CreatePopupItem(ImagePopup.Items,'Уменьшить',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,12,PopupClick);
      CreatePopupItem(ImagePopup.Items,'100%',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,13,PopupClick);
      CreatePopupItem(ImagePopup.Items,'Автоподбор',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,14,PopupClick);
      if not ReadOnly then CreatePopupItem(ImagePopup.Items,'-',true,0,nil);
    end;
    if not ReadOnly then begin
      CreatePopupItem(ImagePopup.Items,'Вставить',Clipboard.HasFormat(CF_PICTURE),21,PopupClick);
      CreatePopupItem(ImagePopup.Items,'Копировать',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,22,PopupClick);
      CreatePopupItem(ImagePopup.Items,'Вырезать',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,23,PopupClick);
      CreatePopupItem(ImagePopup.Items,'Очистить',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,24,PopupClick);
      CreatePopupItem(ImagePopup.Items,'-',true,0,nil);
      CreatePopupItem(ImagePopup.Items,'Загрузить ...',true,31,PopupClick);
      CreatePopupItem(ImagePopup.Items,'Сохранить ...',(Picture.Graphic<>nil) AND NOT Picture.Graphic.Empty,32,PopupClick);
    end;
    if ImagePopup.Items.Count=0 then begin
      ImagePopup.Free;
      ImagePopup:=nil;
    end;
    Result:=ImagePopup;
  end;
end;

procedure TDyImage.PopupClick(Sender:TObject);
var R:TRect;
begin
  case TMenuItem(Sender).Tag of
    11: PictureZoom:=FPictureZoom*1.4;
    12: PictureZoom:=FPictureZoom/1.4;
    13: PictureZoom:=1;
    14: PictureZoom:=AutoFitRect(R,Rect(0,0,Picture.Graphic.Width,Picture.Graphic.Height),ClientRect);
    21: PasteFromClipboard;
    22: CopyToClipboard;
    23: CutToClipboard;
    24: Clear;
    31: with TOpenPictureDialog.create(application) do try
      if Execute then Picture.LoadFromFile(FileName);
    finally
      Destroy;
    end;
    32: with TSavePictureDialog.create(application) do try
      DefaultExt:=GraphicExtension(TGraphicClass(Picture.Graphic.ClassType));
      Filter:=GraphicFilter(TGraphicClass(Picture.Graphic.ClassType));
      if Execute then Picture.SaveToFile(FileName);
    finally
      Destroy;
    end;
  end;
  ImagePopup.Destroy;
  ImagePopup:=nil;
end;

function TDyImage.PictureIsEmpty:boolean;
begin
  Result:=(Picture.Graphic=nil) or Picture.Graphic.Empty;
end;

{function TDyImage.DoStoreImage:boolean;
begin
  Result:=FStreamer=nil;
end;}

end.
