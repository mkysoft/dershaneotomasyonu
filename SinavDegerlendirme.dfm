object fr_sinav_degerlendirme: Tfr_sinav_degerlendirme
  Left = 264
  Top = 220
  BorderStyle = bsSingle
  Caption = 'S'#305'nav De'#287'erlendirme'
  ClientHeight = 412
  ClientWidth = 672
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
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Width = 672
    Height = 144
    Align = alTop
    Caption = ' Form'#252'l Se'#231'in Yada Olu'#351'turun '
    TabOrder = 0
    object gr_formul: TcxGrid
      Left = 2
      Top = 16
      Width = 668
      Height = 126
      Align = alClient
      TabOrder = 0
      object formuller: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Enabled = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ara_formul
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.CustomizeDialog = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.DataRowSizing = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object formullerid: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'id'
          Width = 20
        end
        object formulleryanlis_dogru_orani: TcxGridDBColumn
          Caption = 'D/Y'
          DataBinding.FieldName = 'yanlis_dogru_orani'
          Width = 25
        end
        object formulleraciklama: TcxGridDBColumn
          Caption = 'A'#231#305'klama'
          DataBinding.FieldName = 'aciklama'
          Width = 88
        end
        object formullerformul_1: TcxGridDBColumn
          Caption = 'Form'#252'l 1'
          DataBinding.FieldName = 'formul_1'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ReadOnly = False
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_2: TcxGridDBColumn
          Caption = 'Form'#252'l 2'
          DataBinding.FieldName = 'formul_2'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ReadOnly = False
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_3: TcxGridDBColumn
          Caption = 'Form'#252'l 3'
          DataBinding.FieldName = 'formul_3'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ReadOnly = False
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_4: TcxGridDBColumn
          Caption = 'Form'#252'l 4'
          DataBinding.FieldName = 'formul_4'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ReadOnly = False
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_5: TcxGridDBColumn
          Caption = 'Form'#252'l 5'
          DataBinding.FieldName = 'formul_5'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ReadOnly = False
          Properties.ScrollBars = ssVertical
          Width = 200
        end
        object formullerformul_6: TcxGridDBColumn
          Caption = 'Form'#252'l 6'
          DataBinding.FieldName = 'formul_6'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 255
          Properties.ReadOnly = False
          Properties.ScrollBars = ssVertical
          Width = 200
        end
      end
      object level2: TcxGridLevel
        GridView = formuller
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 152
    Width = 672
    Height = 260
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Width = 338
      Height = 260
      Align = alClient
      Caption = ' Bir S'#305'nav Se'#231'iniz '
      TabOrder = 0
      object gr_sinavlar: TcxGrid
        Left = 2
        Top = 16
        Width = 334
        Height = 242
        Align = alClient
        TabOrder = 0
        object sinavlar: TcxGridDBTableView
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
          NavigatorButtons.SaveBookmark.Enabled = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Enabled = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = ara_sinav
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.CustomizeDialog = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Inserting = False
          OptionsView.Navigator = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object sinavlarsinav_no: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'sinav_no'
            Options.Editing = False
            Width = 27
          end
          object sinavlarturu: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'turu'
            Width = 31
          end
          object sinavlarsinav_tarihi: TcxGridDBColumn
            Caption = 'S'#305'nav Tarihi'
            DataBinding.FieldName = 'sinav_tarihi'
            Width = 62
          end
          object sinavlarsinav_adi: TcxGridDBColumn
            Caption = 'S'#305'nav Ad'#305
            DataBinding.FieldName = 'sinav_adi'
            Width = 163
          end
        end
        object level1: TcxGridLevel
          GridView = sinavlar
        end
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 338
      Top = 0
      Width = 334
      Height = 260
      Align = alRight
      Caption = ' '#304#351'lemler '
      TabOrder = 1
      object lb_sinav_adi: TcxDBLabel
        Left = 61
        Top = 16
        Width = 268
        Height = 17
        DataBinding.DataField = 'sinav_adi'
        DataBinding.DataSource = ara_sinav
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object lb_formul_id: TcxDBLabel
        Left = 61
        Top = 36
        Width = 21
        Height = 17
        DataBinding.DataField = 'id'
        DataBinding.DataSource = ara_formul
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object cxLabel1: TcxLabel
        Left = 5
        Top = 36
        Width = 58
        Height = 17
        Caption = 'Form'#252'l No :'
      end
      object cxLabel2: TcxLabel
        Left = 0
        Top = 16
        Width = 63
        Height = 17
        Caption = 'S'#305'nav'#305'n Ad'#305' :'
      end
      object durum: TcxProgressBar
        Left = 7
        Top = 120
        Width = 321
        Height = 21
        AutoSize = False
        Properties.BarStyle = cxbsGradient
        Properties.BeginColor = clWhite
        Properties.EndColor = clLime
        Properties.OverloadValue = 100.000000000000000000
        Properties.PeakColor = clLime
        Properties.PeakValue = 100.000000000000000000
        Properties.SolidTextColor = True
        Properties.TransparentImage = False
        Style.Shadow = False
        TabOrder = 1
      end
      object bt_basla: TBitBtn
        Left = 7
        Top = 88
        Width = 321
        Height = 25
        Hint = 
          'E'#287'er daha '#246'nce bu s'#305'nav de'#287'erlendirilmi'#351' ise '#246'nceki de'#287'erlendirm' +
          'e silinecektir.'
        Caption = 'Se'#231'ili S'#305'nav'#305' Se'#231'ili Form'#252'l ile De'#287'erlendir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bt_baslaClick
      end
      object islemler: TListBox
        Left = 2
        Top = 144
        Width = 330
        Height = 114
        Align = alBottom
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 6
      end
      object cb_dogruyanlis: TCheckBox
        Left = 16
        Top = 56
        Width = 311
        Height = 13
        Caption = 'Cevap anahtar'#305'na g'#246're Do'#287'ru ve Yanl'#305#351' say'#305'lar'#305'n'#305' da hesapla.'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CkbSinifGuncelle: TCheckBox
        Left = 16
        Top = 72
        Width = 313
        Height = 13
        Caption = #214#287'rencilerin s'#305'n'#305'f bilgilerini g'#252'ncelle.'
        TabOrder = 8
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 144
    Width = 672
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salTop
    Control = cxGroupBox2
  end
  object tablo_sinav: TZQuery
    Connection = veriler.data_dershane
    AfterScroll = tablo_sinavAfterScroll
    CachedUpdates = False
    BeforeDelete = tablo_sinavBeforeDelete
    RequestLive = True
    SQL.Strings = (
      
        'select sinav_no,turu,sinav_adi, sinav_tarihi,Aturkce,Asos1,Amat1' +
        ',Afen1,Aedsos,Asos2,Amat2,Afen2,Aing,Bturkce,Bsos1,Bmat1,Bfen1,B' +
        'edsos,Bsos2,Bmat2,Bfen2,Bing from sinavtanim order by sinav_tari' +
        'hi desc,sinav_adi')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 60
    Top = 280
    object tablo_sinavsinav_no: TIntegerField
      FieldName = 'sinav_no'
    end
    object tablo_sinavturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object tablo_sinavsinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
      Required = True
    end
    object tablo_sinavsinav_adi: TStringField
      FieldName = 'sinav_adi'
      Required = True
      Size = 25
    end
    object tablo_sinavAturkce: TStringField
      FieldName = 'Aturkce'
      Size = 255
    end
    object tablo_sinavAsos1: TStringField
      FieldName = 'Asos1'
      Size = 255
    end
    object tablo_sinavAmat1: TStringField
      FieldName = 'Amat1'
      Size = 255
    end
    object tablo_sinavAfen1: TStringField
      FieldName = 'Afen1'
      Size = 255
    end
    object tablo_sinavAedsos: TStringField
      FieldName = 'Aedsos'
      Size = 255
    end
    object tablo_sinavAsos2: TStringField
      FieldName = 'Asos2'
      Size = 255
    end
    object tablo_sinavAmat2: TStringField
      FieldName = 'Amat2'
      Size = 255
    end
    object tablo_sinavAfen2: TStringField
      FieldName = 'Afen2'
      Size = 255
    end
    object tablo_sinavAing: TStringField
      FieldName = 'Aing'
      Size = 255
    end
    object tablo_sinavBturkce: TStringField
      FieldName = 'Bturkce'
      Size = 255
    end
    object tablo_sinavBsos1: TStringField
      FieldName = 'Bsos1'
      Size = 255
    end
    object tablo_sinavBmat1: TStringField
      FieldName = 'Bmat1'
      Size = 255
    end
    object tablo_sinavBfen1: TStringField
      FieldName = 'Bfen1'
      Size = 255
    end
    object tablo_sinavBedsos: TStringField
      FieldName = 'Bedsos'
      Size = 255
    end
    object tablo_sinavBsos2: TStringField
      FieldName = 'Bsos2'
      Size = 255
    end
    object tablo_sinavBmat2: TStringField
      FieldName = 'Bmat2'
      Size = 255
    end
    object tablo_sinavBfen2: TStringField
      FieldName = 'Bfen2'
      Size = 255
    end
    object tablo_sinavBing: TStringField
      FieldName = 'Bing'
      Size = 255
    end
  end
  object ara_sinav: TDataSource
    DataSet = tablo_sinav
    Left = 68
    Top = 224
  end
  object tablo_formul: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sinavformulleri')
    ParamCheck = False
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 212
    Top = 268
    object tablo_formulid: TIntegerField
      FieldName = 'id'
    end
    object tablo_formulformul_6: TStringField
      FieldName = 'formul_6'
      Size = 255
    end
    object tablo_formulformul_5: TStringField
      FieldName = 'formul_5'
      Size = 255
    end
    object tablo_formulformul_4: TStringField
      FieldName = 'formul_4'
      Size = 255
    end
    object tablo_formulformul_3: TStringField
      FieldName = 'formul_3'
      Size = 255
    end
    object tablo_formulformul_2: TStringField
      FieldName = 'formul_2'
      Size = 255
    end
    object tablo_formulformul_1: TStringField
      FieldName = 'formul_1'
      Size = 255
    end
    object tablo_formulyanlis_dogru_orani: TIntegerField
      FieldName = 'yanlis_dogru_orani'
    end
    object tablo_formulaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
  end
  object ara_formul: TDataSource
    DataSet = tablo_formul
    Left = 208
    Top = 216
  end
  object tablo_sinavlar: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 124
    Top = 176
  end
  object hesap1: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2'
      'ING')
    Left = 524
    Top = 124
  end
  object hesap2: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2'
      'ING')
    Left = 568
    Top = 120
  end
  object hesap3: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2'
      'ING')
    Left = 608
    Top = 116
  end
  object hesap4: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2'
      'ING')
    Left = 528
    Top = 156
  end
  object hesap5: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2'
      'ING')
    Left = 568
    Top = 148
  end
  object hesap6: TCalcExpress
    Formula = '0'
    Variables.Strings = (
      'TUR'
      'SOS1'
      'MAT1'
      'FEN1'
      'EDSOS'
      'SOS2'
      'MAT2'
      'FEN2'
      'ING')
    Left = 620
    Top = 152
  end
  object TbSinifBilgisi: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'SELECT sinifi from ogrenciler where donemi = :p0 and ogr_no = :p' +
        '1')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 152
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object TbSinifBilgisisinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
  end
  object TbSiralamalar: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = False
    Params = <>
    Options = [doCalcDefaults]
    Left = 64
    Top = 344
  end
end
