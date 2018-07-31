object ProductForm: TProductForm
  Left = 264
  Top = 169
  ActiveControl = edtSearch
  Caption = #1058#1086#1074#1072#1088#1099
  ClientHeight = 497
  ClientWidth = 780
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
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object splitter: TSplitter
    Left = 0
    Top = 331
    Width = 780
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Visible = False
    ExplicitTop = 333
    ExplicitWidth = 659
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 780
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
    ExplicitWidth = 659
    object ToolBar: TToolBar
      Left = 11
      Top = 2
      Width = 369
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
      object btnView: TToolButton
        Left = 0
        Top = 0
        Action = actView
        Style = tbsCheck
      end
      object btnPrint: TToolButton
        Left = 39
        Top = 0
        Action = actPrint
        DropdownMenu = mPrint
      end
      object btnQuery: TToolButton
        Left = 78
        Top = 0
        Action = actQuery
        DropdownMenu = mQuery
      end
      object btnSep1: TToolButton
        Left = 117
        Top = 0
        Width = 8
        Caption = 'btnSep1'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object btnRefresh: TToolButton
        Left = 125
        Top = 0
        Action = actRefresh
      end
      object btnAdd: TToolButton
        Left = 164
        Top = 0
        Action = actNew
      end
      object btnDelete: TToolButton
        Left = 203
        Top = 0
        Action = actDelete
      end
      object btnEdit: TToolButton
        Left = 242
        Top = 0
        Action = actEdit
        Style = tbsCheck
      end
      object btnSep2: TToolButton
        Left = 281
        Top = 0
        Width = 8
        Caption = 'btnSep2'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object btnCancel: TToolButton
        Left = 289
        Top = 0
        Action = actCancel
      end
      object btnApply: TToolButton
        Left = 328
        Top = 0
        Action = actApply
      end
    end
    object barNavigator: TDBNavigator
      Left = 393
      Top = 2
      Width = 120
      Height = 38
      DataSource = srcProduct
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
      Width = 502
      Height = 38
      BevelOuter = bvNone
      TabOrder = 2
      object btnFilter: TSpeedButton
        Left = 385
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
        Left = 144
        Top = 8
        Width = 241
        Height = 21
        HideSelection = False
        TabOrder = 0
        OnChange = SeachEditChange
        OnKeyDown = edtSearchKeyDown
      end
      object cbFields: TwwDBComboBox
        Left = 14
        Top = 9
        Width = 131
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
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        OnChange = cbFieldsChange
        OnKeyDown = FormKeyDown
      end
      object btnFilterPrice: TCheckBox
        Left = 424
        Top = 10
        Width = 65
        Height = 17
        Caption = ' '#1042' '#1087#1088#1072#1081#1089
        TabOrder = 2
        OnClick = SeachEditChange
      end
    end
  end
  object pnlView: TScrollBox
    Left = 0
    Top = 334
    Width = 780
    Height = 163
    VertScrollBar.Position = 58
    Align = alBottom
    Constraints.MinHeight = 85
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 117
      Top = 129
      Width = 44
      Height = 13
      Caption = #1047#1072#1084#1077#1090#1082#1080
    end
    object Label1: TLabel
      Left = 81
      Top = -48
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lbId: TDBText
      Left = 7
      Top = -52
      Width = 17
      Height = 13
      AutoSize = True
      DataField = 'PRODID'
      DataSource = srcProduct
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnShadow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 100
      Top = -21
      Width = 57
      Height = 13
      Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
    end
    object btnClass: TSpeedButton
      Left = 447
      Top = -23
      Width = 19
      Height = 19
      Hint = #1058#1080#1087#1099' '#1090#1086#1074#1072#1088#1086#1074'|'
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
      OnClick = btnClassClick
    end
    object Label2: TLabel
      Left = 78
      Top = 1
      Width = 79
      Height = 13
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
    end
    object btnProduser: TSpeedButton
      Left = 447
      Top = -1
      Width = 19
      Height = 19
      Hint = #1058#1080#1087#1099' '#1090#1086#1074#1072#1088#1086#1074'|'
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
      OnClick = btnClassClick
    end
    object Label27: TLabel
      Left = 28
      Top = 109
      Width = 133
      Height = 13
      Caption = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103
      WordWrap = True
    end
    object Label4: TLabel
      Left = 110
      Top = 51
      Width = 47
      Height = 13
      Caption = #1060#1072#1089#1086#1074#1082#1072
    end
    object Label5: TLabel
      Left = 115
      Top = 28
      Width = 42
      Height = 13
      Caption = #1045#1076' '#1080#1079#1084'. '
    end
    object Label6: TLabel
      Left = 300
      Top = 31
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = #1042' '#1084#1077#1089#1090#1077
    end
    object Label23: TLabel
      Left = 116
      Top = 82
      Width = 41
      Height = 13
      Caption = #1053#1044#1057' (%)'
    end
    object Label7: TLabel
      Left = 284
      Top = 51
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = #1042#1077#1089' '#1077#1076'. ('#1082#1075')'
    end
    object Label8: TLabel
      Left = 75
      Top = 159
      Width = 86
      Height = 13
      Caption = #1052#1077#1089#1090#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
    end
    object Label9: TLabel
      Left = 93
      Top = 191
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1088#1072#1081#1089' 1 '#1094#1077#1085#1072
    end
    object Label10: TLabel
      Left = 93
      Top = 215
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1088#1072#1081#1089' 2 '#1094#1077#1085#1072
    end
    object Label11: TLabel
      Left = 93
      Top = 239
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1088#1072#1081#1089' 3 '#1094#1077#1085#1072
    end
    object Label12: TLabel
      Left = 280
      Top = 191
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1088#1072#1081#1089' 4 '#1094#1077#1085#1072
    end
    object Label13: TLabel
      Left = 280
      Top = 215
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1088#1072#1081#1089' 5 '#1094#1077#1085#1072
    end
    object Label14: TLabel
      Left = 469
      Top = 51
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1083'.-'#1074#1086
    end
    object edtComment: TDBEdit
      Left = 168
      Top = 126
      Width = 281
      Height = 21
      DataField = 'COMMENT'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 11
      OnKeyDown = FormKeyDown
    end
    object edtName: TDBEdit
      Left = 168
      Top = -51
      Width = 225
      Height = 21
      DataField = 'NAME'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object edtClass: TwwDBLookupCombo
      Left = 168
      Top = -24
      Width = 281
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        'SMALLNAME'#9'10'#9#1050#1088#1072#1090#1082#1086#9'F')
      DataField = 'CLASSNAME'
      DataSource = srcProduct
      LookupTable = qryClass
      LookupField = 'NAME'
      ReadOnly = True
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnEnter = edtClassEnter
      OnKeyDown = FormKeyDown
    end
    object edtProduser: TwwDBLookupCombo
      Left = 168
      Top = -2
      Width = 281
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        'SMALLNAME'#9'10'#9#1050#1088#1072#1090#1082#1086#9'F')
      DataField = 'PRODUSERNAME'
      DataSource = srcProduct
      LookupTable = qryProduser
      LookupField = 'NAME'
      ReadOnly = True
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnEnter = edtClassEnter
      OnKeyDown = FormKeyDown
    end
    object edtSert: TDBEdit
      Left = 168
      Top = 104
      Width = 281
      Height = 21
      DataField = 'SERTIFICAT'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 10
      OnKeyDown = FormKeyDown
    end
    object edtLen: TwwDBComboBox
      Left = 168
      Top = 48
      Width = 97
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      DataField = 'LEN'
      DataSource = srcProduct
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        '1/25'
        '1/50'
        '1/100'
        '1/200'
        '1/250'
        '1/500')
      ReadOnly = True
      Sorted = False
      TabOrder = 6
      UnboundDataType = wwDefault
      OnKeyDown = FormKeyDown
    end
    object edtDim: TwwDBComboBox
      Left = 168
      Top = 26
      Width = 97
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      DataField = 'DIM'
      DataSource = srcProduct
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        #1096#1090
        #1082#1075
        #1083
        #1090)
      ReadOnly = True
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
      OnKeyDown = FormKeyDown
    end
    object edtUnit: TDBEdit
      Left = 352
      Top = 26
      Width = 97
      Height = 21
      DataField = 'UNIT'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 5
      OnKeyDown = FormKeyDown
    end
    object edtNDS: TDBEdit
      Left = 168
      Top = 76
      Width = 97
      Height = 21
      DataField = 'NDS'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 9
      OnKeyDown = FormKeyDown
    end
    object edtWeight: TDBEdit
      Left = 352
      Top = 48
      Width = 97
      Height = 21
      DataField = 'WEIGHT'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 7
      OnKeyDown = FormKeyDown
    end
    object edtSpot: TDBEdit
      Left = 168
      Top = 156
      Width = 281
      Height = 21
      DataField = 'SPOT'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 12
      OnKeyDown = FormKeyDown
    end
    object edtPrice: TDBEdit
      Left = 168
      Top = 188
      Width = 97
      Height = 21
      DataField = 'PRICE'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 13
      OnKeyDown = FormKeyDown
    end
    object btnPrice: TDBCheckBox
      Left = 402
      Top = -49
      Width = 62
      Height = 17
      Caption = #1042' '#1087#1088#1072#1081#1089
      DataField = 'KIND'
      DataSource = srcProduct
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = 'False'
    end
    object edtPrice2: TDBEdit
      Left = 168
      Top = 212
      Width = 97
      Height = 21
      DataField = 'PRICE2'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 14
      OnKeyDown = FormKeyDown
    end
    object edtPrice3: TDBEdit
      Left = 168
      Top = 236
      Width = 97
      Height = 21
      DataField = 'PRICE3'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 15
      OnKeyDown = FormKeyDown
    end
    object edtPrice4: TDBEdit
      Left = 352
      Top = 188
      Width = 97
      Height = 21
      DataField = 'PRICE4'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 16
      OnKeyDown = FormKeyDown
    end
    object edtPrice5: TDBEdit
      Left = 352
      Top = 212
      Width = 97
      Height = 21
      DataField = 'PRICE5'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 17
      OnKeyDown = FormKeyDown
    end
    object edtWeightCount: TDBEdit
      Left = 512
      Top = 48
      Width = 73
      Height = 21
      DataField = 'WCNT'
      DataSource = srcProduct
      ReadOnly = True
      TabOrder = 8
      OnKeyDown = FormKeyDown
    end
  end
  object grdProduct: TwwDBGrid
    Left = 0
    Top = 84
    Width = 780
    Height = 247
    LineStyle = gls3D
    ControlType.Strings = (
      'KIND;CheckBox;1;0')
    Selected.Strings = (
      'KIND'#9'2'#9' '#9#9
      'CLASSNAME'#9'15'#9#1058#1080#1087' '#1090#1086#1074#1072#1088#1072#9#9
      'PRODUSERNAME'#9'15'#9#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#9#9
      'LEN'#9'10'#9#1060#1072#1089'.'#9#9
      'UNIT'#9'10'#9#1042' '#1084#1077#1089#1090#1077#9#9
      'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1077#1085#1080#1077#9#9
      'SERTIFICAT'#9'10'#9#1057#1077#1088#1090'.'#9#9
      'COMMENT'#9'10'#9#1047#1072#1084#1077#1090#1082#1080#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    Align = alClient
    DataSource = srcProduct
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcTitleAttributes = grdProductCalcTitleAttributes
    OnTitleButtonClick = grdProductTitleButtonClick
    OnDblClick = SelectRecord
    OnKeyDown = FormKeyDown
    OnKeyPress = grdProductKeyPress
    OnCalcTitleImage = grdProductCalcTitleImage
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
  end
  object srcProduct: TDataSource
    DataSet = qryProduct
    OnDataChange = srcProductDataChange
    Left = 328
    Top = 120
  end
  object qryProduct: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    BeforeDelete = ModifiedData
    BeforeEdit = ModifiedData
    BeforeInsert = ModifiedData
    BeforeOpen = qryBeforeOpen
    BeforePost = qryBeforePost
    OnCalcFields = qryProductCalcFields
    CachedUpdates = True
    SQL.Strings = (
      'select product.*,'
      
        'class.name classname, cast(get_full_name(class.fullname, class.n' +
        'ame) as varchar(50)) class,'
      
        'produser.name produsername, cast(get_full_name(produser.fullname' +
        ', produser.name) as varchar(50)) produser'
      'from product'
      'left join class on class.classid=product.classid'
      'left join produser on produser.produserid=product.produserid')
    UpdateObject = updProduct
    Filtered = True
    OnFilterRecord = qryProductFilterRecord
    Left = 296
    Top = 120
    object qryProductKIND: TSmallintField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'KIND'
    end
    object qryProductCLASSNAME: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
      DisplayWidth = 15
      FieldName = 'CLASSNAME'
      Origin = 'CLASS.NAME'
      Size = 30
    end
    object qryProductPRODUSERNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
      DisplayWidth = 15
      FieldName = 'PRODUSERNAME'
      Origin = 'PRODUSER.NAME'
      Size = 30
    end
    object qryProductLEN: TIBStringField
      DisplayLabel = #1060#1072#1089'.'
      DisplayWidth = 10
      FieldName = 'LEN'
      Origin = 'PRODUCT.LEN'
      Size = 10
    end
    object qryProductUNIT: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 10
      FieldName = 'UNIT'
    end
    object qryProductNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1077#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'PRODUCT.NAME'
      Size = 50
    end
    object qryProductSERTIFICAT: TBlobField
      DisplayLabel = #1057#1077#1088#1090'.'
      DisplayWidth = 10
      FieldName = 'SERTIFICAT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryProductCOMMENT: TBlobField
      DisplayLabel = #1047#1072#1084#1077#1090#1082#1080
      DisplayWidth = 10
      FieldName = 'COMMENT'
      Origin = 'PRODUCT.COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryProductPRICE: TFloatField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'PRICE'
      Visible = False
    end
    object qryProductPRICE2: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PRICE2'
      Visible = False
    end
    object qryProductPRICE3: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PRICE3'
      Visible = False
    end
    object qryProductPRICE4: TFloatField
      FieldName = 'PRICE4'
      Origin = 'PRODUCT.PRICE4'
      Visible = False
    end
    object qryProductPRICE5: TFloatField
      FieldName = 'PRICE5'
      Origin = 'PRODUCT.PRICE5'
      Visible = False
    end
    object qryProductCLASSID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CLASSID'
      Visible = False
    end
    object qryProductPRODUSERID: TIntegerField
      FieldName = 'PRODUSERID'
      Visible = False
    end
    object qryProductPRODID: TIntegerField
      FieldName = 'PRODID'
      Required = True
      Visible = False
    end
    object qryProductDIM: TIBStringField
      FieldName = 'DIM'
      Visible = False
      Size = 10
    end
    object qryProductNDS: TFloatField
      Alignment = taLeftJustify
      DefaultExpression = '20'
      FieldName = 'NDS'
      Visible = False
    end
    object qryProductWEIGHT: TFloatField
      Alignment = taLeftJustify
      FieldName = 'WEIGHT'
      Visible = False
    end
    object qryProductSPOT: TIBStringField
      FieldName = 'SPOT'
      Visible = False
      Size = 10
    end
    object qryProductCLASS: TIBStringField
      FieldName = 'CLASS'
      Visible = False
      Size = 50
    end
    object qryProductPRODUSER: TIBStringField
      FieldName = 'PRODUSER'
      Visible = False
      Size = 50
    end
    object qryProductNEWPRICE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NEWPRICE'
      Visible = False
      Calculated = True
    end
    object qryProductNEWPRICE2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NEWPRICE2'
      Visible = False
      Calculated = True
    end
    object qryProductNEWPRICE3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NEWPRICE3'
      Visible = False
      Calculated = True
    end
    object qryProductNEWPRICE4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NEWPRICE4'
      Visible = False
      Calculated = True
    end
    object qryProductNEWPRICE5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NEWPRICE5'
      Visible = False
      Calculated = True
    end
    object qryProductWCNT: TFloatField
      DisplayWidth = 10
      FieldName = 'WCNT'
      Origin = '"PRODUCT"."WCNT"'
      Visible = False
    end
  end
  object ActionList: TActionList
    Left = 406
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
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100'| '#1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1090#1086#1074#1072#1088' (Ctrl+N)'
      ImageIndex = 2
      OnExecute = ActionExecute
    end
    object actDelete: TAction
      Category = 'Data'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100'| '#1059#1076#1072#1083#1080#1090#1100' '#1090#1086#1074#1072#1088' (Ctrl+D)'
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
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088'| '#1055#1088#1086#1089#1084#1086#1090#1088' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1090#1086#1074#1072#1088#1077' (Ctrl+S)'
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
  object updProduct: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from product '
      'where'
      '  PRODID = :PRODID')
    ModifySQL.Strings = (
      'update product'
      'set'
      '  PRODID = :PRODID,'
      '  CLASSID = :CLASSID,'
      '  PRODUSERID = :PRODUSERID,'
      '  NAME = :NAME,'
      '  DIM = :DIM,'
      '  LEN = :LEN,'
      '  UNIT = :UNIT,'
      '  NDS = :NDS,'
      '  WEIGHT = :WEIGHT,'
      '  COMMENT = :COMMENT,'
      '  SERTIFICAT = :SERTIFICAT,'
      '  SPOT = :SPOT,'
      '  KIND = :KIND,'
      '  PRICE = :PRICE,'
      '  PRICE2 = :PRICE2,'
      '  PRICE3 = :PRICE3,'
      '  PRICE4 = :PRICE4,'
      '  PRICE5 = :PRICE5,'
      '  WCNT = :WCNT'
      'where'
      '  PRODID = :OLD_PRODID')
    InsertSQL.Strings = (
      'insert into product'
      
        '  (PRODID, CLASSID, PRODUSERID, NAME, DIM, LEN, UNIT, NDS, WEIGH' +
        'T, COMMENT, '
      
        '   SERTIFICAT, SPOT, KIND, PRICE, PRICE2, PRICE3, PRICE4, PRICE5' +
        ', WCNT)'
      'values'
      
        '  (:PRODID, :CLASSID, :PRODUSERID, :NAME, :DIM, :LEN, :UNIT, :ND' +
        'S, :WEIGHT, '
      
        '   :COMMENT, :SERTIFICAT, :SPOT, :KIND, :PRICE, :PRICE2, :PRICE3' +
        ', :PRICE4, :PRICE5, :WCNT)')
    DeleteSQL.Strings = (
      'delete from product'
      'where'
      '  PRODID = :OLD_PRODID')
    Left = 263
    Top = 121
  end
  object qryClass: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    AfterPost = qryAfterPost
    BeforeDelete = ModifiedData
    BeforeEdit = ModifiedData
    BeforeInsert = ModifiedData
    BeforePost = qryBeforePost
    CachedUpdates = True
    SQL.Strings = (
      'select * from class order by name')
    UpdateObject = updClass
    Left = 296
    Top = 152
    object qryClassCLASSID: TIntegerField
      FieldName = 'CLASSID'
      Required = True
      Visible = False
    end
    object qryClassNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 30
    end
    object qryClassFULLNAME: TIBStringField
      DisplayLabel = #1055#1086#1083#1085#1086#1077
      FieldName = 'FULLNAME'
      Size = 50
    end
    object qryClassSMALLNAME: TIBStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086#1077
      FieldName = 'SMALLNAME'
      Size = 30
    end
  end
  object updClass: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CLASSID,'
      '  PCLASSID,'
      '  NAME,'
      '  SMALLNAME,'
      '  FULLNAME,'
      '  ICON'
      'from class '
      'where'
      '  CLASSID = :CLASSID')
    ModifySQL.Strings = (
      'update class'
      'set'
      '  CLASSID = :CLASSID,'
      '  PCLASSID = :PCLASSID,'
      '  NAME = :NAME,'
      '  SMALLNAME = :SMALLNAME,'
      '  FULLNAME = :FULLNAME,'
      '  ICON = :ICON'
      'where'
      '  CLASSID = :OLD_CLASSID')
    InsertSQL.Strings = (
      'insert into class'
      '  (CLASSID, PCLASSID, NAME, SMALLNAME, FULLNAME, ICON)'
      'values'
      '  (:CLASSID, :PCLASSID, :NAME, :SMALLNAME, :FULLNAME, :ICON)')
    DeleteSQL.Strings = (
      'delete from class'
      'where'
      '  CLASSID = :OLD_CLASSID')
    Left = 263
    Top = 153
  end
  object srcClass: TDataSource
    DataSet = qryClass
    Left = 328
    Top = 152
  end
  object updProduser: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRODUSERID,'
      '  NAME,'
      '  SMALLNAME,'
      '  FULLNAME,'
      '  COUNTRY'
      'from produser '
      'where'
      '  PRODUSERID = :PRODUSERID')
    ModifySQL.Strings = (
      'update produser'
      'set'
      '  PRODUSERID = :PRODUSERID,'
      '  NAME = :NAME,'
      '  SMALLNAME = :SMALLNAME,'
      '  FULLNAME = :FULLNAME,'
      '  COUNTRY = :COUNTRY'
      'where'
      '  PRODUSERID = :OLD_PRODUSERID')
    InsertSQL.Strings = (
      'insert into produser'
      '  (PRODUSERID, NAME, SMALLNAME, FULLNAME, COUNTRY)'
      'values'
      '  (:PRODUSERID, :NAME, :SMALLNAME, :FULLNAME, :COUNTRY)')
    DeleteSQL.Strings = (
      'delete from produser'
      'where'
      '  PRODUSERID = :OLD_PRODUSERID')
    Left = 263
    Top = 185
  end
  object qryProduser: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    AfterPost = qryAfterPost
    BeforeDelete = ModifiedData
    BeforeEdit = ModifiedData
    BeforeInsert = ModifiedData
    BeforePost = qryBeforePost
    CachedUpdates = True
    SQL.Strings = (
      'select * from produser order by name')
    UpdateObject = updProduser
    Left = 296
    Top = 184
    object qryProduserPRODUSERID: TIntegerField
      FieldName = 'PRODUSERID'
      Required = True
      Visible = False
    end
    object qryProduserNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 30
    end
    object qryProduserFULLNAME: TIBStringField
      DisplayLabel = #1055#1086#1083#1085#1086#1077
      FieldName = 'FULLNAME'
      Size = 50
    end
    object qryProduserSMALLNAME: TIBStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086#1077
      FieldName = 'SMALLNAME'
      Size = 30
    end
    object qryProduserCOUNTRY: TIBStringField
      DisplayLabel = #1057#1090#1088#1072#1085#1072
      FieldName = 'COUNTRY'
      Size = 50
    end
  end
  object srcProduser: TDataSource
    DataSet = qryProduser
    Left = 328
    Top = 184
  end
  object mPrint: TPopupMenu
    Left = 432
    Top = 8
    object miPrice: TMenuItem
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
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
    Left = 464
    Top = 8
    object miCorrectWeight: TMenuItem
      Caption = #1057#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1077#1089' '#1090#1086#1074#1072#1088#1086#1074
      OnClick = ExecuteQuery
    end
  end
end
