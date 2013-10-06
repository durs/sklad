object PreviewForm: TPreviewForm
  Left = 379
  Top = 143
  Width = 507
  Height = 506
  Caption = 'PreviewForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QRPreview: TQRPreview
    Left = 0
    Top = 23
    Width = 499
    Height = 456
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 0
    PageNumber = 1
    Zoom = 100
  end
  object barTool: TToolBar
    Left = 0
    Top = 0
    Width = 499
    Height = 23
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 112
    Caption = 'barTool'
    Flat = True
    ShowCaptions = True
    TabOrder = 1
    object btnPrint: TToolButton
      Left = 0
      Top = 0
      Caption = 'Печать'
      ImageIndex = 0
      OnClick = btnPrintClick
    end
    object btnPrinter: TToolButton
      Left = 112
      Top = 0
      Caption = 'Настройка принтера'
      ImageIndex = 1
      OnClick = btnPrinterClick
    end
    object edtZoom: TComboBox
      Left = 224
      Top = 0
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'edtZoom'
      Items.Strings = (
        '10 %'
        '25 %'
        '50 %'
        '75 %'
        '100 %'
        '150 %'
        '200 %')
    end
  end
end
