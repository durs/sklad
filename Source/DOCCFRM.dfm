object CreditDocForm: TCreditDocForm
  Left = 293
  Top = 103
  ActiveControl = edtOplata
  Caption = #1055#1083#1072#1090#1105#1078#1085#1086' - '#1088#1072#1089#1095#1105#1090#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
  ClientHeight = 398
  ClientWidth = 593
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
  object Label2: TLabel
    Left = 84
    Top = 164
    Width = 11
    Height = 13
    Alignment = taRightJustify
    Caption = #8470
  end
  object Label3: TLabel
    Left = 232
    Top = 164
    Width = 11
    Height = 13
    Caption = #1086#1090
  end
  object Label4: TLabel
    Left = 74
    Top = 126
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = #1044#1083#1103
  end
  object btnClient2: TSpeedButton
    Left = 454
    Top = 125
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
    Left = 80
    Top = 102
    Width = 13
    Height = 13
    Alignment = taRightJustify
    Caption = #1054#1090
  end
  object btnClient1: TSpeedButton
    Left = 454
    Top = 100
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
  object lbNalog: TLabel
    Left = 14
    Top = 311
    Width = 81
    Height = 13
    Alignment = taRightJustify
    Caption = #1053#1072#1083#1086#1075' '#1089' '#1087#1088#1086#1076#1072#1078
  end
  object lbNds: TLabel
    Left = 71
    Top = 287
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = #1053#1044#1057
  end
  object Label1: TLabel
    Left = 61
    Top = 250
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = #1057#1091#1084#1084#1072
  end
  object lbNdsSum: TLabel
    Left = 298
    Top = 290
    Width = 61
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
  end
  object lbNalogSum: TLabel
    Left = 235
    Top = 315
    Width = 122
    Height = 13
    Caption = #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072' '#1089' '#1087#1088#1086#1076#1072#1078
  end
  object Label7: TLabel
    Left = 76
    Top = 64
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = #1042#1080#1076
  end
  object Label8: TLabel
    Left = 39
    Top = 195
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
  end
  object lbComment: TLabel
    Left = 31
    Top = 347
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077
  end
  object btnScheta: TSpeedButton
    Left = 168
    Top = 193
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
  object lbSchetName: TDBText
    Left = 200
    Top = 194
    Width = 273
    Height = 17
    DataField = 'SCHETNAME'
    DataSource = srcDoc
  end
  object btnDebit: TSpeedButton
    Left = 456
    Top = 217
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
    OnClick = btnDebitClick
  end
  object lbDebit: TLabel
    Left = 44
    Top = 219
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = #1044#1086#1082#1091#1084#1077#1085#1090
  end
  object btnNo: TSpeedButton
    Left = 192
    Top = 163
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
  object lbDocID: TDBText
    Left = 9
    Top = 64
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
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 593
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
      Left = 288
      Top = 2
      Width = 144
      Height = 38
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
      Width = 264
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
      end
      object ToolSep1: TToolButton
        Left = 39
        Top = 0
        Width = 8
        Caption = 'ToolSep1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnNew: TToolButton
        Left = 47
        Top = 0
        Action = actNew
      end
      object btnDelete: TToolButton
        Left = 86
        Top = 0
        Action = actDelete
      end
      object btnEdit: TToolButton
        Left = 125
        Top = 0
        Action = actEdit
        Style = tbsCheck
      end
      object ToolButton3: TToolButton
        Left = 164
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object btnCancel: TToolButton
        Left = 172
        Top = 0
        Action = actCancel
      end
      object btnApply: TToolButton
        Left = 211
        Top = 0
        Action = actApply
      end
    end
    object barDesktop: TPanel
      Left = 445
      Top = 2
      Width = 146
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
        TabOrder = 0
        TabStop = False
        OnChange = edtDesktopChange
        OnKeyDown = FormKeyDown
        Items.Strings = (
          '   '
          #1042#1093#1086#1076#1103#1097#1080#1081
          #1048#1089#1093#1086#1076#1103#1097#1080#1081)
      end
    end
  end
  object edtNo: TDBEdit
    Left = 101
    Top = 162
    Width = 88
    Height = 21
    DataField = 'DOCNO'
    DataSource = srcDoc
    ReadOnly = True
    TabOrder = 5
    OnKeyDown = FormKeyDown
  end
  object edtClient2: TwwDBLookupCombo
    Left = 101
    Top = 125
    Width = 353
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
    DataField = 'CLIENTNAME2'
    DataSource = srcDoc
    LookupTable = qryClient
    LookupField = 'NAME'
    ReadOnly = True
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    SearchDelay = 100
    UseTFields = False
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnKeyDown = FormKeyDown
  end
  object edtDate: TwwDBDateTimePicker
    Left = 256
    Top = 161
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
    TabOrder = 6
    OnKeyDown = FormKeyDown
  end
  object edtClient1: TwwDBLookupCombo
    Left = 101
    Top = 98
    Width = 353
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NAME'#9'50'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
    DataField = 'CLIENTNAME1'
    DataSource = srcDoc
    LookupTable = qryClient
    LookupField = 'NAME'
    ReadOnly = True
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    SearchDelay = 100
    UseTFields = False
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnKeyDown = FormKeyDown
  end
  object btnRezerv: TCheckBox
    Left = 398
    Top = 61
    Width = 81
    Height = 20
    TabStop = False
    Caption = #1056#1077#1079#1077#1088#1074#1085#1099#1081
    TabOrder = 2
    OnClick = DataChanged
    OnKeyDown = FormKeyDown
  end
  object edtNalog: TDBComboBox
    Left = 101
    Top = 311
    Width = 105
    Height = 21
    DataField = 'PARAM3'
    DataSource = srcDoc
    ItemHeight = 13
    Items.Strings = (
      '0 %'
      '2 %'
      '3 %'
      '5 %')
    ReadOnly = True
    TabOrder = 13
    OnChange = edtChange
    OnKeyDown = FormKeyDown
  end
  object edtNDS: TDBComboBox
    Left = 101
    Top = 284
    Width = 105
    Height = 21
    DataField = 'PARAM2'
    DataSource = srcDoc
    ItemHeight = 13
    Items.Strings = (
      '0 %'
      '10 %'
      '18 %'
      '20 %')
    ReadOnly = True
    TabOrder = 11
    OnChange = edtChange
    OnKeyDown = FormKeyDown
  end
  object edtSum: TDBEdit
    Left = 101
    Top = 247
    Width = 105
    Height = 21
    DataField = 'SUM0'
    DataSource = srcDoc
    ReadOnly = True
    TabOrder = 10
    OnKeyDown = FormKeyDown
  end
  object edtNdsSum: TDBEdit
    Left = 365
    Top = 284
    Width = 105
    Height = 21
    DataField = 'SUM1'
    DataSource = srcDoc
    ReadOnly = True
    TabOrder = 12
    OnKeyDown = FormKeyDown
  end
  object edtNalogSum: TDBEdit
    Left = 365
    Top = 311
    Width = 105
    Height = 21
    DataField = 'SUM2'
    DataSource = srcDoc
    ReadOnly = True
    TabOrder = 14
    OnKeyDown = FormKeyDown
  end
  object edtOplata: TwwDBComboBox
    Left = 101
    Top = 60
    Width = 279
    Height = 21
    ShowButton = True
    Style = csDropDownList
    MapList = True
    AllowClearKey = True
    ShowMatchText = True
    DataField = 'SKIND'
    DataSource = srcDoc
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      #1050#1072#1089#1089#1086#1074#1099#1081' '#1095#1077#1082#9'1'
      #1050#1072#1089#1089#1086#1074#1099#1081' '#1086#1088#1076#1077#1088#9'2'
      #1055#1083#1072#1090#1105#1078#1085#1086#1077' '#1087#1086#1088#1091#1095#1077#1085#1080#1077#9'3')
    Sorted = False
    TabOrder = 1
    UnboundDataType = wwDefault
    OnChange = edtChange
    OnKeyDown = FormKeyDown
  end
  object edtScheta: TwwDBLookupCombo
    Left = 101
    Top = 189
    Width = 65
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'SCHET'#9'8'#9#1057#1095#1077#1090#9'F'
      'NAME'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#9'F')
    DataField = 'PARAM6'
    DataSource = srcDoc
    LookupTable = qryScheta
    LookupField = 'SCHET'
    ReadOnly = True
    TabOrder = 7
    AutoDropDown = True
    ShowButton = True
    SearchDelay = 100
    UseTFields = False
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnKeyDown = FormKeyDown
  end
  object edtDebit2: TDBEdit
    Left = 104
    Top = 216
    Width = 353
    Height = 21
    DataField = 'DEBIT'
    DataSource = srcDoc
    ReadOnly = True
    TabOrder = 9
    OnKeyDown = FormKeyDown
  end
  object edtDebit: TwwDBLookupCombo
    Left = 101
    Top = 216
    Width = 374
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
    TabOrder = 8
    AutoDropDown = True
    ShowButton = True
    SearchDelay = 100
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnEnter = edtDebitEnter
    OnKeyDown = FormKeyDown
  end
  object edtComment: TDBEdit
    Left = 101
    Top = 344
    Width = 372
    Height = 21
    DataField = 'COMMENT'
    DataSource = srcDoc
    TabOrder = 15
    OnKeyDown = FormKeyDown
  end
  object qryDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    AfterOpen = qryAfterOpen
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforeOpen = qryBeforeOpen
    BeforePost = qryBeforePost
    OnCalcFields = qryCalcFields
    CachedUpdates = True
    SQL.Strings = (
      'select doc1.*,'
      'c1.name clientname1, get_full_name(c1.fullname,c1.name) client1,'
      'c2.name clientname2, get_full_name(c2.fullname,c2.name) client2,'
      'scheta.name schetname,'
      'scheta.nds schetnds,'
      'scheta.nalog schetnalog,'
      'scheta.debit schetdebit,'
      
        'get_doc_name(doc2.kind, doc2.skind, doc2.docno, doc2.date1, doc2' +
        '.sum0) debit'
      'from doc doc1'
      'left join client c1 on c1.clientid=doc1.clientid1'
      'left join client c2 on c2.clientid=doc1.clientid2'
      'left join scheta on scheta.schet=doc1.param6'
      'left join doc doc2 on doc2.docid=doc1.pdocid'
      'where doc1.docid=:docid')
    UpdateObject = updDoc
    Left = 488
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        ParamType = ptUnknown
      end>
    object qryDocDOCID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'DOCID'
      Required = True
    end
    object qryDocPDOCID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PDOCID'
    end
    object qryDocKIND: TIntegerField
      Alignment = taLeftJustify
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
    object qryDocDATE1: TDateTimeField
      FieldName = 'DATE1'
    end
    object qryDocCLIENTID1: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLIENTID1'
    end
    object qryDocDATE2: TDateTimeField
      FieldName = 'DATE2'
    end
    object qryDocCLIENTID2: TIntegerField
      Alignment = taLeftJustify
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
    object qryDocSUM0: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM0'
      OnGetText = qryDocSUMGetText
      OnSetText = qryDocSUMSetText
    end
    object qryDocSUM1: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM1'
      OnGetText = qryDocSUMGetText
      OnSetText = qryDocSUMSetText
    end
    object qryDocSUM2: TFloatField
      Alignment = taLeftJustify
      FieldName = 'SUM2'
      OnGetText = qryDocSUMGetText
      OnSetText = qryDocSUMSetText
    end
    object qryDocCLIENTNAME1: TIBStringField
      FieldName = 'CLIENTNAME1'
      Size = 30
    end
    object qryDocCLIENTNAME2: TIBStringField
      FieldName = 'CLIENTNAME2'
      Size = 30
    end
    object qryDocCOMMENT: TBlobField
      FieldName = 'COMMENT'
      OnGetText = qryBlobGetText
      OnSetText = qryBlobSetText
      Size = 8
    end
    object qryDocSCHETNAME: TIBStringField
      FieldName = 'SCHETNAME'
      Size = 50
    end
    object qryDocSCHETNDS: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'SCHETNDS'
    end
    object qryDocSCHETNALOG: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'SCHETNALOG'
    end
    object qryDocSCHETDEBIT: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'SCHETDEBIT'
    end
    object qryDocDEBIT: TIBStringField
      DisplayWidth = 50
      FieldName = 'DEBIT'
      Size = 50
    end
    object qryDocCLIENT1: TIBStringField
      FieldName = 'CLIENT1'
      Size = 200
    end
    object qryDocCLIENT2: TIBStringField
      FieldName = 'CLIENT2'
      Size = 200
    end
  end
  object srcDoc: TDataSource
    DataSet = qryDoc
    OnDataChange = srcDocDataChange
    Left = 520
    Top = 64
  end
  object srcClient: TDataSource
    DataSet = qryClient
    OnDataChange = srcClientDataChange
    Left = 520
    Top = 104
  end
  object ActionList: TActionList
    Left = 358
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
    object actRecalc: TAction
      Category = 'Data'
      Caption = 'actRecalc'
      Hint = '| '#1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
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
    Left = 552
    Top = 64
  end
  object qryClient: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    AfterPost = qryAfterPost
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforePost = qryBeforePost
    CachedUpdates = True
    SQL.Strings = (
      'select client.*,'
      'get_full_name(client.fullname,client.name) client'
      'from client order by name')
    UpdateObject = updClient
    Left = 488
    Top = 104
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
      FieldName = 'BANK'
      Size = 100
    end
    object qryClientKORBANK: TStringField
      DisplayLabel = #1050#1086#1088#1088'. '#1073#1072#1085#1082
      FieldName = 'KORBANK'
      Size = 100
    end
    object qryClientCLIENT: TIBStringField
      FieldName = 'CLIENT'
      Visible = False
      Size = 200
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
    Left = 552
    Top = 104
  end
  object qryScheta: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterInsert = qryAfterInsert
    AfterPost = qryAfterPost
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforePost = qryBeforePost
    CachedUpdates = True
    SQL.Strings = (
      'select * from scheta order by schet')
    UpdateObject = updScheta
    Left = 488
    Top = 136
    object qrySchetaSCHET: TIBStringField
      DisplayLabel = #1057#1095#1077#1090
      DisplayWidth = 8
      FieldName = 'SCHET'
      Required = True
      Size = 10
    end
    object qrySchetaNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Size = 50
    end
    object qrySchetaNDS: TSmallintField
      DisplayLabel = #1053#1044#1057
      DisplayWidth = 10
      FieldName = 'NDS'
    end
    object qrySchetaNALOG: TSmallintField
      DisplayLabel = #1053#1072#1083#1086#1075
      DisplayWidth = 10
      FieldName = 'NALOG'
    end
    object qrySchetaDEBIT: TSmallintField
      DisplayLabel = #1044#1086#1083#1075#1080
      DisplayWidth = 10
      FieldName = 'DEBIT'
    end
    object qrySchetaPREDOPLATA: TSmallintField
      DisplayLabel = #1055#1088#1077#1076#1086#1087#1083#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'PREDOPLATA'
    end
    object qrySchetaOPLATADOLGA: TSmallintField
      DisplayLabel = #1054#1087#1083#1072#1090#1072' '#1076#1086#1083#1075#1072
      DisplayWidth = 10
      FieldName = 'OPLATADOLGA'
    end
    object qrySchetaOPLATA1: TSmallintField
      DisplayLabel = #1056#1072#1089#1089#1095#1105#1090' '#1089' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084#1080
      DisplayWidth = 10
      FieldName = 'OPLATA1'
    end
    object qrySchetaOPLATA2: TSmallintField
      DisplayLabel = #1056#1072#1089#1089#1095#1105#1090' '#1089' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103#1084#1080
      DisplayWidth = 10
      FieldName = 'OPLATA2'
    end
  end
  object srcScheta: TDataSource
    DataSet = qryScheta
    Left = 520
    Top = 136
  end
  object updScheta: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SCHET,'
      '  NAME,'
      '  NDS,'
      '  NALOG,'
      '  DEBIT,'
      '  PREDOPLATA,'
      '  OPLATADOLGA,'
      '  OPLATA1,'
      '  OPLATA2'
      'from scheta '
      'where'
      '  SCHET = :SCHET')
    ModifySQL.Strings = (
      'update scheta'
      'set'
      '  SCHET = :SCHET,'
      '  NAME = :NAME,'
      '  NDS = :NDS,'
      '  NALOG = :NALOG,'
      '  DEBIT = :DEBIT,'
      '  PREDOPLATA = :PREDOPLATA,'
      '  OPLATADOLGA = :OPLATADOLGA,'
      '  OPLATA1 = :OPLATA1,'
      '  OPLATA2 = :OPLATA2'
      'where'
      '  SCHET = :OLD_SCHET')
    InsertSQL.Strings = (
      'insert into scheta'
      
        '  (SCHET, NAME, NDS, NALOG, DEBIT, PREDOPLATA, OPLATADOLGA, OPLA' +
        'TA1, OPLATA2)'
      'values'
      
        '  (:SCHET, :NAME, :NDS, :NALOG, :DEBIT, :PREDOPLATA, :OPLATADOLG' +
        'A, :OPLATA1, '
      '   :OPLATA2)')
    DeleteSQL.Strings = (
      'delete from scheta'
      'where'
      '  SCHET = :OLD_SCHET')
    Left = 552
    Top = 136
  end
  object qryDebit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    AfterOpen = qryAfterOpen
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    BeforeOpen = qryBeforeOpen
    OnCalcFields = qryCalcFields
    CachedUpdates = True
    SQL.Strings = (
      'select docid,kind,clientid1,clientid2,param3,sum0,sum1,sum2,ost,'
      'get_doc_name(kind, skind, docno, date1, sum0) doc'
      'from doc where '
      'ost>0 and clientid1=:clientid1 and clientid2=:clientid2'
      'and kind=1'
      'order by date1')
    Left = 488
    Top = 168
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
  object srcDebit: TDataSource
    DataSet = qryDebit
    Left = 520
    Top = 168
  end
  object qrySklad: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeDelete = DataModified
    BeforeEdit = DataModified
    BeforeInsert = DataModified
    CachedUpdates = True
    SQL.Strings = (
      
        'select clientid,nodocprod,nodocprod1,nocheck,noorder,nororder,no' +
        'plat '
      'from sklad where clientid=:clientid')
    UpdateObject = updSklad
    Left = 488
    Top = 200
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
    object qrySkladNOCHECK: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1082#1072#1089#1089'.'#1095#1077#1082#1072
      FieldName = 'NOCHECK'
    end
    object qrySkladNOORDER: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1087#1088'.'#1082'.'#1086#1088#1076#1077#1088#1072
      FieldName = 'NOORDER'
    end
    object qrySkladNORORDER: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1088'.'#1082'.'#1086#1088#1076#1077#1088#1072
      FieldName = 'NORORDER'
    end
    object qrySkladNOPLAT: TIntegerField
      DisplayLabel = #1058#1077#1082'.'#1085#1086#1084'.'#1087#1083#1072#1090'.'#1087#1086#1088'.'
      FieldName = 'NOPLAT'
    end
  end
  object srcSklad: TDataSource
    DataSet = qrySklad
    Left = 520
    Top = 200
  end
  object updSklad: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CLIENTID,'
      '  HIDDEN,'
      '  DOCPARAM1,'
      '  DOCPARAM2,'
      '  DOCPARAM3,'
      '  TITLE,'
      '  CAPTION,'
      '  LOGO,'
      '  COMMENT1,'
      '  COMMENT2,'
      '  COMMENT3,'
      '  PRICE_PERCENT,'
      '  EXPORT_PERCENT,'
      '  IMPORT_ENABLE,'
      '  SHOP_ENABLE,'
      '  PRICE_ROUND,'
      '  NODOCPROD,'
      '  NODOCPROD1,'
      '  NOCHECK,'
      '  NOORDER,'
      '  NORORDER,'
      '  NOPLAT,'
      '  NOQUERY'
      'from sklad '
      'where'
      '  CLIENTID = :CLIENTID')
    ModifySQL.Strings = (
      'update sklad'
      'set'
      '  NOCHECK = :NOCHECK,'
      '  NOORDER = :NOORDER,'
      '  NORORDER = :NORORDER,'
      '  NOPLAT = :NOPLAT'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    InsertSQL.Strings = (
      'insert into sklad'
      '  (NOCHECK, NOORDER, NORORDER, NOPLAT)'
      'values'
      '  (:NOCHECK, :NOORDER, :NORORDER, :NOPLAT)')
    DeleteSQL.Strings = (
      'delete from sklad'
      'where'
      '  CLIENTID = :OLD_CLIENTID')
    Left = 552
    Top = 200
  end
end
