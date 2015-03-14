object FrSinavSonucundanSinifAtama: TFrSinavSonucundanSinifAtama
  Left = 258
  Top = 232
  BorderStyle = bsToolWindow
  Caption = 'S'#305'nav Sonucundan S'#305'n'#305'f Atama'
  ClientHeight = 386
  ClientWidth = 591
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
  object GroupBox2: TGroupBox
    Left = 353
    Top = 25
    Width = 117
    Height = 327
    Align = alLeft
    Caption = ' Hedef S'#305'n'#305'flar  '
    TabOrder = 0
    object LsHedefSiniflar: TcxListBox
      Left = 2
      Top = 15
      Width = 113
      Height = 310
      Align = alClient
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 25
    Width = 353
    Height = 327
    Align = alLeft
    Caption = ' S'#305'nav'#305' Se'#231'iniz  '
    TabOrder = 1
    object gr_sinavlar: TcxGrid
      Left = 2
      Top = 15
      Width = 349
      Height = 310
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
        DataController.DataSource = DsSinavlar
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
  object rb_puan_turu: TcxRadioGroup
    Left = 472
    Top = 228
    Width = 117
    Height = 89
    Caption = ' Puan T'#252'r'#252
    Properties.Items = <
      item
        Caption = 'Say'#305'sal / Fen A'#287'.P'
      end
      item
        Caption = 'S'#246'zel / Toplam P'
      end
      item
        Caption = 'EA'
      end>
    TabOrder = 2
  end
  object cxLabel8: TcxLabel
    Left = 0
    Top = 352
    Width = 591
    Height = 34
    TabStop = False
    Align = alBottom
    AutoSize = False
    Caption = 
      'Birden falza s'#305'n'#305'f'#305' ayn'#305' anda se'#231'mek i'#231'in CTRL tu'#351'unu bas'#305'p s'#305'n'#305 +
      'flara t'#305'klay'#305'n'#305'z. '#214#287'renlerin s'#305'n'#305'flar'#305'n atama s'#305'ras'#305'n'#305' de'#287'i'#351'tirm' +
      'ek i'#231'in sa'#287' tarafta bulunan Yukar'#305' ve A'#351'a'#287#305' d'#252#287'melerini kullanar' +
      'ak s'#305'n'#305'flar'#305' '#246'ncelik s'#305'ras'#305'na g'#246're diziniz.'
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
  end
  object bt_ata: TBitBtn
    Left = 486
    Top = 320
    Width = 95
    Height = 25
    Caption = 'Ata'
    TabOrder = 4
    OnClick = bt_ataClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object Label2: TLabel
      Left = 173
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
      Left = 219
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
  object BtAsagi: TButton
    Left = 472
    Top = 160
    Width = 73
    Height = 33
    Caption = '\/  A'#351'a'#287#305'  \/'
    TabOrder = 6
    OnClick = BtAsagiClick
  end
  object BtYukari: TButton
    Left = 472
    Top = 120
    Width = 73
    Height = 33
    Caption = '/\  Yukar'#305'  /\'
    TabOrder = 7
    OnClick = BtYukariClick
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 292
    Top = 24
  end
  object tablo_guncelle: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 284
    Top = 188
  end
  object TbSiniflar: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      'SELECT sinif FROM siniflar WHERE donem=:p0 order by sinif')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 96
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object TbSiniflarsinif: TStringField
      FieldName = 'sinif'
      Required = True
      Size = 10
    end
  end
  object DsSiniflar: TDataSource
    DataSet = TbSiniflar
    Enabled = False
    Left = 96
    Top = 152
  end
  object TbSinavlar: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'select sinav_no,turu,sinav_tarihi,sinav_adi from sinavtanim orde' +
        'r by sinav_tarihi desc,sinav_adi')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 88
    Top = 196
    object TbSinavlarsinav_no: TIntegerField
      FieldName = 'sinav_no'
    end
    object TbSinavlarturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object TbSinavlarsinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
    end
    object TbSinavlarsinav_adi: TStringField
      FieldName = 'sinav_adi'
      Size = 25
    end
  end
  object DsSinavlar: TDataSource
    DataSet = TbSinavlar
    Left = 88
    Top = 248
  end
end
