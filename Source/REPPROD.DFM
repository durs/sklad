object ReportProduct: TReportProduct
  Left = 0
  Top = -215
  Width = 2245
  Height = 1587
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  BeforePrint = ReportProductBeforePrint
  DataSet = qry
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    '')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    '')
  Options = [LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poLandscape
  Page.PaperSize = A4
  Page.Values = (
    100
    2100
    160
    2970
    100
    100
    0)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = False
  ReportTitle = #1058#1086#1074#1072#1088#1085#1099#1081' '#1086#1090#1095#1077#1090
  SnapToGrid = True
  Units = MM
  Zoom = 200
  object SummaryBand: TQRBand
    Left = 76
    Top = 667
    Width = 2094
    Height = 60
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = SummaryBandBeforePrint
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
      79.375
      2770.1875)
    BandType = rbSummary
    object QRLabel13: TQRLabel
      Left = 28
      Top = 28
      Width = 76
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        37.0416666666667
        37.0416666666667
        100.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1089#1077#1075#1086' :'
      Color = clWhite
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
    object lbAllOutSum1: TQRLabel
      Left = 1082
      Top = 32
      Width = 93
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1431.39583333333
        42.3333333333333
        123.03125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllOutSum2: TQRLabel
      Left = 1178
      Top = 32
      Width = 106
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1558.39583333333
        42.3333333333333
        140.229166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllOutSum3: TQRLabel
      Left = 1287
      Top = 32
      Width = 100
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1702.59375
        42.3333333333333
        132.291666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllSum1: TQRLabel
      Left = 1882
      Top = 32
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2489.72916666667
        42.3333333333333
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllSum2: TQRLabel
      Left = 1988
      Top = 32
      Width = 104
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2629.95833333333
        42.3333333333333
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllOutSum4: TQRLabel
      Left = 1390
      Top = 32
      Width = 108
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1838.85416666667
        42.3333333333333
        142.875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutSum4'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllInSum2: TQRLabel
      Left = 795
      Top = 32
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1051.71875
        42.3333333333333
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllInSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllInSum1: TQRLabel
      Left = 686
      Top = 32
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        907.520833333333
        42.3333333333333
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllInSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllInSum3: TQRLabel
      Left = 903
      Top = 32
      Width = 102
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1194.59375
        42.3333333333333
        134.9375)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllInSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllOutSum5: TQRLabel
      Left = 1501
      Top = 32
      Width = 95
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1985.69791666667
        42.3333333333333
        125.677083333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutSum5'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllOutSum6: TQRLabel
      Left = 1598
      Top = 32
      Width = 106
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2114.02083333333
        42.3333333333333
        140.229166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutSum6'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllOutSum7: TQRLabel
      Left = 1706
      Top = 32
      Width = 95
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2256.89583333333
        42.3333333333333
        125.677083333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutSum7'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllInCount: TQRLabel
      Left = 441
      Top = 32
      Width = 82
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        583.40625
        42.3333333333333
        108.479166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllInCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllOutCount: TQRLabel
      Left = 1007
      Top = 32
      Width = 73
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1332.17708333333
        42.3333333333333
        96.5729166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllOutCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbAllCount: TQRLabel
      Left = 1802
      Top = 32
      Width = 79
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2383.89583333333
        42.3333333333333
        104.510416666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbAllCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
  end
  object SubDetail: TQRSubDetail
    Left = 76
    Top = 555
    Width = 2094
    Height = 24
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
    Font.Height = -8
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      31.75
      2770.1875)
    Master = Owner
    DataSet = qry
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape1: TQRShape
      Left = 36
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        47.625
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape9: TQRShape
      Left = 412
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        545.041666666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape11: TQRShape
      Left = 519
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        686.59375
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape12: TQRShape
      Left = 680
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        899.583333333333
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape13: TQRShape
      Left = 788
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1042.45833333333
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape16: TQRShape
      Left = 1004
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1328.20833333333
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object QRShape17: TQRShape
      Left = 1072
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1418.16666666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape18: TQRShape
      Left = 1171
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1549.13541666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape19: TQRShape
      Left = 1278
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1690.6875
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape20: TQRShape
      Left = 1798
      Top = 0
      Width = 10
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.3958333333333
        2378.60416666667
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object QRShape30: TQRShape
      Left = 1870
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        2473.85416666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape31: TQRShape
      Left = 1982
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        2622.02083333333
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape32: TQRShape
      Left = 1492
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1973.79166666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object lbNo: TQRExpr
      Left = 2
      Top = 1
      Width = 37
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2.64583333333333
        1.32291666666667
        48.9479166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Master = SubDetail
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'count'
      FontSize = 6
    end
    object QRDBText1: TQRDBText
      Left = 419
      Top = 1
      Width = 38
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        554.302083333333
        1.32291666666667
        50.2708333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'DIM'
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbInSum1: TQRLabel
      Left = 688
      Top = 1
      Width = 100
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        910.166666666667
        1.32291666666667
        132.291666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbInSum2: TQRLabel
      Left = 798
      Top = 1
      Width = 104
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1055.6875
        1.32291666666667
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbOutSum1: TQRLabel
      Left = 1080
      Top = 1
      Width = 94
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1428.75
        1.32291666666667
        124.354166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbOutSum2: TQRLabel
      Left = 1180
      Top = 1
      Width = 100
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1561.04166666667
        1.32291666666667
        132.291666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbOutSum3: TQRLabel
      Left = 1285
      Top = 1
      Width = 98
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1699.94791666667
        1.32291666666667
        129.645833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbSum1: TQRLabel
      Left = 1876
      Top = 1
      Width = 110
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2481.79166666667
        1.32291666666667
        145.520833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbSum2: TQRLabel
      Left = 1988
      Top = 1
      Width = 102
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2629.95833333333
        1.32291666666667
        134.9375)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbOutSum4: TQRLabel
      Left = 1388
      Top = 1
      Width = 104
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1836.20833333333
        1.32291666666667
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutSum4'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape15: TQRShape
      Left = 579
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        765.96875
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRDBText3: TQRDBText
      Left = 526
      Top = 1
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        695.854166666667
        1.32291666666667
        75.40625)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'NDS'
      Mask = '#0.## %'
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape27: TQRShape
      Left = 899
      Top = -1
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1189.30208333333
        -1.32291666666667
        13.2291666666667)
      Shape = qrsVertLine
    end
    object lbInSum3: TQRLabel
      Left = 907
      Top = 1
      Width = 96
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1199.88541666667
        1.32291666666667
        127)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape40: TQRShape
      Left = 1380
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1825.625
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object lbOutSum5: TQRLabel
      Left = 1500
      Top = 1
      Width = 92
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1984.375
        1.32291666666667
        121.708333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutSum5'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape41: TQRShape
      Left = 1589
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        2102.11458333333
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object lbOutSum6: TQRLabel
      Left = 1598
      Top = 1
      Width = 104
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2114.02083333333
        1.32291666666667
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutSum6'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape42: TQRShape
      Left = 1701
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        2250.28125
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object lbOutSum7: TQRLabel
      Left = 1708
      Top = 1
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2259.54166666667
        1.32291666666667
        116.416666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutSum7'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbInCount: TQRLabel
      Left = 460
      Top = 1
      Width = 63
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        608.541666666667
        1.32291666666667
        83.34375)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRDBText2: TQRDBText
      Left = 43
      Top = 1
      Width = 371
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        56.8854166666667
        1.32291666666667
        490.802083333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = qry
      DataField = 'PRODUCT'
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbOutCount: TQRLabel
      Left = 1014
      Top = 1
      Width = 62
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1341.4375
        1.32291666666667
        82.0208333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOutCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbCount: TQRLabel
      Left = 1808
      Top = 1
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2391.83333333333
        1.32291666666667
        88.6354166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbInPrice: TQRLabel
      Left = 586
      Top = 1
      Width = 98
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        775.229166666667
        1.32291666666667
        129.645833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInPrice'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape10: TQRShape
      Left = 453
      Top = 0
      Width = 10
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        599.28125
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
  end
  object TitleBand: TQRBand
    Left = 76
    Top = 157
    Width = 2094
    Height = 166
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
      219.604166666667
      2770.1875)
    BandType = rbTitle
    object QRLabel9: TQRLabel
      Left = 1544
      Top = 2
      Width = 374
      Height = 46
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        2042.58333333333
        2.64583333333333
        494.770833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1054#1042#1040#1056#1053#1067#1049' '#1054#1058#1063#1045#1058
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
      Left = 1692
      Top = 56
      Width = 70
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.0416666666667
        2238.375
        74.0833333333333
        92.6041666666667)
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
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object lbTitle: TQRDBText
      Left = 296
      Top = 2
      Width = 754
      Height = 46
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
      Left = 296
      Top = 46
      Width = 754
      Height = 28
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
    object imgLogo: TQRImage
      Left = 32
      Top = 4
      Width = 226
      Height = 142
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
  end
  object HeaderBand2: TQRChildBand
    Left = 76
    Top = 463
    Width = 2094
    Height = 28
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    LinkBand = HeaderBand
    ParentFont = False
    Size.Values = (
      37.0416666666667
      2770.1875)
    ParentBand = HeaderBand1
    object lbFirst: TQRLabel
      Left = 36
      Top = 4
      Width = 42
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        47.625
        5.29166666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbFirst'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape37: TQRShape
      Left = 1004
      Top = 0
      Width = 10
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1328.20833333333
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object QRLabel2: TQRLabel
      Left = 1036
      Top = 4
      Width = 52
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        1370.54166666667
        5.29166666666667
        68.7916666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1089#1093#1086#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape38: TQRShape
      Left = 1798
      Top = 0
      Width = 10
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        2378.60416666667
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object lbLast: TQRLabel
      Left = 1830
      Top = 4
      Width = 42
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        29.1041666666667
        2420.9375
        5.29166666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbLast'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
  end
  object FooterBand1: TQRBand
    Left = 76
    Top = 579
    Width = 2094
    Height = 28
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = FooterBand1BeforePrint
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      37.0416666666667
      2770.1875)
    BandType = rbGroupFooter
    object QRLabel26: TQRLabel
      Left = 28
      Top = 3
      Width = 52
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        37.0416666666667
        3.96875
        68.7916666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1048#1090#1086#1075#1086' :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object lbDocInSum1: TQRLabel
      Left = 687
      Top = 3
      Width = 103
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        29.1041666666667
        908.84375
        3.96875
        136.260416666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocInSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocInSum2: TQRLabel
      Left = 795
      Top = 3
      Width = 106
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        29.1041666666667
        1051.71875
        3.96875
        140.229166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocInSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocOutSum1: TQRLabel
      Left = 1078
      Top = 4
      Width = 97
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1426.10416666667
        5.29166666666667
        128.322916666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocOutSum2: TQRLabel
      Left = 1178
      Top = 4
      Width = 104
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1558.39583333333
        5.29166666666667
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocOutSum3: TQRLabel
      Left = 1285
      Top = 4
      Width = 100
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1699.94791666667
        5.29166666666667
        132.291666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocSum1: TQRLabel
      Left = 1878
      Top = 4
      Width = 108
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2484.4375
        5.29166666666667
        142.875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocSum2: TQRLabel
      Left = 1988
      Top = 4
      Width = 103
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2629.95833333333
        5.29166666666667
        136.260416666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocOutSum4: TQRLabel
      Left = 1388
      Top = 4
      Width = 109
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1836.20833333333
        5.29166666666667
        144.197916666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutSum4'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape33: TQRShape
      Left = 1004
      Top = 0
      Width = 10
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1328.20833333333
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object lbDocInSum3: TQRLabel
      Left = 905
      Top = 3
      Width = 98
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        29.1041666666667
        1197.23958333333
        3.96875
        129.645833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocInSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocOutSum5: TQRLabel
      Left = 1498
      Top = 4
      Width = 96
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1981.72916666667
        5.29166666666667
        127)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutSum5'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocOutSum6: TQRLabel
      Left = 1596
      Top = 4
      Width = 108
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2111.375
        5.29166666666667
        142.875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutSum6'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object QRShape34: TQRShape
      Left = 1798
      Top = 0
      Width = 10
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        2378.60416666667
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object lbDocOutSum7: TQRLabel
      Left = 1708
      Top = 4
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2259.54166666667
        5.29166666666667
        116.416666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutSum7'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocInCount: TQRLabel
      Left = 441
      Top = 3
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        583.40625
        3.96875
        108.479166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocInCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocOutCount: TQRLabel
      Left = 1014
      Top = 4
      Width = 61
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        1341.4375
        5.29166666666667
        80.6979166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocOutCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
    object lbDocCount: TQRLabel
      Left = 1808
      Top = 4
      Width = 68
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        27.78125
        2391.83333333333
        5.29166666666667
        89.9583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbDocCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 6
    end
  end
  object HeaderBand3: TQRChildBand
    Left = 76
    Top = 491
    Width = 2094
    Height = 64
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      84.6666666666667
      2770.1875)
    ParentBand = HeaderBand2
    object QRShape4: TQRShape
      Left = 1982
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        2622.02083333333
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape36: TQRShape
      Left = 1380
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1825.625
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape35: TQRShape
      Left = 1171
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1549.13541666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape2: TQRShape
      Left = 1072
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1418.16666666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape25: TQRShape
      Left = 899
      Top = 0
      Width = 11
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1189.30208333333
        0
        14.5520833333333)
      Shape = qrsVertLine
    end
    object QRLabel24: TQRLabel
      Left = 806
      Top = 8
      Width = 88
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        1066.27083333333
        10.5833333333333
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1087#1088#1080#1093#1086#1076#1085#1072#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape26: TQRShape
      Left = 788
      Top = 0
      Width = 11
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1042.45833333333
        0
        14.5520833333333)
      Shape = qrsVertLine
    end
    object QRLabel3: TQRLabel
      Left = 694
      Top = 1
      Width = 88
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        918.104166666667
        1.32291666666667
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1087#1088#1080#1093#1086#1076#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape24: TQRShape
      Left = 1004
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1328.20833333333
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object QRLabel5: TQRLabel
      Left = 1024
      Top = 8
      Width = 46
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        1354.66666666667
        10.5833333333333
        60.8541666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1089#1077#1075#1086' '#1082#1075'/'#1096#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape3: TQRShape
      Left = 1589
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        2102.11458333333
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel7: TQRLabel
      Left = 1398
      Top = 1
      Width = 86
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        1849.4375
        1.32291666666667
        113.770833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080' '#1073#1077#1079' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape5: TQRShape
      Left = 1798
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        2378.60416666667
        0
        13.2291666666667)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object QRLabel1: TQRLabel
      Left = 1818
      Top = 9
      Width = 46
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        2405.0625
        11.90625
        60.8541666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1089#1077#1075#1086' '#1082#1075'/'#1096#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape6: TQRShape
      Left = 1870
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        2473.85416666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape8: TQRShape
      Left = 1278
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1690.6875
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel21: TQRLabel
      Left = 594
      Top = 9
      Width = 80
      Height = 45
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        59.53125
        785.8125
        11.90625
        105.833333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1062#1077#1085#1072' '#1087#1088#1080#1093#1086#1076#1085#1072#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape28: TQRShape
      Left = 680
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        899.583333333333
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRShape29: TQRShape
      Left = 519
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        686.59375
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel20: TQRLabel
      Left = 470
      Top = 9
      Width = 45
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        621.770833333333
        11.90625
        59.53125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1089#1077#1075#1086' '#1082#1075'/'#1096#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape23: TQRShape
      Left = 453
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        599.28125
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel19: TQRLabel
      Left = 422
      Top = 8
      Width = 32
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        558.270833333333
        10.5833333333333
        42.3333333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1076'. '#1080#1079'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape21: TQRShape
      Left = 412
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        545.041666666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel18: TQRLabel
      Left = 146
      Top = 20
      Width = 156
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.75
        193.145833333333
        26.4583333333333
        206.375)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape22: TQRShape
      Left = 36
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        47.625
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel17: TQRLabel
      Left = 3
      Top = 9
      Width = 37
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        3.96875
        11.90625
        48.9479166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #8470' '#1087'/'#1087
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel4: TQRLabel
      Left = 1503
      Top = 1
      Width = 87
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        1988.34375
        1.32291666666667
        115.09375)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape14: TQRShape
      Left = 579
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        765.96875
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel11: TQRLabel
      Left = 527
      Top = 9
      Width = 55
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        697.177083333333
        11.90625
        72.7604166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel12: TQRLabel
      Left = 910
      Top = 1
      Width = 88
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        1203.85416666667
        1.32291666666667
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1087#1088#1080#1093#1086#1076#1085#1072#1103' '#1089' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel6: TQRLabel
      Left = 1084
      Top = 1
      Width = 88
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        1434.04166666667
        1.32291666666667
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1087#1088#1080#1093#1086#1076#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel14: TQRLabel
      Left = 1186
      Top = 9
      Width = 88
      Height = 45
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        59.53125
        1568.97916666667
        11.90625
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1087#1088#1080#1093#1086#1076#1085#1072#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel15: TQRLabel
      Left = 1297
      Top = 9
      Width = 77
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        1715.82291666667
        11.90625
        101.864583333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1072#1094#1077#1085#1082#1072' '#1085#1072' '#1090#1086#1074#1072#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape39: TQRShape
      Left = 1492
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        1973.79166666667
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object QRLabel16: TQRLabel
      Left = 1605
      Top = 1
      Width = 89
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        2123.28125
        1.32291666666667
        117.739583333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080' '#1089' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel22: TQRLabel
      Left = 1885
      Top = 1
      Width = 88
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        2493.69791666667
        1.32291666666667
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1087#1088#1080#1093#1086#1076#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRLabel23: TQRLabel
      Left = 1999
      Top = 9
      Width = 88
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.2083333333333
        2644.51041666667
        11.90625
        116.416666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1087#1088#1080#1093#1086#1076#1085#1072#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape7: TQRShape
      Left = 1701
      Top = 0
      Width = 10
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.6666666666667
        2250.28125
        0
        13.2291666666667)
      Shape = qrsVertLine
    end
    object lbOutSum7Cap: TQRLabel
      Left = 1710
      Top = 1
      Width = 83
      Height = 61
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        80.6979166666667
        2262.1875
        1.32291666666667
        109.802083333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1091#1084#1084#1072' '#1085#1072#1083#1086#1075#1072' '#1089' '#1087#1088#1086#1076#1072#1078
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
  end
  object HeaderBand: TQRGroup
    Left = 76
    Top = 323
    Width = 2094
    Height = 80
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = HeaderBandBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333
      2770.1875)
    Expression = 'qry.ISOST'
    FooterBand = FooterBand
    Master = SubDetail
    ReprintOnNewPage = False
    object lbGroup: TQRLabel
      Left = 80
      Top = 20
      Width = 110
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        105.833333333333
        26.4583333333333
        145.520833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbGroup'
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
  end
  object HeaderBand1: TQRGroup
    Left = 76
    Top = 403
    Width = 2094
    Height = 60
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = HeaderBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      79.375
      2770.1875)
    Expression = 'qry.INDOCID'
    FooterBand = FooterBand1
    Master = SubDetail
    ReprintOnNewPage = False
    object lbDoc: TQRLabel
      Left = 84
      Top = 4
      Width = 60
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        111.125
        5.29166666666667
        79.375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbDoc'
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 8
    end
  end
  object FooterBand: TQRBand
    Left = 76
    Top = 607
    Width = 2094
    Height = 60
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = FooterBandBeforePrint
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
      79.375
      2770.1875)
    BandType = rbGroupFooter
    object lbOstInSum2: TQRLabel
      Left = 795
      Top = 12
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1051.71875
        15.875
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstInSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutSum1: TQRLabel
      Left = 1081
      Top = 12
      Width = 94
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1430.07291666667
        15.875
        124.354166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutSum2: TQRLabel
      Left = 1178
      Top = 12
      Width = 103
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1558.39583333333
        15.875
        136.260416666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutSum3: TQRLabel
      Left = 1285
      Top = 12
      Width = 100
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1699.94791666667
        15.875
        132.291666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstSum1: TQRLabel
      Left = 1880
      Top = 12
      Width = 106
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2487.08333333333
        15.875
        140.229166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstSum2: TQRLabel
      Left = 1988
      Top = 12
      Width = 104
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2629.95833333333
        15.875
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutSum4: TQRLabel
      Left = 1388
      Top = 12
      Width = 108
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1836.20833333333
        15.875
        142.875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutSum4'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstInSum1: TQRLabel
      Left = 685
      Top = 12
      Width = 106
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        906.197916666667
        15.875
        140.229166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstInSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbFooter: TQRLabel
      Left = 28
      Top = 12
      Width = 88
      Height = 29
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        38.3645833333333
        37.0416666666667
        15.875
        116.416666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'lbFooter'
      Color = clWhite
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
    object lbOstInSum3: TQRLabel
      Left = 904
      Top = 12
      Width = 104
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1195.91666666667
        15.875
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstInSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutSum5: TQRLabel
      Left = 1499
      Top = 12
      Width = 96
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1983.05208333333
        15.875
        127)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutSum5'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutSum6: TQRLabel
      Left = 1597
      Top = 12
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2112.69791666667
        15.875
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutSum6'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutSum7: TQRLabel
      Left = 1705
      Top = 12
      Width = 96
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2255.57291666667
        15.875
        127)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutSum7'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstInCount: TQRLabel
      Left = 441
      Top = 12
      Width = 82
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        583.40625
        15.875
        108.479166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstInCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstCount: TQRLabel
      Left = 1805
      Top = 12
      Width = 73
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2387.86458333333
        15.875
        96.5729166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbOstOutCount: TQRLabel
      Left = 1009
      Top = 12
      Width = 70
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1334.82291666667
        15.875
        92.6041666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbOstOutCount'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
  end
  object PageHeaderBand: TQRBand
    Left = 76
    Top = 121
    Width = 2094
    Height = 36
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
      47.625
      2770.1875)
    BandType = rbPageHeader
    object lbPage: TQRExpr
      Left = 1110
      Top = 4
      Width = 1016
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        1468.4375
        5.29166666666667
        1344.08333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = #39#1057#1090#1088#1072#1085#1080#1094#1072' '#39'+PAGENUMBER'
      FontSize = 8
    end
  end
  object InnerSummaryBand: TQRChildBand
    Left = 76
    Top = 727
    Width = 2094
    Height = 60
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = InnerSummaryBandBeforePrint
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
      79.375
      2770.1875)
    ParentBand = SummaryBand
    object QRLabel10: TQRLabel
      Left = 28
      Top = 28
      Width = 468
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.6875
        37.0416666666667
        37.0416666666667
        619.125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1087#1086' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1084#1091' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1102' :'
      Color = clWhite
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
    object lbInnerCnt: TQRLabel
      Left = 1005
      Top = 32
      Width = 75
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1329.53125
        42.3333333333333
        99.21875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerCnt'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerOutSum1: TQRLabel
      Left = 1081
      Top = 32
      Width = 95
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1430.07291666667
        42.3333333333333
        125.677083333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerOutSum1'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerOutSum2: TQRLabel
      Left = 1177
      Top = 32
      Width = 106
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1557.07291666667
        42.3333333333333
        140.229166666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerOutSum2'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerOutSum3: TQRLabel
      Left = 1284
      Top = 32
      Width = 101
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1698.625
        42.3333333333333
        133.614583333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerOutSum3'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerOutSum4: TQRLabel
      Left = 1387
      Top = 32
      Width = 108
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1834.88541666667
        42.3333333333333
        142.875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerOutSum4'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerOutSum5: TQRLabel
      Left = 1499
      Top = 32
      Width = 95
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1983.05208333333
        42.3333333333333
        125.677083333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerOutSum5'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerOutSum6: TQRLabel
      Left = 1595
      Top = 32
      Width = 108
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2110.05208333333
        42.3333333333333
        142.875)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerOutSum6'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerOutSum7: TQRLabel
      Left = 1705
      Top = 32
      Width = 96
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2255.57291666667
        42.3333333333333
        127)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerOutSum7'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object lbInnerInSum1: TQRLabel
      Left = 686
      Top = 32
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        907.520833333333
        42.3333333333333
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerInSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbInnerInSum2: TQRLabel
      Left = 795
      Top = 32
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1051.71875
        42.3333333333333
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerInSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbInnerInSum3: TQRLabel
      Left = 903
      Top = 32
      Width = 102
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        1194.59375
        42.3333333333333
        134.9375)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerInSum3'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbInnerSum1: TQRLabel
      Left = 1882
      Top = 32
      Width = 105
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2489.72916666667
        42.3333333333333
        138.90625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerSum1'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object lbInnerSum2: TQRLabel
      Left = 1988
      Top = 32
      Width = 104
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        33.0729166666667
        2629.95833333333
        42.3333333333333
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lbInnerSum2'
      Color = clWhite
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
  end
  object qry: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select qry.*,'
      'product.nds, product.dim,'
      
        'get_product_name(product.name, class.smallname, produser.smallna' +
        'me, product.len) product'
      'from query_ostatok2(:clientid,null,:date1,:date2) qry'
      'left join product on product.prodid=qry.prodid'
      'left join class on class.classid=product.classid'
      'left join produser on produser.produserid=product.produserid'
      '')
    Left = 16
    Top = 17
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
  object qryDoc: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select skind, get_doc_name(kind, skind, docno, date1, sum0) doc'
      'from doc where docid=:docid'
      '')
    Left = 56
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        ParamType = ptUnknown
      end>
  end
  object qryInner: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cnt,'
      'insum-inndssum insum2, inndssum, insum,'
      'outsum-outnalogsum-outndssum-insum+inndssum ostsum,'
      'outsum-outnalogsum-insum ostsum2,'
      
        'outsum-outnalogsum-outndssum outsum2, outndssum, outsum-outnalog' +
        'sum outsum, outnalogsum'
      'from query_book_inner(:clientid,:date1,:date2)')
    Left = 96
    Top = 16
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
