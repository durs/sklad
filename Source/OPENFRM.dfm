object frmOpen: TfrmOpen
  Left = 288
  Top = 270
  ActiveControl = edtFileName
  BorderStyle = bsDialog
  Caption = #1054#1090#1082#1088#1099#1090#1100' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 194
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 180
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
  end
  object lbServer: TLabel
    Left = 128
    Top = 8
    Width = 143
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1083#1080' IP '#1072#1076#1088#1077#1089
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 58
    Height = 13
    Caption = #1055#1089#1077#1074#1076#1086#1085#1080#1084
  end
  object Label4: TLabel
    Left = 24
    Top = 8
    Width = 37
    Height = 13
    Caption = #1057#1077#1088#1074#1077#1088
  end
  object edtFileName: TEdit
    Left = 16
    Top = 72
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object btnOpen: TButton
    Left = 296
    Top = 70
    Width = 75
    Height = 25
    Caption = #1054#1073#1079#1086#1088' ...'
    TabOrder = 3
    OnClick = btnOpenClick
  end
  object edtServer: TComboBox
    Left = 120
    Top = 24
    Width = 169
    Height = 21
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = '127.0.0.1'
    Items.Strings = (
      '127.0.0.1'
      '192.168.0.1')
  end
  object edtName: TEdit
    Left = 16
    Top = 120
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object btnOk: TButton
    Left = 96
    Top = 159
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 5
  end
  object btnCancel: TButton
    Left = 224
    Top = 158
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 6
  end
  object edtServerKind: TComboBox
    Left = 16
    Top = 24
    Width = 89
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = #1051#1086#1082#1072#1083#1100#1085#1099#1081
    OnChange = edtServerKindChange
    Items.Strings = (
      #1051#1086#1082#1072#1083#1100#1085#1099#1081
      #1059#1076#1072#1083#1105#1085#1085#1099#1081)
  end
  object dlgOpen: TOpenDialog
    Filter = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' (*.gdb)|*.gdb|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 296
    Top = 24
  end
end
