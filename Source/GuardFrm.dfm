object frmGuard: TfrmGuard
  Left = 384
  Top = 91
  BorderStyle = bsDialog
  Caption = #1047#1072#1097#1080#1090#1072
  ClientHeight = 183
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 48
    Width = 142
    Height = 13
    Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1089' '#1076#1072#1090#1086#1081' '#1089#1090#1072#1088#1077#1077
  end
  object Label2: TLabel
    Left = 296
    Top = 48
    Width = 24
    Height = 13
    Caption = #1076#1085#1077#1081
  end
  object Label3: TLabel
    Left = 14
    Top = 112
    Width = 169
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100' '#1076#1083#1103' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
  end
  object Label4: TLabel
    Left = 16
    Top = 16
    Width = 204
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1079#1072#1097#1080#1090#1091' '#1086#1090' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDocIntrvl: TComboBox
    Left = 192
    Top = 45
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'edtDocIntrvl'
    Items.Strings = (
      '<'#1053#1077#1090'>'
      '7'
      '30'
      '60'
      '90'
      '180'
      '360')
  end
  object edtDocPswd: TEdit
    Left = 192
    Top = 109
    Width = 129
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    Text = 'edtDocPswd'
    OnChange = edtDocPswdChange
  end
  object btnOk: TButton
    Left = 160
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    TabOrder = 3
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
  end
  object btnOstatok: TCheckBox
    Left = 99
    Top = 72
    Width = 106
    Height = 17
    Alignment = taLeftJustify
    Caption = #1054#1089#1090#1072#1090#1082#1072' '#1090#1086#1074#1072#1088#1072
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
end
