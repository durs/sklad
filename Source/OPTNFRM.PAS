unit optnfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtDlgs,
  ExtCtrls, Grids, wwDataInspector, StdCtrls, ComCtrls, wwriched, fcCombo;

type
  TOptionsForm = class(TForm)
    Panel1: TPanel;
    btnSave: TButton;
    btnRestore: TButton;
    btnOk: TButton;
    Inspector: TwwDataInspector;
    btnCancel: TButton;
    edtMemo: TwwDBRichEdit;
    btnEdit: TButton;
    procedure LoadData(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveData(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure getFileName(Sender: TwwDataInspector;
      Item: TwwInspectorItem);
    procedure getPictureName(Sender: TwwDataInspector;
      Item: TwwInspectorItem);
    procedure edtMemoEnter(Sender: TObject);
    procedure EditData(Sender: TObject);
    procedure InspectorAfterSelectCell(Sender: TwwDataInspector;
      ObjItem: TwwInspectorItem);
    procedure getColor(Sender: TwwDataInspector; Item: TwwInspectorItem);
  private
    function getInspectorItem(id:string; Items:TwwInspectorCollection):TwwInspectorItem;
    procedure readInspectorItems(Items:TwwInspectorCollection);
    procedure writeInspectorItems(items:TwwInspectorCollection; id:string='');
  public
  end;

implementation
uses config,basefrm;

{$R *.DFM}

procedure TOptionsForm.FormCreate(Sender: TObject);
var
    i:integer;
    text,key:string;
begin
    i:=0;
    while true do begin
        key:='queries.query'+IntToStr(i);
        text:=CurrentConfig.getString(key);
        if text='' then break;
        with getInspectorItem(key+'.sql',Inspector.Items) do begin
            WordWrap:=false;
            CustomControlAlwaysPaints:=false;
            CustomControl:=edtMemo;
            Resizeable:=true;
            CellHeight:=48;
            tag:=1;
        end;
        inc(i);
    end;
    readInspectorItems(Inspector.Items);
end;

procedure TOptionsForm.FormDestroy(Sender: TObject);
begin
  //
end;

function TOptionsForm.getInspectorItem(id:string; items:TwwInspectorCollection):TwwInspectorItem;
var
  index,i:integer;
  str:pchar;
  key:string;
  append:boolean;
  first:boolean;
begin
  index:=1;
  str:=pchar(id);
  result:=nil;
  first:=true;
  append:=false;
  while index>0 do begin
    index:=pos('.',str);
    if index>0 then begin
      key:=copy(str,0,index-1);
      str:=@(str[index]);
    end else begin
      key:=str;
    end;
    if first then begin
      first := false;
      if key = 'forms' then append := true;
    end;
    if result<>nil then items:=result.items;
    result:=nil;
    for i:=0 to items.Count-1 do if items[i].TagString=key then begin
      result:=items[i];
      break;
    end;
    if result=nil then begin
      if append then begin
        result:=items.Add;
        result.Caption:=key;
        result.tagString:=key;
      end else begin
        break;
      end;
    end;
  end;
end;

procedure TOptionsForm.readInspectorItems(items:TwwInspectorCollection);
var
  i:integer;
  id:string;
  item:TwwInspectorItem;
begin
  if CurrentConfig=nil then exit;
  for i:=0 to CurrentConfig.Items.count-1 do begin
    id:=CurrentConfig.Items.Names[i];
    item:=getInspectorItem(id,Items);
    if item<>nil then begin
      if item.tag>0 then item.EditText:=CurrentConfig.getMem(id)
      else item.EditText:=CurrentConfig.getString(id);
    end;
  end;
end;

procedure TOptionsForm.writeInspectorItems(items:TwwInspectorCollection; id:string='');
var
  i:integer;
  id2,value:string;
begin
  for i:=0 to items.Count-1 do begin
    if id='' then id2:=items[i].TagString else id2:=id+'.'+items[i].TagString;
    value:=items[i].EditText;
    if items[i].tag>0 then CurrentConfig.setMem(id2,value) else CurrentConfig.setString(id2,value);
    if items[i].Items.Count<>0 then writeInspectorItems(items[i].Items,id2);
  end;
  Update;
end;

procedure TOptionsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Modalresult=mrOk then begin
    writeInspectorItems(Inspector.Items);
    TBaseForm.appEventPost(nil,appConfig);
  end;
end;

procedure TOptionsForm.LoadData(Sender: TObject);
begin
  CurrentConfig.load;
  readInspectorItems(Inspector.Items);
  Inspector.Invalidate;
end;

procedure TOptionsForm.SaveData(Sender: TObject);
begin
  writeInspectorItems(Inspector.Items);
  TBaseForm.appEventPost(nil,appConfig);
  CurrentConfig.save;
  LoadData(Sender);
end;

procedure TOptionsForm.getFileName(Sender: TwwDataInspector;
  Item: TwwInspectorItem);
begin
  with TOpenDialog.Create(nil) do try
    FileName:=Item.EditText;
    if Execute then TEdit(Inspector.ActiveEdit).Text:=FileName;
  finally
    Destroy;
  end;
end;

procedure TOptionsForm.getPictureName(Sender: TwwDataInspector;
  Item: TwwInspectorItem);
begin
  with TOpenPictureDialog.Create(nil) do try
    FileName:=Item.EditText;
    if Execute then TEdit(Inspector.ActiveEdit).Text:=FileName;
  finally
    Destroy;
  end;
end;

procedure TOptionsForm.getColor(Sender: TwwDataInspector;
  Item: TwwInspectorItem);
begin
  with TColorDialog.Create(nil) do try
    Color:=clWindow;
    Options:=[cdFullOpen,cdPreventFullOpen,cdAnyColor];
    if Item.EditText<>'' then try Color:=StrToInt(Item.EditText) except end;
    if Execute then TEdit(Inspector.ActiveEdit).Text:=IntToStr(Color);
  finally
    Destroy;
  end;
end;

procedure TOptionsForm.edtMemoEnter(Sender: TObject);
begin
  edtMemo.Text:=Inspector.ActiveItem.DisplayText;
end;

procedure TOptionsForm.EditData(Sender: TObject);
begin
  edtMemo.EditorCaption:=Inspector.ActiveItem.Caption;
  if edtMemo.Execute then Inspector.ActiveItem.EditText:=edtMemo.Text;
  Inspector.SetFocus;
end;

procedure TOptionsForm.InspectorAfterSelectCell(Sender: TwwDataInspector;
  ObjItem: TwwInspectorItem);
begin
  btnEdit.visible:=ObjItem.CustomControl=edtMemo;
end;

end.
