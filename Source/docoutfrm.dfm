object frmRecRef: TfrmRecRef
  Left = 326
  Top = 274
  BorderStyle = bsSizeToolWin
  Caption = #1057#1089#1099#1083#1082#1080
  ClientHeight = 249
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object grdRec: TwwDBGrid
    Left = 0
    Top = 119
    Width = 600
    Height = 130
    LineStyle = gls3D
    ControlType.Strings = (
      'PRODUCT;CustomEdit;edtProd'
      'PRODUCTNAME;CustomEdit;edtProd'
      'PRODUCT2;CustomEdit;edtProd;F')
    Selected.Strings = (
      'DOCID'#9'5'#9#1050#1086#1076
      'DOC'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      'CLIENT'#9'20'#9#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      'RECID'#9'5'#9#8470'~'#1087'/'#1087
      'ALLCNT'#9'10'#9#1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'
      'PRICE'#9'10'#9#1062#1077#1085#1072
      'SUMM'#9'10'#9#1057#1091#1084#1084#1072)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = srcRec
    EditCalculated = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnCalcCellColors = grdRecCalcCellColors
    OnDblClick = grdRecSelect
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
    ExplicitTop = 91
    ExplicitHeight = 112
  end
  object grdInRec: TwwDBGrid
    Left = 0
    Top = 20
    Width = 600
    Height = 79
    LineStyle = gls3D
    ControlType.Strings = (
      'PRODUCT;CustomEdit;edtProd'
      'PRODUCTNAME;CustomEdit;edtProd'
      'PRODUCT2;CustomEdit;edtProd;F')
    Selected.Strings = (
      'DOCID'#9'5'#9#1050#1086#1076#9#9
      'DOC'#9'30'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#9#9
      'CLIENT'#9'20'#9#1055#1088#1086#1076#1072#1074#1077#1094#9#9
      'RECID'#9'5'#9#8470'~'#1087'/'#1087#9#9
      'ALLCNT'#9'10'#9#1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'#9#9
      'PRICE'#9'10'#9#1062#1077#1085#1072#9#9
      'SUMM'#9'10'#9#1057#1091#1084#1084#1072#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = srcInRec
    EditCalculated = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnCalcCellColors = grdRecCalcCellColors
    OnDblClick = grdRecSelect
    TitleImageList = Data.imgTitle
    PadColumnStyle = pcsPlain
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 20
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '     '#1055#1088#1080#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 99
    Width = 600
    Height = 20
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '     '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    ExplicitTop = 71
  end
  object srcRec: TDataSource
    DataSet = qryRec
    Left = 80
    Top = 128
  end
  object qryRec: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    CachedUpdates = True
    DataSource = DocForm.srcRec
    SQL.Strings = (
      'select '
      ''
      'doc_prod.docid, doc_prod.recid, doc_prod.kind, '
      'doc_prod.unit, doc_prod.cnt, '
      'doc_prod.unit * doc_prod.cnt allcnt, '
      'cast(doc_prod.price as double precision) price, '
      'round_curr(doc_prod.unit*doc_prod.cnt*doc_prod.price) summ,'
      
        'get_doc_name(doc.kind, doc.skind, doc.docno, doc.date1, doc.sum0' +
        ') doc,'
      'get_full_name(client.fullname, client.name) client'
      ''
      'from doc_prod'
      'left join doc on doc.docid=doc_prod.docid'
      'left join client on client.clientid=doc.clientid2'
      ''
      'where '
      
        '((doc_prod.indocid = :docid and doc_prod.inrecid = :recid) or (d' +
        'oc_prod.pdocid = :docid and doc_prod.precid = :recid))'
      ''
      'order by doc_prod.docid, doc_prod.recid ')
    Left = 48
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DOCID'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'RECID'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'docid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'recid'
        ParamType = ptUnknown
      end>
    object qryRecDOCID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'DOCID'
      Required = True
    end
    object qryRecDOC: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      DisplayWidth = 30
      FieldName = 'DOC'
      FixedChar = True
      Size = 50
    end
    object qryRecCLIENT: TIBStringField
      DisplayLabel = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      DisplayWidth = 20
      FieldName = 'CLIENT'
      FixedChar = True
      Size = 200
    end
    object qryRecRECID: TIntegerField
      DisplayLabel = #8470'~'#1087'/'#1087
      DisplayWidth = 5
      FieldName = 'RECID'
      Origin = 'DOC_PROD.RECID'
      Required = True
    end
    object qryRecALLCNT: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'
      DisplayWidth = 10
      FieldName = 'ALLCNT'
    end
    object qryRecPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = 'DOC_PROD.PRICE'
    end
    object qryRecSUMM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'SUMM'
    end
    object qryRecUNIT: TFloatField
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 10
      FieldName = 'UNIT'
      Origin = 'DOC_PROD.UNIT'
      Visible = False
    end
    object qryRecCNT: TFloatField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086'~'#1084#1077#1089#1090
      DisplayWidth = 10
      FieldName = 'CNT'
      Origin = 'DOC_PROD.CNT'
      Visible = False
    end
    object qryRecKIND: TSmallintField
      FieldName = 'KIND'
      Origin = 'DOC_PROD.KIND'
      Visible = False
    end
  end
  object qryInRec: TIBQuery
    Database = Data.db
    Transaction = Data.trDefault
    CachedUpdates = True
    DataSource = DocForm.srcRec
    SQL.Strings = (
      'select '
      ''
      'doc_prod.docid, doc_prod.recid, doc_prod.kind, '
      'doc_prod.unit, doc_prod.cnt, '
      'doc_prod.unit * doc_prod.cnt allcnt, '
      'cast(doc_prod.price as double precision) price, '
      'round_curr(doc_prod.unit*doc_prod.cnt*doc_prod.price) summ,'
      
        'get_doc_name(doc.kind, doc.skind, doc.docno, doc.date1, doc.sum0' +
        ') doc,'
      'get_full_name(client.fullname, client.name) client'
      ''
      'from doc_prod'
      'left join doc on doc.docid=doc_prod.docid'
      'left join client on client.clientid=doc.clientid1'
      ''
      'where '
      'doc_prod.docid = :indocid and doc_prod.recid = :inrecid'
      ''
      'order by doc_prod.docid, doc_prod.recid ')
    Left = 48
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INDOCID'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'INRECID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryInRecDOCID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'DOCID'
      Required = True
    end
    object qryInRecDOC: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      DisplayWidth = 30
      FieldName = 'DOC'
      FixedChar = True
      Size = 50
    end
    object qryInRecCLIENT: TIBStringField
      DisplayLabel = #1055#1088#1086#1076#1072#1074#1077#1094
      DisplayWidth = 20
      FieldName = 'CLIENT'
      FixedChar = True
      Size = 200
    end
    object qryInRecRECID: TIntegerField
      DisplayLabel = #8470'~'#1087'/'#1087
      DisplayWidth = 5
      FieldName = 'RECID'
      Origin = 'DOC_PROD.RECID'
      Required = True
    end
    object qryInRecALLCNT: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086'~('#1082#1075'/'#1096#1090')'
      DisplayWidth = 10
      FieldName = 'ALLCNT'
    end
    object qryInRecPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = 'DOC_PROD.PRICE'
    end
    object qryInRecSUMM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'SUMM'
    end
    object qryInRecUNIT: TFloatField
      DisplayLabel = #1042' '#1084#1077#1089#1090#1077
      DisplayWidth = 10
      FieldName = 'UNIT'
      Origin = 'DOC_PROD.UNIT'
      Visible = False
    end
    object qryInRecCNT: TFloatField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086'~'#1084#1077#1089#1090
      DisplayWidth = 10
      FieldName = 'CNT'
      Origin = 'DOC_PROD.CNT'
      Visible = False
    end
    object qryInRecKIND: TSmallintField
      FieldName = 'KIND'
      Origin = 'DOC_PROD.KIND'
      Visible = False
    end
  end
  object srcInRec: TDataSource
    DataSet = qryInRec
    Left = 80
    Top = 48
  end
end
