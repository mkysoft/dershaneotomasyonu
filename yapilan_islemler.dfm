object fr_yapilan_islemler: Tfr_yapilan_islemler
  Left = 193
  Top = 115
  Width = 594
  Height = 410
  Caption = 'Yap'#305'lan '#304#351'lemler'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Width = 141
    Height = 376
    Align = alLeft
    Caption = ' Tablolar '
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 322
      Width = 137
      Height = 52
      Align = alBottom
      Caption = 
        'Yap'#305'lan i'#351'lemleri g'#246'rnek istedi'#287'iniz tablonun '#252'zerine '#231'ift t'#305'kla' +
        't'#305'n yada Enter'#39'a bas'#305'n.'
      WordWrap = True
    end
    object lb_tablolar: TcxListBox
      Left = 2
      Top = 16
      Width = 137
      Height = 306
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnDblClick = lb_tablolarDblClick
      OnKeyPress = lb_tablolarKeyPress
    end
  end
  object Panel1: TPanel
    Left = 141
    Top = 0
    Width = 445
    Height = 376
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object fl_log: TcxDBFilterControl
      Left = 0
      Top = 0
      Width = 445
      Height = 97
      Align = alTop
      DataSet = tablo_log
      FilterOptions.SoftNull = True
      Items = <>
      TabOrder = 0
      TabStop = True
    end
    object gr_log: TcxGrid
      Left = 0
      Top = 97
      Width = 445
      Height = 279
      Align = alClient
      TabOrder = 1
      object vi_log: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Edit.Enabled = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Enabled = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Enabled = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Enabled = False
        NavigatorButtons.GotoBookmark.Visible = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
      end
      object lv_log: TcxGridLevel
        GridView = vi_log
      end
    end
    object bt_goster: TcxButton
      Left = 364
      Top = 68
      Width = 75
      Height = 25
      Caption = 'G'#246'ster'
      Enabled = False
      TabOrder = 2
      OnClick = bt_gosterClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object tablo_log: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 317
    Top = 184
  end
  object ara_log: TDataSource
    DataSet = tablo_log
    Left = 321
    Top = 292
  end
  object mn_log: TcxGridPopupMenu
    Grid = gr_log
    PopupMenus = <>
    Left = 457
    Top = 196
  end
end
