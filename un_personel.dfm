object fr_personel: Tfr_personel
  Left = 218
  Top = 231
  Width = 766
  Height = 419
  Caption = 'Personel'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 385
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      145
      385)
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 145
      Height = 289
      Align = alTop
      Caption = ' Personel '
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
        Left = 7
        Top = 138
        Width = 74
        Height = 17
        Caption = 'Personel No'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object Label4: TcxLabel
        Left = 7
        Top = 174
        Width = 23
        Height = 17
        Caption = 'Ad'#305
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object Label2: TcxLabel
        Left = 7
        Top = 210
        Width = 43
        Height = 17
        Caption = 'Soyad'#305
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
      end
      object tx_personel_kodu: TcxDBTextEdit
        Left = 4
        Top = 152
        Width = 81
        Height = 21
        DataBinding.DataField = 'personel_kodu'
        DataBinding.DataSource = ara_personel
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.MaxLength = 5
        Properties.ReadOnly = True
        TabOrder = 0
      end
      object tx_adi: TcxDBTextEdit
        Left = 4
        Top = 188
        Width = 137
        Height = 21
        DataBinding.DataField = 'veli_adi'
        DataBinding.DataSource = ara_veli
        Properties.MaxLength = 25
        Properties.ReadOnly = False
        TabOrder = 1
        OnKeyPress = tx_adiKeyPress
      end
      object tx_soyadi: TcxDBTextEdit
        Left = 4
        Top = 224
        Width = 137
        Height = 21
        DataBinding.DataField = 'veli_soyadi'
        DataBinding.DataSource = ara_veli
        Properties.MaxLength = 15
        Properties.ReadOnly = False
        TabOrder = 2
        OnKeyPress = tx_soyadiKeyPress
      end
      object ogr_res: TcxDBImage
        Left = 2
        Top = 15
        Width = 141
        Height = 122
        Hint = 'Resim y'#252'klemek,silmek,farkl'#305' kaydetmek i'#231'in sa'#287' tu'#351'la t'#305'klay'#305'n.'
        Align = alTop
        DataBinding.DataField = 'resim'
        DataBinding.DataSource = ara_personel
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.GraphicTransparency = gtTransparent
        Properties.ReadOnly = False
        Properties.Stretch = True
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 4
      end
      object Label29: TcxLabel
        Left = 10
        Top = 247
        Width = 37
        Height = 17
        Caption = 'Bran'#351
      end
      object tx_brans: TcxDBComboBox
        Left = 4
        Top = 262
        Width = 137
        Height = 21
        DataBinding.DataField = 'meslegi'
        DataBinding.DataSource = ara_veli
        Properties.Items.Strings = (
          'Biyoloji'
          'Co'#287'rafya'
          'Felsefe'
          'Fizik'
          'Kimya'
          'Matematik - Geometri'
          'Rehberlik'
          'Tarih'
          'T'#252'rk'#231'e')
        Properties.MaxLength = 20
        Properties.ReadOnly = False
        TabOrder = 3
        OnKeyPress = tx_bransKeyPress
      end
    end
    object bt_personel_bul: TBitBtn
      Left = 4
      Top = 353
      Width = 137
      Height = 29
      Anchors = [akLeft, akBottom]
      Caption = 'Personel Bul'
      TabOrder = 1
      OnClick = bt_personel_bulClick
    end
  end
  object personel_sayfalar: TPageControl
    Left = 145
    Top = 0
    Width = 613
    Height = 385
    ActivePage = ts_bilgileri
    Align = alClient
    MultiLine = True
    TabOrder = 1
    OnChanging = personel_sayfalarChanging
    object ts_bilgileri: TTabSheet
      Caption = 'Bilgileri'
      object Panel9: TPanel
        Left = 0
        Top = 312
        Width = 605
        Height = 45
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Label44: TcxLabel
          Left = 33
          Top = 28
          Width = 30
          Height = 17
          Caption = 'Ekle'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label45: TcxLabel
          Left = 141
          Top = 28
          Width = 19
          Height = 17
          Caption = 'Sil'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label46: TcxLabel
          Left = 228
          Top = 28
          Width = 51
          Height = 17
          Caption = 'D'#252'zenle'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label47: TcxLabel
          Left = 327
          Top = 28
          Width = 44
          Height = 17
          Caption = 'Kaydet'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label48: TcxLabel
          Left = 434
          Top = 28
          Width = 30
          Height = 17
          Caption = #304'ptal'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label49: TcxLabel
          Left = 531
          Top = 28
          Width = 40
          Height = 17
          Caption = 'Yenile'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object db_kontrol: TDBNavigator
          Left = 0
          Top = 0
          Width = 605
          Height = 29
          DataSource = ara_personel
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
          Align = alTop
          Hints.Strings = (
            #304'lk Kay'#305't'
            #214'nceki Kay'#305't'
            'Sonraki Kay'#305't'
            'Son Kay'#305't'
            'Kay'#305't Ekle'
            'Kay'#305't Sil'
            'Kay'#305't D'#252'zenle'
            'Kaydet'
            'De'#287'i'#351'iklikleri '#304'ptal Et'
            'Kay'#305'tlar'#305' Tekara Oku')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 438
        Top = 0
        Width = 167
        Height = 312
        Align = alLeft
        Caption = ' Verdi'#287'i Dersler '
        TabOrder = 1
        object tx_ders_1: TcxDBTextEdit
          Left = 52
          Top = 16
          Width = 109
          Height = 21
          DataBinding.DataField = 'ders_1'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 7
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 0
          OnKeyPress = tx_ders_1KeyPress
        end
        object cxLabel18: TcxLabel
          Left = 7
          Top = 18
          Width = 42
          Height = 17
          Caption = 'Ders 1'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_ders_2: TcxDBTextEdit
          Left = 52
          Top = 44
          Width = 109
          Height = 21
          DataBinding.DataField = 'ders_2'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 7
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 2
          OnKeyPress = tx_ders_2KeyPress
        end
        object cxLabel19: TcxLabel
          Left = 7
          Top = 46
          Width = 42
          Height = 17
          Caption = 'Ders 2'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_ders_3: TcxDBTextEdit
          Left = 52
          Top = 72
          Width = 109
          Height = 21
          DataBinding.DataField = 'ders_3'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 7
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 4
          OnKeyPress = tx_ders_3KeyPress
        end
        object cxLabel20: TcxLabel
          Left = 7
          Top = 74
          Width = 42
          Height = 17
          Caption = 'Ders 3'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
      end
      object GroupBox3: TGroupBox
        Left = 225
        Top = 0
        Width = 213
        Height = 312
        Align = alLeft
        Caption = ' Ula'#351#305'm Bilgileri '
        TabOrder = 2
        object tx_posta_kodu: TcxDBTextEdit
          Left = 81
          Top = 140
          Width = 128
          Height = 21
          DataBinding.DataField = 'posta_kodu'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.MaxLength = 5
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 4
          OnKeyPress = tx_posta_koduKeyPress
        end
        object tx_gsm: TcxDBMaskEdit
          Left = 81
          Top = 196
          Width = 128
          Height = 21
          DataBinding.DataField = 'gsm'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.IgnoreMaskBlank = True
          Properties.EditMask = '!\(999\) 000 00 00;1;_'
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 11
          OnKeyPress = tx_gsmKeyPress
        end
        object tx_adresi: TcxDBMemo
          Left = 81
          Top = 11
          Width = 128
          Height = 65
          DataBinding.DataField = 'adresi'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.MaxLength = 99
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 0
          OnKeyPress = tx_adresiKeyPress
        end
        object Label20: TcxLabel
          Left = 37
          Top = 36
          Width = 40
          Height = 17
          Caption = 'Adresi'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label22: TcxLabel
          Left = 43
          Top = 86
          Width = 35
          Height = 17
          Caption = #304'l'#231'esi'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_veli_ilcesi: TcxDBTextEdit
          Left = 81
          Top = 84
          Width = 128
          Height = 21
          DataBinding.DataField = 'adres_ilcesi'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.MaxLength = 15
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 1
          OnKeyPress = tx_veli_ilcesiKeyPress
        end
        object tx_veli_ili: TcxDBTextEdit
          Left = 81
          Top = 112
          Width = 128
          Height = 21
          DataBinding.DataField = 'adres_ili'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.MaxLength = 15
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 2
          OnKeyPress = tx_veli_iliKeyPress
        end
        object Label21: TcxLabel
          Left = 62
          Top = 114
          Width = 15
          Height = 17
          Caption = #304'li'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label23: TcxLabel
          Left = 8
          Top = 142
          Width = 70
          Height = 17
          Caption = 'Posta Kodu'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_email: TcxDBTextEdit
          Left = 81
          Top = 168
          Width = 128
          Height = 21
          DataBinding.DataField = 'email'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.MaxLength = 255
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 5
          OnKeyPress = tx_emailKeyPress
        end
        object Label28: TcxLabel
          Left = 44
          Top = 170
          Width = 35
          Height = 17
          Caption = 'Email'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label25: TcxLabel
          Left = 46
          Top = 198
          Width = 32
          Height = 17
          Caption = 'GSM'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_fax: TcxDBMaskEdit
          Left = 81
          Top = 226
          Width = 128
          Height = 21
          DataBinding.DataField = 'fax'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.IgnoreMaskBlank = True
          Properties.EditMask = '!\(999\) 000 00 00;1;_'
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 12
          OnKeyPress = tx_faxKeyPress
        end
        object Label27: TcxLabel
          Left = 53
          Top = 228
          Width = 25
          Height = 17
          Caption = 'Fax'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_ev_telefonu: TcxDBMaskEdit
          Left = 81
          Top = 256
          Width = 128
          Height = 21
          DataBinding.DataField = 'ev_telefonu'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.IgnoreMaskBlank = True
          Properties.EditMask = '!\(999\) 000 00 00;1;_'
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 14
          OnKeyPress = tx_ev_telefonuKeyPress
        end
        object Label24: TcxLabel
          Left = 3
          Top = 258
          Width = 74
          Height = 17
          Caption = 'Ev Telefonu'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object Label26: TcxLabel
          Left = -1
          Top = 288
          Width = 82
          Height = 17
          Caption = 'Di'#287'. Telefonu'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_is_telefonu: TcxDBMaskEdit
          Left = 81
          Top = 286
          Width = 128
          Height = 21
          DataBinding.DataField = 'is_telefonu'
          DataBinding.DataSource = ara_veli
          ParentFont = False
          Properties.IgnoreMaskBlank = True
          Properties.EditMask = '!\(999\) 000 00 00;1;_'
          Properties.MaxLength = 0
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 17
          OnKeyPress = tx_is_telefonuKeyPress
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 225
        Height = 312
        Align = alLeft
        Caption = ' Numaralar '
        TabOrder = 3
        DesignSize = (
          225
          312)
        object cxLabel17: TcxLabel
          Left = 3
          Top = 14
          Width = 87
          Height = 17
          Caption = #304#351'e Giri'#351' Tarihi'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_ise_giris_tarihi: TcxDBDateEdit
          Left = 93
          Top = 12
          Width = 124
          Height = 21
          DataBinding.DataField = 'ise_giris_tarihi'
          DataBinding.DataSource = ara_personel
          TabOrder = 1
          OnKeyPress = tx_ise_giris_tarihiKeyPress
        end
        object tx_tc_kimlik_no: TcxDBTextEdit
          Left = 93
          Top = 42
          Width = 124
          Height = 21
          DataBinding.DataField = 'tc_kimlik_no'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 11
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 2
          OnKeyPress = tx_tc_kimlik_noKeyPress
        end
        object Label31: TcxLabel
          Left = 11
          Top = 45
          Width = 78
          Height = 17
          Caption = 'TC Kimlik No'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel1: TcxLabel
          Left = 40
          Top = 74
          Width = 49
          Height = 17
          Caption = 'Sicil No'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_sicil_no: TcxDBTextEdit
          Left = 93
          Top = 72
          Width = 124
          Height = 21
          DataBinding.DataField = 'sicil_no'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 20
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 5
          OnKeyPress = tx_sicil_noKeyPress
        end
        object tx_vergi_no: TcxDBTextEdit
          Left = 93
          Top = 102
          Width = 124
          Height = 21
          DataBinding.DataField = 'vergi_no'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 10
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 6
          OnKeyPress = tx_vergi_noKeyPress
        end
        object cxLabel2: TcxLabel
          Left = 35
          Top = 104
          Width = 54
          Height = 17
          Caption = 'Vergi No'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_sigorta_no: TcxDBTextEdit
          Left = 93
          Top = 132
          Width = 124
          Height = 21
          DataBinding.DataField = 'sigorta_no'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 20
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 8
          OnKeyPress = tx_sigorta_noKeyPress
        end
        object cxLabel15: TcxLabel
          Left = 24
          Top = 135
          Width = 65
          Height = 17
          Caption = 'Sigorta No'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel16: TcxLabel
          Left = 32
          Top = 165
          Width = 57
          Height = 17
          Caption = 'Nema No'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_nema_no: TcxDBTextEdit
          Left = 93
          Top = 162
          Width = 124
          Height = 21
          DataBinding.DataField = 'nema_no'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 20
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 11
          OnKeyPress = tx_nema_noKeyPress
        end
        object tx_elektrik: TcxDBTextEdit
          Left = 93
          Top = 192
          Width = 124
          Height = 21
          DataBinding.DataField = 'elektrik'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 20
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 12
          OnKeyPress = tx_elektrikKeyPress
        end
        object cxLabel3: TcxLabel
          Left = 42
          Top = 194
          Width = 48
          Height = 17
          Caption = 'Elektrik'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel4: TcxLabel
          Left = 69
          Top = 223
          Width = 20
          Height = 17
          Caption = 'Su'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object tx_su: TcxDBTextEdit
          Left = 93
          Top = 222
          Width = 124
          Height = 21
          DataBinding.DataField = 'su'
          DataBinding.DataSource = ara_personel
          ParentFont = False
          Properties.MaxLength = 20
          Properties.ReadOnly = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          TabOrder = 15
          OnKeyPress = tx_suKeyPress
        end
        object bt_veli_sec: TBitBtn
          Left = 12
          Top = 275
          Width = 197
          Height = 29
          Anchors = [akLeft, akBottom]
          Caption = 'Mevcut Velilerden Birini Se'#231
          TabOrder = 16
          OnClick = bt_veli_secClick
        end
      end
    end
    object ts_ders_programi: TTabSheet
      Caption = 'Ders Program'#305
      Enabled = False
      ImageIndex = 3
      TabVisible = False
      OnShow = ts_ders_programiShow
      object gr_ders_programi: TStringGrid
        Left = 0
        Top = 37
        Width = 605
        Height = 320
        Align = alClient
        ColCount = 11
        DefaultRowHeight = 17
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 605
        Height = 37
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object bt_program_excel_aktar: TBitBtn
          Left = 443
          Top = 0
          Width = 89
          Height = 33
          Caption = 'Exel '#39'e Aktar'
          TabOrder = 0
          OnClick = bt_program_excel_aktarClick
        end
        object bt_program_yazdir: TBitBtn
          Left = 536
          Top = 0
          Width = 69
          Height = 33
          Caption = 'Yazd'#305'r'
          TabOrder = 1
          OnClick = bt_program_yazdirClick
        end
      end
    end
    object ts_avans: TTabSheet
      Caption = 'Avans - Maa'#351' '#214'deme'
      ImageIndex = 2
      OnShow = ts_avansShow
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Width = 117
        Height = 308
        Align = alLeft
        Caption = ' Verileri Giriniz '
        TabOrder = 0
        object tx_avans_tarih: TcxDateEdit
          Left = 4
          Top = 32
          Width = 105
          Height = 21
          BeepOnEnter = False
          Properties.DateOnError = deToday
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 0
          OnKeyPress = tx_avans_tarihKeyPress
        end
        object tx_alinan: TcxTextEdit
          Left = 4
          Top = 116
          Width = 105
          Height = 21
          Hint = '000 eklemek i'#231'in + '#39'ya bas'#305'n.'
          BeepOnEnter = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyPress = tx_alinanKeyPress
          OnKeyUp = tx_alinanKeyUp
        end
        object tx_verilen: TcxTextEdit
          Left = 4
          Top = 72
          Width = 105
          Height = 21
          Hint = '000 eklemek i'#231'in + '#39'ya bas'#305'n.'
          BeepOnEnter = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyPress = tx_verilenKeyPress
          OnKeyUp = tx_verilenKeyUp
        end
        object tx_ilgili_hesap: TcxComboBox
          Left = 4
          Top = 156
          Width = 105
          Height = 21
          BeepOnEnter = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Kasa'
            'Pos Cihaz'#305
            'Maa'#351'Avans'
            'Banka'
            #199'ek'
            'Dolar'
            'Euro')
          Properties.ReadOnly = False
          TabOrder = 3
          Text = 'Maa'#351'Avans'
          OnKeyPress = tx_ilgili_hesapKeyPress
        end
        object tx_aciklama: TcxMemo
          Left = 4
          Top = 196
          Width = 105
          Height = 77
          Properties.MaxLength = 255
          Properties.ScrollBars = ssVertical
          Properties.WantReturns = False
          TabOrder = 4
          OnKeyPress = tx_aciklamaKeyPress
        end
        object bt_avans_ekle: TBitBtn
          Left = 4
          Top = 276
          Width = 105
          Height = 29
          Caption = 'Ekle'
          TabOrder = 5
          OnClick = bt_avans_ekleClick
        end
        object cxLabel10: TcxLabel
          Left = 4
          Top = 180
          Width = 56
          Height = 17
          TabStop = False
          Caption = 'A'#231#305'klama'
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel11: TcxLabel
          Left = 4
          Top = 140
          Width = 68
          Height = 17
          TabStop = False
          Caption = #304'lgili Hesap'
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel12: TcxLabel
          Left = 0
          Top = 56
          Width = 108
          Height = 17
          TabStop = False
          Caption = 'Gider-Avans-Maa'#351
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel13: TcxLabel
          Left = 0
          Top = 100
          Width = 70
          Height = 17
          TabStop = False
          Caption = 'Gelir-Al'#305'nan'
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel14: TcxLabel
          Left = 4
          Top = 15
          Width = 34
          Height = 17
          TabStop = False
          Caption = 'Tarih'
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 308
        Width = 605
        Height = 49
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object lb_aldigi: TcxLabel
          Left = 180
          Top = 17
          Width = 152
          Height = 17
          AutoSize = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clGreen
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object lb_almasi: TcxLabel
          Left = 180
          Top = 1
          Width = 152
          Height = 17
          AutoSize = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object lb_odenmesi: TcxLabel
          Left = 180
          Top = 33
          Width = 152
          Height = 17
          AutoSize = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel7: TcxLabel
          Left = 3
          Top = 1
          Width = 179
          Height = 17
          AutoSize = False
          Caption = 'Almas'#305' Gereken Maa'#351' Toplam'#305
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel8: TcxLabel
          Left = 71
          Top = 17
          Width = 112
          Height = 17
          AutoSize = False
          Caption = 'Ald'#305#287#305' Para Miktar'#305
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel9: TcxLabel
          Left = -5
          Top = 33
          Width = 188
          Height = 17
          AutoSize = False
          Caption = #214'denmesi Gereken Para Miktar'#305
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object lb_almasi_y: TcxLabel
          Left = 327
          Top = 1
          Width = 282
          Height = 17
          AutoSize = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -8
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
        end
        object lb_odenmesi_y: TcxLabel
          Left = 327
          Top = 33
          Width = 282
          Height = 17
          AutoSize = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clGreen
          Style.Font.Height = -8
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
        end
        object lb_aldigi_y: TcxLabel
          Left = 327
          Top = 17
          Width = 282
          Height = 17
          AutoSize = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -8
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
        end
      end
      object Panel4: TPanel
        Left = 117
        Top = 0
        Width = 488
        Height = 308
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object gr_para_akisi: TcxGrid
          Left = 0
          Top = 33
          Width = 488
          Height = 275
          Align = alClient
          TabOrder = 0
          object paraakisi: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Enabled = False
            NavigatorButtons.Insert.Visible = False
            DataController.DataSource = ara_paraakisi
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '0.,##'
                Kind = skSum
                FieldName = 'alinan'
                Column = paraakisialinan
              end
              item
                Format = '0.,##'
                Kind = skSum
                FieldName = 'verilen'
                Column = paraakisiverilen
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.,##'
                Kind = skSum
                FieldName = 'alinan'
                Column = paraakisialinan
              end
              item
                Format = '0.,##'
                Kind = skSum
                FieldName = 'verilen'
                Column = paraakisiverilen
              end
              item
                Format = 'Fark'
                Kind = skCount
                Column = paraakisiaciklama
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnDataChanged = paraakisiDataControllerDataChanged
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.GroupRowSizing = True
            OptionsView.Navigator = True
            OptionsView.NavigatorOffset = 10
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object paraakisiislem_no: TcxGridDBColumn
              Caption = #304'.No'
              DataBinding.FieldName = 'islem_no'
              Options.Editing = False
              Options.Filtering = False
              Width = 46
            end
            object paraakisitarih: TcxGridDBColumn
              Caption = 'Tarih'
              DataBinding.FieldName = 'tarih'
            end
            object paraakisialinan: TcxGridDBColumn
              Caption = 'Gelir - Al'#305'nan'
              DataBinding.FieldName = 'alinan'
              Options.Filtering = False
            end
            object paraakisiverilen: TcxGridDBColumn
              Caption = 'Gider - Avans'
              DataBinding.FieldName = 'verilen'
              Options.Filtering = False
              Width = 71
            end
            object paraakisiilgilihesap: TcxGridDBColumn
              Caption = #304'lgili Hesap'
              DataBinding.FieldName = 'ilgilihesap'
            end
            object paraakisiislem_tarihi: TcxGridDBColumn
              Caption = #304#351'lem Tarihi'
              DataBinding.FieldName = 'islem_tarihi'
              Options.Editing = False
              Options.Filtering = False
            end
            object paraakisiaciklama: TcxGridDBColumn
              Caption = 'A'#231#305'klama'
              DataBinding.FieldName = 'aciklama'
            end
            object paraakisiilgili_no: TcxGridDBColumn
              Caption = 'Personel Kodu'
              DataBinding.FieldName = 'ilgili_no'
            end
            object paraakisidonemi: TcxGridDBColumn
              Caption = 'D'#246'nemi'
              DataBinding.FieldName = 'donemi'
            end
            object paraakisiadi_soyadi: TcxGridDBColumn
              Caption = 'Ad'#305' Soyad'#305
              DataBinding.FieldName = 'adi_soyadi'
            end
          end
          object gr_para_akisiLevel1: TcxGridLevel
            GridView = paraakisi
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 488
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object rb_para_secenek: TRadioGroup
            Left = 0
            Top = 0
            Width = 320
            Height = 33
            Align = alClient
            Caption = ' Para Hareketi G'#246'sterme Se'#231'enekleri '
            Columns = 4
            ItemIndex = 0
            Items.Strings = (
              'Son 2 Ay'
              'Son 6 Ay'
              'Son 12 Ay'
              'T'#252'm'#252)
            TabOrder = 0
            OnClick = rb_para_secenekClick
          end
          object Panel6: TPanel
            Left = 320
            Top = 0
            Width = 168
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object bt_exceleaktar: TBitBtn
              Left = 3
              Top = 0
              Width = 89
              Height = 33
              Caption = 'Exel '#39'e Aktar'
              TabOrder = 0
              OnClick = bt_exceleaktarClick
            end
            object bt_yazdir: TBitBtn
              Left = 96
              Top = 0
              Width = 69
              Height = 33
              Caption = 'Yazd'#305'r'
              TabOrder = 1
              OnClick = bt_yazdirClick
            end
          end
        end
      end
    end
    object ts_maas: TTabSheet
      Caption = 'Maa'#351'lar'#305
      ImageIndex = 1
      OnShow = ts_maasShow
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 157
        Height = 357
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          157
          357)
        object tx_tarih: TcxDateEdit
          Left = 44
          Top = 98
          Width = 109
          Height = 21
          Properties.DateOnError = deNull
          Properties.ShowTime = False
          TabOrder = 0
          OnKeyPress = tx_tarihKeyPress
        end
        object tx_miktari: TcxTextEdit
          Left = 44
          Top = 126
          Width = 109
          Height = 21
          Hint = '000 eklemek i'#231'in + '#39'ya bas'#305'n.'
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.MaxLength = 15
          ShowHint = True
          TabOrder = 1
          OnKeyPress = tx_miktariKeyPress
          OnKeyUp = tx_miktariKeyUp
        end
        object bt_ekle: TBitBtn
          Left = 0
          Top = 154
          Width = 153
          Height = 31
          Caption = 'Ekle'
          TabOrder = 2
          OnClick = bt_ekleClick
        end
        object bt_sil: TBitBtn
          Left = 0
          Top = 324
          Width = 153
          Height = 31
          Anchors = [akLeft, akBottom]
          Caption = 'Sil'
          TabOrder = 3
          OnClick = bt_silClick
        end
        object cxLabel5: TcxLabel
          Left = 6
          Top = 100
          Width = 34
          Height = 17
          Caption = 'Tarih'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object cxLabel6: TcxLabel
          Left = 1
          Top = 127
          Width = 40
          Height = 17
          Caption = 'Miktar'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
        end
        object rb_maas: TRadioGroup
          Left = 0
          Top = 0
          Width = 157
          Height = 93
          Align = alTop
          Caption = ' Maa'#351' Se'#231'enekleri '
          ItemIndex = 0
          Items.Strings = (
            'Son 12 Maa'#351#305
            'Son 6 Maa'#351#305
            'T'#252'm Maa'#351'lar'#305)
          TabOrder = 6
          OnClick = rb_maasClick
        end
      end
      object gr_maaslar: TcxGrid
        Left = 157
        Top = 0
        Width = 448
        Height = 357
        Align = alClient
        BevelEdges = [beLeft, beTop, beBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 1
        object maas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Enabled = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Filter.Enabled = False
          DataController.DataSource = ara_maas
          DataController.Options = []
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '# adet'
              Kind = skCount
              FieldName = 'tarih'
              Column = maastarih
            end
            item
              Format = '0.,##'
              Kind = skSum
              FieldName = 'miktar'
              Column = maasmiktar
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHiding = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object maastarih: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            Width = 97
          end
          object maasmiktar: TcxGridDBColumn
            Caption = 'Miktar'
            DataBinding.FieldName = 'miktar'
            Width = 153
          end
        end
        object gr_maaslarLevel1: TcxGridLevel
          GridView = maas
        end
      end
    end
  end
  object tablo_personel: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterInsert = tablo_personelAfterInsert
    BeforePost = tablo_personelBeforePost
    BeforeDelete = tablo_personelBeforeDelete
    AfterDelete = tablo_personelAfterDelete
    RequestLive = True
    SQL.Strings = (
      'select * from personel where personel_kodu=:par1')
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
    Left = 89
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    object tablo_personelpersonel_kodu: TIntegerField
      FieldName = 'personel_kodu'
      Required = True
    end
    object tablo_personeltc_kimlik_no: TStringField
      FieldName = 'tc_kimlik_no'
      Required = True
      Size = 11
    end
    object tablo_personelresim: TBlobField
      FieldName = 'resim'
    end
    object tablo_personelsicil_no: TStringField
      FieldName = 'sicil_no'
    end
    object tablo_personelvergi_no: TStringField
      FieldName = 'vergi_no'
      Size = 10
    end
    object tablo_personelelektrik: TStringField
      FieldName = 'elektrik'
    end
    object tablo_personelsu: TStringField
      FieldName = 'su'
    end
    object tablo_personelise_giris_tarihi: TDateField
      FieldName = 'ise_giris_tarihi'
    end
    object tablo_personelsigorta_no: TStringField
      FieldName = 'sigorta_no'
    end
    object tablo_personelnema_no: TStringField
      FieldName = 'nema_no'
    end
    object tablo_personelders_1: TStringField
      FieldName = 'ders_1'
      Size = 7
    end
    object tablo_personelders_2: TStringField
      FieldName = 'ders_2'
      Size = 7
    end
    object tablo_personelders_3: TStringField
      FieldName = 'ders_3'
      Size = 7
    end
  end
  object ara_personel: TDataSource
    DataSet = tablo_personel
    Left = 93
    Top = 92
  end
  object ara_veli: TDataSource
    DataSet = tablo_veli
    Left = 9
    Top = 64
  end
  object tablo_veli: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterInsert = tablo_veliAfterInsert
    BeforeEdit = tablo_veliBeforeEdit
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
    Left = 13
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    object tablo_veliveli_kodu: TIntegerField
      FieldName = 'veli_kodu'
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
    object tablo_veliis_telefonu: TStringField
      FieldName = 'is_telefonu'
      Size = 15
    end
    object tablo_velifax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object tablo_veliemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object tablo_velimeslegi: TStringField
      FieldName = 'meslegi'
    end
    object tablo_velicalistigi_yer: TStringField
      FieldName = 'calistigi_yer'
      Size = 25
    end
  end
  object tablo_maas: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'select * from maas where personel_kodu=:par0 order by tarih desc' +
        '  limit :par1')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 53
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    object tablo_maaspersonel_kodu: TIntegerField
      FieldName = 'personel_kodu'
      Required = True
    end
    object tablo_maastarih: TDateField
      FieldName = 'tarih'
      Required = True
    end
    object tablo_maasmiktar: TFloatField
      FieldName = 'miktar'
      DisplayFormat = '0,.##'
    end
  end
  object ara_maas: TDataSource
    DataSet = tablo_maas
    Left = 93
    Top = 64
  end
  object tablo_paraakisi: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'select * from paraakisi where donemi='#39'PERSONEL'#39' and ilgili_no=:p' +
        'ar0 and tarih>DATE_SUB(now(), INTERVAL :par1 month) order by tar' +
        'ih desc')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 297
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    object tablo_paraakisiilgili_no: TIntegerField
      FieldName = 'ilgili_no'
    end
    object tablo_paraakisiislem_no: TIntegerField
      FieldName = 'islem_no'
    end
    object tablo_paraakisitarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_paraakisialinan: TFloatField
      FieldName = 'alinan'
      DisplayFormat = '0,.##'
    end
    object tablo_paraakisiverilen: TFloatField
      FieldName = 'verilen'
      DisplayFormat = '0,.##'
    end
    object tablo_paraakisiaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tablo_paraakisiilgilihesap: TStringField
      FieldName = 'ilgilihesap'
    end
    object tablo_paraakisiislem_tarihi: TDateTimeField
      FieldName = 'islem_tarihi'
    end
    object tablo_paraakisidonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_paraakisiadi_soyadi: TStringField
      FieldName = 'adi_soyadi'
      Size = 30
    end
  end
  object mn_paraakisi: TcxGridPopupMenu
    PopupMenus = <>
    Left = 357
    Top = 100
  end
  object ara_paraakisi: TDataSource
    DataSet = tablo_paraakisi
    Left = 109
    Top = 148
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'select sum(miktar) as toplammaas from maas where tarih <= now() ' +
        'and personel_kodu =:par1')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 465
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end>
  end
  object dosya: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Avans-Maa'#351' '#214'deme Durumu'
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosyaCanClose
    Left = 372
    Top = 192
  end
  object pr_paraakisi: TdxComponentPrinter
    CurrentLink = pr_paraakisiLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPageSetup, peoPrint]
    Version = 0
    Left = 552
    Top = 212
    object pr_paraakisiLink1: TdxGridReportLink
      Component = gr_para_akisi
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
      ReportDocument.Caption = 'Para Ak'#305#351#305
      BuiltInReportLink = True
    end
  end
  object t_zaman: TTimer
    Enabled = False
    OnTimer = t_zamanTimer
    Left = 472
    Top = 124
  end
  object PopupMenu1: TPopupMenu
    Left = 649
    Top = 188
  end
  object pr_program: TdxComponentPrinter
    CurrentLink = pr_programLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPageSetup, peoPrint]
    Version = 0
    Left = 460
    Top = 244
    object pr_programLink1: TdxStringGridReportLink
      Component = gr_ders_programi
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
      ReportDocument.Caption = 'Ders Program'#305
      BuiltInReportLink = True
    end
  end
  object dosya_program: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Ders Program'#305
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosya_programCanClose
    Left = 324
    Top = 240
  end
  object t_zaman_program: TTimer
    Enabled = False
    OnTimer = t_zaman_programTimer
    Left = 296
    Top = 164
  end
end
