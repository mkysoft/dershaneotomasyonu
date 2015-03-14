object fr_grup_tanimlari: Tfr_grup_tanimlari
  Left = 340
  Top = 204
  Width = 455
  Height = 350
  Caption = 'Grup Tan'#305'mlar'#305
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
  object gr_grup1: TcxGrid
    Left = 0
    Top = 0
    Width = 149
    Height = 316
    Align = alLeft
    TabOrder = 0
    OnExit = gr_grup1Exit
    object grup1: TcxGridDBTableView
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
      DataController.DataSource = ara_grup1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grup1adi: TcxGridDBColumn
        Caption = '1. Seviye Grup Adlar'#305
        DataBinding.FieldName = 'adi'
      end
    end
    object gr_grup1Level1: TcxGridLevel
      GridView = grup1
    end
  end
  object gr_grup3: TcxGrid
    Left = 298
    Top = 0
    Width = 149
    Height = 316
    Align = alClient
    TabOrder = 1
    OnExit = gr_grup3Exit
    object grup3: TcxGridDBTableView
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
      DataController.DataSource = ara_grup3
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grup3adi: TcxGridDBColumn
        Caption = '3. Seviye Grup Adlar'#305
        DataBinding.FieldName = 'adi'
      end
    end
    object gr_grup3Level1: TcxGridLevel
      GridView = grup3
    end
  end
  object gr_grup2: TcxGrid
    Left = 149
    Top = 0
    Width = 149
    Height = 316
    Align = alLeft
    TabOrder = 2
    OnExit = gr_grup2Exit
    object grup2: TcxGridDBTableView
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
      DataController.DataSource = ara_grup2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grup2adi: TcxGridDBColumn
        Caption = '2. Seviye Grup Adlar'#305
        DataBinding.FieldName = 'adi'
      end
    end
    object gr_grup2Level1: TcxGridLevel
      GridView = grup2
    end
  end
  object tablo_grup1: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    BeforePost = tablo_grup1BeforePost
    BeforeDelete = tablo_grup1BeforeDelete
    RequestLive = True
    SQL.Strings = (
      'select * from gruplar where seviye=1 order by adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 84
    Top = 32
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
  object tablo_grup2: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    BeforePost = tablo_grup2BeforePost
    BeforeDelete = tablo_grup2BeforeDelete
    RequestLive = True
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
    Left = 152
    Top = 28
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
  object tablo_grup3: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    BeforePost = tablo_grup3BeforePost
    RequestLive = True
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
    Left = 208
    Top = 24
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
    Left = 92
    Top = 100
  end
  object ara_grup2: TDataSource
    DataSet = tablo_grup2
    Left = 140
    Top = 100
  end
  object ara_grup3: TDataSource
    DataSet = tablo_grup3
    Left = 196
    Top = 104
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 372
    Top = 120
  end
end
