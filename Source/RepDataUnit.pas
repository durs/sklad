unit RepDataUnit;

interface

uses
  SysUtils, StrUtils, Classes, frxClass, frxDBSet, frxDesgn, DB, IBCustomDataSet,
  IBQuery, frxExportPDF, frxExportImage, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportTXT, forms, frxGZip, fs_ipascal,
  fs_iinterpreter, frxGradient, frxRich, frxChart, frxOLE, frxBarcode,
  ActiveX, OleServer, windows, menus, DispImpl;

const
    rpPreview =     $0100;
    rpDesign =      $0200;
    rpUseProduct =  $1000;
    rpPrice1 =      $0001;
    rpPrice2 =      $0002;
    rpPrice3 =      $0004;
    rpPrice4 =      $0008;
    rpPrice5 =      $0010;
    rpPriceMask =   $001F;

    IID_IReport: TGUID = '{417FF2DF-83A9-41BB-A12B-1E7C9A18C362}';

type
  TReportOptions = record
    skladid: integer;
    clientid1: integer;
    clientid2: integer;
    date1, date2: TDateTime;
    docid: integer;
    params: integer;
    qryDoc, qryRec: TDataSet;
    copies: integer;
    strm: TStream;
  end;

  Report = record
    caption: string;
    filename: string;
    kind: Integer;
    rep: TfrxReport;
    id: integer;
  end;

  PReport = ^Report;
  ListReport = array of Report;
  PListReport = ^ListReport;

type
  TDispatchRepDataImpl = class;

  TRepData = class(TDataModule)
    qryDoc: TIBQuery;
    qryRec: TIBQuery;
    qryCredit: TIBQuery;
    qryClient1: TIBQuery;
    frxDesigner: TfrxDesigner;
    fsrcDoc: TfrxDBDataset;
    fsrcRec: TfrxDBDataset;
    fsrcCredit: TfrxDBDataset;
    fsrcClient1: TfrxDBDataset;
    qryClient2: TIBQuery;
    fsrcClient2: TfrxDBDataset;
    srcDoc: TDataSource;
    srcRec: TDataSource;
    srcCredit: TDataSource;
    srcClient1: TDataSource;
    srcClient2: TDataSource;
    frxTXTExport1: TfrxTXTExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxPDFExport1: TfrxPDFExport;
    frxGZipCompressor: TfrxGZipCompressor;
    fsScript: TfsScript;
    fsPascal1: TfsPascal;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    qryOst: TIBQuery;
    srcOst: TDataSource;
    fsrcOst: TfrxDBDataset;
    srcSklad: TDataSource;
    fsrcSklad: TfrxDBDataset;
    qryProd: TIBQuery;
    repDoc11: TfrxReport;
    repDoc12: TfrxReport;
    repDoc13: TfrxReport;
    repEmpty: TfrxReport;
    repDoc20: TfrxReport;
    repPrice: TfrxReport;
    repDoc10: TfrxReport;
    repDoc: TfrxReport;
    qryAny: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    function scUserFunction(Instance: TObject; ClassType: TClass; const MethodName: String;
        var Params: Variant): Variant;
    function repUserFunction(const MethodName: String;
        var Params: Variant): Variant;
    procedure repBeforePrint(Sender: TfrxReportComponent);
    procedure repAfterPrint(Sender: TfrxReportComponent);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryAnyBeforeOpen(DataSet: TDataSet);
  private
    frxChartObject1: TfrxChartObject;
    options: TReportOptions;
    disp: TDispatchRepDataImpl;
    procedure InitRep(rep: TfrxReport; const filename: string);
    procedure PrintRep(rep: TfrxReport; params: integer; copies: integer);
    procedure PrintRepExcel(const filename: string; var options: TReportOptions);
    procedure PrintRepWord(const filename: string; var options: TReportOptions);
    procedure DoWriteDoc(strm: TStream);

  public
    ListPrice: ListReport;
    ListDebit: ListReport;
    ListDoc: ListReport;
    ListDocProd: ListReport;
    ListDocCredit: ListReport;
    ListDocQuery: ListReport;

    function InitMenu(parent: TMenuItem; index, category: integer; event: TNotifyEvent): boolean;
    function GetReport(id: integer): PReport;
    function GetParam(id: string): Variant;

    procedure Print(repid:integer; var options: TReportOptions);
    procedure PrintDoc(repid:integer; params: integer; docid: integer = 0; qryDoc_: TDataSet = nil; qryRec_: TDataSet = nil; copies: integer = 1; strm: TStream = nil);
    procedure PrintPrice(repid: integer; params: integer; clientid: integer = 0; qryOst_: TDataSet = nil);

    procedure WriteDoc(strm: TStream; docid: integer);
  end;


  TDispatchRepDataImpl = class(TDispatchImpl)
  private
    Rep: TRepData;
    Sklad: TDispatchDataSetImpl;
    Client1, Client2: TDispatchDataSetImpl;
    Doc, DocRec: TDispatchDataSetImpl;
    SQL: TDispatchDataSetImpl;
  protected
    function DoNameResolve(const Name: string): Integer; override;
    procedure DoInvoke(DispID: Integer; Flags: Word; var Params: TVariantArray; var Ret: OleVariant); override;
  public
    constructor Create(ARep: TRepData);
    destructor Destroy; override;
  end;

var
  RepData: TRepData;

function CreateRepOptions: TReportOptions;
procedure xml_write_doc(strm: TStream; qryDoc, qryRec, qryCredit: TDataSet);

implementation

uses dyutils, tools, variants, dataunit, Graphics, controls, frxVariables, basefrm, comobj;
{$R *.dfm}

function CreateRepOptions: TReportOptions;
begin
  result.skladid := 0;
  result.clientid1 := 0;
  result.clientid2 := 0;
  result.date1 := 0;
  result.date2 := 0;
  result.docid := 0;
  result.params := 0;
  result.qryDoc := nil;
  result.qryRec := nil;
  result.copies := 1;
  result.strm := nil;
end;

procedure InitDocList(var list: ListReport; path: string; category: integer);
var
    F: TSearchRec;
    len: integer;
    fname, filter, ext: string;
    kind: integer;
begin
    path := ExtractFilePath(Application.ExeName) + 'template\' + path;
    filter := path + '*.*';
    if FindFirst(filter, faAnyFile, F) = 0 then
    repeat
        fname := F.Name;
        if (Length(fname) = 0) or (fname[1] = '~') then continue;        
        ext := ExtractFileExt(fname);
        if CompareText(ext, '.fr3') = 0 then kind := 1
        else if (CompareText(ext, '.xlt') = 0) or (CompareText(ext, '.xltm') = 0) or (CompareText(ext, '.xltx') = 0) then kind := 2
        else if (CompareText(ext, '.dot') = 0) or (CompareText(ext, '.dotm') = 0) or (CompareText(ext, '.dotx') = 0) then kind := 3
        else kind := 0;
        if kind <> 0 then
        begin
          len := Length(list);
          SetLength(list, len + 1);
          list[len].filename := path + fname;
          list[len].caption := ChangeFileExt(fname, '');
          list[len].kind := kind;
          list[len].rep := nil;
          list[len].id := len or (category shl 16);
        end;
    until FindNext(F) <> 0;
    SysUtils.FindClose(F);
end;

procedure RepRegisterExtFunctions(rep: TfrxReport; category: integer);
begin
    rep.AddFunction('Function IntToText(Curr:Extended):String', '�����', '�������������� ����� � ��������� ������ - ����� ��������');
    rep.AddFunction('Function CurrToText(Curr:Extended):String', '�����', '�������������� �������� ����� � ��������� ������ - ������ ��������');
    rep.AddFunction('Function GetSkladInfo:String', '�����', '�������� ����� � ��������� ���������� �������� ������');
    rep.AddFunction('Function AssignSkladImage(Img:Pointer):Boolean', '�����', '���������� ����������� �������� �������� ������');
    rep.AddFunction('Function AssignSkladStamp(Img:Pointer):Boolean', '�����', '���������� ����������� ������ �������� ������');
    rep.AddFunction('Function GetClient1Info:String', '�����', '�������� ����� � ��������� ���������� ��������');
    rep.AddFunction('Function AssignClient1Image(Img:Pointer):Boolean', '�����', '���������� ����������� �������� ��������');
    rep.AddFunction('Function AssignDocQRCode(Img:Pointer):Boolean', '�����', '���������� ����������� QR ���� ����������');
    if category in [2, 21, 22, 23] then rep.AddFunction('Function GetCreditInfo():String', '�����', '���������� � ����.-����. ���������');
    rep.AddFunction('Function GetPriceName(No:Integer):String', '�����', '�������� �������� ������ �� �������');
    rep.AddFunction('Function CalcTransportNDS(Curr:Extended):Extended', '�����', '���������� ��� �� ������������ ������ �� �����, �������� ���������� ��������');
    rep.AddFunction('Function GetTransportNDS:Extended', '�����', '��������� ��� �� ������������ ������ �� �����, �������� ���������� ��������');
    rep.AddFunction('Function GetDimCode(name: String):String', '�����', '��������� ���� ������� ���������');
    rep.AddFunction('Function GetCountryCode(name: String):String', '�����', '��������� ���� ������ �������������');
end;

procedure TRepData.DataModuleCreate(Sender: TObject);
begin
    // Package �� ���������������, ������� ������ �������
    frxChartObject1 := TfrxChartObject.Create(self);

    // Init dispatch
    disp := nil; //TDispatchImpl.Create(IID_IReport, DispOnInvoke);

    // Init reports
    InitDocList(ListPrice, '������\', 1);
    InitDocList(ListDebit, '�����\', 1);
    InitDocList(ListDoc, '���������\', 20);
    ListDocProd := ListDoc;
    ListDocCredit := ListDoc;
    ListDocQuery := ListDoc;
    InitDocList(ListDocProd, '���������\��������\', 21);
    InitDocList(ListDocCredit, '���������\��������\', 22);
    InitDocList(ListDocQuery, '���������\������\', 23);

    // Init functions
    RepRegisterExtFunctions(repDoc, 2);
    RepRegisterExtFunctions(repDoc10, 2);
    RepRegisterExtFunctions(repDoc11, 2);
    RepRegisterExtFunctions(repDoc12, 2);
    RepRegisterExtFunctions(repDoc13, 2);
    RepRegisterExtFunctions(repDoc20, 2);
    RepRegisterExtFunctions(repPrice, 2);
end;

procedure TRepData.DataModuleDestroy(Sender: TObject);
begin
    disp.Free;
end;

function TRepData.InitMenu(parent: TMenuItem; index, category: integer; event: TNotifyEvent): boolean;
var
    list: PListReport;
    len, i: integer;
    mi: TMenuItem;
begin
    result := false;

    if (category = 1) then list := @ListPrice
    else if (category = 2) then list := @ListDoc
    else if (category = 21) then list := @ListDocProd
    else if (category = 22) then list := @ListDocCredit
    else if (category = 23) then list := @ListDocQuery
    else if (category = 3) then list := @ListDebit
    else exit;

    len := Length(list^);
    for i := 0 to len - 1 do begin
        mi := TMenuItem.Create(self);
        mi.Caption := list^[i].caption;
        mi.Hint := list^[i].filename;
        mi.Tag := i or (category shl 16);
        mi.OnClick := event;
        parent.Insert(index, mi);
        Inc(index);
        result := true;
    end;
end;

function TRepData.GetReport(id: integer): PReport;
var
    list: PListReport;
    category: integer;
    len, i: integer;
    rep: TfrxReport;
begin
    result := nil;
    category := id shr 16;
    i := id and 255;
    if (category = 1) then list := @ListPrice
    else if (category = 2) then list := @ListDoc
    else if (category = 21) then list := @ListDocProd
    else if (category = 22) then list := @ListDocCredit
    else if (category = 23) then list := @ListDocQuery
    else if (category = 3) then list := @ListDebit
    else exit;

    len := Length(list^);
    if i >= len then exit;
    result := @list^[i];
    rep := result.rep;
    if (rep = nil) and (list^[i].kind = 1) then
    begin
        rep := TfrxReport.Create(self);
        list^[i].rep := rep;
        rep.LoadFromFile(list^[i].filename);
        rep.ReportOptions.Compressed := true;
        RepRegisterExtFunctions(rep, category);
        rep.OnUserFunction := repUserFunction;
    end;
end;

function TRepData.scUserFunction(Instance: TObject; ClassType: TClass; const MethodName: String;
  var Params: Variant): Variant;
begin
    repUserFunction(MethodName, Params);
end;

function TRepData.repUserFunction(const MethodName: String;
  var Params: Variant): Variant;
const
  qr_enln = '|';
var
    p, n, pcnt, no: integer;
    img: TObject;
    str, info, info2: string;

function qr_corr(const tok: string): string;
  begin
    result := trim(StringReplace(tok, qr_enln, ' ', [rfReplaceAll]));
  end;

begin
    result := Unassigned;
    pcnt := 0;
    if VarIsArray(Params) then pcnt := VarArrayHighBound(Params, 1) + 1;

    if CompareText(MethodName, 'IntToText') = 0 then
    try
        if pcnt > 0 then result := IntConvert(Params[0]);
    except
        result := '';
    end

    else if CompareText(MethodName, 'CurrToText') = 0 then
    try
        if pcnt > 0 then result := CurrConvert(Params[0]);
    except
        result := '';
    end

    else if CompareText(MethodName, 'CalcTransportNDS') = 0 then
    try
        if pcnt > 0 then result := CurrRound(FloatInPer(Params[0], TransportNDS));
    except
        result := '';
    end

    else if CompareText(MethodName, 'GetTransportNDS') = 0 then
    try
        result := TransportNDS;
    except
        result := '';
    end

    else if CompareText(MethodName, 'GetSkladInfo') = 0 then
    try
        result := data.getClientInfo(Data.qrySklad);
    except
        result := '';
    end

    else if CompareText(MethodName, 'GetClient1Info') = 0 then
    try
        srcDoc.DataSet.Active := true;
        srcClient1.DataSet.Active := true;
        result := data.getClientInfo(srcClient1.DataSet);
    except
        result := '';
    end

    else if CompareText(MethodName, 'AssignSkladImage') = 0 then
    try
        result := false;
        if (pcnt > 0) then img := TObject(Integer(Params[0])) else img := nil;
        if ((img <> nil) and (img is TfrxPictureView)) then
        begin
            data.getBlobImage(Data.qrySkladLOGO, (img as TfrxPictureView).Picture);
            result := ((img as TfrxPictureView).Picture.Graphic <> nil) and not (img as TfrxPictureView).Picture.Graphic.Empty;
        end;
    except
        result := false;
    end

    else if CompareText(MethodName, 'AssignSkladStamp') = 0 then
    try
        result := false;
        if (pcnt > 0) then img := TObject(Integer(Params[0])) else img := nil;
        if ((img <> nil) and (img is TfrxPictureView)) then
        begin
            data.getBlobImage(Data.qrySkladSTAMP, (img as TfrxPictureView).Picture);
            result := ((img as TfrxPictureView).Picture.Graphic <> nil) and not (img as TfrxPictureView).Picture.Graphic.Empty;
        end;
    except
        result := false;
    end

    else if CompareText(MethodName, 'AssignClient1Image') = 0 then
    try
        result := false;
        if (pcnt > 0) then img := TObject(Integer(Params[0])) else img := nil;
        if ((img <> nil) and (img is TfrxPictureView)) then
        begin
            srcDoc.DataSet.Active := true;
            srcClient1.DataSet.Active := true;
            data.getBlobImage(srcClient1.DataSet.FieldByName('LOGO') as TBlobField, (img as TfrxPictureView).Picture);
            result := ((img as TfrxPictureView).Picture.Graphic <> nil) and not (img as TfrxPictureView).Picture.Graphic.Empty;
        end;
    except
        result := false;
    end

    else if CompareText(MethodName, 'AssignDocQRCode') = 0 then
    try
        result := false;
        if (pcnt > 0) then img := TObject(Integer(Params[0])) else img := nil;
        if ((img <> nil) and (img is TfrxPictureView)) then
        begin
            srcDoc.DataSet.Active := true;
            srcClient1.DataSet.Active := true;
            srcClient2.DataSet.Active := true;

            info := 'ST00011'
            + qr_enln + 'Name=' + qr_corr(srcClient1.DataSet.FieldByName('NAME2').AsString)
            + qr_enln + 'PersonalAcc=' + qr_corr(srcClient1.DataSet.FieldByName('RS').AsString)
            + qr_enln + 'BankName=' + qr_corr(srcClient1.DataSet.FieldByName('BANK').AsString)
            + qr_enln + 'BIC=' + qr_corr(srcClient1.DataSet.FieldByName('BIK').AsString)
            + qr_enln + 'CorrespAcc=' + qr_corr(srcClient1.DataSet.FieldByName('KS').AsString)
            + qr_enln + 'Sum=' + qr_corr(IntToStr(round(srcDoc.DataSet.FieldByName('SUM0').AsFloat * 100)))
            ;

            case srcDoc.DataSet.FieldByName('KIND').AsInteger of
            docProduct: info := info + qr_enln + 'Purpose=������ �� ��������� �'
              + srcDoc.DataSet.FieldByName('DOCNO').AsString
              + ' �� ' + srcDoc.DataSet.FieldByName('DATE1').AsString;
            docQuery: info := info + qr_enln + 'Purpose=������ �� ����� �'
              + srcDoc.DataSet.FieldByName('DOCNO').AsString
              + ' �� ' + srcDoc.DataSet.FieldByName('DATE1').AsString;
            end;

            info2 := srcClient1.DataSet.FieldByName('INN').AsString;
            p := pos('/', info2);
            if p > 0 then begin
              info := info + qr_enln + 'PayeeINN=' + qr_corr(copy(info2, 1, p - 1));
              info := info + qr_enln + 'KPP=' + qr_corr(copy(info2, p + 1, length(info2) - p));
            end else begin
              info := info + qr_enln + 'PayeeINN=' + qr_corr(info2);
            end;
            info2 := srcClient2.DataSet.FieldByName('FULLNAME').AsString;
            n := 0;
            while (n < 3) and (length(info2) > 0) do begin
              p := pos(' ', info2);
              if p > 0 then begin
                str := trim(copy(info2, 1, p - 1));
                info2 := copy(info2, p + 1, length(info2) - p);
              end else begin
                str := trim(info2);
              end;
              if length(str) > 0 then begin
                inc(n);
                if n = 1 then info := info + qr_enln + 'LastName='
                else if n = 2 then info := info + qr_enln + 'FirstName='
                else if n = 3 then info := info + qr_enln + 'MiddleName=';
                info := info + qr_corr(str);
              end;
            end;
            str := srcClient1.DataSet.FieldByName('ADRESS').AsString;
            if length(str) > 0 then begin
              info := info + qr_enln + 'PayerAddress=' + qr_corr(str);
            end;
            CreateQRCode(info, (img as TfrxPictureView).Picture.Bitmap);
            result := ((img as TfrxPictureView).Picture.Graphic <> nil) and not (img as TfrxPictureView).Picture.Graphic.Empty;
        end;
    except
        result := false;
    end

    else if CompareText(MethodName, 'GetCreditInfo') = 0 then
    try
        srcDoc.DataSet.Active := true;
        info := '';
        if not srcDoc.Dataset.FieldByName('PDOCID').IsNull then begin
            srcCredit.DataSet.Active := true;
            info := '� ' + srcCredit.DataSet.FieldByName('DOCNO').AsString + ' �� ' + srcCredit.DataSet.FieldByName('DATE1').AsString;
        end;
        info2 := srcDoc.DataSet.FieldByName('COMMENT').AsString;
        if info2 <> '' then begin
            if info <> '' then info := info + ';   ';
            info := info + info2;
        end;
        result := info;
    except
        result := '';
    end

    else if CompareText(MethodName, 'GetPriceName') = 0 then
    try
        if pcnt > 0 then no := Integer(Params[0]) else no := 1;
        if no <= 1 then result := Data.qrySkladPRICE_NAME.AsString
        else if no = 2 then result := Data.qrySkladPRICE_NAME2.AsString
        else if no = 3 then result := Data.qrySkladPRICE_NAME3.AsString
        else if no = 4 then result := Data.qrySkladPRICE_NAME4.AsString
        else result := Data.qrySkladPRICE_NAME5.AsString;
    except
        result := '';
    end

    else if CompareText(MethodName, 'GetDimCode') = 0 then
    try
        if pcnt > 0 then info := Params[0] else info := '';
        if AnsiCompareText(info, '��') = 0 then result := '796'
        else if AnsiCompareText(info, '�') = 0 then result := '163'
        else if AnsiCompareText(info, '��') = 0 then result := '166'
        else if AnsiCompareText(info, '�') = 0 then result := '168'
        else if AnsiCompareText(info, '���') = 0 then result := '868'
        else if AnsiCompareText(info, '���') = 0 then result := '812'
        else result := '';
    except
        result := '';
    end

    else if CompareText(MethodName, 'GetCountryCode') = 0 then
    try
        if pcnt > 0 then info := Params[0] else info := '';
        if AnsiCompareText(info, '������') = 0 then result := '643'
        else result := '';
    except
        result := '';
    end;

end;

procedure TRepData.InitRep(rep: TfrxReport; const filename: string);
begin
    if (rep.FileName <> '') then exit;
    rep.LoadFromFile(ExtractFilePath(Application.ExeName) + 'template\' + filename);
end;

procedure TRepData.PrintRep(rep: TfrxReport; params: integer; copies: integer);
begin
    if ((params and rpDesign) <> 0) then begin
        Screen.Cursor := crDefault;
        rep.DesignReport;
    end else begin
        rep.PrepareReport;
        if ((params and rpPreview) <> 0) or (GetKeyState(VK_SHIFT) and $80 <> 0) then
            rep.ShowPreparedReport
        else begin
            rep.PrintOptions.ShowDialog := false;
            rep.PrintOptions.Copies := copies;
            rep.Print;
            rep.PrintOptions.ShowDialog := true;
        end;
    end;
end;

procedure TRepData.repBeforePrint(Sender: TfrxReportComponent);
begin
    //Screen.Cursor := crHourGlass;
end;

procedure TRepData.repAfterPrint(Sender: TfrxReportComponent);
begin
    //Screen.Cursor := crDefault;
end;

//------------------------------------------------------------------------------

procedure xml_write_doc(strm: TStream; qryDoc, qryRec, qryCredit: TDataSet);
var
  fld: TField;
  i: integer;

  procedure write(str:string);
  begin
    strm.Write(PChar(str)^, Length(str));
  end;

begin
  // write doc fields
  write(#13#10'<doc ');
  for i := 0 to qryDoc.FieldCount - 1 do begin
    fld := qryDoc.Fields[i];
    if not fld.IsNull then
      write(fld.FieldName + '="' + xml_correct(fld.AsString) + '" ');
  end;
  if (qryCredit <> nil) and qryCredit.Active then begin
    fld := qryCredit.FieldByName('DOCNO');
    if (fld <> nil) and not fld.IsNull then
      write('PDOCNO="' + xml_correct(fld.AsString) + '" ');
  end;
  Write('>');

  // write records
  if qryRec.Active then begin
    qryRec.First;
    while not qryRec.EOF do begin
      // write rec fields
      write(#13#10#9'<rec ');
      for i := 0 to qryRec.FieldCount - 1 do begin
        fld := qryRec.Fields[i];
        if not fld.IsNull then
          write(fld.FieldName + '="' + xml_correct(fld.AsString) + '" ');
      end;
      write('/>');

      qryRec.Next;
    end;
  end;

  write('</doc>');
end;


procedure TRepData.DoWriteDoc(strm: TStream);
begin
  qryDoc.Active := true;
  if qryDoc.FieldByName('KIND').AsInteger = docProduct then begin
    qryRec.Active := true;
  end;
  if not qryDoc.FieldByName('PDOCID').IsNull then begin
    qryCredit.Active := true;
  end; 
  xml_write_doc(strm, qryDoc, qryRec, qryCredit);
end;

procedure TRepData.WriteDoc(strm: TStream; docid: integer);
begin
  PrintDoc(0, 0, docid, nil, nil, 1, strm);
end;

//------------------------------------------------------------------------------

function TRepData.GetParam(id: string): Variant;
begin
    if CompareText(id, 'docid') = 0 then result := options.docid
    else if CompareText(id, 'skladid') = 0 then result := options.skladid
    else if CompareText(id, 'clientid1') = 0 then result := options.clientid1
    else if CompareText(id, 'clientid2') = 0 then result := options.clientid2
    else if CompareText(id, 'date1') = 0 then result := options.date1
    else if CompareText(id, 'date2') = 0 then result := options.date2
end;


procedure TRepData.qryAnyBeforeOpen(DataSet: TDataSet);
var
  i, cnt: integer;
  p: TParam;
begin
  cnt := TIBQuery(DataSet).Params.Count;
  for i := 0 to cnt - 1 do begin
    p := TIBQuery(DataSet).Params[i];
    p.Value := GetParam(p.Name);
  end;
end;


procedure TRepData.PrintDoc(repid: integer; params: integer; docid: integer = 0; qryDoc_: TDataSet = nil; qryRec_: TDataSet = nil; copies: integer = 1; strm: TStream = nil);
var
  options: TReportOptions;
begin
  options := CreateRepOptions();
  options.docid := docid;
  options.params := params;
  options.qryDoc := qryDoc_;
  options.qryRec := qryRec_;
  options.copies := copies;
  options.strm := strm;
  Print(repid, options)
end;

procedure TRepData.Print(repid:integer; var options: TReportOptions);
var
    rep: TfrxReport;
    repinfo: PReport;
begin
    TBaseForm.msgStatus(MsgWaitPrint);
    Screen.Cursor := crHourGlass;
    try
        self.options := options;
        repinfo := nil;

        if (repid = 0) and (options.strm <> nil) then begin
          // save as xml
        end

        else if repid = 10 then begin
            rep := repDoc10;
            InitRep(rep, '��������� �����.fr3');
        end

        else if repid = 11 then begin
            rep := repDoc11;
            InitRep(rep, '���������.fr3');
        end

        else if repid = 12 then begin
            rep := repDoc12;
            InitRep(rep, '��������� ����-12.fr3');
        end

        else if repid = 13 then begin
            rep := repDoc13;
            InitRep(rep, '����-�������.fr3');
        end

        else if repid = 20 then begin
            rep := repDoc20;
            InitRep(rep, '����.fr3');
        end

        else begin
            repinfo := GetReport(repid);
            if repinfo = nil then begin
                rep := repDoc;
                InitRep(rep, 'Invoice.fr3');
            end else begin
                rep := repinfo.rep;
            end;
        end;

        qryDoc.Active := false;
        qryDoc.Params[0].Value := options.docid;
        if options.qryDoc <> nil then srcDoc.DataSet := options.qryDoc else srcDoc.DataSet := qryDoc;
        fsrcDoc.DataSource := srcDoc;
        fsrcDoc.Enabled := true;
        //fsrcDoc.Initialize1;

        self.qryRec.Active := false;
        //qryRec.Params[0].Value := docid;
        if options.qryRec <> nil then srcRec.DataSet := options.qryRec else srcRec.DataSet := qryRec;
        fsrcRec.DataSource := srcRec;
        fsrcRec.Enabled := true;
        //fsrcRec.Initialize1;

        qryCredit.Active := false;
        srcCredit.DataSet := qryCredit;
        fsrcCredit.DataSource := srcCredit;
        fsrcCredit.Enabled := true;
        //if (docid < 0) then fsrcCredit.Initialize1;

        qryClient1.Active := false;
        if options.clientid1 <> 0 then begin
          qryClient1.DataSource := nil;
          qryClient1.Params[0].Value := options.clientid1;
        end else begin
          qryClient1.DataSource := srcDoc;
        end;
        srcClient1.DataSet := qryClient1;
        fsrcClient1.DataSource := srcClient1;
        fsrcClient1.Enabled := true;
        //if (docid < 0) then fsrcClient1.Initialize1;

        qryClient2.Active := false;
        if options.clientid2 <> 0 then begin
          qryClient2.DataSource := nil;
          qryClient2.Params[0].Value := options.clientid2;
        end else begin
          qryClient2.DataSource := srcDoc;
        end;
        srcClient2.DataSet := qryClient2;
        fsrcClient2.DataSource := srcClient2;
        fsrcClient2.Enabled := true;
        //if (docid < 0) then fsrcClient2.Initialize1;

        fsrcSklad.Enabled := false;
        fsrcOst.Enabled := false;

        srcRec.DataSet.DisableControls;

        if rep <> nil then PrintRep(rep, options.params, options.copies)
        else if (repinfo <> nil) and (repinfo.kind = 2) then PrintRepExcel(repinfo.filename, options)
        else if (repinfo <> nil) and (repinfo.kind = 3) then PrintRepWord(repinfo.filename, options)
        else if (options.strm <> nil) then DoWriteDoc(options.strm)
        ;

        srcRec.DataSet.EnableControls;

    finally
        Screen.Cursor := crDefault;
        TBaseForm.msgStatus('');
        qryDoc.Active := false;
        qryRec.Active := false;
        qryCredit.Active := false;
        qryClient1.Active := false;
        qryClient2.Active := false;
    end;
end;

procedure TRepData.PrintPrice(repid: integer; params: integer; clientid: integer = 0; qryOst_: TDataSet = nil);
var
    i: integer;
    rep: TfrxReport;
    repinfo: PReport;
begin
    TBaseForm.msgStatus(MsgWaitPrint);
    Screen.Cursor := crHourGlass;
    try
        repinfo := GetReport(repid);
        if repinfo <> nil then rep := repinfo.rep else rep := nil;
        if rep = nil then begin
            rep := repPrice;
            InitRep(rep, 'Price.fr3');
        end;

        qryOst.Active := false;
        qryProd.Active := false;
        if ((params and rpUseProduct) <> 0) and (qryOst_ = nil) then qryOst_ := qryProd;
        if (clientid > 0) then qryOst.Params[0].Value := clientid;
        if qryOst_ <> nil then srcOst.DataSet := qryOst_ else srcOst.DataSet := qryOst;
        fsrcOst.DataSource := srcOst;
        fsrcOst.Enabled := true;
        //fsrcOst.Initialize1;

        data.setActiveSklad(clientid);
        srcSklad.DataSet := Data.qrySklad;
        fsrcSklad.DataSource := srcSklad;
        fsrcSklad.Enabled := true;
        //fsrcSklad.Initialize1;

        fsrcClient2.Enabled := false;
        fsrcClient1.Enabled := false;
        fsrcCredit.Enabled := false;
        fsrcRec.Enabled := false;
        fsrcDoc.Enabled := false;

        i := rep.Variables.IndexOf('PrintPrice1');
        if i >= 0 then rep.Variables.Items[i].Value := params and rpPrice1;
        i := rep.Variables.IndexOf('PrintPrice2');
        if i >= 0 then rep.Variables.Items[i].Value := (params and rpPrice2) shr 1;
        i := rep.Variables.IndexOf('PrintPrice3');
        if i >= 0 then rep.Variables.Items[i].Value := (params and rpPrice3) shr 2;
        i := rep.Variables.IndexOf('PrintPrice4');
        if i >= 0 then rep.Variables.Items[i].Value := (params and rpPrice4) shr 2;
        i := rep.Variables.IndexOf('PrintPrice5');
        if i >= 0 then rep.Variables.Items[i].Value := (params and rpPrice5) shr 2;

       srcOst.DataSet.DisableControls;
       PrintRep(rep, params, 1);
       srcOst.DataSet.EnableControls;

    finally
        Screen.Cursor := crDefault;
        TBaseForm.msgStatus('');
        qryOst.Active := false;
        qryProd.Active := false;
    end;
end;

//------------------------------------------------------------------------------

procedure ShowExcel(const excel: variant);
begin
  if not VarIsEmpty(excel) then
  try
	  excel.Visible := true;
    excel.ScreenUpdating := true;
    excel.DisplayAlerts := true;
    excel.Interactive := true;
  except
  end;
end;

procedure TRepData.PrintRepExcel(const filename: string; var options: TReportOptions);
var
	rep, excel, wbk, wsh: Variant;
begin

  if disp = nil then disp := TDispatchRepDataImpl.Create(self);
  rep := IDispatch(disp);

	excel := CreateOleObject('Excel.Application');
  {
  try
		excel :=  GetActiveOleObject('Excel.Application');
	except
		excel := CreateOleObject('Excel.Application');
	end;
  }

  try
  	excel.Visible := false;
    excel.ScreenUpdating := false;
    excel.DisplayAlerts := false;
  	excel.Interactive := false;

    wbk := excel.Workbooks.Add(filename);
    wsh := wbk.Sheets[1];

    if ((options.params and rpDesign) <> 0) then
    begin
        Screen.Cursor := crDefault;
        ShowExcel(excel);
				MessageBox(Application.Handle, 'Excel report processing breakpoint', 'DEBUG', MB_ICONEXCLAMATION or MB_OK);
    end;

    try
      wbk.CreateReport(rep);
    except
      try
        wsh.CreateReport(rep);
      except
      end;
    end;

  finally
    if not VarIsEmpty(wbk) then
    try
	    wbk.Saved := true;
    except
    end;
    ShowExcel(excel);
  end;

end;

procedure ShowWord(const word: variant);
begin
  if not VarIsEmpty(word) then
  try
	  word.Visible := true;
    word.ScreenUpdating := true;
    word.DisplayAlerts := true;
  except
  end;
end;

procedure TRepData.PrintRepWord(const filename: string; var options: TReportOptions);
type
  FieldInfo = record
    bm: variant;
    id: string;
  end;

var
	rep, word, doc, val: Variant;
  rec_flds: array of FieldInfo;
  i, irec, cnt: integer;
  fld: TField;
  text: string;

  procedure ProcessFields(doc, rep: variant);
  var
    bm, bms, ds: variant;
    p, i, cnt, len: integer;
    name, id, fmt, text: string;
    fld: FieldInfo;
  begin
    bms := doc.Bookmarks;
    cnt := bms.Count;
    for i := cnt downto 1 do
    begin
      bm := bms.Item(i);

      // Process field text
      text := Trim(bm.Range.Text);
      len := Length(text);
      p := Pos('.', text);
      if (len > 3) and (text[1]='[') and (text[len]=']') and (p > 1) then
      begin
        name := Trim(Copy(text, 2, p - 2));
        id := Trim(Copy(text, p + 1, len - p - 1));
        p := Pos('#', id);
        if (p > 1) then
        begin
          fmt := Trim(Copy(id, p + 1));
          id := Trim(Copy(id, 1, p - 1));
        end
        else begin
          fmt := '';
        end;
      end
      else begin
        name := '';
        id := '';
        fmt := '';
      end;

      // Copy rec.* fields into array
      if AnsiCompareText(name, 'rec')=0 then
      begin
        len := Length(rec_flds);
        SetLength(rec_flds, len + 1);
        fld.id := id;
        fld.bm := bm;
        rec_flds[len] := fld;
      end

      // Fill other fields
      else try
        ds := rep.DataSet(name);
        if not VarIsType(ds, varDispatch) then text := ''
        else begin
          val := ds.Value(id);
          if VarIsNull(val) then text := ''
          else if (fmt <> 'text') or not VarIsNumeric(val) then text := ds.Value(id)
          else text := CurrConvert(val);
        end;
        bm.Range.Text := text;
      except
        bm.Range.Text := '';
      end;
    end;
  end;

begin

  if disp = nil then disp := TDispatchRepDataImpl.Create(self);
  rep := IDispatch(disp);

	word := CreateOleObject('Word.Application');

  try
	  word.Visible := false;
    word.ScreenUpdating := false;
    word.DisplayAlerts := false;

    doc := word.Documents.Add(filename);

    if ((options.params and rpDesign) <> 0) then
    begin
        Screen.Cursor := crDefault;
        ShowWord(word);
				MessageBox(Application.Handle, 'Word report processing breakpoint', 'DEBUG', MB_ICONEXCLAMATION or MB_OK);
    end;

    try
      // try call macros
      doc.CreateReport(rep);

    except

      // process doc info
      try
        ProcessFields(doc, rep);
      except
      end;

      // process record
      cnt := Length(rec_flds);
      if cnt > 0 then
      begin
        irec := 1;
        qryRec.Active := true;
        qryRec.First;
        while not qryRec.Eof do
        begin
          try
            rec_flds[0].bm.Select;
            word.Selection.InsertRowsAbove(1);
            for i := 0 to cnt - 1 do
            try
              if (rec_flds[i].id = '#') then text := IntToStr(irec)
              else begin
                fld := qryRec.FindField(rec_flds[i].id);
                if fld <> nil then text := fld.AsString else text := '';
              end;
              if Length(text) > 0 then
              begin
                rec_flds[i].bm.Select;
                word.Selection.MoveUp(5{wdLine}, 1);
                word.Selection.TypeText(text);
              end;
            except
            end;
          except
          end;
          qryRec.Next;
          Inc(irec);
        end;

        // clear record bookmarks
        for i := 0 to cnt - 1 do
        try
          rec_flds[i].bm.Range.Text := '';
        except
        end;

        // update document fields
        try
          doc.Fields.Update
        except
        end;

      end;

    end;

  finally
    if not VarIsEmpty(doc) then
    try
	    doc.Saved := true;
    except
    end;
    ShowWord(word);
  end;

end;

//------------------------------------------------------------------------------

constructor TDispatchRepDataImpl.Create(ARep: TRepData);
begin
  inherited Create(IID_IReport);
  Rep := ARep;
  Sklad := nil;
  Client1 := nil;
  Client2 := nil;
  Doc := nil;
  DocRec := nil;
  SQL := nil;
end;

destructor TDispatchRepDataImpl.Destroy;
begin
  Sklad.Free;
  Client1.Free;
  Client2.Free;
  Doc.Free;
  DocRec.Free;
  SQL.Free;
end;

function TDispatchRepDataImpl.DoNameResolve(const Name: string): Integer;
begin
  Result := inherited DoNameResolve(Name);
  if Result <> DISPID_UNKNOWN then Exit;
  if CompareText(Name, 'Value') = 0 then Result := 100
  else if CompareText(Name, 'Param') = 0 then Result := 110
  else if CompareText(Name, 'DataSet') = 0 then Result := 200
  else if CompareText(Name, 'Client1') = 0 then Result := 201
  else if CompareText(Name, 'Client2') = 0 then Result := 202
  else if CompareText(Name, 'Doc') = 0 then Result := 203
  else if CompareText(Name, 'DocRec') = 0 then Result := 204
  else if CompareText(Name, 'SQL') = 0 then Result := 300
  else if CompareText(Name, 'IntToText') = 0 then Result := 501
  else if CompareText(Name, 'CurrToText') = 0 then Result := 502
end;

procedure TDispatchRepDataImpl.DoInvoke(DispID: Integer; Flags: Word; var Params: TVariantArray; var Ret: OleVariant);
var
  cnt: integer;

begin
  cnt := Length(Params);

  if DispID = 200 then
  begin
    if (cnt < 1) {or not VarIsStr(Params[0])} then DispID := 0
    else if CompareText(Params[0], 'Client1') = 0 then DispID := 201
    else if CompareText(Params[0], 'Client2') = 0 then DispID := 202
    else if CompareText(Params[0], 'Doc') = 0 then DispID := 203
    else if CompareText(Params[0], 'DocRec') = 0 then DispID := 204
    else DispID := 0;
  end;

  case DispID of
  110: begin
    if cnt > 0 then Ret := Rep.GetParam(Params[0]) else Ret := Unassigned;
    end;
  201: begin
    try Rep.srcDoc.DataSet.Active := true; except on e:Exception do ApplicationShowException(e); end;
    if Client1 = nil then Client1 := TDispatchDataSetImpl.Create(Rep.srcClient1.DataSet);
    Ret := IDispatch(Client1);
    end;
  202: begin
    try Rep.srcDoc.DataSet.Active := true; except on e:Exception do ApplicationShowException(e); end;
    if Client2 = nil then Client2 := TDispatchDataSetImpl.Create(Rep.srcClient2.DataSet);
    Ret := IDispatch(Client2);
    end;
  203: begin
    if Doc = nil then Doc := TDispatchDataSetImpl.Create(Rep.srcDoc.DataSet);
    Ret := IDispatch(Doc);
    end;
  204: begin
    try Rep.srcDoc.DataSet.Active := true; except on e:Exception do ApplicationShowException(e); end;
    if DocRec = nil then DocRec := TDispatchDataSetImpl.Create(Rep.srcRec.DataSet);
    Ret := IDispatch(DocRec);
    end;
  300: begin
    if SQL = nil then SQL := TDispatchDataSetImpl.Create(Rep.qryAny);
    if cnt > 0 then Rep.qryAny.SQL.Text := Params[0];
    Ret := IDispatch(SQL);
    end;
  501: begin
    if cnt > 0 then Ret := IntConvert(Params[0]) else Ret := null;
    end;
  502: begin
    if cnt > 0 then Ret := CurrConvert(Params[0]) else Ret := null;
    end;
  else inherited DoInvoke(DispID, Flags, Params, Ret);
  end;
end;

end.
