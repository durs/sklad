object OptionsForm: TOptionsForm
  Left = 253
  Top = 154
  ActiveControl = Inspector
  BorderStyle = bsSizeToolWin
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
  ClientHeight = 326
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 388
    Top = 0
    Width = 107
    Height = 326
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object btnSave: TButton
      Left = 13
      Top = 112
      Width = 85
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 2
      OnClick = SaveData
    end
    object btnRestore: TButton
      Left = 13
      Top = 144
      Width = 85
      Height = 25
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 3
      OnClick = LoadData
    end
    object btnOk: TButton
      Left = 12
      Top = 16
      Width = 85
      Height = 25
      Caption = 'Ok'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 13
      Top = 48
      Width = 85
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
    object btnEdit: TButton
      Left = 13
      Top = 176
      Width = 85
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088
      TabOrder = 4
      Visible = False
      OnClick = EditData
    end
  end
  object Inspector: TwwDataInspector
    Left = 0
    Top = 0
    Width = 388
    Height = 326
    DisableThemes = False
    Align = alClient
    TabOrder = 1
    Items = <
      item
        Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
        ReadOnly = True
        Expanded = True
        Items = <
          item
            Caption = #1041#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
            CellHeight = 48
            CustomControl = edtMemo
            CustomControlAlwaysPaints = False
            Resizeable = True
            Tag = 1
            TagString = 'databases'
            WordWrap = False
          end
          item
            Caption = #1053#1086#1084#1077#1088' '#1090#1077#1082#1091#1097#1077#1081' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
            TagString = 'databaseindex'
            WordWrap = False
          end
          item
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            TagString = 'username'
            WordWrap = False
          end
          item
            Caption = #1056#1086#1083#1100
            TagString = 'role'
            WordWrap = False
          end
          item
            Caption = #1055#1072#1088#1086#1083#1100
            TagString = 'password'
            WordWrap = False
          end
          item
            Caption = #1047#1072#1087#1088#1086#1089' '#1087#1072#1088#1086#1083#1103' '#1087#1088#1080' '#1074#1093#1086#1076#1077
            PickList.Items.Strings = (
              '1'
              '0')
            PickList.DisplayAsCheckbox = True
            TagString = 'loginprompt'
            WordWrap = True
          end
          item
            Caption = #1050#1086#1076' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1082#1083#1080#1077#1085#1090#1072
            TagString = 'clientid'
            WordWrap = False
          end>
        TagString = 'general'
        WordWrap = True
      end
      item
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        ReadOnly = True
        Items = <
          item
            Caption = #1064#1072#1073#1083#1086#1085' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
            TagString = 'dbtemplate'
            WordWrap = False
          end
          item
            Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1086#1074
            PickList.Items.Strings = (
              '1'
              '0')
            PickList.DisplayAsCheckbox = True
            TagString = 'preview'
            WordWrap = True
          end
          item
            Caption = #1042#1088#1077#1084#1103' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1092#1086#1088#1084' '#1074' '#1082#1077#1096#1077
            TagString = 'destroytimeout'
            WordWrap = True
          end
          item
            Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1077' '#1092#1091#1085#1082#1094#1080#1080
            PickList.Items.Strings = (
              '1'
              '0')
            PickList.DisplayAsCheckbox = True
            TagString = 'extended'
            WordWrap = False
          end
          item
            Caption = #1052#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077' IB Console'
            TagString = 'ibconsole'
            WordWrap = False
          end
          item
            Caption = #1057#1090#1072#1088#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1081
            PickList.Items.Strings = (
              '1'
              '0')
            PickList.DisplayAsCheckbox = True
            TagString = 'transold'
            WordWrap = False
          end
          item
            Caption = #1050#1101#1096#1080#1088#1086#1074#1072#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            PickList.Items.Strings = (
              '1'
              '0')
            PickList.DisplayAsCheckbox = True
            Visible = False
            TagString = 'cachedupdates'
            WordWrap = False
          end>
        TagString = 'options'
        WordWrap = True
      end
      item
        Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
        ReadOnly = True
        Items = <
          item
            Caption = #1054#1073#1086#1080
            PickList.ButtonStyle = cbsEllipsis
            TagString = 'wallpaper'
            WordWrap = True
            OnEditButtonClick = getPictureName
          end
          item
            Caption = #1055#1072#1085#1077#1083#1100' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
            Items = <
              item
                Caption = #1053#1072' '#1101#1082#1088#1072#1085#1077
                PickList.Items.Strings = (
                  '1'
                  '0')
                PickList.DisplayAsCheckbox = True
                TagString = 'visible'
                WordWrap = True
              end
              item
                Caption = #1060#1086#1085#1086#1074#1086#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
                Expanded = True
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'wallpaper'
                WordWrap = True
                OnEditButtonClick = getPictureName
              end>
            TagString = 'leftbar'
            WordWrap = True
          end
          item
            Caption = #1055#1072#1085#1077#1083#1100' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
            Items = <
              item
                Caption = #1060#1086#1085#1086#1074#1086#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'wallpaper'
                WordWrap = True
                OnEditButtonClick = getPictureName
              end>
            TagString = 'toolbar'
            WordWrap = True
          end
          item
            Caption = #1060#1086#1088#1084#1072#1090#1099
            Items = <
              item
                Caption = #1063#1080#1089#1083#1072
                TagString = 'num'
                WordWrap = True
              end
              item
                Caption = #1062#1077#1083#1099#1077' '#1095#1080#1089#1083#1072
                TagString = 'int'
                WordWrap = True
              end
              item
                Caption = #1044#1077#1085#1100#1075#1080
                TagString = 'cur'
                WordWrap = True
              end
              item
                Caption = #1055#1088#1086#1094#1077#1085#1090#1099
                TagString = 'per'
                WordWrap = True
              end>
            TagString = 'format'
            WordWrap = True
          end
          item
            Caption = #1055#1072#1083#1080#1090#1088#1072
            Items = <
              item
                Caption = #1042#1099#1076#1077#1083#1103#1090#1100' '#1094#1074#1077#1090#1086#1084
                PickList.Items.Strings = (
                  '1'
                  '0')
                PickList.DisplayAsCheckbox = True
                TagString = 'use'
                WordWrap = False
              end
              item
                Caption = 'Name color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'name'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Count color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'count'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Price color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'price'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Sum color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'sum'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Client color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'client'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Date color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'date'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Number color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'no'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Rezerve color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'rezerv'
                WordWrap = False
                OnEditButtonClick = getColor
              end
              item
                Caption = 'Archiv color'
                PickList.ButtonStyle = cbsEllipsis
                TagString = 'archiv'
                WordWrap = False
                OnEditButtonClick = getColor
              end>
            TagString = 'colors'
            WordWrap = True
          end
          item
            Caption = #1055#1086#1083#1085#1086#1090#1077#1082#1089#1090#1086#1074#1072#1103' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103
            EditText = '1'
            PickList.Items.Strings = (
              '1'
              '0')
            PickList.DisplayAsCheckbox = True
            TagString = 'fullsearch'
            WordWrap = False
          end>
        TagString = 'view'
        WordWrap = True
      end
      item
        Caption = #1060#1086#1088#1084#1099
        ReadOnly = True
        TagString = 'forms'
        WordWrap = True
      end>
    CaptionWidth = 192
    Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    OnAfterSelectCell = InspectorAfterSelectCell
    ExplicitLeft = 6
    object edtMemo: TwwDBRichEdit
      Left = 192
      Top = 16
      Width = 200
      Height = 15
      TabStop = False
      ScrollBars = ssVertical
      AutoURLDetect = False
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      PrintJobName = 'Delphi 5'
      TabOrder = 0
      Visible = False
      WantTabs = True
      WordWrap = False
      OnEnter = edtMemoEnter
      EditorCaption = 'Edit Rich Text'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muInches
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      PrintHeader.VertMargin = 0.500000000000000000
      PrintHeader.Font.Charset = DEFAULT_CHARSET
      PrintHeader.Font.Color = clWindowText
      PrintHeader.Font.Height = -11
      PrintHeader.Font.Name = 'Tahoma'
      PrintHeader.Font.Style = []
      PrintFooter.VertMargin = 0.500000000000000000
      PrintFooter.Font.Charset = DEFAULT_CHARSET
      PrintFooter.Font.Color = clWindowText
      PrintFooter.Font.Height = -11
      PrintFooter.Font.Name = 'Tahoma'
      PrintFooter.Font.Style = []
      RichEditVersion = 2
      Data = {
        640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
        66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
        696E64345C7563315C706172645C6C616E67313034395C66305C667331365C70
        61720D0A7D0D0A00}
    end
  end
end
