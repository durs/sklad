object DocListForm: TDocListForm
  Left = 291
  Top = 103
  ActiveControl = grdDoc
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
  ClientHeight = 411
  ClientWidth = 629
  Color = clBtnFace
  DefaultMonitor = dmDesktop
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
    0000000000000000000000000000000009595959595959590000000000000000
    9595959595959590950000000000000059595959595959505950000000000005
    9595959595959505959500000000000000000000000000095959500000000999
    9999999999999095959595000000000000000000000000595959595000000090
    FF7F7F7F7FFFFF059595959500000000FFFFFFFFFFFFFFF05959595950000000
    FF7F7F7F7F7FFFFF0595959595000000FFFFFFFFFFFFFFFF0059595959500000
    FF7F7F7FFFFFFFFF0805959595900000FFFFFFFFFFFFFFF08F00595959500000
    000000000009D90FFF0805959590000000FFFFFFFFFD9DFFF08F005959500000
    00000000000777000FFF0805959000000000FFFFFFFFF0FFFFF08F0059500000
    000FFF7FFFFFFF00000FFF080590000000FFF7FFFFFFFFF0FFFFF08F00500000
    0FFF7FFFFFFFFFFF0D900FFF08000000FFF7FFF7FFF7FFF0D9DFFFF08F00000F
    FF7FFF7FFF7FFF007770000FFF0000FFFFFFF7FFF7FFF0FFFFFFFFFFF000000F
    FFFF7FFF7FFF000000009D9000000000FFFFFFF7FFF000000000D9D000000000
    0FFFFF7FFF000000000000000000000000FFFFFFF00000000000000000000000
    000FFFFF0000000000000000000000000000FFF0000000000000000000000000
    00000F000000000000000000000000000000000000000000000000000000F800
    07FFF00003FFE00001FFE00000FFC000007F0000003F0000001F0000000F8000
    0007C0000003E0000001E0000000E0000000E0000000F0000000F8000000FC00
    0000FE000000FC000000F8000000F0000000E0000001C000000180000003C000
    0007E000FF1FF001FFFFF803FFFFFC07FFFFFE0FFFFFFF1FFFFFFFBFFFFF}
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 133
    Top = 99
    Height = 312
    ResizeStyle = rsUpdate
    ExplicitTop = 101
    ExplicitHeight = 292
  end
  object Label1: TLabel
    Left = 536
    Top = 232
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object Label3: TLabel
    Left = 248
    Top = 144
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object Label4: TLabel
    Left = 312
    Top = 232
    Width = 11
    Height = 13
    Caption = #8470
  end
  object grdDoc: TwwDBGrid
    Left = 136
    Top = 99
    Width = 493
    Height = 312
    LineStyle = gls3D
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Ctl3D = True
    DataSource = DataSource
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = grdDocCalcCellColors
    OnCalcTitleAttributes = grdDocCalcTitleAttributes
    OnTitleButtonClick = grdDocTitleButtonClick
    OnDblClick = SelectRecord
    OnKeyDown = FormKeyDown
    OnKeyPress = grdDocKeyPress
    OnCalcTitleImage = grdDocCalcTitleImage
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 629
    Height = 99
    Align = alTop
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    Constraints.MinHeight = 5
    CornerEdge = ceNone
    RowSize = 42
    RowSnap = False
    TabOrder = 1
    object barNavigator: TDBNavigator
      Left = 276
      Top = 2
      Width = 132
      Height = 38
      DataSource = DataSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = True
      Hints.Strings = (
        #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1077#1088#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
        #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1086#1076#1085#1091' '#1079#1072#1087#1080#1089#1100' '#1085#1072#1079#1072#1076
        #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1086#1076#1085#1091' '#1079#1072#1087#1080#1089#1100' '#1074#1087#1077#1088#1077#1076
        #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1079#1072#1087#1080#1089#1100
        #1042#1089#1090#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'| '#1042#1089#1090#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
        #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'| '#1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1102#1102' '#1079#1072#1087#1080#1089#1100
        #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'| '#1056#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
        #1055#1088#1080#1085#1103#1090#1100'| C'#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074#1085#1077#1089#1077#1085#1085#1099#1077' '#1074' '#1079#1072#1087#1080#1089#1100
        #1054#1090#1084#1077#1085#1080#1090#1100'| '#1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' '#1079#1072#1087#1080#1089#1080
        #1054#1073#1085#1086#1074#1080#1090#1100'| '#1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077)
      ParentCtl3D = False
      TabOrder = 1
    end
    object pnlSearch: TPanel
      Left = 12
      Top = 44
      Width = 614
      Height = 53
      BevelOuter = bvNone
      TabOrder = 3
      object btnFilter: TSpeedButton
        Left = 537
        Top = 28
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
      object Label2: TLabel
        Left = 73
        Top = 8
        Width = 162
        Height = 13
        Caption = #1089'                                   '#1087#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtSearch: TEdit
        Left = 245
        Top = 28
        Width = 291
        Height = 21
        Ctl3D = True
        HideSelection = False
        ParentCtl3D = False
        TabOrder = 3
        OnChange = edtSearchChange
        OnKeyDown = edtSearchKeyDown
      end
      object cbFields: TwwDBComboBox
        Left = 46
        Top = 30
        Width = 189
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
        ParentColor = True
        ParentFont = False
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        OnChange = cbFieldsChange
        OnKeyDown = FormKeyDown
      end
      object edtDocDate1: TwwDBDateTimePicker
        Left = 88
        Top = 4
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
        OnChange = RefreshData
        OnKeyDown = FormKeyDown
      end
      object edtDocDate2: TwwDBDateTimePicker
        Left = 246
        Top = 4
        Width = 123
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
        OnChange = RefreshData
        OnKeyDown = FormKeyDown
      end
    end
    object barTool: TToolBar
      Left = 11
      Top = 2
      Width = 252
      Height = 38
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'barTool'
      DisabledImages = Data.imgDisableBar
      HotImages = Data.imgHotBar
      Images = Data.imgBar
      TabOrder = 0
      object btnPrint: TToolButton
        Left = 0
        Top = 0
        Action = actPrint
        DropdownMenu = mPrint
      end
      object btnView: TToolButton
        Tag = 1
        Left = 39
        Top = 0
        Action = actView
      end
      object ToolButton2: TToolButton
        Left = 78
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object btnRefresh: TToolButton
        Left = 86
        Top = 0
        Action = actRefresh
      end
      object btnNew: TToolButton
        Tag = 2
        Left = 125
        Top = 0
        Action = actNew
      end
      object btnDelete: TToolButton
        Tag = 3
        Left = 164
        Top = 0
        Action = actDelete
      end
      object btnSep: TToolButton
        Left = 203
        Top = 0
        Width = 8
        Caption = 'btnSep'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object btnCreateQuery: TToolButton
        Left = 211
        Top = 0
        Action = actCreateQuery
      end
    end
    object pnlSklad: TPanel
      Left = 421
      Top = 2
      Width = 205
      Height = 38
      BevelOuter = bvNone
      TabOrder = 2
      object edtSklad: TDBLookupComboBox
        Left = 8
        Top = 9
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
  object pnlDocKind: TPanel
    Left = 0
    Top = 99
    Width = 133
    Height = 312
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object bgDocKind: TfcButtonGroup
      Left = 0
      Top = 0
      Width = 133
      Height = 61
      Align = alTop
      AutoBold = True
      BevelOuter = bvNone
      ButtonClassName = 'TfcShapeBtn'
      ClickStyle = bcsRadioGroup
      ControlSpacing = 0
      Columns = 1
      Layout = loVertical
      MaxControlSize = 0
      TabOrder = 0
      Transparent = False
      OnChange = bgDocKindChange
      object btnDocIn: TfcShapeBtn
        Left = 0
        Top = 0
        Width = 133
        Height = 21
        Caption = #1042#1093#1086#1076#1103#1097#1080#1077
        Color = clBtnFace
        DitherColor = clWhite
        GroupIndex = 1
        ParentClipping = True
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        TabOrder = 1
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
      end
      object btnDocOut: TfcShapeBtn
        Left = 0
        Top = 21
        Width = 133
        Height = 20
        Caption = #1048#1089#1093#1086#1076#1103#1097#1080#1077
        Color = clBtnFace
        DitherColor = clWhite
        GroupIndex = 1
        ParentClipping = True
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        TabOrder = 2
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
      end
      object btnDoc: TfcShapeBtn
        Left = 0
        Top = 41
        Width = 133
        Height = 20
        Caption = #1042#1089#1077
        Color = clBtnFace
        DitherColor = clWhite
        Down = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GroupIndex = 1
        NumGlyphs = 0
        ParentClipping = True
        ParentFont = False
        RoundRectBias = 25
        ShadeStyle = fbsHighlight
        TabOrder = 0
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
      end
    end
    object treeDoc: TfcTreeView
      Left = 0
      Top = 61
      Width = 133
      Height = 251
      Align = alClient
      Indent = 19
      Options = [tvoExpandOnDblClk, tvoExpandButtons3D, tvoRowSelect, tvoShowButtons, tvoShowLines, tvoToolTips]
      Items.StreamVersion = 1
      Items.Data = {
        010000003000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        000003000000000000000300000009C4EEEAF3ECE5EDF2FB446F632F00000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000007000000000000
        000300000008D2EEE2E0F0EDFBE5446F6350726F643000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000007000000010000000000000009
        CDE0EAEBE0E4EDFBE5446F6350726F64313100000000000000FFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000700000001000000000000000AC2EEE7E2
        F0E0F2EDFBE5446F6350726F64323400000000000000FFFFFFFFFFFFFFFFFFFF
        FFFF000000000000000000000700000001000000000000000DD2EEE2E0F0EDFB
        E520F7E5EAE8446F6350726F64333000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFF0000000000000000000009000000000000000300000009CFEBE0F2B8E6ED
        FBE5446F634372656469743400000001000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000900000001000000000000000DCFF0E8F52EEA2EEEF0E4
        E5F0E0446F63437265646974343500000001000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000900000001000000000000000ECFEBE0F22EEFEEF0
        F3F7E5EDE8FF446F63437265646974353400000002000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000000000000000000900000001000000000000000DD0E0F1F52E
        EA2EEEF0E4E5F0E0446F63437265646974362D00000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000000008000000000000000000000006C7E0EA
        E0E7FB446F635175657279}
      RightClickSelects = True
      TabOrder = 1
      OnChange = treeDocChange
      OnKeyDown = FormKeyDown
    end
  end
  object DataSource: TDataSource
    Left = 136
    Top = 320
  end
  object ActionList: TActionList
    Left = 137
    Top = 256
    object actCancel: TAction
      Category = 'Data'
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Enabled = False
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100'| '#1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1085#1077#1089#1077#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' (Ctrl+Z)'
      ImageIndex = 0
      OnExecute = ActionExecute
    end
    object actRefresh: TAction
      Category = 'Data'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100'| '#1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' (Ctrl+Q)'
      ImageIndex = 11
      OnExecute = ActionExecute
    end
    object actApply: TAction
      Category = 'Data'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100'| '#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093' (Ctrl+Q)'
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
    object actView: TAction
      Tag = 1
      Category = 'Data'
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088'| '#1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' (Ctrl+S)'
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
    object actCreateQuery: TAction
      Category = 'Data'
      Caption = 'actCreateQuery'
      Hint = #1057#1086#1079#1076#1072#1090#1100#13#10#1047#1072#1082#1072#1079'| '#1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1082#1072#1079' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1074#1093#1086#1076#1103#1097#1080#1093' '#1079#1072#1082#1072#1079#1086#1074
      ImageIndex = 9
      OnExecute = ActionExecute
    end
  end
  object mPrint: TPopupMenu
    OnPopup = mPrintPopup
    Left = 178
    Top = 256
    object miPrintDocList: TMenuItem
      Tag = 10
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      OnClick = PrintData
    end
    object miPrintBegin: TMenuItem
      Caption = '-'
    end
    object miPrintEnd: TMenuItem
      Caption = '-'
    end
    object miPrintDoc4: TMenuItem
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1085#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1102
      OnClick = PrintData
    end
    object miPrintOrder: TMenuItem
      Tag = 4
      Caption = #1050#1072#1089#1089#1086#1074#1099#1081' '#1086#1088#1076#1077#1088
      Visible = False
      OnClick = PrintData
    end
    object miPrintBeznal: TMenuItem
      Caption = #1055#1083#1072#1090#1105#1078#1085#1086#1077' '#1087#1086#1088#1091#1095#1077#1085#1080#1077
      OnClick = PrintData
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #1060#1086#1088#1084#1099' '#1087#1088#1077#1076'.'#1074#1077#1088#1089#1080#1081
      object miPrintDoc1: TMenuItem
        Tag = 1
        Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
        Visible = False
        OnClick = PrintData
      end
      object miPrintDoc3: TMenuItem
        Tag = 3
        Caption = #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072
        Visible = False
        OnClick = PrintData
      end
      object miPrintDoc2: TMenuItem
        Tag = 2
        Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1103#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
        Visible = False
        OnClick = PrintData
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miPrintFile: TMenuItem
      Caption = #1042' '#1092#1072#1081#1083' ...'
      OnClick = PrintData
    end
  end
  object qryDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      
        'where (doc.clientid1=:clientid or doc.clientid1 is null or doc.c' +
        'lientid2=:clientid or doc.clientid2 is null) ')
    Left = 169
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object qryDocDOCID: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'DOCID'
      Required = True
    end
    object qryDocKIND: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
    end
    object qryDocDOCNO: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object qryDocDATE1: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object qryDocCLIENTNAME1: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Size = 200
    end
    object qryDocCLIENTNAME2: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Size = 200
    end
    object qryDocCOMMENT: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      DisplayWidth = 10
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryDocCLIENTID1: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object qryDocCLIENTID2: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object qryDocSKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
  end
  object qryInDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid2=:clientid ')
    Left = 201
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
    end
    object IBStringField1: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField2: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Size = 200
    end
    object IBStringField3: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Visible = False
      Size = 200
    end
    object qryInDocCOMMENT: TBlobField
      DisplayLabel = #1047#1072#1084#1077#1095#1072#1085#1080#1103
      DisplayWidth = 10
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField2: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField3: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField4: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryInDocSKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
  end
  object qryOutDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid1=:clientid')
    Left = 313
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object IntegerField5: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
    end
    object IBStringField5: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField6: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Visible = False
      Size = 200
    end
    object IBStringField7: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Size = 200
    end
    object qryOutDocCOMMENT: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField6: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField7: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField8: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryOutDocSKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
  end
  object qryInDocQuery: TIBQuery
    Tag = 1
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid2=:clientid and kind IN (3,259,515)')
    Left = 265
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object IntegerField9: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
      Visible = False
    end
    object IBStringField9: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField5: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField10: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Size = 200
    end
    object IBStringField11: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Visible = False
      Size = 200
    end
    object qryInDocQueryCOMMENT: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField10: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField11: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField12: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryInDocQuerySKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
  end
  object qryOutDocQuery: TIBQuery
    Tag = 1
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid1=:clientid and kind in (3,259,515)')
    Left = 377
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object IntegerField13: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
      Visible = False
    end
    object IBStringField13: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField7: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField14: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Visible = False
      Size = 200
    end
    object IBStringField15: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Size = 200
    end
    object qryOutDocQueryCOMMENT: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField14: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField15: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField16: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryOutDocQuerySKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
    object qryOutDocQuerySUM0: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUM0'
      Origin = 'DOC.SUM0'
      DisplayFormat = '# ##0.00'
    end
    object qryOutDocQuerySUM1: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1053#1044#1057
      FieldName = 'SUM1'
      Origin = 'DOC.SUM1'
      DisplayFormat = '# ##0.00'
    end
    object qryOutDocQuerySUM3: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'SUM3'
      Origin = 'DOC.SUM3'
      DisplayFormat = '# ##0.00'
    end
  end
  object qryInDocProd: TIBQuery
    Tag = 1
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    OnCalcFields = qryDocCalcFields
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid2=:clientid and kind in (1,257,513)')
    Left = 201
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object IntegerField17: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
      Visible = False
    end
    object IBStringField17: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField18: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Size = 200
    end
    object IBStringField19: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Visible = False
      Size = 200
    end
    object qryInDocProdSUM0: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUM0'
      Origin = 'DOC.SUM0'
      DisplayFormat = '# ##0.00'
    end
    object qryInDocProdSUM1: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1053#1044#1057
      FieldName = 'SUM1'
      Origin = 'DOC.SUM1'
      DisplayFormat = '# ##0.00'
    end
    object qryInDocProdOPLATA: TStringField
      DisplayLabel = #1054#1087#1083#1072#1090#1072
      FieldKind = fkCalculated
      FieldName = 'OPLATA'
      Origin = 'DOC.SKIND'
      Calculated = True
    end
    object qryInDocProdOPLATASUM: TFloatField
      DisplayLabel = #1054#1087#1083#1072#1095#1077#1085#1086
      FieldKind = fkCalculated
      FieldName = 'OPLATASUM'
      Origin = 'DOC.OST'
      DisplayFormat = '# ##0.00'
      Calculated = True
    end
    object qryInDocProdCOMMENT: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      DisplayWidth = 10
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField18: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField19: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField20: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryInDocProdSKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
    object qryInDocProdOST: TFloatField
      FieldName = 'OST'
      Visible = False
    end
  end
  object qryOutDocProd: TIBQuery
    Tag = 1
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    OnCalcFields = qryDocCalcFields
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid1=:clientid and kind in (1,257,513)')
    Left = 313
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'clientid'
        ParamType = ptUnknown
        Value = '1'
      end>
    object IntegerField21: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
      Visible = False
    end
    object IBStringField21: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField22: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Visible = False
      Size = 200
    end
    object IBStringField23: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Size = 200
    end
    object FloatField0: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUM0'
      Origin = 'DOC.SUM0'
      DisplayFormat = '# ##0.00'
    end
    object qryOutDocProdOPLATA: TStringField
      DisplayLabel = #1054#1087#1083#1072#1090#1072
      FieldKind = fkCalculated
      FieldName = 'OPLATA'
      Origin = 'DOC.SKIND'
      Calculated = True
    end
    object FloatField1: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1053#1044#1057
      FieldName = 'SUM1'
      Origin = 'DOC.SUM1'
      DisplayFormat = '# ##0.00'
    end
    object qryOutDocProdSUM3: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'SUM3'
      Origin = 'DOC.SUM3'
      DisplayFormat = '# ##0.00'
    end
    object qryOutDocProdOPLATASUM: TFloatField
      DisplayLabel = #1054#1087#1083#1072#1095#1077#1085#1086
      FieldKind = fkCalculated
      FieldName = 'OPLATASUM'
      Origin = 'DOC.OST'
      DisplayFormat = '# ##0.00'
      Calculated = True
    end
    object qryOutDocProdCOMMENT: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField22: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField23: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField24: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryOutDocProdSKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
    object qryOutDocProdOST: TFloatField
      FieldName = 'OST'
      Visible = False
    end
  end
  object procCreateQuery: TIBStoredProc
    Database = Data.db
    Transaction = Data.trApply
    StoredProcName = 'CREATE_DOC_QUERY'
    Left = 136
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DOCID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTID'
        ParamType = ptInput
      end>
  end
  object qryInDocCredit: TIBQuery
    Tag = 1
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    OnCalcFields = qryDocCalcFields
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid2=:clientid and kind in (2,258,514)')
    Left = 233
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object IntegerField25: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
      Visible = False
    end
    object qryInDocCreditOPLATA: TStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkCalculated
      FieldName = 'OPLATA'
      Origin = 'DOC.SKIND'
      Calculated = True
    end
    object IBStringField4: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField6: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField8: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Size = 200
    end
    object IBStringField12: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Visible = False
      Size = 200
    end
    object qryInDocCreditSUM0: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUM0'
      Origin = 'DOC.SUM0'
      OnGetText = qryCreditSUMGetText
      DisplayFormat = '# ##0.00'
    end
    object qryInDocCreditPARAM6: TIBStringField
      DisplayLabel = #1057#1095#1077#1090
      FieldName = 'PARAM6'
      Size = 10
    end
    object BlobField1: TBlobField
      DisplayLabel = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField26: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField27: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField28: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryInDocCreditSKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
  end
  object qryOutDocCredit: TIBQuery
    Tag = 1
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryDocAfterOpen
    BeforeOpen = qryDocBeforeOpen
    OnCalcFields = qryDocCalcFields
    SQL.Strings = (
      'select doc.*,'
      'get_full_name(c1.fullname, c1.name) clientname1,'
      'get_full_name(c2.fullname, c2.name) clientname2'
      'from doc'
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'where doc.clientid1=:clientid and kind in (2,258,514)')
    Left = 345
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object IntegerField29: TIntegerField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 5
      FieldName = 'KIND'
      Origin = 'DOC.KIND'
      Visible = False
    end
    object qryOutDocCreditOPLATA: TStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkCalculated
      FieldName = 'OPLATA'
      Origin = 'DOC.SKIND'
      Calculated = True
    end
    object IBStringField16: TIBStringField
      DisplayLabel = #8470
      DisplayWidth = 10
      FieldName = 'DOCNO'
      Origin = 'DOC.DOCNO'
      Size = 10
    end
    object DateTimeField8: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      Origin = 'DOC.DATE1'
    end
    object IBStringField20: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1086#1075#1086
      DisplayWidth = 25
      FieldName = 'CLIENTNAME1'
      Origin = 'C1.NAME'
      Visible = False
      Size = 200
    end
    object IBStringField24: TIBStringField
      DisplayLabel = #1050#1086#1084#1091
      DisplayWidth = 25
      FieldName = 'CLIENTNAME2'
      Origin = 'C2.NAME'
      Size = 200
    end
    object qryOutDocCreditSUM0: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUM0'
      Origin = 'DOC.SUM0'
      OnGetText = qryCreditSUMGetText
      DisplayFormat = '# ##0.00'
    end
    object qryOutDocCreditPARAM6: TIBStringField
      DisplayLabel = #1057#1095#1077#1090
      FieldName = 'PARAM6'
      Size = 10
    end
    object BlobField2: TBlobField
      DisplayLabel = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077
      FieldName = 'COMMENT'
      Origin = 'DOC.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object IntegerField30: TIntegerField
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object IntegerField31: TIntegerField
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object IntegerField32: TIntegerField
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryOutDocCreditSKIND: TSmallintField
      FieldName = 'SKIND'
      Visible = False
    end
  end
  object srcSklad: TDataSource
    DataSet = Data.qrySklad
    Left = 136
    Top = 288
  end
end
