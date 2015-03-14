object fr_pratik_puan_hesabi: Tfr_pratik_puan_hesabi
  Left = 289
  Top = 237
  Width = 571
  Height = 419
  Caption = 'Pratik Puan Hesab'#305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 563
    Height = 199
    Align = alClient
    Caption = ' Bir Form'#252'l Se'#231'iniz '
    TabOrder = 1
    object gr_formul: TcxGrid
      Left = 2
      Top = 15
      Width = 559
      Height = 182
      Align = alClient
      TabOrder = 0
      object formuller: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.Filter.Enabled = False
        DataController.DataSource = ara_formul
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.CustomizeDialog = False
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object formulleraciklama: TcxGridDBColumn
          Caption = 'A'#231#305'klama'
          DataBinding.FieldName = 'aciklama'
          Width = 113
        end
        object formullerformul_1: TcxGridDBColumn
          Caption = 'Form'#252'l 1'
          DataBinding.FieldName = 'formul_1'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_2: TcxGridDBColumn
          Caption = 'Form'#252'l 2'
          DataBinding.FieldName = 'formul_2'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_3: TcxGridDBColumn
          Caption = 'Form'#252'l 3'
          DataBinding.FieldName = 'formul_3'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_4: TcxGridDBColumn
          Caption = 'Form'#252'l 4'
          DataBinding.FieldName = 'formul_4'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_5: TcxGridDBColumn
          Caption = 'Form'#252'l 5'
          DataBinding.FieldName = 'formul_5'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_6: TcxGridDBColumn
          Caption = 'Form'#252'l 6'
          DataBinding.FieldName = 'formul_6'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formulleryanlis_dogru_orani: TcxGridDBColumn
          Caption = 'Y/D'
          DataBinding.FieldName = 'yanlis_dogru_orani'
        end
        object formullerid: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'id'
        end
      end
      object level2: TcxGridLevel
        GridView = formuller
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 199
    Width = 563
    Height = 186
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bt_hesapla: TBitBtn
      Left = 326
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Hesapla >>'
      TabOrder = 1
      OnClick = bt_hesaplaClick
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 321
      Height = 186
      Align = alLeft
      Caption = ' Do'#287'ru ve Yanl'#305#351' Saylar'#305'n'#305' veya Netleri Girin '
      TabOrder = 0
      object Label6: TLabel
        Left = 3
        Top = 20
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'T'#252'rk'#231'e Do'#287'ru Say'#305's'#305
      end
      object Label7: TLabel
        Left = 3
        Top = 39
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sosyal-1 Do'#287'ru Say'#305's'#305
      end
      object Label8: TLabel
        Left = 3
        Top = 62
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Matematik-1 Do'#287'ru Say'#305's'#305
      end
      object Label9: TLabel
        Left = 3
        Top = 83
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fen-1 Do'#287'ru Say'#305's'#305
      end
      object Label10: TLabel
        Left = 156
        Top = 20
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label11: TLabel
        Left = 156
        Top = 41
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label12: TLabel
        Left = 156
        Top = 62
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label13: TLabel
        Left = 156
        Top = 83
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label1: TLabel
        Left = 260
        Top = 20
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object Label2: TLabel
        Left = 260
        Top = 41
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object Label3: TLabel
        Left = 260
        Top = 62
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object Label4: TLabel
        Left = 260
        Top = 83
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object Label5: TLabel
        Left = 3
        Top = 104
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ed-Sos Do'#287'ru Say'#305's'#305
      end
      object Label14: TLabel
        Left = 3
        Top = 125
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sosyal-2 Do'#287'ru Say'#305's'#305
      end
      object Label15: TLabel
        Left = 3
        Top = 146
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Matematik-2 Do'#287'ru Say'#305's'#305
      end
      object Label16: TLabel
        Left = 3
        Top = 167
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fen-2 Do'#287'ru Say'#305's'#305
      end
      object Label17: TLabel
        Left = 156
        Top = 104
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label18: TLabel
        Left = 156
        Top = 125
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label19: TLabel
        Left = 156
        Top = 146
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label20: TLabel
        Left = 156
        Top = 167
        Width = 58
        Height = 13
        Caption = 'Yanl'#305#351' Say'#305's'#305
      end
      object Label21: TLabel
        Left = 260
        Top = 104
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object Label22: TLabel
        Left = 260
        Top = 125
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object Label23: TLabel
        Left = 260
        Top = 146
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object Label24: TLabel
        Left = 260
        Top = 167
        Width = 17
        Height = 13
        Caption = 'Net'
      end
      object tx_turkce_dogru: TcxTextEdit
        Left = 125
        Top = 16
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 0
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_sosyal1_dogru: TcxTextEdit
        Left = 125
        Top = 37
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 2
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_matematik1_dogru: TcxTextEdit
        Left = 125
        Top = 58
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 4
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_fen1_dogru: TcxTextEdit
        Left = 125
        Top = 79
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 6
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_turkce_yanlis: TcxTextEdit
        Left = 220
        Top = 16
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 1
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_sosyal1_yanlis: TcxTextEdit
        Left = 220
        Top = 37
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 3
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_matematik1_yanlis: TcxTextEdit
        Left = 220
        Top = 58
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 5
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_fen1_yanlis: TcxTextEdit
        Left = 220
        Top = 79
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 7
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_fen1_net: TcxTextEdit
        Left = 280
        Top = 79
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 19
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_matematik1_net: TcxTextEdit
        Left = 280
        Top = 58
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 18
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_sosyal1_net: TcxTextEdit
        Left = 280
        Top = 37
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 17
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_turkce_net: TcxTextEdit
        Left = 280
        Top = 16
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 16
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_fen2_dogru: TcxTextEdit
        Left = 125
        Top = 163
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 14
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_matematik2_dogru: TcxTextEdit
        Left = 125
        Top = 142
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 12
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_sosyal2_dogru: TcxTextEdit
        Left = 125
        Top = 121
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 10
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_edsos_dogru: TcxTextEdit
        Left = 125
        Top = 100
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 8
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_fen2_yanlis: TcxTextEdit
        Left = 220
        Top = 163
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 15
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_fen2_yanlisKeyPress
      end
      object tx_matematik2_yanlis: TcxTextEdit
        Left = 220
        Top = 142
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 13
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_sosyal2_yanlis: TcxTextEdit
        Left = 220
        Top = 121
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 11
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_edsos_yanlis: TcxTextEdit
        Left = 220
        Top = 100
        Width = 29
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        TabOrder = 9
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_edsos_net: TcxTextEdit
        Left = 280
        Top = 100
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 20
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_sosyal2_net: TcxTextEdit
        Left = 280
        Top = 121
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 21
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_matematik2_net: TcxTextEdit
        Left = 280
        Top = 142
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 22
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_turkce_dogruKeyPress
      end
      object tx_fen2_net: TcxTextEdit
        Left = 280
        Top = 163
        Width = 35
        Height = 21
        BeepOnEnter = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 4
        TabOrder = 23
        Text = '0'
        OnEnter = tx_turkce_dogruEnter
        OnKeyPress = tx_fen2_netKeyPress
      end
    end
    object GroupBox3: TGroupBox
      Left = 409
      Top = 0
      Width = 154
      Height = 186
      Align = alRight
      Caption = ' Puanlar '
      TabOrder = 2
      object lb_puan_3: TcxLabel
        Left = 95
        Top = 95
        Width = 56
        Height = 17
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object lb_puan_2: TcxLabel
        Left = 95
        Top = 71
        Width = 56
        Height = 17
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object lb_puan_1: TcxLabel
        Left = 95
        Top = 47
        Width = 56
        Height = 17
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object cxLabel3: TcxLabel
        Left = 0
        Top = 47
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'Say'#305'sal-1/Fen A.P'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxLabel4: TcxLabel
        Left = 0
        Top = 71
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'S'#246'zel-1/Toplam P.'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxLabel5: TcxLabel
        Left = 0
        Top = 95
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'E'#351'it A'#287#305'rl'#305'k-1'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object lb_formul: TcxLabel
        Left = 6
        Top = 15
        Width = 142
        Height = 30
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Transparent = True
        Properties.WordWrap = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object cxLabel1: TcxLabel
        Left = 0
        Top = 117
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'Say'#305'sal-2'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object lb_puan_4: TcxLabel
        Left = 95
        Top = 117
        Width = 56
        Height = 17
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object lb_puan_5: TcxLabel
        Left = 95
        Top = 141
        Width = 56
        Height = 17
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object cxLabel7: TcxLabel
        Left = 0
        Top = 141
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'S'#246'zel-2'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxLabel8: TcxLabel
        Left = 0
        Top = 165
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'E'#351'it A'#287#305'rl'#305'k-2'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object lb_puan_6: TcxLabel
        Left = 95
        Top = 165
        Width = 56
        Height = 17
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
    end
  end
  object ara_formul: TDataSource
    DataSet = tablo_formul
    Left = 148
    Top = 124
  end
  object hesap1: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2')
    Left = 424
    Top = 100
  end
  object hesap2: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2')
    Left = 468
    Top = 96
  end
  object hesap3: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2')
    Left = 508
    Top = 92
  end
  object hesap6: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2')
    Left = 520
    Top = 148
  end
  object hesap5: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2')
    Left = 472
    Top = 148
  end
  object hesap4: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2')
    Left = 428
    Top = 152
  end
  object tablo_formul: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sinavformulleri')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 348
    Top = 96
    object tablo_formulid: TIntegerField
      FieldName = 'id'
    end
    object tablo_formulformul_6: TStringField
      FieldName = 'formul_6'
      Size = 255
    end
    object tablo_formulformul_5: TStringField
      FieldName = 'formul_5'
      Size = 255
    end
    object tablo_formulformul_4: TStringField
      FieldName = 'formul_4'
      Size = 255
    end
    object tablo_formulformul_3: TStringField
      FieldName = 'formul_3'
      Size = 255
    end
    object tablo_formulformul_2: TStringField
      FieldName = 'formul_2'
      Size = 255
    end
    object tablo_formulformul_1: TStringField
      FieldName = 'formul_1'
      Size = 255
    end
    object tablo_formulyanlis_dogru_orani: TIntegerField
      FieldName = 'yanlis_dogru_orani'
    end
    object tablo_formulaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
  end
end
