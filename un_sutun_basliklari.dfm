object fr_sutun_basliklari: Tfr_sutun_basliklari
  Left = 302
  Top = 253
  Width = 337
  Height = 421
  Caption = 'S'#252'tun Ba'#351'l'#305'klar'#305
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
  object gr_sutun_bssliklari: TcxGrid
    Left = 0
    Top = 0
    Width = 329
    Height = 387
    Align = alClient
    TabOrder = 0
    object gr_sutun_baslik: TcxGridDBTableView
      DataController.DataSource = ara_sutun_basliklari
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = gr_sutun_basliksutun_adi
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Deleting = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gr_sutun_basliksutun_adi: TcxGridDBColumn
        Caption = 'S'#252'tun Ad'#305
        Options.Editing = False
        Width = 100
        DataBinding.FieldName = 'sutun_adi'
      end
      object gr_sutun_baslikbaslik: TcxGridDBColumn
        Caption = 'Ba'#351'l'#305'k'
        Width = 215
        DataBinding.FieldName = 'baslik'
      end
    end
    object gr_sutun_bsslik: TcxGridLevel
      GridView = gr_sutun_baslik
    end
  end
  object tablo_sutun_basliklari: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sutun_basliklari order by sutun_adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 88
    Top = 60
    object tablo_sutun_basliklarisutun_adi: TStringField
      FieldName = 'sutun_adi'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object tablo_sutun_basliklaribaslik: TStringField
      FieldName = 'baslik'
      Size = 100
    end
  end
  object ara_sutun_basliklari: TDataSource
    DataSet = tablo_sutun_basliklari
    Left = 192
    Top = 72
  end
end
