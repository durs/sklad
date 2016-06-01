object OstatokForm: TOstatokForm
  Left = 295
  Top = 130
  ActiveControl = edtSearch
  Caption = #1054#1089#1090#1072#1090#1086#1082
  ClientHeight = 454
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFF0000000
    000000000000000000000000F0000000FFFFFFFFFFFFFFFFFFFFFFF0F0000000
    0000000000000000000000F0F000000FFFFFFFFFFFFFF088888880F0F000000F
    FFFFFFFFFFFFF008888880F0F000000FFFFFFFFFFFFFF0F0888880F0F000000F
    FFFFFFFFFFFFF0FF088880F0F000000FFF888888888880FFF08880F0F000000F
    FFFFFFFFFFFFF0FFFF0880F0F000000FFFFFFFFFFFFFF0FFFFF080F0F000000F
    FF88888888888000000000F0F000000FFFFFFFFFFFFFFFFFFFFFF0F0F000000F
    FFFFFFFFFFFFFFFFFFFFF0F0F000000FFF8888888888888888FFF0F0F000000F
    FFFFFFFFFFFFFFFFFFFFF0F0F000000FFFFFFFFFFFFFFFFFFFFFF0F0F000000F
    FF8888888888888888FFF0F0F000000FFFFFFFFFFFFFFFFFFFFFF0F0F000000F
    FFFFFFFFFFFFFFFFFFFFF0F0F000000FFF8888888888888888FFF0F0F000000F
    FFFFFFFFFFFFFFFFFFFFF0F0F000000FFFFFFFFFFFFFFFFFFFFFF0F0F000000F
    FF8888888888888888FFF0F0F000000FFFFFFFFFFFFFFFFFFFFFF0F0F000000F
    FFFFFFFFFFFFFFFFFFFFF0F0F000000FFF8888888888888888FFF0F0F000000F
    FFFFFFFFFFFFFFFFFFFFF0F00000000FFFFFFFFFFFFFFFFFFFFFF0F00000000F
    FFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000FC00
    0003F8000003F0000003E0000003C0000003C0000003C0000003C0000003C000
    0003C0000003C0000003C0000003C0000003C0000003C0000003C0000003C000
    0003C0000003C0000003C0000003C0000003C0000003C0000003C0000003C000
    0003C0000003C0000003C0000003C0000007C000000FC000001FC000003F}
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 717
    Height = 84
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelInner = bvNone
    Color = clBtnFace
    Constraints.MinHeight = 5
    ParentColor = False
    RowSize = 21
    RowSnap = False
    TabOrder = 0
    object barTool: TToolBar
      Left = 11
      Top = 2
      Width = 251
      Height = 38
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'barTool'
      DisabledImages = Data.imgDisableBar
      HotImages = Data.imgHotBar
      Images = Data.imgBar
      TabOrder = 0
      Wrapable = False
      object btnPrint: TToolButton
        Left = 0
        Top = 0
        Action = actPrint
        DropdownMenu = mPrint
      end
      object btnQuery: TToolButton
        Left = 39
        Top = 0
        Action = actQuery
        DropdownMenu = mQuery
      end
      object btnSep1: TToolButton
        Left = 78
        Top = 0
        Width = 8
        Caption = 'btnSep1'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object btnRefresh: TToolButton
        Left = 86
        Top = 0
        Action = actRefresh
      end
      object btnEdit: TToolButton
        Left = 125
        Top = 0
        Action = actEdit
        Style = tbsCheck
      end
      object ToolButton2: TToolButton
        Left = 164
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 16
        Style = tbsSeparator
      end
      object btnCancel: TToolButton
        Left = 172
        Top = 0
        Action = actCancel
      end
      object btnApplay: TToolButton
        Left = 211
        Top = 0
        Action = actApply
      end
    end
    object barNavigator: TDBNavigator
      Left = 275
      Top = 2
      Width = 132
      Height = 38
      DataSource = srcProd
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
      TabOrder = 1
    end
    object pnlSearch: TPanel
      Left = 11
      Top = 44
      Width = 622
      Height = 38
      BevelOuter = bvNone
      TabOrder = 2
      object btnFilter: TSpeedButton
        Left = 516
        Top = 8
        Width = 21
        Height = 21
        AllowAllUp = True
        GroupIndex = 1
        Flat = True
        Glyph.Data = {
          BE000000424DBE00000000000000760000002800000009000000090000000100
          0400000000004800000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333B3333000
          00003B33B33B3000000033B3B3B3300000003330003330000000BBB0F0BBB000
          0000333000333000000033B3B3B3300000003B33B33B300000003333B3333000
          0000}
        OnClick = btnFilterClick
      end
      object edtSearch: TEdit
        Left = 226
        Top = 8
        Width = 289
        Height = 21
        HideSelection = False
        TabOrder = 0
        OnChange = SeachEditChange
        OnKeyDown = edtSearchKeyDown
      end
      object cbFields: TwwDBComboBox
        Left = 24
        Top = 9
        Width = 203
        Height = 19
        TabStop = False
        ShowButton = True
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.NonFocusBorders = []
        ItemHeight = 0
        Items.Strings = (
          '')
        ParentFont = False
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        OnChange = cbFieldsChange
        OnKeyDown = FormKeyDown
      end
    end
    object pnlSklad: TPanel
      Left = 420
      Top = 2
      Width = 252
      Height = 38
      BevelOuter = bvNone
      TabOrder = 3
      object edtSklad: TDBLookupComboBox
        Left = 8
        Top = 8
        Width = 233
        Height = 21
        DataField = 'CLIENTID'
        DataSource = Data.srcSkladActive
        DropDownRows = 20
        KeyField = 'CLIENTID'
        ListField = 'NAME'
        ListSource = Data.srcSklad
        TabOrder = 0
        OnCloseUp = edtSkladChange
        OnExit = edtSkladChange
        OnKeyDown = FormKeyDown
      end
    end
  end
  object grdRec: TwwDBGrid
    Left = 0
    Top = 84
    Width = 717
    Height = 370
    LineStyle = gls3D
    Selected.Strings = (
      'CLASSNAME'#9'15'#9#1058#1080#1087#9#9
      'PRODUSERNAME'#9'15'#9#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#9#9
      'NAME'#9'25'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9#9
      'LEN'#9'5'#9#1092#1072#1089'.'#9#9
      'UNIT'#9'10'#9#1042' '#1084#1077#1089#1090#1077#9#9
      'ALLCNT'#9'10'#9#1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090') '#9#9
      'OSTCNT'#9'10'#9#1050#1086#1083'.-'#1074#1086'~('#1084#1077#1089#1090')'#9#9
      'CNT'#9'10'#9#1047#1072#1082#1091#1087#1083#1077#1085#1086'~('#1084#1077#1089#1090')'#9#9
      'RCNT'#9'10'#9#1055#1088#1086#1076#1072#1085#1086'~('#1084#1077#1089#1090')'#9#9
      'UCNT'#9'10'#9#1047#1072#1088#1077#1079#1077#1088'-~'#1074#1080#1088#1086#1074#1072#1085#1086#9#9
      'PRICE'#9'10'#9#1055#1088#1080#1093#1086#1076#1085#1072#1103'~'#1094#1077#1085#1072#9#9
      'NDSPRICE'#9'10'#9#1055#1088#1080#1093#1086#1076#1085#1072#1103'~'#1094#1077#1085#1072' '#1053#1044#1057#9#9
      'NEWPRICE'#9'10'#9#1054#1087#1090#1086#1074#1072#1103'~'#1094#1077#1085#1072#9#9
      'PRICEPER'#9'9'#9#1054#1087#1090#1086#1074#1072#1103'~'#1085#1072#1094#1077#1085#1082#1072'(%)'#9#9
      'NEWPRICE2'#9'10'#9#1054#1087#1090'.-'#1088#1086#1079#1085'.~'#1094#1077#1085#1072#9#9
      'PRICEPER2'#9'10'#9#1054#1087#1090'.-'#1088#1086#1079#1085'.~'#1085#1072#1094#1077#1085#1082#1072'(%)'#9#9
      'NEWPRICE3'#9'10'#9#1056#1086#1079#1085#1080#1095#1085#1072#1103'~'#1094#1077#1085#1072#9#9
      'PRICEPER3'#9'10'#9#1056#1086#1079#1085#1080#1095#1085#1072#1103'~'#1085#1072#1094#1077#1085#1082#1072'(%)'#9#9
      'NEWPRICE4'#9'10'#9'NEWPRICE4'#9#9
      'PRICEPER4'#9'10'#9'PRICEPER4'#9#9
      'NEWPRICE5'#9'10'#9'NEWPRICE5'#9#9
      'PRICEPER5'#9'10'#9'PRICEPER5'#9#9
      'DOC'#9'30'#9#1054#1089#1085#1086#1074#1072#1085#1080#1077#9#9
      'SERTIFICAT'#9'20'#9#1057#1077#1088#1090#1080#1092#1080#1082#1072#1090#9#9
      'COMMENT'#9'20'#9#1047#1072#1084#1077#1090#1082#1080#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = srcProd
    EditCalculated = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = mRec
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnCalcTitleAttributes = grdRecCalcTitleAttributes
    OnTitleButtonClick = grdRecTitleButtonClick
    OnDblClick = SelectRecord
    OnKeyDown = FormKeyDown
    OnKeyPress = grdRecKeyPress
    OnCalcTitleImage = grdRecCalcTitleImage
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
  end
  object srcProd: TDataSource
    DataSet = qryProd
    OnDataChange = srcProdDataChange
    Left = 72
    Top = 176
  end
  object qryProd: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeDelete = qryProdBeforeDelete
    BeforeEdit = ModifiedData
    BeforeInsert = qryProdBeforeInsert
    BeforeOpen = qryProdBeforeOpen
    OnCalcFields = qryProdCalcFields
    CachedUpdates = True
    SQL.Strings = (
      
        'select doc_prod.docid, doc_prod.recid, doc_prod.indocid, doc_pro' +
        'd.inrecid, doc_prod.prodid, '
      'doc_prod.cnt, doc_prod.rcnt, doc_prod.ucnt, doc_prod.unit,'
      'doc_prod.cnt-doc_prod.rcnt ostcnt,'
      '(doc_prod.cnt-doc_prod.rcnt)*doc_prod.unit allcnt,'
      
        '(doc_prod.cnt-doc_prod.rcnt)*doc_prod.unit*doc_prod.price ostsum' +
        ','
      'doc_prod.price, doc_prod.ndsprice, '
      
        'doc_prod.newprice, doc_prod.newprice2, doc_prod.newprice3, doc_p' +
        'rod.newprice4, doc_prod.newprice5, '
      'doc_prod.comment,'
      'doc.kind,doc.docno,doc.date1,'
      'product.name, product.len, product.dim, product.sertificat,'
      
        'class.name classname, cast(get_full_name(class.fullname, class.n' +
        'ame) as varchar(50)) class,'
      
        'produser.name produsername, cast(get_full_name(produser.fullname' +
        ', produser.name) as varchar(50)) produser,'
      
        'get_product_name(product.name, class.smallname, produser.smallna' +
        'me, product.len) product,'
      
        'get_doc_name(doc.kind, doc.skind, doc.docno, doc.date1, doc.sum0' +
        ') doc'
      'from doc_prod'
      
        '/*inner join doc on doc.docid = doc_prod.docid and doc.clientid2' +
        ' =___________clientid and doc.kind = 1*/'
      'left join doc on doc.docid=doc_prod.docid'
      'left join product on product.prodid=doc_prod.prodid'
      'left join class on class.classid=product.classid'
      'left join produser on produser.produserid=product.produserid'
      
        'where doc_prod.kind=0 and doc_prod.clientid2=:clientid and doc_p' +
        'rod.recid > 0')
    UpdateObject = updProd
    Left = 40
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object qryProdCLASSNAME: TIBStringField
      DisplayLabel = #1058#1080#1087
      DisplayWidth = 15
      FieldName = 'CLASSNAME'
      Origin = 'CLASS.NAME'
      ReadOnly = True
      Size = 30
    end
    object qryProdPRODUSERNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
      DisplayWidth = 15
      FieldName = 'PRODUSERNAME'
      Origin = 'PRODUSER.NAME'
      ReadOnly = True
      Size = 30
    end
    object qryProdNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 25
      FieldName = 'NAME'
      Origin = 'PRODUCT.NAME'
      ReadOnly = True
      Size = 100
    end
    object qryProdLEN: TIBStringField
      DisplayLabel = #1092#1072#1089'.'
      DisplayWidth = 5
      FieldName = 'LEN'
      Origin = 'PRODUCT.LEN'
      ReadOnly = True
      Size = 10
    end
    object qryProdUNIT: TFloatField
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 10
      FieldName = 'UNIT'
      Origin = 'DOC_PROD.UNIT'
      ReadOnly = True
    end
    object qryProdALLCNT: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090') '
      DisplayWidth = 10
      FieldName = 'ALLCNT'
    end
    object qryProdOSTCNT: TFloatField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086'~('#1084#1077#1089#1090')'
      DisplayWidth = 10
      FieldName = 'OSTCNT'
      ReadOnly = True
    end
    object qryProdCNT: TFloatField
      DisplayLabel = #1047#1072#1082#1091#1087#1083#1077#1085#1086'~('#1084#1077#1089#1090')'
      DisplayWidth = 10
      FieldName = 'CNT'
      Origin = 'DOC_PROD.CNT'
      ReadOnly = True
    end
    object qryProdRCNT: TFloatField
      DisplayLabel = #1055#1088#1086#1076#1072#1085#1086'~('#1084#1077#1089#1090')'
      DisplayWidth = 10
      FieldName = 'RCNT'
      Origin = 'DOC_PROD.RCNT'
      ReadOnly = True
    end
    object qryProdUCNT: TFloatField
      DisplayLabel = #1047#1072#1088#1077#1079#1077#1088'-~'#1074#1080#1088#1086#1074#1072#1085#1086
      DisplayWidth = 10
      FieldName = 'UCNT'
      Origin = 'DOC_PROD.UCNT'
      ReadOnly = True
    end
    object qryProdPRICE: TFloatField
      DisplayLabel = #1055#1088#1080#1093#1086#1076#1085#1072#1103'~'#1094#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = 'DOC_PROD.PRICE'
      ReadOnly = True
    end
    object qryProdNDSPRICE: TFloatField
      DisplayLabel = #1055#1088#1080#1093#1086#1076#1085#1072#1103'~'#1094#1077#1085#1072' '#1053#1044#1057
      DisplayWidth = 10
      FieldName = 'NDSPRICE'
      Origin = 'DOC_PROD.NDSPRICE'
      ReadOnly = True
    end
    object qryProdNEWPRICE: TFloatField
      DisplayLabel = #1054#1087#1090#1086#1074#1072#1103'~'#1094#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'NEWPRICE'
      Origin = 'DOC_PROD.NEWPRICE'
    end
    object qryProdPRICEPER: TFloatField
      DisplayLabel = #1054#1087#1090#1086#1074#1072#1103'~'#1085#1072#1094#1077#1085#1082#1072'(%)'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'PRICEPER'
      Calculated = True
    end
    object qryProdNEWPRICE2: TFloatField
      DisplayLabel = #1054#1087#1090'.-'#1088#1086#1079#1085'.~'#1094#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'NEWPRICE2'
      Origin = 'DOC_PROD.NEWPRICE2'
    end
    object qryProdPRICEPER2: TFloatField
      DisplayLabel = #1054#1087#1090'.-'#1088#1086#1079#1085'.~'#1085#1072#1094#1077#1085#1082#1072'(%)'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER2'
      Calculated = True
    end
    object qryProdNEWPRICE3: TFloatField
      DisplayLabel = #1056#1086#1079#1085#1080#1095#1085#1072#1103'~'#1094#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'NEWPRICE3'
      Origin = 'DOC_PROD.NEWPRICE3'
    end
    object qryProdPRICEPER3: TFloatField
      DisplayLabel = #1056#1086#1079#1085#1080#1095#1085#1072#1103'~'#1085#1072#1094#1077#1085#1082#1072'(%)'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER3'
      Calculated = True
    end
    object qryProdNEWPRICE4: TFloatField
      DisplayWidth = 10
      FieldName = 'NEWPRICE4'
      Origin = '"DOC_PROD"."NEWPRICE4"'
    end
    object qryProdPRICEPER4: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER4'
      Calculated = True
    end
    object qryProdNEWPRICE5: TFloatField
      DisplayWidth = 10
      FieldName = 'NEWPRICE5'
      Origin = '"DOC_PROD"."NEWPRICE5"'
    end
    object qryProdPRICEPER5: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER5'
      Calculated = True
    end
    object qryProdDOC: TIBStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'DOC'
      Origin = 'DOC.DOCNO'
      ReadOnly = True
      Size = 50
    end
    object qryProdSERTIFICAT: TBlobField
      DisplayLabel = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
      DisplayWidth = 20
      FieldName = 'SERTIFICAT'
      ReadOnly = True
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryProdCOMMENT: TBlobField
      DisplayLabel = #1047#1072#1084#1077#1090#1082#1080
      DisplayWidth = 20
      FieldName = 'COMMENT'
      Origin = 'DOC_PROD.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryProdDOCNO: TIBStringField
      DisplayLabel = #8470' '#1044#1086#1082'.'
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      ReadOnly = True
      Visible = False
      Size = 10
    end
    object qryProdDATE1: TDateTimeField
      DisplayLabel = #1054#1090
      DisplayWidth = 18
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
      ReadOnly = True
      Visible = False
    end
    object qryProdOSTSUM: TFloatField
      Tag = 1
      DisplayWidth = 10
      FieldName = 'OSTSUM'
      ReadOnly = True
      Visible = False
    end
    object qryProdDOCID: TIntegerField
      DisplayWidth = 10
      FieldName = 'DOCID'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object qryProdRECID: TIntegerField
      DisplayWidth = 10
      FieldName = 'RECID'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object qryProdINDOCID: TIntegerField
      FieldName = 'INDOCID'
      Visible = False
    end
    object qryProdINRECID: TIntegerField
      FieldName = 'INRECID'
      Visible = False
    end
    object qryProdPRODID: TIntegerField
      DisplayWidth = 10
      FieldName = 'PRODID'
      ReadOnly = True
      Visible = False
    end
    object qryProdKIND: TSmallintField
      FieldName = 'KIND'
      ReadOnly = True
      Visible = False
    end
    object qryProdPRODUCT: TIBStringField
      Tag = 1
      FieldName = 'PRODUCT'
      ReadOnly = True
      Visible = False
      Size = 254
    end
    object qryProdCLASS: TIBStringField
      Tag = 1
      FieldName = 'CLASS'
      ReadOnly = True
      Visible = False
      Size = 50
    end
    object qryProdPRODUSER: TIBStringField
      Tag = 1
      FieldName = 'PRODUSER'
      ReadOnly = True
      Visible = False
      Size = 50
    end
    object qryProdDIM: TIBStringField
      Tag = 1
      FieldName = 'DIM'
      ReadOnly = True
      Visible = False
      Size = 10
    end
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
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100'| '#1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072' (Ctrl+N)'
      ImageIndex = 2
      OnExecute = ActionExecute
    end
    object actDelete: TAction
      Category = 'Data'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100'| '#1059#1076#1072#1083#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072' (Ctrl+D)'
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
    object actView: TAction
      Category = 'Data'
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088'| '#1055#1088#1086#1089#1084#1086#1090#1088' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1082#1083#1080#1077#1085#1090#1077' (Ctrl+S)'
      ImageIndex = 5
      OnExecute = ActionExecute
    end
    object actPrint: TAction
      Category = 'Data'
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100'| '#1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072' (Ctrl+P)'
      ImageIndex = 6
      OnExecute = ActionExecute
    end
    object actListView: TAction
      Category = 'Data'
      Caption = 'actListView'
      Hint = #1057#1087#1080#1089#1086#1082'| '#1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1087#1080#1089#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074' (Ctrl+S)'
      ImageIndex = 7
      OnExecute = ActionExecute
    end
    object actRefresh: TAction
      Category = 'Data'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100'| '#1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' (Ctrl+Q)'
      ImageIndex = 11
      OnExecute = ActionExecute
    end
    object actQuery: TAction
      Category = 'Data'
      Caption = 'actQuery'
      Hint = #1054#1087#1077#1088#1072#1094#1080#1080'| '#1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
      ImageIndex = 18
      OnExecute = ActionExecute
    end
  end
  object updProd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from doc_prod '
      'where'
      '  DOCID = :DOCID and'
      '  RECID = :RECID')
    ModifySQL.Strings = (
      'update doc_prod'
      'set'
      '  NEWPRICE = :NEWPRICE,'
      '  NEWPRICE2 = :NEWPRICE2,'
      '  NEWPRICE3 = :NEWPRICE3,'
      '  NEWPRICE4 = :NEWPRICE4,'
      '  NEWPRICE5 = :NEWPRICE5,'
      '  COMMENT = :COMMENT'
      'where'
      '  DOCID = :OLD_DOCID and'
      '  RECID = :OLD_RECID')
    InsertSQL.Strings = (
      'insert into doc_prod'
      
        '  (NEWPRICE, NEWPRICE2, NEWPRICE3, NEWPRICE4, NEWPRICE5, COMMENT' +
        ')'
      'values'
      
        '  (:NEWPRICE, :NEWPRICE2, :NEWPRICE3, :NEWPRICE4, :NEWPRICE5, :C' +
        'OMMENT)')
    DeleteSQL.Strings = (
      'delete from doc_prod'
      'where'
      '  DOCID = :OLD_DOCID and'
      '  RECID = :OLD_RECID')
    Left = 7
    Top = 177
  end
  object mPrint: TPopupMenu
    Left = 464
    Top = 8
    object miPrice: TMenuItem
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      OnClick = PrintReport
    end
    object miOstatok: TMenuItem
      Caption = #1054#1089#1090#1072#1090#1086#1082' '#1090#1086#1074#1072#1088#1072
      OnClick = PrintReport
    end
    object miCennik: TMenuItem
      Caption = #1062#1077#1085#1085#1080#1082#1080' ('#1086#1087#1090')'
      OnClick = PrintReport
    end
    object miCennik2: TMenuItem
      Caption = #1062#1077#1085#1085#1080#1082#1080' ('#1088#1086#1079#1085#1080#1094#1072')'
      OnClick = PrintReport
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miPrintFile: TMenuItem
      Caption = #1042' '#1092#1072#1081#1083' ...'
      OnClick = PrintReport
    end
  end
  object mQuery: TPopupMenu
    Left = 496
    Top = 8
    object mChangePrice: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1094#1077#1085#1091' '#1085#1072' '#1090#1086#1074#1072#1088#1099
      OnClick = mQueryClick
    end
    object mCreateDoc: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1080#1079' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1086#1089#1090#1072#1090#1082#1072
      OnClick = mQueryClick
    end
  end
  object mRec: TPopupMenu
    Left = 528
    Top = 8
    object miRecFields: TMenuItem
      Caption = #1057#1090#1086#1083#1073#1094#1099' ...'
      OnClick = miRecFieldsClick
    end
    object miRecOut: TMenuItem
      Caption = #1057#1089#1099#1083#1082#1080' ...'
      OnClick = miRecOutClick
    end
  end
end
