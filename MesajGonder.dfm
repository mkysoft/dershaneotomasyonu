object FrMesajGonder: TFrMesajGonder
  Left = 237
  Top = 214
  Width = 681
  Height = 444
  HelpContext = 2
  Caption = 'Mesaj G'#246'nder'
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
    Width = 673
    Height = 410
    HelpContext = 2
    ActivePage = sayfa_MesajGonder
    Align = alClient
    Style = 8
    TabOrder = 0
    ClientRectBottom = 410
    ClientRectRight = 673
    ClientRectTop = 24
    object sayfa_MesajGonder: TcxTabSheet
      HelpContext = 10
      Caption = 'Mesaj G'#246'nder'
      ImageIndex = 0
      DesignSize = (
        673
        386)
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 673
        Height = 37
        HelpContext = 11
        Align = alTop
        Shape = bsBottomLine
      end
      object Bevel2: TBevel
        Left = 0
        Top = 351
        Width = 673
        Height = 35
        HelpContext = 12
        Align = alBottom
        Shape = bsTopLine
      end
      object tx_mesaj: TcxRichEdit
        Left = 0
        Top = 37
        Width = 673
        Height = 314
        HelpContext = 13
        Align = alClient
        Properties.MaxLength = 1000
        Properties.OnChange = tx_mesajPropertiesChange
        Style.TextColor = clWindowText
        TabOrder = 0
        OnEditing = tx_mesajEditing
      end
      object bt_kaydet: TBitBtn
        Left = 4
        Top = 355
        Width = 93
        Height = 29
        HelpContext = 14
        Anchors = [akLeft, akBottom]
        Caption = 'Kaydet'
        Enabled = False
        TabOrder = 1
        OnClick = bt_kaydetClick
      end
      object bt_farkli_kaydet: TBitBtn
        Left = 104
        Top = 355
        Width = 97
        Height = 29
        HelpContext = 15
        Anchors = [akLeft, akBottom]
        Caption = 'Farkl'#305' Kaydet'
        Enabled = False
        TabOrder = 2
        OnClick = bt_farkli_kaydetClick
      end
      object bt_sil: TBitBtn
        Left = 208
        Top = 355
        Width = 97
        Height = 29
        HelpContext = 16
        Anchors = [akLeft, akBottom]
        Caption = 'Sil'
        Enabled = False
        TabOrder = 3
        OnClick = bt_silClick
      end
      object bt_temizle: TBitBtn
        Left = 312
        Top = 355
        Width = 97
        Height = 29
        HelpContext = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Temizle'
        TabOrder = 4
        OnClick = bt_temizleClick
      end
      object bt_hazir_mesajlar: TBitBtn
        Left = 4
        Top = 4
        Width = 109
        Height = 29
        HelpContext = 18
        Caption = 'Haz'#305'r Mesajlar   >>'
        Enabled = False
        TabOrder = 5
        OnClick = bt_hazir_mesajlarClick
      end
      object bt_gonder: TBitBtn
        Left = 602
        Top = 355
        Width = 68
        Height = 29
        HelpContext = 19
        Anchors = [akRight, akBottom]
        Caption = 'G'#246'nder >>'
        TabOrder = 6
        OnClick = bt_gonderClick
      end
      object bt_degiskenler: TBitBtn
        Left = 120
        Top = 4
        Width = 161
        Height = 29
        HelpContext = 20
        Caption = 'Kullan'#305'labilecek De'#287'i'#351'kenler >>'
        Enabled = False
        TabOrder = 7
        OnClick = bt_degiskenlerClick
      end
      object bt_kontor_bilgisi: TBitBtn
        Left = 572
        Top = 4
        Width = 97
        Height = 29
        HelpContext = 21
        Anchors = [akTop, akRight]
        Caption = 'Kont'#246'r Bilgisi'
        TabOrder = 8
        OnClick = bt_kontor_bilgisiClick
      end
      object cxLabel1: TcxLabel
        Left = 297
        Top = 10
        Width = 59
        Height = 17
        HelpContext = 22
        Caption = 'Uzunluk :'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object lb_uzunluk: TcxLabel
        Left = 353
        Top = 10
        Width = 28
        Height = 17
        HelpContext = 23
        AutoSize = False
        Caption = '0'
        ParentFont = False
        Properties.Transparent = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.TextColor = clGreen
      end
    end
    object sayfa_alicilar: TcxTabSheet
      HelpContext = 3
      Caption = 'Mesaj Gidecek Ki'#351'iler'
      ImageIndex = 1
      OnShow = sayfa_alicilarShow
      object Label1: TLabel
        Left = 0
        Top = 359
        Width = 673
        Height = 27
        Align = alBottom
        AutoSize = False
        Caption = 
          '     Listeden istedi'#287'iniz ki'#351'ileri '#231#305'kartabilirsiniz, ger'#231'ek anl' +
          'amda silinmeyecektir. K'#305'rm'#305'z'#305' renkli kay'#305'tlara mesaj gitmeyecekt' +
          'ir. Nedeni bilgilerin eksik olmas'#305' yada bilgilendirilmemeyi se'#231'm' +
          'i'#351' olmas'#305' olabilir.'
        WordWrap = True
      end
      object gr_alicilar: TcxGrid
        Left = 0
        Top = 162
        Width = 673
        Height = 197
        HelpContext = 4
        Align = alClient
        TabOrder = 0
        Visible = False
        object gr_alicilarview: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Enabled = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Enabled = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.SaveBookmark.Enabled = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Enabled = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = ara_alicilar
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsCustomize.GroupBySorting = True
          OptionsCustomize.GroupRowSizing = True
          OptionsData.Appending = True
          OptionsSelection.MultiSelect = True
          OptionsView.Navigator = True
          Styles.OnGetContentStyle = gr_alicilarviewStylesGetContentStyle
        end
        object gr_alicilarLevel1: TcxGridLevel
          GridView = gr_alicilarview
        end
      end
      object sp_bol: TcxSplitter
        Left = 0
        Top = 121
        Width = 673
        Height = 8
        HelpContext = 5
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        Control = pn_komut_filtre
      end
      object pn_komut_filtre: TPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 121
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object gr_komutlar: TcxGrid
          Left = 0
          Top = 0
          Width = 673
          Height = 121
          Align = alClient
          TabOrder = 0
          object gr_komutlar1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Enabled = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Enabled = False
            NavigatorButtons.PriorPage.Visible = False
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
            DataController.DataSource = ara_komutlar
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsBehavior.NavigatorHints = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object gr_komutlar1id: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id'
              Options.Editing = False
              Options.IncSearch = False
              Width = 26
            end
            object gr_komutlar1aciklama: TcxGridDBColumn
              Caption = 'A'#231#305'klama'
              DataBinding.FieldName = 'aciklama'
              SortIndex = 0
              SortOrder = soAscending
              Width = 211
            end
            object gr_komutlar1komut: TcxGridDBColumn
              Caption = 'Komut'
              DataBinding.FieldName = 'komut'
              Width = 422
            end
          end
          object gr_komutlarLevel1: TcxGridLevel
            GridView = gr_komutlar1
          end
        end
        object filtre_genel: TcxDBFilterControl
          Left = 0
          Top = 0
          Width = 673
          Height = 121
          Align = alClient
          FilterOptions.DateTimeFormat = 'YYYY-MM-DD'
          Items = <>
          LookAndFeel.Kind = lfOffice11
          TabOrder = 1
          TabStop = True
          Visible = False
        end
      end
      object pn_dugmeler: TPanel
        Left = 0
        Top = 129
        Width = 673
        Height = 33
        HelpContext = 8
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        DesignSize = (
          673
          33)
        object bt_hazirla: TcxButton
          Left = 4
          Top = 1
          Width = 81
          Height = 31
          Caption = 'Haz'#305'rla'
          TabOrder = 0
          OnClick = bt_hazirlaClick
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            20000000000000090000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00001B0900FFA73602FFA73602FF0D0400FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000331201FF9D38
            04FFA54503FFBB5E02FFB65402FF9B3401FF190800FF712300FF962E00FF962D
            00FF4B1600FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000381401FFB34E
            05FFD58F02FFF3CA00FFEAB800FFB14A02FF903102FF9F3201FFC46F00FFC878
            00FFA44900FF4F1800FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000391402FFB652
            05FFDB9602FFFEBC00FFFCAD00FFD26802FFAE3E02FFB95A01FFE4AC00FFF3BF
            00FFD78400FFA14100FF521900FF000000000000000000000000000000000000
            000000000000582306FF762F08FF752E07FF752D06FF752C06FF883406FFBE61
            06FFEBAD01FFFF9E00FFFF9900FFF38900FFE4A000FFEAB600FFF8D000FFFFBD
            00FFF59600FFD16400FF722600FF000000000000000000000000000000000000
            00000000000085360AFFC46909FFD28106FFC76D07FFBB5908FFC97206FFE3A2
            03FFF9C200FFFF9500FFFF9500FFFF9500FFFFB300FFFFC200FFFFBC00FFFFA4
            00FFF88F00FFD36500FF902E00FF471500FF0000000000000000000000000000
            00004B1F06FFA64F0AFFE09405FFF4B001FFEB9B02FFE18F03FFEDAA02FFFDC1
            00FFFFB400FFFF9500FFFF9500FFFF9500FFFF9A00FFFFA100FFFF9E00FFFF97
            00FFF88F00FFE18000FFC46500FF9C4000FF441400FF00000000000000000000
            0000572407FFB05A0AFFEC9D03FFFFAA00FFFFA300FFFFAB00FFFFB200FFFFAA
            00FFFF9C00FFFF9600FFFF9600FFFE9907FFFE9A0AFFFF9702FFFF9600FFFF96
            00FFFD9700FFFAA100FFEFA100FFD17200FF8E3000FF00000000000000000000
            0000000000008F440AFFE48505FFFB9A00FFFF9B00FFFF9D00FFFF9E00FFFE9B
            00FFFE9C05FFFC9F13FFFCA21CFFFCA92BFFFDAE32FFFEAA27FFFEA61CFFFFA0
            0DFFFF9C02FFFFA100FFFFA900FFEE9100FFA54300FF361100FF000000000000
            0000261103FF94400DFFD77208FFF59502FFFFA100FFFFA100FFFEA103FFFCA0
            0DFFF9A321FFF1A73EFFB98840FFBA8E48FFBC934CFFBE964FFFE9B550FFFFB7
            35FFFFA811FFFFA101FFFC9E00FFE98600FFBB4F01FFA53401FF000000001D0D
            02FFA3490EFFBE540FFFDC7407FFF79801FFFFA700FFFEA602FFFAA312FFE99B
            30FFC88B42FFB88440FF00000000000000000000000000000000A9933FFFFFD2
            5FFFFFBB36FFFDA708FFEE9100FFCA6301FFA63A02FF8A2C01FF0F0701FFB150
            11FFD3630CFFDF6A08FFF58102FFFF9F00FFFEAD00FFF9A510FFE9972FFFA169
            30FF000000000000000000000000000000000000000000000000B1A03DFFFEDF
            5DFFFEC948FFF6A91CFFD57501FFA93903FF8C2E02FF00000000BC5715FFCF5E
            0EFFF77102FFFF7500FFFF8F00FFFFA900FFFBAD07FFF09C21FF995E28FF0000
            00000000000000000000000000000000000000000000BFAD42FFFFE758FFFEE2
            5AFFFECE48FFFEB81EFFE88E01FFB54204FF8C3003FF00000000BC5715FFDA6D
            0CFFF99A01FFFFAF00FFFFB500FFFFB700FFF3A313FFE68B2EFF985A25FF0000
            00000000000000000000000000000000000000000000BBA43EFFFADC54FFFAD8
            56FFFBC945FFFDBB1DFFF5A900FFD37702FF8D3104FF00000000BD5816FFD271
            0FFFF7AF02FFFFBE00FFFFBE00FFFEBC01FFEE9C18FF92521EFF190F06FF0000
            000000000000000000000000000000000000A58532FFE7BE48FFF2C84CFFF4C4
            52FFF9C039FFF8B611FFE39302FFBF5B04FF8E3104FF000000002F1605FFBC63
            11FFE1930AFFEAA206FFF8BA02FFFABA04FFEB9B1CFFC9802FFF72531FFF0000
            00000000000000000000AB7C2FFFAC7F30FFDEAA40FFE9B444FFEBB446FFF2B6
            47FFE9A228FFD07708FFBA5306FF8F3805FF230C01FF0000000000000000B157
            14FFC86A13FFDF780AFFF6B002FFFDC501FFEC9F17FFDD8932FFC58833FF9161
            24FF926124FF996727FFDF9C3BFFE09D3CFFE09F3CFFE2A03EFFEAA744FFEBA7
            32FFD27D15FF853B05FF391502FF2B0F01FF0000000000000000000000004822
            09FFB45512FFE96C07FFFBAB01FFFFCC00FFF1AD0EFFDF8825FFD98631FFD688
            33FFD68833FFD78933FFD78A34FFD88A34FFDD8F38FFE59A3BFFF1B12DFFEBA9
            16FFC9710AFF672806FF00000000000000000000000000000000000000000000
            0000A74F11FFF18D05FFFFBE00FFFFD300FFF9C705FFECA512FFDD8423FFD578
            2CFFD4792DFFD57B2EFFD77E30FFDB8532FFE4972DFFE19426FFE7A413FFDC93
            08FFC16309FF672906FF00000000000000000000000000000000000000000000
            0000A04E15FFE39A0BFFEEB506FFE9AF07FFF0BB05FFF6C405FFEEAE0FFFE699
            18FFE2941CFFE4971EFFE69D1FFFEBA61FFFDD9119FFCC7510FFC9710BFFC163
            0AFF914109FF3C1804FF00000000000000000000000000000000000000000000
            00006B340EFFBC6E12FFCF7D12FFC76C14FFD9880DFFF6C402FFFBD801FFF2C2
            05FFE7AA0CFFE7A90CFFF8CD06FFEEBD04FFC56C0DFF8A3D0BFF783209FF7831
            09FF3C1804FF0000000000000000000000000000000000000000000000000000
            0000000000006C350EFF904613FFAB5315FFD07311FFEAA607FFEDBD05FFD890
            0CFFC76E11FFC46810FFE7B006FFD48A0BFFBC5A10FF2E1404FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000005D2D0CFFA35413FFBA6F10FFCF7E10FFB95B
            14FF9D4912FF9B4710FF9B4610FF9A440FFF9A440FFF261103FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000004F2509FFBF5B17FF8F44
            11FF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          LookAndFeel.Kind = lfOffice11
        end
        object bt_iptal: TcxButton
          Left = 88
          Top = 1
          Width = 93
          Height = 31
          Caption = #304'ptal'
          Enabled = False
          TabOrder = 1
          OnClick = bt_iptalClick
          LookAndFeel.Kind = lfOffice11
        end
        object bt_raporla: TcxButton
          Left = 184
          Top = 1
          Width = 129
          Height = 31
          Caption = 'Kriterlerime G'#246're Listele'
          Enabled = False
          TabOrder = 2
          OnClick = bt_raporlaClick
          LookAndFeel.Kind = lfOffice11
        end
        object bt_exceleaktar: TcxButton
          Left = 591
          Top = 1
          Width = 81
          Height = 31
          Anchors = [akTop, akRight]
          Caption = 'Excel'
          TabOrder = 3
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
    end
  end
  object tablo_mesaj: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from mesajlar order by aciklama')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 404
    Top = 216
    object tablo_mesajaciklama: TStringField
      FieldName = 'aciklama'
      Required = True
      Size = 25
    end
    object tablo_mesajmesaj: TStringField
      FieldName = 'mesaj'
      Required = True
      Size = 1000
    end
  end
  object mn_hazir_mesajlar: TPopupMenu
    Left = 337
    Top = 268
  end
  object mn_gonder: TPopupMenu
    Images = veriler.il_genel
    Left = 453
    Top = 292
    object mn_gonder_sms: TMenuItem
      Caption = 'SMS'
      ImageIndex = 0
      OnClick = mn_gonder_smsClick
    end
    object mn_gonder_eposta: TMenuItem
      Caption = 'Eposta'
      ImageIndex = 1
    end
    object mn_gonder_faks: TMenuItem
      Caption = 'Faks'
      Enabled = False
    end
  end
  object tablo_alicilar: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = True
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 60
    Top = 72
  end
  object tablo_komutlar: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sorgular')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 300
    Top = 76
    object tablo_komutlarid: TAutoIncField
      FieldName = 'id'
      Required = True
    end
    object tablo_komutlaraciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tablo_komutlarkomut: TMemoField
      FieldName = 'komut'
      BlobType = ftMemo
    end
  end
  object ara_komutlar: TDataSource
    DataSet = tablo_komutlar
    Left = 220
    Top = 88
  end
  object ara_alicilar: TDataSource
    DataSet = tablo_alicilar
    Left = 128
    Top = 80
  end
  object mn_degiskenler: TPopupMenu
    Left = 177
    Top = 236
  end
  object tablo_oku: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 372
    Top = 68
  end
  object tablo_iletisim: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      '')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 424
    Top = 92
  end
  object mn_grid: TcxGridPopupMenu
    Grid = gr_alicilar
    PopupMenus = <>
    Left = 124
    Top = 320
  end
  object StilDeposu: TcxStyleRepository
    Left = 264
    Top = 188
    object StilGSMYok: TcxStyle
      AssignedValues = [svColor]
      Color = 9540095
    end
    object StilYok: TcxStyle
    end
  end
  object dosya: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Al'#305'c'#305'lar'
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosyaCanClose
    Left = 548
    Top = 232
  end
  object t_zaman: TTimer
    Enabled = False
    OnTimer = t_zamanTimer
    Left = 496
    Top = 240
  end
end
