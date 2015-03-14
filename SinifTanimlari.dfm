object fr_sinif_tanimlari: Tfr_sinif_tanimlari
  Left = 220
  Top = 194
  Width = 759
  Height = 459
  Caption = 'S'#305'n'#305'f Tan'#305'mlar'#305
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
  object Splitter1: TSplitter
    Left = 313
    Top = 0
    Width = 2
    Height = 425
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 425
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    object gr_siniflar: TcxGrid
      Left = 1
      Top = 43
      Width = 311
      Height = 328
      Align = alClient
      TabOrder = 0
      OnEnter = gr_siniflarEnter
      object siniflar: TcxGridDBTableView
        DragMode = dmAutomatic
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Enabled = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Enabled = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Enabled = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Enabled = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Enabled = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Enabled = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Enabled = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Enabled = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ara_siniflar
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '# adet'
            Kind = skCount
            FieldName = 'sinif'
            Column = siniflarsinif
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.CustomizeDialog = False
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHiding = True
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object siniflardonem: TcxGridDBColumn
          Caption = 'D'#246'nem'
          DataBinding.FieldName = 'donem'
          PropertiesClassName = 'TcxComboBoxProperties'
          Options.Filtering = False
          Options.Grouping = False
          Width = 60
        end
        object siniflarsinif: TcxGridDBColumn
          Caption = 'S'#305'n'#305'f'
          DataBinding.FieldName = 'sinif'
          Options.Filtering = False
          Width = 73
        end
        object siniflardanisman: TcxGridDBColumn
          Caption = 'Dan'#305#351'man'#305
          DataBinding.FieldName = 'danisman'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Options.Filtering = False
          Width = 127
        end
        object siniflarderslik: TcxGridDBColumn
          Caption = 'Derslik'
          DataBinding.FieldName = 'derslik'
          Options.Filtering = False
          Width = 37
        end
      end
      object gr_siniflarLevel1: TcxGridLevel
        GridView = siniflar
      end
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Width = 311
      Height = 17
      Align = alTop
      Caption = 'S '#305' n '#305' f l a r'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold, fsUnderline]
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 371
      Width = 311
      Height = 53
      Align = alBottom
      Caption = ' S'#305'n'#305'f'#305'n Ait Oldu'#287'u Gruplar '
      TabOrder = 2
      object Label1: TLabel
        Left = 15
        Top = 17
        Width = 54
        Height = 13
        Caption = '1. Seviye'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 91
        Top = 17
        Width = 54
        Height = 13
        Caption = '2. Seviye'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 161
        Top = 17
        Width = 54
        Height = 13
        Caption = '3. Seviye'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 223
        Top = 6
        Width = 86
        Height = 26
        Alignment = taCenter
        Caption = 'Ders Ba'#351'lang'#305#231' Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object tx_grubu1: TcxDBLookupComboBox
        Left = 2
        Top = 30
        Width = 73
        Height = 21
        DataBinding.DataField = 'grup1'
        DataBinding.DataSource = ara_siniflar
        Properties.ClearKey = 46
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'adi'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'adi'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ara_grup1
        Properties.ReadOnly = False
        Properties.OnChange = tx_grubu1PropertiesChange
        TabOrder = 0
      end
      object tx_grubu2: TcxDBLookupComboBox
        Left = 77
        Top = 30
        Width = 73
        Height = 21
        DataBinding.DataField = 'grup2'
        DataBinding.DataSource = ara_siniflar
        Properties.ClearKey = 46
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'adi'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'adi'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ara_grup2
        Properties.ReadOnly = False
        Properties.OnChange = tx_grubu2PropertiesChange
        TabOrder = 1
      end
      object tx_grubu3: TcxDBLookupComboBox
        Left = 152
        Top = 30
        Width = 73
        Height = 21
        DataBinding.DataField = 'grup3'
        DataBinding.DataSource = ara_siniflar
        Properties.ClearKey = 46
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'adi'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'adi'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ara_grup3
        Properties.ReadOnly = False
        TabOrder = 2
      end
      object tx_ders_baslangic: TcxDBDateEdit
        Left = 225
        Top = 30
        Width = 86
        Height = 21
        DataBinding.DataField = 'ders_baslangic'
        DataBinding.DataSource = ara_siniflar
        TabOrder = 3
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 18
      Width = 311
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Label5: TLabel
        Left = 85
        Top = 6
        Width = 40
        Height = 13
        Caption = 'D'#246'nem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cm_don_kis: TcxComboBox
        Left = 131
        Top = 2
        Width = 77
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252)
        TabOrder = 0
        Text = 'T'#252'm'#252
        OnClick = cm_don_kisClick
      end
    end
  end
  object Panel2: TPanel
    Left = 315
    Top = 0
    Width = 436
    Height = 425
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object cxLabel2: TcxLabel
      Left = 1
      Top = 1
      Width = 434
      Height = 17
      Align = alTop
      Caption = 'D e r s   P r o g r a m '#305
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold, fsUnderline]
    end
    object gr_ders_programi: TcxGrid
      Left = 1
      Top = 18
      Width = 434
      Height = 406
      Align = alClient
      TabOrder = 1
      OnEnter = gr_ders_programiEnter
      object ders_programi: TcxGridDBTableView
        OnKeyPress = ders_programiKeyPress
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Enabled = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Enabled = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Enabled = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Enabled = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Enabled = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Enabled = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Enabled = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Enabled = False
        NavigatorButtons.Filter.Visible = False
        OnCellClick = ders_programiCellClick
        DataController.DataSource = ara_ders_programi
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ' adet'
            Kind = skCount
            FieldName = 'sinif'
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.CustomizeDialog = False
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHiding = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object ders_programidonem: TcxGridDBColumn
          DataBinding.FieldName = 'donem'
          Visible = False
        end
        object ders_programisinif: TcxGridDBColumn
          DataBinding.FieldName = 'sinif'
          Visible = False
          Hidden = True
          MinWidth = 64
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
        end
        object ders_programigun: TcxGridDBColumn
          Caption = 'G'#252'n'
          DataBinding.FieldName = 'gun'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Giri'#351
            #199#305'k'#305#351
            'Pazartesi'
            'Sal'#305
            #199'ar'#351'amba'
            'Per'#351'embe'
            'Cuma'
            'Cumartesi'
            'Pazar')
        end
        object ders_programiders_1: TcxGridDBColumn
          Caption = '1. ders'
          DataBinding.FieldName = 'ders_1'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_2: TcxGridDBColumn
          Caption = '2. ders'
          DataBinding.FieldName = 'ders_2'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_3: TcxGridDBColumn
          Caption = '3. ders'
          DataBinding.FieldName = 'ders_3'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_4: TcxGridDBColumn
          Caption = '4. ders'
          DataBinding.FieldName = 'ders_4'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_5: TcxGridDBColumn
          Caption = '5. ders'
          DataBinding.FieldName = 'ders_5'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_6: TcxGridDBColumn
          Caption = '6. ders'
          DataBinding.FieldName = 'ders_6'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_7: TcxGridDBColumn
          Caption = '7. ders'
          DataBinding.FieldName = 'ders_7'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_8: TcxGridDBColumn
          Caption = '8. ders'
          DataBinding.FieldName = 'ders_8'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_9: TcxGridDBColumn
          Caption = '9. ders'
          DataBinding.FieldName = 'ders_9'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
        object ders_programiders_10: TcxGridDBColumn
          Caption = '10. ders'
          DataBinding.FieldName = 'ders_10'
          OnGetProperties = ders_programiders_1GetProperties
          Width = 70
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = ders_programi
      end
    end
  end
  object tablo_siniflar: TZQuery
    Connection = veriler.data_dershane
    AfterScroll = tablo_siniflarAfterScroll
    CachedUpdates = False
    BeforePost = tablo_siniflarBeforePost
    OnNewRecord = tablo_siniflarNewRecord
    RequestLive = True
    SQL.Strings = (
      'select * from siniflar where donem=:p0 order by sinif')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 76
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object tablo_siniflardonem: TStringField
      FieldName = 'donem'
      Size = 9
    end
    object tablo_siniflarsinif: TStringField
      FieldName = 'sinif'
      Required = True
      Size = 10
    end
    object tablo_siniflarderslik: TStringField
      FieldName = 'derslik'
      Size = 10
    end
    object tablo_siniflardanisman: TStringField
      FieldName = 'danisman'
      Size = 25
    end
    object tablo_siniflargrup1: TStringField
      FieldName = 'grup1'
      Size = 12
    end
    object tablo_siniflargrup2: TStringField
      FieldName = 'grup2'
      Size = 12
    end
    object tablo_siniflargrup3: TStringField
      FieldName = 'grup3'
      Size = 12
    end
    object tablo_siniflarders_baslangic: TDateField
      FieldName = 'ders_baslangic'
    end
  end
  object ara_siniflar: TDataSource
    DataSet = tablo_siniflar
    Left = 100
    Top = 116
  end
  object tablo_ders_programi: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterInsert = tablo_ders_programiAfterInsert
    RequestLive = True
    SQL.Strings = (
      
        'select * from ders_programlari where donem =:donem and sinif =:s' +
        'inif')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sinif'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 428
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sinif'
        ParamType = ptUnknown
      end>
    object tablo_ders_programidonem: TStringField
      FieldName = 'donem'
      Size = 9
    end
    object tablo_ders_programisinif: TStringField
      FieldName = 'sinif'
      Required = True
      Size = 10
    end
    object tablo_ders_programigun: TStringField
      FieldName = 'gun'
      Size = 9
    end
    object tablo_ders_programiders_1: TStringField
      FieldName = 'ders_1'
      Size = 7
    end
    object tablo_ders_programiders_2: TStringField
      FieldName = 'ders_2'
      Size = 7
    end
    object tablo_ders_programiders_3: TStringField
      FieldName = 'ders_3'
      Size = 7
    end
    object tablo_ders_programiders_4: TStringField
      FieldName = 'ders_4'
      Size = 7
    end
    object tablo_ders_programiders_5: TStringField
      FieldName = 'ders_5'
      Size = 7
    end
    object tablo_ders_programiders_6: TStringField
      FieldName = 'ders_6'
      Size = 7
    end
    object tablo_ders_programiders_7: TStringField
      FieldName = 'ders_7'
      Size = 7
    end
    object tablo_ders_programiders_8: TStringField
      FieldName = 'ders_8'
      Size = 7
    end
    object tablo_ders_programiders_9: TStringField
      FieldName = 'ders_9'
      Size = 7
    end
    object tablo_ders_programiders_10: TStringField
      FieldName = 'ders_10'
      Size = 7
    end
  end
  object ara_ders_programi: TDataSource
    DataSet = tablo_ders_programi
    Left = 500
    Top = 164
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 360
    Top = 140
  end
  object tablo_grup2: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'select * from gruplar where seviye=2 order by adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    MasterFields = 'id'
    MasterSource = ara_grup1
    IndexFieldNames = 'ustgrup'
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 264
    Top = 156
    object tablo_grup2id: TLargeintField
      FieldName = 'id'
    end
    object tablo_grup2seviye: TIntegerField
      FieldName = 'seviye'
      Required = True
    end
    object tablo_grup2adi: TStringField
      FieldName = 'adi'
      Required = True
      Size = 12
    end
    object tablo_grup2ustgrup: TLargeintField
      FieldName = 'ustgrup'
      Required = True
    end
  end
  object tablo_grup1: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'select * from gruplar where seviye=1 order by adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 196
    Top = 160
    object tablo_grup1id: TLargeintField
      FieldName = 'id'
    end
    object tablo_grup1seviye: TIntegerField
      FieldName = 'seviye'
      Required = True
    end
    object tablo_grup1adi: TStringField
      FieldName = 'adi'
      Required = True
      Size = 12
    end
    object tablo_grup1ustgrup: TLargeintField
      FieldName = 'ustgrup'
      Required = True
    end
  end
  object tablo_grup3: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'select * from gruplar where seviye=3 order by adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    MasterFields = 'id'
    MasterSource = ara_grup2
    IndexFieldNames = 'ustgrup'
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 320
    Top = 152
    object tablo_grup3id: TLargeintField
      FieldName = 'id'
    end
    object tablo_grup3seviye: TIntegerField
      FieldName = 'seviye'
      Required = True
    end
    object tablo_grup3adi: TStringField
      FieldName = 'adi'
      Required = True
      Size = 12
    end
    object tablo_grup3ustgrup: TLargeintField
      FieldName = 'ustgrup'
      Required = True
    end
  end
  object ara_grup1: TDataSource
    DataSet = tablo_grup1
    Left = 204
    Top = 228
  end
  object ara_grup2: TDataSource
    DataSet = tablo_grup2
    Left = 252
    Top = 228
  end
  object ara_grup3: TDataSource
    DataSet = tablo_grup3
    Left = 308
    Top = 232
  end
  object VeriGirisDuzenleyicisi: TcxEditRepository
    Left = 428
    Top = 64
    object VeriGirisDuzenleyicisiSaat: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(0?\d | 1\d | 2[0-3]) : [0-5]\d'
      Properties.MaxLength = 0
    end
    object VeriGirisDuzenleyicisiDers: TcxEditRepositoryComboBoxItem
      Properties.DropDownListStyle = lsFixedList
    end
  end
  object MnDersProgrami: TPopupMenu
    Left = 635
    Top = 112
    object MnOtomatikDoldur: TMenuItem
      Caption = 'Otomatik Doldur'
      OnClick = MnOtomatikDoldurClick
    end
    object MnDigerSinifdanAktar: TMenuItem
      Caption = 'Di'#287'er S'#305'n'#305'fdan Aktar'
    end
  end
end
