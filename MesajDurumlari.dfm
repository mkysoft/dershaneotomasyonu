object FrMesajDurumlari: TFrMesajDurumlari
  Left = 290
  Top = 222
  Width = 673
  Height = 439
  Caption = 'Mesaj Durumlar'#305
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 665
    Height = 100
    ActivePage = cxTabSheet1
    Align = alTop
    Style = 8
    TabOrder = 0
    ClientRectBottom = 100
    ClientRectRight = 665
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Listeleme Se'#231'enekleri'
      ImageIndex = 0
      DesignSize = (
        665
        76)
      object Label3: TLabel
        Left = 92
        Top = 0
        Width = 113
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Olu'#351'turulma Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 293
        Top = 0
        Width = 85
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Kullan'#305'c'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 205
        Top = 0
        Width = 85
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Al'#305'c'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 1
        Top = 0
        Width = 84
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Durumu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cm_tar_kis: TcxComboBox
        Left = 108
        Top = 13
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          'B'#252'y'#252'k'
          'K'#252#231#252'k'
          'Aras'#305'nda')
        Properties.OnChange = cm_tar_kisPropertiesChange
        Style.StyleController = sc_text
        TabOrder = 0
        Text = 'T'#252'm'#252
      end
      object tx_tar_bas: TcxDateEdit
        Left = 108
        Top = 34
        Width = 81
        Height = 21
        Enabled = False
        Style.StyleController = sc_text
        TabOrder = 1
      end
      object tx_tar_bit: TcxDateEdit
        Left = 108
        Top = 54
        Width = 81
        Height = 21
        Enabled = False
        Style.StyleController = sc_text
        TabOrder = 2
      end
      object cm_kul_kis: TcxComboBox
        Left = 293
        Top = 13
        Width = 85
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          #304#231'eren')
        Properties.OnChange = cm_kul_kisPropertiesChange
        Style.StyleController = sc_text
        TabOrder = 3
        Text = 'T'#252'm'#252
      end
      object tx_kul_bas: TcxTextEdit
        Left = 293
        Top = 34
        Width = 85
        Height = 21
        AutoSize = False
        Enabled = False
        Properties.MaxLength = 255
        Style.StyleController = sc_text
        TabOrder = 4
      end
      object bt_goster: TBitBtn
        Left = 588
        Top = 43
        Width = 74
        Height = 29
        Anchors = [akTop, akRight]
        Caption = 'G'#246'ster'
        TabOrder = 5
        OnClick = bt_gosterClick
      end
      object bt_Sifirla: TBitBtn
        Left = 588
        Top = 7
        Width = 74
        Height = 29
        Anchors = [akTop, akRight]
        Caption = 'S'#305'f'#305'rla'
        TabOrder = 6
        OnClick = bt_SifirlaClick
      end
      object cm_alc_kis: TcxComboBox
        Left = 205
        Top = 13
        Width = 85
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it')
        Properties.OnChange = cm_alc_kisPropertiesChange
        Style.StyleController = sc_text
        TabOrder = 7
        Text = 'T'#252'm'#252
      end
      object tx_alc_bas: TcxTextEdit
        Left = 205
        Top = 34
        Width = 85
        Height = 21
        AutoSize = False
        Enabled = False
        Properties.MaxLength = 255
        Style.StyleController = sc_text
        TabOrder = 8
      end
      object cm_drm_kis: TcxComboBox
        Left = 1
        Top = 13
        Width = 85
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          #304'letildi'
          'Beklemede'
          'Ula'#351#305'lamad'#305
          'Hatal'#305' Al'#305'c'#305
          'G'#246'nderilmedi')
        Style.StyleController = sc_text
        TabOrder = 9
        Text = 'G'#246'nderilmedi'
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Ayr'#305'nt'#305'l'#305' Listeleme Se'#231'enekleri'
      ImageIndex = 1
      object fl_iletisim: TcxDBFilterControl
        Left = 0
        Top = 0
        Width = 596
        Height = 76
        Align = alClient
        DataSet = tablo_iletisim
        FilterOptions.DateTimeFormat = 'yyyy-mm-dd'
        FilterOptions.TranslateBetween = True
        Items = <>
        ParentColor = True
        SortItems = True
        TabOrder = 0
        TabStop = True
      end
      object Panel1: TPanel
        Left = 596
        Top = 0
        Width = 69
        Height = 76
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          69
          76)
        object bt_uygula: TBitBtn
          Left = 3
          Top = 41
          Width = 65
          Height = 29
          Anchors = [akTop, akRight]
          Caption = 'Uygula'
          TabOrder = 0
          OnClick = bt_uygulaClick
        end
        object bt_iptal: TBitBtn
          Left = 3
          Top = 7
          Width = 65
          Height = 29
          Anchors = [akTop, akRight]
          Caption = #304'ptal'
          TabOrder = 1
          OnClick = bt_iptalClick
        end
      end
    end
  end
  object gr_iletisim: TcxGrid
    Left = 0
    Top = 100
    Width = 665
    Height = 272
    Align = alClient
    BevelKind = bkSoft
    TabOrder = 1
    object gr_iletisimview: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Enabled = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Enabled = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = ara_iletisim
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Navigator = True
      OptionsView.Footer = True
      object gr_iletisimviewid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        Options.Filtering = False
        Options.Grouping = False
        Width = 39
      end
      object gr_iletisimviewmsgid: TcxGridDBColumn
        Caption = 'Mesaj ID'
        DataBinding.FieldName = 'msgid'
      end
      object gr_iletisimviewtur: TcxGridDBColumn
        Caption = 'T'#252'r'#252
        DataBinding.FieldName = 'tur'
        Width = 48
      end
      object gr_iletisimviewkonum: TcxGridDBColumn
        Caption = 'Al'#305'c'#305
        DataBinding.FieldName = 'konum'
        Width = 81
      end
      object gr_iletisimviewmesaj: TcxGridDBColumn
        Caption = 'Mesaj Metni'
        DataBinding.FieldName = 'mesaj'
        Options.Filtering = False
        Options.Grouping = False
        Width = 145
      end
      object gr_iletisimviewdurumu: TcxGridDBColumn
        Caption = 'Durumu'
        DataBinding.FieldName = 'durumu'
        Width = 65
      end
      object gr_iletisimviewolusturulma: TcxGridDBColumn
        Caption = 'Olu'#351'turulma.T'
        DataBinding.FieldName = 'olusturulma'
        Options.Filtering = False
        Width = 73
      end
      object gr_iletisimviewgonderilme: TcxGridDBColumn
        Caption = 'G'#246'nderilme.T'
        DataBinding.FieldName = 'gonderilme'
        Options.Filtering = False
        Width = 71
      end
      object gr_iletisimviewkullanici: TcxGridDBColumn
        Caption = 'Kullan'#305'c'#305
        DataBinding.FieldName = 'kullanici'
        Width = 75
      end
    end
    object gr_iletisimLevel1: TcxGridLevel
      GridView = gr_iletisimview
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 372
    Width = 665
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = 14854273
    TabOrder = 2
    DesignSize = (
      665
      33)
    object rb_tumu: TcxRadioButton
      Left = 212
      Top = 9
      Width = 117
      Height = 17
      Caption = 'T'#252'm'#252' i'#231'in ge'#231'erli'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object rb_ekran: TcxRadioButton
      Left = 4
      Top = 9
      Width = 205
      Height = 17
      Caption = 'Sadece ekrandakiler i'#231'in ge'#231'erli'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
    object bt_raporlari_al: TBitBtn
      Left = 451
      Top = 2
      Width = 95
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Raporlar'#305' Al'
      TabOrder = 2
      OnClick = bt_raporlari_alClick
    end
    object mn_mesajlari_gonder: TBitBtn
      Left = 552
      Top = 2
      Width = 111
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Mesajlar'#305' G'#246'nder'
      TabOrder = 3
      OnClick = mn_mesajlari_gonderClick
    end
    object bt_exceleaktar: TcxButton
      Left = 363
      Top = 1
      Width = 81
      Height = 31
      Caption = 'Excel'
      TabOrder = 4
      OnClick = bt_exceleaktarClick
      Glyph.Data = {
        C2070000424DC20700000000000036000000280000001C000000170000000100
        1800000000008C07000000000000000000000000000000000000417B57214F39
        214F39214F39214F39214F39214F391A45331A45331A45331A45331A45331A45
        331335291335291335291335291335291335290D281F0D281F0D281F0D281F0D
        281F0A1F190A1F190A1F190A1F19417B575CAA6545A35F45A35F45A35F45A35F
        3F9E5A3F9E5A3F9E5A399755399755399755358C4F358C4F2D87472D87472D87
        47227F40227F40227F401A7A3C1A7A3C1274371274371274370F6C330A6D300A
        1F19417B575CAA656C977E517666517666517666517666517666517666517666
        4B6B604B6B604B6B604B6B604B6B604B6B604B6B60435F59435F59435F59435F
        59435F59435F59435F59435F59435F590F6C330A1F1947815D63B2766C977EE8
        F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADB
        DAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2D2E4D2D2E4D2D2E4
        D2435F591274370A1F194D876273BA836C977EEDF5EDEDF5EDEBF3EBEAF2E9E8
        F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFAAD6B261996426422D
        213B27213B27213B27213B27213B27213B27D5E5D5435F591A7A3C0D281F4D87
        627CC18576A086EFF6EF4B964D26422D26422D26422D26422D26422D26422D26
        422D26422D26422D1A4D2A0F60153287353287351274371C6C3A2C66422C6642
        3A5F51213B27D5E5D5435F59227F400D281F558E6781BC9076A086F1F7F14B96
        4D1274371274371C6C3A1C6C3A2C66422C66423A5F513A5F513A5F510469041D
        781E88C7926DB6752D87472D8747227F40227F40046904D8E7D8D5E5D5435F59
        227F40133529558E6788C79276A086F3F8F3DAE9DA4B964D6DB67573BB7C73BB
        7C6DB67568B06F5CAA6555A45A0469044093479DD0A76DB675409347358C4F2D
        87472D874704690494C79CD8E7D8D8E7D8435F59227F40133529558E6794C79C
        76A086F3F8F3F3F8F3DAE9DA4B964D6DB67573BB7C73BB7C64AC6955A45A0469
        044093479DD0A768B06F499B54499B54409347358C4F0469041A4D2AA8C2A8D9
        E8D9D8E7D84B6B602D874713352958966B94C79C76A086F5F9F5F3F8F3F3F8F3
        DAE9DA4B964D6DB67568B06F55A45A0469044093479DD0A76DB67555A45A55A4
        5A499B54499B540469042D8747227F400F6015DAE9DAD9E8D94B6B602D874713
        352958966B9DD0A781AA8DF6FAF5F5F9F5F3F8F3F3F8F3DAE9DA4B964D55A45A
        046904409347AAD6B273BB7C55A45A55A45A55A45A55A45A0469043A734C5782
        5A558E6757825ADCEADBDAE9DA4B6B602D87471335295F9B729DD0A781AA8DF6
        FAF6F6FAF5F5F9F5F3F8F3F3F8F3DAE9DA1D781E409347AAD6B27CC1855CAA65
        5CAA6555A45A55A45A3A734CA8C2A8E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEA
        DB4B6B60358C4F1335295F9B72AAD6B281AA8DF8FAF8F6FAF6F6FAF5F5F9F5F3
        F8F394C79C4B964DBADEC088C79264AC6964AC695CAA6555A45A57825A046904
        CDDACDE2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADB4B6B60358C4F1A45335F9B
        72AAD6B281AA8DF9FBFAF8FAF8F6FAF6F6FAF594C79C499B54BADEC094C79C6D
        B67568B06F64AC695CAA6557825A579A5E57825A046904CDDACDE2EEE3E2EEE3
        E0EEE0DFECDFDEEBDE4B6B603997551A453366A077AAD6B281AA8DFAFDFAF9FB
        FAF8FAF894C79C55A45AC4E5CA94C79C73BB7C73BB7C6DB67564AC6957825A68
        B06F6DB67555A45A57825A046904CDDACDE2EEE3E2EEE3E0EEE0DFECDF517666
        3997551A453366A077BADEC081AA8DFAFDFAFAFDFA94C79C5CAA65C4E5CA88C7
        927CC1857CC18573BB7C68B06F57825A68B06F73BB7C73BB7C6DB67555A45A57
        825A046904CDDACDE2EEE3E2EEE3E0EEE05176663997551A45336CA67CBADEC0
        8AB795FBFEFB94C79C68B06FC4E5CA9DD0A788C7927CC1857CC18573BB7C6199
        64A8C2A86199646DB67573BB7C73BB7C6DB67555A45A57825A046904CDDACDE2
        EEE3E2EEE35176663F9E5A1A45336CA67CBADEC08AB795FDFEFD6DB675C4E5CA
        9DD0A788C79288C79288C79273BA83619964D8E7D8F3F8F3CDDACD6199646DB6
        7573BB7C73BB7C6DB67555A45A57825A046904E4EFE4E2EEE35176663F9E5A1A
        45336CA67CC4E5CA8AB795FEFFFE6DB6756DB67568B06F64AC6964AC69619964
        619964E3EBE3F5F9F5F3F8F3F3F8F3CDDACD619964619964619964558E675782
        5A57825A57825AE6F0E6E4EFE45176663F9E5A214F3971AA81C4E5CA8AB795FF
        FFFFFEFFFEFDFEFDFBFEFBFAFDFAFAFDFAF9FBFAF8FAF8F6FAF6F6FAF5F5F9F5
        F3F8F3F3F8F3F1F7F1EFF6EFEDF5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1E8E6F0
        E651766645A35F214F3976AF85CCE9D281AA8D8AB7958AB7958AB7958AB7958A
        B7958AB7958AB79581AA8D81AA8D81AA8D81AA8D81AA8D76A08676A08676A086
        76A08676A08676A0866C977E6C977E6C977E6C977E6C977E45A35F214F3976AF
        85CCE9D2CCE9D2CCE9D2C4E5CAC4E5CAC4E5CABADEC0BADEC0BADEC0AAD6B2AA
        D6B2AAD6B29DD0A79DD0A794C79C94C79C88C79281BC907CC18573BA8373BA83
        63B27663B27663B2765CAA655CAA65214F3976AF8576AF8576AF8571AA8171AA
        8171AA816CA67C6CA67C6CA67C66A07766A07766A0775F9B725F9B725F9B7258
        966B558E67558E67558E674D87624D87624D876247815D47815D47815D417B57
        417B57417B57}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object tablo_iletisim: TZQuery
    Connection = veriler.data_dershane
    Filtered = True
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from iletisim')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 112
    Top = 160
    object tablo_iletisimid: TIntegerField
      FieldName = 'id'
    end
    object tablo_iletisimmsgid: TStringField
      FieldName = 'msgid'
      Size = 25
    end
    object tablo_iletisimtur: TStringField
      FieldName = 'tur'
      Required = True
      Size = 6
    end
    object tablo_iletisimkonum: TStringField
      FieldName = 'konum'
      Required = True
      Size = 50
    end
    object tablo_iletisimmesaj: TStringField
      FieldName = 'mesaj'
      Required = True
      Size = 1000
    end
    object tablo_iletisimolusturulma: TDateTimeField
      FieldName = 'olusturulma'
    end
    object tablo_iletisimdurumu: TStringField
      FieldName = 'durumu'
      Size = 12
    end
    object tablo_iletisimgonderilme: TDateTimeField
      FieldName = 'gonderilme'
    end
    object tablo_iletisimkullanici: TStringField
      FieldName = 'kullanici'
      Size = 80
    end
  end
  object ara_iletisim: TDataSource
    DataSet = tablo_iletisim
    Left = 204
    Top = 156
  end
  object sc_text: TcxEditStyleController
    StyleFocused.Color = 11075583
    Left = 320
    Top = 160
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 240
    Top = 240
  end
  object mn_iletisim: TcxGridPopupMenu
    Grid = gr_iletisim
    PopupMenus = <>
    Left = 428
    Top = 232
  end
  object t_zaman: TTimer
    Enabled = False
    OnTimer = t_zamanTimer
    Left = 496
    Top = 240
  end
  object dosya: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Mesaj Durumlar'#305
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosyaCanClose
    Left = 548
    Top = 232
  end
end
