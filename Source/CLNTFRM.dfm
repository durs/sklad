object ClientForm: TClientForm
  Left = 295
  Top = 100
  ActiveControl = edtSearch
  Caption = #1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 513
  ClientWidth = 628
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
  object splitter: TSplitter
    Left = 0
    Top = 199
    Width = 628
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    Visible = False
    ExplicitTop = 185
    ExplicitWidth = 577
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 628
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
    object ToolBar: TToolBar
      Left = 11
      Top = 2
      Width = 390
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
      object btnAdd: TToolButton
        Left = 125
        Top = 0
        Action = actNew
      end
      object btnDelete: TToolButton
        Left = 164
        Top = 0
        Action = actDelete
      end
      object btnEdit: TToolButton
        Left = 203
        Top = 0
        Action = actEdit
        Style = tbsCheck
      end
      object btnSep2: TToolButton
        Left = 242
        Top = 0
        Width = 8
        Caption = 'btnSep2'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object btnCancel: TToolButton
        Left = 250
        Top = 0
        Action = actCancel
      end
      object btnApply: TToolButton
        Left = 289
        Top = 0
        Action = actApply
      end
    end
    object barNavigator: TDBNavigator
      Left = 414
      Top = 2
      Width = 120
      Height = 38
      DataSource = srcClient
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
      Width = 523
      Height = 38
      BevelOuter = bvNone
      TabOrder = 2
      object btnFilter: TSpeedButton
        Left = 386
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
        Left = 136
        Top = 8
        Width = 249
        Height = 21
        HideSelection = False
        TabOrder = 0
        OnChange = SeachEditChange
        OnKeyDown = edtSearchKeyDown
      end
      object cbFields: TwwDBComboBox
        Left = 6
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
      object btnSklad: TCheckBox
        Left = 432
        Top = 11
        Width = 72
        Height = 17
        Alignment = taLeftJustify
        Caption = #1057#1082#1083#1072#1076#1099
        TabOrder = 2
        OnClick = SeachEditChange
      end
    end
  end
  object grdClient: TwwDBGrid
    Left = 0
    Top = 84
    Width = 628
    Height = 115
    LineStyle = gls3D
    Selected.Strings = (
      'NAME'#9'25'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1077#1085#1080#1077#9'F'
      'ADRESS'#9'20'#9#1040#1076#1088#1077#1089
      'PHONE'#9'10'#9#1058#1077#1083#1077#1092#1086#1085#1099
      'INN'#9'12'#9#1048#1053#1053
      'BANK'#9'25'#9#1041#1072#1085#1082
      'RS'#9'20'#9#1056'/'#1089)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = srcClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
    OnCalcTitleAttributes = grdClientCalcTitleAttributes
    OnTitleButtonClick = grdClientTitleButtonClick
    OnDblClick = SelectRecord
    OnKeyDown = FormKeyDown
    OnKeyPress = grdClientKeyPress
    OnCalcTitleImage = grdClientCalcTitleImage
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
  end
  object pnlView: TPanel
    Left = 0
    Top = 202
    Width = 628
    Height = 311
    Align = alBottom
    BevelOuter = bvLowered
    Constraints.MinHeight = 200
    TabOrder = 2
    Visible = False
    object pcClient: TPageControl
      Left = 1
      Top = 36
      Width = 626
      Height = 274
      ActivePage = tsSklad
      Align = alClient
      TabOrder = 1
      OnChange = pcClientChange
      object tsClient: TTabSheet
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1083#1080#1077#1085#1090#1077
        DragMode = dmAutomatic
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 618
          Height = 246
          Align = alClient
          TabOrder = 0
          object Label31: TLabel
            Left = 356
            Top = 87
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = #1048#1053#1053' / '#1050#1055#1055
          end
          object Label52: TLabel
            Left = 87
            Top = 37
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = #1040#1076#1088#1077#1089
          end
          object Label53: TLabel
            Left = 408
            Top = 37
            Width = 22
            Height = 13
            Caption = #1058#1077#1083'.'
          end
          object Label44: TLabel
            Left = 305
            Top = 143
            Width = 25
            Height = 13
            Caption = #1041#1072#1085#1082
          end
          object Label45: TLabel
            Left = 276
            Top = 164
            Width = 55
            Height = 13
            Caption = #1050#1086#1088#1088'. '#1073#1072#1085#1082
          end
          object Label46: TLabel
            Left = 66
            Top = 143
            Width = 52
            Height = 13
            Caption = #1056#1072#1089#1095'. '#1089#1095#1105#1090
          end
          object Label47: TLabel
            Left = 441
            Top = 115
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = #1041#1048#1050
          end
          object Label48: TLabel
            Left = 64
            Top = 164
            Width = 53
            Height = 13
            Caption = #1050#1086#1088#1088'. '#1089#1095#1105#1090
          end
          object Label49: TLabel
            Left = -50
            Top = 134
            Width = 76
            Height = 13
            Caption = #1057#1091#1073'. '#1082#1086#1088#1088'. '#1089#1095#1077#1090
            Visible = False
          end
          object Label50: TLabel
            Left = 79
            Top = 115
            Width = 38
            Height = 13
            Caption = #1054#1050#1054#1053#1061
          end
          object Label51: TLabel
            Left = 271
            Top = 115
            Width = 31
            Height = 13
            Caption = #1054#1050#1055#1054
          end
          object Label3: TLabel
            Left = 53
            Top = 87
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
          end
          object Label4: TLabel
            Left = 4
            Top = 8
            Width = 115
            Height = 13
            Alignment = taRightJustify
            Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          end
          object Label23: TLabel
            Left = 33
            Top = 59
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100
            WordWrap = True
          end
          object Label28: TLabel
            Left = 37
            Top = 195
            Width = 82
            Height = 13
            Alignment = taRightJustify
            Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1055#1050#1054
            WordWrap = True
          end
          object Label29: TLabel
            Left = 38
            Top = 219
            Width = 81
            Height = 13
            Alignment = taRightJustify
            Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1056#1050#1054
            WordWrap = True
          end
          object DBEdit11: TDBEdit
            Left = 424
            Top = 84
            Width = 134
            Height = 21
            DataField = 'INN'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 5
            OnKeyDown = FormKeyDown
          end
          object DBEdit9: TDBEdit
            Left = 125
            Top = 34
            Width = 273
            Height = 21
            DataField = 'ADRESS'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 1
            OnKeyDown = FormKeyDown
          end
          object DBEdit7: TDBEdit
            Left = 436
            Top = 34
            Width = 122
            Height = 21
            DataField = 'PHONE'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = FormKeyDown
          end
          object DBEdit6: TDBEdit
            Left = 338
            Top = 140
            Width = 220
            Height = 21
            DataField = 'BANK'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 10
            OnKeyDown = FormKeyDown
          end
          object DBEdit10: TDBEdit
            Left = 338
            Top = 162
            Width = 220
            Height = 21
            DataField = 'KORBANK'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 12
            OnKeyDown = FormKeyDown
          end
          object DBEdit15: TDBEdit
            Left = 125
            Top = 140
            Width = 140
            Height = 21
            DataField = 'RS'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 9
            OnKeyDown = FormKeyDown
          end
          object DBEdit14: TDBEdit
            Left = 469
            Top = 112
            Width = 89
            Height = 21
            DataField = 'BIK'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 8
            OnKeyDown = FormKeyDown
          end
          object DBEdit13: TDBEdit
            Left = 125
            Top = 162
            Width = 140
            Height = 21
            DataField = 'KS'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 11
            OnKeyDown = FormKeyDown
          end
          object DBEdit12: TDBEdit
            Left = -27
            Top = 155
            Width = 52
            Height = 21
            DataField = 'SKS'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 13
            Visible = False
            OnKeyDown = FormKeyDown
          end
          object DBEdit4: TDBEdit
            Left = 125
            Top = 112
            Width = 121
            Height = 21
            DataField = 'OKONX'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 6
            OnKeyDown = FormKeyDown
          end
          object DBEdit3: TDBEdit
            Left = 309
            Top = 112
            Width = 121
            Height = 21
            DataField = 'OKPO'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 7
            OnKeyDown = FormKeyDown
          end
          object DBEdit2: TDBEdit
            Left = 125
            Top = 84
            Width = 212
            Height = 21
            DataField = 'REG'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 4
            OnKeyDown = FormKeyDown
          end
          object DBEdit16: TDBEdit
            Left = 125
            Top = 7
            Width = 433
            Height = 21
            DataField = 'FULLNAME'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 0
            OnKeyDown = FormKeyDown
          end
          object DBEdit19: TDBEdit
            Left = 125
            Top = 56
            Width = 433
            Height = 21
            DataField = 'ADDRESS2'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 3
            OnKeyDown = FormKeyDown
          end
          object DBEdit23: TDBEdit
            Left = 125
            Top = 192
            Width = 433
            Height = 21
            DataField = 'REASON_PKO'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 14
            OnKeyDown = FormKeyDown
          end
          object DBEdit24: TDBEdit
            Left = 125
            Top = 216
            Width = 433
            Height = 21
            DataField = 'REASON_RKO'
            DataSource = srcClient
            ReadOnly = True
            TabOrder = 15
            OnKeyDown = FormKeyDown
          end
        end
      end
      object tsSklad: TTabSheet
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1082#1083#1072#1076#1072
        ImageIndex = 1
        object Label6: TLabel
          Left = 32
          Top = 24
          Width = 177
          Height = 13
          Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1082#1083#1072#1076#1077' '#1086#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
        end
        object btnSkladCreate: TButton
          Left = 256
          Top = 17
          Width = 193
          Height = 25
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1089#1082#1083#1072#1076
          TabOrder = 1
          OnClick = btnSkladCreateClick
          OnKeyDown = FormKeyDown
        end
        object pcSklad: TPageControl
          Left = 0
          Top = 0
          Width = 618
          Height = 246
          ActivePage = tsOptions
          Align = alClient
          TabOrder = 0
          object tsOptions: TTabSheet
            Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
            object Label43: TLabel
              Left = 272
              Top = 60
              Width = 56
              Height = 13
              Caption = #1044#1080#1088#1077#1082#1090#1086#1088' :'
            end
            object Label2: TLabel
              Left = 288
              Top = 84
              Width = 43
              Height = 13
              Caption = #1043#1083'. '#1073#1091#1093'. :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 285
              Top = 108
              Width = 43
              Height = 13
              Caption = #1050#1072#1089#1089#1080#1088' :'
            end
            object Label22: TLabel
              Left = 269
              Top = 132
              Width = 64
              Height = 13
              Caption = #1050#1083#1072#1076#1086#1074#1097#1080#1082' :'
            end
            object btnSkladDelete: TButton
              Left = 352
              Top = 13
              Width = 129
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1082#1083#1072#1076
              TabOrder = 0
              TabStop = False
              OnClick = btnSkladDeleteClick
              OnKeyDown = FormKeyDown
            end
            object edtSkladHidden: TDBCheckBox
              Left = 24
              Top = 56
              Width = 201
              Height = 17
              Alignment = taLeftJustify
              Caption = #1053#1077' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1089#1082#1083#1072#1076' '#1074' '#1089#1087#1080#1089#1082#1077
              DataField = 'HIDDEN'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnKeyDown = FormKeyDown
            end
            object edtSkladKind: TDBCheckBox
              Left = 24
              Top = 72
              Width = 201
              Height = 17
              Alignment = taLeftJustify
              Caption = #1058#1086#1074#1072#1088#1085#1099#1081' '#1086#1090#1095#1105#1090' '#1087#1086' '#1089#1089#1099#1083#1082#1077
              DataField = 'KIND'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnKeyDown = FormKeyDown
            end
            object DBEdit8: TDBEdit
              Left = 336
              Top = 56
              Width = 145
              Height = 21
              DataField = 'DIRECTOR'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 3
              OnKeyDown = FormKeyDown
            end
            object DBEdit1: TDBEdit
              Left = 336
              Top = 80
              Width = 145
              Height = 21
              DataField = 'BUGALTER'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 4
              OnKeyDown = FormKeyDown
            end
            object DBEdit17: TDBEdit
              Left = 336
              Top = 104
              Width = 145
              Height = 21
              DataField = 'KASSIR'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 5
              OnKeyDown = FormKeyDown
            end
            object DBEdit18: TDBEdit
              Left = 336
              Top = 128
              Width = 145
              Height = 21
              DataField = 'KLADOVCHIK'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 6
              OnKeyDown = FormKeyDown
            end
          end
          object TabSheet1: TTabSheet
            Caption = #1053#1091#1084#1077#1088#1072#1094#1080#1103
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label8: TLabel
              Left = 71
              Top = 37
              Width = 56
              Height = 13
              Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
            end
            object Label9: TLabel
              Left = 56
              Top = 15
              Width = 71
              Height = 13
              Caption = #1058#1086#1074#1072#1088#1085#1099#1081' '#1095#1077#1082
            end
            object Label10: TLabel
              Left = 304
              Top = 15
              Width = 71
              Height = 13
              Caption = #1050#1072#1089#1089#1086#1074#1099#1081' '#1095#1077#1082
            end
            object Label13: TLabel
              Left = 295
              Top = 37
              Width = 80
              Height = 13
              Caption = #1055#1088'. '#1082#1072#1089#1089'. '#1086#1088#1076#1077#1088
            end
            object Label14: TLabel
              Left = 292
              Top = 81
              Width = 83
              Height = 13
              Caption = #1055#1083#1072#1090'. '#1087#1086#1088#1091#1095#1077#1085#1080#1077
            end
            object Label15: TLabel
              Left = 285
              Top = 59
              Width = 90
              Height = 13
              Caption = #1056#1072#1089#1093'. '#1082#1072#1089#1089'. '#1086#1088#1076#1077#1088
            end
            object Label16: TLabel
              Left = 96
              Top = 81
              Width = 31
              Height = 13
              Caption = #1047#1072#1082#1072#1079
            end
            object Label17: TLabel
              Left = 10
              Top = 59
              Width = 117
              Height = 13
              Caption = #1042#1086#1079#1074#1088#1072#1090#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
            end
            object edtNoDocProd: TDBEdit
              Left = 136
              Top = 34
              Width = 97
              Height = 21
              DataField = 'NODOCPROD'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 1
              OnKeyDown = FormKeyDown
            end
            object edtNoDocProd1: TDBEdit
              Left = 136
              Top = 12
              Width = 97
              Height = 21
              DataField = 'NODOCPROD1'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
            object edtNoCheck: TDBEdit
              Left = 384
              Top = 12
              Width = 97
              Height = 21
              DataField = 'NOCHECK'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 4
              OnKeyDown = FormKeyDown
            end
            object edtNoOrder: TDBEdit
              Left = 384
              Top = 34
              Width = 97
              Height = 21
              DataField = 'NOORDER'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 5
              OnKeyDown = FormKeyDown
            end
            object edtNoPlat: TDBEdit
              Left = 384
              Top = 78
              Width = 97
              Height = 21
              DataField = 'NOPLAT'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 7
              OnKeyDown = FormKeyDown
            end
            object edtNoROrder: TDBEdit
              Left = 384
              Top = 56
              Width = 97
              Height = 21
              DataField = 'NORORDER'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 6
              OnKeyDown = FormKeyDown
            end
            object edtNoQuery: TDBEdit
              Left = 136
              Top = 78
              Width = 97
              Height = 21
              DataField = 'NOQUERY'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 3
              OnKeyDown = FormKeyDown
            end
            object edtNoVDocProd: TDBEdit
              Left = 136
              Top = 56
              Width = 97
              Height = 21
              DataField = 'NOVDOCPROD'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 2
              OnKeyDown = FormKeyDown
            end
          end
          object tsPrice: TTabSheet
            Caption = #1062#1077#1085#1099
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox2: TGroupBox
              Left = 8
              Top = 3
              Width = 326
              Height = 192
              Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1094#1077#1085#1099
              TabOrder = 0
              object Label12: TLabel
                Left = 145
                Top = 21
                Width = 61
                Height = 13
                Caption = #1053#1072#1094#1077#1085#1082#1072' (%)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 228
                Top = 21
                Width = 60
                Height = 13
                Caption = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label27: TLabel
                Left = 28
                Top = 21
                Width = 76
                Height = 13
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object edtSkladPricePer: TDBEdit
                Left = 151
                Top = 40
                Width = 49
                Height = 21
                DataField = 'PRICE_PERCENT'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 1
                OnKeyDown = FormKeyDown
              end
              object btnSkladUseLastPrice: TDBCheckBox
                Left = 19
                Top = 164
                Width = 257
                Height = 17
                Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1086#1073#1085#1086#1074#1083#1103#1090#1100' '#1094#1077#1085#1091' '#1074' "'#1058#1086#1074#1072#1088#1072#1093'"'
                DataField = 'PRICE_PARAM'
                DataSource = srcSklad
                TabOrder = 15
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object edtSkladPriceRound: TwwDBComboBox
                Left = 218
                Top = 40
                Width = 89
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                DataField = 'PRICE_ROUND'
                DataSource = srcSklad
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #1076#1086' 1 '#1082#1086#1087'.'#9'1'
                  #1076#1086' 10 '#1082#1086#1087'.'#9'10'
                  #1076#1086' 1 '#1088#1091#1073'.'#9'100')
                ReadOnly = True
                Sorted = False
                TabOrder = 2
                UnboundDataType = wwDefault
                OnKeyDown = FormKeyDown
              end
              object edtSkladPricePer2: TDBEdit
                Left = 151
                Top = 64
                Width = 49
                Height = 21
                DataField = 'PRICE_PERCENT2'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 4
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceRound2: TwwDBComboBox
                Left = 218
                Top = 64
                Width = 89
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                DataField = 'PRICE_ROUND2'
                DataSource = srcSklad
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #1076#1086' 1 '#1082#1086#1087'.'#9'1'
                  #1076#1086' 10 '#1082#1086#1087'.'#9'10'
                  #1076#1086' 1 '#1088#1091#1073'.'#9'100')
                ReadOnly = True
                Sorted = False
                TabOrder = 5
                UnboundDataType = wwDefault
                OnKeyDown = FormKeyDown
              end
              object edtSkladPricePer3: TDBEdit
                Left = 151
                Top = 88
                Width = 49
                Height = 21
                DataField = 'PRICE_PERCENT3'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 7
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceRound3: TwwDBComboBox
                Left = 218
                Top = 88
                Width = 89
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                DataField = 'PRICE_ROUND3'
                DataSource = srcSklad
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #1076#1086' 1 '#1082#1086#1087'.'#9'1'
                  #1076#1086' 10 '#1082#1086#1087'.'#9'10'
                  #1076#1086' 1 '#1088#1091#1073'.'#9'100')
                ReadOnly = True
                Sorted = False
                TabOrder = 8
                UnboundDataType = wwDefault
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceName: TDBEdit
                Left = 19
                Top = 40
                Width = 115
                Height = 21
                DataField = 'PRICE_NAME'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 0
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceName2: TDBEdit
                Left = 19
                Top = 64
                Width = 115
                Height = 21
                DataField = 'PRICE_NAME2'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 3
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceName3: TDBEdit
                Left = 19
                Top = 88
                Width = 115
                Height = 21
                DataField = 'PRICE_NAME3'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 6
                OnKeyDown = FormKeyDown
              end
              object edtSkladPricePer4: TDBEdit
                Left = 151
                Top = 112
                Width = 49
                Height = 21
                DataField = 'PRICE_PERCENT4'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 10
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceRound4: TwwDBComboBox
                Left = 218
                Top = 112
                Width = 89
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                DataField = 'PRICE_ROUND4'
                DataSource = srcSklad
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #1076#1086' 1 '#1082#1086#1087'.'#9'1'
                  #1076#1086' 10 '#1082#1086#1087'.'#9'10'
                  #1076#1086' 1 '#1088#1091#1073'.'#9'100')
                ReadOnly = True
                Sorted = False
                TabOrder = 11
                UnboundDataType = wwDefault
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceName4: TDBEdit
                Left = 19
                Top = 112
                Width = 115
                Height = 21
                DataField = 'PRICE_NAME4'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 9
                OnKeyDown = FormKeyDown
              end
              object edtSkladPricePer5: TDBEdit
                Left = 151
                Top = 136
                Width = 49
                Height = 21
                DataField = 'PRICE_PERCENT5'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 13
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceRound5: TwwDBComboBox
                Left = 218
                Top = 136
                Width = 89
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = True
                AllowClearKey = False
                DataField = 'PRICE_ROUND5'
                DataSource = srcSklad
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  #1076#1086' 1 '#1082#1086#1087'.'#9'1'
                  #1076#1086' 10 '#1082#1086#1087'.'#9'10'
                  #1076#1086' 1 '#1088#1091#1073'.'#9'100')
                ReadOnly = True
                Sorted = False
                TabOrder = 14
                UnboundDataType = wwDefault
                OnKeyDown = FormKeyDown
              end
              object edtSkladPriceName5: TDBEdit
                Left = 19
                Top = 136
                Width = 115
                Height = 21
                DataField = 'PRICE_NAME5'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 12
                OnKeyDown = FormKeyDown
              end
            end
            object GroupBox1: TGroupBox
              Left = 471
              Top = 3
              Width = 131
              Height = 101
              Caption = #1069#1082#1089#1087#1086#1088#1090' '#1090#1086#1074#1072#1088#1086#1074
              TabOrder = 2
              TabStop = True
              object edtSkladParam2: TDBComboBox
                Left = 8
                Top = 40
                Width = 105
                Height = 21
                DataField = 'DOCPARAM2'
                DataSource = srcSklad
                ItemHeight = 0
                Items.Strings = (
                  '-50 %'
                  '-25 %'
                  '-20 %'
                  '-15 %'
                  '-10 %'
                  '-5 %'
                  '0 %'
                  '5 %'
                  '10 %'
                  '15 %'
                  '20 %')
                ReadOnly = True
                TabOrder = 1
                OnKeyDown = FormKeyDown
              end
              object btnInPrice: TCheckBox
                Left = 8
                Top = 20
                Width = 121
                Height = 17
                Caption = #1054#1090' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1094#1077#1085#1099
                TabOrder = 0
                OnClick = DataChanged
                OnKeyDown = FormKeyDown
              end
            end
            object GroupBox5: TGroupBox
              Left = 342
              Top = 3
              Width = 120
              Height = 101
              Caption = #1053#1072#1083#1086#1075' '#1089' '#1087#1088#1086#1076#1072#1078
              TabOrder = 1
              TabStop = True
              object edtSkladParam3: TDBComboBox
                Left = 8
                Top = 40
                Width = 105
                Height = 21
                DataField = 'DOCPARAM3'
                DataSource = srcSklad
                ItemHeight = 0
                Items.Strings = (
                  '0 %'
                  '2 %'
                  '3 %'
                  '5 %')
                ReadOnly = True
                TabOrder = 1
                OnKeyDown = FormKeyDown
              end
              object btnNalogInPrice: TCheckBox
                Left = 8
                Top = 20
                Width = 105
                Height = 17
                Caption = #1042#1082#1083#1102#1095#1077#1085' '#1074' '#1094#1077#1085#1091
                TabOrder = 0
                OnClick = DataChanged
                OnKeyDown = FormKeyDown
              end
            end
            object btnNDS: TCheckBox
              Left = 351
              Top = 118
              Width = 82
              Height = 19
              Caption = #1059#1095#1077#1090' '#1053#1044#1057
              TabOrder = 3
              OnClick = DataChanged
              OnKeyDown = FormKeyDown
            end
          end
          object tsReport: TTabSheet
            Caption = #1054#1090#1095#1077#1090#1099
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object ScrollBox2: TScrollBox
              Left = 0
              Top = 0
              Width = 610
              Height = 218
              Align = alClient
              TabOrder = 0
              object Label20: TLabel
                Left = 15
                Top = 56
                Width = 211
                Height = 13
                Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1085#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1102', '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 15
                Top = 145
                Width = 133
                Height = 13
                Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090', '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 36
                Top = 12
                Width = 54
                Height = 13
                Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label24: TLabel
                Left = 17
                Top = 33
                Width = 73
                Height = 13
                Caption = #1055#1086#1076#1079#1072#1075#1086#1083#1086#1074#1086#1082
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 60
                Top = 204
                Width = 34
                Height = 13
                Caption = #1064#1088#1080#1092#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object edtSkladComment1: TDBMemo
                Left = 16
                Top = 73
                Width = 393
                Height = 33
                DataField = 'COMMENT1'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 2
                WordWrap = False
                OnKeyDown = FormKeyDown
              end
              object edtSkladComment3: TDBMemo
                Left = 16
                Top = 162
                Width = 393
                Height = 33
                DataField = 'COMMENT3'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 3
                WordWrap = False
                OnKeyDown = FormKeyDown
              end
              object edtSkladComment2: TDBMemo
                Left = 16
                Top = 107
                Width = 393
                Height = 31
                DataField = 'COMMENT2'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 4
                WordWrap = False
                OnKeyDown = FormKeyDown
              end
              object edtSkladTitle: TDBEdit
                Left = 104
                Top = 8
                Width = 305
                Height = 21
                DataField = 'TITLE'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 0
                OnKeyDown = FormKeyDown
              end
              object edtSkladCaption: TDBEdit
                Left = 104
                Top = 30
                Width = 305
                Height = 21
                DataField = 'CAPTION'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 1
                OnKeyDown = FormKeyDown
              end
              object edtSkladFont: TDBEdit
                Left = 104
                Top = 200
                Width = 305
                Height = 21
                DataField = 'FONTNAME'
                DataSource = srcSklad
                ReadOnly = True
                TabOrder = 5
                OnKeyDown = FormKeyDown
              end
            end
          end
          object tsLogo: TTabSheet
            Caption = #1051#1086#1075#1086#1090#1080#1087
            ImageIndex = 3
            object pnlImage: TPanel
              Left = 0
              Top = 0
              Width = 610
              Height = 218
              Align = alClient
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 0
            end
          end
          object tsStamp: TTabSheet
            Caption = #1064#1090#1072#1084#1087
            ImageIndex = 6
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlStamp: TPanel
              Left = 0
              Top = 0
              Width = 610
              Height = 218
              Align = alClient
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 0
            end
          end
          object tsOffice: TTabSheet
            Caption = #1060#1080#1083#1080#1072#1083
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label21: TLabel
              Left = 39
              Top = 48
              Width = 56
              Height = 13
              Caption = #1044#1080#1088#1077#1082#1090#1086#1088' :'
            end
            object Label25: TLabel
              Left = 59
              Top = 22
              Width = 36
              Height = 13
              Caption = #1043#1086#1088#1086#1076' :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 15
              Top = 75
              Width = 80
              Height = 13
              Caption = #1044#1086#1074#1077#1088#1077#1085#1085#1086#1089#1090#1100' :'
            end
            object DBEdit20: TDBEdit
              Left = 101
              Top = 45
              Width = 468
              Height = 21
              DataField = 'MANAGER'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 1
              OnKeyDown = FormKeyDown
            end
            object DBEdit21: TDBEdit
              Left = 101
              Top = 19
              Width = 468
              Height = 21
              DataField = 'TOWN'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 0
              OnKeyDown = FormKeyDown
            end
            object DBEdit22: TDBEdit
              Left = 101
              Top = 72
              Width = 468
              Height = 21
              DataField = 'DOVEREN'
              DataSource = srcSklad
              ReadOnly = True
              TabOrder = 2
              OnKeyDown = FormKeyDown
            end
          end
        end
      end
    end
    object pnlName: TPanel
      Left = 1
      Top = 1
      Width = 626
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 66
        Top = 9
        Width = 82
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' :'
      end
      object lbClientID: TDBText
        Left = 7
        Top = 8
        Width = 45
        Height = 13
        AutoSize = True
        DataField = 'CLIENTID'
        DataSource = srcClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnShadow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit5: TDBEdit
        Left = 152
        Top = 6
        Width = 281
        Height = 21
        DataField = 'NAME'
        DataSource = srcClient
        ReadOnly = True
        TabOrder = 0
        OnKeyDown = FormKeyDown
      end
    end
  end
  object srcClient: TDataSource
    DataSet = qryClient
    OnDataChange = srcClientDataChange
    Left = 488
    Top = 120
  end
  object qryClient: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    BeforeDelete = ModifiedData
    BeforeEdit = ModifiedData
    BeforeInsert = ModifiedData
    BeforeOpen = qryClientBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      'select * from client')
    UpdateObject = ClientUpdateSQL
    Left = 456
    Top = 120
    object qryClientNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1077#1085#1080#1077
      DisplayWidth = 25
      FieldName = 'NAME'
      Origin = 'CLIENT.NAME'
      Size = 30
    end
    object qryClientADRESS: TStringField
      Tag = 4
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 20
      FieldName = 'ADRESS'
      Origin = 'CLIENT.ADRESS'
      Size = 400
    end
    object qryClientPHONE: TStringField
      Tag = 5
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085#1099
      DisplayWidth = 10
      FieldName = 'PHONE'
      Origin = 'CLIENT.PHONE'
      Size = 50
    end
    object qryClientINN: TStringField
      DisplayLabel = #1048#1053#1053
      DisplayWidth = 12
      FieldName = 'INN'
      Origin = 'CLIENT.INN'
      Size = 50
    end
    object qryClientBANK: TStringField
      DisplayLabel = #1041#1072#1085#1082
      DisplayWidth = 25
      FieldName = 'BANK'
      Origin = 'CLIENT.BANK'
      Size = 100
    end
    object qryClientRS: TStringField
      DisplayLabel = #1056'/'#1089
      DisplayWidth = 20
      FieldName = 'RS'
      Origin = 'CLIENT.RS'
    end
    object qryClientCLIENTID: TIntegerField
      FieldName = 'CLIENTID'
      Visible = False
    end
    object qryClientKS: TStringField
      FieldName = 'KS'
      Visible = False
    end
    object qryClientSKS: TStringField
      FieldName = 'SKS'
      Visible = False
    end
    object qryClientBIK: TStringField
      FieldName = 'BIK'
      Visible = False
    end
    object qryClientOKONX: TStringField
      FieldName = 'OKONX'
      Visible = False
    end
    object qryClientOKPO: TStringField
      FieldName = 'OKPO'
      Visible = False
    end
    object qryClientREG: TStringField
      FieldName = 'REG'
      Visible = False
      Size = 400
    end
    object qryClientKORBANK: TStringField
      FieldName = 'KORBANK'
      Visible = False
      Size = 100
    end
    object qryClientFULLNAME: TIBStringField
      FieldName = 'FULLNAME'
      Visible = False
      Size = 200
    end
    object qryClientADDRESS2: TIBStringField
      DisplayWidth = 100
      FieldName = 'ADDRESS2'
      Visible = False
      Size = 400
    end
    object qryClientREASON_PKO: TIBStringField
      FieldName = 'REASON_PKO'
      Origin = '"CLIENT"."REASON_PKO"'
      Size = 100
    end
    object qryClientREASON_RKO: TIBStringField
      FieldName = 'REASON_RKO'
      Origin = '"CLIENT"."REASON_RKO"'
      Size = 100
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
  end
  object ClientUpdateSQL: TIBUpdateSQL
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
      '  KORBANK,'
      '  ADDRESS2'
      'from CLIENT '
      'where'
      '  CLIENTID = :CLIENTID')
    ModifySQL.Strings = (
      'update CLIENT'
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
      '  KORBANK = :KORBANK,'
      '  ADDRESS2 = :ADDRESS2,'
      '  REASON_PKO = :REASON_PKO,'
      '  REASON_RKO = :REASON_RKO'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    InsertSQL.Strings = (
      'insert into CLIENT'
      
        '  (CLIENTID, NAME, FULLNAME, ADRESS, PHONE, OKONX, OKPO, REG, IN' +
        'N, BIK, '
      '   RS, KS, SKS, BANK, KORBANK, ADDRESS2, REASON_PKO, REASON_RKO)'
      'values'
      
        '  (:CLIENTID, :NAME, :FULLNAME, :ADRESS, :PHONE, :OKONX, :OKPO, ' +
        ':REG, :INN, '
      
        '   :BIK, :RS, :KS, :SKS, :BANK, :KORBANK, :ADDRESS2, :REASON_PKO' +
        ', :REASON_RKO)')
    DeleteSQL.Strings = (
      'delete from CLIENT'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    Left = 423
    Top = 121
  end
  object updSklad: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from sklad '
      'where'
      '  CLIENTID = :CLIENTID')
    ModifySQL.Strings = (
      'update sklad'
      'set'
      '  CLIENTID = :CLIENTID,'
      '  HIDDEN = :HIDDEN,'
      '  DOCPARAM1 = :DOCPARAM1,'
      '  DOCPARAM2 = :DOCPARAM2,'
      '  DOCPARAM3 = :DOCPARAM3,'
      '  TITLE = :TITLE,'
      '  CAPTION = :CAPTION,'
      '  LOGO = :LOGO,'
      '  COMMENT1 = :COMMENT1,'
      '  COMMENT2 = :COMMENT2,'
      '  COMMENT3 = :COMMENT3,'
      '  PRICE_PERCENT = :PRICE_PERCENT,'
      '  PRICE_ROUND = :PRICE_ROUND,'
      '  NODOCPROD = :NODOCPROD,'
      '  NODOCPROD1 = :NODOCPROD1,'
      '  NOCHECK = :NOCHECK,'
      '  NOORDER = :NOORDER,'
      '  NORORDER = :NORORDER,'
      '  NOPLAT = :NOPLAT,'
      '  NOQUERY = :NOQUERY,'
      '  KIND = :KIND,'
      '  NOVDOCPROD = :NOVDOCPROD,'
      '  FONTNAME = :FONTNAME,'
      '  DIRECTOR = :DIRECTOR,'
      '  BUGALTER = :BUGALTER,'
      '  KASSIR = :KASSIR,'
      '  KLADOVCHIK = :KLADOVCHIK,'
      '  PRICE_PARAM = :PRICE_PARAM,'
      '  PRICE_PERCENT2 = :PRICE_PERCENT2,'
      '  PRICE_ROUND2 = :PRICE_ROUND2,'
      '  PRICE_PERCENT3 = :PRICE_PERCENT3,'
      '  PRICE_ROUND3 = :PRICE_ROUND3,'
      '  PRICE_PERCENT4 = :PRICE_PERCENT4,'
      '  PRICE_ROUND4 = :PRICE_ROUND4,'
      '  PRICE_PERCENT5 = :PRICE_PERCENT5,'
      '  PRICE_ROUND5 = :PRICE_ROUND5,'
      '  PRICE_NAME = :PRICE_NAME,'
      '  PRICE_NAME2 = :PRICE_NAME2,'
      '  PRICE_NAME3 = :PRICE_NAME3,'
      '  PRICE_NAME4 = :PRICE_NAME4,'
      '  PRICE_NAME5 = :PRICE_NAME5,'
      '  TOWN=:TOWN,'
      '  MANAGER=:MANAGER,'
      '  DOVEREN=:DOVEREN,'
      '  STAMP=:STAMP'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    InsertSQL.Strings = (
      'insert into sklad'
      
        '  (CLIENTID, HIDDEN, DOCPARAM1, DOCPARAM2, DOCPARAM3, TITLE, CAP' +
        'TION, LOGO, '
      
        '   COMMENT1, COMMENT2, COMMENT3, PRICE_PERCENT, PRICE_ROUND, NOD' +
        'OCPROD, '
      
        '   NODOCPROD1, NOCHECK, NOORDER, NORORDER, NOPLAT, NOQUERY, KIND' +
        ', NOVDOCPROD, '
      
        '   FONTNAME, DIRECTOR, BUGALTER, KASSIR, KLADOVCHIK, PRICE_PARAM' +
        ', PRICE_PERCENT2, '
      
        '   PRICE_ROUND2, PRICE_PERCENT3, PRICE_ROUND3, PRICE_PERCENT4, P' +
        'RICE_ROUND4, '
      
        '   PRICE_PERCENT5, PRICE_ROUND5, PRICE_NAME, PRICE_NAME2, PRICE_' +
        'NAME3, PRICE_NAME4,'
      '   PRICE_NAME5,TOWN,MANAGER,DOVEREN,STAMP)'
      'values'
      
        '  (:CLIENTID, :HIDDEN, :DOCPARAM1, :DOCPARAM2, :DOCPARAM3, :TITL' +
        'E, :CAPTION, '
      
        '   :LOGO, :COMMENT1, :COMMENT2, :COMMENT3, :PRICE_PERCENT, :PRIC' +
        'E_ROUND, '
      
        '   :NODOCPROD, :NODOCPROD1, :NOCHECK, :NOORDER, :NORORDER, :NOPL' +
        'AT, :NOQUERY, '
      
        '   :KIND, :NOVDOCPROD, :FONTNAME, :DIRECTOR, :BUGALTER, :KASSIR,' +
        ' :KLADOVCHIK, '
      
        '   :PRICE_PARAM, :PRICE_PERCENT2, :PRICE_ROUND2, :PRICE_PERCENT3' +
        ', :PRICE_ROUND3, '
      
        '   :PRICE_PERCENT4, :PRICE_ROUND4, :PRICE_PERCENT5, :PRICE_ROUND' +
        '5, :PRICE_NAME, '
      
        '   :PRICE_NAME2, :PRICE_NAME3, :PRICE_NAME4, :PRICE_NAME5,:TOWN,' +
        ':MANAGER,:DOVEREN,:STAMP)')
    DeleteSQL.Strings = (
      'delete from sklad'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    Left = 423
    Top = 153
  end
  object qrySklad: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    BeforeDelete = ModifiedData
    BeforeEdit = ModifiedData
    BeforeInsert = ModifiedData
    CachedUpdates = True
    SQL.Strings = (
      'select * from sklad')
    UpdateObject = updSklad
    Left = 456
    Top = 152
    object qrySkladCLIENTID: TIntegerField
      FieldName = 'CLIENTID'
      Required = True
    end
    object qrySkladHIDDEN: TSmallintField
      FieldName = 'HIDDEN'
    end
    object qrySkladDOCPARAM1: TSmallintField
      FieldName = 'DOCPARAM1'
    end
    object qrySkladDOCPARAM2: TFloatField
      FieldName = 'DOCPARAM2'
      OnGetText = PerFieldGetText
      OnSetText = PerFieldSetText
    end
    object qrySkladDOCPARAM3: TFloatField
      FieldName = 'DOCPARAM3'
      OnGetText = PerFieldGetText
      OnSetText = PerFieldSetText
    end
    object qrySkladTITLE: TIBStringField
      FieldName = 'TITLE'
      Size = 50
    end
    object qrySkladCAPTION: TIBStringField
      FieldName = 'CAPTION'
      Size = 50
    end
    object qrySkladLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 8
    end
    object qrySkladCOMMENT1: TBlobField
      FieldName = 'COMMENT1'
      Size = 8
    end
    object qrySkladCOMMENT2: TBlobField
      FieldName = 'COMMENT2'
      Size = 8
    end
    object qrySkladCOMMENT3: TBlobField
      FieldName = 'COMMENT3'
      Size = 8
    end
    object qrySkladPRICE_PERCENT: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PRICE_PERCENT'
    end
    object qrySkladPRICE_ROUND: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRICE_ROUND'
    end
    object qrySkladKIND: TIntegerField
      FieldName = 'KIND'
    end
    object qrySkladNODOCPROD: TIntegerField
      FieldName = 'NODOCPROD'
    end
    object qrySkladNODOCPROD1: TIntegerField
      FieldName = 'NODOCPROD1'
    end
    object qrySkladNOCHECK: TIntegerField
      FieldName = 'NOCHECK'
    end
    object qrySkladNOORDER: TIntegerField
      FieldName = 'NOORDER'
    end
    object qrySkladNORORDER: TIntegerField
      FieldName = 'NORORDER'
    end
    object qrySkladNOPLAT: TIntegerField
      FieldName = 'NOPLAT'
    end
    object qrySkladNOQUERY: TIntegerField
      FieldName = 'NOQUERY'
    end
    object qrySkladNOVDOCPROD: TIntegerField
      FieldName = 'NOVDOCPROD'
    end
    object qrySkladFONTNAME: TStringField
      FieldName = 'FONTNAME'
      Size = 30
    end
    object qrySkladDIRECTOR: TIBStringField
      FieldName = 'DIRECTOR'
      Origin = 'SKLAD.DIRECTOR'
      Size = 50
    end
    object qrySkladBUGALTER: TIBStringField
      FieldName = 'BUGALTER'
      Origin = 'SKLAD.BUGALTER'
      Size = 50
    end
    object qrySkladKASSIR: TIBStringField
      FieldName = 'KASSIR'
      Origin = 'SKLAD.KASSIR'
      Size = 50
    end
    object qrySkladKLADOVCHIK: TIBStringField
      FieldName = 'KLADOVCHIK'
      Origin = 'SKLAD.KLADOVCHIK'
      Size = 50
    end
    object qrySkladPRICE_PARAM: TIntegerField
      FieldName = 'PRICE_PARAM'
      Origin = 'SKLAD.PRICE_PARAM'
    end
    object qrySkladPRICE_PERCENT2: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PRICE_PERCENT2'
      Origin = 'SKLAD.PRICE_PERCENT2'
    end
    object qrySkladPRICE_ROUND2: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRICE_ROUND2'
      Origin = 'SKLAD.PRICE_ROUND2'
    end
    object qrySkladPRICE_PERCENT3: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PRICE_PERCENT3'
      Origin = 'SKLAD.PRICE_PERCENT3'
    end
    object qrySkladPRICE_ROUND3: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRICE_ROUND3'
      Origin = 'SKLAD.PRICE_ROUND3'
    end
    object qrySkladPRICE_PERCENT4: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PRICE_PERCENT4'
      Origin = 'SKLAD.PRICE_PERCENT4'
    end
    object qrySkladPRICE_ROUND4: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRICE_ROUND4'
      Origin = 'SKLAD.PRICE_ROUND4'
    end
    object qrySkladPRICE_PERCENT5: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PRICE_PERCENT5'
      Origin = 'SKLAD.PRICE_PERCENT5'
    end
    object qrySkladPRICE_ROUND5: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRICE_ROUND5'
      Origin = 'SKLAD.PRICE_ROUND5'
    end
    object qrySkladPRICE_NAME: TIBStringField
      FieldName = 'PRICE_NAME'
      Origin = 'SKLAD.PRICE_NAME'
    end
    object qrySkladPRICE_NAME2: TIBStringField
      FieldName = 'PRICE_NAME2'
      Origin = 'SKLAD.PRICE_NAME2'
    end
    object qrySkladPRICE_NAME3: TIBStringField
      FieldName = 'PRICE_NAME3'
      Origin = 'SKLAD.PRICE_NAME3'
    end
    object qrySkladPRICE_NAME4: TIBStringField
      FieldName = 'PRICE_NAME4'
      Origin = 'SKLAD.PRICE_NAME4'
    end
    object qrySkladPRICE_NAME5: TIBStringField
      FieldName = 'PRICE_NAME5'
      Origin = 'SKLAD.PRICE_NAME5'
    end
    object qrySkladTOWN: TIBStringField
      FieldName = 'TOWN'
      Origin = '"SKLAD"."TOWN"'
      Size = 50
    end
    object qrySkladMANAGER: TIBStringField
      FieldName = 'MANAGER'
      Origin = '"SKLAD"."MANAGER"'
      Size = 50
    end
    object qrySkladDOVEREN: TIBStringField
      FieldName = 'DOVEREN'
      Origin = '"SKLAD"."DOVEREN"'
      Size = 100
    end
    object qrySkladSTAMP: TBlobField
      FieldName = 'STAMP'
      Origin = '"SKLAD"."STAMP"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object srcSklad: TDataSource
    DataSet = qrySklad
    OnDataChange = srcSkladDataChange
    Left = 488
    Top = 152
  end
  object mPrint: TPopupMenu
    Left = 464
    Top = 8
    object miPrintFile: TMenuItem
      Caption = #1042' '#1092#1072#1081#1083' ...'
      OnClick = PrintReport
    end
  end
end
