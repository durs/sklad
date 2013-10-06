object ReportDebit: TReportDebit
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  BeforePrint = QuickRepBeforePrint
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE')
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Options = [LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.OutputBin = Auto
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.UseStandardprinter = False
  PrinterSettings.UseCustomBinCode = False
  PrinterSettings.CustomBinCode = 0
  PrinterSettings.ExtendedDuplex = 0
  PrinterSettings.UseCustomPaperCode = False
  PrinterSettings.CustomPaperCode = 0
  PrinterSettings.PrintMetaFile = False
  PrinterSettings.PrintQuality = 0
  PrinterSettings.Collate = 0
  PrinterSettings.ColorOption = 0
  PrintIfEmpty = True
  ReportTitle = #1044#1086#1083#1075#1080
  SnapToGrid = True
  Units = MM
  Zoom = 100
  PrevFormStyle = fsNormal
  PreviewInitialState = wsNormal
  PrevInitialZoom = qrZoomToFit
  object bandHeader: TQRBand
    Left = 38
    Top = 56
    Width = 718
    Height = 89
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      235.479166666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object imgLogo: TQRImage
      Left = 16
      Top = 2
      Width = 113
      Height = 71
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        187.854166666667000000
        42.333333333333300000
        5.291666666666670000
        298.979166666667000000)
      Center = True
      Stretch = True
    end
    object lbTitle: TQRDBText
      Left = 148
      Top = 1
      Width = 377
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666700000
        391.583333333333000000
        2.645833333333330000
        997.479166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Data.qrySklad
      DataField = 'TITLE'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 14
    end
    object lbCaption: TQRDBText
      Left = 148
      Top = 23
      Width = 377
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666700000
        391.583333333333000000
        60.854166666666700000
        997.479166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Data.qrySklad
      DataField = 'CAPTION'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRSysData1: TQRSysData
      Left = 608
      Top = 59
      Width = 34
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1608.666666666667000000
        156.104166666666700000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsTime
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      FontSize = 8
    end
    object lbDate: TQRLabel
      Left = 609
      Top = 44
      Width = 31
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1611.312500000000000000
        116.416666666666700000
        82.020833333333330000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbDate'
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object lbReportCaption: TQRLabel
      Left = 589
      Top = 1
      Width = 69
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        1558.395833333333000000
        2.645833333333333000
        182.562500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1054#1051#1043#1048
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 14
    end
    object lbKind: TQRLabel
      Left = 608
      Top = 23
      Width = 36
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1608.666666666667000000
        60.854166666666670000
        95.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbKind'
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
  end
  object bandDebit: TQRSubDetail
    Left = 38
    Top = 175
    Width = 718
    Height = 16
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandDebitBeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      42.333333333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    DataSet = qryDebit
    FooterBand = footDebit
    HeaderBand = hdrDebit
    PrintBefore = False
    PrintIfEmpty = False
    object QRShape10: TQRShape
      Left = 296
      Top = 0
      Width = 5
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        783.166666666667000000
        0.000000000000000000
        13.229166666666700000)
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape2: TQRShape
      Left = 584
      Top = 0
      Width = 5
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1545.166666666670000000
        0.000000000000000000
        13.229166666666700000)
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object lbDebitClient: TQRDBText
      Left = 5
      Top = 0
      Width = 290
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        13.229166666666700000
        0.000000000000000000
        767.291666666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDebit
      DataField = 'CLIENT'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbDebitDoc: TQRDBText
      Left = 303
      Top = 0
      Width = 280
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        801.687500000000000000
        0.000000000000000000
        740.833333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDebit
      DataField = 'DOC'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbDebit: TQRLabel
      Left = 589
      Top = 0
      Width = 125
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1558.395833333330000000
        0.000000000000000000
        330.729166666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDebit'
      Color = clWhite
      Transparent = True
      WordWrap = False
      FontSize = 10
    end
  end
  object hdrDebit: TQRChildBand
    Left = 38
    Top = 145
    Width = 718
    Height = 30
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      79.375000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    object QRLabel1: TQRLabel
      Left = 120
      Top = 6
      Width = 47
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        317.500000000000000000
        15.875000000000000000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1077#1073#1080#1090#1086#1088
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 421
      Top = 6
      Width = 63
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1113.895833333333000000
        15.875000000000000000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRShape9: TQRShape
      Left = 296
      Top = 0
      Width = 5
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375000000000000000
        783.166666666667000000
        0.000000000000000000
        13.229166666666700000)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape6: TQRShape
      Left = 584
      Top = 0
      Width = 5
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375000000000000000
        1545.166666666670000000
        0.000000000000000000
        13.229166666666700000)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRLabel3: TQRLabel
      Left = 619
      Top = 6
      Width = 76
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1637.770833333330000000
        15.875000000000000000
        201.083333333333000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  object bandCredit: TQRSubDetail
    Left = 38
    Top = 281
    Width = 718
    Height = 16
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandCreditBeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      42.333333333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    DataSet = qryCredit
    FooterBand = footCredit
    HeaderBand = CreditColumnHeaderBand
    PrintBefore = False
    PrintIfEmpty = False
    object lbCreditClient: TQRDBText
      Left = 5
      Top = 0
      Width = 290
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        13.229166666666700000
        0.000000000000000000
        767.291666666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryCredit
      DataField = 'CLIENT'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape3: TQRShape
      Left = 296
      Top = 0
      Width = 5
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        783.166666666667000000
        0.000000000000000000
        13.229166666666700000)
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object lbCreditDoc: TQRDBText
      Left = 303
      Top = 0
      Width = 280
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        801.687500000000000000
        0.000000000000000000
        740.833333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryCredit
      DataField = 'DOC'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape4: TQRShape
      Left = 584
      Top = 0
      Width = 5
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1545.166666666670000000
        0.000000000000000000
        13.229166666666700000)
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object lbCredit: TQRLabel
      Left = 589
      Top = 0
      Width = 125
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1558.395833333330000000
        0.000000000000000000
        330.729166666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbCredit'
      Color = clWhite
      Transparent = True
      WordWrap = False
      FontSize = 10
    end
  end
  object CreditColumnHeaderBand: TQRChildBand
    Left = 38
    Top = 251
    Width = 718
    Height = 30
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      79.375000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    object QRLabel4: TQRLabel
      Left = 120
      Top = 6
      Width = 54
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        317.500000000000000000
        15.875000000000000000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1088#1077#1076#1080#1090#1086#1088
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 421
      Top = 6
      Width = 63
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1113.895833333333000000
        15.875000000000000000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRShape5: TQRShape
      Left = 296
      Top = 0
      Width = 5
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375000000000000000
        783.166666666667000000
        0.000000000000000000
        13.229166666666700000)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape8: TQRShape
      Left = 584
      Top = 0
      Width = 5
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375000000000000000
        1545.166666666670000000
        0.000000000000000000
        13.229166666666700000)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRLabel8: TQRLabel
      Left = 619
      Top = 6
      Width = 76
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1637.770833333330000000
        15.875000000000000000
        201.083333333333000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  object footDebit: TQRBand
    Left = 38
    Top = 191
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = footDebitBeforePrint
    Color = clWhite
    TransparentBand = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      52.916666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRLabel6: TQRLabel
      Left = 24
      Top = 1
      Width = 41
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        63.500000000000000000
        2.645833333333333000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1048#1090#1086#1075#1086' :'
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 584
      Top = 0
      Width = 5
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666700000
        1545.166666666670000000
        0.000000000000000000
        13.229166666666700000)
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object lbDebitSum: TQRLabel
      Left = 589
      Top = 1
      Width = 125
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1558.395833333330000000
        2.645833333333330000
        330.729166666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDebitSum'
      Color = clWhite
      Transparent = True
      WordWrap = False
      FontSize = 10
    end
  end
  object bandPage: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 18
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object lbPage: TQRExpr
      Left = 210
      Top = 2
      Width = 508
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        555.625000000000000000
        5.291666666666670000
        1344.083333333330000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = #39#1044#1086#1083#1075#1080' '#1086#1090' '#39'+DATE+'#39' '#1057#1090#1088#1072#1085#1080#1094#1072' '#39'+PAGENUMBER'
      FontSize = 8
    end
  end
  object footCredit: TQRBand
    Left = 38
    Top = 297
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = footCreditBeforePrint
    Color = clWhite
    TransparentBand = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      52.916666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRLabel10: TQRLabel
      Left = 24
      Top = 1
      Width = 41
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        63.500000000000000000
        2.645833333333333000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1048#1090#1086#1075#1086' :'
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRShape7: TQRShape
      Left = 584
      Top = 0
      Width = 5
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666700000
        1545.166666666670000000
        0.000000000000000000
        13.229166666666700000)
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object lbCreditSum: TQRLabel
      Left = 589
      Top = 1
      Width = 125
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1558.395833333330000000
        2.645833333333330000
        330.729166666667000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbCreditSum'
      Color = clWhite
      Transparent = True
      WordWrap = False
      FontSize = 10
    end
  end
  object bandSummary: TQRChildBand
    Left = 38
    Top = 317
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = bandSummaryBeforePrint
    Color = clWhite
    TransparentBand = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = footCredit
    object QRLabel13: TQRLabel
      Left = 24
      Top = 12
      Width = 41
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        63.500000000000000000
        31.750000000000000000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1089#1077#1075#1086' :'
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object lbSum: TQRLabel
      Left = 590
      Top = 12
      Width = 124
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333300000
        1561.041666666670000000
        31.750000000000000000
        328.083333333333000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbSum'
      Color = clWhite
      Transparent = True
      WordWrap = False
      FontSize = 10
    end
  end
  object hdrCredit: TQRChildBand
    Left = 38
    Top = 211
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = hdrCreditBeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = footDebit
    object lbCreditCaption: TQRLabel
      Left = 268
      Top = 8
      Width = 136
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        709.083333333333300000
        21.166666666666670000
        359.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1040#1064#1048' '#1044#1054#1051#1043#1048
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 14
    end
  end
  object qryDebit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryDebitSummaryBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      'select '
      
        'get_doc_name(qry.kind, qry.skind, qry.docno, qry.date1, qry.sum0' +
        ') doc,'
      'get_full_name(client.fullname, client.name) client,'
      'qry.ost'
      'from query_debit(:clientid, :kind) qry'
      'left join client on client.clientid=qry.clientid'
      'where qry.ost>0'
      'order by client.name, qry.date1')
    Left = 12
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'clientid'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'kind'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object qryCredit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryDebitSummaryBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      'select '
      
        'get_doc_name(qry.kind, qry.skind, qry.docno, qry.date1, qry.sum0' +
        ') doc,'
      'get_full_name(client.fullname, client.name) client,'
      'qry.ost'
      'from query_debit(:clientid, :kind) qry'
      'left join client on client.clientid=qry.clientid'
      'where qry.ost<0'
      'order by client.name, qry.date1'
      '')
    Left = 44
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kind'
        ParamType = ptUnknown
      end>
  end
  object qryDebitSummary: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryDebitSummaryBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      'select '
      'get_full_name(min(client.fullname), min(client.name)) client,'
      'sum(qry.ost) ost'
      'from query_debit(:clientid, :kind) qry'
      'left join client on client.clientid=qry.clientid'
      'where qry.ost>0'
      'group by client.clientid'
      'order by 1')
    Left = 11
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kind'
        ParamType = ptUnknown
      end>
  end
  object qryCreditSummary: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryDebitSummaryBeforeOpen
    CachedUpdates = True
    SQL.Strings = (
      'select '
      'get_full_name(min(client.fullname), min(client.name)) client,'
      'sum(qry.ost) ost'
      'from query_debit(:clientid, :kind) qry'
      'left join client on client.clientid=qry.clientid'
      'where qry.ost<0'
      'group by client.clientid'
      'order by 1')
    Left = 43
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kind'
        ParamType = ptUnknown
      end>
  end
end
