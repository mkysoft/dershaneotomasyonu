object fr_konu_analizi: Tfr_konu_analizi
  Left = 209
  Top = 224
  Width = 637
  Height = 437
  Caption = 'Konu Analizi'
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
  object sayfalar: TcxPageControl
    Left = 0
    Top = 0
    Width = 629
    Height = 403
    ActivePage = sayfa_sinavlar
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    ClientRectBottom = 403
    ClientRectRight = 629
    ClientRectTop = 24
    object sayfa_sinavlar: TcxTabSheet
      Caption = 'S'#305'navlar'
      ImageIndex = 0
      object GrSinavTanim: TcxGrid
        Left = 0
        Top = 0
        Width = 629
        Height = 343
        Align = alClient
        TabOrder = 0
        object VwSinavlar: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Enabled = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Enabled = False
          NavigatorButtons.Delete.Visible = False
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
          NavigatorButtons.Filter.Visible = True
          DataController.DataSource = ara_sinavtanim
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Navigator = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object VwSinavlarsinav_no: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'sinav_no'
            Options.Editing = False
            Width = 23
          end
          object VwSinavlarturu: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'turu'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              #214'SS'
              'OKS')
            Width = 30
          end
          object VwSinavlarsinav_tarihi: TcxGridDBColumn
            Caption = 'Tarihi'
            DataBinding.FieldName = 'sinav_tarihi'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = False
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 64
          end
          object VwSinavlarsinav_adi: TcxGridDBColumn
            Caption = 'Ad'#305
            DataBinding.FieldName = 'sinav_adi'
            Width = 173
          end
        end
        object LvSinavTanim: TcxGridLevel
          GridView = VwSinavlar
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 343
        Width = 629
        Height = 36
        Align = alBottom
        Style.BorderStyle = ebsNone
        TabOrder = 1
        DesignSize = (
          629
          36)
        object bt_analiz: TcxButton
          Left = 444
          Top = 4
          Width = 179
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Se'#231'ili S'#305'nav(lar)'#305' Analiz Et >>'
          TabOrder = 0
          DropDownMenu = mn_analiz
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfOffice11
        end
      end
    end
    object sayfa_analiz_sonuclari: TcxTabSheet
      Caption = 'Analiz Sonu'#231'lar'#305
      Enabled = False
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 629
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = True
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          629
          34)
        object bt_yazdir: TcxButton
          Left = 469
          Top = 1
          Width = 75
          Height = 32
          Anchors = [akTop, akRight]
          Caption = 'Yazd'#305'r'
          TabOrder = 0
          OnClick = bt_yazdirClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000220B0000220B00000001000000010000212121002121
            290029292900292931003131310039393900424242004A4A4A00525252005A5A
            5A00635A6300636363006B6B6B007B7B7B00848484008C84840084C684008C8C
            8C009C949C009C9C9C00A59C9C00A59CA500A5A5A500ADA5A500F7B5A500FFBD
            A500ADA5AD00ADADAD00B5ADAD00ADB5AD00E7B5AD00FFC6AD00B5ADB500B5B5
            B500BDB5B500DEB5B500E7BDB500F7BDB500FFC6B500FFCEB500BDB5BD00BDBD
            BD00C6BDBD00E7BDBD00E7C6BD00FFCEBD00FFD6BD00C6BDC600C6C6C600CEC6
            C600E7C6C600E7CEC600FFD6C600C6C6CE00CEC6CE00CECECE00D6CECE00EFCE
            CE00EFD6CE00FFDECE00D6CED600D6D6D600DED6D600F7DED600FFDED600FFE7
            D600D6F7D600D6D6DE00D6DEDE00DEDEDE00E7DEDE00EFDEDE00DEE7DE00E7E7
            DE00FFE7DE00FFEFDE00E7E7E700EFE7E700FFEFE700EFEFEF00FFF7EF00F7F7
            F700FFF7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00535353535353
            53535353535353535353535353535353535353535353535353531B361B135353
            1B3D3E291B53535353535353535353531B305151291B090B0E1B31464C3D2153
            5353535353531B224C54544F221C070004060B0E1B374C4517535353531B4554
            5251524F2121120C07040204060B11165353531637515151514C301B13161B21
            1C130D0905020614535353164F514F452917213D2116141314172121160E0C14
            535353164C3E2216223D454C4C3D30221B161413161B2116535353161C16293D
            453D3D4D51514F4C3D3729211716141353535316293D3D3D3D3D4C51302F3745
            4C4C453D37302916535353163D3D3D3D3D4551291D10211B1B29303D45453D1B
            5353535329453D3D4C4C21294F424F4C25291C171B292921535353535321303D
            301B315151514F4C4C4C453D3717165353535353535353142945371B30454C4C
            4C4C4C4530225353535353535353531B5151452929303D3D3D3D301B22535353
            5353535353535353474A41403F3F3F4746453053535353535353535353535353
            2C4A403B342D26261F3953535353535353535353535353532C4A403B342D261F
            18535353535353535353535353535353334A403B342D261F1853535353535353
            5353535353535353334A403B342D261F25535353535353535353535353535353
            334A403B342D2625255353535353535353535353535353324E4A403B342D2725
            53535353535353535353535353535333504A413B343425255353535353535353
            5353535353532333322C2C24241E255353535353535353535353}
          LookAndFeel.Kind = lfOffice11
        end
        object bt_exceleaktar: TcxButton
          Left = 547
          Top = 1
          Width = 81
          Height = 32
          Caption = 'Excel'
          TabOrder = 1
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
      object GrAnaliz: TcxGrid
        Left = 0
        Top = 34
        Width = 629
        Height = 345
        Align = alClient
        TabOrder = 1
        object VwAnaliz: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ara_konu_analiz
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object VwAnalizsinifi: TcxGridDBColumn
            Caption = 'S'#305'n'#305'f'#305
            DataBinding.FieldName = 'sinifi'
          end
          object VwAnalizsoru_no: TcxGridDBColumn
            Caption = 'Soru No'
            DataBinding.FieldName = 'soru_no'
          end
          object VwAnalizders: TcxGridDBColumn
            Caption = 'Ders'
            DataBinding.FieldName = 'ders'
          end
          object VwAnalizkonu: TcxGridDBColumn
            Caption = 'Konu'
            DataBinding.FieldName = 'konu'
          end
          object VwAnalizdurum: TcxGridDBColumn
            Caption = 'Durum'
            DataBinding.FieldName = 'durum'
          end
          object VwAnalizadet: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
          end
        end
        object VwSinifSoru: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
        end
        object LvAnaliz: TcxGridLevel
          GridView = VwAnaliz
        end
      end
    end
  end
  object tablo_sinavtanim: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'select sinav_no,turu,sinav_tarihi,sinav_adi from sinavtanim orde' +
        'r by sinav_tarihi desc')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 96
    Top = 88
    object tablo_sinavtanimsinav_no: TIntegerField
      FieldName = 'sinav_no'
    end
    object tablo_sinavtanimturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object tablo_sinavtanimsinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
    end
    object tablo_sinavtanimsinav_adi: TStringField
      FieldName = 'sinav_adi'
      Size = 25
    end
  end
  object ara_sinavtanim: TDataSource
    DataSet = tablo_sinavtanim
    Left = 96
    Top = 136
  end
  object mn_analiz: TPopupMenu
    Left = 296
    Top = 232
    object mn_genel_konu_analizi: TMenuItem
      Caption = 'Genel Konu Analizi'
      OnClick = mn_analizClick
    end
    object mn_sinif_konu_analizi: TMenuItem
      Caption = 'S'#305'n'#305'f Baz'#305'nda Konu Analizi'
      OnClick = mn_analizClick
    end
    object MnSoruNumarasiIleKonuAnalizi: TMenuItem
      Caption = 'Soru Numaras'#305' ile Konu Analizi'
      OnClick = mn_analizClick
    end
    object mnSinifBazindaSoruNumarasiIleKonuAnalizi: TMenuItem
      Caption = 'S'#305'n'#305'f Baz'#305'nda Soru Numaras'#305' ile Konu Analizi'
      OnClick = mnSinifBazindaSoruNumarasiIleKonuAnaliziClick
    end
  end
  object tablo_konu_analiz: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 477
    Top = 72
    object tablo_konu_analizsoru_no: TIntegerField
      FieldName = 'soru_no'
    end
    object tablo_konu_analizsinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_konu_analizders: TStringField
      FieldName = 'ders'
      Required = True
    end
    object tablo_konu_analizkonu: TStringField
      FieldName = 'konu'
      Size = 255
    end
    object tablo_konu_analizdurum: TStringField
      DisplayWidth = 255
      FieldName = 'durum'
      Size = 1
    end
    object tablo_konu_analizadet: TLargeintField
      FieldName = 'adet'
      Required = True
    end
  end
  object ara_konu_analiz: TDataSource
    DataSet = tablo_konu_analiz
    Enabled = False
    Left = 473
    Top = 124
  end
  object rp_analiz: TdxComponentPrinter
    CurrentLink = rp_analizLink1
    Version = 0
    Left = 469
    Top = 181
    object rp_analizLink1: TdxGridReportLink
      Active = True
      Component = GrAnaliz
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39388.669272604170000000
      BuiltInReportLink = True
    end
  end
  object t_zaman: TTimer
    Enabled = False
    OnTimer = t_zamanTimer
    Left = 148
    Top = 304
  end
  object dosya: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Konu Analizleri'
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosyaCanClose
    Left = 200
    Top = 296
  end
  object TabloSinifBazindaSoruNoIle: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 336
    Top = 76
  end
  object MemSinifSoru: TdxMemData
    Indexes = <>
    SortOptions = [soDesc]
    SortedField = 'dersno,soru_no'
    Left = 220
    Top = 100
  end
  object AraSinifSoru: TDataSource
    DataSet = MemSinifSoru
    Enabled = False
    Left = 220
    Top = 172
  end
  object MnGrAnaliz: TcxGridPopupMenu
    Grid = GrAnaliz
    PopupMenus = <>
    Left = 392
    Top = 244
  end
end
