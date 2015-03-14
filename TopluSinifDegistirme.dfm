object fr_toplu_sinif_degistirme: Tfr_toplu_sinif_degistirme
  Left = 286
  Top = 221
  Width = 645
  Height = 427
  Caption = 'Toplu S'#305'n'#305'f De'#287'i'#351'tirme'
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 25
    Width = 637
    Height = 368
    Align = alClient
    TabOrder = 0
    object gr_ogrenciler: TcxGridDBTableView
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
      NavigatorButtons.Insert.Enabled = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Enabled = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Visible = False
      DataController.DataSource = ara_ogrenciler
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object gr_ogrencilerdonemi: TcxGridDBColumn
        Caption = 'D'#246'nemi'
        DataBinding.FieldName = 'donemi'
        Options.Editing = False
        Width = 65
      end
      object gr_ogrencilerogr_no: TcxGridDBColumn
        Caption = #214'.No'
        DataBinding.FieldName = 'ogr_no'
        Options.Editing = False
        Width = 52
      end
      object gr_ogrencileradi: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'adi'
        Options.Editing = False
        Width = 123
      end
      object gr_ogrencilersoyadi: TcxGridDBColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'soyadi'
        Options.Editing = False
        Width = 125
      end
      object gr_ogrencilersinifi: TcxGridDBColumn
        Caption = 'S'#305'n'#305'f'#305
        DataBinding.FieldName = 'sinifi'
        RepositoryItem = cb_siniflar
        Width = 82
      end
      object gr_ogrencilergrup1: TcxGridDBColumn
        Caption = 'Grup 1'
        DataBinding.FieldName = 'grup1'
        Options.Editing = False
        Width = 52
      end
      object gr_ogrencilergrup2: TcxGridDBColumn
        Caption = 'Grup 2'
        DataBinding.FieldName = 'grup2'
        Options.Editing = False
        Width = 59
      end
      object gr_ogrencilergrup3: TcxGridDBColumn
        Caption = 'Grup 3'
        DataBinding.FieldName = 'grup3'
        Options.Editing = False
        Width = 55
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gr_ogrenciler
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 253
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
      Left = 299
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
  object tablo_ogrenciler: TZQuery
    Connection = veriler.data_dershane
    OnFilterRecord = tablo_ogrencilerFilterRecord
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'select donemi,ogr_no,adi,soyadi,sinifi,grup1,grup2,grup3 from og' +
        'renciler')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 200
    Top = 76
    object tablo_ogrencilerdonemi: TStringField
      FieldName = 'donemi'
      ReadOnly = True
      Required = True
      Size = 9
    end
    object tablo_ogrencilerogr_no: TIntegerField
      FieldName = 'ogr_no'
      ReadOnly = True
      Required = True
    end
    object tablo_ogrencileradi: TStringField
      FieldName = 'adi'
      ReadOnly = True
      Size = 15
    end
    object tablo_ogrencilersoyadi: TStringField
      FieldName = 'soyadi'
      ReadOnly = True
      Size = 15
    end
    object tablo_ogrencilersinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_ogrencilergrup1: TStringField
      FieldName = 'grup1'
      Required = True
      Size = 12
    end
    object tablo_ogrencilergrup2: TStringField
      FieldName = 'grup2'
      Size = 12
    end
    object tablo_ogrencilergrup3: TStringField
      FieldName = 'grup3'
      Size = 12
    end
  end
  object ara_ogrenciler: TDataSource
    DataSet = tablo_ogrenciler
    Enabled = False
    Left = 208
    Top = 144
  end
  object mn_ogrenciler: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 308
    Top = 164
  end
  object tablo_siniflar: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      'SELECT donem,sinif FROM siniflar order by donem,sinif')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 88
    Top = 140
    object tablo_siniflardonem: TStringField
      FieldName = 'donem'
      Size = 9
    end
    object tablo_siniflarsinif: TStringField
      FieldName = 'sinif'
      Required = True
      Size = 10
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 96
    Top = 216
    object cb_siniflar: TcxEditRepositoryComboBoxItem
      Properties.DropDownListStyle = lsFixedList
    end
  end
end
