unit DyChart;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Chart, TeCanvas, TeEngine, Series, TeeGally, TeePrevi, //TeExport,
  Mask, IniFiles, ExtCtrls, Buttons, DB, DBTables, Grids, CheckLst,
  ToolWin, TeeProcs, fcCombo, fcColorCombo, StdCtrls, ComCtrls;

type
  TChartDialog = class(TForm)
    General: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    GradientBtn: TCheckBox;
    EndGradientColor: TfcColorCombo;
    StartGradientColor: TfcColorCombo;
    GradientDirection: TComboBox;
    Panel1: TPanel;
    CloseBtn: TButton;
    SaveBtn: TButton;
    RestoreBtn: TButton;
    Button2: TButton;
    Button3: TButton;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    Bevel2: TBevel;
    AxisBtn: TCheckBox;
    FrameBtn: TCheckBox;
    GroupBox2: TGroupBox;
    LeftWall: TfcColorCombo;
    BottomWall: TfcColorCombo;
    WallsBtn: TCheckBox;
    GroupBox3: TGroupBox;
    LegendComboBox: TComboBox;
    LegendBtn: TCheckBox;
    PageEdit: TEdit;
    PageUpDown: TUpDown;
    Label4: TLabel;
    PageLastScale: TCheckBox;
    TitleMemo: TMemo;
    TabSheet7: TTabSheet;
    GroupBox4: TGroupBox;
    OrthogonalBtn: TCheckBox;
    RotationBar: TScrollBar;
    ElevationBar: TScrollBar;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    ZoomBar: TScrollBar;
    Label13: TLabel;
    XOffsetBar: TScrollBar;
    Label14: TLabel;
    YOffsetBar: TScrollBar;
    ZoomLabel: TLabel;
    XOffsetLabel: TLabel;
    YOffsetLabel: TLabel;
    RotationLabel: TLabel;
    ElevationLabel: TLabel;
    TiltBar: TScrollBar;
    Label1: TLabel;
    TiltLabel: TLabel;
    View3DBtn: TCheckBox;
    View3DBar: TScrollBar;
    View3DLabel: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    SeriesList: TCheckListBox;
    Panel4: TPanel;
    CreateBtn: TButton;
    ChangeBtn: TButton;
    DeleteBtn: TButton;
    SeriesPageControl: TPageControl;
    TabSheet5: TTabSheet;
    Label7: TLabel;
    SeriesTitleEdit: TEdit;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    XValueLabel: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DataSourceEdit: TComboBox;
    XLabelEdit: TComboBox;
    XValueEdit: TComboBox;
    YValueEdit: TComboBox;
    XValueDateBtn: TCheckBox;
    YValueDateBtn: TCheckBox;
    ColorValueEdit: TComboBox;
    TabSheet6: TTabSheet;
    SeriesNotebook: TNotebook;
    PointsBtn: TCheckBox;
    PointStyle: TComboBox;
    Label2: TLabel;
    MultiBarStyle: TRadioGroup;
    BarStyleEdit: TComboBox;
    MultiAreaStyle: TRadioGroup;
    UpBtn: TButton;
    DownBtn: TButton;
    GroupBox6: TGroupBox;
    MarksBtn: TCheckBox;
    MarksComboBox: TComboBox;
    MarksClipBtn: TCheckBox;
    GroupBox7: TGroupBox;
    RandomColor: TCheckBox;
    SeriesColor: TfcColorCombo;
    TabSheet8: TTabSheet;
    AxisList: TListBox;
    Label15: TLabel;
    AxisSizeEdit: TEdit;
    UpDown1: TUpDown;
    AxisVisibleCheckBox: TCheckBox;
    AxisMultiLineCheckBox: TCheckBox;
    procedure LegendBtnClick(Sender: TObject);
    procedure MarksBtnClick(Sender: TObject);
    procedure ActiveCheckBoxClick(Sender: TObject);
    procedure SeriesChangeType(Sender: TObject);
    procedure PrintChart(Sender: TObject);
    procedure ExportChart(Sender: TObject);
    procedure EndGradientColorChange(Sender: TObject);
    procedure StartGradientColorChange(Sender: TObject);
    procedure GradientBtnClick(Sender: TObject);
    procedure GradientDirectionChange(Sender: TObject);
    procedure SaveParams(Sender: TObject);
    procedure RestoreParams(Sender: TObject);
    procedure MultiBarStyleClick(Sender: TObject);
    procedure SeriesTitleEditChange(Sender: TObject);
    procedure MultiAreaStyleClick(Sender: TObject);
    procedure BarStyleEditChange(Sender: TObject);
    procedure SeriesColorChange(Sender: TObject);
    procedure AxisBtnClick(Sender: TObject);
    procedure MarksComboBoxChange(Sender: TObject);
    procedure WallsBtnClick(Sender: TObject);
    procedure LegendComboBoxChange(Sender: TObject);
    procedure BottomWallChange(Sender: TObject);
    procedure LeftWallChange(Sender: TObject);
    procedure ChartTitleChange(Sender: TObject);
    procedure FrameBtnClick(Sender: TObject);
    procedure RandomColorClick(Sender: TObject);
    procedure PointsBtnClick(Sender: TObject);
    procedure PointStyleChange(Sender: TObject);
    procedure PageEditChange(Sender: TObject);
    procedure PageLastScaleClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SeriesAdd(Sender: TObject);
    procedure SeriesDelete(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure XValueEditChange(Sender: TObject);
    procedure YValueEditChange(Sender: TObject);
    procedure XLabelEditChange(Sender: TObject);
    procedure SeriesListClick(Sender: TObject);
    procedure XValueDateBtnClick(Sender: TObject);
    procedure YValueDateBtnClick(Sender: TObject);
    procedure DataSourceEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ColorValueEditChange(Sender: TObject);
    procedure View3DBarChange(Sender: TObject);
    procedure View3DBtnClick(Sender: TObject);
    procedure OrthogonalBtnClick(Sender: TObject);
    procedure RotationBarChange(Sender: TObject);
    procedure ElevationBarChange(Sender: TObject);
    procedure ZoomBarChange(Sender: TObject);
    procedure XOffsetBarChange(Sender: TObject);
    procedure YOffsetBarChange(Sender: TObject);
    procedure TiltBarChange(Sender: TObject);
    procedure SeriesUp(Sender: TObject);
    procedure SeriesDown(Sender: TObject);
    procedure MarksClipBtnClick(Sender: TObject);
    procedure UpdateAxis(Sender: TObject);
    procedure AxisEditChange(Sender: TObject);
  private
    FChart:TCustomChart;
    Lock:boolean;
    FOnReadChart,FOnWriteChart:TNotifyEvent;
    procedure SetChart(Chart:TCustomChart);
    procedure UpdateChart;
    procedure UpdateSeriesList;
    procedure UpdateSeries;
    procedure UpdateDatasourceList;
    procedure UpdateFieldList;
  public
    property Chart:TCustomChart read FChart write SetChart;
    property OnReadChart:TNotifyEvent read FOnReadChart write FOnReadChart;
    property OnWriteChart:TNotifyEvent read FOnWriteChart write FOnWriteChart;
  end;

var
  ChartDialog: TChartDialog;

procedure ChartLoadFromStream(Chart:TCustomChart; Stream:TStream);
procedure ChartSaveToStream(Chart:TCustomChart; Stream:TStream);

implementation
{$R *.DFM}

procedure ChartLoadFromStream(Chart:TCustomChart; Stream:TStream);
var
  i:integer;
  Str:string;
  DS:TComponent;
begin
  for i:=Chart.SeriesCount-1 downto 0 do Chart.Series[i].Destroy;
  with TReader.Create(Stream,4096) do try
    ReadRootComponent(Chart);
    if Stream.Size>Position then for i:=0 to Chart.SeriesCount-1 do with Chart.Series[i] do begin
      Str:=ReadString;
      if Str='' then DS:=nil else DS:=Chart.Owner.FindComponent(Str);
      if DS is TDataset then DataSource:=DS;
    end;
  finally
    Destroy;
  end;
end;

procedure ChartSaveToStream(Chart:TCustomChart; Stream:TStream);
var
  i:integer;
  Str:string;
begin
  with TWriter.Create(Stream,4096) do try
    WriteRootComponent(Chart);
    for i:=0 to Chart.SeriesCount-1 do with Chart.Series[i] do begin
      if Datasource=nil then Str:='' else Str:=DataSource.Name;
      WriteString(Str);
    end;
  finally
    Destroy;
  end;
end;

procedure TChartDialog.FormShow(Sender: TObject);
begin
  SaveBtn.Visible:=Assigned(FOnWriteChart);
  RestoreBtn.Visible:=Assigned(FOnReadChart);
end;

procedure TChartDialog.FormDestroy(Sender: TObject);
begin
  if ChartDialog=self then ChartDialog:=nil;
end;

procedure TChartDialog.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TChartDialog.SetChart(Chart:TCustomChart);
begin
  FChart:=Chart;
  UpdateChart;
end;

procedure TChartDialog.SaveParams(Sender: TObject);
begin
  if Application.MessageBox('Сохранить параметры ?','Вопрос',MB_ICONQUESTION or MB_YESNO)=mrYes then try
    Screen.Cursor:=crHourGlass;
    FOnWriteChart(Chart);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TChartDialog.RestoreParams(Sender: TObject);
begin
  if Application.MessageBox('Восстановить параметры ?','Вопрос',MB_ICONQUESTION or MB_YESNO)=mrYes then try
    Screen.Cursor:=crHourGlass;
    FOnReadChart(Chart);
    UpdateChart;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TChartDialog.PrintChart(Sender: TObject);
begin
  //ChartPreview(self,Chart);
end;

procedure TChartDialog.ExportChart(Sender: TObject);
begin
  {
  with TTeeExportForm.Create(self) do try
    ExportPanel:=Chart;
    ShowModal;
  finally
    Destroy;
  end;
  }
end;

procedure TChartDialog.UpdateChart;
begin
  Lock:=true;
  try
    UpdateDataSourceList;
    UpdateSeriesList;
    TitleMemo.Lines.Text:=Chart.Title.Text.Text;
    {======3D=======}
    View3DBtn.Checked:=Chart.View3D;
    View3DBar.Position:=Chart.Chart3DPercent;
    OrthogonalBtn.Checked:=Chart.View3DOptions.Orthogonal;
    RotationBar.Position:=Chart.View3DOptions.Rotation;
    ElevationBar.Position:=Chart.View3DOptions.Elevation;
    TiltBar.Position:=Chart.View3DOptions.Tilt;
    ZoomBar.Position:=integer(Chart.View3DOptions.Zoom);
    XOffsetBar.Position:=Chart.View3DOptions.HorizOffset;
    YOffsetBar.Position:=Chart.View3DOptions.VertOffset;
    {==============}
    PageUpDown.Position:=Chart.MaxPointsPerPage;
    PageLastScale.Checked:=Chart.ScaleLastPage;
    LegendBtn.Checked:=Chart.Legend.Visible;
    LegendComboBox.ItemIndex:=integer(Chart.Legend.LegendStyle);
    LegendComboBox.Enabled:=LegendBtn.Checked;
    FrameBtn.Checked:=Chart.Frame.Visible;
    AxisBtn.Checked:=Chart.AxisVisible;
    WallsBtn.Checked:=Chart.View3DWalls;
    LeftWall.SelectedColor:=Chart.LeftWall.Color;
    LeftWall.Enabled:=WallsBtn.Checked;
    BottomWall.SelectedColor:=Chart.BottomWall.Color;
    BottomWall.Enabled:=WallsBtn.Checked;
    if Chart.SeriesCount<>0 then MarksBtn.Checked:=Chart.Series[0].Marks.Visible;
    GradientBtn.Checked:=Chart.Gradient.Visible;
    StartGradientColor.SelectedColor:=Chart.Gradient.StartColor;
    EndGradientColor.SelectedColor:=Chart.Gradient.EndColor;
    GradientDirection.ItemIndex:=integer(Chart.Gradient.Direction);
    StartGradientColor.Enabled:=GradientBtn.Checked;
    EndGradientColor.Enabled:=GradientBtn.Checked;
    GradientDirection.Enabled:=GradientBtn.Checked;
    {=========}
    AxisList.ItemIndex:=0;
    UpdateAxis(nil);
  finally
    Lock:=false;
  end;
end;

procedure TChartDialog.UpdateSeriesList;
var i:integer;
begin
  SeriesList.Items.Clear;
  for i:=0 to Chart.SeriesCount-1 do with Chart.Series[i] do begin
    SeriesList.Items.Add(Title);
    SeriesList.Checked[i]:=Active;
  end;
  if SeriesList.Items.Count>0 then SeriesList.ItemIndex:=0;
  UpdateSeries;
end;

procedure TChartDialog.UpdateSeries;
var
  S:TChartSeries;
  N:integer;
begin
  if SeriesList.Items.Count=0 then begin
    DeleteBtn.Enabled:=false;
    ChangeBtn.Enabled:=false;
    SeriesPageControl.Visible:=false;
    Exit;
  end else begin
    DeleteBtn.Enabled:=true;
    ChangeBtn.Enabled:=true;
    SeriesPageControl.Visible:=true;
  end;
  with SeriesList do begin
    UpBtn.Enabled:=ItemIndex>0;
    DownBtn.Enabled:=(ItemIndex>=0) and (ItemIndex<Items.Count-1);
  end;
  S:=Chart.Series[SeriesList.ItemIndex];

  SeriesTitleEdit.Text:=S.Title;
  RandomColor.Checked:=not S.ColorEachPoint;
  SeriesColor.SelectedColor:=S.SeriesColor;
  MarksBtn.Checked:=S.Marks.Visible;
  MarksComboBox.ItemIndex:=integer(S.Marks.Style);
  MarksClipBtn.Checked:=S.Marks.Clip;
  MarksComboBox.Enabled:=MarksBtn.Checked;
  MarksClipBtn.Enabled:=MarksBtn.Checked;

  if S.DataSource=nil then begin
    DatasourceEdit.ItemIndex:=0;
  end else begin
    N:=DataSourceEdit.Items.IndexOf(S.Datasource.Name);
    if N<0 then begin
      DataSourceEdit.Items.Add(S.Datasource.Name);
      N:=DatasourceEdit.Items.Count-1;
    end;
    DatasourceEdit.ItemIndex:=N;
  end;
  UpdateFieldList;
  XLabelEdit.Text:=S.XLabelsSource;
  XValueEdit.Text:=S.XValues.ValueSource;
  YValueEdit.Text:=S.YValues.ValueSource;
  ColorValueEdit.Text:=S.ColorSource;

  if S is TCustomBarSeries then begin
    SeriesNotebook.PageIndex:=1;
    MultiBarStyle.ItemIndex:=integer(TCustomBarSeries(S).MultiBar);
    BarStyleEdit.ItemIndex:=integer(TCustomBarSeries(S).BarStyle);
  end else if S is TAreaSeries then  begin
    SeriesNotebook.PageIndex:=2;
    MultiAreaStyle.ItemIndex:=integer(TAreaSeries(S).MultiArea);
  end else if S is TPieSeries then  begin
    SeriesNotebook.PageIndex:=3;
  end else if S is TCustomSeries then begin
    SeriesNotebook.PageIndex:=0;
    PointsBtn.Checked:=TCustomSeries(S).Pointer.Visible;
    PointStyle.ItemIndex:=integer(TCustomSeries(S).Pointer.Style);
    PointStyle.Enabled:=PointsBtn.Checked;
  end else SeriesNotebook.PageIndex:=4;
end;

procedure TChartDialog.UpdateDatasourceList;
var i:integer;
begin
  DataSourceEdit.Items.Clear;
  DataSourceEdit.Items.Add('No data');
  DataSourceEdit.Items.Add('Random values');
  DataSourceEdit.ItemIndex:=0;
  if Chart.Owner=nil then Exit;
  with Chart.Owner do for i:=0 to ComponentCount-1 do
    if Components[i] is TDataset then begin
      DataSourceEdit.Items.Add(Components[i].Name);
    end;
end;

procedure TChartDialog.UpdateFieldList;
var i:integer;
begin
  XLabelEdit.Items.Clear;
  with Chart.Series[SeriesList.ItemIndex] do
    if Datasource is TDataset then for i:=0 to TDataset(Datasource).Fields.Count-1 do begin
      XLabelEdit.Items.Add(TDataset(Datasource).Fields[i].FieldName);
    end;
  XValueEdit.Items:=XLabelEdit.Items;
  YValueEdit.Items:=XLabelEdit.Items;
  ColorValueEdit.Items:=XLabelEdit.Items;
end;
{============Series params===============}
procedure TChartDialog.SeriesUp(Sender: TObject);
var S:string;
begin
  with Chart,self.SeriesList do begin
    if ItemIndex<=0 then Exit;
    SeriesUp(Series[ItemIndex]);
    S:=Items[ItemIndex]; Items[ItemIndex]:=Items[ItemIndex-1]; Items[ItemIndex-1]:=S;
    ItemIndex:=ItemIndex-1;
  end;
end;

procedure TChartDialog.SeriesDown(Sender: TObject);
var S:string;
begin
  with Chart,self.SeriesList do begin
    if (ItemIndex<=0) or (ItemIndex>=Items.Count-1) then Exit;
    SeriesDown(Series[ItemIndex]);
    S:=Items[ItemIndex]; Items[ItemIndex]:=Items[ItemIndex+1]; Items[ItemIndex+1]:=S;
    ItemIndex:=ItemIndex+1;
  end;
end;

procedure TChartDialog.SeriesAdd(Sender: TObject);
var
  S:TChartSeries;
  SubIndex: Integer;
begin
  S:=CreateNewSeriesGallery(Chart,nil,Chart,true,true, SubIndex);
  if S<>nil then begin
    S.Name:='';
    S.Title:=S.ClassName;
    with SeriesList do begin
      Items.Add(S.Title);
      Checked[Items.Count-1]:=S.Active;
      ItemIndex:=Items.Count-1;
    end;
    UpdateSeries;
    DataSourceEdit.ItemIndex:=1;
    S.FillSampleValues(100);
  end;
end;

procedure TChartDialog.SeriesDelete(Sender: TObject);
begin
  if SeriesList.ItemIndex<0 then Exit;
  Chart.Series[SeriesList.ItemIndex].Destroy;
  UpdateSeriesList;
end;

procedure TChartDialog.SeriesChangeType(Sender: TObject);
var
  Series:TChartSeries;
  UpdateTitle:boolean;
  ClassType:TClass;
begin
  Series:=Chart.Series[SeriesList.ItemIndex];
  ClassType:=Series.ClassType;
  UpdateTitle:=Series.Title=Series.ClassName;
  ChangeSeriesTypeGallery(Chart,Series);
  if ClassType<>Series.ClassType then begin
    if UpdateTitle then SeriesTitleEdit.Text:=Series.ClassName;
    UpdateSeries;
  end;
end;

procedure TChartDialog.SeriesListClick(Sender: TObject);
begin
  UpdateSeries;
end;

procedure TChartDialog.SeriesTitleEditChange(Sender: TObject);
var Check:boolean;
begin
  with SeriesList do begin
    Chart.Series[ItemIndex].Title:=SeriesTitleEdit.Text;
    Check:=Checked[ItemIndex];
    Items[ItemIndex]:=SeriesTitleEdit.Text;
    Checked[ItemIndex]:=Check;
  end;
end;

procedure TChartDialog.ActiveCheckBoxClick(Sender: TObject);
begin
  if Lock then Exit;
  with Serieslist do begin
    Chart.Series[ItemIndex].Active:=Checked[ItemIndex];
  end;
end;

procedure TChartDialog.MultiBarStyleClick(Sender: TObject);
begin
  if Lock then Exit;
  TCustomBarSeries(Chart.Series[SeriesList.ItemIndex]).MultiBar:=TMultiBar(MultiBarStyle.ItemIndex)
end;

procedure TChartDialog.MultiAreaStyleClick(Sender: TObject);
begin
  if Lock then Exit;
  TAreaSeries(Chart.Series[SeriesList.ItemIndex]).MultiArea:=TMultiArea(MultiAreaStyle.ItemIndex);
end;

procedure TChartDialog.BarStyleEditChange(Sender: TObject);
begin
  if Lock then Exit;
  TCustomBarSeries(Chart.Series[SeriesList.ItemIndex]).BarStyle:=TBarStyle(BarStyleEdit.ItemIndex);
end;

procedure TChartDialog.SeriesColorChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].SeriesColor:=SeriesColor.SelectedColor;
end;

procedure TChartDialog.MarksBtnClick(Sender: TObject);
begin
  if Lock then exit;
  Chart.Series[SeriesList.ItemIndex].Marks.Visible:=MarksBtn.Checked;
  MarksComboBox.Enabled:=MarksBtn.Checked;
  MarksClipBtn.Enabled:=MarksBtn.Checked;
end;

procedure TChartDialog.MarksComboBoxChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].Marks.Style:=TSeriesMarksStyle(MarksComboBox.ItemIndex);
end;

procedure TChartDialog.MarksClipBtnClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].Marks.Clip:=MarksClipBtn.Checked;
end;

procedure TChartDialog.RandomColorClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].ColorEachPoint:=not RandomColor.Checked;
end;

procedure TChartDialog.PointsBtnClick(Sender: TObject);
begin
  if Lock then Exit;
  TCustomSeries(Chart.Series[SeriesList.ItemIndex]).Pointer.Visible:=PointsBtn.Checked;
  PointStyle.enabled:=PointsBtn.Checked;
end;

procedure TChartDialog.PointStyleChange(Sender: TObject);
begin
  if Lock then Exit;
  TCustomSeries(Chart.Series[SeriesList.ItemIndex]).Pointer.Style:=TSeriesPointerStyle(PointStyle.ItemIndex);
end;

procedure TChartDialog.DataSourceEditChange(Sender: TObject);
var DataSource:TComponent;
begin
  if Lock then Exit;
  if DataSourceEdit.ItemIndex<2 then
    DataSource:=nil
  else begin
    DataSource:=Chart.Owner.FindComponent(DataSourceEdit.Text);
  end;
  Chart.Series[SeriesList.ItemIndex].DataSource:=DataSource;
  if DataSourceEdit.ItemIndex=1 then Chart.Series[SeriesList.ItemIndex].FillSampleValues(100);
  UpdateFieldList;
end;

procedure TChartDialog.XLabelEditChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].XLabelsSource:=XLabelEdit.Text;
end;

procedure TChartDialog.XValueEditChange(Sender: TObject);
var F:TField;
begin
  if Lock then Exit;
  with Chart.Series[SeriesList.ItemIndex] do begin
    XValues.ValueSource:=XValueEdit.Text;
    if DataSource is TDataset then F:=TDataset(Datasource).FindField(XValueEdit.Text) else F:=nil;
    if F<>nil then begin
      XValueDateBtn.Checked:=F is TDateTimeField;
      XValueDateBtnClick(nil);
    end;
  end;
end;

procedure TChartDialog.XValueDateBtnClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].XValues.DateTime:=XValueDateBtn.Checked;
end;

procedure TChartDialog.YValueEditChange(Sender: TObject);
var F:TField;
begin
  if Lock then Exit;
  with Chart.Series[SeriesList.ItemIndex] do begin
    YValues.ValueSource:=YValueEdit.Text;
    if DataSource is TDataset then F:=TDataset(Datasource).FindField(YValueEdit.Text) else F:=nil;
    if F<>nil then begin
      YValueDateBtn.Checked:=F is TDateTimeField;
      YValueDateBtnClick(nil);
    end;
  end;
end;

procedure TChartDialog.YValueDateBtnClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].YValues.DateTime:=YValueDateBtn.Checked;
end;

procedure TChartDialog.ColorValueEditChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Series[SeriesList.ItemIndex].ColorSource:=ColorValueEdit.Text;
end;

{==============Chart params============}
procedure TChartDialog.LegendBtnClick(Sender: TObject);
begin
  if Lock then exit;
  Chart.Legend.Visible:=LegendBtn.Checked;
  LegendComboBox.Enabled:=LegendBtn.Checked;
end;

procedure TChartDialog.AxisBtnClick(Sender: TObject);
begin
  if Lock then exit;
  Chart.AxisVisible:=AxisBtn.Checked;
end;

procedure TChartDialog.WallsBtnClick(Sender: TObject);
begin
  if Lock then exit;
  Chart.View3DWalls:=WallsBtn.Checked;
  LeftWall.Enabled:=WallsBtn.Checked;
  BottomWall.Enabled:=WallsBtn.Checked;
end;

procedure TChartDialog.EndGradientColorChange(Sender: TObject);
begin
  if Lock then exit;
  Chart.Gradient.EndColor:=EndGradientColor.SelectedColor;
end;

procedure TChartDialog.StartGradientColorChange(Sender: TObject);
begin
  if Lock then exit;
  Chart.Gradient.StartColor:=StartGradientColor.SelectedColor;
end;

procedure TChartDialog.GradientBtnClick(Sender: TObject);
begin
  if Lock then exit;
  StartGradientColor.Enabled:=GradientBtn.Checked;
  EndGradientColor.Enabled:=GradientBtn.Checked;
  GradientDirection.Enabled:=GradientBtn.Checked;
  Chart.Gradient.visible:=GradientBtn.Checked;
end;

procedure TChartDialog.GradientDirectionChange(Sender: TObject);
begin
  if Lock then exit;
  Chart.Gradient.Direction:=TGradientDirection(GradientDirection.ItemIndex);
end;

procedure TChartDialog.LegendComboBoxChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Legend.LegendStyle:=TLegendStyle(LegendComboBox.ItemIndex);
end;

procedure TChartDialog.BottomWallChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.BottomWall.Color:=BottomWall.SelectedColor;
end;

procedure TChartDialog.LeftWallChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.LeftWall.Color:=LeftWall.SelectedColor;
end;

procedure TChartDialog.ChartTitleChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Title.Text.Text:=TitleMemo.Lines.Text;
  Chart.Title.Visible:=false;
  Chart.Title.Visible:=Chart.Title.Text.Text<>'';
end;

procedure TChartDialog.FrameBtnClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.Frame.Visible:=FrameBtn.Checked;
end;

procedure TChartDialog.PageEditChange(Sender: TObject);
begin
  if Lock then Exit;
  Chart.MaxPointsPerPage:=StrToInt(PageEdit.Text);
end;

procedure TChartDialog.PageLastScaleClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.ScaleLastPage:=PageLastScale.Checked;
end;
{===================3D======================}
procedure TChartDialog.View3DBtnClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.View3D:=View3DBtn.Checked;
end;

procedure TChartDialog.View3DBarChange(Sender: TObject);
begin
  if not Lock then Chart.Chart3DPercent:=TScrollBar(Sender).Position;
  View3DLabel.Caption:=IntToStr(View3DBar.Position)+'%';
end;

procedure TChartDialog.OrthogonalBtnClick(Sender: TObject);
begin
  if Lock then Exit;
  Chart.View3DOptions.Orthogonal:=OrthogonalBtn.Checked;
end;

procedure TChartDialog.RotationBarChange(Sender: TObject);
begin
  if not Lock then Chart.View3DOptions.Rotation:=TScrollBar(Sender).Position;
  RotationLabel.Caption:=IntToStr(RotationBar.Position)+'%';
end;

procedure TChartDialog.ElevationBarChange(Sender: TObject);
begin
  if not Lock then Chart.View3DOptions.Elevation:=TScrollBar(Sender).Position;
  ElevationLabel.Caption:=IntToStr(ElevationBar.Position)+'%';
end;

procedure TChartDialog.TiltBarChange(Sender: TObject);
begin
  if not Lock then Chart.View3DOptions.Tilt:=TScrollBar(Sender).Position;
  TiltLabel.Caption:=IntToStr(TiltBar.Position)+'%';
end;

procedure TChartDialog.ZoomBarChange(Sender: TObject);
begin
  if not Lock then Chart.View3DOptions.Zoom:=TScrollBar(Sender).Position;
  ZoomLabel.Caption:=IntToStr(ZoomBar.Position)+'%';
end;

procedure TChartDialog.XOffsetBarChange(Sender: TObject);
begin
  if not Lock then Chart.View3DOptions.HorizOffset:=TScrollBar(Sender).Position;
  XOffsetLabel.Caption:=IntToStr(XOffsetBar.Position);
end;

procedure TChartDialog.YOffsetBarChange(Sender: TObject);
begin
  if not Lock then Chart.View3DOptions.VertOffset:=TScrollBar(Sender).Position;
  YOffsetLabel.Caption:=IntToStr(YOffsetBar.Position);
end;

procedure TChartDialog.UpdateAxis(Sender: TObject);
var Axis:TChartAxis;
begin
  case AxisList.ItemIndex of
    0: Axis:=Chart.LeftAxis;
    1: Axis:=Chart.BottomAxis;
    2: Axis:=Chart.RightAxis;
    3: Axis:=Chart.TopAxis;
    else Exit;
  end;
  AxisVisibleCheckBox.Checked:=Axis.Visible;
  AxisSizeEdit.Text:=IntToStr(Axis.LabelsSize);
  AxisMultiLineCheckBox.Checked:=Axis.LabelsMultiLine;
end;

procedure TChartDialog.AxisEditChange(Sender: TObject);
var Axis:TChartAxis;
begin
  if Lock then Exit;
  case AxisList.ItemIndex of
    0: Axis:=Chart.LeftAxis;
    1: Axis:=Chart.BottomAxis;
    2: Axis:=Chart.RightAxis;
    3: Axis:=Chart.TopAxis;
    else Exit;
  end;
  if Sender=AxisVisibleCheckBox then begin
    Axis.Visible:=AxisVisibleCheckBox.Checked;
  end else if Sender=AxisSizeEdit then begin
    Axis.LabelsSize:=StrToInt(AxisSizeEdit.Text);
  end else if SEnder=AxisMultiLineCheckBox then begin
    Axis.LabelsMultiLine:=AxisMultiLineCheckBox.Checked;
  end;
end;

end.
