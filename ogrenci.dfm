object fr_ogrenci: Tfr_ogrenci
  Left = 235
  Top = 198
  Width = 700
  Height = 441
  HelpContext = 27
  Caption = #214#287'renci Bilgileri'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 407
    HelpContext = 28
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 143
      Height = 308
      HelpContext = 29
      Align = alTop
      Caption = ' '#214#287'renci '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label3: TcxLabel
        Left = 3
        Top = 157
        Width = 57
        Height = 17
        HelpContext = 30
        Caption = 'Numaras'#305
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object Label4: TcxLabel
        Left = 7
        Top = 192
        Width = 23
        Height = 17
        HelpContext = 31
        Caption = 'Ad'#305
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object Label5: TcxLabel
        Left = 3
        Top = 137
        Width = 47
        Height = 17
        HelpContext = 32
        Caption = 'D'#246'nemi'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object Label1: TcxLabel
        Left = 61
        Top = 157
        Width = 33
        Height = 17
        HelpContext = 33
        Caption = 'S'#305'n'#305'f'#305
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object Label2: TcxLabel
        Left = 7
        Top = 226
        Width = 43
        Height = 17
        HelpContext = 34
        Caption = 'Soyad'#305
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object tx_ogr_no: TcxDBTextEdit
        Left = 4
        Top = 171
        Width = 54
        Height = 21
        HelpContext = 35
        DataBinding.DataField = 'ogr_no'
        DataBinding.DataSource = ara_ogrenci
        Properties.MaxLength = 4
        Properties.ReadOnly = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.StyleController = sc_text
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 3
      end
      object tx_adi: TcxDBTextEdit
        Left = 4
        Top = 206
        Width = 136
        Height = 21
        HelpContext = 36
        DataBinding.DataField = 'adi'
        DataBinding.DataSource = ara_ogrenci
        Properties.MaxLength = 15
        Properties.ReadOnly = False
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.StyleController = sc_text
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 5
        OnKeyPress = tx_adiKeyPress
      end
      object tx_soyadi: TcxDBTextEdit
        Left = 4
        Top = 240
        Width = 136
        Height = 21
        HelpContext = 37
        DataBinding.DataField = 'soyadi'
        DataBinding.DataSource = ara_ogrenci
        Properties.MaxLength = 15
        Properties.ReadOnly = False
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.StyleController = sc_text
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 6
        OnKeyPress = tx_soyadiKeyPress
      end
      object tx_donemi: TcxDBComboBox
        Left = 53
        Top = 137
        Width = 87
        Height = 21
        HelpContext = 38
        DataBinding.DataField = 'donemi'
        DataBinding.DataSource = ara_ogrenci
        Properties.ReadOnly = True
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.StyleController = sc_text
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 7
        Top = 263
        Width = 130
        Height = 41
        HelpContext = 8
        BevelInner = bvLowered
        Color = 16777192
        TabOrder = 1
        object Label39: TcxLabel
          Left = 4
          Top = 4
          Width = 121
          Height = 17
          HelpContext = 39
          Caption = 'Dan'#305#351'man '#214#287'retmeni'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold, fsUnderline]
        end
        object tx_danisman: TcxLabel
          Left = 2
          Top = 22
          Width = 126
          Height = 17
          HelpContext = 40
          Align = alBottom
          AutoSize = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.Transparent = True
          ShowHint = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
      end
      object ogr_res: TcxDBImage
        Left = 2
        Top = 15
        Width = 139
        Height = 122
        Hint = 'Resim y'#252'klemek,silmek,farkl'#305' kaydetmek i'#231'in sa'#287' tu'#351'la t'#305'klay'#305'n.'
        HelpContext = 41
        TabStop = False
        Align = alTop
        DataBinding.DataField = 'resmi'
        DataBinding.DataSource = ara_ogrenci
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.GraphicTransparency = gtTransparent
        Properties.ReadOnly = False
        Properties.Stretch = True
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 0
      end
      object tx_sinifi: TcxDBLookupComboBox
        Left = 59
        Top = 171
        Width = 80
        Height = 21
        HelpContext = 42
        DataBinding.DataField = 'sinifi'
        DataBinding.DataSource = ara_ogrenci
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 120
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'sinif'
        Properties.ListColumns = <
          item
            FieldName = 'sinif'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ara_sinifi
        Properties.ReadOnly = False
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.StyleController = sc_text
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 4
        OnKeyUp = tx_sinifiKeyUp
      end
    end
    object bt_yazdir: TcxButton
      Left = 8
      Top = 375
      Width = 129
      Height = 31
      Caption = 'Yazd'#305'r >>'
      TabOrder = 1
      DropDownMenu = mn_yazdir
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
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
    object bt_bos_ogr_no_soyle: TcxButton
      Left = 8
      Top = 342
      Width = 129
      Height = 31
      Caption = 'Bo'#351' Numara Bul'
      TabOrder = 2
      OnClick = bt_bos_ogr_no_soyleClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
    object bt_ogrenci_bul: TcxButton
      Left = 8
      Top = 310
      Width = 129
      Height = 31
      Caption = #214#287'renci Bul (F3)'
      TabOrder = 3
      OnClick = bt_ogrenci_bulClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF9087901C7AC43788CF9AA0A3FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF9387911A76BB2E97FC56C0FF56A2D8FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF95848B1C75BB2D97FB59BBFF53B4F9FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA38F8E2076B72D95F959BBFF53
        B4FAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFD3CCCC918180918180918180918180BF9D93D3CCCC2174B52C95
        F958BAFF51B5FCAE4B13AE4B13AE4B13AE4B13AE4B13AE4B13AE4C17AA4B14FF
        00FFFF00FFFF00FFFF00FFB18D84B8918ABF9B92BF9D93B9978EA77D7594807B
        6A90A75599D654BBFF4FB5FCF96B53FA765AFB785EF96E58FC6551F7664FDB5C
        3FB14D1BAD4B15AA4B14FF00FFFF00FFAA7D71D3B9AAF1EBD0FBF9DBFBF9DBF1
        EBD2DDCEB8B69687A89090D3CCCC6A9BC6FA775BFB8765FB8863FB967BFBB4A9
        F88575F75F48EC6148C75736AD4C16AA4B14FF00FFA9847FE4D4D1FFFFF8FFFF
        D9FFFFD8FFFFD8FFFFD9FFFAD1EFE1B8C7A494BA938AD3CCCCFC906CFC8B66FA
        7B59FBAB9AFEFDFFFAC2B8F4664DE25A3EC05530AB4D1CAA4B14D3CCCCBEA093
        FFFFFFFFFFF4FFFFD8FFFFD9FFFFD9FFFFDBFCF5CDF7D9A9E2C9A6B58B839181
        80FC8D68FC805CFC886BFDD3CBFFFFFFFFDCD4FB8369DF5E3EB8502AAB4D1CAA
        4B14918180DFD0BBFFFFE3FFFFDBFFFFD9FFFFD9FFFFD9FFFFDBFCF3CAF2C796
        EFD3A5C8A595918180FF8961FF8763FFBDADFFFEFDFFFFFFFFDCD4FF9578EC74
        51B9542BA94A19AA4B14918180EFE8CFFFFFDBFFFFD8FFFFD9FFFFD9FFFFDAFF
        FFDAF9E4B8EFBB87F7D6A3C7A794918180F37E58D88673CFC8C7D8E4E6E9ECE9
        F9C1B1FE8E6DF98864C35F35AB4A16FF00FF918180EDE5CCFFFFDCFFFFD9FFFF
        D9FFFFDAFFFFDBFBF0C7F2C998EDB37CF8DEAAC7A5939181807B465C4948763F
        53884C5A876C718FA36E67DC6E44E17447B85423FF00FFFF00FFD3CCCCD8C6B2
        FFFFDEFFFFDAFFFFDBFFFDD7FCEFC5F5D6A4F1C993F4D3A1F1E2B5C29C8E9181
        8002278C00299300228B001D85001D7F1F2265794149FF00FFFF00FFFF00FFFF
        00FFFF00FFB48F85FFFDD5FEF3C8F9E6BCF6D9ABF2C793F3CD96FAEACFFFFFF3
        DDC6ABAE857FD3CCCC0C44B21344AD1446AD1242AC0A3AA8012E9C152A86FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFCCAF9BFFF4C2FADEAAF3C793F3C48DFA
        E4B4FFFFFCEDE5E5B28C85C0ACAA1C5ED01B51B61A51B61A52B71B50B61B50B4
        184FB50739A800259CFF00FFFF00FFFF00FFFF00FFFF00FFBC9C9BC19B90E8D1
        B1FAE9BBFBEBBCECDBB6CDB4A8AC87852271E71F62D21F62D21B57BC1B5AC31C
        5BC41D5CC51D5BC31E5FC71C58C0153A9CFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB99795B28B86AF8982AD8782B293910E305A36A4FF2B86FE2271
        E7226DDD2069D61F65CF2067D22066D1216AD5216BD6194EB5FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF010205
        0E305A2B86FE2B83F62573DA2471D8226DD61A52B7226BD32575DF2675DF1E5B
        C1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF03020305101C123967143A6912345C2368BA1A52B72A7CE21A52B7
        2B84EC2B7FE51E55B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF09090A12120F0B090A000205112D4A3291E136
        A4FF3091F83191F6349DFE2F91F4194DACFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF33312F3C3D3B1311
        0D021E382B8CDD3DB4FF39AAFF3BAFFF39ABFF276ED2FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        35312F6062617574723D3E410D243D14487D2267A62471B4195899152E75FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF535251727373848381736E69484340181A1B080606
        141213FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86868590908F7D
        7B7A555556FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
  end
  object Panel3: TPanel
    Left = 145
    Top = 0
    Width = 547
    Height = 407
    HelpContext = 46
    Align = alClient
    TabOrder = 1
    object sayfalar: TcxPageControl
      Left = 1
      Top = 1
      Width = 545
      Height = 376
      HelpContext = 55
      ActivePage = sayfalar_bilgileri
      Align = alClient
      Style = 8
      TabOrder = 0
      OnPageChanging = sayfalarPageChanging
      ClientRectBottom = 376
      ClientRectRight = 545
      ClientRectTop = 24
      object sayfalar_bilgileri: TcxTabSheet
        HelpContext = 93
        Caption = 'Bilgileri     [Ctrl + B]'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        object bilgi_sayfalari: TcxPageControl
          Left = 0
          Top = 0
          Width = 270
          Height = 352
          HelpContext = 97
          ActivePage = bilgi_sayfalari_genel
          Align = alCustom
          LookAndFeel.NativeStyle = False
          ShowFrame = True
          Style = 8
          TabOrder = 0
          TabPosition = tpBottom
          ClientRectBottom = 326
          ClientRectLeft = 1
          ClientRectRight = 269
          ClientRectTop = 1
          object bilgi_sayfalari_genel: TcxTabSheet
            HelpContext = 120
            Caption = 'Genel Bilgileri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImageIndex = 0
            ParentFont = False
            object Label6: TcxLabel
              Left = 0
              Top = 8
              Width = 78
              Height = 17
              HelpContext = 121
              Caption = 'TC Kimlik No'
              Properties.Transparent = True
              Style.TransparentBorder = True
            end
            object tx_tc_kimlik_no: TcxDBTextEdit
              Left = 84
              Top = 6
              Width = 177
              Height = 21
              HelpContext = 122
              DataBinding.DataField = 'tc_kimlik_no'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.MaxLength = 11
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.StyleController = sc_text
              TabOrder = 1
              OnExit = tx_tc_kimlik_noExit
            end
            object Label8: TcxLabel
              Left = 0
              Top = 40
              Width = 69
              Height = 17
              HelpContext = 123
              Caption = 'Kay'#305't Tarihi'
              Properties.Transparent = True
            end
            object tx_kayit_tarihi: TcxDBDateEdit
              Left = 84
              Top = 37
              Width = 100
              Height = 21
              HelpContext = 124
              DataBinding.DataField = 'kayit_tarihi'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.DateOnError = deToday
              Properties.ReadOnly = False
              Properties.SaveTime = False
              Properties.ShowTime = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = sc_text
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 3
            end
            object tx_okulu: TcxDBComboBox
              Left = 84
              Top = 69
              Width = 177
              Height = 21
              HelpContext = 125
              DataBinding.DataField = 'okulu'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.MaxLength = 25
              Properties.ReadOnly = False
              Properties.Sorted = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = sc_text
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 4
              OnKeyPress = tx_okuluKeyPress
            end
            object Label9: TcxLabel
              Left = 0
              Top = 72
              Width = 38
              Height = 17
              HelpContext = 126
              Caption = 'Okulu'
              Properties.Transparent = True
            end
            object Label10: TcxLabel
              Left = 0
              Top = 136
              Width = 48
              Height = 17
              HelpContext = 127
              Caption = 'Durumu'
              Properties.Transparent = True
            end
            object tx_durumu: TcxDBComboBox
              Left = 84
              Top = 133
              Width = 177
              Height = 21
              HelpContext = 128
              DataBinding.DataField = 'durumu'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.Items.Strings = (
                'Mezun'
                #304'lk'#246#287'retim 5'
                #304'lk'#246#287'retim 6'
                #304'lk'#246#287'retim 7'
                #304'lk'#246#287'retim 8'
                'Haz'#305'rl'#305'k'
                'Lise 1'
                'Lise 2'
                'Lise 3'
                'Lise 4')
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = sc_text
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 7
            end
            object tx_baba_adi: TcxDBTextEdit
              Left = 84
              Top = 165
              Width = 177
              Height = 21
              HelpContext = 129
              DataBinding.DataField = 'baba_adi'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.StyleController = sc_text
              TabOrder = 8
              OnKeyPress = tx_adiKeyPress
            end
            object Label11: TcxLabel
              Left = 0
              Top = 168
              Width = 56
              Height = 17
              HelpContext = 130
              Caption = 'Baba Ad'#305
              Properties.Transparent = True
            end
            object Label12: TcxLabel
              Left = 0
              Top = 200
              Width = 49
              Height = 17
              HelpContext = 131
              Caption = 'Ana Ad'#305
              Properties.Transparent = True
            end
            object tx_ana_adi: TcxDBTextEdit
              Left = 84
              Top = 197
              Width = 177
              Height = 21
              HelpContext = 132
              DataBinding.DataField = 'ana_adi'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.StyleController = sc_text
              TabOrder = 11
              OnKeyPress = tx_adiKeyPress
            end
            object tx_dogum_yeri: TcxDBTextEdit
              Left = 84
              Top = 229
              Width = 177
              Height = 21
              HelpContext = 133
              DataBinding.DataField = 'dogum_yeri'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.StyleController = sc_text
              TabOrder = 12
              OnKeyPress = tx_adiKeyPress
            end
            object Label13: TcxLabel
              Left = 0
              Top = 232
              Width = 70
              Height = 17
              HelpContext = 134
              Caption = 'Do'#287'um Yeri'
              Properties.Transparent = True
            end
            object Label14: TcxLabel
              Left = 0
              Top = 264
              Width = 80
              Height = 17
              HelpContext = 135
              Caption = 'Do'#287'um Tarihi'
              Properties.Transparent = True
            end
            object tx_dogum_tarihi: TcxDBDateEdit
              Left = 84
              Top = 261
              Width = 100
              Height = 21
              HelpContext = 136
              DataBinding.DataField = 'dogum_tarihi'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = sc_text
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 15
            end
            object tx_grubu1: TcxDBLookupComboBox
              Left = 1
              Top = 301
              Width = 85
              Height = 21
              HelpContext = 137
              DataBinding.DataField = 'grup1'
              DataBinding.DataSource = ara_ogrenci
              Properties.ClearKey = 46
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'adi'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'adi'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = ara_grup1
              Properties.ReadOnly = False
              Properties.OnChange = tx_grubu1PropertiesChange
              TabOrder = 16
              OnKeyPress = tx_grubu1KeyPress
            end
            object tx_grubu2: TcxDBLookupComboBox
              Left = 91
              Top = 301
              Width = 85
              Height = 21
              HelpContext = 138
              DataBinding.DataField = 'grup2'
              DataBinding.DataSource = ara_ogrenci
              Properties.ClearKey = 46
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'adi'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'adi'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = ara_grup2
              Properties.ReadOnly = False
              Properties.OnChange = tx_grubu2PropertiesChange
              TabOrder = 17
              OnKeyPress = tx_grubu2KeyPress
            end
            object tx_grubu3: TcxDBLookupComboBox
              Left = 181
              Top = 301
              Width = 85
              Height = 21
              HelpContext = 139
              DataBinding.DataField = 'grup3'
              DataBinding.DataSource = ara_ogrenci
              Properties.ClearKey = 46
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'adi'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'adi'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = ara_grup3
              Properties.ReadOnly = False
              Properties.OnChange = tx_grubu3PropertiesChange
              TabOrder = 18
              OnKeyPress = tx_grubu3KeyPress
            end
            object cxLabel1: TcxLabel
              Left = 9
              Top = 287
              Width = 70
              Height = 17
              HelpContext = 22
              Caption = '1. S. Grubu'
              Properties.Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 97
              Top = 287
              Width = 70
              Height = 17
              HelpContext = 140
              Caption = '1. S. Grubu'
              Properties.Transparent = True
            end
            object cxLabel5: TcxLabel
              Left = 189
              Top = 287
              Width = 70
              Height = 17
              HelpContext = 141
              Caption = '1. S. Grubu'
              Properties.Transparent = True
            end
            object cxLabel10: TcxLabel
              Left = 0
              Top = 104
              Width = 78
              Height = 17
              HelpContext = 126
              Caption = 'E'#287'itim S'#252'resi'
              Properties.Transparent = True
            end
            object tx_egitim_suresi: TcxDBComboBox
              Left = 84
              Top = 101
              Width = 177
              Height = 21
              HelpContext = 128
              DataBinding.DataField = 'egitim_suresi'
              DataBinding.DataSource = ara_ogrenci
              ParentFont = False
              Properties.Items.Strings = (
                #214#287'leden '#214'nce'
                #214#287'leden Sonra'
                'Tam G'#252'n')
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = sc_text
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 23
            end
          end
          object bilgi_sayfalari_ayrintili: TcxTabSheet
            HelpContext = 98
            Caption = 'Ayr'#305'nt'#305'l'#305' Bilgileri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImageIndex = 1
            ParentFont = False
            object Label31: TcxLabel
              Left = 2
              Top = 8
              Width = 43
              Height = 17
              HelpContext = 99
              Caption = 'Cilt No'
              Properties.Transparent = True
            end
            object Label33: TcxLabel
              Left = 2
              Top = 36
              Width = 72
              Height = 17
              HelpContext = 100
              Caption = 'Aile S'#305'ra No'
              Properties.Transparent = True
            end
            object tx_cilt_no: TcxDBTextEdit
              Left = 88
              Top = 6
              Width = 170
              Height = 21
              HelpContext = 101
              DataBinding.DataField = 'cilt_no'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 6
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 2
            end
            object tx_aile_sira_no: TcxDBTextEdit
              Left = 88
              Top = 34
              Width = 170
              Height = 21
              HelpContext = 102
              DataBinding.DataField = 'aile_sira_no'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 5
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 3
            end
            object tx_sira_no: TcxDBTextEdit
              Left = 88
              Top = 62
              Width = 170
              Height = 21
              HelpContext = 103
              DataBinding.DataField = 'sira_no'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 5
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 4
            end
            object Label34: TcxLabel
              Left = 2
              Top = 64
              Width = 47
              Height = 17
              HelpContext = 104
              Caption = 'S'#305'ra No'
              Properties.Transparent = True
            end
            object tx_ili: TcxDBTextEdit
              Left = 88
              Top = 91
              Width = 170
              Height = 21
              HelpContext = 105
              DataBinding.DataField = 'ili'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 6
              OnKeyPress = tx_adiKeyPress
            end
            object Label15: TcxLabel
              Left = 2
              Top = 93
              Width = 15
              Height = 17
              HelpContext = 106
              Caption = #304'li'
              Properties.Transparent = True
            end
            object tx_ilcesi: TcxDBTextEdit
              Left = 88
              Top = 119
              Width = 170
              Height = 21
              HelpContext = 107
              DataBinding.DataField = 'ilcesi'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 8
              OnKeyPress = tx_adiKeyPress
            end
            object tx_mahellesi_koyu: TcxDBTextEdit
              Left = 88
              Top = 148
              Width = 170
              Height = 21
              HelpContext = 108
              DataBinding.DataField = 'mahallesi_koyu'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 9
              OnKeyPress = tx_adiKeyPress
            end
            object tx_verildigi_yer: TcxDBTextEdit
              Left = 88
              Top = 176
              Width = 170
              Height = 21
              HelpContext = 109
              DataBinding.DataField = 'verildigi_yer'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 10
              OnKeyPress = tx_adiKeyPress
            end
            object tx_verilis_nedeni: TcxDBComboBox
              Left = 88
              Top = 205
              Width = 170
              Height = 21
              HelpContext = 110
              DataBinding.DataField = 'verilis_nedeni'
              DataBinding.DataSource = ara_ogrenci
              Style.StyleController = sc_text
              TabOrder = 11
              OnKeyPress = tx_okuluKeyPress
            end
            object tx_kayit_no: TcxDBTextEdit
              Left = 88
              Top = 233
              Width = 170
              Height = 21
              HelpContext = 111
              DataBinding.DataField = 'kayit_no'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 6
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 12
            end
            object tx_verilis_tarihi: TcxDBDateEdit
              Left = 88
              Top = 262
              Width = 100
              Height = 21
              HelpContext = 112
              DataBinding.DataField = 'verilis_tarihi'
              DataBinding.DataSource = ara_ogrenci
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 13
            end
            object Label38: TcxLabel
              Left = 2
              Top = 264
              Width = 75
              Height = 17
              HelpContext = 113
              Caption = 'Verili'#351' Tarihi'
              Properties.Transparent = True
            end
            object Label37: TcxLabel
              Left = 2
              Top = 235
              Width = 53
              Height = 17
              HelpContext = 114
              Caption = 'Kay'#305't No'
              Properties.Transparent = True
            end
            object Label36: TcxLabel
              Left = 2
              Top = 207
              Width = 86
              Height = 17
              HelpContext = 115
              Caption = 'Verilli'#351' Nedeni'
              Properties.Transparent = True
            end
            object Label35: TcxLabel
              Left = 2
              Top = 178
              Width = 73
              Height = 17
              HelpContext = 116
              Caption = 'Verildi'#287'i Yer'
              Properties.Transparent = True
            end
            object Label17: TcxLabel
              Left = 2
              Top = 150
              Width = 76
              Height = 17
              HelpContext = 117
              Caption = 'Mahalle/K'#246'y'
              Properties.Transparent = True
            end
            object Label16: TcxLabel
              Left = 2
              Top = 121
              Width = 35
              Height = 17
              HelpContext = 118
              Caption = #304'l'#231'esi'
              Properties.Transparent = True
            end
            object tx_cinsiyeti: TcxDBRadioGroup
              Left = 0
              Top = 286
              Width = 268
              Height = 39
              HelpContext = 119
              Align = alBottom
              Caption = ' Cinsiyeti '
              DataBinding.DataField = 'cinsiyeti'
              DataBinding.DataSource = ara_ogrenci
              ParentColor = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Erkek'
                  Value = 'Erkek'
                end
                item
                  Caption = 'K'#305'z'
                  Value = 'K'#305'z'
                end>
              Properties.ReadOnly = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebsOffice11
              Style.Color = clBtnFace
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.HotTrack = True
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.NativeStyle = False
              Style.TransparentBorder = True
              StyleDisabled.BorderColor = clActiveCaption
              StyleDisabled.Color = clMenuHighlight
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.TextColor = clBtnFace
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 20
            end
          end
        end
        object veli_sayfalari: TcxPageControl
          Left = 273
          Top = 1
          Width = 270
          Height = 264
          HelpContext = 142
          ActivePage = veli_sayfalari_genel
          Align = alCustom
          ShowFrame = True
          Style = 8
          TabOrder = 1
          TabPosition = tpBottom
          ClientRectBottom = 238
          ClientRectLeft = 1
          ClientRectRight = 269
          ClientRectTop = 1
          object veli_sayfalari_genel: TcxTabSheet
            HelpContext = 143
            Caption = 'Genel Veli Bilgileri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImageIndex = 0
            ParentFont = False
            object tx_yakinligi: TcxDBComboBox
              Left = 78
              Top = 6
              Width = 183
              Height = 21
              HelpContext = 144
              DataBinding.DataField = 'yakinligi'
              DataBinding.DataSource = ara_ogrenci
              Properties.MaxLength = 10
              Properties.ReadOnly = False
              Properties.Sorted = True
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.StyleController = sc_text
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 0
              OnEditing = tx_veli_adiEditing
              OnKeyPress = tx_okuluKeyPress
            end
            object Label32: TcxLabel
              Left = 2
              Top = 8
              Width = 53
              Height = 17
              HelpContext = 145
              Caption = 'Yak'#305'nl'#305#287#305
              Properties.Transparent = True
            end
            object tx_veli_adi: TcxDBTextEdit
              Left = 78
              Top = 33
              Width = 183
              Height = 21
              HelpContext = 146
              DataBinding.DataField = 'veli_adi'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 25
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 2
              OnEditing = tx_veli_adiEditing
              OnKeyPress = tx_adiKeyPress
            end
            object Label18: TcxLabel
              Left = 2
              Top = 35
              Width = 23
              Height = 17
              HelpContext = 147
              Caption = 'Ad'#305
              Properties.Transparent = True
            end
            object tx_veli_soyadi: TcxDBTextEdit
              Left = 78
              Top = 61
              Width = 183
              Height = 21
              HelpContext = 148
              DataBinding.DataField = 'veli_soyadi'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 4
              OnEditing = tx_veli_adiEditing
              OnKeyPress = tx_soyadiKeyPress
            end
            object Label19: TcxLabel
              Left = 2
              Top = 63
              Width = 43
              Height = 17
              HelpContext = 149
              Caption = 'Soyad'#305
              Properties.Transparent = True
            end
            object Label25: TcxLabel
              Left = 2
              Top = 142
              Width = 32
              Height = 17
              HelpContext = 150
              Caption = 'GSM'
              Properties.Transparent = True
            end
            object tx_gsm: TcxDBMaskEdit
              Left = 78
              Top = 140
              Width = 183
              Height = 21
              HelpContext = 151
              DataBinding.DataField = 'gsm'
              DataBinding.DataSource = ara_veli
              Properties.IgnoreMaskBlank = True
              Properties.EditMask = '!\(999\) 000 00 00;1;_'
              Properties.MaxLength = 0
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 9
              OnEditing = tx_veli_adiEditing
              OnExit = tx_gsmExit
            end
            object tx_fax: TcxDBMaskEdit
              Left = 78
              Top = 166
              Width = 183
              Height = 21
              HelpContext = 152
              DataBinding.DataField = 'fax'
              DataBinding.DataSource = ara_veli
              Properties.IgnoreMaskBlank = True
              Properties.EditMask = '!\(999\) 000 00 00;1;_'
              Properties.MaxLength = 0
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 10
              OnEditing = tx_veli_adiEditing
              OnExit = tx_faxExit
            end
            object Label27: TcxLabel
              Left = 2
              Top = 168
              Width = 32
              Height = 17
              HelpContext = 153
              Caption = 'Faks'
              Properties.Transparent = True
            end
            object Label24: TcxLabel
              Left = 2
              Top = 90
              Width = 74
              Height = 17
              HelpContext = 154
              Caption = 'Ev Telefonu'
              Properties.Transparent = True
            end
            object tx_ev_telefonu: TcxDBMaskEdit
              Left = 78
              Top = 88
              Width = 183
              Height = 21
              HelpContext = 155
              DataBinding.DataField = 'ev_telefonu'
              DataBinding.DataSource = ara_veli
              Properties.IgnoreMaskBlank = True
              Properties.EditMask = '!\(999\) 000 00 00;1;_'
              Properties.MaxLength = 0
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 7
              OnEditing = tx_veli_adiEditing
              OnEnter = tx_ev_telefonuEnter
            end
            object tx_is_telefonu: TcxDBMaskEdit
              Left = 78
              Top = 113
              Width = 183
              Height = 21
              HelpContext = 156
              DataBinding.DataField = 'is_telefonu'
              DataBinding.DataSource = ara_veli
              Properties.IgnoreMaskBlank = True
              Properties.EditMask = '!\(999\) 000 00 00;1;_'
              Properties.MaxLength = 0
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 8
              OnEditing = tx_veli_adiEditing
              OnEnter = tx_is_telefonuEnter
            end
            object Label26: TcxLabel
              Left = 2
              Top = 115
              Width = 69
              Height = 17
              HelpContext = 157
              Caption = #304#351' Telefonu'
              Properties.Transparent = True
            end
            object ck_bsms: TcxDBCheckBox
              Left = 4
              Top = 213
              Width = 21
              Height = 21
              HelpContext = 158
              Caption = 'SMS'
              DataBinding.DataField = 'sms_bildirim'
              DataBinding.DataSource = ara_veli
              Properties.DisplayUnchecked = 'False'
              Properties.NullStyle = nssUnchecked
              Properties.ReadOnly = False
              Properties.ValueChecked = 'Evet'
              Properties.ValueUnchecked = 'Hay'#305'r'
              Style.LookAndFeel.Kind = lfOffice11
              Style.Shadow = False
              Style.TransparentBorder = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 14
              OnEditing = tx_veli_adiEditing
            end
            object ck_bemail: TcxDBCheckBox
              Left = 104
              Top = 213
              Width = 21
              Height = 21
              HelpContext = 159
              Caption = 'Eposta'
              DataBinding.DataField = 'email_bildirim'
              DataBinding.DataSource = ara_veli
              Properties.DisplayUnchecked = 'False'
              Properties.NullStyle = nssUnchecked
              Properties.ReadOnly = False
              Properties.ValueChecked = 'Evet'
              Properties.ValueUnchecked = 'Hay'#305'r'
              Style.LookAndFeel.Kind = lfOffice11
              Style.TransparentBorder = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 15
              OnEditing = tx_veli_adiEditing
            end
            object ck_bfax: TcxDBCheckBox
              Left = 196
              Top = 214
              Width = 21
              Height = 21
              HelpContext = 160
              Caption = 'Faks'
              DataBinding.DataField = 'fax_bildirim'
              DataBinding.DataSource = ara_veli
              Properties.DisplayUnchecked = 'False'
              Properties.NullStyle = nssUnchecked
              Properties.ReadOnly = False
              Properties.ValueChecked = 'Evet'
              Properties.ValueUnchecked = 'Hay'#305'r'
              Style.BorderStyle = ebsUltraFlat
              Style.LookAndFeel.Kind = lfOffice11
              Style.TransparentBorder = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 16
              OnEditing = tx_veli_adiEditing
            end
            object cxLabel6: TcxLabel
              Left = 216
              Top = 215
              Width = 32
              Height = 17
              HelpContext = 161
              Caption = 'Faks'
              Properties.Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 24
              Top = 215
              Width = 31
              Height = 17
              HelpContext = 162
              Caption = 'SMS'
              Properties.Transparent = True
            end
            object cxLabel8: TcxLabel
              Left = 124
              Top = 215
              Width = 44
              Height = 17
              HelpContext = 163
              Caption = 'Eposta'
              Properties.Transparent = True
            end
            object cxLabel9: TcxLabel
              Left = 2
              Top = 198
              Width = 94
              Height = 17
              HelpContext = 164
              Caption = 'Bildirim '#304'stekleri'
              Properties.Transparent = True
            end
          end
          object veli_sayfalari_ayrintilar: TcxTabSheet
            HelpContext = 165
            Caption = 'Ayr'#305'nt'#305'l'#305' Veli Bilgileri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImageIndex = 1
            ParentFont = False
            object tx_adresi: TcxDBMemo
              Left = 73
              Top = 4
              Width = 184
              Height = 53
              Hint = 'Sat'#305'r ba'#351#305' i'#231'in Ctrl + Enter kullanabilirsiniz.'
              HelpContext = 26
              DataBinding.DataField = 'adresi'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 99
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 0
              OnEditing = tx_veli_adiEditing
              OnKeyPress = tx_adresiKeyPress
            end
            object Label20: TcxLabel
              Left = 2
              Top = 25
              Width = 40
              Height = 17
              HelpContext = 166
              Caption = 'Adresi'
              Properties.Transparent = True
            end
            object tx_veli_ilcesi: TcxDBTextEdit
              Left = 74
              Top = 63
              Width = 183
              Height = 21
              HelpContext = 167
              DataBinding.DataField = 'adres_ilcesi'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 2
              OnEditing = tx_veli_adiEditing
              OnKeyPress = tx_adiKeyPress
            end
            object Label22: TcxLabel
              Left = 2
              Top = 66
              Width = 35
              Height = 17
              HelpContext = 168
              Caption = #304'l'#231'esi'
              Properties.Transparent = True
            end
            object tx_veli_ili: TcxDBTextEdit
              Left = 74
              Top = 90
              Width = 183
              Height = 21
              HelpContext = 169
              DataBinding.DataField = 'adres_ili'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 15
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 4
              OnEditing = tx_veli_adiEditing
              OnKeyPress = tx_veli_iliKeyPress
            end
            object Label21: TcxLabel
              Left = 2
              Top = 93
              Width = 15
              Height = 17
              HelpContext = 170
              Caption = #304'li'
              Properties.Transparent = True
            end
            object Label23: TcxLabel
              Left = 2
              Top = 119
              Width = 70
              Height = 17
              HelpContext = 171
              Caption = 'Posta Kodu'
              Properties.Transparent = True
            end
            object Label28: TcxLabel
              Left = 2
              Top = 144
              Width = 44
              Height = 17
              HelpContext = 172
              Caption = 'Eposta'
              Properties.Transparent = True
            end
            object tx_email: TcxDBTextEdit
              Left = 73
              Top = 142
              Width = 189
              Height = 21
              HelpContext = 173
              DataBinding.DataField = 'email'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 255
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 9
              OnEditing = tx_veli_adiEditing
              OnExit = tx_emailExit
            end
            object tx_posta_kodu: TcxDBTextEdit
              Left = 73
              Top = 117
              Width = 73
              Height = 21
              HelpContext = 174
              DataBinding.DataField = 'posta_kodu'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 5
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 8
              OnEditing = tx_veli_adiEditing
            end
            object tx_meslegi: TcxDBComboBox
              Left = 73
              Top = 169
              Width = 189
              Height = 21
              HelpContext = 175
              DataBinding.DataField = 'meslegi'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 20
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 10
              OnEditing = tx_veli_adiEditing
              OnKeyPress = tx_okuluKeyPress
            end
            object Label29: TcxLabel
              Left = 2
              Top = 171
              Width = 48
              Height = 17
              HelpContext = 176
              Caption = 'Mesle'#287'i'
              Properties.Transparent = True
            end
            object Label30: TcxLabel
              Left = 2
              Top = 196
              Width = 88
              Height = 17
              HelpContext = 177
              Caption = #199'al'#305#351't'#305#287#305' Kurum'
              Properties.Transparent = True
            end
            object tx_calistigi_yer: TcxDBTextEdit
              Left = 8
              Top = 214
              Width = 253
              Height = 21
              HelpContext = 178
              DataBinding.DataField = 'calistigi_yer'
              DataBinding.DataSource = ara_veli
              Properties.MaxLength = 25
              Properties.ReadOnly = False
              Style.StyleController = sc_text
              TabOrder = 13
              OnEditing = tx_veli_adiEditing
            end
          end
        end
        object bt_yeni_veli: TcxButton
          Left = 272
          Top = 267
          Width = 138
          Height = 32
          Caption = 'Yeni Veli Olu'#351'tur'
          TabOrder = 2
          OnClick = bt_yeni_veliClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF08750D08750D08750D08750DFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08750D13AA2210A61D0875
            0DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08750D
            1AB12D16AD2608750DFF00FFFF00FFFF00FFCB6600CB6600CB6600CB6600CB66
            00CB6600CB6600CB6600CB6600CB6600CB6600CB6600CA6600C5630008750D08
            750D08750D08750D22B93B1DB53208750D08750D08750D08750DCB6600FEF6ED
            FEF4E9FEF2E5FEEFE0FEEDDCFEEBD6FEE9D1FEE7CCFEE4C7CB6600FEE1BFFDDE
            BAF7D6B208750D3CD46236CF5A30C9522CC34926BE4121B8381CB43117AF2A08
            750DCB6600FEF9F2FEF7EFFEF5EBFEF3E6FEF1E2FEEEDDFEEDD8FEEAD3FEE8CE
            CB6600FEE4C5FEE1C1F8DAB908750D44DD703FD8683AD26035CD582FC74F2AC1
            4725BD3E20B83608750DCB6600FEFBF8FEFAF5FEF8F1FEF6EDFEF4E8FEF2E3FE
            F0DFFEEEDAFEEBD5CB6600FEE7CCFEE4C7FCE0C108750D08750D08750D08750D
            3ED76638D15E08750D08750D08750D08750DCB6600FEFDFC9CC1960074000074
            0000740000740000740087BB7BFEEEDCCB6600FEEAD3DF993EDE983EDF993EDF
            993EDF993E08750D46DE7341DA6D08750DBB9F7FAF5800FF00FFCB6600FEFEFE
            7DB17A0089001DB43A36C86143BC47009700007400FEF1E3CB6600FEEDDAFEEB
            D5FEE8D0FEE6CCFEE4C6FEE2C208750D4DE67F49E27908750DCEB08EB95D00FF
            00FFCB6600FEFEFE8EBB8B16A22D30C86186DF8DA6ECA729C154007400FEF4EA
            CB6600FEF0E1FEEEDCFEECD7FEEAD2FEE7CDFEE5C808750D08750D08750D0875
            0DFEDBB4CB6600FF00FFCB6600FEFEFEFEFEFE22452A3079556F98B2629D842E
            8C4FA2C99FFEF7F0CB6600FEF3E7DF993EDF993EDF993EDF993EDE983EDD983E
            DA953DD9953CD9953CF8D8B5C96500FF00FFCB6600FEFEFE9F9FA02427301941
            931646AB1941932427309A9694FEFAF5CB6600FEF6EDFEF4E9FEF2E5FEEFDFFE
            EEDBFEEBD6FEE9D1FEE7CCFDE3C7FDE2C2FEE0BECB6600FF00FFCB6600FEFEFE
            5C5B5D2241771E5FC81E5FC81E5FC8223E6E595758FEFCFACB6600FEF9F3FEF7
            EFFEF5EBFEF3E6FEF1E2FEEEDEFEEDD8FEEAD4FEE8CFFEE6CAFEE3C5CB6600FF
            00FFCB6600FEFEFE403F42275186297EE5297EE5297EE52751865A5859FEFDFD
            CB6600FEFCF8DF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF99
            3EFEE6CCCB6600FF00FFCB6600FEFEFE403F42283A4E3081D23397F93397F928
            415B676666FEFEFECB6600FEFDFCFEFCF9FEFBF6FEF9F2FEF6EEFEF5EAFEF3E6
            FEF0E1FEEEDDFEECD8FEEAD3CB6600FF00FFCB6600FEFEFE7776782524272524
            2729415C294869252427D3D1CFFEFEFECB6600FEFEFEFEFDFCFEFCFAFEFBF7FE
            F9F4FEF7F0FEF5ECFEF3E8FEF2E3FEEFDEFEEDDACB6600FF00FFCB6600FEFEFE
            F1F1F269686B25242725242769686BD5D4D4FEFEFEFEFEFECB6600FEFEFEDF99
            3EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EFEF0E1CB6600FF
            00FFCB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            CB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFEFCFAFEFBF6FEF9F3FEF7F0FEF6
            EBFEF3E7CB6600FF00FFCB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFECB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFEFDFB
            FEFCF9FEFAF5FEF8F1FEF6EDCB6600FF00FFCB6600E27E03E27E03E27E03E27E
            03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E2
            7E03E27E03E27E03E27E03E27E03E27E03E27E03CB6600FF00FFCB6600CB6600
            CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB66
            00CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600FF
            00FFFF00FFCB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600
            CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB66
            00CB6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          LookAndFeel.Kind = lfOffice11
        end
        object bt_veli_iptal: TcxButton
          Left = 410
          Top = 267
          Width = 134
          Height = 32
          Caption = 'Velisini '#304'ptal Et'
          TabOrder = 3
          OnClick = bt_veli_iptalClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF00009A020DA400039D00009AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF01079F0732C20732C20732C20732C20732C20526
            B800009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF0210A80633CF0732C60732C20732C2
            0732C20732C20732C20732C200009AFF00FFCB6600CB6600CB6600CB6600CB66
            00CB6600CB6600CB6600CB6600CB6600CB6600CB660000009A0534E40533DB12
            3DD4042FC70732C20631C23E5FD0012CC00732C20526B8FF00FFCB6600FEF6ED
            FEF4E9FEF2E5FEEFE0FEEDDCFEEBD6FEE9D1FEE7CCFEE4C7CB6600FEE1BF0321
            CB0434F00534E6EFF2FDFFFFFF0029C85F7AD7FFFFFF4464D10732C20732C200
            009ACB6600FEF9F2FEF7EFFEF5EBFEF3E6FEF1E2FEEEDDFEEDD8FEEAD3FEE8CE
            CB6600FEE4C50737F30537FB0434F20028E6EAEEFDFDFDFFFFFFFF6781DA0531
            C20732C20732C200039DCB6600FEFBF8FEFAF5FEF8F1FEF6EDFEF4E8FEF2E3FE
            F0DFFEEEDAFEEBD5CB6600FEE7CC224EFB204CFB0335FB0333F55272F1FFFFFF
            F8F9FE002ACD0732C50732C20732C2020DA4CB6600FEFDFC9CC1960074000074
            0000740000740000740087BB7BFEEEDCCB6600FEEAD32048F36B88FD0335FB5D
            7DFDFFFFFF5978F3EBEEFDFFFFFF0631D10732C80732C200009ACB6600FEFEFE
            7DB17A0089001DB43A36C86143BC47009700007400FEF1E3CB6600FEEDDA0511
            B2A8B9FE2E58FC92A7FD6583FD0234F90028EDE6EBFC113ADE0633D30632C9FF
            00FFCB6600FEFEFE8EBB8B16A22D30C86186DF8DA6ECA729C154007400FEF4EA
            CB6600FEF0E1FEEEDC2F56F7CDD7FE456AFC0637FB0335FB0335FA0434F20535
            E80533DF01079FFF00FFCB6600FEFEFEFEFEFE22452A3079556F98B2629D842E
            8C4FA2C99FFEF7F0CB6600FEF3E7DF993E00009A3158F7C0CCFEB8C6FE7E97FD
            6583FD5073FC0F3DF40210ABCB6600FF00FFCB6600FEFEFE9F9FA02427301941
            931646AB1941932427309A9694FEFAF5CB6600FEF6EDFEF4E9FEF2E5FEEFDF07
            13B42C53F74066FC2A54F80826D200009AFEE0BECB6600FF00FFCB6600FEFEFE
            5C5B5D2241771E5FC81E5FC81E5FC8223E6E595758FEFCFACB6600FEF9F3FEF7
            EFFEF5EBFEF3E6FEF1E2FEEEDEFEEDD8FEEAD4FEE8CFFEE6CAFEE3C5CB6600FF
            00FFCB6600FEFEFE403F42275186297EE5297EE5297EE52751865A5859FEFDFD
            CB6600FEFCF8DF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF99
            3EFEE6CCCB6600FF00FFCB6600FEFEFE403F42283A4E3081D23397F93397F928
            415B676666FEFEFECB6600FEFDFCFEFCF9FEFBF6FEF9F2FEF6EEFEF5EAFEF3E6
            FEF0E1FEEEDDFEECD8FEEAD3CB6600FF00FFCB6600FEFEFE7776782524272524
            2729415C294869252427D3D1CFFEFEFECB6600FEFEFEFEFDFCFEFCFAFEFBF7FE
            F9F4FEF7F0FEF5ECFEF3E8FEF2E3FEEFDEFEEDDACB6600FF00FFCB6600FEFEFE
            F1F1F269686B25242725242769686BD5D4D4FEFEFEFEFEFECB6600FEFEFEDF99
            3EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EFEF0E1CB6600FF
            00FFCB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            CB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFEFCFAFEFBF6FEF9F3FEF7F0FEF6
            EBFEF3E7CB6600FF00FFCB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFECB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFEFDFB
            FEFCF9FEFAF5FEF8F1FEF6EDCB6600FF00FFCB6600E27E03E27E03E27E03E27E
            03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E2
            7E03E27E03E27E03E27E03E27E03E27E03E27E03CB6600FF00FFCB6600CB6600
            CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB66
            00CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600FF
            00FFFF00FFCB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600
            CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB66
            00CB6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          LookAndFeel.Kind = lfOffice11
        end
        object bt_veli_sec: TcxButton
          Left = 272
          Top = 297
          Width = 272
          Height = 32
          Caption = 'Mevcut Velilerden Birini Se'#231
          TabOrder = 4
          OnClick = bt_veli_secClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9087901C7AC43788CF9A
            A0A3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9387911A76
            BB2E97FC56C0FF56A2D8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            95848B1C75BB2D97FB59BBFF53B4F9FF00FFCB6600CB6600CB6600CB6600CB66
            00CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB
            6600CB6600A38F8E2076B72D95F959BBFF53B4FACB6600FF00FFCB6600FEF6ED
            FEF4E9FEF2E5FEEFE0FEEDDCFEEBD6FEE9D1FEE7CCFEE4C7D3CCCC9181809181
            80918180918180BF9D93D3CCCC2174B52C95F958BAFF51B5FCFED7ABCB6600FF
            00FFCB6600FEF9F2FEF7EFFEF5EBFEF3E6FEF1E2FEEEDDFEEDD8FEEAD3B18D84
            B8918ABF9B92BF9D93B9978EA77D7594807B6A90A75599D654BBFF4FB5FCFED7
            ABFED7ABCB6600FF00FFCB6600FEFBF8FEFAF5FEF8F1FEF6EDFEF4E8FEF2E3FE
            F0DFAA7D71D3B9AAF1EBD0FBF9DBFBF9DBF1EBD2DDCEB8B69687A89090D3CCCC
            6A9BC6FED8ADFED7ABFED7ABCB6600FF00FFCB6600FEFDFC9CC1960074000074
            00007400007400A9847FE4D4D1FFFFF8FFFFD9FFFFD8FFFFD8FFFFD9FFFAD1EF
            E1B8C7A494BA938AD3CCCCDF993EDF993EFED7ACCB6600FF00FFCB6600FEFEFE
            7DB17A0089001DB43A36C861D3CCCCBEA093007400FFFFF4FFFFD8FFFFD9FFFF
            D9FFFFDBFCF5CDF7D9A9E2C9A6B58B83918180FEDCB5FEDAB2FED9AFCB6600FF
            00FFCB6600FEFEFE8EBB8B16A22D30C86186DF8D918180DFD0BBFFFFE3FFFFDB
            FFFFD9FFFFD9FFFFD9FFFFDBFCF3CAF2C796EFD3A5C8A595918180FEDFBBFEDD
            B7FEDBB4CB6600FF00FFCB6600FEFEFEFEFEFE22452A3079556F98B2918180EF
            E8CFFFFFDBFFFFD8FFFFD9FFFFD9FFFFDAFFFFDAF9E4B8EFBB87F7D6A3C7A794
            918180DF993EDF993EFEDDB9CB6600FF00FFCB6600FEFEFE9F9FA02427301941
            931646AB918180EDE5CCFFFFDCFFFFD9FFFFD9FFFFDAFFFFDBFBF0C7F2C998ED
            B37CF8DEAAC7A593918180FEE4C8FEE3C3FEE0BECB6600FF00FFCB6600FEFEFE
            5C5B5D2241771E5FC81E5FC8D3CCCCD8C6B2FFFFDEFFFFDAFFFFDBFFFDD7FCEF
            C5F5D6A4F1C993F4D3A1F1E2B5C29C8E918180FEE8CFFEE6CAFEE3C5CB6600FF
            00FFCB6600FEFEFE403F42275186297EE5297EE5297EE5B48F85FFFDD5FEF3C8
            F9E6BCF6D9ABF2C793F3CD96FAEACFFFFFF3DDC6ABAE857FD3CCCCDF993EDF99
            3EFEE6CCCB6600FF00FFCB6600FEFEFE403F42283A4E3081D23397F93397F928
            415BCCAF9BFFF4C2FADEAAF3C793F3C48DFAE4B4FFFFFCEDE5E5B28C85C0ACAA
            FEF0E1FEEEDDFEECD8FEEAD3CB6600FF00FFCB6600FEFEFE7776782524272524
            2729415C294869252427BC9C9BC19B90E8D1B1FAE9BBFBEBBCECDBB6CDB4A8AC
            8785FEF7F0FEF5ECFEF3E8FEF2E3FEEFDEFEEDDACB6600FF00FFCB6600FEFEFE
            F1F1F269686B25242725242769686BD5D4D4FEFEFEFEFEFEB99795B28B86AF89
            82AD8782B29391DF993EDF993EDF993EDF993EDF993EDF993EFEF0E1CB6600FF
            00FFCB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            CB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFEFCFAFEFBF6FEF9F3FEF7F0FEF6
            EBFEF3E7CB6600FF00FFCB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFECB6600FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFEFDFB
            FEFCF9FEFAF5FEF8F1FEF6EDCB6600FF00FFCB6600E27E03E27E03E27E03E27E
            03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E27E03E2
            7E03E27E03E27E03E27E03E27E03E27E03E27E03CB6600FF00FFCB6600CB6600
            CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB66
            00CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600FF
            00FFFF00FFCB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600
            CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB6600CB66
            00CB6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          LookAndFeel.Kind = lfOffice11
        end
        object cxLabel11: TcxLabel
          Left = 377
          Top = 332
          Width = 66
          Height = 17
          HelpContext = 164
          Caption = 'Kay'#305't Eden'
          ParentFont = False
          Properties.Transparent = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 447
          Top = 330
          Width = 97
          Height = 21
          DataBinding.DataField = 'kayit_eden'
          DataBinding.DataSource = ara_ogrenci
          Properties.ReadOnly = True
          TabOrder = 6
        end
      end
      object sayfalar_taksit: TcxTabSheet
        HelpContext = 56
        Caption = 'Taksit     [Ctrl + T]'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 545
          Height = 352
          HelpContext = 57
          Align = alClient
          Caption = ' Taksit Durumu '
          TabOrder = 0
          object gr_taksitler: TcxGrid
            Left = 2
            Top = 15
            Width = 163
            Height = 335
            HelpContext = 58
            Align = alLeft
            BevelEdges = [beLeft, beTop, beBottom]
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            TabStop = False
            LookAndFeel.Kind = lfUltraFlat
            object taksitler: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnEditChanged = taksitlerEditChanged
              DataController.DataSource = ara_taksitler
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0 adet'
                  Kind = skCount
                  FieldName = 'vadesi'
                  Column = taksitlervadesi
                end
                item
                  Format = '0.,##'
                  Kind = skSum
                  FieldName = 'miktari'
                  Column = taksitlermiktari
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.Appending = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object taksitlervadesi: TcxGridDBColumn
                Caption = 'Vadesi'
                DataBinding.FieldName = 'vadesi'
                Width = 79
              end
              object taksitlermiktari: TcxGridDBColumn
                Caption = 'Miktar'#305
                DataBinding.FieldName = 'miktari'
                Width = 84
              end
            end
            object gr_taksitlerLevel1: TcxGridLevel
              GridView = taksitler
            end
          end
          object Panel8: TPanel
            Left = 165
            Top = 15
            Width = 275
            Height = 335
            HelpContext = 59
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = False
            ParentColor = True
            ParentCtl3D = False
            TabOrder = 1
            object gr_notlar: TcxGrid
              Left = 0
              Top = 0
              Width = 275
              Height = 305
              HelpContext = 60
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              TabStop = False
              LookAndFeel.Kind = lfUltraFlat
              object notlar: TcxGridDBTableView
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
                DataController.DataSource = ara_geciken_borc_bildirimi
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsData.Appending = True
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                Styles.OnGetContentStyle = notlarStylesGetContentStyle
                object notlaraktif: TcxGridDBColumn
                  Caption = 'Aktif'
                  DataBinding.FieldName = 'aktif'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayUnchecked = 'False'
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = 0
                  Width = 29
                end
                object notlaraciklama: TcxGridDBColumn
                  Caption = 'A'#231#305'klama'
                  DataBinding.FieldName = 'aciklama'
                  Width = 213
                end
                object notlarkontrol_tarihi: TcxGridDBColumn
                  Caption = 'Kontrol Tarihi'
                  DataBinding.FieldName = 'kontrol_tarihi'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Width = 68
                end
                object notlarbildirim_tarihi: TcxGridDBColumn
                  Caption = 'Bildirim Tarihi'
                  DataBinding.FieldName = 'bildirim_tarihi'
                  Width = 73
                end
                object notlarkiminle_gorusuldu: TcxGridDBColumn
                  Caption = 'Kiminle G'#246'r'#252#351#252'ld'#252
                  DataBinding.FieldName = 'kiminle_gorusuldu'
                end
                object notlarkullanici: TcxGridDBColumn
                  Caption = 'Kullan'#305'c'#305
                  DataBinding.FieldName = 'kullanici'
                  Options.Editing = False
                  Width = 78
                end
              end
              object gr_notlarLevel1: TcxGridLevel
                GridView = notlar
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 305
              Width = 275
              Height = 30
              HelpContext = 61
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object lb_geciken_kalan: TLabel
                Left = 0
                Top = 0
                Width = 275
                Height = 13
                HelpContext = 62
                Align = alTop
                Alignment = taCenter
                Caption = 'Ge'#231'iken: 0      Kalan: 0'
                Color = clMoneyGreen
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Layout = tlCenter
              end
              object Label50: TLabel
                Left = 4
                Top = 16
                Width = 20
                Height = 13
                HelpContext = 63
                Caption = 'Ev:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label51: TLabel
                Left = 108
                Top = 16
                Width = 15
                Height = 13
                HelpContext = 64
                Caption = #304#351':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object cxDBLabel1: TcxDBLabel
                Left = 21
                Top = 14
                Width = 86
                Height = 17
                HelpContext = 65
                DataBinding.DataField = 'ev_telefonu'
                DataBinding.DataSource = ara_veli
              end
              object cxDBLabel2: TcxDBLabel
                Left = 118
                Top = 14
                Width = 99
                Height = 17
                HelpContext = 66
                DataBinding.DataField = 'is_telefonu'
                DataBinding.DataSource = ara_veli
              end
            end
          end
          object Panel7: TPanel
            Left = 440
            Top = 15
            Width = 103
            Height = 335
            HelpContext = 67
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object tx_vadesi: TcxDateEdit
              Left = 11
              Top = 75
              Width = 85
              Height = 21
              HelpContext = 70
              Properties.DateOnError = deNull
              Properties.ShowTime = False
              Style.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 0
            end
            object tx_miktari: TcxTextEdit
              Left = 6
              Top = 119
              Width = 94
              Height = 21
              Hint = '000 eklemek i'#231'in + '#39'ya bas'#305'n.'
              HelpContext = 71
              ParentShowHint = False
              Properties.Alignment.Horz = taRightJustify
              Properties.MaxLength = 15
              ShowHint = True
              TabOrder = 1
              OnKeyPress = tx_miktariKeyPress
              OnKeyUp = tx_miktariKeyUp
            end
            object Label43: TcxLabel
              Left = 11
              Top = 7
              Width = 72
              Height = 17
              HelpContext = 72
              Caption = 'Kay'#305't Bedeli'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
            end
            object tx_kayit_bedeli: TcxDBCurrencyEdit
              Left = 3
              Top = 23
              Width = 97
              Height = 21
              Hint = '000 eklemek i'#231'in + '#39'ya bas'#305'n.'
              HelpContext = 73
              TabStop = False
              AutoSize = False
              DataBinding.DataField = 'kayit_bedeli'
              DataBinding.DataSource = ara_kayit_bedeli
              ParentFont = False
              ParentShowHint = False
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = '0.#,#'
              Properties.Nullable = False
              Properties.ReadOnly = False
              Properties.UseThousandSeparator = True
              ShowHint = True
              Style.Color = clRed
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              TabOrder = 3
              OnEditing = tx_kayit_bedeliEditing
              OnKeyUp = tx_kayit_bedeliKeyUp
            end
            object cxLabel2: TcxLabel
              Left = 15
              Top = 59
              Width = 70
              Height = 17
              HelpContext = 74
              Caption = 'Vade Tarihi'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
            end
            object cxLabel3: TcxLabel
              Left = 7
              Top = 103
              Width = 82
              Height = 17
              HelpContext = 75
              Caption = 'Taksit Miktar'#305
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
            end
            object bt_geciken_borc: TcxButton
              Left = 3
              Top = 232
              Width = 99
              Height = 41
              Caption = 'Ge'#231'iken Bor'#231' Bildirimleri'
              TabOrder = 6
              WordWrap = True
              OnClick = bt_geciken_borcClick
              Layout = blGlyphTop
              LookAndFeel.Kind = lfOffice11
            end
            object bt_ekle: TcxButton
              Left = 3
              Top = 144
              Width = 99
              Height = 28
              Caption = 'Ekle'
              TabOrder = 7
              OnClick = bt_ekleClick
              Glyph.Data = {
                76060000424D7606000000000000360400002800000018000000180000000100
                08000000000040020000230B0000230B000000010000000100000829A5000018
                AD000021AD000829AD001029AD000831AD001031AD001831AD001039AD001839
                AD002139AD000021B5000029B5000829B5001031B5001831B5002139B5000029
                C6001839CE00214ACE000031D6000831D6001031D6001842D6002142D600214A
                D600294AD6000029DE000031DE000831DE000839DE001039DE001839DE001042
                DE001842DE002142DE00184ADE00214ADE00294ADE002952DE003152DE00425A
                DE000031E7000842E700104AE700184AE700214AE700294AE7002152E7002952
                E7003152E7003952E700215AE700295AE700315AE700395AE700425AE7002963
                E7003163E7003963E7004263E7004A63E7004A6BE700526BE7005273E7005A73
                E7006373E700637BE7006B7BE7006B84E7000839EF000842EF001042EF00104A
                EF00184AEF00214AEF001852EF002152EF002952EF00315AEF00395AEF00425A
                EF003963EF004263EF004A63EF00526BEF005273EF00637BEF006B7BEF006B84
                EF007384EF00738CEF007B8CEF008494EF00849CEF008C9CEF0094A5EF009CAD
                EF0094A5F7009CADF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00646464646464
                6464646464646464646464646464646464646464646464646464646464646464
                6464646464646464646464646464646464646464646464646464646464646464
                64646464590F00040606040606050C0D030D0B02055964646464646412161718
                18181918181722211F1E1C141104646464646464152331323232323227314D4A
                4948462A1B016464646464641F262850505150505D3535304C492B461C026464
                64646464202837533D3D3C61655D3534304C49471D026464646464642337533D
                3D3D3D61655D3935302D2C481E0D64646464646425523F3F3F3E3E61655D3631
                302D2D49210D64646464646426543F3F3F3F3E61655D3631302D2C4A220E6464
                6464646432553F615D5D5D5D655D5D5D5D5D2C4B240664646464646451406165
                656565656565656565655D2E25076464646464643C4241616161616165616161
                6161242625076464646464643D444343413F3D61655D31272E2E2E3126086464
                646464643D595A57423F3D61655D3228272F4E311A096464646464643F5C5B59
                43413F61655D373232272728260A646464646464415F5E5B59574241653E3D3C
                532937321A076464646464644361615D5B5A5844434342413F3E533326066464
                646464645960625D5B45454343434256403E523618106464646464645959433F
                3E3D383C38513728323225231359646464646464646464646464646464646464
                6464646464646464646464646464646464646464646464646464646464646464
                6464646464646464646464646464646464646464646464646464}
              LookAndFeel.Kind = lfOffice11
            end
            object bt_sil: TcxButton
              Left = 3
              Top = 176
              Width = 99
              Height = 28
              Caption = 'Sil'
              TabOrder = 8
              OnClick = bt_silClick
              Glyph.Data = {
                76060000424D7606000000000000360400002800000018000000180000000100
                08000000000040020000230B0000230B000000010000000100000829A5000018
                AD000021AD000829AD001029AD000831AD001031AD001831AD001039AD001839
                AD002139AD000021B5000029B5000829B5001031B5001831B5002139B5000029
                C6001839CE00214ACE000031D6000831D6001031D6001842D6002142D600214A
                D600294AD6000029DE000031DE000831DE000839DE001039DE001839DE001042
                DE001842DE002142DE00184ADE00214ADE00294ADE002952DE003152DE00425A
                DE000031E7000842E700104AE700184AE700214AE700294AE7002152E7002952
                E7003152E7003952E700215AE700295AE700315AE700395AE700425AE7002963
                E7003163E7003963E7004263E7004A63E7004A6BE700526BE7005273E7005A73
                E7006373E700637BE7006B7BE7006B84E7000839EF000842EF001042EF00104A
                EF00184AEF00214AEF001852EF002152EF002952EF00315AEF00395AEF00425A
                EF003963EF004263EF004A63EF00526BEF005273EF00637BEF006B7BEF006B84
                EF007384EF00738CEF007B8CEF008494EF00849CEF008C9CEF0094A5EF009CAD
                EF0094A5F7009CADF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00646464646464
                6464646464646464646464646464646464646464646464646464646464646464
                6464646464646464646464646464646464646464646464646464646464646464
                64646464590F00040606040606050C0D030D0B02055964646464646412161718
                18181918181722211F1E1C141104646464646464152331323232323227314D4A
                4948462A1B016464646464641F262850505150504F3535304C492B461C026464
                64646464202837533D3D3C3B3B3A3534304C49471D026464646464642337533D
                3D3D3D3C3B3A3935302D2C481E0D64646464646425523F3F3F3E3E3E3B3A3631
                302D2D49210D64646464646426543F3F3F3F3E3D3B373631302D2C4A220E6464
                6464646432553F3F5D5D5D5D5D5D5D5D5D5D2C4B24066464646464645140415D
                656565656565656565655D2E25076464646464643C4241416161616161616161
                6161242625076464646464643D444343413F3D51383231272E2E2E3126086464
                646464643D595A57423F3D5438373228272F4E311A096464646464643F5C5B59
                43413F3D3C37373232272728260A646464646464415F5E5B595742413F3E3D3C
                532937321A076464646464644361615D5B5A5844434342413F3E533326066464
                646464645960625D5B45454343434256403E523618106464646464645959433F
                3E3D383C38513728323225231359646464646464646464646464646464646464
                6464646464646464646464646464646464646464646464646464646464646464
                6464646464646464646464646464646464646464646464646464}
              LookAndFeel.Kind = lfOffice11
            end
            object bt_odeme_islemi: TcxButton
              Left = 3
              Top = 292
              Width = 99
              Height = 28
              Caption = 'Tahsilat  (F8)'
              TabOrder = 9
              OnClick = bt_odeme_islemiClick
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C006000000000000000000000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF898A8A707171737373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF5D35356235354439394F4F4F7E7E7EFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFD6D6D6C0C0C0FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4834344B34347772728585857070
                70FF00FFFF00FFFF00FF9C9C9E323D711C51B32C80EC2B7DEA1F3A7D545457B9
                B9B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF343434343434
                727272E8E8E62325462F31601A1E63215FC02C81EA2367CC1B4DB2205BC02979
                DE359DFF3499FF2363C3454550CDCDCDFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF4747474949497B7B7BEFEDEB66A1D380C5FF61B2FF3198FF216DD41B58C0
                134FAB1754B64277C45AADF889D7FF80C1FF83CBFF313D7B848484FF00FFFF00
                FFFF00FFFF00FFFF00FF606060656565838383F9F6F573ACD08ACDFF8CD0FF8C
                D2FF8DD4FF8FD5FF3393B99DF3FEAADDF863637FD9DDEA6A7AAE88DCEE9BDCFF
                4059A1E1E1E1FF00FFFF00FFFF00FFFF00FF7575757D7D7D8D8D8DFFFFFFBADF
                DCCDFCFFB1E9FFBCE8FFDBFFFFE1FFFF90A5BDB6B6D2E6E6EDFF00FFFF00FFFF
                00FFFF00FF838DBB8388B9FF00FFFF00FFFF00FFFF00FFFF00FF8282828B8B8B
                6F6F6FADADADB0B0B0CDCFE38887B58886B4ABAABBF6F6F9FF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF6A6A6A03407B032A48032A48032A48001C316A6A6AFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6A6A6A0340
                7B032A48032A48001C316A6A6AFF00FF31ABFFCAFFFFABFFFF73F4FF73F4FF16
                84EA0660C0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF31ABFFCAFFFFABFFFF73F4FF1684EA0660C0FF00FF6A6A6A31ABFF31AB
                FF31ABFF31ABFF31ABFF6A6A6A032A48001C31FF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FF6A6A6A31ABFF31ABFF31ABFF31ABFF6A6A6AFF00FF
                FF00FFFF00FFFF00FF6A8FFF7BE0FFABFFFF60C0D4318FB6166AAB4040C0FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FF737BFF73C0EAABFFFF50ABCA2A84B6
                116AB63140D4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03407B03
                2A48032A48032A48001C31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FF6084EA73C0EAABFFFF50ABCA2A84B6116AB62348C0FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF58A1CA7BD4EAABFFFF50ABCA2A84B6116AB60B5898FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF408FC0032A48032A48032A48
                001C31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF60ABCA58B6D4AB
                FFFF50B6CA2A8FB6116AB6066A84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FF73C0EA84E0FFABFFFF60E0FF38B6F4238FE0117B84FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FF31ABFF31ABFF31ABFF31ABFF31ABFFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              LookAndFeel.Kind = lfOffice11
            end
          end
        end
      end
      object sayfalar_odeme_durumu: TcxTabSheet
        HelpContext = 77
        Caption = #214'deme     [Ctrl + O]'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        object GroupBox7: TGroupBox
          Left = 0
          Top = 0
          Width = 545
          Height = 352
          HelpContext = 78
          Align = alClient
          Caption = #214'deme Durumu'
          TabOrder = 0
          object gr_odeme_durumu: TcxGrid
            Left = 2
            Top = 15
            Width = 541
            Height = 297
            HelpContext = 79
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            object para_akisi: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = ara_odeme_durumu
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0.,##'
                  Kind = skSum
                  FieldName = 'alinan'
                  Column = para_akisialinan
                end
                item
                  Format = '0.,##'
                  Kind = skSum
                  FieldName = 'verilen'
                  Column = para_akisiverilen
                end>
              DataController.Summary.SummaryGroups = <>
              Filtering.CustomizeDialog = False
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnHiding = True
              OptionsCustomize.DataRowSizing = True
              OptionsCustomize.GroupRowSizing = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object para_akisiislem_no: TcxGridDBColumn
                Caption = #304#351'lem No'
                DataBinding.FieldName = 'islem_no'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 49
              end
              object para_akisitarih: TcxGridDBColumn
                Caption = 'Tarih'
                DataBinding.FieldName = 'tarih'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 60
              end
              object para_akisiilgilihesap: TcxGridDBColumn
                Caption = #304'lgili Hesap'
                DataBinding.FieldName = 'ilgilihesap'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 65
              end
              object para_akisialinan: TcxGridDBColumn
                Caption = 'Al'#305'nan'
                DataBinding.FieldName = 'alinan'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 75
              end
              object para_akisiverilen: TcxGridDBColumn
                Caption = 'Verilen'
                DataBinding.FieldName = 'verilen'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 68
              end
              object para_akisiaciklama: TcxGridDBColumn
                Caption = 'A'#231#305'klama'
                DataBinding.FieldName = 'aciklama'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 69
              end
              object para_akisiilgili_no: TcxGridDBColumn
                DataBinding.FieldName = 'ilgili_no'
                Visible = False
                Hidden = True
              end
              object para_akisiislem_tarihi: TcxGridDBColumn
                DataBinding.FieldName = 'islem_tarihi'
                Visible = False
                Hidden = True
              end
              object para_akisidonemi: TcxGridDBColumn
                DataBinding.FieldName = 'donemi'
                Visible = False
                Hidden = True
              end
            end
            object gr_odeme_durumuLevel1: TcxGridLevel
              GridView = para_akisi
            end
          end
          object Panel4: TPanel
            Left = 2
            Top = 312
            Width = 541
            Height = 38
            HelpContext = 80
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 213
              Height = 38
              HelpContext = 81
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label42: TcxLabel
                Left = 4
                Top = 0
                Width = 97
                Height = 19
                HelpContext = 82
                AutoSize = False
                Caption = 'Geciken Borcu :'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = [fsBold]
              end
              object Label40: TcxLabel
                Left = 4
                Top = 20
                Width = 82
                Height = 19
                HelpContext = 83
                AutoSize = False
                Caption = 'Kalan Borcu :'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = [fsBold]
              end
              object lb_geciken_borc: TcxLabel
                Left = 100
                Top = 0
                Width = 112
                Height = 19
                HelpContext = 84
                AutoSize = False
                Caption = 'lb_geciken_borc'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clRed
                Style.Font.Height = -11
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = []
              end
              object lb_kalan_borc: TcxLabel
                Left = 100
                Top = 20
                Width = 112
                Height = 19
                HelpContext = 85
                AutoSize = False
                Caption = 'lb_kalan_borc'
              end
            end
            object Panel6: TPanel
              Left = 213
              Top = 0
              Width = 328
              Height = 38
              HelpContext = 86
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object lb_geciken_borc_yazi: TcxLabel
                Left = 0
                Top = 0
                Width = 328
                Height = 19
                HelpContext = 87
                Align = alTop
                AutoSize = False
                ParentFont = False
                ParentShowHint = False
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                ShowHint = True
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -8
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = []
              end
              object lb_kalan_borc_yazi: TcxLabel
                Left = 0
                Top = 19
                Width = 328
                Height = 19
                HelpContext = 88
                Align = alBottom
                AutoSize = False
                ParentFont = False
                ParentShowHint = False
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                ShowHint = True
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -8
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = []
              end
            end
          end
        end
      end
      object sayfalar_evrak_durumu: TcxTabSheet
        HelpContext = 89
        Caption = 'Evrak Durumu     [Ctrl + E]'
        ImageIndex = 3
        object gr_evrak_durumu: TcxGrid
          Left = 0
          Top = 0
          Width = 545
          Height = 308
          HelpContext = 90
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          object evrak_durumu: TcxGridDBTableView
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
            NavigatorButtons.Delete.Enabled = False
            NavigatorButtons.SaveBookmark.Enabled = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Enabled = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Enabled = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = ara_evrak_durumu
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.NavigatorHints = True
            OptionsCustomize.ColumnHiding = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Navigator = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object evrak_durumuogr_no: TcxGridDBColumn
              DataBinding.FieldName = 'ogr_no'
              Visible = False
              Hidden = True
              Options.Filtering = False
              Options.IncSearch = False
            end
            object evrak_durumudonemi: TcxGridDBColumn
              DataBinding.FieldName = 'donemi'
              Visible = False
              Hidden = True
              Options.Filtering = False
              Options.IncSearch = False
            end
            object evrak_durumuevrak_adi: TcxGridDBColumn
              Caption = 'Evrak Ad'#305
              DataBinding.FieldName = 'evrak_adi'
              Options.Editing = False
              Options.Filtering = False
              Options.IncSearch = False
            end
            object evrak_durumuevrak_durum: TcxGridDBColumn
              Caption = 'Evrak Durum'
              DataBinding.FieldName = 'evrak_durum'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayUnchecked = 'False'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Options.Filtering = False
              Options.IncSearch = False
            end
          end
          object level1evrak_durumu: TcxGridLevel
            GridView = evrak_durumu
          end
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 308
          Width = 545
          Height = 44
          HelpContext = 91
          Align = alBottom
          Caption = ' Komutlar '
          TabOrder = 1
          object bt_evraklari_ekle: TcxButton
            Left = 88
            Top = 12
            Width = 381
            Height = 28
            Caption = 'Tan'#305'ml'#305' Olan Gerekli Evraklar'#305' '#214#287'renciye Ekle'
            TabOrder = 0
            OnClick = bt_evraklari_ekleClick
            LookAndFeel.Kind = lfOffice11
          end
        end
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 377
      Width = 545
      Height = 29
      HelpContext = 54
      DataSource = ara_ogrenci
      VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      Hints.Strings = (
        #304'lk Kay'#305't'
        #214'nceki Kay'#305't [Page Down]'
        'Sonraki Kay'#305't [Page Up]'
        'Son Kay'#305't'
        'Kay'#305't Ekle [F6]]'
        'Kay'#305't Sil [F7]'
        'Kay'#305't D'#252'zenle [F2]'
        'Kaydet [F4]'
        'De'#287'i'#351'iklikleri '#304'ptal Et [ESC]'
        'Kay'#305'tlar'#305' Tekara Oku [F5]')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
  end
  object tablo_ogrenci: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterInsert = tablo_ogrenciAfterInsert
    BeforePost = tablo_ogrenciBeforePost
    AfterPost = tablo_ogrenciAfterPost
    AfterCancel = tablo_ogrenciAfterPost
    BeforeDelete = tablo_ogrenciBeforeDelete
    AfterDelete = tablo_ogrenciAfterDelete
    RequestLive = True
    SQL.Strings = (
      'select * from ogrenciler where donemi =:donem and ogr_no =:ogrno')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ogrno'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 84
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ogrno'
        ParamType = ptUnknown
      end>
    object tablo_ogrenciogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_ogrenciadi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object tablo_ogrencisoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object tablo_ogrencicinsiyeti: TStringField
      FieldName = 'cinsiyeti'
      Size = 5
    end
    object tablo_ogrenciresmi: TBlobField
      FieldName = 'resmi'
    end
    object tablo_ogrencitc_kimlik_no: TStringField
      FieldName = 'tc_kimlik_no'
      Size = 11
    end
    object tablo_ogrencikayit_tarihi: TDateField
      FieldName = 'kayit_tarihi'
      Required = True
    end
    object tablo_ogrencikayit_eden: TStringField
      FieldName = 'kayit_eden'
      Size = 40
    end
    object tablo_ogrenciokulu: TStringField
      FieldName = 'okulu'
      Size = 25
    end
    object tablo_ogrenciegitim_suresi: TStringField
      FieldName = 'egitim_suresi'
      Size = 15
    end
    object tablo_ogrencisinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_ogrencidurumu: TStringField
      FieldName = 'durumu'
      Size = 12
    end
    object tablo_ogrencibaba_adi: TStringField
      FieldName = 'baba_adi'
      Size = 15
    end
    object tablo_ogrenciana_adi: TStringField
      FieldName = 'ana_adi'
      Size = 15
    end
    object tablo_ogrencidogum_yeri: TStringField
      FieldName = 'dogum_yeri'
      Size = 15
    end
    object tablo_ogrencidogum_tarihi: TDateField
      FieldName = 'dogum_tarihi'
    end
    object tablo_ogrenciili: TStringField
      FieldName = 'ili'
      Size = 15
    end
    object tablo_ogrenciilcesi: TStringField
      FieldName = 'ilcesi'
      Size = 15
    end
    object tablo_ogrencimahallesi_koyu: TStringField
      FieldName = 'mahallesi_koyu'
      Size = 15
    end
    object tablo_ogrencicilt_no: TStringField
      FieldName = 'cilt_no'
      Size = 6
    end
    object tablo_ogrenciaile_sira_no: TStringField
      FieldName = 'aile_sira_no'
      Size = 5
    end
    object tablo_ogrencisira_no: TStringField
      FieldName = 'sira_no'
      Size = 5
    end
    object tablo_ogrenciverildigi_yer: TStringField
      FieldName = 'verildigi_yer'
      Size = 15
    end
    object tablo_ogrenciverilis_nedeni: TStringField
      FieldName = 'verilis_nedeni'
      Size = 10
    end
    object tablo_ogrencikayit_no: TStringField
      FieldName = 'kayit_no'
      Size = 6
    end
    object tablo_ogrenciverilis_tarihi: TDateField
      FieldName = 'verilis_tarihi'
    end
    object tablo_ogrenciveli_kodu: TIntegerField
      FieldName = 'veli_kodu'
    end
    object tablo_ogrenciyakinligi: TStringField
      FieldName = 'yakinligi'
      Size = 10
    end
    object tablo_ogrencidonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_ogrencigrup1: TStringField
      FieldName = 'grup1'
      Size = 12
    end
    object tablo_ogrencigrup2: TStringField
      FieldName = 'grup2'
      Size = 12
    end
    object tablo_ogrencigrup3: TStringField
      FieldName = 'grup3'
      Size = 12
    end
  end
  object ara_ogrenci: TDataSource
    DataSet = tablo_ogrenci
    Left = 44
    Top = 96
  end
  object tablo_veli: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterInsert = tablo_veliAfterInsert
    AfterEdit = tablo_veliAfterEdit
    RequestLive = True
    SQL.Strings = (
      'select * from veliler where veli_kodu=:par1')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 84
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    object tablo_veliveli_kodu: TAutoIncField
      FieldName = 'veli_kodu'
      Required = True
    end
    object tablo_veliveli_adi: TStringField
      FieldName = 'veli_adi'
      Required = True
      Size = 25
    end
    object tablo_veliveli_soyadi: TStringField
      FieldName = 'veli_soyadi'
      Required = True
      Size = 15
    end
    object tablo_veliadresi: TStringField
      FieldName = 'adresi'
      Size = 99
    end
    object tablo_veliadres_ili: TStringField
      FieldName = 'adres_ili'
      Required = True
      Size = 15
    end
    object tablo_veliadres_ilcesi: TStringField
      FieldName = 'adres_ilcesi'
      Required = True
      Size = 15
    end
    object tablo_veliposta_kodu: TStringField
      FieldName = 'posta_kodu'
      Size = 5
    end
    object tablo_veliev_telefonu: TStringField
      FieldName = 'ev_telefonu'
      Size = 15
    end
    object tablo_veligsm: TStringField
      FieldName = 'gsm'
      Size = 15
    end
    object tablo_velisms_bildirim: TStringField
      FieldName = 'sms_bildirim'
      Required = True
      Size = 5
    end
    object tablo_veliis_telefonu: TStringField
      FieldName = 'is_telefonu'
      Size = 15
    end
    object tablo_velifax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object tablo_velifax_bildirim: TStringField
      FieldName = 'fax_bildirim'
      Required = True
      Size = 5
    end
    object tablo_veliemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object tablo_veliemail_bildirim: TStringField
      FieldName = 'email_bildirim'
      Required = True
      Size = 5
    end
    object tablo_velimeslegi: TStringField
      FieldName = 'meslegi'
    end
    object tablo_velicalistigi_yer: TStringField
      FieldName = 'calistigi_yer'
      Size = 25
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 76
    Top = 48
  end
  object ara_taksitler: TDataSource
    DataSet = tablo_taksitler
    Left = 104
    Top = 51
  end
  object tablo_odeme_durumu: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from paraakisi where donemi=:par1 and ilgili_no=:par2')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_odeme_durumuislem_no: TIntegerField
      FieldName = 'islem_no'
      Required = True
    end
    object tablo_odeme_durumutarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_odeme_durumuilgilihesap: TStringField
      FieldName = 'ilgilihesap'
    end
    object tablo_odeme_durumualinan: TFloatField
      FieldName = 'alinan'
      DisplayFormat = '0.,##'
    end
    object tablo_odeme_durumuverilen: TFloatField
      FieldName = 'verilen'
      DisplayFormat = '0.,##'
    end
    object tablo_odeme_durumuaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tablo_odeme_durumuilgili_no: TIntegerField
      FieldName = 'ilgili_no'
    end
    object tablo_odeme_durumuislem_tarihi: TDateTimeField
      FieldName = 'islem_tarihi'
    end
    object tablo_odeme_durumudonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
  end
  object ara_odeme_durumu: TDataSource
    DataSet = tablo_odeme_durumu
    Left = 76
    Top = 92
  end
  object ara_veli: TDataSource
    DataSet = tablo_veli
    Left = 16
    Top = 59
  end
  object tablo_kayit_bedeli: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'select * from kayitbedeli where donemi =:donem and ogr_no =:ogrn' +
        'o')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ogrno'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 64
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ogrno'
        ParamType = ptUnknown
      end>
    object tablo_kayit_bedeliogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_kayit_bedelidonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_kayit_bedelikayit_bedeli: TFloatField
      FieldName = 'kayit_bedeli'
    end
  end
  object ara_kayit_bedeli: TDataSource
    DataSet = tablo_kayit_bedeli
    Left = 60
    Top = 23
  end
  object mn_odeme_durumu: TcxGridPopupMenu
    PopupMenus = <>
    Left = 8
    Top = 20
  end
  object tablo_evrak_durumu: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from evrak_durumu where donemi=:par1 and ogr_no=:par2')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 54
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_evrak_durumuogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_evrak_durumudonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_evrak_durumuevrak_adi: TStringField
      FieldName = 'evrak_adi'
      Required = True
      Size = 50
    end
    object tablo_evrak_durumuevrak_durum: TIntegerField
      FieldName = 'evrak_durum'
    end
  end
  object ara_evrak_durumu: TDataSource
    DataSet = tablo_evrak_durumu
    Left = 68
    Top = 56
  end
  object tablo_geciken_borc_bildirimi: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterInsert = tablo_geciken_borc_bildirimiAfterInsert
    BeforePost = tablo_geciken_borc_bildirimiBeforePost
    RequestLive = True
    SQL.Strings = (
      
        'select * from geciken_borc_bildirimi where  donemi=:p0 and  ogr_' +
        'no=:p1 order by aktif desc,kontrol_tarihi desc,id desc')
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
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 66
    Top = 21
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
    object tablo_geciken_borc_bildirimiid: TLargeintField
      FieldName = 'id'
    end
    object tablo_geciken_borc_bildirimidonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_geciken_borc_bildirimiogr_no: TIntegerField
      FieldName = 'ogr_no'
    end
    object tablo_geciken_borc_bildirimikontrol_tarihi: TDateField
      FieldName = 'kontrol_tarihi'
      Required = True
    end
    object tablo_geciken_borc_bildirimigeciken_borc_miktari: TFloatField
      FieldName = 'geciken_borc_miktari'
    end
    object tablo_geciken_borc_bildirimibildirim_tarihi: TDateTimeField
      FieldName = 'bildirim_tarihi'
    end
    object tablo_geciken_borc_bildirimikiminle_gorusuldu: TStringField
      FieldName = 'kiminle_gorusuldu'
    end
    object tablo_geciken_borc_bildirimiaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tablo_geciken_borc_bildirimikullanici: TStringField
      FieldName = 'kullanici'
      Size = 16
    end
    object tablo_geciken_borc_bildirimiaktif: TIntegerField
      FieldName = 'aktif'
      Required = True
    end
  end
  object ara_geciken_borc_bildirimi: TDataSource
    DataSet = tablo_geciken_borc_bildirimi
    Left = 38
    Top = 33
  end
  object up_taksitler: TZUpdateSQL
    DeleteSQL.Strings = (
      
        'delete from taksitler where donemi = :donemi and ogr_no =:ogr_no' +
        ' and vadesi=:vadesi')
    InsertSQL.Strings = (
      'insert into taksitler'
      '  (taksitler.ogr_no, taksitler.donemi,taksitler.vadesi,miktari)'
      'values'
      '  (:ogr_no, :donemi, :vadesi, :miktari)')
    ModifySQL.Strings = (
      'update taksitler'
      'set vadesi = :vadesi, miktari = :miktari '
      
        'where donemi = :old_donemi and ogr_no = :OLD_ogr_no and vadesi= ' +
        ':OLD_vadesi')
    Left = 16
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vadesi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'miktari'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_donemi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_ogr_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'old_vadesi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ogr_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'donemi'
        ParamType = ptUnknown
      end>
  end
  object tablo_taksitler: TZQuery
    Connection = veriler.data_dershane
    AfterOpen = tablo_taksitlerAfterOpen
    UpdateObject = up_taksitler
    CachedUpdates = True
    RequestLive = True
    SQL.Strings = (
      
        'select * from taksitler where donemi=:p0 and ogr_no=:p1 order by' +
        ' vadesi')
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
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 38
    Top = 93
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
    object tablo_taksitlerogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_taksitlervadesi: TDateField
      FieldName = 'vadesi'
    end
    object tablo_taksitlermiktari: TFloatField
      FieldName = 'miktari'
    end
    object tablo_taksitlerdonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
  end
  object boyama: TcxStyleRepository
    Left = 59
    Top = 48
    object gecersiz: TcxStyle
      AssignedValues = [svColor]
      Color = 9540095
    end
    object gecerli: TcxStyle
      AssignedValues = [svColor]
      Color = 6932578
    end
  end
  object pp_ogrenci: TppDBPipeline
    DataSource = ara_ogrenci
    UserName = 'pp_ogrenci'
    Left = 41
    Top = 17
    object pp_ogrencippField1: TppField
      FieldAlias = 'ogr_no'
      FieldName = 'ogr_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField2: TppField
      FieldAlias = 'adi'
      FieldName = 'adi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField3: TppField
      FieldAlias = 'soyadi'
      FieldName = 'soyadi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField4: TppField
      FieldAlias = 'cinsiyeti'
      FieldName = 'cinsiyeti'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField5: TppField
      FieldAlias = 'resmi'
      FieldName = 'resmi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField6: TppField
      FieldAlias = 'tc_kimlik_no'
      FieldName = 'tc_kimlik_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField7: TppField
      FieldAlias = 'kayit_tarihi'
      FieldName = 'kayit_tarihi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField8: TppField
      FieldAlias = 'okulu'
      FieldName = 'okulu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField9: TppField
      FieldAlias = 'sinifi'
      FieldName = 'sinifi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField10: TppField
      FieldAlias = 'durumu'
      FieldName = 'durumu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField11: TppField
      FieldAlias = 'baba_adi'
      FieldName = 'baba_adi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField12: TppField
      FieldAlias = 'ana_adi'
      FieldName = 'ana_adi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField13: TppField
      FieldAlias = 'dogum_yeri'
      FieldName = 'dogum_yeri'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField14: TppField
      FieldAlias = 'dogum_tarihi'
      FieldName = 'dogum_tarihi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField15: TppField
      FieldAlias = 'ili'
      FieldName = 'ili'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField16: TppField
      FieldAlias = 'ilcesi'
      FieldName = 'ilcesi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField17: TppField
      FieldAlias = 'mahallesi_koyu'
      FieldName = 'mahallesi_koyu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField18: TppField
      FieldAlias = 'cilt_no'
      FieldName = 'cilt_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField19: TppField
      FieldAlias = 'aile_sira_no'
      FieldName = 'aile_sira_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField20: TppField
      FieldAlias = 'sira_no'
      FieldName = 'sira_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField21: TppField
      FieldAlias = 'verildigi_yer'
      FieldName = 'verildigi_yer'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField22: TppField
      FieldAlias = 'verilis_nedeni'
      FieldName = 'verilis_nedeni'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField23: TppField
      FieldAlias = 'kayit_no'
      FieldName = 'kayit_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField24: TppField
      FieldAlias = 'verilis_tarihi'
      FieldName = 'verilis_tarihi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField25: TppField
      FieldAlias = 'veli_kodu'
      FieldName = 'veli_kodu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField26: TppField
      FieldAlias = 'yakinligi'
      FieldName = 'yakinligi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object pp_ogrencippField27: TppField
      FieldAlias = 'donemi'
      FieldName = 'donemi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
  end
  object pp_veli: TppDBPipeline
    DataSource = ara_veli
    UserName = 'pp_veli'
    Left = 41
    Top = 61
    object pp_velippField1: TppField
      FieldAlias = 'veli_kodu'
      FieldName = 'veli_kodu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pp_velippField2: TppField
      FieldAlias = 'veli_adi'
      FieldName = 'veli_adi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pp_velippField3: TppField
      FieldAlias = 'veli_soyadi'
      FieldName = 'veli_soyadi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pp_velippField4: TppField
      FieldAlias = 'adresi'
      FieldName = 'adresi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pp_velippField5: TppField
      FieldAlias = 'adres_ili'
      FieldName = 'adres_ili'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pp_velippField6: TppField
      FieldAlias = 'adres_ilcesi'
      FieldName = 'adres_ilcesi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pp_velippField7: TppField
      FieldAlias = 'posta_kodu'
      FieldName = 'posta_kodu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pp_velippField8: TppField
      FieldAlias = 'ev_telefonu'
      FieldName = 'ev_telefonu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pp_velippField9: TppField
      FieldAlias = 'gsm'
      FieldName = 'gsm'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pp_velippField10: TppField
      FieldAlias = 'is_telefonu'
      FieldName = 'is_telefonu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pp_velippField11: TppField
      FieldAlias = 'fax'
      FieldName = 'fax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pp_velippField12: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pp_velippField13: TppField
      FieldAlias = 'meslegi'
      FieldName = 'meslegi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pp_velippField14: TppField
      FieldAlias = 'calistigi_yer'
      FieldName = 'calistigi_yer'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pp_velippField15: TppField
      FieldAlias = 'sms_bildirim'
      FieldName = 'sms_bildirim'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pp_velippField16: TppField
      FieldAlias = 'fax_bildirim'
      FieldName = 'fax_bildirim'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pp_velippField17: TppField
      FieldAlias = 'email_bildirim'
      FieldName = 'email_bildirim'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object rp_kayitkarti: TppReport
    AutoStop = False
    DataPipeline = pp_ogrenci
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Dershane Otomasyonu\kayitkarti.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 45
    Top = 9
    Version = '10.02'
    mmColumnWidth = 197300
    DataPipelineName = 'pp_ogrenci'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppImage1: TppImage
        OnPrint = ppImage1Print
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        mmHeight = 19812
        mmLeft = 0
        mmTop = 0
        mmWidth = 26416
        BandType = 1
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        OnGetText = ppLabel28GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DERSHANE RESM'#304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 26458
        mmTop = 3969
        mmWidth = 144198
        BandType = 1
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        OnGetText = ppLabel47GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'D'#246'nemi '#214#287'renci Kay'#305't Dosyas'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 26458
        mmTop = 9525
        mmWidth = 144198
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 14817
        mmWidth = 28046
        BandType = 1
      end
      object ppImage3: TppImage
        OnPrint = ppImage1Print
        UserName = 'Image3'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        mmHeight = 19844
        mmLeft = 170921
        mmTop = 0
        mmWidth = 26458
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 82021
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 68527
        mmLeft = 0
        mmTop = 1852
        mmWidth = 197380
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 25929
        mmLeft = 77523
        mmTop = 2646
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ogr_no'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 10054
        mmWidth = 54770
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #214#287'renci No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 10054
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'adi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 48948
        mmWidth = 74348
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ad'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 48948
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'soyadi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 43392
        mmWidth = 74348
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Soyad'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 43392
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cinsiyeti'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 65617
        mmWidth = 74348
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cinsiyeti'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 65617
        mmWidth = 19578
        BandType = 4
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'resmi'
        DataPipeline = pp_ogrenci
        GraphicType = 'JPEG'
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 24871
        mmLeft = 78052
        mmTop = 3175
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'tc_kimlik_no'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 37835
        mmWidth = 74348
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TC Kimlik No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 37835
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'kayit_tarihi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 21167
        mmWidth = 54770
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Kay'#305't Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 21167
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'okulu'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 26723
        mmWidth = 54770
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Okulu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 26723
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'baba_adi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 54504
        mmWidth = 74348
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Baba Ad'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 54504
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ana_adi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 60061
        mmWidth = 74348
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ana Ad'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 60061
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'dogum_yeri'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 4498
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Do'#287'um Yeri'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 4498
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'dogum_tarihi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 10054
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Do'#287'um Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 10054
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ili'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 15610
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #304'li'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 15610
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ilcesi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 21167
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #304'l'#231'esi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 21167
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'mahallesi_koyu'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 26723
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Mahallesi K'#246'y'#252
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 26723
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'cilt_no'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 32279
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cilt No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 32279
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'aile_sira_no'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 37835
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aile S'#305'ra No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 37835
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'sira_no'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 43392
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'S'#305'ra No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 43392
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'verildigi_yer'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 48948
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Verildi'#287'i Yer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 48948
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'verilis_nedeni'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 54504
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Verili'#351' Nedeni'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3323
        mmLeft = 100277
        mmTop = 54504
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'kayit_no'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 60061
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Kay'#305't No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3323
        mmLeft = 100277
        mmTop = 60061
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'verilis_tarihi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 125149
        mmTop = 65617
        mmWidth = 71173
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Verili'#351' Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3323
        mmLeft = 100277
        mmTop = 65617
        mmWidth = 22489
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'donemi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 4498
        mmWidth = 54770
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'D'#246'nemi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 4498
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'durumu'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 32279
        mmWidth = 74348
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Durumu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 32279
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'sinifi'
        DataPipeline = pp_ogrenci
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pp_ogrenci'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 15610
        mmWidth = 54770
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'S'#305'n'#305'f'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 15610
        mmWidth = 19578
        BandType = 4
      end
      object rp_veli: TppSubReport
        UserName = 'rp_veli'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pp_veli'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 71438
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pp_veli
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'pp_veli'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 48154
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              mmHeight = 45244
              mmLeft = 0
              mmTop = 1852
              mmWidth = 197380
              BandType = 4
            end
            object ppDBMemo1: TppDBMemo
              UserName = 'DBMemo1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              CharWrap = False
              DataField = 'adresi'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 15346
              mmLeft = 19844
              mmTop = 20373
              mmWidth = 76994
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'veli_adi'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 19845
              mmTop = 9260
              mmWidth = 76995
              BandType = 4
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ad'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 9260
              mmWidth = 17991
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'veli_soyadi'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 19845
              mmTop = 14817
              mmWidth = 76995
              BandType = 4
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Soyad'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 14817
              mmWidth = 17991
              BandType = 4
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Adresi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 20373
              mmWidth = 17991
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'adres_ili'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 19844
              mmTop = 37042
              mmWidth = 28840
              BandType = 4
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #304'li'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 37042
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'adres_ilcesi'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 67733
              mmTop = 37042
              mmWidth = 28840
              BandType = 4
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #304'l'#231'esi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 48948
              mmTop = 37042
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText31'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'posta_kodu'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 19844
              mmTop = 42598
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Posta Kodu'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 42598
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText32'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ev_telefonu'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 118269
              mmTop = 3704
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ev Telefonu'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 99484
              mmTop = 3704
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText33'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'gsm'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 118534
              mmTop = 9260
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'GSM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 99748
              mmTop = 9260
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'is_telefonu'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 118534
              mmTop = 14817
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #304#351' Telefonu'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 99748
              mmTop = 14817
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'fax'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 118534
              mmTop = 20373
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fax'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 99748
              mmTop = 20373
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'email'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 118534
              mmTop = 25929
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Em@il'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 99748
              mmTop = 25929
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'meslegi'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 118534
              mmTop = 31485
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Mesle'#287'i'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 99748
              mmTop = 31485
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'calistigi_yer'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 118534
              mmTop = 37042
              mmWidth = 76994
              BandType = 4
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #199'al'#305#351't'#305#287#305' Yer'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 99748
              mmTop = 37042
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              OnGetText = ppDBText39GetText
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'sms_bildirim'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 42598
              mmWidth = 12436
              BandType = 4
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'SMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 127265
              mmTop = 42598
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText40'
              OnGetText = ppDBText39GetText
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'fax_bildirim'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 157957
              mmTop = 42598
              mmWidth = 12435
              BandType = 4
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fax'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 151871
              mmTop = 42598
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText41'
              OnGetText = ppDBText39GetText
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'email_bildirim'
              DataPipeline = pp_veli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_veli'
              mmHeight = 3175
              mmLeft = 183092
              mmTop = 42598
              mmWidth = 12436
              BandType = 4
            end
            object ppLabel44: TppLabel
              UserName = 'Label44'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Em@il'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 172244
              mmTop = 42598
              mmWidth = 10319
              BandType = 4
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Yak'#305'nl'#305#287#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 3704
              mmWidth = 17991
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'yakinligi'
              DataPipeline = pp_ogrenci
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pp_ogrenci'
              mmHeight = 3175
              mmLeft = 19845
              mmTop = 3704
              mmWidth = 76995
              BandType = 4
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bildirim '#304'ste'#287'i'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 99484
              mmTop = 42598
              mmWidth = 25665
              BandType = 4
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '  Veli Bigileri  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3323
              mmLeft = 3704
              mmTop = 0
              mmWidth = 18479
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object rp_taksit: TppSubReport
        UserName = 'rp_taksit'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = rp_veli
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 76994
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '10.02'
          mmColumnWidth = 0
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppLabel54: TppLabel
              UserName = 'Label54'
              OnGetText = ppLabel54GetText
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D'#246'nemi '#214#287'renci Kay'#305't S'#246'zle'#351'mesi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5556
              mmLeft = 50800
              mmTop = 0
              mmWidth = 95250
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 138642
            mmPrintPosition = 0
            object ppSRTaksitListe: TppSubReport
              UserName = 'SRTaksitListe'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ParentWidth = False
              TraverseAllData = False
              DataPipelineName = 'ppDBTaksitler'
              mmHeight = 83608
              mmLeft = 0
              mmTop = 3969
              mmWidth = 44715
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppCRTaksitListe: TppChildReport
                AutoStop = False
                DataPipeline = ppDBTaksitler
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 6350
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 297000
                PrinterSetup.mmPaperWidth = 210000
                PrinterSetup.PaperSize = 9
                Version = '10.02'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBTaksitler'
                object ppDetailBand5: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppDBText28: TppDBText
                    UserName = 'DBText28'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'vadesi'
                    DataPipeline = ppDBTaksitler
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Name = 'Arial'
                    Font.Size = 12
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppDBTaksitler'
                    mmHeight = 4763
                    mmLeft = 529
                    mmTop = 529
                    mmWidth = 20902
                    BandType = 4
                  end
                  object ppDBText42: TppDBText
                    UserName = 'DBText42'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'miktari'
                    DataPipeline = ppDBTaksitler
                    DisplayFormat = '0.#,#'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Name = 'Arial'
                    Font.Size = 12
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBTaksitler'
                    mmHeight = 4868
                    mmLeft = 22754
                    mmTop = 529
                    mmWidth = 20902
                    BandType = 4
                  end
                end
              end
            end
            object ppLabel45: TppLabel
              UserName = 'Label45'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Taksit Tarihi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #214'denecek'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 22490
              mmTop = 265
              mmWidth = 21167
              BandType = 4
            end
            object ppLabel49: TppLabel
              UserName = 'Label49'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #214'denen'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 45508
              mmTop = 265
              mmWidth = 20108
              BandType = 4
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #214'deme Tarihi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 67204
              mmTop = 265
              mmWidth = 21167
              BandType = 4
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #304'mza'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 89429
              mmTop = 265
              mmWidth = 21167
              BandType = 4
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fi'#351' No'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 111654
              mmTop = 265
              mmWidth = 11642
              BandType = 4
            end
            object ppLabel53: TppLabel
              UserName = 'Label501'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #304'ndirimler'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 129382
              mmTop = 265
              mmWidth = 67204
              BandType = 4
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87577
              mmLeft = 0
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87577
              mmLeft = 21696
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87577
              mmLeft = 44450
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 86784
              mmLeft = 66675
              mmTop = 529
              mmWidth = 1852
              BandType = 4
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87577
              mmLeft = 88900
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87577
              mmLeft = 111125
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87577
              mmLeft = 123825
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87577
              mmLeft = 128588
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 87313
              mmLeft = 197300
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 0
              mmWidth = 197380
              BandType = 4
            end
            object ppLine11: TppLine
              UserName = 'Line101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 3969
              mmWidth = 197380
              BandType = 4
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 9525
              mmWidth = 197380
              BandType = 4
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 15081
              mmWidth = 197380
              BandType = 4
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 20638
              mmWidth = 197380
              BandType = 4
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 26194
              mmWidth = 197380
              BandType = 4
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 31750
              mmWidth = 197380
              BandType = 4
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 37306
              mmWidth = 197380
              BandType = 4
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 42863
              mmWidth = 197380
              BandType = 4
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 48419
              mmWidth = 197380
              BandType = 4
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 53975
              mmWidth = 197380
              BandType = 4
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 59531
              mmWidth = 197380
              BandType = 4
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 65088
              mmWidth = 197380
              BandType = 4
            end
            object ppLine24: TppLine
              UserName = 'Line24'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 70644
              mmWidth = 197380
              BandType = 4
            end
            object ppLine25: TppLine
              UserName = 'Line201'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 76200
              mmWidth = 197644
              BandType = 4
            end
            object ppLabel55: TppLabel
              UserName = 'Label55'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #350'ehit '#199'ocuklar'#305'na %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129382
              mmTop = 5556
              mmWidth = 67204
              BandType = 4
            end
            object ppLabel56: TppLabel
              UserName = 'Label56'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Kendi '#214#287'rencilerimize %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129382
              mmTop = 11113
              mmWidth = 66940
              BandType = 4
            end
            object ppLabel57: TppLabel
              UserName = 'Label57'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Her '#304'ki Karde'#351'e %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129382
              mmTop = 16669
              mmWidth = 67204
              BandType = 4
            end
            object ppLabel58: TppLabel
              UserName = 'Label58'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Te'#351'ekk'#252'r veya Takdir Belgesine %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129646
              mmTop = 22225
              mmWidth = 66940
              BandType = 4
            end
            object ppLabel59: TppLabel
              UserName = 'Label59'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pe'#351'in '#214'deme '#304'lave '#304'ndirimi %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129646
              mmTop = 44450
              mmWidth = 66940
              BandType = 4
            end
            object ppLabel60: TppLabel
              UserName = 'Label60'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = #214'nceki Y'#305'l '#214'ss Puan'#305'na G'#246're %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129382
              mmTop = 27781
              mmWidth = 67204
              BandType = 4
            end
            object ppLabel61: TppLabel
              UserName = 'Label61'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dershanenin Yapt'#305#287#305' S'#305'nava G'#246're %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129646
              mmTop = 33338
              mmWidth = 66940
              BandType = 4
            end
            object ppLabel62: TppLabel
              UserName = 'Label62'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Y'#246'netim Kurulu Karar'#305'na G'#246're %......'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 129382
              mmTop = 38894
              mmWidth = 67204
              BandType = 4
            end
            object ppLabel63: TppLabel
              UserName = 'Label63'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Toplam Kay'#305't Bedeli: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3969
              mmLeft = 0
              mmTop = 89429
              mmWidth = 29369
              BandType = 4
            end
            object ppShape4: TppShape
              UserName = 'Shape4'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 5556
              mmWidth = 3704
              BandType = 4
            end
            object ppShape5: TppShape
              UserName = 'Shape5'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 11113
              mmWidth = 3704
              BandType = 4
            end
            object ppShape7: TppShape
              UserName = 'Shape7'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 16404
              mmWidth = 3704
              BandType = 4
            end
            object ppShape8: TppShape
              UserName = 'Shape8'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 21960
              mmWidth = 3704
              BandType = 4
            end
            object ppShape9: TppShape
              UserName = 'Shape9'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 28046
              mmWidth = 3704
              BandType = 4
            end
            object ppShape10: TppShape
              UserName = 'Shape10'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 33338
              mmWidth = 3704
              BandType = 4
            end
            object ppShape11: TppShape
              UserName = 'Shape11'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 38894
              mmWidth = 3704
              BandType = 4
            end
            object ppShape12: TppShape
              UserName = 'Shape12'
              Pen.Width = 2
              mmHeight = 3704
              mmLeft = 124619
              mmTop = 44186
              mmWidth = 3704
              BandType = 4
            end
            object ppRichText1: TppRichText
              UserName = 'RichText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'RichText1'
              RichText = 
                '{\rtf1\ansi\ansicpg1254\deff0\deflang1055{\fonttbl{\f0\fnil\fcha' +
                'rset162{\*\fname Arial;}Arial TUR;}{\f1\fnil Arial;}{\f2\fnil\fc' +
                'harset0 Arial;}{\f3\fnil MS Sans Serif;}}'#13#10'\viewkind4\uc1\pard\f' +
                '0\fs16 A\'#39'fea\'#39'f0\'#39'fdda belirtilen sebeplerden biri veya birka\'#39 +
                'e7\'#39'fd nedeniyle kurumdan ayr\'#39'fdlan \'#39'f6\'#39'f0rencilerin, ayr\'#39'fd' +
                'l\'#39'fd\'#39'fe tarihinden sonraki aylara, g\'#39'fcnlere ve saatlere isab' +
                'et eden \'#39'fccretleri iade edilir.\f1\par'#13#10'1-\f2  \f0\'#39'd6\'#39'f0renc' +
                'inin sa\'#39'f0l\'#39'fdk nedeni ile kurumdan ayr\'#39'fdlmas\'#39'fd (Resmi mak' +
                'am raporu ile belgelenecektir.)\f1\par'#13#10'2-\f2  \f0 Kurumun \'#39'f6\' +
                #39'f0retime ba\'#39'felamas\'#39'fdndan \'#39'f6nceki tarihte \'#39'f6\'#39'f0rencinin' +
                ' herhangi bir sebeple kurumdan ayr\'#39'fdlmas\'#39'fd ve ayr\'#39'fdlmak i\' +
                #39'e7in m\'#39'fcracaat etmesi.\f1\par'#13#10'3-\f2  \f0\'#39'd6\'#39'f0renci velisi' +
                'nin \'#39'f6\'#39'f0renciyi kurumda okutamayacak duruma d\'#39'fc\'#39'fet\'#39'fc\'#39 +
                'f0\'#39'fcn\'#39'fc g\'#39'f6sterir, resmi makamlardan al\'#39'fdna\f2 c\f0 a\f2' +
                ' k\f1  belgelerle belgelendirilmesi.\par'#13#10'4-\f2  \f0\'#39'd6\'#39'f0renc' +
                'i velisinin tayin nedeni ile il de\'#39'f0i\'#39'fetirmesi (Yay\'#39'fdm tar' +
                'ihi 04.06.1988 Resmi Gazete 19832 Madde 10).\f1\par'#13#10'\f0 Velisi ' +
                'bulundu\'#39'f0um \'#39'f6\'#39'f0rencinin yukar\'#39'fddaki maddeler d\'#39'fd\'#39'fe\' +
                #39'fdnda dershaneden ayr\'#39'fdlmas\'#39'fd durumunda t\'#39'fcm kurs \'#39'fccre' +
                'tini \'#39'f6demeyi, \'#39'f6\'#39'f0rencimin dershane disiplin y\'#39'f6netmeli' +
                '\'#39'f0ine uyaca\'#39'f0\'#39'fdn\'#39'fd, \'#39'f6\'#39'f0retmelere ve y\'#39'f6neticilere' +
                ' sayg\'#39'fdl\'#39'fd davranaca\'#39'f0\'#39'fdn\'#39'fd, dershaneyi temiz tutmak, ' +
                'ara\'#39'e7 ve gere\'#39'e7leri korumak, verilen zarar\'#39'fd kar\'#39'fe\'#39'fdla' +
                'mak sorumlulu\'#39'f0unu alaca\'#39'f0\'#39'fdn\'#39'fd, zorunlu kalmad\'#39'fdk\'#39'e7' +
                'a devams\'#39'fdzl\'#39'fdk yapmayaca\'#39'f0\'#39'fdn\'#39'fd, ayl\'#39'fdk \'#39'f6demeler' +
                'imi zaman\'#39'fdnda yapaca\'#39'f0\'#39'fdm\'#39'fd, vermi\'#39'fe oldu\'#39'f0um ileti' +
                '\'#39'feim bilgilerime dershane taraf\'#39'fdndan g\'#39'f6nderilecek belge ' +
                've mesajlardan \'#39'feikayet\'#39'e7i\f1  \f0 olmayaca\'#39'f0\'#39'fdm\'#39'fd kab' +
                'ul ve taah\'#39'fct ederim.\f3\par'#13#10'}'#13#10
              mmHeight = 32279
              mmLeft = 0
              mmTop = 94986
              mmWidth = 197380
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
            object ppMemo1: TppMemo
              UserName = 'Memo1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Memo1'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              Lines.Strings = (
                'VEL'#304' ADI-SOYADI'
                #304'MZA')
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 7408
              mmLeft = 8467
              mmTop = 127265
              mmWidth = 48948
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppMemo2: TppMemo
              UserName = 'Memo2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Memo2'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              Lines.Strings = (
                #214#286'RENC'#304' ADI-SOYADI'
                #304'MZA')
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 7408
              mmLeft = 72231
              mmTop = 127265
              mmWidth = 48948
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppMemo3: TppMemo
              UserName = 'Memo3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Memo3'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsBold]
              Lines.Strings = (
                'UYGUNDUR (M'#220'D'#220'R)'
                #304'MZA')
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 7408
              mmLeft = 132292
              mmTop = 127265
              mmWidth = 48948
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppLabel64: TppLabel
              UserName = 'Label64'
              OnGetText = ppLabel64GetText
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Label64'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 3440
              mmTop = 135467
              mmWidth = 58473
              BandType = 4
            end
            object ppLabel65: TppLabel
              UserName = 'Label65'
              OnGetText = ppLabel65GetText
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Label65'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 67733
              mmTop = 135467
              mmWidth = 58473
              BandType = 4
            end
            object ppLabel66: TppLabel
              UserName = 'Label66'
              OnGetText = ppLabel66GetText
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Label66'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 127794
              mmTop = 135467
              mmWidth = 58473
              BandType = 4
            end
            object ppTxKayitBedeli: TppDBText
              UserName = 'TxKayitBedeli'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'kayit_bedeli'
              DataPipeline = ppDBKayitBedeli
              DisplayFormat = '0.#,# YTL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBKayitBedeli'
              mmHeight = 5027
              mmLeft = 30163
              mmTop = 88900
              mmWidth = 27252
              BandType = 4
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 265
              mmTop = 76200
              mmWidth = 197380
              BandType = 4
            end
            object ppLine26: TppLine
              UserName = 'Line26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 265
              mmTop = 81756
              mmWidth = 197380
              BandType = 4
            end
            object ppLine27: TppLine
              UserName = 'Line27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 265
              mmTop = 87313
              mmWidth = 197380
              BandType = 4
            end
            object ppLabel67: TppLabel
              UserName = 'Label67'
              OnGetText = ppLabel67GetText
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Label67'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 57150
              mmTop = 89959
              mmWidth = 127265
              BandType = 4
            end
          end
        end
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '  '#214#287'renci Bilgileri  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        mmHeight = 3239
        mmLeft = 3704
        mmTop = 0
        mmWidth = 22902
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rp_ogrencibelgesi: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Dershane Otomasyonu\ogrencibelgesi.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1
    Top = 93
    Version = '10.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 259821
      mmPrintPosition = 0
      object ppBelgeBir: TppRichText
        UserName = 'BelgeBir'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BelgeBir'
        RichText = 
          '{\rtf1\ansi\ansicpg1254\deff0\deflang1055{\fonttbl{\f0\froman\fp' +
          'rq2\fcharset162{\*\fname Times New Roman;}Times New Roman TUR;}{' +
          '\f1\fnil MS Sans Serif;}}'#13#10'\viewkind4\uc1\pard\qc\tx3825\f0\fs32' +
          ' T.C\fs22\par'#13#10'\pard\qc\fs32 M\'#39'ddLL\'#39'dd E\'#39'd0\'#39'ddT\'#39'ddM BAKANLI' +
          '\'#39'd0I\par'#13#10'[dershanebuyuk]\par'#13#10'\pard\fs24\par'#13#10'\fs20\par'#13#10'\pard' +
          '\fi-40\li8980\qc\ul [bugun]\ulnone\par'#13#10'[il]\par'#13#10'\pard Say\'#39'fd ' +
          ' : [Sayi]                               \tab\tab        \tab    ' +
          '                               \par'#13#10'Konu: \'#39'd6\'#39'f0renci Belgesi' +
          '.                                                              \' +
          'par'#13#10'\pard\qc\ul\fs32\par'#13#10'\'#39'd6\'#39'd0RENC\'#39'dd BELGES\'#39'dd\par'#13#10'\fs2' +
          '8\par'#13#10'\pard\ulnone\fs22 ADI SOYADI\tab\tab\tab : [AdiSoyadi]\i\' +
          'par'#13#10'\i0 BABA ADI\tab\tab\tab : [BabaAdi]\par'#13#10'DO\'#39'd0UM YER\'#39'dd ' +
          'VE YILI\tab : [DogumYeriYili]\par'#13#10'\'#39'd6\'#39'd0RENC\'#39'dd NO\tab\tab\t' +
          'ab : [OgrNo]\par'#13#10'\fs18\par'#13#10'\fs24       \tab\fs20 Yukar\'#39'fdda a' +
          '\'#39'e7\'#39'fdk kimli\'#39'f0i yaz\'#39'fdl\'#39'fd [BabaAdi] [cinsiyet] [AdiSoyad' +
          'i] [Donemi] \'#39'f6\'#39'f0retim y\'#39'fdl\'#39'fd i\'#39'e7in dershanemizin kay\'#39 +
          'fdtl\'#39'fd \'#39'f6\'#39'f0rencisidir.\par'#13#10'\tab  Bu belge iste\'#39'f0i \'#39'fcz' +
          'erine d\'#39'fczenlenerek kendisine verilmi\'#39'fetir.  \par'#13#10'\par'#13#10'\pa' +
          'rd\tx5685\tqr\tx9072\fs24\par'#13#10'\pard\li7160\ri20\qc\tx3900\tqr\t' +
          'x9382\fs20 [dershane] M\'#39'fcd\'#39'fcr\'#39'fc\par'#13#10'\pard\fi-20\li7160\qc' +
          '\tx3900\tqr\tx9382  [Mudur]\par'#13#10'\pard\f1\fs16\par'#13#10'\par'#13#10'\f0\fs' +
          '22\par'#13#10'\f1\fs16\par'#13#10'}'#13#10
        mmHeight = 123031
        mmLeft = 529
        mmTop = 0
        mmWidth = 197380
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppBelgeIki: TppRichText
        UserName = 'BelgeIki'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BelgeIki'
        mmHeight = 123825
        mmLeft = 529
        mmTop = 135467
        mmWidth = 197380
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object mn_yazdir: TPopupMenu
    Left = 53
    Top = 61
    object mn_kayitkarti: TMenuItem
      Caption = 'Kay'#305't Kart'#305
      OnClick = mn_kayitkartiClick
    end
    object mn_ogrencibelgesi: TMenuItem
      Caption = #214#287'renci Belgesi'
      OnClick = mn_ogrencibelgesiClick
    end
  end
  object tablo_grup1: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      'select * from gruplar where seviye=1 order by adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 44
    Top = 44
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
  object ara_grup1: TDataSource
    DataSet = tablo_grup1
    Left = 12
    Top = 104
  end
  object tablo_grup2: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
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
    Left = 60
    Top = 48
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
  object ara_grup2: TDataSource
    DataSet = tablo_grup2
    Left = 72
    Top = 80
  end
  object ara_grup3: TDataSource
    DataSet = tablo_grup3
    Left = 68
    Top = 64
  end
  object tablo_grup3: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
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
    Left = 64
    Top = 52
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
  object tablo_sinifi: TZQuery
    Connection = veriler.data_dershane
    Filtered = True
    CachedUpdates = False
    RequestLive = False
    SQL.Strings = (
      
        'SELECT sinif,grup1,grup2,grup3 FROM siniflar where donem =:donem' +
        ' ORDER BY sinif')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 40
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'donem'
        ParamType = ptUnknown
      end>
    object sinif: TStringField
      FieldName = 'sinif'
      Required = True
      Size = 10
    end
    object tablo_sinifigrup1: TStringField
      FieldName = 'grup1'
      Size = 12
    end
    object tablo_sinifigrup2: TStringField
      FieldName = 'grup2'
      Size = 12
    end
    object tablo_sinifigrup3: TStringField
      FieldName = 'grup3'
      Size = 12
    end
  end
  object ara_sinifi: TDataSource
    DataSet = tablo_sinifi
    Left = 56
    Top = 48
  end
  object sc_text: TcxEditStyleController
    StyleFocused.Color = 11075583
    Left = 36
    Top = 76
  end
  object ppDBTaksitler: TppDBPipeline
    DataSource = ara_taksitler
    UserName = 'DBTaksitler'
    Left = 113
    Top = 17
    object ppDBTaksitlerppField1: TppField
      FieldAlias = 'ogr_no'
      FieldName = 'ogr_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBTaksitlerppField2: TppField
      FieldAlias = 'vadesi'
      FieldName = 'vadesi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBTaksitlerppField3: TppField
      FieldAlias = 'miktari'
      FieldName = 'miktari'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBTaksitlerppField4: TppField
      FieldAlias = 'donemi'
      FieldName = 'donemi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object ppDBKayitBedeli: TppDBPipeline
    DataSource = ara_kayit_bedeli
    UserName = 'DBKayitBedeli'
    Left = 17
    Top = 17
    object ppDBKayitBedelippField1: TppField
      FieldAlias = 'ogr_no'
      FieldName = 'ogr_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBKayitBedelippField2: TppField
      FieldAlias = 'donemi'
      FieldName = 'donemi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBKayitBedelippField3: TppField
      FieldAlias = 'kayit_bedeli'
      FieldName = 'kayit_bedeli'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
end
