object ChartDialog: TChartDialog
  Left = 214
  Top = 100
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1076#1080#1072#1075#1088#1072#1084#1084
  ClientHeight = 248
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object General: TPageControl
    Left = 0
    Top = 0
    Width = 338
    Height = 248
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = UpdateAxis
    object TabSheet4: TTabSheet
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 330
        Height = 97
        Align = alTop
        Shape = bsBottomLine
      end
      object Label3: TLabel
        Left = 8
        Top = 15
        Width = 60
        Height = 13
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' :'
      end
      object Label4: TLabel
        Left = 31
        Top = 134
        Width = 100
        Height = 13
        Caption = #1058#1086#1095#1077#1082' '#1085#1072' '#1089#1090#1088#1072#1085#1080#1094#1091' :'
      end
      object PageEdit: TEdit
        Left = 175
        Top = 132
        Width = 65
        Height = 21
        TabOrder = 0
        Text = '0'
        OnChange = PageEditChange
      end
      object PageUpDown: TUpDown
        Left = 240
        Top = 132
        Width = 15
        Height = 21
        Associate = PageEdit
        TabOrder = 1
      end
      object PageLastScale: TCheckBox
        Left = 31
        Top = 160
        Width = 223
        Height = 17
        Alignment = taLeftJustify
        Caption = #1052#1072#1096#1090#1072#1073#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1089#1090#1088#1072#1085#1080#1094#1091
        TabOrder = 2
        OnClick = PageLastScaleClick
      end
      object TitleMemo: TMemo
        Left = 80
        Top = 13
        Width = 241
        Height = 44
        ScrollBars = ssVertical
        TabOrder = 3
        WordWrap = False
        OnChange = ChartTitleChange
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1057#1077#1088#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 330
        Height = 220
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 89
          Height = 216
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel3'
          TabOrder = 0
          object SeriesList: TCheckListBox
            Left = 0
            Top = 0
            Width = 89
            Height = 111
            OnClickCheck = ActiveCheckBoxClick
            Align = alClient
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 0
            OnClick = SeriesListClick
          end
          object Panel4: TPanel
            Left = 0
            Top = 111
            Width = 89
            Height = 105
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel4'
            TabOrder = 1
            object CreateBtn: TButton
              Left = 0
              Top = 42
              Width = 89
              Height = 21
              Caption = '  '#1057#1086#1079#1076#1072#1090#1100' ...  '
              TabOrder = 0
              OnClick = SeriesAdd
            end
            object ChangeBtn: TButton
              Left = 0
              Top = 63
              Width = 89
              Height = 21
              Caption = ' '#1048#1079#1084#1077#1085#1080#1090#1100' ...'
              TabOrder = 1
              OnClick = SeriesChangeType
            end
            object DeleteBtn: TButton
              Left = 0
              Top = 84
              Width = 89
              Height = 21
              Caption = #1059#1076#1072#1083#1080#1090#1100
              TabOrder = 2
              OnClick = SeriesDelete
            end
            object UpBtn: TButton
              Left = 0
              Top = 0
              Width = 89
              Height = 21
              Caption = #1053#1072#1074#1077#1088#1093
              TabOrder = 3
              OnClick = SeriesUp
            end
            object DownBtn: TButton
              Left = 0
              Top = 21
              Width = 89
              Height = 21
              Caption = #1042#1085#1080#1079
              TabOrder = 4
              OnClick = SeriesDown
            end
          end
        end
        object SeriesPageControl: TPageControl
          Left = 89
          Top = 0
          Width = 237
          Height = 216
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 1
          object TabSheet5: TTabSheet
            Caption = #1042#1080#1076
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label7: TLabel
              Left = 5
              Top = 16
              Width = 76
              Height = 13
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            end
            object SeriesTitleEdit: TEdit
              Left = 90
              Top = 13
              Width = 135
              Height = 21
              TabOrder = 0
              Text = 'SeriesTitleEdit'
              OnChange = SeriesTitleEditChange
            end
            object GroupBox6: TGroupBox
              Left = 19
              Top = 104
              Width = 185
              Height = 73
              Caption = '        '#1052#1077#1090#1082#1080' '
              TabOrder = 1
              object MarksBtn: TCheckBox
                Left = 10
                Top = -2
                Width = 13
                Height = 17
                Alignment = taLeftJustify
                TabOrder = 0
                OnClick = MarksBtnClick
              end
              object MarksComboBox: TComboBox
                Left = 16
                Top = 20
                Width = 153
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 1
                OnChange = MarksComboBoxChange
                Items.Strings = (
                  #1047#1085#1072#1095#1077#1085#1080#1077
                  #1055#1088#1086#1094#1077#1085#1090
                  #1052#1077#1090#1082#1072
                  #1052#1077#1090#1082#1072' + '#1055#1088#1086#1094#1077#1085#1090
                  #1052#1077#1090#1082#1072' + '#1047#1085#1072#1095#1077#1085#1080#1077
                  #1051#1077#1075#1077#1085#1076#1072
                  #1055#1088#1086#1094#1077#1085#1090' (total)'
                  #1052#1077#1090#1082#1072' + '#1055#1088#1086#1094#1077#1085#1090' (total)'
                  'X '#1079#1085#1072#1095#1077#1085#1080#1077)
              end
              object MarksClipBtn: TCheckBox
                Left = 16
                Top = 48
                Width = 63
                Height = 17
                Caption = 'Clipped'
                TabOrder = 2
                OnClick = MarksClipBtnClick
              end
            end
            object GroupBox7: TGroupBox
              Left = 19
              Top = 45
              Width = 185
              Height = 51
              Caption = '        '#1062#1074#1077#1090' '
              TabOrder = 2
              object RandomColor: TCheckBox
                Left = 10
                Top = -3
                Width = 13
                Height = 19
                Alignment = taLeftJustify
                TabOrder = 0
                OnClick = RandomColorClick
              end
              object SeriesColor: TfcColorCombo
                Left = 17
                Top = 19
                Width = 152
                Height = 21
                ColorDialogOptions = [cdoEnabled, cdoPreventFullOpen, cdoFullOpen, cdoSolidColor, cdoAnyColor]
                ColorListOptions.Font.Charset = DEFAULT_CHARSET
                ColorListOptions.Font.Color = clWindowText
                ColorListOptions.Font.Height = -11
                ColorListOptions.Font.Name = 'MS Sans Serif'
                ColorListOptions.Font.Style = []
                DropDownCount = 8
                ReadOnly = False
                SelectedColor = 268435455
                TabOrder = 1
                OnChange = SeriesColorChange
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = #1044#1072#1085#1085#1099#1077
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label5: TLabel
              Left = 21
              Top = 80
              Width = 37
              Height = 13
              Caption = 'X Value'
            end
            object Label6: TLabel
              Left = 21
              Top = 102
              Width = 37
              Height = 13
              Caption = 'Y Value'
            end
            object XValueLabel: TLabel
              Left = 22
              Top = 56
              Width = 36
              Height = 13
              Caption = 'X Label'
            end
            object Label8: TLabel
              Left = 10
              Top = 14
              Width = 58
              Height = 13
              Caption = 'Data source'
            end
            object Label9: TLabel
              Left = 5
              Top = 128
              Width = 53
              Height = 13
              Caption = 'Color value'
            end
            object DataSourceEdit: TComboBox
              Left = 80
              Top = 11
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemHeight = 0
              TabOrder = 0
              OnChange = DataSourceEditChange
            end
            object XLabelEdit: TComboBox
              Left = 67
              Top = 51
              Width = 105
              Height = 21
              ItemHeight = 0
              TabOrder = 1
              Text = 'XLabelEdit'
              OnChange = XLabelEditChange
            end
            object XValueEdit: TComboBox
              Left = 67
              Top = 75
              Width = 105
              Height = 21
              ItemHeight = 0
              TabOrder = 2
              Text = 'XValueEdit'
              OnChange = XValueEditChange
            end
            object YValueEdit: TComboBox
              Left = 67
              Top = 99
              Width = 105
              Height = 21
              ItemHeight = 0
              TabOrder = 3
              Text = 'YValueEdit'
              OnChange = YValueEditChange
            end
            object XValueDateBtn: TCheckBox
              Left = 180
              Top = 77
              Width = 44
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Date'
              TabOrder = 4
              OnClick = XValueDateBtnClick
            end
            object YValueDateBtn: TCheckBox
              Left = 180
              Top = 101
              Width = 44
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Date'
              TabOrder = 5
              OnClick = YValueDateBtnClick
            end
            object ColorValueEdit: TComboBox
              Left = 67
              Top = 123
              Width = 105
              Height = 21
              ItemHeight = 0
              TabOrder = 6
              Text = 'ColorValueEdit'
              OnChange = ColorValueEditChange
            end
          end
          object TabSheet6: TTabSheet
            Caption = #1044#1088#1091#1075#1086#1077
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object SeriesNotebook: TNotebook
              Left = 0
              Top = 0
              Width = 229
              Height = 188
              Align = alClient
              PageIndex = 1
              TabOrder = 0
              object TPage
                Left = 0
                Top = 0
                Caption = 'Line'
                ExplicitWidth = 0
                ExplicitHeight = 0
                object PointsBtn: TCheckBox
                  Left = 12
                  Top = 21
                  Width = 69
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = #1058#1086#1095#1082#1080
                  TabOrder = 0
                  OnClick = PointsBtnClick
                end
                object PointStyle: TComboBox
                  Left = 97
                  Top = 18
                  Width = 120
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  TabOrder = 1
                  OnChange = PointStyleChange
                  Items.Strings = (
                    #1050#1074#1072#1076#1088#1072#1090
                    #1050#1088#1091#1075
                    #1058#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082
                    #1054#1073#1088'. '#1090#1088#1077#1091#1075#1086#1083#1100#1085#1080#1082
                    #1050#1088#1077#1089#1090#1080#1082
                    #1044#1080#1072#1075'. '#1082#1088#1077#1089#1090#1080#1082
                    #1047#1074#1077#1079#1076#1072
                    #1041#1088#1080#1083#1083#1080#1072#1085#1090
                    #1058#1086#1095#1082#1072)
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Bar'
                ExplicitWidth = 0
                ExplicitHeight = 0
                object Label2: TLabel
                  Left = 16
                  Top = 13
                  Width = 36
                  Height = 13
                  Caption = #1057#1090#1080#1083#1100' :'
                end
                object MultiBarStyle: TRadioGroup
                  Left = 17
                  Top = 41
                  Width = 130
                  Height = 87
                  Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1089#1077#1088#1080#1081
                  ItemIndex = 0
                  Items.Strings = (
                    'None'
                    'Side'
                    'Stocked'
                    'Stocked 100%')
                  TabOrder = 0
                  OnClick = MultiBarStyleClick
                end
                object BarStyleEdit: TComboBox
                  Left = 64
                  Top = 10
                  Width = 145
                  Height = 21
                  Style = csDropDownList
                  ItemHeight = 13
                  TabOrder = 1
                  OnChange = BarStyleEditChange
                  Items.Strings = (
                    #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082#1080
                    #1055#1080#1088#1072#1084#1080#1076#1099
                    #1054#1073#1088'. '#1087#1080#1088#1072#1084#1080#1076#1099
                    #1062#1080#1083#1080#1085#1076#1088#1099
                    #1069#1083#1083#1080#1087#1089#1099
                    #1057#1090#1088#1077#1083#1082#1080
                    #1055#1088#1103#1084'. '#1089' '#1075#1088#1072#1076'. '#1079#1072#1083#1080#1074#1082#1086#1081)
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Area'
                ExplicitWidth = 0
                ExplicitHeight = 0
                object MultiAreaStyle: TRadioGroup
                  Left = 25
                  Top = 17
                  Width = 130
                  Height = 87
                  Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1089#1077#1088#1080#1081
                  ItemIndex = 0
                  Items.Strings = (
                    'None'
                    'Stocked'
                    'Stocked 100%')
                  TabOrder = 0
                  OnClick = MultiAreaStyleClick
                end
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Pie'
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
              object TPage
                Left = 0
                Top = 0
                Caption = 'Any'
                ExplicitWidth = 0
                ExplicitHeight = 0
              end
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 8
        Top = 75
        Width = 153
        Height = 110
        Caption = '        '#1043#1088#1072#1076#1080#1077#1085#1090
        TabOrder = 0
        object GradientBtn: TCheckBox
          Left = 10
          Top = -2
          Width = 18
          Height = 17
          TabOrder = 0
          OnClick = GradientBtnClick
        end
        object EndGradientColor: TfcColorCombo
          Left = 23
          Top = 20
          Width = 103
          Height = 21
          ColorDialogOptions = [cdoEnabled, cdoPreventFullOpen, cdoFullOpen, cdoSolidColor, cdoAnyColor]
          ColorListOptions.Font.Charset = DEFAULT_CHARSET
          ColorListOptions.Font.Color = clWindowText
          ColorListOptions.Font.Height = -11
          ColorListOptions.Font.Name = 'MS Sans Serif'
          ColorListOptions.Font.Style = []
          DropDownCount = 8
          ReadOnly = False
          SelectedColor = 268435455
          TabOrder = 1
          OnChange = EndGradientColorChange
        end
        object StartGradientColor: TfcColorCombo
          Left = 23
          Top = 42
          Width = 103
          Height = 21
          ColorDialogOptions = [cdoEnabled, cdoPreventFullOpen, cdoFullOpen, cdoSolidColor, cdoAnyColor]
          ColorListOptions.Font.Charset = DEFAULT_CHARSET
          ColorListOptions.Font.Color = clWindowText
          ColorListOptions.Font.Height = -11
          ColorListOptions.Font.Name = 'MS Sans Serif'
          ColorListOptions.Font.Style = []
          DropDownCount = 8
          ReadOnly = False
          SelectedColor = 268435455
          TabOrder = 2
          OnChange = StartGradientColorChange
        end
        object GradientDirection: TComboBox
          Left = 24
          Top = 75
          Width = 102
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
          OnChange = GradientDirectionChange
          Items.Strings = (
            #1057#1074#1077#1088#1093#1091' '#1074#1085#1080#1079
            #1057#1085#1080#1079#1091' '#1085#1072#1074#1077#1088#1093
            #1057#1083#1077#1074#1072' '#1085#1072#1087#1088#1072#1074#1086
            #1057#1087#1088#1072#1074#1072' '#1085#1072#1083#1077#1074#1086)
        end
      end
      object AxisBtn: TCheckBox
        Left = 178
        Top = 94
        Width = 82
        Height = 17
        Caption = #1054#1089#1080
        TabOrder = 1
        OnClick = AxisBtnClick
      end
      object FrameBtn: TCheckBox
        Left = 178
        Top = 73
        Width = 81
        Height = 17
        Caption = #1056#1072#1084#1082#1072
        TabOrder = 2
        OnClick = FrameBtnClick
      end
      object GroupBox2: TGroupBox
        Left = 168
        Top = 8
        Width = 153
        Height = 57
        Caption = '      3D Walls'
        TabOrder = 3
        object LeftWall: TfcColorCombo
          Left = 18
          Top = 22
          Width = 38
          Height = 21
          ColorDialogOptions = [cdoEnabled, cdoPreventFullOpen, cdoFullOpen, cdoSolidColor, cdoAnyColor]
          ColorListOptions.Font.Charset = DEFAULT_CHARSET
          ColorListOptions.Font.Color = clWindowText
          ColorListOptions.Font.Height = -11
          ColorListOptions.Font.Name = 'MS Sans Serif'
          ColorListOptions.Font.Style = []
          ColorListOptions.Options = [ccoShowStandardColors]
          DropDownCount = 8
          ReadOnly = False
          SelectedColor = 268435455
          TabOrder = 0
          OnChange = LeftWallChange
        end
        object BottomWall: TfcColorCombo
          Left = 96
          Top = 22
          Width = 38
          Height = 21
          ColorDialogOptions = [cdoEnabled, cdoPreventFullOpen, cdoFullOpen, cdoSolidColor, cdoAnyColor]
          ColorListOptions.Font.Charset = DEFAULT_CHARSET
          ColorListOptions.Font.Color = clWindowText
          ColorListOptions.Font.Height = -11
          ColorListOptions.Font.Name = 'MS Sans Serif'
          ColorListOptions.Font.Style = []
          ColorListOptions.Options = [ccoShowStandardColors]
          DropDownCount = 8
          ReadOnly = False
          SelectedColor = 268435455
          TabOrder = 1
          OnChange = BottomWallChange
        end
        object WallsBtn: TCheckBox
          Left = 9
          Top = -2
          Width = 17
          Height = 17
          Caption = 'WallsBtn'
          TabOrder = 2
          OnClick = WallsBtnClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 8
        Width = 153
        Height = 57
        Caption = '        '#1051#1077#1075#1077#1085#1076#1072
        TabOrder = 4
        object LegendComboBox: TComboBox
          Left = 17
          Top = 21
          Width = 120
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = LegendComboBoxChange
          Items.Strings = (
            #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
            #1053#1072#1079#1074#1072#1085#1080#1103' '#1089#1077#1088#1080#1081
            #1047#1085#1072#1095#1077#1085#1080#1103' '#1089#1077#1088#1080#1081
            #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1103)
        end
        object LegendBtn: TCheckBox
          Left = 11
          Top = -2
          Width = 21
          Height = 17
          TabOrder = 1
          OnClick = LegendBtnClick
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1054#1089#1080
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label15: TLabel
        Left = 101
        Top = 41
        Width = 73
        Height = 13
        Caption = #1056#1072#1079#1084#1077#1088' '#1084#1077#1090#1082#1080
      end
      object AxisList: TListBox
        Left = 0
        Top = 0
        Width = 89
        Height = 220
        Align = alLeft
        ItemHeight = 13
        Items.Strings = (
          #1051#1077#1074#1072#1103
          #1053#1080#1078#1085#1103#1103
          #1055#1088#1072#1074#1072#1103
          #1042#1077#1088#1093#1085#1103#1103)
        TabOrder = 0
        OnClick = UpdateAxis
      end
      object AxisSizeEdit: TEdit
        Left = 190
        Top = 39
        Width = 40
        Height = 21
        TabOrder = 1
        Text = '0'
        OnChange = AxisEditChange
      end
      object UpDown1: TUpDown
        Left = 230
        Top = 39
        Width = 12
        Height = 21
        Associate = AxisSizeEdit
        TabOrder = 2
      end
      object AxisVisibleCheckBox: TCheckBox
        Left = 99
        Top = 6
        Width = 21
        Height = 17
        TabOrder = 3
        OnClick = AxisEditChange
      end
      object AxisMultiLineCheckBox: TCheckBox
        Left = 99
        Top = 70
        Width = 143
        Height = 17
        Alignment = taLeftJustify
        Caption = #1055#1077#1088#1077#1085#1086#1089' '#1089#1090#1088#1086#1082
        TabOrder = 4
        OnClick = AxisEditChange
      end
    end
    object TabSheet7: TTabSheet
      Caption = '3D '#1069#1092#1092#1077#1082#1090#1099
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        Left = 8
        Top = 5
        Width = 313
        Height = 117
        Caption = ' 3 Dimantion        '
        TabOrder = 0
        object Label10: TLabel
          Left = 27
          Top = 44
          Width = 40
          Height = 13
          Caption = 'Rotation'
        end
        object Label11: TLabel
          Left = 23
          Top = 66
          Width = 44
          Height = 13
          Caption = 'Elevation'
        end
        object RotationLabel: TLabel
          Left = 278
          Top = 47
          Width = 14
          Height = 13
          Caption = '0%'
        end
        object ElevationLabel: TLabel
          Left = 278
          Top = 67
          Width = 14
          Height = 13
          Caption = '0%'
        end
        object Label1: TLabel
          Left = 53
          Top = 86
          Width = 14
          Height = 13
          Caption = 'Tilt'
        end
        object TiltLabel: TLabel
          Left = 278
          Top = 87
          Width = 14
          Height = 13
          Caption = '0%'
        end
        object View3DLabel: TLabel
          Left = 279
          Top = 27
          Width = 14
          Height = 13
          Caption = '0%'
        end
        object OrthogonalBtn: TCheckBox
          Left = 13
          Top = 23
          Width = 73
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Orthogonal'
          TabOrder = 1
          OnClick = OrthogonalBtnClick
        end
        object RotationBar: TScrollBar
          Left = 95
          Top = 46
          Width = 178
          Height = 13
          LargeChange = 10
          Max = 360
          PageSize = 10
          TabOrder = 3
          OnChange = RotationBarChange
        end
        object ElevationBar: TScrollBar
          Left = 95
          Top = 66
          Width = 178
          Height = 13
          LargeChange = 10
          Max = 360
          PageSize = 10
          TabOrder = 4
          OnChange = ElevationBarChange
        end
        object TiltBar: TScrollBar
          Left = 95
          Top = 86
          Width = 178
          Height = 13
          LargeChange = 10
          Max = 360
          PageSize = 10
          TabOrder = 5
          OnChange = TiltBarChange
        end
        object View3DBtn: TCheckBox
          Left = 72
          Top = -1
          Width = 14
          Height = 17
          Alignment = taLeftJustify
          TabOrder = 0
          OnClick = View3DBtnClick
        end
        object View3DBar: TScrollBar
          Left = 95
          Top = 26
          Width = 178
          Height = 13
          LargeChange = 10
          Min = 1
          PageSize = 10
          Position = 1
          TabOrder = 2
          OnChange = View3DBarChange
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 128
        Width = 313
        Height = 84
        Caption = 'View'
        TabOrder = 1
        object Label12: TLabel
          Left = 44
          Top = 18
          Width = 27
          Height = 13
          Caption = 'Zoom'
        end
        object Label13: TLabel
          Left = 33
          Top = 39
          Width = 38
          Height = 13
          Caption = 'Offset X'
        end
        object Label14: TLabel
          Left = 33
          Top = 60
          Width = 38
          Height = 13
          Caption = 'Offset Y'
        end
        object ZoomLabel: TLabel
          Left = 278
          Top = 19
          Width = 14
          Height = 13
          Caption = '0%'
        end
        object XOffsetLabel: TLabel
          Left = 278
          Top = 40
          Width = 6
          Height = 13
          Caption = '0'
        end
        object YOffsetLabel: TLabel
          Left = 278
          Top = 59
          Width = 6
          Height = 13
          Caption = '0'
        end
        object ZoomBar: TScrollBar
          Left = 95
          Top = 19
          Width = 178
          Height = 13
          LargeChange = 10
          Max = 1000
          Min = 1
          PageSize = 10
          Position = 100
          TabOrder = 0
          OnChange = ZoomBarChange
        end
        object XOffsetBar: TScrollBar
          Left = 95
          Top = 39
          Width = 178
          Height = 13
          LargeChange = 10
          Max = 1000
          Min = -1000
          PageSize = 10
          TabOrder = 1
          OnChange = XOffsetBarChange
        end
        object YOffsetBar: TScrollBar
          Left = 95
          Top = 59
          Width = 178
          Height = 13
          LargeChange = 10
          Max = 1000
          Min = -1000
          PageSize = 10
          TabOrder = 2
          OnChange = YOffsetBarChange
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 338
    Top = 0
    Width = 102
    Height = 248
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object CloseBtn: TButton
      Left = 13
      Top = 24
      Width = 78
      Height = 23
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Default = True
      TabOrder = 0
      OnClick = CloseBtnClick
    end
    object SaveBtn: TButton
      Left = 13
      Top = 120
      Width = 78
      Height = 23
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      OnClick = SaveParams
    end
    object RestoreBtn: TButton
      Left = 13
      Top = 143
      Width = 78
      Height = 23
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 2
      OnClick = RestoreParams
    end
    object Button2: TButton
      Left = 13
      Top = 61
      Width = 78
      Height = 23
      Caption = #1055#1077#1095#1072#1090#1100' ...'
      Enabled = False
      TabOrder = 3
      OnClick = PrintChart
    end
    object Button3: TButton
      Left = 13
      Top = 84
      Width = 78
      Height = 23
      Caption = #1069#1082#1089#1087#1086#1088#1090' ...'
      Enabled = False
      TabOrder = 4
      OnClick = ExportChart
    end
  end
end
