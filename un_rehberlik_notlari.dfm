object fr_rehberlik_notlari: Tfr_rehberlik_notlari
  Left = 252
  Top = 186
  Width = 696
  Height = 392
  Caption = 'Rehberlik Notlar'#305
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object notlar: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 358
    ActivePage = notlar_toplu
    Align = alClient
    TabOrder = 0
    OnChange = notlarChange
    object notlar_toplu: TTabSheet
      Caption = 'Toplu Veri Giri'#351'i'
      object GroupBox4: TGroupBox
        Left = 121
        Top = 0
        Width = 442
        Height = 330
        Align = alClient
        Caption = ' Eklenen '#214#287'renciler'
        TabOrder = 0
        object gr_ogrenci_coklu: TcxGrid
          Left = 2
          Top = 15
          Width = 438
          Height = 313
          Align = alClient
          TabOrder = 0
          object ogrenci_coklu: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.PriorPage.Enabled = False
            NavigatorButtons.NextPage.Enabled = False
            NavigatorButtons.Insert.Enabled = False
            NavigatorButtons.SaveBookmark.Enabled = False
            NavigatorButtons.GotoBookmark.Enabled = False
            DataController.DataSource = ara_memtablo
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.Navigator = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object ogrenci_cokludonemi: TcxGridDBColumn
              Caption = 'D'#246'nemi'
              DataBinding.FieldName = 'donemi'
              Options.Editing = False
              Options.Filtering = False
            end
            object ogrenci_cokluogr_no: TcxGridDBColumn
              Caption = #214#287'renci No'
              DataBinding.FieldName = 'ogr_no'
              Options.Editing = False
              Options.Filtering = False
            end
            object ogrenci_cokluadi: TcxGridDBColumn
              Caption = 'Ad'#305
              DataBinding.FieldName = 'adi'
              Options.Editing = False
              Options.Filtering = False
            end
            object ogrenci_coklusoyadi: TcxGridDBColumn
              Caption = 'Soyad'#305
              DataBinding.FieldName = 'soyadi'
              Options.Editing = False
              Options.Filtering = False
            end
            object ogrenci_coklusinifi: TcxGridDBColumn
              Caption = 'S'#305'n'#305'f'#305
              DataBinding.FieldName = 'sinifi'
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = ogrenci_coklu
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 121
        Height = 330
        Align = alLeft
        Caption = ' '#214#287'rencileri Ekleyin '
        TabOrder = 1
        object Label1: TLabel
          Left = 4
          Top = 48
          Width = 113
          Height = 57
          AutoSize = False
          Caption = 'Bir s'#305'n'#305'ftaki '#246#287'rencilerin tamam'#305'n'#305' eklemek i'#231'in s'#305'n'#305'flar'#305' se'#231'in'
          WordWrap = True
        end
        object Label2: TLabel
          Left = 8
          Top = 228
          Width = 105
          Height = 41
          AutoSize = False
          Caption = #214#287'rencileri teker teker eklemek i'#231'in '#246#287'recileri bulun'
          WordWrap = True
        end
        object Bevel2: TBevel
          Left = 4
          Top = 224
          Width = 113
          Height = 73
        end
        object bt_tum_sec: TBitBtn
          Left = 8
          Top = 16
          Width = 105
          Height = 25
          Caption = 'T'#252'm'#252'n'#252' Ekle'
          TabOrder = 0
          OnClick = bt_tum_secClick
        end
        object ls_siniflar: TcxCheckListBox
          Left = 4
          Top = 88
          Width = 109
          Height = 105
          Items = <>
          TabOrder = 1
        end
        object bt_sinif_ekle: TBitBtn
          Left = 8
          Top = 196
          Width = 105
          Height = 25
          Caption = 'Ekle'
          TabOrder = 2
          OnClick = bt_sinif_ekleClick
        end
        object bt_tek_ekle: TBitBtn
          Left = 8
          Top = 268
          Width = 105
          Height = 25
          Caption = 'Bul'
          TabOrder = 3
          OnClick = bt_tek_ekleClick
        end
        object bt_tabloyu_temizle: TBitBtn
          Left = 8
          Top = 300
          Width = 105
          Height = 25
          Caption = 'Tabloyu Temizle'
          TabOrder = 4
          OnClick = bt_tabloyu_temizleClick
        end
      end
      object Panel1: TPanel
        Left = 563
        Top = 0
        Width = 117
        Height = 330
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 117
          Height = 161
          Align = alTop
          Caption = ' Ekleme '#304#351'lemi '
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 20
            Width = 24
            Height = 13
            Caption = 'Tarih'
            WordWrap = True
          end
          object Label4: TLabel
            Left = 8
            Top = 40
            Width = 17
            Height = 13
            Caption = 'Not'
            WordWrap = True
          end
          object tx_tarih: TcxDateEdit
            Left = 36
            Top = 16
            Width = 77
            Height = 21
            Properties.SaveTime = False
            Properties.ShowTime = False
            TabOrder = 0
          end
          object bt_ekle: TBitBtn
            Left = 8
            Top = 128
            Width = 101
            Height = 25
            Caption = 'T'#252'm'#252'ne Ekle'
            TabOrder = 1
            OnClick = bt_ekleClick
          end
          object tx_not: TcxMemo
            Left = 4
            Top = 52
            Width = 109
            Height = 73
            Properties.MaxLength = 255
            TabOrder = 2
          end
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 172
          Width = 117
          Height = 158
          Align = alBottom
          Caption = ' Silme '#304#351'lemi '
          TabOrder = 1
          object Label5: TLabel
            Left = 8
            Top = 16
            Width = 101
            Height = 65
            AutoSize = False
            Caption = 
              'Toplu olarak notlar'#305' silmek i'#231'in hangi tarihiden '#246'ncesinin silin' +
              'ece'#287'ini se'#231'in yada t'#252'm'#252'n'#252' silin.'
            WordWrap = True
          end
          object Label6: TLabel
            Left = 8
            Top = 108
            Width = 24
            Height = 13
            Caption = 'Tarih'
            WordWrap = True
          end
          object check_tumunu_sil: TcxCheckBox
            Left = 8
            Top = 84
            Width = 77
            Height = 21
            Caption = 'T'#252'm'#252'n'#252' Sil'
            Properties.DisplayUnchecked = 'False'
            Properties.OnChange = check_tumunu_silPropertiesChange
            State = cbsChecked
            TabOrder = 0
          end
          object tx_sil_tarih: TcxDateEdit
            Left = 36
            Top = 104
            Width = 77
            Height = 21
            Enabled = False
            Properties.SaveTime = False
            Properties.ShowTime = False
            TabOrder = 1
          end
          object BitBtn1: TBitBtn
            Left = 8
            Top = 128
            Width = 101
            Height = 25
            Caption = 'Sil'
            TabOrder = 2
            OnClick = BitBtn1Click
          end
        end
      end
    end
    object notlar_tekil: TTabSheet
      Caption = 'Tekil Veri Giri'#351'i'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 476
        Top = 0
        Width = 4
        Height = 330
        Align = alRight
        Beveled = True
        Color = clActiveCaption
        ParentColor = False
      end
      object GroupBox2: TGroupBox
        Left = 480
        Top = 0
        Width = 200
        Height = 330
        Align = alRight
        Caption = ' '#214#287'renciye Ait Notlar  '
        TabOrder = 0
        object gr_notlar: TcxGrid
          Left = 2
          Top = 15
          Width = 196
          Height = 313
          Align = alClient
          TabOrder = 0
          object vi_notlar: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.PriorPage.Enabled = False
            NavigatorButtons.NextPage.Enabled = False
            NavigatorButtons.SaveBookmark.Enabled = False
            NavigatorButtons.GotoBookmark.Enabled = False
            NavigatorButtons.Filter.Enabled = False
            DataController.DataSource = ara_notlar
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = vi_notlarnotu
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object vi_notlarid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object vi_notlardonemi: TcxGridDBColumn
              DataBinding.FieldName = 'donemi'
              Visible = False
            end
            object vi_notlarogr_no: TcxGridDBColumn
              DataBinding.FieldName = 'ogr_no'
              Visible = False
            end
            object vi_notlartarih: TcxGridDBColumn
              Caption = 'Tarih'
              DataBinding.FieldName = 'tarih'
              Options.Filtering = False
              Width = 51
            end
            object vi_notlarnotu: TcxGridDBColumn
              Caption = 'Not'
              DataBinding.FieldName = 'notu'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.MaxLength = 255
              Properties.ReadOnly = False
              Options.Filtering = False
              Width = 127
            end
          end
          object gr_notlarLevel1: TcxGridLevel
            GridView = vi_notlar
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 476
        Height = 330
        Align = alClient
        Caption = ' '#214#287'renciyi Se'#231'iniz '
        TabOrder = 1
        object gr_ogrenciler: TcxGrid
          Left = 2
          Top = 15
          Width = 472
          Height = 313
          Align = alClient
          TabOrder = 0
          object ogrenciler: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ara_ogrenciler
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = ogrencileradi
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object ogrencilerdonemi: TcxGridDBColumn
              Caption = 'D'#246'nemi'
              DataBinding.FieldName = 'donemi'
              Options.Editing = False
              Width = 61
            end
            object ogrencilerogr_no: TcxGridDBColumn
              Caption = #214'.No'
              DataBinding.FieldName = 'ogr_no'
              Options.Editing = False
              Width = 56
            end
            object ogrencileradi: TcxGridDBColumn
              Caption = 'Ad'#305
              DataBinding.FieldName = 'adi'
              Options.Editing = False
              Width = 82
            end
            object ogrencilersoyadi: TcxGridDBColumn
              Caption = 'Soyad'#305
              DataBinding.FieldName = 'soyadi'
              Options.Editing = False
              Width = 83
            end
            object ogrencilersinifi: TcxGridDBColumn
              Caption = 'S'#305'n'#305'f'#305
              DataBinding.FieldName = 'sinifi'
              Options.Editing = False
              Width = 55
            end
            object ogrencilerbaba_adi: TcxGridDBColumn
              Caption = 'Baba Ad'#305
              DataBinding.FieldName = 'baba_adi'
            end
            object ogrencilerana_adi: TcxGridDBColumn
              Caption = 'Ana Ad'#305
              DataBinding.FieldName = 'ana_adi'
            end
            object ogrencilerveli_adi: TcxGridDBColumn
              Caption = 'Veli Ad'#305
              DataBinding.FieldName = 'veli_adi'
              Options.Editing = False
              Width = 135
            end
            object ogrencilerveli_soyadi: TcxGridDBColumn
              Caption = 'Veli Soyad'#305
              DataBinding.FieldName = 'veli_soyadi'
              Options.Editing = False
              Width = 82
            end
          end
          object gr_ogrencilerLevel1: TcxGridLevel
            GridView = ogrenciler
          end
        end
      end
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    AutoCalcFields = False
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 60
    Top = 140
  end
  object ara_ogrenciler: TDataSource
    DataSet = tablo_ogrenciler
    Enabled = False
    Left = 192
    Top = 172
  end
  object tablo_ogrenciler: TZReadOnlyQuery
    Connection = veriler.data_dershane
    AutoCalcFields = False
    OnFilterRecord = tablo_ogrencilerFilterRecord
    SQL.Strings = (
      
        'select donemi,ogr_no,adi,soyadi,sinifi,baba_adi,ana_adi,veli_adi' +
        ',veli_soyadi from ogrenciler left join veliler on ogrenciler.vel' +
        'i_kodu=veliler.veli_kodu')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 172
    Top = 128
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
    object tablo_ogrencilerbaba_adi: TStringField
      FieldName = 'baba_adi'
      Size = 15
    end
    object tablo_ogrencilerana_adi: TStringField
      FieldName = 'ana_adi'
      Size = 15
    end
    object tablo_ogrencilerveli_adi: TStringField
      FieldName = 'veli_adi'
      Required = True
      Size = 25
    end
    object tablo_ogrencilerveli_soyadi: TStringField
      FieldName = 'veli_soyadi'
      Required = True
      Size = 15
    end
  end
  object mn_gr_ogreciler: TcxGridPopupMenu
    PopupMenus = <>
    Left = 252
    Top = 100
  end
  object tablo_notlar: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from rehberlik_notlari')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    MasterFields = 'donemi;ogr_no'
    MasterSource = ara_ogrenciler
    IndexFieldNames = 'donemi;ogr_no'
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 372
    Top = 212
    object tablo_notlarid: TLargeintField
      FieldName = 'id'
    end
    object tablo_notlardonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_notlarogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_notlartarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_notlarnotu: TStringField
      FieldName = 'notu'
      Size = 255
    end
  end
  object ara_notlar: TDataSource
    DataSet = tablo_notlar
    Left = 352
    Top = 148
  end
  object ara_memtablo: TDataSource
    DataSet = tablo_memtablo
    Enabled = False
    Left = 293
    Top = 224
  end
  object tablo_memtablo: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 353
    Top = 88
    object tablo_memtablodonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_memtabloogr_no: TIntegerField
      FieldName = 'ogr_no'
    end
    object tablo_memtabloadi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object tablo_memtablosoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object tablo_memtablosinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
  end
end
