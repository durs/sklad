object ReportBookIn: TReportBookIn
  Left = 0
  Top = 0
  Width = 1123
  Height = 794
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  BeforePrint = ReportBeforePrint
  DataSet = qry
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
  Page.Orientation = poLandscape
  Page.PaperSize = A4
  Page.Values = (
    100
    2100
    100
    2970
    100
    100
    0)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  ReportTitle = #1050#1085#1080#1075#1072' '#1087#1086#1082#1091#1087#1086#1082
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object TitleBand: TQRBand
    Left = 38
    Top = 38
    Width = 1047
    Height = 155
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = TitleBandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      410.104166666667
      2770.1875)
    BandType = rbPageHeader
    object QRLabel9: TQRLabel
      Left = 812
      Top = 1
      Width = 173
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        2148.41666666667
        2.64583333333333
        457.729166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1053#1048#1043#1040' '#1055#1054#1050#1059#1055#1054#1050
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
    object lbDate: TQRLabel
      Left = 876
      Top = 23
      Width = 44
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        2317.75
        60.8541666666667
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbDate'
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
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
      Width = 377
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
        997.479166666667)
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
        37.0416666666667
        391.583333333333
        60.8541666666667
        997.479166666667)
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
    object QRLabel8: TQRLabel
      Left = 17
      Top = 104
      Width = 295
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        44.9791666666667
        275.166666666667
        780.520833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1085#1072#1083#1086#1075#1086#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072' - '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
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
    object lbDate1: TQRLabel
      Left = 146
      Top = 123
      Width = 37
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        386.291666666667
        325.4375
        97.8958333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbDate1'
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
    object QRLabel13: TQRLabel
      Left = 17
      Top = 123
      Width = 99
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        44.9791666666667
        325.4375
        261.9375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1082#1091#1087#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089
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
    object QRShape13: TQRShape
      Left = 120
      Top = 135
      Width = 421
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        317.5
        357.1875
        1113.89583333333)
      Shape = qrsHorLine
    end
    object QRLabel10: TQRLabel
      Left = 17
      Top = 85
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        44.9791666666667
        224.895833333333
        150.8125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
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
    object QRLabel15: TQRLabel
      Left = 577
      Top = 123
      Width = 13
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1526.64583333333
        325.4375
        34.3958333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1087#1086
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
    object QRDBText2: TQRDBText
      Left = 92
      Top = 85
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
        224.895833333333
        111.125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Data.qrySklad
      DataField = 'CLIENT'
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
    object QRDBText7: TQRDBText
      Left = 340
      Top = 104
      Width = 21
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        899.583333333333
        275.166666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Data.qrySklad
      DataField = 'INN'
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
    object lbDate2: TQRLabel
      Left = 610
      Top = 123
      Width = 37
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1613.95833333333
        325.4375
        97.8958333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbDate2'
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
    object QRShape14: TQRShape
      Left = 80
      Top = 97
      Width = 949
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        211.666666666667
        256.645833333333
        2510.89583333333)
      Shape = qrsHorLine
    end
    object QRShape12: TQRShape
      Left = 320
      Top = 116
      Width = 709
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        846.666666666667
        306.916666666667
        1875.89583333333)
      Shape = qrsHorLine
    end
    object QRShape15: TQRShape
      Left = 596
      Top = 135
      Width = 433
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        1576.91666666667
        357.1875
        1145.64583333333)
      Shape = qrsHorLine
    end
  end
  object SubDetail: TQRSubDetail
    Left = 38
    Top = 344
    Width = 1047
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = SubDetailBeforePrint
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      52.9166666666667
      2770.1875)
    Master = Owner
    DataSet = qry
    FooterBand = GroupFooterBand
    PrintBefore = False
    PrintIfEmpty = False
    object QRDBText3: TQRDBText
      Left = 408
      Top = 0
      Width = 85
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625
        1079.5
        0
        224.895833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'INN'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 5
    end
    object QRDBText1: TQRDBText
      Left = 141
      Top = 0
      Width = 54
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        373.0625
        0
        142.875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'DATE2'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbDocSum: TQRDBText
      Left = 573
      Top = 0
      Width = 69
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1516.0625
        0
        182.5625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'SUM0'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbDocNdsSum20: TQRDBText
      Left = 719
      Top = 0
      Width = 68
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1902.35416666667
        0
        179.916666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'NDSSUM20'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRShape4: TQRShape
      Left = 138
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        365.125
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape16: TQRShape
      Left = 249
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        658.8125
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape17: TQRShape
      Left = 402
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1063.625
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape18: TQRShape
      Left = 492
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1301.75
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape20: TQRShape
      Left = 568
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1502.83333333333
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape21: TQRShape
      Left = 642
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1698.625
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape22: TQRShape
      Left = 714
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        1889.125
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape23: TQRShape
      Left = 928
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2455.33333333333
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape5: TQRShape
      Left = 786
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2079.625
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape6: TQRShape
      Left = 859
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2272.77083333333
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object lbDocNdsSum10: TQRDBText
      Left = 863
      Top = 0
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        2283.35416666667
        0
        171.979166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'NDSSUM10'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbDocSum20: TQRDBText
      Left = 647
      Top = 0
      Width = 68
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1711.85416666667
        0
        179.916666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'SUM20'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbDocSum10: TQRDBText
      Left = 789
      Top = 0
      Width = 71
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        2087.5625
        0
        187.854166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'SUM10'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRDBText5: TQRDBText
      Left = 253
      Top = 0
      Width = 148
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        669.395833333333
        0
        391.583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'CLIENT'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbDocNSum: TQRDBText
      Left = 933
      Top = 0
      Width = 52
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        2468.5625
        0
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'NSUM'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbDoc: TQRLabel
      Left = 30
      Top = 0
      Width = 109
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        79.375
        0
        288.395833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDoc'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape7: TQRShape
      Left = 26
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        68.7916666666667
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape8: TQRShape
      Left = 194
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        513.291666666667
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRDBText6: TQRDBText
      Left = 197
      Top = 0
      Width = 54
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        521.229166666667
        0
        142.875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'DATE1'
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRShape10: TQRShape
      Left = 984
      Top = -1
      Width = 5
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.5625
        2603.5
        -2.64583333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRExpr1: TQRExpr
      Left = 2
      Top = 0
      Width = 25
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        5.29166666666667
        0
        66.1458333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'count'
      FontSize = 7
    end
  end
  object ColumnHeaderBand: TQRChildBand
    Left = 38
    Top = 210
    Width = 1047
    Height = 134
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      354.541666666667
      2770.1875)
    ParentBand = PageHeaderBand
    object QRShape1: TQRShape
      Left = 644
      Top = 38
      Width = 342
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        1703.91666666667
        100.541666666667
        904.875)
      Brush.Color = clInfoBk
      Shape = qrsHorLine
    end
    object QRShape34: TQRShape
      Left = 0
      Top = 113
      Width = 1047
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        0
        298.979166666667
        2770.1875)
      Brush.Color = clInfoBk
      Shape = qrsHorLine
    end
    object QRLabel37: TQRLabel
      Left = 990
      Top = 34
      Width = 52
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        169.333333333333
        2619.375
        89.9583333333333
        137.583333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1086#1082#1091#1087#1082#1080', '#1086#1089#1074#1086#1073#1086#1078'- '#1076#1072#1077#1084#1099#1077' '#1086#1090' '#1085#1072#1083#1086#1075#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel14: TQRLabel
      Left = 199
      Top = 25
      Width = 50
      Height = 66
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        174.625
        526.520833333333
        66.1458333333333
        132.291666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072' '#1086#1087#1088#1080#1093#1086'- '#1076#1099#1074#1072#1085#1080#1103' '#1090#1086#1074#1072#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel27: TQRLabel
      Left = 276
      Top = 38
      Width = 111
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.9583333333333
        730.25
        100.541666666667
        293.6875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1072#1074#1094#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape33: TQRShape
      Left = 249
      Top = 0
      Width = 5
      Height = 134
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        354.541666666667
        658.8125
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel41: TQRLabel
      Left = 215
      Top = 116
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        568.854166666667
        306.916666666667
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(4)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel49: TQRLabel
      Left = 323
      Top = 116
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        854.604166666667
        306.916666666667
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(5)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel31: TQRLabel
      Left = 423
      Top = 39
      Width = 61
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.6041666666667
        1119.1875
        103.1875
        161.395833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1053#1053' '#1087#1088#1086#1076#1072#1074#1094#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel32: TQRLabel
      Left = 499
      Top = 17
      Width = 67
      Height = 73
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        193.145833333333
        1320.27083333333
        44.9791666666667
        177.270833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1089#1093#1086#1078'- '#1076#1077#1085#1080#1103' '#1090#1086#1074#1072#1088#1072'. '#1053#1086#1084#1077#1088' '#1043#1058#1044
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel34: TQRLabel
      Left = 579
      Top = 26
      Width = 58
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        161.395833333333
        1531.9375
        68.7916666666667
        153.458333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1089#1077#1075#1086' '#1087#1086#1082#1091#1087#1086#1082' '#1074#1082#1083#1102#1095#1072#1103' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape24: TQRShape
      Left = 642
      Top = 0
      Width = 5
      Height = 133
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        351.895833333333
        1698.625
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape29: TQRShape
      Left = 568
      Top = 0
      Width = 5
      Height = 133
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        351.895833333333
        1502.83333333333
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape31: TQRShape
      Left = 492
      Top = 0
      Width = 5
      Height = 134
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        354.541666666667
        1301.75
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape32: TQRShape
      Left = 402
      Top = 0
      Width = 5
      Height = 134
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        354.541666666667
        1063.625
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel42: TQRLabel
      Left = 527
      Top = 116
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1394.35416666667
        306.916666666667
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(6)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel43: TQRLabel
      Left = 445
      Top = 116
      Width = 20
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1177.39583333333
        306.916666666667
        52.9166666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(5'#1072')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel45: TQRLabel
      Left = 603
      Top = 116
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1595.4375
        306.916666666667
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(7)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel46: TQRLabel
      Left = 671
      Top = 116
      Width = 20
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1775.35416666667
        306.916666666667
        52.9166666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(8'#1072')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel47: TQRLabel
      Left = 743
      Top = 116
      Width = 21
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1965.85416666667
        306.916666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(8'#1073')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel48: TQRLabel
      Left = 950
      Top = 116
      Width = 21
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2513.54166666667
        306.916666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(10)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape25: TQRShape
      Left = 644
      Top = 64
      Width = 286
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        1703.91666666667
        169.333333333333
        756.708333333333)
      Brush.Color = clInfoBk
      Shape = qrsHorLine
    end
    object QRShape28: TQRShape
      Left = 859
      Top = 66
      Width = 5
      Height = 67
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        177.270833333333
        2272.77083333333
        174.625
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape26: TQRShape
      Left = 644
      Top = 14
      Width = 402
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        13.2291666666667
        1703.91666666667
        37.0416666666667
        1063.625)
      Brush.Color = clInfoBk
      Shape = qrsHorLine
    end
    object QRShape27: TQRShape
      Left = 928
      Top = 40
      Width = 5
      Height = 92
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        243.416666666667
        2455.33333333333
        105.833333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel35: TQRLabel
      Left = 783
      Top = 1
      Width = 107
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        2071.6875
        2.64583333333333
        283.104166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel40: TQRLabel
      Left = 937
      Top = 54
      Width = 44
      Height = 47
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        124.354166666667
        2479.14583333333
        142.875
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = '0 '#1087#1088#1086#1094#1077#1085'- '#1090#1086#1074
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel38: TQRLabel
      Left = 649
      Top = 68
      Width = 63
      Height = 47
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        124.354166666667
        1717.14583333333
        179.916666666667
        166.6875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086#1082#1091#1087#1086#1082' '#1073#1077#1079' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel50: TQRLabel
      Left = 144
      Top = 17
      Width = 49
      Height = 83
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        219.604166666667
        381
        44.9791666666667
        129.645833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099' '#1089#1095#1077#1090#1072' '#1092#1072#1082#1090#1091#1088#1099' '#1087#1088#1086#1076#1072#1074#1094#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel20: TQRLabel
      Left = 161
      Top = 116
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        425.979166666667
        306.916666666667
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(3)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel54: TQRLabel
      Left = 68
      Top = 116
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        179.916666666667
        306.916666666667
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(2)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel51: TQRLabel
      Left = 3
      Top = 37
      Width = 23
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.9583333333333
        7.9375
        97.8958333333333
        60.8541666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #8470' '#1087'/'#1087
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel52: TQRLabel
      Left = 47
      Top = 31
      Width = 74
      Height = 51
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        134.9375
        124.354166666667
        82.0208333333333
        195.791666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072' '#1080' '#1085#1086#1084#1077#1088' '#1089#1095#1077#1090#1072' '#1092#1072#1082#1090#1091#1088#1099' '#1087#1088#1086#1076#1072#1074#1094#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel53: TQRLabel
      Left = 7
      Top = 116
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        18.5208333333333
        306.916666666667
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(1)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape37: TQRShape
      Left = 26
      Top = 0
      Width = 5
      Height = 134
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        354.541666666667
        68.7916666666667
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape36: TQRShape
      Left = 138
      Top = 0
      Width = 5
      Height = 134
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        354.541666666667
        365.125
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape35: TQRShape
      Left = 194
      Top = 0
      Width = 5
      Height = 134
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        354.541666666667
        513.291666666667
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel36: TQRLabel
      Left = 656
      Top = 21
      Width = 315
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1735.66666666667
        55.5625
        833.4375)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1086#1082#1091#1087#1082#1080', '#1086#1073#1083#1072#1075#1072#1077#1084#1099#1077' '#1085#1072#1083#1086#1075#1086#1084' '#1087#1086' '#1089#1090#1072#1074#1082#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape2: TQRShape
      Left = 786
      Top = 40
      Width = 5
      Height = 93
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        246.0625
        2079.625
        105.833333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel1: TQRLabel
      Left = 820
      Top = 46
      Width = 84
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        2169.58333333333
        121.708333333333
        222.25)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '10 '#1087#1088#1086#1094#1077#1085#1090#1086#1074' (9)'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 8
    end
    object lbNDS20Cap: TQRLabel
      Left = 677
      Top = 46
      Width = 84
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1791.22916666667
        121.708333333333
        222.25)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '20 '#1087#1088#1086#1094#1077#1085#1090#1086#1074' (8)'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 731
      Top = 74
      Width = 44
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.9583333333333
        1934.10416666667
        195.791666666667
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape3: TQRShape
      Left = 714
      Top = 66
      Width = 5
      Height = 67
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        177.270833333333
        1889.125
        174.625
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel4: TQRLabel
      Left = 793
      Top = 68
      Width = 63
      Height = 47
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        124.354166666667
        2098.14583333333
        179.916666666667
        166.6875)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086#1082#1091#1087#1086#1082' '#1073#1077#1079' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 874
      Top = 74
      Width = 44
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.3125
        2312.45833333333
        195.791666666667
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 817
      Top = 116
      Width = 20
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2161.64583333333
        306.916666666667
        52.9166666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(9'#1072')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 887
      Top = 116
      Width = 21
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2346.85416666667
        306.916666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(9'#1073')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape9: TQRShape
      Left = 984
      Top = 16
      Width = 5
      Height = 117
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        309.5625
        2603.5
        42.3333333333333
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel11: TQRLabel
      Left = 1007
      Top = 116
      Width = 21
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2664.35416666667
        306.916666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '(11)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object GroupFooterBand: TQRBand
    Left = 38
    Top = 364
    Width = 1047
    Height = 25
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      66.1458333333333
      2770.1875)
    BandType = rbGroupFooter
    object lbSum: TQRExpr
      Left = 572
      Top = 4
      Width = 71
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1513.41666666667
        10.5833333333333
        187.854166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(SUM0)'
      FontSize = 7
    end
    object lbSum20: TQRExpr
      Left = 645
      Top = 4
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1706.5625
        10.5833333333333
        185.208333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(SUM20)'
      FontSize = 7
    end
    object lbNdsSum20: TQRExpr
      Left = 716
      Top = 4
      Width = 71
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1894.41666666667
        10.5833333333333
        187.854166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(NDSSUM20)'
      FontSize = 7
    end
    object lbSum10: TQRExpr
      Left = 788
      Top = 4
      Width = 73
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2084.91666666667
        10.5833333333333
        193.145833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(SUM10)'
      FontSize = 7
    end
    object lbNdsSum10: TQRExpr
      Left = 862
      Top = 4
      Width = 67
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2280.70833333333
        10.5833333333333
        177.270833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(NDSSUM10)'
      FontSize = 7
    end
    object lbNSum: TQRExpr
      Left = 931
      Top = 4
      Width = 55
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2463.27083333333
        10.5833333333333
        145.520833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(NSUM)'
      FontSize = 7
    end
    object QRShape11: TQRShape
      Left = 568
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        1502.83333333333
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape19: TQRShape
      Left = 642
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        1698.625
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape30: TQRShape
      Left = 714
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        1889.125
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape38: TQRShape
      Left = 786
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2079.625
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape39: TQRShape
      Left = 859
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2272.77083333333
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape40: TQRShape
      Left = 928
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2455.33333333333
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape41: TQRShape
      Left = 984
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2603.5
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRLabel12: TQRLabel
      Left = 42
      Top = 4
      Width = 25
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.0416666666667
        111.125
        10.5833333333333
        66.1458333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1089#1077#1075#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
  end
  object PageHeaderBand: TQRChildBand
    Left = 38
    Top = 193
    Width = 1047
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = PageHeaderBandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      44.9791666666667
      2770.1875)
    ParentBand = TitleBand
    object lbPage: TQRExpr
      Left = 642
      Top = 1
      Width = 405
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1698.625
        2.64583333333333
        1071.5625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
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
      Expression = #39#1057#1090#1088#1072#1085#1080#1094#1072' '#39'+PAGENUMBER'
      FontSize = 8
    end
  end
  object ChildBand1: TQRChildBand
    Left = 38
    Top = 389
    Width = 1047
    Height = 25
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      66.1458333333333
      2770.1875)
    ParentBand = GroupFooterBand
    object QRLabel16: TQRLabel
      Left = 42
      Top = 4
      Width = 180
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        111.125
        10.5833333333333
        476.25)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1087#1086' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1084#1091' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1102
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbSumInner: TQRDBText
      Left = 572
      Top = 4
      Width = 71
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1513.41666666667
        10.5833333333333
        187.854166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'INSUM'
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbSum20Inner: TQRDBText
      Left = 645
      Top = 4
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1706.5625
        10.5833333333333
        185.208333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'INSUM20'
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbNdsSum20Inner: TQRDBText
      Left = 716
      Top = 4
      Width = 71
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        1894.41666666667
        10.5833333333333
        187.854166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'INNDSSUM20'
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbSum10Inner: TQRDBText
      Left = 788
      Top = 4
      Width = 73
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2084.91666666667
        10.5833333333333
        193.145833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'INSUM10'
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbNdsSum10Inner: TQRDBText
      Left = 862
      Top = 4
      Width = 67
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2280.70833333333
        10.5833333333333
        177.270833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'INNDSSUM10'
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbNSumInner: TQRDBText
      Left = 931
      Top = 4
      Width = 55
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        2463.27083333333
        10.5833333333333
        145.520833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qryInner
      DataField = 'NSUM'
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape42: TQRShape
      Left = 568
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        1502.83333333333
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape43: TQRShape
      Left = 642
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        1698.625
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape44: TQRShape
      Left = 714
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        1889.125
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape45: TQRShape
      Left = 786
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2079.625
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape46: TQRShape
      Left = 859
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2272.77083333333
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape47: TQRShape
      Left = 928
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2455.33333333333
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
    object QRShape48: TQRShape
      Left = 984
      Top = 0
      Width = 5
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        2603.5
        0
        13.2291666666667)
      Brush.Color = clInfoBk
      Shape = qrsVertLine
    end
  end
  object qry: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  p.docno, p.date1, p.date2,'
      'p.sum10, p.ndssum10, p.sum20, p.ndssum20,'
      'p.sum0,'
      '0/*p.sum0-p.sum2-p.sum10-p.ndssum10-p.sum20-p.ndssum20*/ nsum,'
      'get_full_name(c.fullname, c.name) client, c.inn, c.okonx, c.okpo'
      'from query_book_in(:clientid,:date1,:date2) p'
      'left join client c on c.clientid=p.clientid1')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date2'
        ParamType = ptUnknown
      end>
  end
  object qryInner: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'insum10, inndssum10, insum20, inndssum20,'
      'insum, 0 nsum'
      'from query_book_inner(:clientid,:date1,:date2)')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date2'
        ParamType = ptUnknown
      end>
  end
end
