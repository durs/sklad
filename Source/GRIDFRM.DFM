object GridForm: TGridForm
  Left = 293
  Top = 98
  Width = 144
  Height = 223
  BorderStyle = bsSizeToolWin
  Caption = #1057#1090#1086#1083#1073#1094#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object lbFields: TCheckListBox
    Left = 0
    Top = 0
    Width = 136
    Height = 196
    OnClickCheck = lbFieldsClickCheck
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
  end
end
