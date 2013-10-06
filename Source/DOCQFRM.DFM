object QueryDocForm: TQueryDocForm
  Left = 370
  Top = 188
  Width = 584
  Height = 407
  ActiveControl = edtNo
  Caption = #1047#1072#1082#1072#1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000008888888888888880000000000000000
    0000000000000000800000000000000000FFFFFFFFF777800800000000000000
    00FFFFFFFFFF7780808000000000000000FFF87777FF77807808000000000000
    00FFF7EA87FF7780F78080000000000000FFF7E787FFF780FF78080000000000
    00FFF78AB7FFF780FFF780800000000000FFF87777F7FF80FFFF780800000000
    00FFFFFFFFFFFFF0000000008000000000FFFFFFFFFFFFFFFFFFF77080000000
    00FFFFFF77777777FFFFFF708000000000FFFFFFFFFFFFFFFFFFFFF080000000
    00FFFF777777777777FFFFF08000000000FFFFFFFFFFFFFFFFFFFFF080000000
    00FFF777777777777777FFF08000000000FFFFFFFFFFFFFFFFFFFFF080000000
    00FFF777777777777777FFF08000000000FFFFFFFFFFFFFFFFFFFFF080000000
    00FFF777777777777777FFF08000000000FFFFFFFFFFFFFFFFFFFFF080000000
    00FFFFFFFFFFFFFFFFFFFFF08000000000FFFFFFFFFF77777777FFF080000000
    00FFFFFFFFFF77777777FFF08000000000FFFFFFFFFFFFFFFFFFFFF080000000
    00FFFFFFFFFFFFFFFFFFFFF08000000000FFFFF88888888888FFFFF080000000
    00FFFFFFFFFFFFFFFFFFFFF08000000000FFFFFFFFFFFFFFFFFFFFF080000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFF8000FFFF80007FFF80003FFF80001FFF80000FFF800007FF800003FF800
    001FF800000FF8000007F8000007F8000007F8000007F8000007F8000007F800
    0007F8000007F8000007F8000007F8000007F8000007F8000007F8000007F800
    0007F8000007F8000007F8000007F8000007F8000007F800000FFFFFFFFF}
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 42
    Width = 576
    Height = 95
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 84
      Top = 10
      Width = 11
      Height = 13
      Caption = #8470
    end
    object Label3: TLabel
      Left = 200
      Top = 10
      Width = 11
      Height = 13
      Caption = #1086#1090
    end
    object Label4: TLabel
      Left = 67
      Top = 64
      Width = 26
      Height = 13
      Caption = #1050#1086#1084#1091
    end
    object btnClient2: TSpeedButton
      Left = 344
      Top = 62
      Width = 19
      Height = 19
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888880888808080808088800088888888888880F708888888888880FF7088888
        88888880FF708888888888880FF708888888888880FF708088888888880FF000
        0888888888800B0080888888888800F708088888888880FF708888888888880F
        F708888888888880FF0888888888888800808888888888888808}
      OnClick = btnClientClick
    end
    object Label5: TLabel
      Left = 54
      Top = 40
      Width = 39
      Height = 13
      Caption = #1054#1090' '#1082#1086#1075#1086
    end
    object btnClient1: TSpeedButton
      Left = 344
      Top = 38
      Width = 19
      Height = 19
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888880888808080808088800088888888888880F708888888888880FF7088888
        88888880FF708888888888880FF708888888888880FF708088888888880FF000
        0888888888800B0080888888888800F708088888888880FF708888888888880F
        F708888888888880FF0888888888888800808888888888888808}
      OnClick = btnClientClick
    end
    object lbDocID: TDBText
      Left = 7
      Top = 10
      Width = 39
      Height = 13
      AutoSize = True
      DataField = 'DOCID'
      DataSource = srcDoc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnShadow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtNo: TDBEdit
      Left = 105
      Top = 8
      Width = 72
      Height = 21
      DataField = 'DOCNO'
      DataSource = srcDoc
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object edtClient2: TwwDBLookupCombo
      Left = 104
      Top = 61
      Width = 241
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
      DataField = 'CLIENTNAME2'
      DataSource = srcDoc
      LookupTable = qryClient
      LookupField = 'NAME'
      ReadOnly = True
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      SearchDelay = 100
      UseTFields = False
      AllowClearKey = True
      ShowMatchText = True
      OnEnter = edtEnter
      OnKeyDown = FormKeyDown
    end
    object edtDate: TwwDBDateTimePicker
      Left = 224
      Top = 8
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATE1'
      DataSource = srcDoc
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object edtClient1: TwwDBLookupCombo
      Left = 104
      Top = 37
      Width = 241
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
      DataField = 'CLIENTNAME1'
      DataSource = srcDoc
      LookupTable = qryClient
      LookupField = 'NAME'
      ReadOnly = True
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      SearchDelay = 100
      UseTFields = False
      AllowClearKey = True
      ShowMatchText = True
      OnEnter = edtEnter
      OnKeyDown = FormKeyDown
    end
    object btnRezerv: TCheckBox
      Left = 393
      Top = 9
      Width = 90
      Height = 17
      TabStop = False
      Caption = #1056#1077#1079#1077#1088#1074#1085#1099#1081
      TabOrder = 4
      OnClick = DataChanged
      OnKeyDown = FormKeyDown
    end
  end
  object grdRec: TwwDBGrid
    Left = 0
    Top = 137
    Width = 576
    Height = 207
    LineStyle = gls3D
    ControlType.Strings = (
      'PRODUCT;CustomEdit;edtProd')
    Selected.Strings = (
      'PRODUCT'#9'35'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      'CNT'#9'10'#9#1050#1086#1083'.-'#1074#1086
      'UNIT'#9'10'#9#1042' '#1084#1077#1089#1090#1077
      'ALLCNT'#9'10'#9#1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'
      'RCNT'#9'10'#9#1054#1073#1085#1072#1083#1080#1095#1077#1085#1086)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = srcRec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnEnter = edtEnter
    OnKeyDown = FormKeyDown
    OnKeyPress = grdRecKeyPress
    PadColumnStyle = pcsPlain
  end
  object edtProd: TwwDBLookupCombo
    Left = 24
    Top = 145
    Width = 33
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'PRODUCT'#9'30'#9#1058#1086#1074#1072#1088#9'F'
      'UNIT'#9'5'#9#1042' '#1084#1077#1089#1090#1077#9'F'
      'CNT'#9'5'#9#1050#1086#1083'.-'#1074#1086#9'F'
      'INPRICE'#9'10'#9#1055#1088'. '#1094#1077#1085#1072#9'F'
      'OUTPRICE'#9'10'#9#1062#1077#1085#1072#9'F'
      'DATE1'#9'10'#9#1086#1090#9'F')
    DataField = 'PRODUCT'
    DataSource = srcRec
    LookupTable = qryProd
    LookupField = 'PRODUCT'
    Options = [loColLines, loTitles]
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    SearchDelay = 100
    AllowClearKey = True
    ShowMatchText = True
    OnKeyDown = FormKeyDown
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 576
    Height = 42
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelInner = bvNone
    Color = clBtnFace
    ParentColor = False
    RowSize = 21
    RowSnap = False
    TabOrder = 0
    object barNavigator: TDBNavigator
      Left = 329
      Top = 2
      Width = 144
      Height = 38
      DataSource = srcRec
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Hints.Strings = (
        #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1077#1088#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
        #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1086#1076#1085#1091' '#1079#1072#1087#1080#1089#1100' '#1085#1072#1079#1072#1076
        #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1086#1076#1085#1091' '#1079#1072#1087#1080#1089#1100' '#1074#1087#1077#1088#1077#1076
        #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1079#1072#1087#1080#1089#1100
        #1042#1089#1090#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'| '#1042#1089#1090#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
        #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'| '#1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1102#1102' '#1079#1072#1087#1080#1089#1100
        #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'| '#1056#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
        #1055#1088#1080#1085#1103#1090#1100'| '#1055#1088#1080#1085#1103#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074#1085#1077#1089#1077#1085#1085#1099#1077' '#1074' '#1079#1072#1087#1080#1089#1100
        #1054#1090#1084#1077#1085#1080#1090#1100'| '#1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' '#1079#1072#1087#1080#1089#1080
        #1054#1073#1085#1086#1074#1080#1090#1100'| '#1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077)
      TabOrder = 0
    end
    object ToolBar: TToolBar
      Left = 11
      Top = 2
      Width = 305
      Height = 38
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'barTool'
      DisabledImages = Data.imgDisableBar
      EdgeBorders = []
      Flat = True
      HotImages = Data.imgHotBar
      Images = Data.imgBar
      TabOrder = 1
      Wrapable = False
      object btnPrint: TToolButton
        Left = 0
        Top = 0
        Action = actPrint
        DropdownMenu = mPrint
        Style = tbsDropDown
      end
      object btnDoc: TToolButton
        Left = 52
        Top = 0
        Action = actDoc
      end
      object ToolSep1: TToolButton
        Left = 91
        Top = 0
        Width = 8
        Caption = 'ToolSep1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnNew: TToolButton
        Left = 99
        Top = 0
        Action = actNew
      end
      object btnDelete: TToolButton
        Left = 138
        Top = 0
        Action = actDelete
      end
      object btnEdit: TToolButton
        Left = 177
        Top = 0
        Action = actEdit
        Style = tbsCheck
      end
      object ToolButton3: TToolButton
        Left = 216
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object btnCancel: TToolButton
        Left = 224
        Top = 0
        Action = actCancel
      end
      object btnApply: TToolButton
        Left = 263
        Top = 0
        Action = actApply
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 344
    Width = 576
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Label1: TLabel
      Left = 41
      Top = 11
      Width = 56
      Height = 13
      Caption = #1047#1072#1084#1077#1095#1072#1085#1080#1103
    end
    object edtComment: TDBEdit
      Left = 112
      Top = 8
      Width = 369
      Height = 21
      DataField = 'COMMENT'
      DataSource = srcDoc
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
  end
  object qryProd: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select prodid,unit,'
      
        'cast(get_product_name(produsername, classname, productname,len) ' +
        'as varchar(100)) product'
      'from query_ostatok(null,null)')
    Left = 136
    Top = 240
    object qryProdPRODUCT: TIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      DisplayWidth = 30
      FieldName = 'PRODUCT'
      ReadOnly = True
      Size = 100
    end
    object qryProdUNIT: TFloatField
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 5
      FieldName = 'UNIT'
      ReadOnly = True
    end
    object qryProdPRODID: TIntegerField
      FieldName = 'PRODID'
      ReadOnly = True
      Visible = False
    end
  end
  object qryDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryDocAfterInsert
    AfterOpen = qryDocAfterOpen
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforeOpen = qryDocBeforeOpen
    BeforePost = qryDocBeforePost
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select doc.*,'
      'c1.name clientname1,'
      'c2.name clientname2'
      'from doc '
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where docid=:docid')
    UpdateObject = updDoc
    Left = 16
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        ParamType = ptUnknown
      end>
    object qryDocDOCID: TIntegerField
      FieldName = 'DOCID'
      Required = True
    end
    object qryDocPDOCID: TIntegerField
      FieldName = 'PDOCID'
    end
    object qryDocKIND: TIntegerField
      FieldName = 'KIND'
    end
    object qryDocDOCNO: TIBStringField
      FieldName = 'DOCNO'
      OnGetText = qryDocDOCNOGetText
      OnSetText = qryDocDOCNOSetText
      Size = 10
    end
    object qryDocDATE1: TDateTimeField
      FieldName = 'DATE1'
    end
    object qryDocDATE2: TDateTimeField
      FieldName = 'DATE2'
    end
    object qryDocCLIENTID1: TIntegerField
      FieldName = 'CLIENTID1'
    end
    object qryDocCLIENTID2: TIntegerField
      FieldName = 'CLIENTID2'
    end
    object qryDocPARAM1: TIntegerField
      FieldName = 'PARAM1'
    end
    object qryDocPARAM2: TFloatField
      FieldName = 'PARAM2'
    end
    object qryDocPARAM3: TFloatField
      FieldName = 'PARAM3'
    end
    object qryDocCLIENTNAME1: TIBStringField
      FieldName = 'CLIENTNAME1'
      Size = 51
    end
    object qryDocCLIENTNAME2: TIBStringField
      FieldName = 'CLIENTNAME2'
      Size = 51
    end
    object qryDocCOMMENT: TBlobField
      FieldName = 'COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
  end
  object qryRec: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryRecAfterInsert
    AfterOpen = qryRecAfterOpen
    AfterPost = qryRecAfterPost
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforeOpen = qryRecBeforeOpen
    BeforePost = qryRecBeforePost
    OnCalcFields = qryRecCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select doc_prod.*, '
      
        'cast(get_product_name(produser.smallname, class.smallname, produ' +
        'ct.name, product.len) as varchar(100)) product'
      'from doc_prod'
      'left join product on product.prodid=doc_prod.prodid'
      'left join class on class.classid=product.classid'
      'left join produser on produser.produserid=product.produserid'
      'where docid=:docid'
      'order by docid, recid'
      ' ')
    UpdateObject = updRec
    Left = 16
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        ParamType = ptUnknown
      end>
    object qryRecPRODUCT: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      DisplayWidth = 35
      FieldName = 'PRODUCT'
      Size = 254
    end
    object qryRecCNT: TFloatField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086
      DisplayWidth = 10
      FieldName = 'CNT'
    end
    object qryRecUNIT: TFloatField
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 10
      FieldName = 'UNIT'
    end
    object qryRecALLCNT: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'ALLCNT'
      Calculated = True
    end
    object qryRecRCNT: TFloatField
      DisplayLabel = #1054#1073#1085#1072#1083#1080#1095#1077#1085#1086
      DisplayWidth = 10
      FieldName = 'RCNT'
    end
    object qryRecUCNT: TFloatField
      DisplayWidth = 10
      FieldName = 'UCNT'
      Visible = False
    end
    object qryRecDOCID: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryRecRECID: TIntegerField
      FieldName = 'RECID'
      Required = True
      Visible = False
      OnSetText = qryRecRECIDSetText
    end
    object qryRecPDOCID: TIntegerField
      FieldName = 'PDOCID'
      Visible = False
    end
    object qryRecPRECID: TIntegerField
      FieldName = 'PRECID'
      Visible = False
    end
    object qryRecINDOCID: TIntegerField
      FieldName = 'INDOCID'
      Visible = False
    end
    object qryRecINRECID: TIntegerField
      FieldName = 'INRECID'
      Visible = False
    end
    object qryRecPRODID: TIntegerField
      FieldName = 'PRODID'
      Visible = False
    end
    object qryRecKIND: TSmallintField
      FieldName = 'KIND'
      Visible = False
    end
  end
  object srcDoc: TDataSource
    DataSet = qryDoc
    OnDataChange = srcDocDataChange
    Left = 48
    Top = 200
  end
  object srcRec: TDataSource
    DataSet = qryRec
    OnDataChange = srcRecDataChange
    Left = 48
    Top = 240
  end
  object srcClient: TDataSource
    DataSet = qryClient
    Left = 168
    Top = 200
  end
  object updRec: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DOCID,'
      '  RECID,'
      '  INDOCID,'
      '  INRECID,'
      '  PDOCID,'
      '  PRECID,'
      '  PRODID,'
      '  KIND,'
      '  UNIT,'
      '  CNT,'
      '  RCNT,'
      '  UCNT,'
      '  INPRICE,'
      '  INNDSPRICE,'
      '  OUTPRICE,'
      '  PRICE,'
      '  NDSPRICE,'
      '  NEWPRICE,'
      '  NALOGSUM,'
      '  COMMENT,'
      '  NTD'
      'from doc_prod '
      'where'
      '  DOCID = :DOCID and'
      '  RECID = :RECID')
    ModifySQL.Strings = (
      'update doc_prod'
      'set'
      '  DOCID = :DOCID,'
      '  RECID = :RECID,'
      '  INDOCID = :INDOCID,'
      '  INRECID = :INRECID,'
      '  PDOCID = :PDOCID,'
      '  PRECID = :PRECID,'
      '  PRODID = :PRODID,'
      '  KIND = :KIND,'
      '  UNIT = :UNIT,'
      '  CNT = :CNT,'
      '  RCNT = :RCNT,'
      '  UCNT = :UCNT'
      'where'
      '  DOCID = :OLD_DOCID and'
      '  RECID = :OLD_RECID')
    InsertSQL.Strings = (
      'insert into doc_prod'
      
        '  (DOCID, RECID, INDOCID, INRECID, PDOCID, PRECID, PRODID, KIND,' +
        ' UNIT, '
      '   CNT, RCNT, UCNT)'
      'values'
      
        '  (:DOCID, :RECID, :INDOCID, :INRECID, :PDOCID, :PRECID, :PRODID' +
        ', :KIND, '
      '   :UNIT, :CNT, :RCNT, :UCNT)')
    DeleteSQL.Strings = (
      'delete from doc_prod'
      'where'
      '  DOCID = :OLD_DOCID and'
      '  RECID = :OLD_RECID')
    Left = 80
    Top = 240
  end
  object ActionList: TActionList
    Left = 430
    Top = 8
    object actCancel: TAction
      Category = 'Data'
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Enabled = False
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100'| '#1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1085#1077#1089#1077#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (Ctrl+Z)'
      ImageIndex = 0
      OnExecute = ActionExecute
    end
    object actApply: TAction
      Category = 'Data'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100'| '#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093' (Ctrl+A)'
      ImageIndex = 1
      OnExecute = ActionExecute
    end
    object actNew: TAction
      Category = 'Data'
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Hint = #1057#1086#1079#1076#1072#1090#1100'| '#1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' (Ctrl+N)'
      ImageIndex = 2
      OnExecute = ActionExecute
    end
    object actDelete: TAction
      Category = 'Data'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100'| '#1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' (Ctrl+D)'
      ImageIndex = 3
      OnExecute = ActionExecute
    end
    object actEdit: TAction
      Category = 'Data'
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Hint = 
        #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'| '#1055#1077#1088#1077#1093#1086#1076' '#1074' '#1088#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103'/'#1087#1088#1086#1089#1084#1086#1090#1088#1072' (Ctrl+E' +
        ')'
      ImageIndex = 4
      OnExecute = ActionExecute
    end
    object actPrint: TAction
      Category = 'Data'
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100'| '#1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072' (Ctrl+P)'
      ImageIndex = 6
      OnExecute = ActionExecute
    end
    object actRefresh: TAction
      Category = 'Data'
      Caption = 'actRefresh'
      OnExecute = ActionExecute
    end
    object actDoc: TAction
      Category = 'Data'
      Caption = 'actRecalc'
      Hint = 
        #1057#1086#1079#1076#1072#1090#1100#13#10#1085#1072#1082#1083#1072#1076#1085#1091#1102'| '#1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1087#1086' '#1080#1084#1077#1102#1097#1080#1084#1089#1103' '#1085#1072' '#1089#1082#1083#1072#1076#1077' '#1090#1086#1074 +
        #1072#1088#1072#1084
      ImageIndex = 9
      OnExecute = ActionExecute
    end
    object actSaveDesktop: TAction
      Category = 'Data'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = ActionExecute
    end
    object actRestoreDesktop: TAction
      Category = 'Data'
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnExecute = ActionExecute
    end
  end
  object updDoc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DOCID,'
      '  PDOCID,'
      '  KIND,'
      '  DOCNO,'
      '  DATE1,'
      '  DATE2,'
      '  CLIENTID1,'
      '  CLIENTID2,'
      '  PARAM1,'
      '  PARAM2,'
      '  PARAM3,'
      '  SUM1,'
      '  SUM2,'
      '  SUM3,'
      '  COMMENT,'
      '  PARAM4,'
      '  PARAM5,'
      '  PARAM6,'
      '  SUM0,'
      '  OST'
      'from doc '
      'where'
      '  DOCID = :DOCID')
    ModifySQL.Strings = (
      'update doc'
      'set'
      '  DOCID = :DOCID,'
      '  PDOCID = :PDOCID,'
      '  KIND = :KIND,'
      '  DOCNO = :DOCNO,'
      '  DATE1 = :DATE1,'
      '  DATE2 = :DATE2,'
      '  CLIENTID1 = :CLIENTID1,'
      '  CLIENTID2 = :CLIENTID2,'
      '  PARAM1 = :PARAM1,'
      '  PARAM2 = :PARAM2,'
      '  PARAM3 = :PARAM3,'
      '  COMMENT = :COMMENT'
      'where'
      '  DOCID = :OLD_DOCID')
    InsertSQL.Strings = (
      'insert into doc'
      
        '  (DOCID, PDOCID, KIND, DOCNO, DATE1, DATE2, CLIENTID1, CLIENTID' +
        '2, PARAM1, '
      '   PARAM2, PARAM3, COMMENT)'
      'values'
      
        '  (:DOCID, :PDOCID, :KIND, :DOCNO, :DATE1, :DATE2, :CLIENTID1, :' +
        'CLIENTID2, '
      '   :PARAM1, :PARAM2, :PARAM3, :COMMENT)')
    DeleteSQL.Strings = (
      'delete from doc'
      'where'
      '  DOCID = :OLD_DOCID')
    Left = 80
    Top = 200
  end
  object mPrint: TPopupMenu
    Left = 368
    Top = 8
    object PrintOut1Item: TMenuItem
      Tag = 1
      Caption = #1042#1085#1077#1096#1085#1103#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
    end
    object PrintOut2Item: TMenuItem
      Tag = 2
      Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1103#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
    end
    object PrintOut3Item: TMenuItem
      Tag = 3
      Caption = #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072
    end
    object PrintOrderItem: TMenuItem
      Tag = 4
      Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1081' '#1082#1072#1089#1089#1086#1074#1099#1081' '#1086#1088#1076#1077#1088
    end
  end
  object procCreateDoc: TIBStoredProc
    Database = Data.db
    Transaction = Data.trApply
    StoredProcName = 'CREATE_DOC_PRODUCT'
    Left = 16
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DOCID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PDOCID'
        ParamType = ptInput
      end>
  end
  object qryClient: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryClientAfterInsert
    AfterPost = qryClientAfterPost
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforePost = qryClientBeforePost
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select * from client order by name')
    UpdateObject = updClient
    Left = 136
    Top = 200
    object qryClientCLIENTID: TIntegerField
      FieldName = 'CLIENTID'
      Required = True
      Visible = False
    end
    object qryClientNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 50
    end
    object qryClientFULLNAME: TStringField
      DisplayLabel = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084'.'
      FieldName = 'FULLNAME'
      Size = 50
    end
    object qryClientADRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADRESS'
      Size = 100
    end
    object qryClientPHONE: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085#1099
      FieldName = 'PHONE'
      Size = 50
    end
    object qryClientREG: TStringField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
      FieldName = 'REG'
      Size = 100
    end
    object qryClientOKONX: TStringField
      FieldName = 'OKONX'
    end
    object qryClientOKPO: TStringField
      DisplayLabel = #1054#1050#1055#1054
      FieldName = 'OKPO'
    end
    object qryClientINN: TStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'INN'
      Size = 50
    end
    object qryClientMFO: TStringField
      DisplayLabel = #1041#1048#1050
      FieldName = 'BIK'
    end
    object qryClientRS: TStringField
      DisplayLabel = #1056#1072#1089#1095'. '#1089#1095#1077#1090
      FieldName = 'RS'
    end
    object qryClientKS: TStringField
      DisplayLabel = #1050#1086#1088#1088'. '#1089#1095#1077#1090
      FieldName = 'KS'
    end
    object qryClientSKS: TStringField
      DisplayLabel = #1057#1091#1073'. '#1082#1086#1088#1088'. '#1089#1095#1077#1090
      FieldName = 'SKS'
    end
    object qryClientBANK: TStringField
      DisplayLabel = #1041#1072#1085#1082
      FieldName = 'BANK'
      Size = 100
    end
    object qryClientKORBANK: TStringField
      DisplayLabel = #1050#1086#1088#1088'. '#1073#1072#1085#1082
      FieldName = 'KORBANK'
      Size = 100
    end
  end
  object updClient: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CLIENTID,'
      '  NAME,'
      '  FULLNAME,'
      '  ADRESS,'
      '  PHONE,'
      '  OKONX,'
      '  OKPO,'
      '  REG,'
      '  INN,'
      '  BIK,'
      '  RS,'
      '  KS,'
      '  SKS,'
      '  BANK,'
      '  KORBANK'
      'from client '
      'where'
      '  CLIENTID = :CLIENTID')
    ModifySQL.Strings = (
      'update client'
      'set'
      '  CLIENTID = :CLIENTID,'
      '  NAME = :NAME,'
      '  FULLNAME = :FULLNAME,'
      '  ADRESS = :ADRESS,'
      '  PHONE = :PHONE,'
      '  OKONX = :OKONX,'
      '  OKPO = :OKPO,'
      '  REG = :REG,'
      '  INN = :INN,'
      '  BIK = :BIK,'
      '  RS = :RS,'
      '  KS = :KS,'
      '  SKS = :SKS,'
      '  BANK = :BANK,'
      '  KORBANK = :KORBANK'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    InsertSQL.Strings = (
      'insert into client'
      
        '  (CLIENTID, NAME, FULLNAME, ADRESS, PHONE, OKONX, OKPO, REG, IN' +
        'N, BIK, '
      '   RS, KS, SKS, BANK, KORBANK)'
      'values'
      
        '  (:CLIENTID, :NAME, :FULLNAME, :ADRESS, :PHONE, :OKONX, :OKPO, ' +
        ':REG, :INN, '
      '   :BIK, :RS, :KS, :SKS, :BANK, :KORBANK)')
    DeleteSQL.Strings = (
      'delete from client'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    Left = 200
    Top = 200
  end
end
