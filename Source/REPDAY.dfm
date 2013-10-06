object ReportDay: TReportDay
  Left = -220
  Top = -520
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  BeforePrint = ReportDayBeforePrint
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
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Values = (
    100
    2970
    100
    2100
    100
    100
    0)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  ReportTitle = #1054#1090#1095#1077#1090' '#1079#1072' '#1076#1077#1085#1100
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object bandTitle: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      325.4375
      1899.70833333333)
    BandType = rbTitle
    object QRLabel1: TQRLabel
      Left = 202
      Top = 90
      Width = 313
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        534.458333333333
        238.125
        828.145833333333)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1089' '#1085#1072#1088#1072#1089#1090#1072#1102#1097#1080#1084' '#1080#1090#1086#1075#1086#1084
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
        187.854166666667
        42.3333333333333
        5.29166666666667
        298.979166666667)
      Center = True
      Stretch = True
    end
    object lbTitle: TQRDBText
      Left = 148
      Top = 1
      Width = 401
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        391.583333333333
        2.64583333333333
        1060.97916666667)
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
      Width = 401
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.0416666666667
        391.583333333333
        60.8541666666667
        1060.97916666667)
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
      Top = 39
      Width = 35
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1608.66666666667
        103.1875
        92.6041666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsTime
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      FontSize = 10
    end
    object lbDate: TQRLabel
      Left = 609
      Top = 24
      Width = 31
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1611.3125
        63.5
        82.0208333333333)
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
    object QRLabel3: TQRLabel
      Left = 553
      Top = 1
      Width = 155
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1463.14583333333
        2.64583333333333
        410.104166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1058#1063#1025#1058' '#1047#1040' '#1044#1045#1053#1068
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
  object hdrDoc: TQRChildBand
    Left = 38
    Top = 161
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = hdrDocBeforePrint
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    ParentBand = bandTitle
    object QRLabel12: TQRLabel
      Left = 143
      Top = 11
      Width = 76
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        378.354166666667
        29.1041666666667
        201.083333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1086#1074#1072#1088#1086#1086#1073#1086#1088#1086#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 450
      Top = 11
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1190.625
        29.1041666666667
        129.645833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1094#1077#1085#1082#1072
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape17: TQRShape
      Left = 129
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        341.3125
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape19: TQRShape
      Left = 520
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        1375.83333333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbInSumCaption: TQRLabel
      Left = 237
      Top = 4
      Width = 87
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        627.0625
        10.5833333333333
        230.1875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInSumCaption'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel33: TQRLabel
      Left = 538
      Top = 4
      Width = 63
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.9583333333333
        1423.45833333333
        10.5833333333333
        166.6875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1044#1057' '#1087#1088#1086#1076#1072#1078#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape29: TQRShape
      Left = 224
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        592.666666666667
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape30: TQRShape
      Left = 328
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        867.833333333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape20: TQRShape
      Left = 610
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        1613.95833333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel14: TQRLabel
      Left = 618
      Top = 4
      Width = 96
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375
        1635.125
        10.5833333333333
        254)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1072#1083#1086#1075' '#1089' '#1087#1088#1086#1076#1072#1078' '#1087#1086' '#1087#1083#1072#1085#1091
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel32: TQRLabel
      Left = 346
      Top = 5
      Width = 63
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375
        915.458333333333
        13.2291666666667
        166.6875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1044#1057' '#1087#1086#1082#1091#1087#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape35: TQRShape
      Left = 416
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        1100.66666666667
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
  end
  object hdrKassa: TQRChildBand
    Left = 38
    Top = 375
    Width = 718
    Height = 30
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      79.375
      1899.70833333333)
    ParentBand = footInnerDoc
    object QRLabel6: TQRLabel
      Left = 94
      Top = 6
      Width = 42
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        248.708333333333
        15.875
        111.125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1080#1093#1086#1076
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape27: TQRShape
      Left = 224
      Top = 0
      Width = 10
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375
        592.666666666667
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel26: TQRLabel
      Left = 330
      Top = 7
      Width = 40
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        873.125
        18.5208333333333
        105.833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1089#1093#1086#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape24: TQRShape
      Left = 472
      Top = 0
      Width = 10
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375
        1248.83333333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel31: TQRLabel
      Left = 583
      Top = 6
      Width = 34
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1542.52083333333
        15.875
        89.9583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1048#1090#1086#1075#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object footDoc: TQRBand
    Left = 38
    Top = 228
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    BandType = rbGroupFooter
    object QRLabel9: TQRLabel
      Left = 171
      Top = 14
      Width = 376
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        452.4375
        37.0416666666667
        994.833333333333)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1087#1086' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1084#1091' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1102
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
  object hdrDebit: TQRChildBand
    Left = 38
    Top = 508
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    ParentBand = footCredit
    object QRLabel21: TQRLabel
      Left = 298
      Top = 11
      Width = 122
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        788.458333333333
        29.1041666666667
        322.791666666667)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1087#1083#1072#1090#1072' '#1076#1086#1083#1075#1072
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
  object footCredit: TQRBand
    Left = 38
    Top = 488
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object lbCreditSum: TQRExpr
      Left = 581
      Top = 1
      Width = 136
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1537.22916666667
        2.64583333333333
        359.833333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      Master = bandCredit
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(qryCredit.DOCSUM)'
      FontSize = 10
    end
  end
  object footDebit: TQRBand
    Left = 38
    Top = 568
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object lbDebitSum: TQRExpr
      Left = 584
      Top = 1
      Width = 133
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1545.16666666667
        2.64583333333333
        351.895833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      Master = bandDebit
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(qryDebit.DOCSUM)'
      FontSize = 10
    end
  end
  object hdrDebitDoc: TQRChildBand
    Left = 38
    Top = 588
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    ParentBand = footDebit
    object QRLabel20: TQRLabel
      Left = 331
      Top = 12
      Width = 55
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        875.770833333333
        31.75
        145.520833333333)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1083#1075#1080
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
  object footDebitDoc: TQRBand
    Left = 38
    Top = 648
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object lbDebitDocSum: TQRExpr
      Left = 583
      Top = 1
      Width = 133
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1542.52083333333
        2.64583333333333
        351.895833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      Master = bandDebitDoc
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(qryDebitDoc.DEBITSUM + qryDebitDoc.CREDITSUM)'
      FontSize = 10
    end
  end
  object hdrBeznal: TQRChildBand
    Left = 38
    Top = 668
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    ParentBand = footDebitDoc
    object QRLabel25: TQRLabel
      Left = 266
      Top = 8
      Width = 185
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        703.791666666667
        21.1666666666667
        489.479166666667)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1041#1077#1079#1085#1072#1083#1080#1095#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
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
  object hdrCredit: TQRChildBand
    Left = 38
    Top = 438
    Width = 718
    Height = 30
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      79.375
      1899.70833333333)
    ParentBand = footKassa
    object QRLabel10: TQRLabel
      Left = 306
      Top = 2
      Width = 105
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        809.625
        5.29166666666667
        277.8125)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1077#1076#1086#1087#1083#1072#1090#1072
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
  object footKassa: TQRBand
    Left = 38
    Top = 425
    Width = 718
    Height = 13
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      34.3958333333333
      1899.70833333333)
    BandType = rbGroupFooter
  end
  object bandDoc: TQRSubDetail
    Left = 38
    Top = 201
    Width = 718
    Height = 27
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandDocBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      71.4375
      1899.70833333333)
    Master = Owner
    DataSet = qryDoc
    FooterBand = footDoc
    HeaderBand = hdrDoc
    PrintBefore = False
    PrintIfEmpty = True
    object lbOutSum: TQRDBText
      Left = 136
      Top = 5
      Width = 91
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        359.833333333333
        13.2291666666667
        240.770833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDoc
      DataField = 'OUT_SUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape18: TQRShape
      Left = 129
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        341.3125
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape21: TQRShape
      Left = 520
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1375.83333333333
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape33: TQRShape
      Left = 224
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        592.666666666667
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape34: TQRShape
      Left = 328
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        867.833333333333
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbOutNdsSum: TQRDBText
      Left = 528
      Top = 5
      Width = 85
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1397
        13.2291666666667
        224.895833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDoc
      DataField = 'OUT_NDS'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape22: TQRShape
      Left = 610
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1613.95833333333
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbNalogSum: TQRDBText
      Left = 617
      Top = 5
      Width = 98
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1632.47916666667
        13.2291666666667
        259.291666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDoc
      DataField = 'NALOG'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape36: TQRShape
      Left = 416
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1100.66666666667
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbQueryCaption: TQRLabel
      Left = 8
      Top = 5
      Width = 88
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        21.1666666666667
        13.2291666666667
        232.833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbQueryCaption'
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      OnPrint = lbQueryCaptionPrint
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lbInSum: TQRLabel
      Left = 230
      Top = 5
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        608.541666666667
        13.2291666666667
        272.520833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInSum'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lbInNdsSum: TQRLabel
      Left = 334
      Top = 5
      Width = 87
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        883.708333333333
        13.2291666666667
        230.1875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInNdsSum'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lbOstSum: TQRLabel
      Left = 422
      Top = 5
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1116.54166666667
        13.2291666666667
        272.520833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstSum'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object bandInnerDoc: TQRSubDetail
    Left = 38
    Top = 308
    Width = 718
    Height = 27
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandDocBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      71.4375
      1899.70833333333)
    Master = Owner
    DataSet = qryInnerDoc
    FooterBand = footInnerDoc
    HeaderBand = hdrInnerDoc
    PrintBefore = False
    PrintIfEmpty = True
    object lbOutSum2: TQRDBText
      Left = 136
      Top = 5
      Width = 91
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        359.833333333333
        13.2291666666667
        240.770833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInnerDoc
      DataField = 'OUT_SUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 129
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        341.3125
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape2: TQRShape
      Left = 520
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1375.83333333333
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape5: TQRShape
      Left = 224
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        592.666666666667
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape6: TQRShape
      Left = 328
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        867.833333333333
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbOutNdsSum2: TQRDBText
      Left = 528
      Top = 5
      Width = 85
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1397
        13.2291666666667
        224.895833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInnerDoc
      DataField = 'OUT_NDS'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape13: TQRShape
      Left = 610
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1613.95833333333
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbNalogSum2: TQRDBText
      Left = 617
      Top = 5
      Width = 98
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1632.47916666667
        13.2291666666667
        259.291666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInnerDoc
      DataField = 'NALOG'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape14: TQRShape
      Left = 416
      Top = -1
      Width = 10
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1100.66666666667
        -2.64583333333333
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbQueryCaption2: TQRLabel
      Left = 8
      Top = 5
      Width = 95
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        21.1666666666667
        13.2291666666667
        251.354166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbQueryCaption2'
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      OnPrint = lbQueryCaptionPrint
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lbInSum2: TQRLabel
      Left = 230
      Top = 5
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        608.541666666667
        13.2291666666667
        272.520833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInSum2'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lbInNdsSum2: TQRLabel
      Left = 334
      Top = 5
      Width = 87
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        883.708333333333
        13.2291666666667
        230.1875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInNdsSum2'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lbOstSum2: TQRLabel
      Left = 422
      Top = 5
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1116.54166666667
        13.2291666666667
        272.520833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstSum2'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object bandKassa: TQRSubDetail
    Left = 38
    Top = 405
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandKassaBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    Master = Owner
    DataSet = qryKassaIn
    FooterBand = footKassa
    HeaderBand = hdrKassa
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape9: TQRShape
      Left = 224
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        592.666666666667
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape10: TQRShape
      Left = 472
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1248.83333333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbKassaInSum: TQRDBText
      Left = 92
      Top = 1
      Width = 42
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        243.416666666667
        2.64583333333333
        111.125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qryKassaIn
      DataField = 'INSUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbKassaOutSum: TQRDBText
      Left = 316
      Top = 1
      Width = 55
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        836.083333333333
        2.64583333333333
        145.520833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = qryKassaOut
      DataField = 'OUTSUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbKassaSum: TQRLabel
      Left = 566
      Top = 1
      Width = 67
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1497.54166666667
        2.64583333333333
        177.270833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbKassaSum'
      Color = clWhite
      OnPrint = lbQueryCaptionPrint
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object bandCredit: TQRSubDetail
    Left = 38
    Top = 468
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    Master = Owner
    DataSet = qryCredit
    FooterBand = footCredit
    HeaderBand = hdrCredit
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape11: TQRShape
      Left = 292
      Top = 0
      Width = 10
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        772.583333333333
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRShape12: TQRShape
      Left = 578
      Top = 0
      Width = 10
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        1529.29166666667
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object lbDocCreditSum: TQRDBText
      Left = 588
      Top = 1
      Width = 127
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1555.75
        2.64583333333333
        336.020833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryCredit
      DataField = 'DOCSUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 5
      Top = 1
      Width = 290
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        13.2291666666667
        2.64583333333333
        767.291666666667)
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
    object QRDBText2: TQRDBText
      Left = 302
      Top = 1
      Width = 278
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        799.041666666667
        2.64583333333333
        735.541666666667)
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
  end
  object bandDebit: TQRSubDetail
    Left = 38
    Top = 548
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    Master = Owner
    DataSet = qryDebit
    FooterBand = footDebit
    HeaderBand = hdrDebit
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape3: TQRShape
      Left = 292
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        772.583333333333
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRShape4: TQRShape
      Left = 578
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1529.29166666667
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRDBText3: TQRDBText
      Left = 5
      Top = 1
      Width = 290
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        13.2291666666667
        2.64583333333333
        767.291666666667)
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
    object QRDBText4: TQRDBText
      Left = 302
      Top = 1
      Width = 278
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        799.041666666667
        2.64583333333333
        735.541666666667)
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
    object lbDocDebitSum: TQRDBText
      Left = 588
      Top = 1
      Width = 127
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1555.75
        2.64583333333333
        336.020833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDebit
      DataField = 'DOCSUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
  end
  object bandDebitDoc: TQRSubDetail
    Left = 38
    Top = 628
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    Master = Owner
    DataSet = qryDebitDoc
    FooterBand = footDebitDoc
    HeaderBand = hdrDebitDoc
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape7: TQRShape
      Left = 292
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        772.583333333333
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRShape8: TQRShape
      Left = 578
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1529.29166666667
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRDBText5: TQRDBText
      Left = 5
      Top = 1
      Width = 292
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        13.2291666666667
        2.64583333333333
        772.583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDebitDoc
      DataField = 'CLIENT'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 302
      Top = 1
      Width = 278
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        799.041666666667
        2.64583333333333
        735.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryDebitDoc
      DataField = 'DOC'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbDocDebitDocSum: TQRExpr
      Left = 588
      Top = 1
      Width = 126
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1555.75
        2.64583333333333
        333.375)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'qryDebitDoc.DEBITSUM + qryDebitDoc.CREDITSUM'
      FontSize = 10
    end
  end
  object bandBeznal: TQRSubDetail
    Left = 38
    Top = 708
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    Master = Owner
    DataSet = qryBeznal
    FooterBand = footBeznal
    HeaderBand = hdrBeznal
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape15: TQRShape
      Left = 292
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        772.583333333333
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRShape16: TQRShape
      Left = 578
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1529.29166666667
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRDBText7: TQRDBText
      Left = 5
      Top = 1
      Width = 290
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        13.2291666666667
        2.64583333333333
        767.291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryBeznal
      DataField = 'CLIENT'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 302
      Top = 1
      Width = 278
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        799.041666666667
        2.64583333333333
        735.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryBeznal
      DataField = 'DOC'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbDocBeznalSum: TQRDBText
      Left = 588
      Top = 1
      Width = 127
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1555.75
        2.64583333333333
        336.020833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryBeznal
      DataField = 'DOCSUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
  end
  object footBeznal: TQRBand
    Left = 38
    Top = 728
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object lbBeznalSum: TQRExpr
      Left = 585
      Top = 1
      Width = 131
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1547.8125
        2.64583333333333
        346.604166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      Master = bandBeznal
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(qryBeznal.DOCSUM)'
      FontSize = 10
    end
  end
  object hdrInnerDoc: TQRChildBand
    Left = 38
    Top = 268
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = hdrDocBeforePrint
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    ParentBand = footDoc
    object QRLabel8: TQRLabel
      Left = 143
      Top = 11
      Width = 76
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        378.354166666667
        29.1041666666667
        201.083333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1086#1074#1072#1088#1086#1086#1073#1086#1088#1086#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 450
      Top = 11
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1190.625
        29.1041666666667
        129.645833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1094#1077#1085#1082#1072
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRShape23: TQRShape
      Left = 129
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        341.3125
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape25: TQRShape
      Left = 520
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        1375.83333333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbInSumCaption2: TQRLabel
      Left = 237
      Top = 4
      Width = 87
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        627.0625
        10.5833333333333
        230.1875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInSumCaption2'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel16: TQRLabel
      Left = 538
      Top = 4
      Width = 63
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.9583333333333
        1423.45833333333
        10.5833333333333
        166.6875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1044#1057' '#1087#1088#1086#1076#1072#1078#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape26: TQRShape
      Left = 224
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        592.666666666667
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape28: TQRShape
      Left = 328
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        867.833333333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape31: TQRShape
      Left = 610
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        1613.95833333333
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel17: TQRLabel
      Left = 618
      Top = 4
      Width = 96
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375
        1635.125
        10.5833333333333
        254)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1072#1083#1086#1075' '#1089' '#1087#1088#1086#1076#1072#1078' '#1087#1086' '#1087#1083#1072#1085#1091
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel18: TQRLabel
      Left = 346
      Top = 5
      Width = 63
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375
        915.458333333333
        13.2291666666667
        166.6875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1044#1057' '#1087#1086#1082#1091#1087#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape32: TQRShape
      Left = 416
      Top = 0
      Width = 10
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        105.833333333333
        1100.66666666667
        0
        26.4583333333333)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
  end
  object footInnerDoc: TQRBand
    Left = 38
    Top = 335
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    BandType = rbGroupFooter
    object QRLabel19: TQRLabel
      Left = 255
      Top = 14
      Width = 208
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        674.6875
        37.0416666666667
        550.333333333333)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1072#1089#1089#1072' ('#1086#1087#1083#1072#1090#1072' '#1079#1072' '#1090#1086#1074#1072#1088')'
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
  object hdrInner: TQRChildBand
    Left = 38
    Top = 748
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    ParentBand = footDebitDoc
    object QRLabel2: TQRLabel
      Left = 247
      Top = 8
      Width = 223
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        653.520833333333
        21.1666666666667
        590.020833333333)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1077#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
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
  object bandInner: TQRSubDetail
    Left = 38
    Top = 788
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    Master = Owner
    DataSet = qryInner
    FooterBand = footInner
    HeaderBand = hdrInner
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape37: TQRShape
      Left = 292
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        772.583333333333
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRShape38: TQRShape
      Left = 578
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1529.29166666667
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRDBText9: TQRDBText
      Left = 5
      Top = 1
      Width = 290
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        13.2291666666667
        2.64583333333333
        767.291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'CLIENT'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 302
      Top = 1
      Width = 278
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        799.041666666667
        2.64583333333333
        735.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'DOC'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbDocInnerSum: TQRDBText
      Left = 588
      Top = 1
      Width = 127
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1555.75
        2.64583333333333
        336.020833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'DOCSUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
  end
  object footInner: TQRBand
    Left = 38
    Top = 808
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object lbInnerSum: TQRExpr
      Left = 585
      Top = 1
      Width = 131
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1547.8125
        2.64583333333333
        346.604166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      Master = bandInner
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(qryInner.DOCSUM)'
      FontSize = 10
    end
  end
  object hdrTransport: TQRChildBand
    Left = 38
    Top = 828
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333
      1899.70833333333)
    ParentBand = footDebitDoc
    object lbTransport: TQRLabel
      Left = 263
      Top = 8
      Width = 192
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        695.854166666667
        21.1666666666667
        508)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1077' '#1091#1089#1083#1091#1075#1080
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
  object bandTransport: TQRSubDetail
    Left = 38
    Top = 868
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = bandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    Master = Owner
    DataSet = qryTransport
    FooterBand = footTransport
    HeaderBand = hdrTransport
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape39: TQRShape
      Left = 292
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        772.583333333333
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRShape40: TQRShape
      Left = 578
      Top = 0
      Width = 10
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1529.29166666667
        0
        26.4583333333333)
      Shape = qrsVertLine
    end
    object QRDBText11: TQRDBText
      Left = 5
      Top = 1
      Width = 290
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        13.2291666666667
        2.64583333333333
        767.291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryTransport
      DataField = 'CLIENT'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 302
      Top = 1
      Width = 278
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        799.041666666667
        2.64583333333333
        735.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryTransport
      DataField = 'DOC'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
    object lbDocTransportSum: TQRDBText
      Left = 588
      Top = 1
      Width = 127
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1555.75
        2.64583333333333
        336.020833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryTransport
      DataField = 'DOCSUM'
      Transparent = False
      WordWrap = False
      FontSize = 10
    end
  end
  object footTransport: TQRBand
    Left = 38
    Top = 888
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.9166666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object lbTransportSum: TQRExpr
      Left = 585
      Top = 1
      Width = 131
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1547.8125
        2.64583333333333
        346.604166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      Master = bandTransport
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'sum(qryTransport.DOCSUM)'
      FontSize = 10
    end
  end
  object qryDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select in_sum, in_nds, out_sum, out_nds, nalog'
      
        'from query_doc_sum( :clientid, null, :last_date, :month_date, :y' +
        'ear_date)'
      ' ')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end
      item
        DataType = ftDate
        Name = 'month_date'
        ParamType = ptUnknown
        Value = 36251d
      end
      item
        DataType = ftDate
        Name = 'year_date'
        ParamType = ptUnknown
        Value = 36161d
      end>
  end
  object qryKassaIn: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select -sum(sum0) insum from doc '
      'where clientid1 = :clientid and date1 = :last_date '
      'and kind = 2 and skind = 2 '
      'and sum0 < 0'
      '/*only with product*/ and pdocid is not null')
    Left = 48
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
  object qryCredit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select doc.docid, -doc.sum0 docsum,'
      
        'get_doc_name(doc.kind, doc.skind, doc.docno, doc.date1, doc.sum0' +
        ') doc,'
      'get_full_name(client.fullname, client.name) client'
      'from doc'
      'left join client on client.clientid=doc.clientid2'
      'left join scheta on scheta.schet=doc.param6'
      
        'where doc.clientid1=:clientid and doc.date1=:last_date and doc.k' +
        'ind=2 '
      'and scheta.predoplata=1'
      'order by doc.docno')
    Left = 88
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
  object qryKassaOut: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(sum0) outsum from doc '
      'where clientid1 = :clientid and date1 = :last_date '
      'and kind = 2 and skind = 2 '
      'and sum0 > 0'
      '/*only with product*/ and pdocid is not null')
    Left = 48
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
  object qryDebit: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select doc.docid, -doc.sum0 docsum,'
      
        'get_doc_name(doc.kind, doc.skind, doc.docno, doc.date1, doc.sum0' +
        ') doc,'
      'get_full_name(client.fullname, client.name) client'
      'from doc'
      'left join client on client.clientid=doc.clientid2'
      'left join scheta on scheta.schet=doc.param6'
      
        'where doc.clientid1=:clientid and doc.date1=:last_date and doc.k' +
        'ind=2 '
      'and scheta.oplatadolga=1'
      'order by doc.docno')
    Left = 128
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
  object qryDebitDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select d.docid, d.sum0 debitsum,'
      '(select sum(sum0) from doc where pdocid=d.docid) creditsum,'
      'get_doc_name(d.kind, d.skind, d.docno, d.date1, d.sum0) doc,'
      'get_full_name(client.fullname, client.name) client'
      'from doc d'
      'left join client on client.clientid=d.clientid2'
      
        'where d.clientid1=:clientid and d.date1=:last_date and d.kind=1 ' +
        'and d.skind in (1,2)'
      'order by d.docno')
    Left = 168
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
  object qryBeznal: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select d.docid, d.sum0 docsum,'
      'get_doc_name(d.kind, d.skind, d.docno, d.date1, d.sum0) doc,'
      'get_full_name(client.fullname, client.name) client'
      'from doc d'
      'left join client on client.clientid=d.clientid2'
      
        'where d.clientid1=:clientid and d.date1=:last_date and d.kind=1 ' +
        'and skind=3'
      'order by d.docno')
    Left = 208
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
  object qryInnerDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select in_sum, in_nds, out_sum, out_nds, nalog'
      
        'from query_doc_sum( :clientid, 0, :last_date, :month_date, :year' +
        '_date)'
      ' ')
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end
      item
        DataType = ftDate
        Name = 'month_date'
        ParamType = ptUnknown
        Value = 36251d
      end
      item
        DataType = ftDate
        Name = 'year_date'
        ParamType = ptUnknown
        Value = 36161d
      end>
  end
  object qryInner: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select d.docid, d.sum0 docsum,'
      'get_doc_name(d.kind, d.skind, d.docno, d.date1, d.sum0) doc,'
      'get_full_name(client.fullname, client.name) client'
      'from doc d'
      'left join client on client.clientid=d.clientid2'
      
        'where d.clientid1=:clientid and d.date1=:last_date and d.kind=1 ' +
        'and skind<=0'
      'order by d.docno')
    Left = 245
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
  object qryTransport: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BeforeOpen = qryInnerBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select d.docid, d.sum3 docsum,'
      'get_doc_name(d.kind, d.skind, d.docno, d.date1, d.sum0) doc,'
      'get_full_name(client.fullname, client.name) client'
      'from doc d'
      'left join client on client.clientid=d.clientid2'
      
        'where d.clientid1=:clientid and d.date1=:last_date and d.kind=1 ' +
        'and d.sum3 <> 0'
      'order by d.docno')
    Left = 281
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'last_date'
        ParamType = ptUnknown
        Value = 36270d
      end>
  end
end
