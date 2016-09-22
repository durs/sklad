object RepData: TRepData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 408
  Width = 534
  object qryDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    CachedUpdates = True
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname,c1.name) client1,'
      'get_full_name(c2.fullname,c2.name) client2'
      'from doc '
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.docid=:docid')
    Left = 32
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'docid'
        ParamType = ptUnknown
        Value = '23204'
      end>
  end
  object qryRec: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    CachedUpdates = True
    DataSource = srcDoc
    SQL.Strings = (
      'select doc_prod.*, doc_prod.unit*doc_prod.cnt as allcnt,'
      'round_curr(doc_prod.unit*doc_prod.cnt*doc_prod.price) summ,'
      'round_curr(doc_prod.unit*doc_prod.cnt*doc_prod.ndsprice) ndssum,'
      
        'get_product_name(product.name, class.smallname, produser.smallna' +
        'me, product.len) product,'
      
        'product.nds, product.dim, product.len, product.weight, product.w' +
        'cnt, product.sertificat, produser.country,'
      
        'product.name productname, get_full_name(produser.fullname,produs' +
        'er.name) produser,class.name classname'
      'from doc_prod'
      'left join product on product.prodid=doc_prod.prodid'
      'left join class on class.classid=product.classid'
      'left join produser on produser.produserid=product.produserid'
      'where docid=:docid and recid > 0'
      'order by docid, recid'
      ' ')
    Left = 88
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DOCID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qryCredit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    CachedUpdates = True
    DataSource = srcDoc
    SQL.Strings = (
      'select docno,date1  from doc'
      'where docid=:pdocid')
    Left = 144
    Top = 89
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PDOCID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qryClient1: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    CachedUpdates = True
    DataSource = srcDoc
    SQL.Strings = (
      'select client.*, '
      'sklad.BUGALTER, sklad.DIRECTOR, sklad.KLADOVCHIK,'
      'sklad.title, sklad.caption, sklad.logo,'
      'sklad.comment1,sklad.comment2,'
      'sklad.town,sklad.manager,sklad.doveren'
      'from client '
      'left join sklad on sklad.clientid = client.clientid'
      'where client.clientid=:clientid1')
    Left = 200
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENTID1'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object repDoc12: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38412.012453692100000000
    ReportOptions.LastChange = 38412.012453692100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 336
    Top = 16
  end
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 32
    Top = 256
  end
  object fsrcDoc: TfrxDBDataset
    UserName = 'Doc'
    CloseDataSource = False
    DataSource = srcDoc
    BCDToCurrency = False
    Left = 32
    Top = 184
  end
  object fsrcRec: TfrxDBDataset
    UserName = 'Rec'
    CloseDataSource = False
    DataSource = srcRec
    BCDToCurrency = False
    Left = 88
    Top = 184
  end
  object fsrcCredit: TfrxDBDataset
    UserName = 'CreditDoc'
    CloseDataSource = False
    DataSource = srcCredit
    BCDToCurrency = False
    Left = 144
    Top = 184
  end
  object fsrcClient1: TfrxDBDataset
    UserName = 'Client1'
    CloseDataSource = False
    DataSource = srcClient1
    BCDToCurrency = False
    Left = 200
    Top = 184
  end
  object qryClient2: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    CachedUpdates = True
    DataSource = srcDoc
    SQL.Strings = (
      'select client.*'
      'from client '
      'where client.clientid=:clientid2')
    Left = 256
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid2'
        ParamType = ptUnknown
      end>
  end
  object fsrcClient2: TfrxDBDataset
    UserName = 'Client2'
    CloseDataSource = False
    DataSource = srcClient2
    BCDToCurrency = False
    Left = 256
    Top = 184
  end
  object srcDoc: TDataSource
    DataSet = qryDoc
    Left = 32
    Top = 136
  end
  object srcRec: TDataSource
    DataSet = qryRec
    Left = 88
    Top = 136
  end
  object srcCredit: TDataSource
    DataSet = qryCredit
    Left = 144
    Top = 136
  end
  object srcClient1: TDataSource
    DataSet = qryClient1
    Left = 200
    Top = 136
  end
  object srcClient2: TDataSource
    DataSet = qryClient2
    Left = 256
    Top = 136
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = True
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = True
    LeadSpaces = True
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 32
    Top = 304
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 64
    Top = 304
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 96
    Top = 304
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 128
    Top = 304
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 160
    Top = 304
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 192
    Top = 304
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 224
    Top = 304
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 256
    Top = 304
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 288
    Top = 304
  end
  object frxGZipCompressor: TfrxGZipCompressor
    Left = 128
    Top = 256
  end
  object fsScript: TfsScript
    SyntaxType = 'PascalScript'
    Left = 64
    Top = 256
  end
  object fsPascal1: TfsPascal
    Left = 96
    Top = 256
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 160
    Top = 256
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 192
    Top = 256
  end
  object frxRichObject1: TfrxRichObject
    Left = 256
    Top = 256
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 288
    Top = 256
  end
  object qryOst: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    SQL.Strings = (
      'select distinct(doc_prod.prodid),'
      'doc_prod.unit,'
      
        'doc_prod.newprice, doc_prod.newprice2, doc_prod.newprice3, doc_p' +
        'rod.newprice4, doc_prod.newprice5,'
      'product.name, product.len, '
      'get_full_name(class.fullname, class.name) as class,'
      'get_full_name(produser.fullname, produser.name) as produser'
      'from doc_prod'
      
        'inner join doc on doc.docid=doc_prod.docid and doc.clientid2=:cl' +
        'ientid and doc.kind=1 '
      'left join product on product.prodid=doc_prod.prodid'
      'left join class on class.classid=product.classid'
      'left join produser on produser.produserid=product.produserid'
      'where doc_prod.kind=0'
      'order by class.name, produser.name, product.name'
      ' ')
    Left = 310
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'clientid'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object srcOst: TDataSource
    DataSet = qryOst
    Left = 310
    Top = 136
  end
  object fsrcOst: TfrxDBDataset
    UserName = 'Ost'
    CloseDataSource = False
    DataSource = srcOst
    BCDToCurrency = False
    Left = 310
    Top = 184
  end
  object repPrice: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 38396.589012210600000000
    ReportOptions.LastChange = 38396.589012210600000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 88
    Top = 16
  end
  object srcSklad: TDataSource
    DataSet = Data.qrySklad
    Left = 422
    Top = 136
  end
  object fsrcSklad: TfrxDBDataset
    UserName = 'Sklad'
    CloseDataSource = False
    DataSource = srcSklad
    BCDToCurrency = False
    Left = 422
    Top = 184
  end
  object qryProd: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    SQL.Strings = (
      
        'select product.unit, product.price newprice, product.price2 newp' +
        'rice2, product.price3 newprice3, '
      'product.price4 newprice4, product.price4 newprice4, '
      'product.name, product.len, product.classid, '
      
        'class.name classname, cast(get_full_name(class.fullname, class.n' +
        'ame) as varchar(50)) class, '
      
        'produser.name produsername, cast(get_full_name(produser.fullname' +
        ', produser.name) as varchar(50)) produser '
      'from product'
      'left join class on class.classid = product.classid '
      'left join produser on produser.produserid = product.produserid '
      'where product.kind = 1'
      'order by class.name, produser.name, product.name')
    Left = 366
    Top = 88
  end
  object repDoc20: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38412.012453692100000000
    ReportOptions.LastChange = 38412.012453692100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 464
    Top = 16
  end
  object repEmpty: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38412.012453692100000000
    ReportOptions.LastChange = 38412.012453692100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 32
    Top = 16
  end
  object repDoc11: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38412.012453692100000000
    ReportOptions.LastChange = 38412.012453692100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 288
    Top = 16
  end
  object repDoc13: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38412.012453692100000000
    ReportOptions.LastChange = 38412.012453692100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 384
    Top = 16
  end
  object repDoc10: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38412.012453692100000000
    ReportOptions.LastChange = 38412.012453692100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 240
    Top = 16
  end
  object repDoc: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38412.012453692100000000
    ReportOptions.LastChange = 38412.012453692100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnAfterPrint = repAfterPrint
    OnBeforePrint = repBeforePrint
    OnUserFunction = repUserFunction
    Left = 144
    Top = 16
  end
end
