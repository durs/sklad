unit editfrm;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, DB, 
  wwDataInspector, ImgList, ComCtrls, ToolWin, Wwdatsrc;

type
  TfrmEdit = class(TFrame)
    pnlBorder: TPanel;
    Inspector: TwwDataInspector;
    ImageList: TImageList;
    ToolBar1: TToolBar;
    btnOk: TToolButton;
    btnCancel: TToolButton;
    barNavigator: TwwDBNavigator;
    barNavigatorFirst: TwwNavButton;
    barNavigatorPrior: TwwNavButton;
    barNavigatorNext: TwwNavButton;
    barNavigatorLast: TwwNavButton;
    barNavigatorInsert: TwwNavButton;
    barNavigatorDelete: TwwNavButton;
    procedure FrameExit(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure InspectorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Apply(Sender: TObject);
    procedure Close(Sender: TObject);
  private
    FOnClose:TNotifyEvent;
    isApplied:boolean;
    procedure setDataSource(value:TDataSource);
    function getDataSource:TDataSource;
    procedure setReadonly(value:boolean);
    function getReadonly:boolean;
  public
    constructor Create(AOwner:TComponent); override;
    property DataSource:TDAtaSource read getDataSource write setDataSource;
    property Readonly:boolean read getReadonly write setReadonly;
    property OnClose:TNotifyEvent read FOnClose write FOnClose;
    property Applied:boolean read isApplied;
  end;

implementation

{$R *.DFM}

constructor TfrmEdit.Create(AOwner:TComponent);
begin
  inherited;
end;

function TfrmEdit.getDataSource:TDataSource;
begin
  result:=Inspector.DataSource;
end;

procedure TfrmEdit.setDataSource(value:TDataSource);
var i:integer;
begin
  if barNavigator.DataSource=value then exit;
  try
    Inspector.BeginUpdate;
    Inspector.Row:=0;
    Inspector.Items.Clear;
    if value<>nil then with value.DataSet do for i:=0 to FieldCount-1 do if Fields[i].visible then with Inspector.Items.Add do begin
      DataSource:=value;
      DataField:=Fields[i].FieldName;
      Caption:=Fields[i].DisplayLabel;
    end;
    Inspector.DataSource:=value;
  finally
    Inspector.EndUpdate;
  end;
  barNavigator.DataSource:=value;
end;

procedure TfrmEdit.setReadonly(value:boolean);
begin
  Inspector.ReadOnly:=value;
  barNavigatorInsert.Visible:=not value;
  barNavigatorDelete.Visible:=not value;
end;

function TfrmEdit.getReadonly:boolean;
begin
  result:=Inspector.ReadOnly;
end;

procedure TfrmEdit.FrameEnter(Sender: TObject);
//var i:integer;
begin
  Ctl3D:=false;
  isApplied:=false;
  //with Inspector.Items do for i:=0 to Count-1 do Items[i].visible:=(Items[i].Field=nil) or Items[i].Field.visible;
  Inspector.SetFocus;
end;

procedure TfrmEdit.FrameExit(Sender: TObject);
begin
  Close(Sender);
end;

procedure TfrmEdit.InspectorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: Close(Sender);
    VK_RETURN: if ssCtrl in Shift then Apply(Sender);
    VK_INSERT: if (ssCtrl in Shift) and (Inspector.DataSource.DataSet<>nil) and (Inspector.DataSource.DataSet.Active) then Inspector.DataSource.DataSet.Insert;
    VK_DELETE: if (ssCtrl in Shift) and (Inspector.DataSource.DataSet<>nil) and (Inspector.DataSource.DataSet.Active) then Inspector.DataSource.DataSet.Delete;
    VK_NEXT: if (ssCtrl in Shift) and (Inspector.DataSource.DataSet<>nil) and (Inspector.DataSource.DataSet.Active) then Inspector.DataSource.DataSet.Next;
    VK_PRIOR: if (ssCtrl in Shift) and (Inspector.DataSource.DataSet<>nil) and (Inspector.DataSource.DataSet.Active) then Inspector.DataSource.DataSet.Prior;
  end;
end;

procedure TfrmEdit.Apply(Sender: TObject);
begin
  isApplied:=true;
  Close(Sender);
end;

procedure TfrmEdit.Close(Sender: TObject);
begin
  if (Inspector.DataSource<>nil) and (Inspector.DataSource.State in [dsEdit,dsInsert]) then Inspector.DataSource.DataSet.Post;
  Hide;
  if Assigned(FOnClose) then FOnClose(self);
end;

end.
