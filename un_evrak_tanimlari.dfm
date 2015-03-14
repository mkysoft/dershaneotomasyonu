object fr_evrak_tanimlari: Tfr_evrak_tanimlari
  Left = 434
  Top = 226
  Width = 328
  Height = 339
  Caption = 'Evrak Tan'#305'mlar'#305
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
  object gr_gerekli_evraklar: TcxGrid
    Left = 0
    Top = 0
    Width = 320
    Height = 305
    Align = alClient
    TabOrder = 0
    object gerekli_evraklar: TcxGridDBTableView
      DataController.DataSource = ara_gerekli_evraklar
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.PriorPage.Enabled = False
      NavigatorButtons.NextPage.Enabled = False
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.Filter.Enabled = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.NewItemRowInfoText = 'Yeni evrak eklemek i'#231'in buraya t'#305'klayabilirsiniz.'
      object gerekli_evraklarevrak_adi: TcxGridDBColumn
        Caption = 'Evrak Ad'#305
        Options.Filtering = False
        DataBinding.FieldName = 'evrak_adi'
      end
    end
    object gr_gerekli_evraklarLevel1: TcxGridLevel
      GridView = gerekli_evraklar
    end
  end
  object tablo_gerekli_evraklar: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from gerekli_evraklar order by evrak_adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 140
    Top = 152
    object tablo_gerekli_evraklarevrak_adi: TStringField
      FieldName = 'evrak_adi'
      Required = True
      Size = 50
    end
  end
  object ara_gerekli_evraklar: TDataSource
    DataSet = tablo_gerekli_evraklar
    Left = 136
    Top = 84
  end
end
