object fr_veli_sec: Tfr_veli_sec
  Left = 381
  Top = 216
  BorderStyle = bsDialog
  Caption = 'Veli Se'#231
  ClientHeight = 367
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gr_veli: TcxGrid
    Left = 0
    Top = 0
    Width = 365
    Height = 337
    TabOrder = 0
    object veliler: TcxGridDBTableView
      OnDblClick = velilerDblClick
      OnKeyPress = velilerKeyPress
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ara_veli
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.CustomizeDialog = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = velileradi
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object velileradi: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'veli_adi'
        SortIndex = 0
        SortOrder = soAscending
        Width = 122
      end
      object velilersoyadi: TcxGridDBColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'veli_soyadi'
        Width = 93
      end
      object velilermeslegi: TcxGridDBColumn
        Caption = 'Mesle'#287'i'
        DataBinding.FieldName = 'meslegi'
        Width = 111
      end
      object velilerveli_kodu: TcxGridDBColumn
        Caption = 'Kodu'
        DataBinding.FieldName = 'veli_kodu'
        Width = 25
      end
    end
    object gr_veliLevel1: TcxGridLevel
      GridView = veliler
    end
  end
  object br_vazgec: TBitBtn
    Left = 188
    Top = 340
    Width = 177
    Height = 25
    Caption = 'Vazge'#231
    TabOrder = 1
    OnClick = br_vazgecClick
  end
  object bt_sec: TBitBtn
    Left = 1
    Top = 340
    Width = 184
    Height = 25
    Caption = 'Se'#231
    TabOrder = 2
    OnClick = bt_secClick
  end
  object tablo_veli: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'select veli_kodu, veli_adi, veli_soyadi, meslegi from veliler or' +
        'der by veli_adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 60
    Top = 248
    object tablo_veliveli_kodu: TIntegerField
      FieldName = 'veli_kodu'
      Required = True
    end
    object tablo_veliveli_adi: TStringField
      FieldName = 'veli_adi'
      Required = True
      Size = 25
    end
    object tablo_veliveli_soyadi: TStringField
      FieldName = 'veli_soyadi'
      Required = True
      Size = 15
    end
    object tablo_velimeslegi: TStringField
      FieldName = 'meslegi'
    end
  end
  object ara_veli: TDataSource
    DataSet = tablo_veli
    Left = 112
    Top = 260
  end
end
