object frmPassword: TfrmPassword
  Left = 401
  Top = 332
  BorderStyle = bsDialog
  Caption = #1047#1072#1097#1080#1090#1072
  ClientHeight = 138
  ClientWidth = 275
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
    Top = 56
    Width = 81
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
  end
  object lbCaption: TLabel
    Left = 16
    Top = 16
    Width = 54
    Height = 13
    Caption = 'lbCaption'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtPassword: TEdit
    Left = 136
    Top = 53
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 96
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 184
    Top = 96
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
