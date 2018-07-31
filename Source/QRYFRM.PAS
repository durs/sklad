unit qryfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BaseFrm, IniFiles, msxml_tlb, Variants,
  TeeProcs, TeEngine, TeePrevi, Chart, DBChart, Grids, DBGrids, Series, QuickRpt,
  ComCtrls, StdCtrls, ExtCtrls, wwdbdatetimepicker, wwdblook, Db,
  IBCustomDataSet, IBQuery, ActnList, Buttons, DBCtrls, ToolWin, Wwdbigrd,
  Wwdbgrid, Menus;

type
  TQueryParam = (qpUnknown,qpDate1,qpDate2,qpClient1,qpClient2,qpClient,qpClass,qpProduser,qpProduct);
  TParamSet = set of TQueryParam;

  TFieldRec = record
    Valid:boolean;
    Visible:boolean;
    DisplayLabel:string;
    DisplayWidth:integer;
    Alignment:TAlignment;
    DisplayFormat:string;
    Sum:Variant;
  end;

const
  QueryParamNames : array [TQueryParam] of string = ('','date1','date2','clientid1','clientid2','clientid','classid','produserid','prodid');
  QueryParamTypes : array [TQueryParam] of TFieldType = (ftUnknown,ftDateTime,ftDateTime,ftInteger,ftInteger,ftInteger,ftInteger,ftInteger,ftInteger);
  qpFirst:TQueryParam=qpDate1;
  qpLast:TQueryParam=High(TQueryParam);

type

  TQueryForm = class(TBaseForm)
    ActionList: TActionList;
    actPrint: TAction;
    actRun: TAction;
    actGraphic: TAction;
    ControlBar: TControlBar;
    barTool: TToolBar;
    btnPrint: TToolButton;
    btnGraphic: TToolButton;
    btnRun: TToolButton;
    ToolButton2: TToolButton;
    actTable: TAction;
    actOptions: TAction;
    btnOptions: TToolButton;
    ToolButton3: TToolButton;
    btnTable: TToolButton;
    ToolButton4: TToolButton;
    qryClient: TIBQuery;
    qryClass: TIBQuery;
    qryProduser: TIBQuery;
    qryProduct: TIBQuery;
    btnFullWin: TToolButton;
    actFullWindow: TAction;
    pnlSelect: TPanel;
    Label30: TLabel;
    edtQuery: TComboBox;
    DataSource: TDataSource;
    barNavigator: TPanel;
    btnFirst: TSpeedButton;
    btnPrior: TSpeedButton;
    btnNext: TSpeedButton;
    btnLast: TSpeedButton;
    btnView: TToolButton;
    actView: TAction;
    edtSklad: TDBLookupComboBox;
    pnlParam: TPanel;
    lbDate1: TLabel;
    lbProduct: TLabel;
    lbClient1: TLabel;
    lbClient2: TLabel;
    lbDate2: TLabel;
    edtClass: TwwDBLookupCombo;
    edtProduser: TwwDBLookupCombo;
    edtProduct: TwwDBLookupCombo;
    edtClient1: TwwDBLookupCombo;
    edtClient2: TwwDBLookupCombo;
    edtDate1: TwwDBDateTimePicker;
    edtDate2: TwwDBDateTimePicker;
    qryClientCLIENTID: TIntegerField;
    qryClientNAME: TIBStringField;
    qryClassCLASSID: TIntegerField;
    qryClassNAME: TIBStringField;
    qryProduserPRODUSERID: TIntegerField;
    qryProduserNAME: TIBStringField;
    qryProductPRODID: TIntegerField;
    qryProductCLASSID: TIntegerField;
    qryProductPRODUSERID: TIntegerField;
    qryProductNAME: TIBStringField;
    qryProductLEN: TIBStringField;
    qry: TIBQuery;
    mPrint: TPopupMenu;
    miReport: TMenuItem;
    N1: TMenuItem;
    miPrintFile: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRunExecute(Sender: TObject);
    procedure ViewActionExecute(Sender: TObject);
    procedure UpdateQuery(Sender: TObject);
    procedure actOptionsExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actFullWindowExecute(Sender: TObject);
    procedure ChartMouseMove(Sender:TObject; Shift:TShiftState; X,Y:Integer);
    procedure QueryBeforeOpen(DataSet: TDataSet);
    procedure QueryAfterOpen(DataSet: TDataSet);
    procedure NavigatorBtnClick(Sender: TObject);
    procedure LoadChildQuery(Sender:TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure grdCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure grdTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure grdUpdateFooter(Sender: TObject);
    procedure grdRecKeyPress(Sender: TObject; var Key: Char);
  private
    root:IXMLDOMElement;
  protected
    Queries:array of IXMLDOMElement;
    Grid:TwwDBGrid;
    Chart:TDBChart;
    ChildQuery:string;
    OrderBy,SummaryFields:string;
    Fields:array of TFieldRec;
    Lock:boolean;
    SaveParent:TWinControl;
    SaveRect:TRect;
    function ParamsByName(const Name:string):TQueryParam;
    function ParamsGetValue(Param:TQueryParam):variant;
    procedure ParamsSetValue(Param:TQueryParam; Value:variant);
    procedure ParamsUpdate(Params:TParamSet);
    function QueryParamsGet(Q:TIBQuery):TParamSet;
    procedure QueryParamsSet(Q:TIBQuery; Params:TParamSet);
    function ExecSQLScript(const SQL:string):string;
    procedure LoadQueryList;
    procedure LoadQuery;
    procedure LoadChart;
    procedure LoadGrid;
    procedure ReadChart(Sender:TObject);
    procedure WriteChart(Sender:TObject);
    procedure DestroyCancel; override;
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
  public
    constructor Create(AOwner:TComponent); override;
  end;

var
    doc:IXMLDOMDocument;

implementation
uses
    dyutils,dydbutil,dychart,config,print,dataunit,
    comobj;
{$R *.DFM}


constructor TQueryForm.Create(AOwner:TComponent);
var
    v:string;
    err:IXMLDOMParseError;
begin
    inherited;
    if doc=nil then begin
        doc:=CreateComObject(CLASS_DOMDocument) as IXMLDOMDocument;
        if not doc.load(AppPath+QueriesFileName) then begin
            err:=doc.parseError;
            text:=err.srcText;
            if (text<>'') then text:='строка '+IntToStr(err.line)+' позиция '+IntToStr(err.linepos)+':'#13#10+text;
            text:=err.url+#13#10+err.reason+text;
            raise Exception.Create(text);
        end;
    end;
    root:=doc.documentElement;

    btnFirst.Glyph.Handle:=LoadBitmap(HInstance,'DBN_FIRST');
    btnPrior.Glyph.Handle:=LoadBitmap(HInstance,'DBN_PRIOR');
    btnNext.Glyph.Handle:=LoadBitmap(HInstance,'DBN_NEXT');
    btnLast.Glyph.Handle:=LoadBitmap(HInstance,'DBN_LAST');
    edtSklad.KeyValue:=Data.qrySkladCLIENTID.Value;
    v:=CurrentConfig.getString(key+'.date1');
    if v<>'' then try edtDate1.Date:=StrToDate(v); except end;
    v:=CurrentConfig.getString(key+'.date2');
    if v<>'' then try edtDate2.Date:=StrToDate(CurrentConfig.getString(key+'.date2')); except end;
    LoadQueryList;
    qryClient.Active:=true;
    qryClass.Active:=true;
    qryProduser.Active:=true;
    qryProduct.Active:=true;
end;

procedure TQueryForm.DestroyCancel;
begin
    inherited;
    qryProduct.Active:=true;
    qryClass.Active:=true;
    qryProduser.Active:=true;
end;

procedure TQueryForm.FormDestroy(Sender: TObject);
begin
    CurrentConfig.setString(key+'.date1',edtDate1.Text);
    CurrentConfig.setString(key+'.date2',edtDate2.Text);
end;

procedure TQueryForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DestroyTimeout;
end;

function TQueryForm.ParamsByName(const Name:string):TQueryParam;
var Param:TQueryParam;
begin
  Result:=qpUnknown;
  for Param:=qpFirst to qpLast do
    if AnsiCompareText(Name,QueryParamNames[Param])=0 then begin
      Result:=Param;
      Break;
    end;
end;

procedure TQueryForm.ParamsUpdate(Params:TParamSet);
begin
  edtDate1.Enabled:=qpDate1 in Params; lbDate1.Enabled:=edtDate1.Enabled; if not edtDate1.Enabled then edtDate1.Date:=0;
  edtDate2.Enabled:=qpDate2 in Params; lbDate2.Enabled:=edtDate2.Enabled; if not edtDate2.Enabled then edtDate2.Date:=0;
  edtClient1.Enabled:=qpClient1 in Params; lbClient1.Enabled:=edtClient1.Enabled; if not edtClient1.Enabled then edtClient1.DisplayValue:='';
  edtClient2.Enabled:=qpClient2 in Params; lbClient2.Enabled:=edtClient2.Enabled; if not edtClient2.Enabled then edtClient2.DisplayValue:='';
  edtClass.Enabled:=qpClass in Params; if not edtClass.Enabled then edtClass.DisplayValue:='';
  edtProduser.Enabled:=qpProduser in Params; if not edtProduser.Enabled then edtProduser.DisplayValue:='';
  edtProduct.Enabled:=qpProduct in Params; if not edtProduct.Enabled then edtProduct.DisplayValue:='';
  lbProduct.Enabled:=edtProduct.Enabled or edtProduser.Enabled or edtClass.Enabled;
end;

function TQueryForm.ParamsGetValue(Param:TQueryParam):variant;
begin
  case Param of
    qpDate1: if edtDate1.Date=0 then Result:=Null else Result:=edtDate1.Date;
    qpDate2: if edtDate2.Date=0 then Result:=Null else Result:=edtDate2.Date;
    qpClient: Result:=edtSklad.KeyValue;
    qpClient1: if edtClient1.DisplayValue='' then Result:=Null else Result:=edtClient1.LookupValue;
    qpClient2: if edtClient2.DisplayValue='' then Result:=Null else Result:=edtClient2.LookupValue;
    qpProduct: if edtProduct.DisplayValue='' then Result:=Null else Result:=edtProduct.LookupValue;
    qpProduser: if edtProduser.DisplayValue='' then Result:=Null else Result:=edtProduser.LookupValue;
    qpClass: if edtClass.DisplayValue='' then Result:=Null else Result:=edtClass.LookupValue;
  end;
end;

procedure TQueryForm.ParamsSetValue(Param:TQueryParam; Value:variant);
begin
  case Param of
    qpDate1: if Value=Null then edtDate1.Date:=0 else edtDate1.Date:=TDateTime(Value);
    qpDate2: if Value=Null then edtDate2.Date:=0 else edtDate2.Date:=TDateTime(Value);
    qpClient1: if Value=Null then edtClient1.DisplayValue:='' else edtClient1.LookupValue:=string(Value);
    qpClient2: if Value=Null then edtClient2.DisplayValue:='' else edtClient2.LookupValue:=string(Value);
    qpProduct: if Value=Null then edtProduct.DisplayValue:='' else edtProduct.LookupValue:=string(Value);
    qpProduser: if Value=Null then edtProduser.DisplayValue:='' else edtProduser.LookupValue:=string(Value);
    qpClass: if Value=Null then edtClass.DisplayValue:='' else edtClass.LookupValue:=string(Value);
  end;
end;

function TQueryForm.QueryParamsGet(Q:TIBQuery):TParamSet;
var
    i:integer;
    j:TQueryParam;
begin
    Result:=[];
    for i:=0 to Q.Params.Count-1 do with Q.Params[i] do begin
        for j:=qpFirst to qpLast do if Name=QueryParamNames[j] then begin
            Include(Result,j);
            Break;
        end;
    end;
end;

procedure TQueryForm.QueryParamsSet(Q:TIBQuery; Params:TParamSet);
var Param:TQueryParam;
begin
    for Param:=qpFirst to qpLast do
        if Param in Params then with Q.ParamByName(QueryParamNames[Param]) do begin
            DataType:=QueryParamTypes[Param];
            Value:=ParamsGetValue(Param);
        end;
end;

function TQueryForm.ExecSQLScript(const SQL:string):string;
var
  ParamName:PChar;
  Param:TQueryParam;
  P,P2,L:integer;
  B:boolean;
  tmp:string;
begin
  tmp:=AnsiLowerCase(SQL);
  Result := '';
  repeat
    L := Length(tmp);
    P := Pos('/*$if', tmp);
    if P > 0 then begin
      B:=false; ParamName:=@tmp[P+6];
      for Param:=qpFirst to qpLast do
        if CompareMem(ParamName,PChar(QueryParamNames[Param]),length(QueryParamNames[Param])) then begin
          B := ParamsGetValue(Param) <> Null;
          Break;
        end;

      Result := Result + Copy(tmp, 1, P - 1);
      tmp := Copy(tmp, P + 6, L);
      L := Length(tmp);
      P := AnsiPos('/*$endif*/', tmp); if P < 1 then P := L;

      if B then begin
        P2 := Pos('*/', tmp); if P2 < 1 then P2 := L;
        Result := Result + Copy(tmp, P2 + 2, P - P2 - 2);
      end;
      tmp := Copy(tmp, P + 10, L);
    end else begin
        Result := Result + tmp;
    end;
  until P < 1;
end;

procedure TQueryForm.LoadQueryList;
var
    qlist:IXMLDOMNodeList;
    i,cnt:integer;
begin
    qlist:=root.getElementsByTagName('query');
    cnt:=qlist.length;
    edtQuery.Items.Clear;
    SetLength(Queries,cnt);
    for i:=0 to cnt-1 do begin
        Queries[i]:=qlist.item[i] as IXMLDOMElement;
        edtQuery.Items.Add(getVarString(Queries[i].getAttribute('label')));
    end;
    if edtQuery.Items.Count>0 then begin
        edtQuery.ItemIndex:=0;
        UpdateQuery(edtQuery);
        if edtQuery.Items.Count<15 then edtQuery.DropDownCount:=edtQuery.Items.Count;
    end else begin
        edtQuery.ItemIndex:=-1;
    end;
end;

procedure TQueryForm.LoadQuery;
var
    list:IXMLDOMNodeList;
    elm:IXMLDOMElement;
    value:string;
    i,cnt:integer;
    fld:TField;
    qry:TIBQuery;
begin
    if edtQuery.ItemIndex<0 then exit;
    elm:=Queries[edtQuery.ItemIndex];
    try
        SummaryFields:=getVarString(elm.getAttribute('summary'));
        ChildQuery:=getVarString(elm.getAttribute('href'));
        list:=elm.getElementsByTagName('sql');
        if list.length<0 then exit;
        value:=list.item[0].text;
        qry:=TIBQuery.Create(DataSource);
        qry.Name:='Query';
        qry.Database:=qryClient.Database;
        qry.SQL.Text:=ExecSQLScript(value);
        QueryParamsSet(qry,QueryParamsGet(qry));

        qry.Active:=true;

        SetLength(Fields,0);
        SetLength(Fields,qry.FieldCount);
        for i:=0 to qry.FieldCount-1 do Fields[i].Valid:=false;
        list:=Queries[edtQuery.ItemIndex].getElementsByTagName('field');
        cnt:=list.length;
        for i:=0 to cnt-1 do begin
            elm:=list.item[i] as IXMLDOMElement;
            value:=getVarString(elm.getAttribute('name'));
            if (value='') then continue;
            fld:=qry.FindField(value);
            if fld=nil then continue;
            Fields[fld.Index].Valid:=true;
            Fields[fld.Index].Visible:=getVarBool(elm.getAttribute('visible'),true);
            if not Fields[fld.Index].Visible then continue;
            Fields[fld.Index].DisplayLabel:=getVarString(elm.getAttribute('label'),fld.DisplayLabel);
            Fields[fld.Index].DisplayWidth:=getVarInteger(elm.getAttribute('width'),fld.DisplayWidth);
            Fields[fld.Index].Alignment:=TAlignment(getVarInteger(elm.getAttribute('alignment'),integer(fld.Alignment)));
            Fields[fld.Index].DisplayFormat:=getVarString(elm.getAttribute('format'));
        end;
        for i:=0 to qry.FieldCount-1 do begin
            if Pos(qry.Fields[i].FieldName+';',SummaryFields)>0 then TVarData(Fields[i].Sum).VType:=varDouble;
        end;
        QueryAfterOpen(qry);
        if SummaryFields<>'' then while not qry.EOF do begin
            for i:=0 to qry.FieldCount-1 do with TVarData(Fields[i].Sum) do
                if VType=varDouble then VDouble:=VDouble+qry.Fields[i].AsFloat;
            qry.Next;
        end;
        OrderBy:=SQLOrderByGet(qry.SQL.Text);
        qry.BeforeOpen:=QueryBeforeOpen;
        qry.AfterOpen:=QueryAfterOpen;
        DataSource.Dataset:=qry;
    except
        DataSource.DestroyComponents;
        raise;
    end;
    ViewActionExecute(nil);
end;

procedure TQueryForm.QueryBeforeOpen(DataSet: TDataSet);
begin
    TIBQuery(Dataset).SQL.Text:=SQLOrderBySet(TIBQuery(Dataset).SQL.Text,OrderBy);
end;

procedure TQueryForm.QueryAfterOpen(DataSet: TDataSet);
var
    i:integer;
begin
    for i:=0 to Dataset.FieldCount-1 do with Dataset.Fields[i] do if Fields[i].Valid then begin
        Visible:=Fields[i].Visible;
        DisplayLabel:=Fields[i].DisplayLabel;
        DisplayWidth:=Fields[i].DisplayWidth;
        Alignment:=Fields[i].Alignment;
        if ClassType.InheritsFrom(TNumericField) then TFloatField(Dataset.Fields[i]).DisplayFormat:=Fields[i].DisplayFormat;
    end;
end;

procedure TQueryForm.LoadChart;
begin
    SetFocus();
    Grid.Free; Grid:=nil;
    if (DataSource.Dataset=nil) or (Chart<>nil) then Exit;
    Chart:=TDBChart.Create(DataSource);
    Chart.BevelOuter:=bvNone;
    Chart.Align:=alClient;
    with Chart.Title.Font do begin
        Size:=10;
        Style:=[fsBold];
    end;
    Chart.Name:='Chart'+IntToStr(edtQuery.ItemIndex);
    Chart.OnMouseMove:=ChartMouseMove;
    //Chart.OnKeyDown:=FormKeyDown;
    Chart.Parent:=self;
    actOptions.Visible:=true;
    ReadChart(Chart);
end;

procedure TQueryForm.ReadChart(Sender:TObject);
var
    elm:IXMLDOMElement;
    list:IXMLDOMNodeList;
    i,cnt:integer;
    data:string;
    strm:TStream;
begin
    elm:=Queries[edtQuery.ItemIndex];
    list:=elm.getElementsByTagName('chart');
    cnt:=list.length;
    if cnt<1 then exit;
    elm:=list.item[0] as IXMLDOMElement;
    list:=elm.childNodes;
    cnt:=list.length;
    for i:=0 to cnt-1 do
        if list.item[i].nodeType=NODE_CDATA_SECTION then begin
            data:=StrToMem((list.item[i] as IXMLDOMCDATASection).data);
            break;
        end;
    strm:=nil;
    if data<>'' then try
        strm:=TStringStream.Create(data);
        ChartLoadFromStream(Chart,strm);
    finally
        strm.Free;
    end;
end;

procedure TQueryForm.WriteChart(Sender:TObject);
var
    elm,elm2:IXMLDOMElement;
    list:IXMLDOMNodeList;
    i,cnt:integer;
    strm:TStringStream;
begin
    elm:=Queries[edtQuery.ItemIndex];
    list:=elm.getElementsByTagName('chart');
    cnt:=list.length;
    for i:=cnt-1 downto 0 do elm.removeChild(list.item[i]);
    strm:=TStringStream.create('');
    try
        ChartSaveToStream(Chart,strm);
        elm2:=doc.createElement('chart');
        elm2.appendChild(doc.createCDATASection(MemToStr(strm.DataString)));
        elm.appendChild(elm2);
    finally
        strm.Free;
    end;
    doc.save(AppPath+QueriesFileName);
end;

procedure TQueryForm.LoadGrid;
begin
    SetFocus();
    if ChartDialog<>nil then ChartDialog.Visible:=false;
    actOptions.Visible:=false;
    Chart.Free; Chart:=nil;
    if (DataSource.Dataset=nil) or (Grid<>nil) then Exit;
    Grid:=TwwDBGrid.Create(self);
    Grid.Options:=Grid.Options-[dgEditing]+[dgShowFooter];
    Grid.TitleButtons:=true;
    Grid.Align:=alClient;
    Grid.LineStyle:=gls3D;
    Grid.PadColumnStyle:=pcsPlain;
    Grid.TitleImageList:=data.imgTitle;
    //Grid.OnDblClick:=LoadChildQuery;
    Grid.OnTitleButtonClick:=grdTitleButtonClick;
    Grid.OnCalcTitleAttributes:=grdCalcTitleAttributes;
    Grid.OnCalcTitleImage:=grdCalcTitleImage;
    Grid.OnUpdateFooter:=grdUpdateFooter;
    //Grid.OnKeyDown:=FormKeyDown;
    Grid.OnKeyPress:=grdRecKeyPress;
    Grid.DataSource:=DataSource;
    Grid.Parent:=self;
end;

procedure TQueryForm.LoadChildQuery(Sender:TObject);
var
    elm:IXMLDOMElement;
    qry:TIBQuery;
    data:TStringList;
    id:string;
    FieldName:string;
    Value:variant;
    Param:TQueryParam;
    i:integer;
begin
    qry:=TIBQuery(DataSource.Dataset);
    if (qry=nil) or (qry.EOF and qry.BOF) then Exit;
    elm:=Queries[edtQuery.ItemIndex];
    data:=TStringList.Create;
    try
        data.CommaText:=getVarString(elm.getAttribute('href'));
        id:=data.Values['id'];
        if (id='') then Exit;
        for i:=0 to High(Queries) do begin
            if getVarString(Queries[i].getAttribute('id'))=id then begin
                Lock:=true;
                try
                    for Param:=qpFirst to qpLast do begin
                        FieldName:=data.Values[QueryParamNames[Param]];
                        if FieldName<>'' then begin
                            Value:=qry[FieldName];
                            if Value<>Null then ParamsSetValue(Param,Value);
                        end;
                    end;
                    edtQuery.ItemIndex:=i;
                finally
                    Lock:=false;
                    UpdateQuery(edtQuery);
                end;
                btnRun.Down:=true;
                actRun.Execute;
                break;
            end;
        end;
    finally
        data.Free;
    end;
end;

procedure TQueryForm.actRunExecute(Sender:TObject);
begin
    if btnRun.Down then try
        msgStatus(msgWaitQuery);
        LoadQuery;
    finally
        msgStatus('');
        if DataSource.DataSet=nil then btnRun.Down:=false;
    end else begin
        if ChartDialog<>nil then ChartDialog.Visible:=false;
        actOptions.Visible:=false;
        if (Grid <> nil) then Grid.Parent := nil;
        Grid.Free; Grid:=nil;
        Chart.Free; Chart:=nil;
        DataSource.DestroyComponents;
    end;
end;

procedure TQueryForm.UpdateQuery(Sender: TObject);
var list:IXMLDOMNodeList;
begin
    if Lock then Exit;
    Lock:=true;
    try
        btnRun.Down:=false;
        actRun.Execute;
        if Sender=edtQuery then with Queries[edtQuery.ItemIndex] do begin
            list:=getElementsByTagName('sql');
            if list.length>0 then begin
                qry.SQL.Text:=list.item[0].text;
                ParamsUpdate(QueryParamsGet(qry));
            end;
            //actView.Enabled:=getVarString(getAttribute('href'))<>'';
        end else if Sender=edtProduct then begin
            if edtProduct.LookupValue<>'' then begin
                edtClass.LookupValue:=qryProductCLASSID.AsString;
                edtProduser.LookupValue:=qryProductPRODUSERID.AsString;
            end;
        end else if Sender=edtClass then begin
            if edtClass.LookupValue<>'' then edtProduct.LookupValue:='';
        end else if Sender=edtProduser then begin
            if edtProduser.LookupValue<>'' then edtProduct.LookupValue:='';
        end;
    finally
        Lock:=false;
    end;
end;

procedure TQueryForm.ViewActionExecute(Sender: TObject);
begin
    if btnGraphic.Down then LoadChart else LoadGrid;
end;

procedure TQueryForm.actOptionsExecute(Sender: TObject);
begin
    if Chart=nil then Exit;
    if ChartDialog=nil then begin
        ChartDialog:=TChartDialog.Create(self);
        ChartDialog.OnWriteChart:=WriteChart;
        ChartDialog.OnReadChart:=ReadChart;
    end;
    ChartDialog.Chart:=Chart;
    ChartDialog.ShowModal;
end;

procedure TQueryForm.actPrintExecute(Sender: TObject);
var
    Title,Caption:string;
begin
    Title:=edtQuery.Text + ' ' + edtSklad.Text;
    Caption:='';
    if edtDate1.Date=edtDate2.Date then begin
        if edtDate1.Date<>0 then Caption:=Caption+' за '+DateToStr(edtDate1.Date)
    end else begin
        if edtDate1.Date<>0 then Caption:=Caption+' c '+DateToStr(edtDate1.Date);
        if edtDate2.Date<>0 then Caption:=Caption+' по '+DateToStr(edtDate2.Date);
    end;
    if Chart<>nil then printChart(Title, Caption, Chart)
    else if DataSource.Dataset<>nil then begin
        if (Sender = miPrintFile) and (Grid <> nil) then Data.save(Grid, Title + ' ' + Caption, 'query', edtDate1.Date, edtDate2.Date, 0)
        else printAuto(Title, Caption, DataSource.Dataset, SummaryFields);
    end;
end;

procedure TQueryForm.actFullWindowExecute(Sender: TObject);
begin
    Visible:=false;
    if btnFullWin.Down then begin
        BorderStyle:=bsNone;
        SaveRect:=BoundsRect;
        BoundsRect:=Rect(0,0,Screen.Width,Screen.Height);
        if SaveParent=nil then SaveParent:=Parent;
        Parent:=nil;
    end else begin
        if SaveParent=nil then begin
            BorderStyle:=bsSizeable;
            Align:=alNone;
        end;
        Parent:=SaveParent; SaveParent:=nil;
        BoundsRect:=SaveRect;
    end;
    pnlParam.Visible:=false;
    Visible:=true;
    pnlParam.Visible:=not btnFullWin.Down;
end;

procedure TQueryForm.ChartMouseMove(Sender:TObject; Shift:TShiftState; X,Y:Integer);
var
    i,N:integer;
    Str0,Str1,Str2,Str3:string;
begin
    Str0:=''; Str1:=''; Str2:=''; Str3:='';
    N:=-1;
    for i:=0 to Chart.SeriesCount-1 do with Chart.Series[i] do begin
        N:=Clicked(X,Y);
        if not Active then N:=-1;
        if N<>-1 then begin
            Str0:=Title;
            if XLabelsSource<>'' then begin
                Str1:=XLabel[N];
                if YValues.ValueSource<>'' then begin
                    if YValues.DateTime then Str2:=DateToStr(YValue[N]) else Str2:=FormatFloat(ValueFormat,YValue[N]);
                end else if XValues.ValueSource<>'' then begin
                    if XValues.DateTime then Str2:=DateToStr(XValue[N]) else Str2:=FormatFloat(ValueFormat,XValue[N]);
                end;
                Str3:='('+MarkPercent(N,false)+')';
            end else begin
                if XValues.ValueSource<>'' then begin
                    if XValues.DateTime then Str2:=DateToStr(XValue[N]) else Str2:=FormatFloat(ValueFormat,XValue[N]);
                end;
                if YValues.ValueSource<>'' then begin
                    if YValues.DateTime then Str1:=DateToStr(YValue[N]) else Str1:=FormatFloat(ValueFormat,YValue[N]);
                end;
            end;
            Break;
        end;
    end;
    if N=-1
        then msgStatus(' ')
        else msgStatus(' '+Str0+':   '+Str1+'   '+Str2+'   '+Str3);
end;

procedure TQueryForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
    inherited;
    case Event of
        appClientChange: begin
            qryClient.Active:=false;
            if not (fsInactive in State) then qryClient.Active:=true;
        end;
        appProductChange: begin
            qryProduct.Active:=false;
            qryClass.Active:=false;
            qryProduser.Active:=false;
            if not (fsInactive in State) then begin
                qryProduct.Active:=true;
                qryClass.Active:=true;
                qryProduser.Active:=true;
            end;
        end;
    end;
end;

procedure TQueryForm.NavigatorBtnClick(Sender: TObject);
begin
    if Grid<>nil then with DataSource.Dataset do case TComponent(Sender).Tag of
        1:First;
        2:Prior;
        3:Next;
        4:Last;
    end else if Chart<>nil then case TComponent(Sender).Tag of
        1: Chart.Page:=0;
        2: Chart.PreviousPage;
        3: Chart.NextPage;
        4: Chart.Page:=Chart.NumPages-1;
    end;
end;

procedure TQueryForm.grdCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
var
    N:integer;
    Field:TField;
begin
    Field:=DataSource.DataSet.FieldByName(AFieldName);
    N:=SQLOrderByState(OrderBy,Field.Index+1);
    if N=0 then begin
        AFont.Style:=[];
    end else begin
        AFont.Style:=[fsBold];
    end;
end;

procedure TQueryForm.grdCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
    case SQLOrderByState(OrderBy,Field.Index+1) of
        -1 : TitleImageAttributes.ImageIndex:=1;
        1  : TitleImageAttributes.ImageIndex:=0;
        else TitleImageAttributes.ImageIndex:=-1;
    end;
end;

procedure TQueryForm.grdTitleButtonClick(Sender: TObject;
  AFieldName: String);
var
    Field:TField;
begin
    Field:=DataSource.DataSet.FieldByName(AFieldName);
    if SQLOrderByUpdate(OrderBy,Field.Index+1) then with DataSource.Dataset do try
        DisableControls;
        Active:=false;
        Active:=true;
    finally
        EnableControls;
    end;
end;

procedure TQueryForm.grdUpdateFooter(Sender: TObject);
var
    j:integer;
    qry:TIBQuery;
begin
    qry:=TIBQuery(DataSource.DataSet);
    for j:=0 to qry.FieldCount-1 do with TVarData(Fields[j].Sum) do if VType=varDouble then begin
        if qry.Fields[j] is TFloatField
            then Grid.ColumnByName(qry.Fields[j].FieldName).FooterValue:=FormatFloat(TFloatField(qry.Fields[j]).DisplayFormat,VDouble)
            else Grid.ColumnByName(qry.Fields[j].FieldName).FooterValue:=FormatFloat(FormatInt,VDouble);
    end;
end;

procedure TQueryForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case data.getKeyAction(key,shift) of
        keyView : actView.Execute;
        keyRefresh : begin btnRun.Down:=not btnRun.Down; actRun.Execute; end;
        keyPrint : btnPrint.CheckMenuDropdown;
        keySearch : if Visible and edtQuery.CanFocus then edtQuery.SetFocus;
        keyExecute : begin btnRun.Down:=not btnRun.Down; actRun.Execute; end;
        keyProcess : ;
        else case Key of
            word('G'),word('g'): begin
                if ssCtrl in Shift then begin btnGraphic.Down:=true; actGraphic.Execute; end
                else Exit;
            end;
            word('T'),word('t'): begin
                if ssCtrl in Shift then begin btnTable.Down:=true; actTable.Execute; end
                else Exit;
            end;
            else Exit;
        end
    end;
    key:=0;
end;

procedure TQueryForm.grdRecKeyPress(Sender: TObject; var Key: Char);
begin
    Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

end.
