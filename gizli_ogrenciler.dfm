object fr_gizli_ogrenciler: Tfr_gizli_ogrenciler
  Left = 220
  Top = 182
  Width = 729
  Height = 429
  Caption = 'Gizli '#214#287'renciler'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 464
    Height = 351
    Align = alClient
    Caption = ' Kay'#305'tl'#305' '#214#287'renciler '
    TabOrder = 0
    object gr_ogrenciler: TcxGrid
      Left = 2
      Top = 15
      Width = 460
      Height = 334
      Align = alClient
      TabOrder = 0
      object view_ogrenciler: TcxGridDBTableView
        OnDblClick = view_ogrencilerDblClick
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Enabled = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Enabled = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Enabled = False
        NavigatorButtons.Cancel.Visible = False
        DataController.DataSource = ara_ogrenciler
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object view_ogrencilerdonemi: TcxGridDBColumn
          Caption = 'D'#246'nemi'
          DataBinding.FieldName = 'donemi'
          Width = 65
        end
        object view_ogrencilerogr_no: TcxGridDBColumn
          Caption = #214'.No'
          DataBinding.FieldName = 'ogr_no'
          Width = 51
        end
        object view_ogrencileradi: TcxGridDBColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'adi'
          Width = 122
        end
        object view_ogrencilersoyadi: TcxGridDBColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'soyadi'
          Width = 127
        end
        object view_ogrencilersinifi: TcxGridDBColumn
          Caption = 'S'#305'n'#305'f'#305
          DataBinding.FieldName = 'sinifi'
          Options.Sorting = False
          Width = 95
        end
      end
      object gr_ogrencilerLevel1: TcxGridLevel
        GridView = view_ogrenciler
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 492
    Top = 0
    Width = 229
    Height = 351
    Align = alRight
    Caption = ' Gizli '#214#287'renciler '
    TabOrder = 1
    object gr_gizli_ogr: TcxGrid
      Left = 2
      Top = 15
      Width = 225
      Height = 334
      Align = alClient
      TabOrder = 0
      object view_gizli: TcxGridDBTableView
        OnDblClick = view_gizliDblClick
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
        DataController.DataSource = ara_gizli
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Navigator = True
        OptionsView.NavigatorOffset = 10
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object view_gizlidonemi: TcxGridDBColumn
          Caption = 'D'#246'nemi'
          DataBinding.FieldName = 'donemi'
          Width = 69
        end
        object view_gizliogr_no: TcxGridDBColumn
          Caption = #214'.No'
          DataBinding.FieldName = 'ogr_no'
          Width = 48
        end
        object view_gizlisinifi: TcxGridDBColumn
          Caption = 'S'#305'n'#305'f'#305
          DataBinding.FieldName = 'sinifi'
          Options.Editing = False
          Width = 101
        end
      end
      object gr_gizli: TcxGridLevel
        GridView = view_gizli
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 351
    Width = 721
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bt_durum: TBitBtn
      Left = 432
      Top = 4
      Width = 285
      Height = 37
      Caption = 'bt_durum'
      TabOrder = 0
      OnClick = bt_durumClick
    end
    object cxLabel8: TcxLabel
      Left = 1
      Top = 0
      Width = 424
      Height = 44
      TabStop = False
      AutoSize = False
      Caption = 
        #214#287'rencileri gizli '#246#287'renciler listesine eklemek i'#231'in '#231'ift t'#305'klat'#305 +
        'n yada >> d'#252#287'mesine bas'#305'n. Birden fazla '#246#287'renciyi se'#231'mek i'#231'in CT' +
        'RL veya SHIFT tu'#351'lar'#305'n'#305', t'#252'm'#252'n'#252' se'#231'mek i'#231'in CTRL+A tu'#351'lar'#305'n'#305' kul' +
        'lanabilirsiniz. Di'#287'er kullan'#305'c'#305'lar programlar'#305'n'#305' kapat'#305'p a'#231'mal'#305'd' +
        #305'r.'
      Properties.LabelStyle = cxlsRaised
      Properties.PenWidth = 0
      Properties.WordWrap = True
      Style.BorderStyle = ebsFlat
    end
  end
  object Panel2: TPanel
    Left = 464
    Top = 0
    Width = 28
    Height = 351
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
    object BtAktar: TButton
      Left = 0
      Top = 166
      Width = 27
      Height = 25
      Caption = '>>'
      TabOrder = 0
      OnClick = BtAktarClick
    end
  end
  object tablo_ogrenciler: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'SELECT donemi,ogr_no,adi,soyadi,sinifi FROM ogrenciler order by ' +
        'sinifi,donemi,ogr_no')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 116
    Top = 124
    object tablo_ogrencilerdonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_ogrencilerogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_ogrencileradi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object tablo_ogrencilersoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object tablo_ogrencilersinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
  end
  object ara_ogrenciler: TDataSource
    DataSet = tablo_ogrenciler
    Left = 108
    Top = 188
  end
  object ara_gizli: TDataSource
    DataSet = tablo_gizli
    Left = 216
    Top = 184
  end
  object tablo_gizli: TZQuery
    Connection = veriler.data_dershane
    UpdateObject = up_gizli
    CachedUpdates = False
    AfterInsert = tablo_gizliAfterDelete
    AfterPost = tablo_gizliAfterDelete
    AfterDelete = tablo_gizliAfterDelete
    RequestLive = True
    SQL.Strings = (
      
        'select gizli.donemi,gizli.ogr_no,sinifi FROM gizli join ogrencil' +
        'er using (donemi,ogr_no) order by sinifi,donemi,ogr_no')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 220
    Top = 128
    object tablo_gizliogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_gizlidonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_gizlisinifi: TStringField
      FieldName = 'sinifi'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 10
    end
  end
  object TabloGizliUpdate: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      'UPDATE ayarlar SET gizli=:par1')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 276
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
  end
  object mn_ogrenciler: TcxGridPopupMenu
    Grid = gr_ogrenciler
    PopupMenus = <>
    Left = 324
    Top = 168
  end
  object mn_gizle: TcxGridPopupMenu
    Grid = gr_gizli_ogr
    PopupMenus = <>
    Left = 408
    Top = 168
  end
  object up_gizli: TZUpdateSQL
    DeleteSQL.Strings = (
      'delete from gizli'
      'where'
      '  gizli.ogr_no = :OLD_ogr_no and'
      '  gizli.donemi = :OLD_donemi')
    InsertSQL.Strings = (
      'insert into gizli'
      '  (gizli.ogr_no, gizli.donemi)'
      'values'
      '  (:ogr_no, :donemi)')
    ModifySQL.Strings = (
      'update gizli set'
      '  gizli.ogr_no = :ogr_no,'
      '  gizli.donemi = :donemi'
      'where'
      '  gizli.ogr_no = :OLD_ogr_no and'
      '  gizli.donemi = :OLD_donemi')
    Left = 220
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ogr_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'donemi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ogr_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_donemi'
        ParamType = ptUnknown
      end>
  end
  object TabloOku: TZQuery
    Connection = veriler.data_kok
    CachedUpdates = False
    RequestLive = False
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 400
    Top = 108
  end
end
