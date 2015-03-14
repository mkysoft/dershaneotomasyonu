object fr_gorunum: Tfr_gorunum
  Left = 181
  Top = 198
  Width = 455
  Height = 339
  Caption = 'G'#246'r'#252'n'#252'm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gr_gorunumler: TcxGrid
    Left = 0
    Top = 0
    Width = 447
    Height = 272
    Align = alClient
    TabOrder = 0
    object gr_gorunum: TcxGridDBTableView
      OnDblClick = gr_gorunumDblClick
      DataController.DataSource = ara_gorunum
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gr_gorunumid: TcxGridDBColumn
        Caption = 'ID'
        Width = 26
        DataBinding.FieldName = 'id'
      end
      object gr_gorunumaciklama: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        Width = 407
        DataBinding.FieldName = 'aciklama'
      end
    end
    object gr_gorunumlerLevel1: TcxGridLevel
      GridView = gr_gorunum
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 272
    Width = 447
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bt_yukle: TBitBtn
      Left = 180
      Top = 4
      Width = 89
      Height = 25
      Caption = 'Y'#252'kle'
      TabOrder = 0
      OnClick = bt_yukleClick
    end
  end
  object tablo_gorunum: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from gorunum order by aciklama')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 24
    object tablo_gorunumid: TIntegerField
      FieldName = 'id'
    end
    object tablo_gorunumaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tablo_gorunumgorunum: TBlobField
      FieldName = 'gorunum'
    end
  end
  object ara_gorunum: TDataSource
    DataSet = tablo_gorunum
    Left = 188
    Top = 32
  end
end
