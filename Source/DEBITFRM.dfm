object DebitForm: TDebitForm
  Left = 284
  Top = 101
  ActiveControl = grdRec
  Caption = #1044#1086#1083#1075#1080
  ClientHeight = 412
  ClientWidth = 591
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object barControl: TControlBar
    Left = 0
    Top = 0
    Width = 591
    Height = 107
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
      Width = 214
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
      object btnSep1: TToolButton
        Left = 39
        Top = 0
        Width = 8
        Caption = 'btnSep1'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object btnRefresh: TToolButton
        Left = 47
        Top = 0
        Action = actRefresh
      end
    end
    object barNavigator: TDBNavigator
      Left = 238
      Top = 2
      Width = 132
      Height = 38
      DataSource = DataSource
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
      Width = 574
      Height = 61
      BevelOuter = bvNone
      TabOrder = 3
      object btnFilter: TSpeedButton
        Left = 498
        Top = 32
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
        Left = 224
        Top = 32
        Width = 273
        Height = 21
        HideSelection = False
        TabOrder = 5
        OnChange = SeachEditChange
        OnKeyDown = edtSearchKeyDown
      end
      object cbFields: TwwDBComboBox
        Left = 24
        Top = 33
        Width = 201
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
        ParentFont = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        OnChange = cbFieldsChange
        OnKeyDown = FormKeyDown
      end
      object btnDebit: TRadioButton
        Left = 30
        Top = 10
        Width = 85
        Height = 17
        Caption = #1044#1077#1073#1080#1090#1086#1088#1099
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RefreshData
        OnKeyDown = edtSearchKeyDown
      end
      object btnCredit: TRadioButton
        Left = 122
        Top = 10
        Width = 89
        Height = 17
        Caption = #1050#1088#1077#1076#1080#1090#1086#1088#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RefreshData
        OnKeyDown = edtSearchKeyDown
      end
      object edtClientKind: TComboBox
        Left = 224
        Top = 8
        Width = 201
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnClick = RefreshData
        OnKeyDown = edtSearchKeyDown
        Items.Strings = (
          #1042#1089#1077
          #1055#1086#1082#1091#1087#1072#1090#1077#1083#1080
          #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080)
      end
      object btnSummary: TCheckBox
        Left = 440
        Top = 8
        Width = 57
        Height = 17
        Alignment = taLeftJustify
        Caption = #1048#1090#1086#1075#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = RefreshData
        OnKeyDown = edtSearchKeyDown
      end
    end
    object pnlSklad: TPanel
      Left = 383
      Top = 2
      Width = 202
      Height = 38
      BevelOuter = bvNone
      TabOrder = 2
      object edtSklad: TDBLookupComboBox
        Left = 8
        Top = 8
        Width = 185
        Height = 21
        DataField = 'CLIENTID'
        DataSource = Data.srcSkladActive
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
    Top = 107
    Width = 591
    Height = 305
    LineStyle = gls3D
    Selected.Strings = (
      'CLIENT'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F'
      'DOC'#9'30'#9#1054#1089#1085#1086#1074#1072#1085#1080#1077#9#9
      'SUM0'#9'10'#9#1057#1091#1084#1084#1072#9#9
      'OST'#9'15'#9#1044#1086#1083#1075#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcTitleAttributes = grdRecCalcTitleAttributes
    OnTitleButtonClick = grdRecTitleButtonClick
    OnDblClick = SelectRecord
    OnKeyDown = FormKeyDown
    OnKeyPress = grdRecKeyPress
    OnCalcTitleImage = grdRecCalcTitleImage
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
  end
  object DataSource: TDataSource
    Left = 24
    Top = 200
  end
  object qryDebit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryDebitAfterInsert
    BeforeDelete = ModifiedData
    BeforeEdit = ModifiedData
    BeforeInsert = ModifiedData
    BeforeOpen = qryDebitBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      'select '
      
        'get_doc_name(qry.kind, qry.skind, qry.docno, qry.date1, qry.sum0' +
        ') doc,'
      'get_full_name(client.fullname, client.name) client,'
      'qry.*'
      'from query_debit(:clientid, :kind) qry'
      'left join client on client.clientid=qry.clientid'
      'order by 2')
    Left = 56
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'clientid'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftUnknown
        Name = 'kind'
        ParamType = ptUnknown
      end>
    object qryDebitCLIENT: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'CLIENT'
      Origin = 'CLIENT.NAME'
      Size = 200
    end
    object qryDebitDOC: TIBStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'DOC'
      Origin = 'QRY.DOCNO'
      Size = 50
    end
    object qryDebitSUM0: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'SUM0'
      Origin = 'QRY.SUM0'
      ReadOnly = True
      OnGetText = qryDebitSUMGetText
    end
    object qryDebitOST: TFloatField
      DisplayLabel = #1044#1086#1083#1075
      DisplayWidth = 15
      FieldName = 'OST'
      Origin = 'QRY.OST'
      OnGetText = qryDebitSUMGetText
    end
    object qryDebitCLIENTID: TIntegerField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CLIENTID'
      ReadOnly = True
      Visible = False
    end
    object qryDebitDOCID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DOCID'
      ReadOnly = True
      Visible = False
    end
  end
  object ActionList: TActionList
    Left = 118
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
  end
  object qryDebitSummary: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryDebitBeforeOpen
    SQL.Strings = (
      'select qry.clientid, sum(qry.ost) ost,'
      'get_full_name(min(client.fullname), min(client.name)) client'
      'from query_debit(:clientid, :kind) qry'
      'left join client on client.clientid=qry.clientid'
      'group by qry.clientid'
      'order by 3')
    Left = 88
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'clientid'
        ParamType = ptUnknown
        Value = '2504'
      end
      item
        DataType = ftUnknown
        Name = 'kind'
        ParamType = ptUnknown
      end>
    object qryDebitSummaryCLIENT: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'CLIENT'
      Origin = 'CLIENT.NAME'
      Size = 200
    end
    object qryDebitSummaryOST: TFloatField
      DisplayLabel = #1044#1086#1083#1075
      DisplayWidth = 15
      FieldName = 'OST'
      OnGetText = qryDebitSUMGetText
    end
    object qryDebitSummaryCLIENTID: TIntegerField
      FieldName = 'CLIENTID'
      Visible = False
    end
  end
  object mPrint: TPopupMenu
    OnPopup = mPrintPopup
    Left = 155
    Top = 8
    object miRepDebit: TMenuItem
      Caption = 'miPrintDebit'
      OnClick = mPrintClick
    end
    object miRepDebitCredit: TMenuItem
      Caption = #1044#1086#1083#1075#1080
      OnClick = mPrintClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miRepSaldo: TMenuItem
      Caption = #1054#1073#1086#1088#1086#1090#1099' '#1089' '#1082#1083#1080#1077#1085#1090#1072#1084#1080
      OnClick = mPrintClick
    end
  end
end
