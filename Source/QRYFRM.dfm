object QueryForm: TQueryForm
  Left = 261
  Top = 116
  Caption = #1040#1085#1072#1083#1080#1079
  ClientHeight = 368
  ClientWidth = 588
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000100
    0000000000000000000000000000091777777777777777777777777777770991
    00000000000000000000000000070999188FFFFFFFFFFF8FFFFFFFFFFF070999
    91888FFFFFFF8F88FFFF8FFFFF07009999187FFFFFFFF8188FFFFFFFFF0700F9
    999178FFFFFF719188FF8FFFFF0700FF9999188FFFF81999188FFFFFFF0700FF
    F9999188FF81999991888FFFF80700FFFF9999188819999999187FFF880700FF
    FFF99991819999F9999178F8180700F8F8F89999199998F899991881180700FF
    FFFF899999998FFFF9999119180700FFFFFFFF99999FFFFFFF999999180700FF
    FFFF8FF999FF8FFFFFF99999180700FFFFFFFFFF9FFFFFFFFFF999991807008F
    FFFF8FFFFFFF8FFFFF9999991F070088FFFFFFFFFFFFFFFFF99999991F070088
    88887FFFFFFF8FFFFFFF8FFFFF070000000008F8F8F8F8F8F8F8F8F8F8070000
    8FFF0FFFFFFF8FFFFFFF8FFFFF07000008FF0FFFFFFFFFFFFFFFFFFFFF070000
    008F0FFFFFFF8FFFFFFF8FFFFF07000000080FFFFFFFFFFFFFFFFFFFFF070000
    00000FFFFFFF8FFFFFFF8FFFFF07000000000FFFFFFFFFFFFFFFFFFFFF070000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFBFFFFFFF80000000800000008000
    0000800000008000000080000000800000008000000080000000800000008000
    000080000000800000008000000080000000800000008000000080000000C000
    0000E0000000F0000000F8000000FC000000FE000000FF000000FF800001FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000009777
    77777777777799000000000000070998FFFF88FFFF070F998FF8998FFF070FF9
    98899998FF0708889999889981070FFFF99FFFF999070FFFFFFFFFF9990708FF
    FFFFFF9999070000088888888807008F0FFFFFFFFF0700080FFFFFFFFF070000
    00000000000700000000000000000000000000000000FFFFFFFF0000FFF80000
    188F0000FF070000F9990000FF81000091880000F8070000FF99000088198000
    9918C0008807E000FFF9F0008199FFFF9991FFFF1807}
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 588
    Height = 148
    Align = alTop
    AutoSize = True
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    Color = clBtnFace
    Constraints.MinHeight = 5
    ParentBackground = False
    ParentColor = False
    RowSize = 42
    RowSnap = False
    TabOrder = 0
    ExplicitWidth = 550
    object barTool: TToolBar
      Left = 11
      Top = 2
      Width = 398
      Height = 38
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'barTool'
      DisabledImages = Data.imgDisableBar
      HotImages = Data.imgHotBar
      Images = Data.imgBar
      TabOrder = 0
      object btnRun: TToolButton
        Left = 0
        Top = 0
        Action = actRun
        Style = tbsCheck
      end
      object ToolButton2: TToolButton
        Left = 39
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object btnPrint: TToolButton
        Left = 47
        Top = 0
        Action = actPrint
        DropdownMenu = mPrint
      end
      object btnView: TToolButton
        Left = 86
        Top = 0
        Action = actView
      end
      object btnFullWin: TToolButton
        Left = 125
        Top = 0
        Action = actFullWindow
        Style = tbsCheck
      end
      object ToolButton4: TToolButton
        Left = 164
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object btnTable: TToolButton
        Left = 172
        Top = 0
        Action = actTable
        Grouped = True
        Style = tbsCheck
      end
      object btnGraphic: TToolButton
        Tag = 1
        Left = 211
        Top = 0
        Action = actGraphic
        Grouped = True
        Style = tbsCheck
      end
      object ToolButton3: TToolButton
        Left = 250
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object btnOptions: TToolButton
        Left = 258
        Top = 0
        Action = actOptions
      end
    end
    object pnlSelect: TPanel
      Left = 11
      Top = 44
      Width = 540
      Height = 21
      BevelOuter = bvNone
      Caption = 'pnlSelect'
      TabOrder = 1
      object Label30: TLabel
        Left = 2
        Top = 3
        Width = 76
        Height = 13
        Caption = #1042#1080#1076' '#1079#1072#1087#1088#1086#1089#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtQuery: TComboBox
        Left = 81
        Top = 0
        Width = 267
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 0
        ParentFont = False
        TabOrder = 0
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
      object edtSklad: TDBLookupComboBox
        Left = 349
        Top = 0
        Width = 172
        Height = 21
        DataField = 'CLIENTID'
        DataSource = Data.srcSkladActive
        DropDownRows = 20
        KeyField = 'CLIENTID'
        ListField = 'NAME'
        ListSource = Data.srcSklad
        TabOrder = 1
        OnCloseUp = UpdateQuery
        OnKeyDown = FormKeyDown
      end
    end
    object barNavigator: TPanel
      Left = 422
      Top = 2
      Width = 129
      Height = 38
      BevelOuter = bvNone
      TabOrder = 2
      object btnFirst: TSpeedButton
        Tag = 1
        Left = 0
        Top = 0
        Width = 32
        Height = 38
        Hint = #1055#1077#1088#1074#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072'/'#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1077#1088#1074#1091#1102' '#1089#1090#1088#1072#1085#1080#1094#1091'/'#1079#1072#1087#1080#1089#1100
        Flat = True
        NumGlyphs = 2
        OnClick = NavigatorBtnClick
      end
      object btnPrior: TSpeedButton
        Tag = 2
        Left = 32
        Top = 0
        Width = 32
        Height = 38
        Hint = 
          #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072'/'#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1088#1077#1076#1099#1076#1091#1097#1102#1102' '#1089#1090#1088#1072#1085#1080#1094#1091'/'#1079#1072#1087#1080#1089 +
          #1100
        Flat = True
        NumGlyphs = 2
        OnClick = NavigatorBtnClick
      end
      object btnNext: TSpeedButton
        Tag = 3
        Left = 64
        Top = 0
        Width = 32
        Height = 38
        Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072'/'#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1102#1102' '#1089#1090#1088#1072#1085#1080#1094#1091'/'#1079#1072#1087#1080#1089#1100
        Flat = True
        NumGlyphs = 2
        OnClick = NavigatorBtnClick
      end
      object btnLast: TSpeedButton
        Tag = 4
        Left = 96
        Top = 0
        Width = 32
        Height = 38
        Hint = #1055#1086#1095#1083#1077#1076#1085#1103#1103' '#1089#1090#1088#1072#1085#1080#1094#1072'/'#1079#1072#1087#1080#1089#1100'| '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1089#1090#1088#1072#1085#1080#1094#1091'/'#1079#1072#1087#1080#1089#1100
        Flat = True
        NumGlyphs = 2
        OnClick = NavigatorBtnClick
      end
    end
    object pnlParam: TPanel
      Left = 11
      Top = 69
      Width = 540
      Height = 77
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lbDate1: TLabel
        Left = 69
        Top = 8
        Width = 8
        Height = 13
        Caption = #1089
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbProduct: TLabel
        Left = 40
        Top = 56
        Width = 37
        Height = 13
        Caption = #1058#1086#1074#1072#1088
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbClient1: TLabel
        Left = 9
        Top = 32
        Width = 68
        Height = 13
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbClient2: TLabel
        Left = 275
        Top = 32
        Width = 71
        Height = 13
        Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbDate2: TLabel
        Left = 329
        Top = 9
        Width = 15
        Height = 13
        Caption = #1087#1086
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtClass: TwwDBLookupCombo
        Left = 81
        Top = 52
        Width = 96
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
        LookupTable = qryClass
        LookupField = 'CLASSID'
        Enabled = False
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
      object edtProduser: TwwDBLookupCombo
        Left = 178
        Top = 52
        Width = 170
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NAME'#9'30'#9'NAME'#9'F')
        LookupTable = qryProduser
        LookupField = 'PRODUSERID'
        Enabled = False
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
      object edtProduct: TwwDBLookupCombo
        Left = 349
        Top = 52
        Width = 172
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          'LEN'#9'6'#9#1060#1072#1089'.'#9'F')
        LookupTable = qryProduct
        LookupField = 'PRODID'
        Enabled = False
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
      object edtClient1: TwwDBLookupCombo
        Left = 81
        Top = 28
        Width = 176
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NAME'#9'30'#9'NAME'#9'F')
        LookupTable = qryClient
        LookupField = 'CLIENTID'
        Enabled = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
      object edtClient2: TwwDBLookupCombo
        Left = 349
        Top = 28
        Width = 172
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NAME'#9'30'#9'NAME'#9'F')
        LookupTable = qryClient
        LookupField = 'CLIENTID'
        Enabled = False
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
      object edtDate1: TwwDBDateTimePicker
        Left = 81
        Top = 4
        Width = 176
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Enabled = False
        ShowButton = True
        TabOrder = 0
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
      object edtDate2: TwwDBDateTimePicker
        Left = 349
        Top = 4
        Width = 172
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Enabled = False
        ShowButton = True
        TabOrder = 1
        OnChange = UpdateQuery
        OnKeyDown = FormKeyDown
      end
    end
  end
  object ActionList: TActionList
    Left = 6
    Top = 224
    object actPrint: TAction
      Category = 'Data'
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100'| '#1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072' (Ctrl+P)'
      ImageIndex = 6
      OnExecute = actPrintExecute
    end
    object actRun: TAction
      Category = 'Data'
      Caption = 'RunAction'
      Hint = 
        #1042#1099#1087#1086#1083#1085#1080#1090#1100#13#10'   '#1079#1072#1087#1088#1086#1089'| '#1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1089' '#1091#1082#1072#1079#1072#1085#1085#1099#1084#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1084#1080' ' +
        '(Ctrl+R)'
      ImageIndex = 15
      OnExecute = actRunExecute
    end
    object actView: TAction
      Category = 'Data'
      Caption = 'ViewAction'
      Hint = #1055#1086#1076#1079#1072#1087#1088#1086#1089'| '#1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1089#1090#1088#1086#1082#1077' (Ctrl+S)'
      ImageIndex = 14
      OnExecute = LoadChildQuery
    end
    object actGraphic: TAction
      Category = 'Data'
      Caption = 'ViewAction'
      Hint = #1043#1088#1072#1092#1080#1082'| '#1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1072#1085#1085#1099#1093' '#1085#1072' '#1075#1088#1072#1092#1080#1082#1077' (Ctrl+G)'
      ImageIndex = 13
      OnExecute = ViewActionExecute
    end
    object actTable: TAction
      Category = 'Data'
      Caption = 'TableAction'
      Checked = True
      Hint = #1057#1087#1080#1089#1086#1082'| '#1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1072#1085#1085#1099#1093' '#1074' '#1090#1072#1073#1083#1080#1095#1085#1086#1084' '#1074#1080#1076#1077' (Ctrl+T)'
      ImageIndex = 10
      OnExecute = ViewActionExecute
    end
    object actFullWindow: TAction
      Category = 'Data'
      Caption = 'FullWindowAction'
      Hint = #1042#1086' '#1074#1077#1089#1100' '#1101#1082#1088#1072#1085'| '#1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1074#1086' '#1074#1077#1089#1100' '#1101#1082#1088#1072#1085
      ImageIndex = 17
      OnExecute = actFullWindowExecute
    end
    object actOptions: TAction
      Category = 'Data'
      Caption = 'OprtionsAction'
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072'| '#1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1075#1088#1072#1092#1080#1082#1072
      ImageIndex = 16
      Visible = False
      OnExecute = actOptionsExecute
    end
  end
  object qryClient: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    SQL.Strings = (
      'select clientid, name'
      'from client'
      'order by name')
    Left = 5
    Top = 256
    object qryClientNAME: TIBStringField
      DisplayWidth = 30
      FieldName = 'NAME'
      Size = 30
    end
    object qryClientCLIENTID: TIntegerField
      FieldName = 'CLIENTID'
      Required = True
      Visible = False
    end
  end
  object qryClass: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    SQL.Strings = (
      'select classid, name'
      'from class '
      'order by name')
    Left = 37
    Top = 256
    object qryClassNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Size = 30
    end
    object qryClassCLASSID: TIntegerField
      FieldName = 'CLASSID'
      Required = True
      Visible = False
    end
  end
  object qryProduser: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    SQL.Strings = (
      'select produserid, name'
      'from produser'
      'order by name')
    Left = 69
    Top = 256
    object qryProduserNAME: TIBStringField
      DisplayWidth = 30
      FieldName = 'NAME'
      Size = 30
    end
    object qryProduserPRODUSERID: TIntegerField
      FieldName = 'PRODUSERID'
      Required = True
      Visible = False
    end
  end
  object qryProduct: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    SQL.Strings = (
      'select prodid, classid, produserid, name, len'
      'from product'
      'order by name')
    Left = 101
    Top = 256
    object qryProductNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Size = 50
    end
    object qryProductLEN: TIBStringField
      DisplayLabel = #1060#1072#1089'.'
      DisplayWidth = 6
      FieldName = 'LEN'
      Size = 10
    end
    object qryProductPRODID: TIntegerField
      FieldName = 'PRODID'
      Required = True
      Visible = False
    end
    object qryProductCLASSID: TIntegerField
      FieldName = 'CLASSID'
      Visible = False
    end
    object qryProductPRODUSERID: TIntegerField
      FieldName = 'PRODUSERID'
      Visible = False
    end
  end
  object DataSource: TDataSource
    Left = 40
    Top = 224
  end
  object qry: TIBQuery
    Left = 8
    Top = 288
  end
  object mPrint: TPopupMenu
    Left = 464
    Top = 8
    object miReport: TMenuItem
      Caption = #1054#1090#1095#1105#1090
      OnClick = actPrintExecute
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miPrintFile: TMenuItem
      Caption = #1042' '#1092#1072#1081#1083' ...'
      OnClick = actPrintExecute
    end
  end
end
