object DocForm: TDocForm
  Left = 291
  Top = 66
  Caption = 'DocForm'
  ClientHeight = 509
  ClientWidth = 730
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
    Top = 84
    Width = 730
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -1
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 55
      Top = 57
      Width = 11
      Height = 13
      Caption = #8470
    end
    object Label3: TLabel
      Left = 223
      Top = 57
      Width = 11
      Height = 13
      Caption = #1086#1090
    end
    object Label4: TLabel
      Left = 6
      Top = 33
      Width = 60
      Height = 13
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
    end
    object btnClient2: TSpeedButton
      Left = 344
      Top = 31
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
      OnClick = btnEditClick
    end
    object Label5: TLabel
      Left = 15
      Top = 9
      Width = 50
      Height = 13
      Caption = #1055#1088#1086#1076#1072#1074#1077#1094
    end
    object btnClient1: TSpeedButton
      Left = 344
      Top = 7
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
      OnClick = btnEditClick
    end
    object btnNo: TSpeedButton
      Left = 159
      Top = 56
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
      OnClick = btnEditClick
    end
    object pnlParams: TPanel
      Left = 369
      Top = 10
      Width = 352
      Height = 68
      BevelOuter = bvNone
      TabOrder = 4
      object Label6: TLabel
        Left = 20
        Top = 23
        Width = 29
        Height = 13
        Caption = #1095#1077#1088#1077#1079
      end
      object Label9: TLabel
        Left = 2
        Top = 47
        Width = 47
        Height = 13
        Caption = #1086#1087#1083#1072#1095#1077#1085#1072
      end
      object btnRezerv: TCheckBox
        Left = 56
        Top = -1
        Width = 79
        Height = 17
        TabStop = False
        Caption = #1056#1077#1079#1077#1088#1074#1085#1072#1103
        TabOrder = 0
        OnClick = DataChanged
        OnKeyDown = FormKeyDown
      end
      object edtUser: TDBEdit
        Left = 55
        Top = 20
        Width = 298
        Height = 21
        TabStop = False
        DataField = 'PARAM5'
        DataSource = srcDoc
        ReadOnly = True
        TabOrder = 1
        OnKeyDown = FormKeyDown
      end
      object edtDate2: TwwDBDateTimePicker
        Left = 55
        Top = 43
        Width = 106
        Height = 21
        TabStop = False
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATE2'
        DataSource = srcDoc
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
        OnKeyDown = FormKeyDown
      end
      object edtComment: TDBEdit
        Left = 167
        Top = 43
        Width = 185
        Height = 21
        Hint = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1086#1087#1083#1072#1090#1077
        TabStop = False
        DataField = 'COMMENT'
        DataSource = srcDoc
        ReadOnly = True
        TabOrder = 3
        OnKeyDown = FormKeyDown
      end
    end
    object edtNo: TDBEdit
      Left = 72
      Top = 54
      Width = 88
      Height = 21
      DataField = 'DOCNO'
      DataSource = srcDoc
      ReadOnly = True
      TabOrder = 2
      OnKeyDown = FormKeyDown
    end
    object edtClient2: TwwDBLookupCombo
      Left = 72
      Top = 30
      Width = 273
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
      DataField = 'CLIENTNAME2'
      DataSource = srcDoc
      LookupTable = qryClient
      LookupField = 'NAME'
      ReadOnly = True
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      SearchDelay = 100
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnEnter = edtEnter
      OnKeyDown = FormKeyDown
    end
    object edtDate1: TwwDBDateTimePicker
      Left = 240
      Top = 53
      Width = 105
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
      TabOrder = 3
      OnKeyDown = FormKeyDown
    end
    object edtClient1: TwwDBLookupCombo
      Left = 72
      Top = 6
      Width = 273
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
      DataField = 'CLIENTNAME1'
      DataSource = srcDoc
      LookupTable = qryClient
      LookupField = 'NAME'
      ReadOnly = True
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SearchDelay = 100
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnEnter = edtEnter
      OnKeyDown = FormKeyDown
    end
    object pnlDocID: TPanel
      Left = 536
      Top = 5
      Width = 82
      Height = 20
      BevelOuter = bvNone
      TabOrder = 5
      object lbDocID: TDBText
        Left = 40
        Top = 3
        Width = 39
        Height = 13
        Alignment = taRightJustify
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
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 451
    Width = 730
    Height = 58
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitTop = 434
    object Label1: TLabel
      Left = 35
      Top = 10
      Width = 30
      Height = 13
      Caption = #1048#1090#1086#1075#1086
    end
    object lbNdsSum: TLabel
      Left = 195
      Top = 10
      Width = 61
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
    end
    object lbNalogSum: TLabel
      Left = 533
      Top = 11
      Width = 81
      Height = 13
      Caption = #1053#1072#1083#1086#1075' '#1089' '#1087#1088#1086#1076#1072#1078
    end
    object Label8: TLabel
      Left = 176
      Top = 34
      Width = 80
      Height = 13
      Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100
    end
    object lbCreditSum: TLabel
      Left = 16
      Top = 35
      Width = 49
      Height = 13
      Caption = #1054#1087#1083#1072#1095#1077#1085#1086
    end
    object Label11: TLabel
      Left = 375
      Top = 10
      Width = 50
      Height = 13
      Caption = #1044#1086#1089#1090#1072#1074#1082#1072
    end
    object edtSum: TDBEdit
      Left = 70
      Top = 7
      Width = 99
      Height = 21
      TabStop = False
      DataField = 'SUM0'
      DataSource = srcDoc
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object edtNdsSum: TDBEdit
      Left = 262
      Top = 7
      Width = 99
      Height = 21
      TabStop = False
      DataField = 'SUM1'
      DataSource = srcDoc
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object edtNalogSum: TDBEdit
      Left = 621
      Top = 7
      Width = 90
      Height = 21
      TabStop = False
      DataField = 'SUM2'
      DataSource = srcDoc
      TabOrder = 3
      OnKeyDown = FormKeyDown
    end
    object edtOplataSum: TDBEdit
      Left = 262
      Top = 32
      Width = 99
      Height = 21
      TabStop = False
      DataField = 'OST'
      DataSource = srcDoc
      ReadOnly = True
      TabOrder = 4
      OnKeyDown = FormKeyDown
    end
    object edtCreditSum: TDBEdit
      Left = 70
      Top = 32
      Width = 99
      Height = 21
      TabStop = False
      DataField = 'SUM0'
      DataSource = srcCredit
      TabOrder = 5
      OnKeyDown = FormKeyDown
    end
    object edtTransportSum: TDBEdit
      Left = 431
      Top = 7
      Width = 90
      Height = 21
      TabStop = False
      DataField = 'SUM3'
      DataSource = srcDoc
      TabOrder = 2
      OnKeyDown = FormKeyDown
    end
  end
  object grdRec: TwwDBGrid
    Left = 0
    Top = 272
    Width = 730
    Height = 179
    LineStyle = gls3D
    ControlType.Strings = (
      'PRODUCT;CustomEdit;edtProd'
      'PRODUCTNAME;CustomEdit;edtProd'
      'PRODUCT2;CustomEdit;edtProd;F')
    Selected.Strings = (
      'RECID'#9'5'#9#1050#1086#1076#9#9
      'PRODUCT2'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'~'#1080#1083#1080' '#1091#1089#1083#1091#1075#1080#9'F'#9
      'UNIT'#9'10'#9#1042' '#1084#1077#1089#1090#1077#9#9
      'CNT'#9'10'#9#1050#1086#1083'.-'#1074#1086'~'#1084#1077#1089#1090#9#9
      'ALLCNT'#9'10'#9#1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'#9#9
      'INPRICE'#9'10'#9#1055#1088#1080#1093#1086#1076#1085#1072#1103'~'#1094#1077#1085#1072#9#9
      'OUTPRICE'#9'10'#9'OUTPRICE'#9#9
      'PRICE'#9'10'#9#1062#1077#1085#1072#9#9
      'SUMM'#9'10'#9#1057#1091#1084#1084#1072#9#9
      'NDSPRICE'#9'10'#9#1062#1077#1085#1072'~'#1053#1044#1057#9#9
      'NDSSUM'#9'10'#9#1057#1091#1084#1084#1072'~'#1053#1044#1057#9#9
      'NALOGSUM'#9'10'#9#1053#1072#1083#1086#1075'~'#1089' '#1087#1088#1086#1076#1072#1078#9#9
      'NTD'#9'20'#9#8470' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1081'~'#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080#9#9
      'NEWPRICE'#9'10'#9'NEWPRICE'#9#9
      'PRICEPER'#9'10'#9'PRICEPER'#9#9
      'NEWPRICE2'#9'10'#9'NEWPRICE2'#9#9
      'PRICEPER2'#9'10'#9'PRICEPER2'#9#9
      'NEWPRICE3'#9'10'#9'NEWPRICE3'#9#9
      'PRICEPER3'#9'10'#9'PRICEPER3'#9#9
      'NEWPRICE4'#9'10'#9'NEWPRICE4'#9#9
      'PRICEPER4'#9'10'#9'PRICEPER4'#9#9
      'NEWPRICE5'#9'10'#9'NEWPRICE5'#9#9
      'PRICEPER5'#9'10'#9'PRICEPER5'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = srcRec
    EditCalculated = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    PopupMenu = mRec
    ReadOnly = True
    TabOrder = 4
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
    OnEnter = edtEnter
    OnKeyDown = FormKeyDown
    OnKeyPress = grdRecKeyPress
    OnCalcTitleImage = grdRecCalcTitleImage
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
    ExplicitHeight = 162
  end
  object edtProd: TwwDBLookupCombo
    Left = 16
    Top = 272
    Width = 33
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'PRODUCT2'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F'
      'UNIT'#9'5'#9#1042' '#1084#1077#1089#1090#1077#9'F'
      'CNT'#9'5'#9#1050#1086#1083'.-'#1074#1086#9'F'
      'INPRICE_Calc'#9'10'#9#1055#1088#1080#1093'.'#1094#1077#1085#1072#9'F'
      'OUTPRICE_Calc'#9'10'#9'OUTPRICE_Calc'#9'F'
      'OUTPRICE2_Calc'#9'10'#9'OUTPRICE2_Calc'#9'F'
      'OUTPRICE3_Calc'#9'10'#9'OUTPRICE3_Calc'#9'F'
      'OUTPRICE4_Calc'#9'10'#9'OUTPRICE4_Calc'#9'F'
      'OUTPRICE5_Calc'#9'10'#9'OUTPRICE5_Calc'#9'F'
      'DATE1'#9'10'#9#1086#1090#9'F')
    DataField = 'PRODUCT2'
    DataSource = srcRec
    LookupTable = qryProd
    LookupField = 'PRODUCT2'
    Options = [loColLines, loTitles, loSearchOnBackspace]
    DropDownCount = 6
    TabOrder = 6
    AutoDropDown = True
    ShowButton = True
    SearchDelay = 100
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnDropDown = edtProdDropDown
    OnKeyDown = FormKeyDown
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 730
    Height = 84
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
      object btnCalc: TToolButton
        Left = 54
        Top = 0
        Hint = #1054#1087#1077#1088#1072#1094#1080#1080'| '#1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
        Action = actRecalc
        DropdownMenu = mRecalc
      end
      object ToolSep1: TToolButton
        Left = 93
        Top = 0
        Width = 8
        Caption = 'ToolSep1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnNew: TToolButton
        Left = 101
        Top = 0
        Action = actNew
      end
      object btnDelete: TToolButton
        Left = 140
        Top = 0
        Action = actDelete
      end
      object btnEdit: TToolButton
        Left = 179
        Top = 0
        Action = actEdit
        Style = tbsCheck
      end
      object ToolButton3: TToolButton
        Left = 218
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object btnCancel: TToolButton
        Left = 226
        Top = 0
        Action = actCancel
      end
      object btnApply: TToolButton
        Left = 265
        Top = 0
        Action = actApply
      end
    end
    object barDesktop: TPanel
      Left = 486
      Top = 2
      Width = 147
      Height = 38
      BevelOuter = bvNone
      TabOrder = 2
      object edtDesktop: TComboBox
        Left = 13
        Top = 8
        Width = 121
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        PopupMenu = mDesktop
        TabOrder = 0
        TabStop = False
        OnChange = edtDesktopChange
        OnKeyDown = FormKeyDown
        Items.Strings = (
          '   '
          #1055#1088#1080#1093#1086#1076
          #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103)
      end
    end
    object pnlSearch: TPanel
      Left = 11
      Top = 44
      Width = 622
      Height = 38
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object btnFilter: TSpeedButton
        Left = 548
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
        Left = 258
        Top = 8
        Width = 289
        Height = 21
        HideSelection = False
        TabOrder = 0
        OnChange = edtSearchChange
        OnKeyDown = edtSearchKeyDown
      end
      object cbFields: TwwDBComboBox
        Left = 24
        Top = 9
        Width = 234
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
    end
  end
  object pnlTop3: TPanel
    Left = 0
    Top = 193
    Width = 730
    Height = 79
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object GroupBox3: TGroupBox
      Left = 600
      Top = 1
      Width = 121
      Height = 73
      Caption = #1053#1072#1083#1086#1075' '#1089' '#1087#1088#1086#1076#1072#1078
      TabOrder = 3
      object edtNalog: TDBComboBox
        Left = 8
        Top = 40
        Width = 105
        Height = 21
        AutoComplete = False
        DataField = 'PARAM3'
        DataSource = srcDoc
        ItemHeight = 13
        Items.Strings = (
          '0 %'
          '1 %'
          '2 %'
          '3 %'
          '4 %'
          '5 %')
        ReadOnly = True
        TabOrder = 1
        TabStop = False
        OnKeyDown = FormKeyDown
      end
      object btnNalogInPrice: TCheckBox
        Left = 8
        Top = 20
        Width = 105
        Height = 17
        TabStop = False
        Caption = #1042#1082#1083#1102#1095#1077#1085' '#1074' '#1094#1077#1085#1091
        TabOrder = 0
        OnClick = DataChanged
        OnKeyDown = FormKeyDown
      end
    end
    object GroupBox2: TGroupBox
      Left = 302
      Top = 1
      Width = 209
      Height = 73
      Caption = #1062#1077#1085#1072
      TabOrder = 1
      object Label10: TLabel
        Left = 13
        Top = 45
        Width = 86
        Height = 13
        Caption = #1057#1082#1080#1076#1082#1072'/'#1053#1072#1094#1077#1085#1082#1072
      end
      object edtSkidka: TDBComboBox
        Left = 112
        Top = 42
        Width = 89
        Height = 21
        AutoComplete = False
        DataField = 'PARAM2'
        DataSource = srcDoc
        ItemHeight = 13
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
        TabOrder = 0
        TabStop = False
        OnKeyDown = FormKeyDown
      end
      object edtPrice: TComboBox
        Left = 8
        Top = 16
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = #1054#1087#1090#1086#1074#1072#1103
        OnChange = DataChanged
        Items.Strings = (
          #1054#1087#1090#1086#1074#1072#1103
          #1054#1087#1090'.-'#1088#1086#1079#1085#1080#1094#1072
          #1056#1086#1079#1085#1080#1094#1072
          #1055#1088#1080#1093#1086#1076#1085#1072#1103)
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 1
      Width = 290
      Height = 73
      Caption = #1058#1086#1074#1072#1088' '#1089#1086' '#1089#1082#1083#1072#1076#1072
      TabOrder = 0
      object btnVozvrat: TCheckBox
        Left = 12
        Top = 20
        Width = 66
        Height = 17
        TabStop = False
        Caption = #1042#1086#1079#1074#1088#1072#1090
        TabOrder = 0
        OnClick = DataChanged
        OnKeyDown = FormKeyDown
      end
      object edtProductSrc: TwwDBLookupCombo
        Left = 12
        Top = 40
        Width = 267
        Height = 21
        TabStop = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NAME'#9'30'#9'NAME'#9'F')
        LookupTable = Data.qrySklad
        LookupField = 'CLIENTID'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = edtProductSrcChange
        OnKeyDown = FormKeyDown
      end
      object btnNDS: TCheckBox
        Left = 82
        Top = 20
        Width = 72
        Height = 17
        TabStop = False
        Caption = #1059#1095#1077#1090' '#1053#1044#1057
        TabOrder = 1
        OnClick = DataChanged
        OnKeyDown = FormKeyDown
      end
      object btnExportPrice: TCheckBox
        Left = 160
        Top = 17
        Width = 118
        Height = 17
        TabStop = False
        Caption = #1053#1072#1094#1077#1085#1082#1072' '#1101#1082#1089#1087#1086#1088#1090#1072
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = DataChanged
        OnKeyDown = FormKeyDown
      end
    end
    object GroupBox4: TGroupBox
      Left = 515
      Top = 1
      Width = 81
      Height = 73
      Caption = #1044#1086#1089#1090#1072#1074#1082#1072
      TabOrder = 2
      object edtTransportPer: TDBComboBox
        Left = 8
        Top = 40
        Width = 65
        Height = 21
        AutoComplete = False
        DataField = 'PARAM7'
        DataSource = srcDoc
        ItemHeight = 13
        Items.Strings = (
          '0 %'
          '1 %'
          '2 %'
          '3 %'
          '4 %'
          '5 %')
        ReadOnly = True
        TabOrder = 0
        TabStop = False
        OnKeyDown = FormKeyDown
      end
    end
  end
  object pnlTop2: TPanel
    Left = 0
    Top = 164
    Width = 730
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label7: TLabel
      Left = 7
      Top = 8
      Width = 59
      Height = 13
      Caption = #1042#1080#1076' '#1086#1087#1083#1072#1090#1099
    end
    object lbCreditNo: TLabel
      Left = 425
      Top = 9
      Width = 11
      Height = 13
      Caption = #8470
    end
    object btnEditCredit: TSpeedButton
      Left = 573
      Top = 6
      Width = 20
      Height = 19
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000000008888880FFFF88F807888880FF07808F0F788880F87FF78F00
        008880F87FF7788F808880F07F877888F08880F08FF77FFFF08880F088877FFF
        F08880F088877888F08880F08FF77FFFF08880F08FFFFFFFF088800000000000
        00888880880888888888888F7808888888888888F08888888888}
      OnClick = btnEditCreditClick
    end
    object btnCreditNo: TSpeedButton
      Left = 554
      Top = 6
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
      OnClick = btnEditClick
    end
    object btnSelectCredit: TSpeedButton
      Left = 594
      Top = 6
      Width = 20
      Height = 19
      Hint = #1042#1099#1073#1086#1088
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888880000088888000008888770888077
        7778FFF8778888877FF8000000000000000880F888888888778880FFFFFFFFFF
        F8880000000000000008888FF78888F88888FFFF8088808FFFF8000008888800
        0008888888888888888888888888888888888888888888888888}
      OnClick = btnSelectCreditClick
    end
    object edtOplata: TwwDBComboBox
      Left = 72
      Top = 6
      Width = 273
      Height = 21
      ShowButton = True
      Style = csDropDownList
      MapList = True
      AllowClearKey = True
      DataField = 'SKIND'
      DataSource = srcDoc
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        #1069#1082#1089#1087#1086#1088#1090' '#1090#1086#1074#1072#1088#1086#1074#9'-1'
        #1042#1085#1091#1090#1088#1077#1085#1085#1077#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077#9'0'
        #1050#1072#1089#1089#1086#1074#1099#1081' '#1095#1077#1082#9'1'
        #1050#1072#1089#1089#1086#1074#1099#1081' '#1086#1088#1076#1077#1088#9'2'
        #1041#1077#1079#1085#1072#1083#1080#1095#1085#1086#9'3'
        #1042#1079#1072#1080#1084#1086#1079#1072#1095#1077#1090#9'4'
        #1041#1072#1088#1090#1077#1088#9'5')
      Sorted = False
      TabOrder = 0
      UnboundDataType = wwDefault
      OnChange = edtChange
      OnKeyDown = FormKeyDown
    end
    object edtCreditNo: TDBEdit
      Left = 442
      Top = 5
      Width = 112
      Height = 21
      DataField = 'DOCNO'
      DataSource = srcCredit
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object btnCredit: TCheckBox
      Left = 394
      Top = 7
      Width = 17
      Height = 17
      TabStop = False
      TabOrder = 2
      OnClick = DataChanged
    end
    object edtDebit: TwwDBLookupCombo
      Left = 424
      Top = 5
      Width = 197
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DOC'#9'49'#9#1044#1086#1082#1091#1084#1077#1085#1090#9'F'
        'SUM0'#9'10'#9#1057#1091#1084#1084#1072#9'F'
        'OST'#9'10'#9#1044#1086#1083#1075#9'F')
      DataField = 'PDOCID'
      DataSource = srcDoc
      LookupTable = qryDebit
      LookupField = 'DOCID'
      Options = [loColLines, loTitles]
      TabOrder = 3
      Visible = False
      AutoDropDown = True
      ShowButton = True
      SearchDelay = 100
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = edtDebitExit
      OnKeyDown = FormKeyDown
    end
  end
  object qryProd: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryProdBeforeOpen
    OnCalcFields = qryProdCalcFields
    SQL.Strings = (
      'select query_ostatok.*,'
      
        'cast(get_product_name(produsername, classname, productname,len) ' +
        'as varchar(100)) product2'
      'from query_ostatok(:clientid,:clientid2)')
    Left = 248
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clientid2'
        ParamType = ptUnknown
      end>
    object qryProdPRODUCT2: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 50
      FieldName = 'PRODUCT2'
      Size = 99
    end
    object qryProdUNIT: TFloatField
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 5
      FieldName = 'UNIT'
      ReadOnly = True
    end
    object qryProdCNT: TFloatField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086
      DisplayWidth = 5
      FieldName = 'CNT'
      ReadOnly = True
    end
    object qryProdINPRICE_Calc: TFloatField
      DisplayLabel = #1055#1088#1080#1093'.'#1094#1077#1085#1072
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'INPRICE_Calc'
      Calculated = True
    end
    object qryProdOUTPRICE_Calc: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'OUTPRICE_Calc'
      Calculated = True
    end
    object qryProdOUTPRICE2_Calc: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'OUTPRICE2_Calc'
      Calculated = True
    end
    object qryProdOUTPRICE3_Calc: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'OUTPRICE3_Calc'
      Calculated = True
    end
    object qryProdOUTPRICE4_Calc: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'OUTPRICE4_Calc'
      Calculated = True
    end
    object qryProdOUTPRICE5_Calc: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'OUTPRICE5_Calc'
      Calculated = True
    end
    object qryProdDATE1: TDateTimeField
      DisplayLabel = #1086#1090
      DisplayWidth = 10
      FieldName = 'DATE1'
      ReadOnly = True
    end
    object qryProdINPRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'INPRICE'
      ReadOnly = True
      Visible = False
    end
    object qryProdPRODUCT: TIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      DisplayWidth = 30
      FieldName = 'PRODUCT'
      ReadOnly = True
      Visible = False
      Size = 100
    end
    object qryProdLEN: TIBStringField
      DisplayLabel = #1060#1072#1089'.'
      DisplayWidth = 5
      FieldName = 'LEN'
      ReadOnly = True
      Visible = False
      Size = 10
    end
    object qryProdINNDSPRICE: TFloatField
      DisplayLabel = #1055#1088'. '#1094#1077#1085#1072'~'#1053#1044#1057
      FieldName = 'INNDSPRICE'
      ReadOnly = True
      Visible = False
    end
    object qryProdINDOCID: TIntegerField
      FieldName = 'INDOCID'
      ReadOnly = True
      Visible = False
    end
    object qryProdINRECID: TIntegerField
      FieldName = 'INRECID'
      ReadOnly = True
      Visible = False
    end
    object qryProdPRODID: TIntegerField
      FieldName = 'PRODID'
      ReadOnly = True
      Visible = False
    end
    object qryProdNDS: TFloatField
      FieldName = 'NDS'
      ReadOnly = True
      Visible = False
    end
    object qryProdCOUNTRY: TIBStringField
      FieldName = 'COUNTRY'
      ReadOnly = True
      Visible = False
      Size = 50
    end
    object qryProdCOMMENT: TBlobField
      FieldName = 'COMMENT'
      ReadOnly = True
      Visible = False
      Size = 8
    end
    object qryProdSERTIFICAT: TBlobField
      FieldName = 'SERTIFICAT'
      ReadOnly = True
      Visible = False
      Size = 8
    end
    object qryProdDIM: TIBStringField
      FieldName = 'DIM'
      ReadOnly = True
      Visible = False
      Size = 10
    end
    object qryProdPDOCID: TIntegerField
      FieldName = 'PDOCID'
      ReadOnly = True
      Visible = False
    end
    object qryProdPRECID: TIntegerField
      FieldName = 'PRECID'
      ReadOnly = True
      Visible = False
    end
    object qryProdNTD: TBlobField
      FieldName = 'NTD'
      Visible = False
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryProdWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      Origin = 'QUERY_OSTATOK.WEIGHT'
      Visible = False
    end
    object qryProdOUTPRICE: TFloatField
      FieldName = 'OUTPRICE'
      Origin = 'QUERY_OSTATOK.OUTPRICE'
      Visible = False
    end
    object qryProdOUTPRICE2: TFloatField
      FieldName = 'OUTPRICE2'
      Origin = 'QUERY_OSTATOK.OUTPRICE2'
      Visible = False
    end
    object qryProdOUTPRICE3: TFloatField
      FieldName = 'OUTPRICE3'
      Origin = 'QUERY_OSTATOK.OUTPRICE3'
      Visible = False
    end
    object qryProdOUTPRICE4: TFloatField
      FieldName = 'OUTPRICE4'
      Origin = 'QUERY_OSTATOK.OUTPRICE4'
      Visible = False
    end
    object qryProdOUTPRICE5: TFloatField
      FieldName = 'OUTPRICE5'
      Origin = 'QUERY_OSTATOK.OUTPRICE5'
      Visible = False
    end
    object qryProdLASTPRICE: TFloatField
      FieldName = 'LASTPRICE'
      Origin = 'QUERY_OSTATOK.LASTPRICE'
      Visible = False
    end
    object qryProdLASTPRICE2: TFloatField
      FieldName = 'LASTPRICE2'
      Origin = 'QUERY_OSTATOK.LASTPRICE2'
      Visible = False
    end
    object qryProdLASTPRICE3: TFloatField
      FieldName = 'LASTPRICE3'
      Origin = 'QUERY_OSTATOK.LASTPRICE3'
      Visible = False
    end
    object qryProdLASTPRICE4: TFloatField
      FieldName = 'LASTPRICE4'
      Origin = 'QUERY_OSTATOK.LASTPRICE4'
      Visible = False
    end
    object qryProdLASTPRICE5: TFloatField
      FieldName = 'LASTPRICE5'
      Origin = 'QUERY_OSTATOK.LASTPRICE5'
      Visible = False
    end
  end
  object qryDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforeOpen = qryBeforeOpen
    BeforePost = qryBeforePost
    OnUpdateRecord = qryDocUpdateRecord
    CachedUpdates = True
    SQL.Strings = (
      'select doc.*,'
      
        'c1.name clientname1, get_full_name(c1.fullname, c1.name) client1' +
        ','
      
        'c2.name clientname2, get_full_name(c2.fullname, c2.name) client2' +
        ', c2.address2,'
      'sklad.clientid as skladid'
      'from doc '
      'left join client c1 on c1.clientid=doc.clientid1'
      'left join client c2 on c2.clientid=doc.clientid2'
      'left join sklad on sklad.clientid = doc.clientid1'
      'where doc.docid=:docid')
    UpdateObject = updDoc
    Left = 88
    Top = 272
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
    object qryDocSKIND: TSmallintField
      FieldName = 'SKIND'
    end
    object qryDocDOCNO: TIBStringField
      FieldName = 'DOCNO'
      OnGetText = qryDOCNOGetText
      OnSetText = qryDOCNOSetText
      Size = 10
    end
    object qryDocDOCNO2: TStringField
      FieldName = 'DOCNO2'
      OnGetText = qryDOCNOGetText
      OnSetText = qryDOCNOSetText
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
      Alignment = taLeftJustify
      FieldName = 'PARAM1'
    end
    object qryDocPARAM2: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PARAM2'
      OnGetText = PerFieldGetText
      OnSetText = PerFieldSetText
    end
    object qryDocPARAM3: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PARAM3'
      OnGetText = PerFieldGetText
      OnSetText = PerFieldSetText
    end
    object qryDocPARAM4: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PARAM4'
    end
    object qryDocPARAM5: TBlobField
      FieldName = 'PARAM5'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryDocPARAM6: TIBStringField
      FieldName = 'PARAM6'
      Size = 10
    end
    object qryDocPARAM7: TFloatField
      Alignment = taLeftJustify
      FieldName = 'PARAM7'
      OnGetText = PerFieldGetText
      OnSetText = PerFieldSetText
    end
    object qryDocSUM0: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM0'
    end
    object qryDocSUM1: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM1'
    end
    object qryDocSUM2: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM2'
    end
    object qryDocSUM3: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM3'
    end
    object qryDocCOMMENT: TBlobField
      FieldName = 'COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryDocOST: TFloatField
      Alignment = taLeftJustify
      FieldName = 'OST'
    end
    object qryDocCLIENTNAME1: TIBStringField
      FieldName = 'CLIENTNAME1'
      Size = 30
    end
    object qryDocCLIENT1: TIBStringField
      FieldName = 'CLIENT1'
      Size = 200
    end
    object qryDocCLIENTNAME2: TIBStringField
      FieldName = 'CLIENTNAME2'
      Size = 30
    end
    object qryDocCLIENT2: TIBStringField
      FieldName = 'CLIENT2'
      Size = 200
    end
    object qryDocADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Origin = 'CLIENT.ADDRESS2'
      Size = 400
    end
    object qryDocSKLADID: TIntegerField
      FieldName = 'SKLADID'
      Origin = 'SKLAD.CLIENTID'
    end
  end
  object qryRec: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterEdit = qryRecAfterEdit
    AfterInsert = qryRecAfterInsert
    AfterOpen = qryRecAfterOpen
    AfterPost = qryRecAfterPost
    BeforeCancel = qryRecBeforeCancel
    BeforeDelete = qryRecBeforeDelete
    BeforeEdit = qryRecBeforeEdit
    BeforeInsert = DataModified
    BeforeOpen = qryRecBeforeOpen
    BeforePost = qryRecBeforePost
    OnCalcFields = qryRecCalcFields
    OnUpdateRecord = qryRecUpdateRecord
    CachedUpdates = True
    SQL.Strings = (
      'select cast(null as integer) clientid1,'
      
        'doc_prod.docid, doc_prod.recid, doc_prod.indocid, doc_prod.inrec' +
        'id, doc_prod.pdocid, doc_prod.precid, doc_prod.prodid,'
      
        'doc_prod.kind, doc_prod.unit, doc_prod.cnt, doc_prod.unit * doc_' +
        'prod.cnt allcnt, doc_prod.rcnt, doc_prod.ucnt,'
      'cast(doc_prod.inprice as double precision) inprice, '
      'cast(doc_prod.inndsprice as double precision) inndsprice, '
      'cast(doc_prod.outprice as double precision) outprice, '
      'cast(doc_prod.price as double precision) price, '
      'cast(doc_prod.ndsprice as double precision) ndsprice, '
      
        'doc_prod.newprice, doc_prod.newprice2, doc_prod.newprice3, doc_p' +
        'rod.newprice4, doc_prod.newprice5, doc_prod.nalogsum,'
      'doc_prod.comment, doc_prod.ntd,'
      'round_curr(doc_prod.unit*doc_prod.cnt*doc_prod.price) summ,'
      'round_curr(doc_prod.unit*doc_prod.cnt*doc_prod.ndsprice) ndssum,'
      'product.name productname,'
      
        'product.nds, product.dim, product.len, product.weight, product.s' +
        'ertificat,'
      'produser.country,'
      
        'get_product_name(product.name, class.smallname, produser.smallna' +
        'me, product.len) product,'
      
        'cast(get_product_name(produser.smallname, class.smallname, produ' +
        'ct.name, product.len) as varchar(100)) product2'
      'from doc_prod'
      'left join product on product.prodid=doc_prod.prodid'
      'left join class on class.classid=product.classid'
      'left join produser on produser.produserid=product.produserid'
      'where docid=:docid and recid > 0')
    UpdateObject = updRec
    Left = 88
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        ParamType = ptUnknown
      end>
    object qryRecRECID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'RECID'
      Origin = 'DOC_PROD.RECID'
      Required = True
      OnSetText = qryRecRECIDSetText
    end
    object qryRecPRODUCT2: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072'~'#1080#1083#1080' '#1091#1089#1083#1091#1075#1080
      DisplayWidth = 50
      FieldName = 'PRODUCT2'
      Origin = 'PRODUCT.NAME'
      Size = 99
    end
    object qryRecUNIT: TFloatField
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 10
      FieldName = 'UNIT'
      Origin = 'DOC_PROD.UNIT'
      OnChange = DocSumChange
    end
    object qryRecCNT: TFloatField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086'~'#1084#1077#1089#1090
      DisplayWidth = 10
      FieldName = 'CNT'
      Origin = 'DOC_PROD.CNT'
      OnChange = DocSumChange
    end
    object qryRecALLCNT: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'
      DisplayWidth = 10
      FieldName = 'ALLCNT'
      OnChange = DocSumChange
    end
    object qryRecINPRICE: TFloatField
      DisplayLabel = #1055#1088#1080#1093#1086#1076#1085#1072#1103'~'#1094#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'INPRICE'
      Origin = 'DOC_PROD.INPRICE'
      ReadOnly = True
    end
    object qryRecOUTPRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'OUTPRICE'
      OnChange = DocSumChange
    end
    object qryRecPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = 'DOC_PROD.PRICE'
      OnChange = DocSumChange
    end
    object qryRecSUMM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'SUMM'
      OnChange = DocSumChange
    end
    object qryRecNDSPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072'~'#1053#1044#1057
      DisplayWidth = 10
      FieldName = 'NDSPRICE'
      Origin = 'DOC_PROD.NDSPRICE'
    end
    object qryRecNDSSUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072'~'#1053#1044#1057
      DisplayWidth = 10
      FieldName = 'NDSSUM'
      OnChange = DocSumChange
    end
    object qryRecNALOGSUM: TFloatField
      DisplayLabel = #1053#1072#1083#1086#1075'~'#1089' '#1087#1088#1086#1076#1072#1078
      DisplayWidth = 10
      FieldName = 'NALOGSUM'
      Origin = 'DOC_PROD.NALOGSUM'
    end
    object qryRecNTD: TBlobField
      DisplayLabel = #8470' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1081'~'#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080
      DisplayWidth = 20
      FieldName = 'NTD'
      Origin = 'DOC_PROD.NTD'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryRecNEWPRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'NEWPRICE'
      Origin = 'DOC_PROD.NEWPRICE'
    end
    object qryRecPRICEPER: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER'
      OnGetText = PerFieldGetText
      OnSetText = PerFieldSetText
      Calculated = True
    end
    object qryRecNEWPRICE2: TFloatField
      DisplayWidth = 10
      FieldName = 'NEWPRICE2'
      Origin = 'DOC_PROD.NEWPRICE2'
    end
    object qryRecPRICEPER2: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER2'
      Calculated = True
    end
    object qryRecNEWPRICE3: TFloatField
      DisplayWidth = 10
      FieldName = 'NEWPRICE3'
      Origin = 'DOC_PROD.NEWPRICE3'
    end
    object qryRecPRICEPER3: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER3'
      Calculated = True
    end
    object qryRecNEWPRICE4: TFloatField
      DisplayWidth = 10
      FieldName = 'NEWPRICE4'
      Origin = 'DOC_PROD.NEWPRICE4'
    end
    object qryRecPRICEPER4: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER4'
      Calculated = True
    end
    object qryRecNEWPRICE5: TFloatField
      DisplayWidth = 10
      FieldName = 'NEWPRICE5'
      Origin = 'DOC_PROD.NEWPRICE5'
    end
    object qryRecPRICEPER5: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PRICEPER5'
      Calculated = True
    end
    object qryRecPRODUCT: TIBStringField
      Tag = 1
      DisplayLabel = #1058#1086#1074#1072#1088
      DisplayWidth = 35
      FieldName = 'PRODUCT'
      Visible = False
      Size = 100
    end
    object qryRecNDS: TFloatField
      DisplayLabel = #1057#1090#1072#1074#1082#1072'~'#1053#1044#1057
      FieldName = 'NDS'
      Visible = False
    end
    object qryRecINNDSPRICE: TFloatField
      DisplayLabel = #1055#1088#1080#1093#1086#1076#1085#1072#1103'~'#1094#1077#1085#1072' '#1053#1044#1057
      DisplayWidth = 10
      FieldName = 'INNDSPRICE'
      Visible = False
    end
    object qryRecSERTIFICAT: TBlobField
      DisplayLabel = #1057#1077#1088#1090#1080#1092#1080#1082#1072#1090
      FieldName = 'SERTIFICAT'
      Visible = False
      Size = 8
    end
    object qryRecCOUNTRY: TIBStringField
      DisplayLabel = #1057#1090#1088#1072#1085#1072'~'#1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'COUNTRY'
      Visible = False
      Size = 50
    end
    object qryRecCOMMENT: TBlobField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      FieldName = 'COMMENT'
      Visible = False
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryRecDOCID: TIntegerField
      Tag = 1
      FieldName = 'DOCID'
      Required = True
      Visible = False
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
    object qryRecRCNT: TFloatField
      FieldName = 'RCNT'
      Visible = False
    end
    object qryRecUCNT: TFloatField
      FieldName = 'UCNT'
      Visible = False
    end
    object qryRecDIM: TIBStringField
      Tag = 1
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      FieldName = 'DIM'
      Visible = False
      Size = 10
    end
    object qryRecCLIENTID1: TIntegerField
      Tag = 1
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object qryRecWEIGHT: TFloatField
      Tag = 1
      DisplayLabel = #1042#1077#1089
      DisplayWidth = 10
      FieldName = 'WEIGHT'
      Visible = False
    end
    object qryRecLEN: TIBStringField
      DisplayLabel = #1060#1072#1089#1086#1074#1082#1072
      FieldName = 'LEN'
      Origin = 'PRODUCT.LEN'
      Visible = False
      Size = 10
    end
  end
  object srcDoc: TDataSource
    DataSet = qryDoc
    OnDataChange = srcDocDataChange
    Left = 120
    Top = 272
  end
  object srcRec: TDataSource
    DataSet = qryRec
    OnDataChange = srcRecDataChange
    Left = 120
    Top = 304
  end
  object srcClient: TDataSource
    DataSet = qryClient
    OnDataChange = srcClientDataChange
    Left = 280
    Top = 272
  end
  object updRec: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
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
      '  INPRICE = :INPRICE,'
      '  INNDSPRICE = :INNDSPRICE,'
      '  OUTPRICE = :OUTPRICE,'
      '  PRICE = :PRICE,'
      '  NDSPRICE = :NDSPRICE,'
      '  NEWPRICE = :NEWPRICE,'
      '  NEWPRICE2 = :NEWPRICE2,'
      '  NEWPRICE3 = :NEWPRICE3,'
      '  NEWPRICE4 = :NEWPRICE4,'
      '  NEWPRICE5 = :NEWPRICE5,'
      '  NALOGSUM = :NALOGSUM,'
      '  COMMENT = :COMMENT,'
      '  NTD = :NTD'
      'where'
      '  DOCID = :OLD_DOCID and'
      '  RECID = :OLD_RECID')
    InsertSQL.Strings = (
      'insert into doc_prod'
      
        '  (DOCID, RECID, INDOCID, INRECID, PDOCID, PRECID, PRODID, KIND,' +
        ' UNIT, '
      
        '   CNT, INPRICE, INNDSPRICE, OUTPRICE, PRICE, NDSPRICE, NEWPRICE' +
        ', NEWPRICE2, '
      '  NEWPRICE3, NEWPRICE4, NEWPRICE5, NALOGSUM, COMMENT, NTD)'
      'values'
      
        '  (:DOCID, :RECID, :INDOCID, :INRECID, :PDOCID, :PRECID, :PRODID' +
        ', :KIND, '
      
        '   :UNIT, :CNT, :INPRICE, :INNDSPRICE, :OUTPRICE, :PRICE, :NDSPR' +
        'ICE, :NEWPRICE, '
      
        '   :NEWPRICE2, :NEWPRICE3, :NEWPRICE4, :NEWPRICE5, :NALOGSUM, :C' +
        'OMMENT, :NTD)')
    DeleteSQL.Strings = (
      'delete from doc_prod'
      'where'
      '  DOCID = :OLD_DOCID and'
      '  RECID = :OLD_RECID')
    Left = 152
    Top = 304
  end
  object ActionList: TActionList
    Left = 158
    Top = 48
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
    object actRecalcAll: TAction
      Category = 'Data'
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1087#1086#1083#1085#1086#1089#1090#1100#1102
      Hint = '| '#1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1087#1086#1083#1085#1086#1089#1090#1100#1102
      ImageIndex = 18
      OnExecute = ActionExecute
    end
    object actRecalcSum: TAction
      Category = 'Data'
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1080#1090#1086#1075#1080
      Hint = '| '#1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1080#1090#1086#1075#1080
      ImageIndex = 18
      OnExecute = ActionExecute
    end
    object actRecalc: TAction
      Category = 'Data'
      Caption = 'actRecalc'
      Hint = '| '#1055#1077#1088#1077#1088#1072#1089#1095#1105#1090
      ImageIndex = 18
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
    object actCreateDoc: TAction
      Category = 'Data'
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1087#1086' '#1080#1084#1077#1102#1097#1080#1084#1089#1103' '#1085#1072' '#1089#1082#1083#1072#1076#1077' '#1090#1086#1074#1072#1088#1072#1084
      OnExecute = ActionExecute
    end
  end
  object updDoc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from doc '
      'where'
      '  DOCID = :DOCID')
    ModifySQL.Strings = (
      'update doc'
      'set'
      '  DOCID = :DOCID,'
      '  PDOCID = :PDOCID,'
      '  KIND = :KIND,'
      '  SKIND = :SKIND,'
      '  DOCNO = :DOCNO,'
      '  DATE1 = :DATE1,'
      '  DATE2 = :DATE2,'
      '  CLIENTID1 = :CLIENTID1,'
      '  CLIENTID2 = :CLIENTID2,'
      '  PARAM1 = :PARAM1,'
      '  PARAM2 = :PARAM2,'
      '  PARAM3 = :PARAM3,'
      '  SUM0 = :SUM0,'
      '  SUM1 = :SUM1,'
      '  SUM2 = :SUM2,'
      '  SUM3 = :SUM3,'
      '  COMMENT = :COMMENT,'
      '  PARAM4 = :PARAM4,'
      '  PARAM5 = :PARAM5,'
      '  PARAM6 = :PARAM6,'
      '  PARAM7 = :PARAM7'
      'where'
      '  DOCID = :OLD_DOCID')
    InsertSQL.Strings = (
      'insert into doc'
      
        '  (DOCID, PDOCID, KIND, SKIND, DOCNO, DATE1, DATE2, CLIENTID1, C' +
        'LIENTID2, '
      
        '   PARAM1, PARAM2, PARAM3, SUM0, SUM1, SUM2, SUM3, COMMENT, PARA' +
        'M4, PARAM5, '
      '   PARAM6, PARAM7)'
      'values'
      
        '  (:DOCID, :PDOCID, :KIND, :SKIND, :DOCNO, :DATE1, :DATE2, :CLIE' +
        'NTID1, '
      
        '   :CLIENTID2, :PARAM1, :PARAM2, :PARAM3, :SUM0, :SUM1, :SUM2, :' +
        'SUM3, :COMMENT, '
      '   :PARAM4, :PARAM5, :PARAM6, :PARAM7)')
    DeleteSQL.Strings = (
      'delete from doc'
      'where'
      '  DOCID = :OLD_DOCID')
    Left = 152
    Top = 272
  end
  object mPrint: TPopupMenu
    OnPopup = mPrintPopup
    Left = 42
    Top = 48
    object miReportEnd: TMenuItem
      Caption = '-'
    end
    object mReportDoc4: TMenuItem
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1085#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1102
      OnClick = print
    end
    object mReportOrder: TMenuItem
      Tag = 4
      Caption = #1050#1072#1089#1089#1086#1074#1099#1081' '#1086#1088#1076#1077#1088
      OnClick = print
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = #1060#1086#1088#1084#1099' '#1087#1088#1077#1076'.'#1074#1077#1088#1089#1080#1081
      object mReportDoc1: TMenuItem
        Tag = 1
        Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
        OnClick = print
      end
      object mReportDoc3: TMenuItem
        Tag = 3
        Caption = #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072
        OnClick = print
      end
      object mReportDoc3_Nalog: TMenuItem
        Tag = 3
        Caption = #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072' ('#1089' '#1053#1055')'
        OnClick = print
      end
      object mReportDoc2: TMenuItem
        Tag = 2
        Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1103#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
        OnClick = print
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object miPrintFile: TMenuItem
      Caption = #1042' '#1092#1072#1081#1083' ...'
      OnClick = print
    end
  end
  object procExport: TIBStoredProc
    Database = Data.db
    Transaction = Data.trApply
    StoredProcName = 'EXPORT_PRODUCT'
    Left = 184
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DOCID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'RECID'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'NDSPRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTID1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTID2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INDOCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INRECID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRODID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UNIT'
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
    CachedUpdates = True
    SQL.Strings = (
      'select client.*,'
      'get_full_name(client.fullname,client.name) client'
      'from client order by name')
    UpdateObject = updClient
    Left = 248
    Top = 272
    object qryClientCLIENTID: TIntegerField
      FieldName = 'CLIENTID'
      Required = True
      Visible = False
    end
    object qryClientNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Size = 30
    end
    object qryClientFULLNAME: TStringField
      DisplayLabel = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084'.'
      FieldName = 'FULLNAME'
      Size = 200
    end
    object qryClientADRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADRESS'
      Size = 400
    end
    object qryClientPHONE: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085#1099
      FieldName = 'PHONE'
      Size = 50
    end
    object qryClientREG: TStringField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
      FieldName = 'REG'
      Size = 400
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
    object qryClientADDRESS2: TIBStringField
      DisplayLabel = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100'/'#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
      FieldName = 'ADDRESS2'
      Origin = 'CLIENT.ADDRESS2'
      Size = 400
    end
    object qryClientCLIENT: TIBStringField
      FieldName = 'CLIENT'
      Visible = False
      Size = 200
    end
  end
  object updClient: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
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
      '  KORBANK = :KORBANK,'
      '  ADDRESS2 = :ADDRESS2'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    InsertSQL.Strings = (
      'insert into client'
      
        '  (CLIENTID, NAME, FULLNAME, ADRESS, PHONE, OKONX, OKPO, REG, IN' +
        'N, BIK, '
      '   RS, KS, SKS, BANK, KORBANK, ADDRESS2)'
      'values'
      
        '  (:CLIENTID, :NAME, :FULLNAME, :ADRESS, :PHONE, :OKONX, :OKPO, ' +
        ':REG, :INN, '
      '   :BIK, :RS, :KS, :SKS, :BANK, :KORBANK, :ADDRESS2)')
    DeleteSQL.Strings = (
      'delete from client'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    Left = 312
    Top = 272
  end
  object mDesktop: TPopupMenu
    Left = 72
    Top = 48
    object N1: TMenuItem
      Action = actSaveDesktop
    end
    object N2: TMenuItem
      Action = actRestoreDesktop
    end
  end
  object qryCredit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    AfterOpen = qryAfterOpen
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforeOpen = qryBeforeOpen
    BeforePost = qryBeforePost
    CachedUpdates = True
    SQL.Strings = (
      'select * from doc'
      'where docid=:docid')
    UpdateObject = updCredit
    Left = 88
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        ParamType = ptUnknown
      end>
    object qryCreditDOCID: TIntegerField
      FieldName = 'DOCID'
      Required = True
    end
    object qryCreditPDOCID: TIntegerField
      FieldName = 'PDOCID'
    end
    object qryCreditKIND: TSmallintField
      FieldName = 'KIND'
    end
    object qryCreditSKIND: TSmallintField
      FieldName = 'SKIND'
    end
    object qryCreditDOCNO: TIBStringField
      FieldName = 'DOCNO'
      OnGetText = qryDOCNOGetText
      OnSetText = qryDOCNOSetText
      Size = 10
    end
    object qryCreditDATE1: TDateTimeField
      FieldName = 'DATE1'
    end
    object qryCreditDATE2: TDateTimeField
      FieldName = 'DATE2'
    end
    object qryCreditCLIENTID1: TIntegerField
      FieldName = 'CLIENTID1'
    end
    object qryCreditCLIENTID2: TIntegerField
      FieldName = 'CLIENTID2'
    end
    object qryCreditPARAM1: TSmallintField
      FieldName = 'PARAM1'
    end
    object qryCreditPARAM2: TFloatField
      FieldName = 'PARAM2'
    end
    object qryCreditPARAM3: TFloatField
      FieldName = 'PARAM3'
    end
    object qryCreditSUM1: TFloatField
      FieldName = 'SUM1'
    end
    object qryCreditSUM2: TFloatField
      FieldName = 'SUM2'
    end
    object qryCreditSUM3: TFloatField
      FieldName = 'SUM3'
    end
    object qryCreditCOMMENT: TBlobField
      FieldName = 'COMMENT'
      Size = 8
    end
    object qryCreditPARAM4: TSmallintField
      FieldName = 'PARAM4'
    end
    object qryCreditPARAM5: TBlobField
      FieldName = 'PARAM5'
      Size = 8
    end
    object qryCreditPARAM6: TIBStringField
      FieldName = 'PARAM6'
      Size = 10
    end
    object qryCreditSUM0: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM0'
      OnGetText = qryCreditSUM0GetText
      OnSetText = qryCreditSUM0SetText
    end
  end
  object srcCredit: TDataSource
    DataSet = qryCredit
    Left = 120
    Top = 336
  end
  object updCredit: TIBUpdateSQL
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
      '  OST,'
      '  SKIND'
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
      '  SUM1 = :SUM1,'
      '  SUM2 = :SUM2,'
      '  COMMENT = :COMMENT,'
      '  PARAM4 = :PARAM4,'
      '  PARAM5 = :PARAM5,'
      '  PARAM6 = :PARAM6,'
      '  SUM0 = :SUM0,'
      '  SKIND = :SKIND'
      'where'
      '  DOCID = :OLD_DOCID')
    InsertSQL.Strings = (
      'insert into doc'
      
        '  (DOCID, PDOCID, KIND, DOCNO, DATE1, DATE2, CLIENTID1, CLIENTID' +
        '2, PARAM1, '
      
        '   PARAM2, PARAM3, SUM1, SUM2, COMMENT, PARAM4, PARAM5, PARAM6, ' +
        'SUM0, SKIND)'
      'values'
      
        '  (:DOCID, :PDOCID, :KIND, :DOCNO, :DATE1, :DATE2, :CLIENTID1, :' +
        'CLIENTID2, '
      
        '   :PARAM1, :PARAM2, :PARAM3, :SUM1, :SUM2, :COMMENT, :PARAM4, :' +
        'PARAM5, '
      '   :PARAM6, :SUM0, :SKIND)')
    DeleteSQL.Strings = (
      'delete from doc'
      'where'
      '  DOCID = :OLD_DOCID')
    Left = 152
    Top = 336
  end
  object qrySklad: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    CachedUpdates = True
    SQL.Strings = (
      'select clientid, '
      'nodocprod, nodocprod1, novdocprod, noquery,'
      'nocheck, noorder, nororder, noplat, nodocschet '
      'from sklad where clientid = :clientid')
    UpdateObject = updSklad
    Left = 88
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end>
    object qrySkladCLIENTID: TIntegerField
      FieldName = 'CLIENTID'
      Required = True
      Visible = False
    end
    object qrySkladNODOCPROD: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'NODOCPROD'
    end
    object qrySkladNODOCSCHET: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1089#1095#1105#1090'-'#1092#1072#1082#1090#1091#1088#1099
      FieldName = 'NODOCSCHET'
    end
    object qrySkladNOVDOCPROD: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1074#1086#1079#1074#1088'.'#1085#1072#1082#1083'.'
      FieldName = 'NOVDOCPROD'
    end
    object qrySkladNODOCPROD1: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1090#1086#1074'.'#1095#1077#1082#1072
      FieldName = 'NODOCPROD1'
    end
    object qrySkladNOQUERY: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1079#1072#1082#1072#1079#1072
      FieldName = 'NOQUERY'
      Origin = 'SKLAD.NOQUERY'
    end
    object qrySkladNOCHECK: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1082#1072#1089#1089'.'#1095#1077#1082#1072
      FieldName = 'NOCHECK'
    end
    object qrySkladNOORDER: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1087#1088'.'#1082'.'#1086#1088#1076#1077#1088#1072
      FieldName = 'NOORDER'
    end
  end
  object srcSklad: TDataSource
    DataSet = qrySklad
    Left = 120
    Top = 368
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
      '  NODOCPROD = :NODOCPROD,'
      '  NODOCPROD1 = :NODOCPROD1,'
      '  NOVDOCPROD = :NOVDOCPROD,'
      '  NOQUERY = :NOQUERY,'
      '  NOCHECK = :NOCHECK,'
      '  NOORDER = :NOORDER,'
      '  NODOCSCHET = :NODOCSCHET'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    InsertSQL.Strings = (
      'insert into sklad'
      '  (NODOCPROD, NODOCPROD1, NOVDOCPROD, NOQUERY, NOCHECK, '
      'NOORDER,NODOCSCHET)'
      'values'
      '  (:NODOCPROD, :NODOCPROD1, :NOVDOCPROD, :NOQUERY, :NOCHECK, '
      ':NOORDER,:NODOCSCHET)')
    DeleteSQL.Strings = (
      'delete from sklad'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    Left = 152
    Top = 368
  end
  object mRecalc: TPopupMenu
    OnPopup = mPrintPopup
    Left = 10
    Top = 48
    object MenuItem1: TMenuItem
      Tag = 1
      Action = actRecalcAll
    end
    object MenuItem2: TMenuItem
      Tag = 2
      Action = actRecalcSum
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mSave: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1092#1072#1081#1083' ...'
      OnClick = mLoadClick
    end
    object mLoad: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1080#1079' '#1092#1072#1081#1083#1072' ...'
      OnClick = mLoadClick
    end
    object miBreak: TMenuItem
      Caption = '-'
    end
    object miCreateDoc: TMenuItem
      Action = actCreateDoc
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1087#1086' '#1080#1084#1077#1102#1097#1080#1084#1089#1103' '#1074' '#1085#1072#1083#1080#1095#1080#1080' '#1090#1086#1074#1072#1088#1072#1084
    end
  end
  object procCreateDoc: TIBStoredProc
    Database = Data.db
    Transaction = Data.trApply
    StoredProcName = 'CREATE_DOC_PRODUCT'
    Left = 88
    Top = 400
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
  object mRec: TPopupMenu
    Left = 104
    Top = 48
    object miRecField: TMenuItem
      Caption = #1057#1090#1086#1083#1073#1094#1099' ...'
      OnClick = miRecFieldClick
    end
    object miRecOut: TMenuItem
      Caption = #1057#1089#1099#1083#1082#1080' ...'
      OnClick = miRecOutClick
    end
  end
  object qryDebit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      'select docid,kind,clientid1,clientid2,param3,sum0,sum1,sum2,ost,'
      'get_doc_name(kind, skind, docno, date1, sum0) doc'
      'from doc '
      'where clientid1=:clientid1 and clientid2=:clientid2 '
      'and kind=2 and skind=:skind'
      'and sum0 < 0'
      'order by date1')
    Left = 248
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clientid2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'skind'
        ParamType = ptUnknown
      end>
    object qryDebitDOC: TIBStringField
      DisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090
      DisplayWidth = 49
      FieldName = 'DOC'
      Size = 50
    end
    object qryDebitSUM0: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'SUM0'
    end
    object qryDebitOST: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1044#1086#1083#1075
      DisplayWidth = 10
      FieldName = 'OST'
    end
    object qryDebitDOCID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'DOCID'
      Required = True
      Visible = False
    end
    object qryDebitCLIENTID1: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLIENTID1'
      Visible = False
    end
    object qryDebitCLIENTID2: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLIENTID2'
      Visible = False
    end
    object qryDebitKIND: TSmallintField
      FieldName = 'KIND'
      Visible = False
    end
    object qryDebitSUM1: TFloatField
      FieldName = 'SUM1'
      Visible = False
    end
    object qryDebitSUM2: TFloatField
      FieldName = 'SUM2'
      Visible = False
    end
    object qryDebitPARAM3: TFloatField
      FieldName = 'PARAM3'
      Visible = False
    end
  end
end
