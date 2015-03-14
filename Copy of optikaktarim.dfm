object fr_optikaktarim: Tfr_optikaktarim
  Left = 324
  Top = 293
  Width = 374
  Height = 286
  Caption = 'Optik Aktar'#305'm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020100001000400E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000078888888888888888888888888888800F87
    F7F7878787878787878F8F8787800F787F7F7878787878787878F8F878800F87
    87F88888888888888888888F87800F787870000000000000000008F8F8800F87
    8780FFFFFFFFFFFFFFFF088F8F800F78787000000000000000000878F8800F87
    8787777777777777777777878F800FF878787877777777777878787878800F8F
    87878700000000000787878787800FF8F878780CEEEEEEEE0F78787878800F8F
    8F87870CEEEEEEEE07F7878787800F78F8F8780CCCCCCCCC0F7F787878800F87
    8F8F87000000000007F7F78787800F7878F8F878787878787F7F7F7878800F87
    878F8F878787878787F7F7F787800FFFFFFFFFFFFFFFFFFFFFFFFFFFFF700000
    000000000000000000000000000000FFFFFFFFFFFFFFFFBBBBBBBBBFFF000000
    00000000000000BBBBBBBBB00000000EEEEE660006EEE0BBBBBBBBB0EE000000
    666660FF06EEE0FFFFFFFFF0EE00000066000FF00EEEFF000000000FFF000DD0
    00FFFF006EEE00000000000000000DD00FFFFF0EEEEE00000AAAAAAA00000DD0
    FFFFFFF0000000000000000000000DD0FFFFFFFFF00000000000000000000DD0
    FFFFFFFF000000000000000000000DD000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000008000000180000001C0000001E0000001000000010000
    0001000070070000F80F0001FFFF0007FFFF000FFFFF0FFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 0
    Top = 226
    Width = 366
    Height = 26
    Align = alBottom
    Caption = 
      '        Aktar'#305'm i'#351'leminden S'#305'navlar men'#252's'#252'nden S'#305'nav De'#287'erlendir' +
      'me '#39'ye girerek Do'#287'ru ve Yanl'#305#351' say'#305'lar'#305'n'#305' hesaplatabilirsiniz.'
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 73
    Width = 366
    Height = 152
    Align = alTop
    Caption = ' Aktar'#305'm Parametreleri '
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 16
      Width = 49
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'D'#246'nem:'
    end
    object Label2: TLabel
      Left = 0
      Top = 38
      Width = 49
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Form Tipi:'
    end
    object Label6: TLabel
      Left = 12
      Top = 96
      Width = 146
      Height = 13
      Caption = #304'lk        ka'#287#305't cevap anahtar'#305'd'#305'r.'
    end
    object tx_cpadet: TcxTextEdit
      Left = 24
      Top = 92
      Width = 21
      Height = 21
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      TabOrder = 0
      Text = '2'
      OnExit = tx_cpadetExit
    end
    object Panel1: TPanel
      Left = 231
      Top = 57
      Width = 133
      Height = 52
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Label8: TLabel
        Left = 12
        Top = 10
        Width = 89
        Height = 13
        Caption = 'T'#252'rk'#231'e Soru Say'#305's'#305
      end
      object Label9: TLabel
        Left = 0
        Top = 30
        Width = 101
        Height = 13
        Caption = 'Matemaik Soru Say'#305's'#305
      end
      object tx_matsay: TcxTextEdit
        Left = 104
        Top = 26
        Width = 29
        Height = 21
        Properties.MaxLength = 2
        TabOrder = 0
        Text = '45'
      end
      object tx_turkcesay: TcxTextEdit
        Left = 104
        Top = 5
        Width = 29
        Height = 21
        Properties.MaxLength = 2
        TabOrder = 1
        Text = '45'
      end
    end
    object cb_formtur: TcxComboBox
      Left = 52
      Top = 34
      Width = 153
      Height = 21
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cb_formturPropertiesChange
      TabOrder = 2
    end
    object ck_soru_sayilari: TcxCheckBox
      Left = 8
      Top = 60
      Width = 157
      Height = 34
      Caption = 'T'#252'rk'#231'e ve Matematik soru say'#305's'#305' girmeliyim'
      Properties.MultiLine = True
      TabOrder = 3
      OnClick = ck_soru_sayilariClick
    end
    object tx_donemi: TcxComboBox
      Left = 52
      Top = 12
      Width = 89
      Height = 21
      TabOrder = 4
    end
    object bt_sonucac: TcxButton
      Left = 40
      Top = 116
      Width = 277
      Height = 32
      Caption = '&Kaydedilmi'#351' Sonu'#231' Dosyas'#305' A'#231' ve Aktar'
      TabOrder = 5
      OnClick = bt_sonucacClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF019ACF019ACF019ACF019ACFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0D9FD18BD4EE6BD3F845C0ED28B0E0019ACF01
        9ACF019ACF019ACFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF069CD076C8E5A9E9FE6DD8
        FF75DBFF77DCFF77DBFF63D1F930B3E3029BD0019ACF019ACF019ACF019ACFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF019ACF
        34AFD9BCE9F86ED8FF6FD8FE70D8FE70D8FE71D8FF74DBFF7ADEFF79DDFF73D9
        FF5CCCF522ACDD019ACF019ACF019ACFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF019ACF1FA9D68FD3EB97E4FF6FD9FE71D9FE71D9FE71D9FE71D9FE
        71D9FE71D9FE73DAFE76DCFF7BDFFF7ADEFF78DCFF77DCFF019ACFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF019ACF31B1DC49B7DEBDEEFB71DDFE77DEFE77
        DEFE77DEFE77DEFE77DEFE77DEFE77DEFE76DEFE76DEFE76DEFE78DFFF7CE1FF
        65D2F8019ACFFF00FFFF00FFFF00FFFF00FFFF00FF019ACF52C2E71DA7D5ADE2
        F38FE8FF7CE2FE7CE3FE7CE3FE7CE3FE7CE3FE7CE3FE7CE3FE7CE3FE7CE3FE7C
        E3FE7DE4FE7DE3FE5ED1F3019ACFFF00FFFF00FFFF00FFFF00FFFF00FF019ACF
        60CAEF1FA8D85EC1E2BBF4FE7DE7FE82E8FE81E8FE81E8FE81E8FE81E8FE81E8
        FE81E8FE81E8FE81E8FE82E8FE84E9FE5ED3F18DEEFF019ACFFF00FFFF00FFFF
        00FFFF00FF019ACF65CFF53EB7E529ACD8BFEEF88DEFFF85EDFF85EDFF85EDFF
        85EDFF86EDFF86EDFF86EDFF86EDFF86EDFF87EDFF89EEFF65D9F396F5FF019A
        CFFF00FFFF00FFFF00FFFF00FF019ACF69D1F855C4F31FA7D773CBE7C5FCFF93
        F7FF93F7FF92F6FF8DF4FF89F3FF89F2FF8BF2FF8BF2FF8BF2FF8BF2FF8EF3FF
        6ADEF395F8FF98FAFF019ACFFF00FFFF00FFFF00FF019ACF77D5FC5CC8FB3EB8
        E920A7D5B6E6F3D0F4FAD1F5FAD2F6FAD5F9FCB9FBFE9BF8FF8FF6FF91F6FF92
        F6FF93F7FF6BD0B70C85188BEAE0A4FFFF43C1E2019ACFFF00FFFF00FF019ACF
        8BDBFF5FCDFF64CDFE2CAFE30D9FD30FA0D310A0D310A0D317A3D38ED7ECE2FD
        FEC3FAFFA5F8FFA3F8FF84DDCF0C851838B5570C8518ABF3EBB5FCFD019ACFFF
        00FFFF00FF019ACF99E2FF67D3FF6DD4FE6CD4FE69D1FE64CEFB61CDF95BC9F5
        48BEEB17A3D54BB8DDDFF7FBE8FCFFB1E7DD0C85184ACE7361EB9541C1640C85
        18D6F6F0ADE9F5019ACFFF00FF019ACF9FE9FF70DCFF76DDFE76DDFE76DDFE75
        DCFE74DCFE73DCFE73DBFE61CEF61CA8D91CA5D58CCED70C851842C5665BE68C
        59E1895DE78F3EBD600C8518DBF1EF019ACFFF00FF019ACFA7EFFF76E5FF7CE5
        FF7CE5FF7CE5FF7CE5FF7DE5FF7DE5FF7DE5FF7DE3FF72DDFB40B8D20C85182D
        AD474AD47250D97B55DE8359E1885AE38B33AF510C85180197C3FF00FF019ACF
        ABF6FF7EEDFF85ECFF85ECFF85ECFF85ECFF84ECFF80ECFF7CECFF7DECFF7EEC
        FF0C85180C85180C85180C851840C7634FDA7A55DF830C85180C85180C85180C
        8518FF00FF019ACFC7FFFF82F5FF8FF5FF8FF5FF8FF5FF8EF5FF8DF4FFA0FDFF
        B7FFFFAFFFFFAEFFFFA6F9F4A5FBF8A3FCFA4CB07732B74F48D6704AD3720C85
        18FF00FFFF00FFFF00FFFF00FF019ACFA4E0F0A0FDFF8AFCFF90FCFF90FCFF90
        FCFF99FDFF86E8F5019ACF019ACF019ACF019ACF019ACF019ACF0486642CB347
        41D16636BC540C8518FF00FFFF00FFFF00FFFF00FFFF00FF019ACFECFFFFBCFF
        FFBCFFFFBCFFFFC0FFFF9DF5FB019ACFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0C85182BB74538C9580C8518FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF019ACF019ACF019ACF019ACF019ACF019ACFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0C851828BB4126B13E0C8518FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0C851814A4241CAE310C8518FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C85180C85180C96170D991A0C8518
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C85180C85180C85180C85180C
        8518FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 366
    Height = 73
    Align = alTop
    Caption = ' Dershane Otomasyonu '#39'ndaki Aktar'#305'lacak S'#305'nav'#305'n Bilgileri '
    TabOrder = 1
    object lb_baslik: TLabel
      Left = 0
      Top = 15
      Width = 79
      Height = 56
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_icerik: TLabel
      Left = 80
      Top = 15
      Width = 181
      Height = 56
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bt_sinav_sec: TcxButton
      Left = 262
      Top = 24
      Width = 101
      Height = 32
      Caption = 'S'#305'nav Se'#231
      TabOrder = 0
      OnClick = bt_sinav_secClick
      Glyph.Data = {
        F6020000424DF602000000000000B60000002800000018000000180000000100
        08000000000040020000C40E0000C40E00002000000020000000D3ACAC00FFC8
        68009AE5FA000EAFED00FCB95100EBD8D900FCF9F90003D2FC00F2EAEB00FFD4
        8100E4CACA00F0B26E0001ECFF00EEE2E300C99B9B00F9DAB600FFE3A2005CC0
        E800FEAF3000B98B8B00D2F2FC00A6C4C800FEE8CF00EAF9FD00D7B8B800FFDE
        970027F7FE00D69E8D007A9CAE00EDC29E0043CEF500FFFFFF001F1403030311
        1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0307070303021F1F1F1F1F1F1F
        1F1F1F1F1F1F1F1F1F1F1F070C0C070303171F1F1F1F1F1F1F1F1F1F1F1F1F1F
        1F1F1F1E070C0C0703111F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F171E0C0C0C
        0703021F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F14070C0C0C0703141F1F1F1F
        1F1F1F1F1F1F1F1F1F1F1F1F1F14070C0C0C071E171F1F1F1F1F1F1F1F1F1F1F
        1F1F1F1F1F1F02070C1A151C08080D0D061F1F1F1F1F1F1F1F1F1F1F1F1F1F02
        0C15180E1313131313000D1F1F1F1F1F1F1F1F1F1F1F1F1F0215180E00000000
        0E131318061F1F1F1F1F1F1F1F1F1F1F1F18000A0A180A0A0A0E0E1300061F1F
        1F1F1F1F1F1F1F1F0A180A0B1212041D0A05000E0E18061F1F1F1F1F1F1F1F06
        18050B12121212120B0A0818000E0A1F1F1F1F1F1F1F1F080A0A120412040404
        040B0A08180000061F1F1F1F1F1F1F080A18040404040104010401050D000005
        1F1F1F1F1F1F1F0605180B04010101010101011D080A00181F1F1F1F1F1F1F06
        0A051B040109090909090109050D18001F1F1F1F1F1F1F1F0D0D000B01090909
        090909090F080A181F1F1F1F1F1F1F1F060A051B04011919191919090F080518
        1F1F1F1F1F1F1F1F1F08050A1B040119101010190F08050A1F1F1F1F1F1F1F1F
        1F1F0D0D0A1B0B010910101916060A081F1F1F1F1F1F1F1F1F1F060D0D05180B
        0B04011006050D061F1F1F1F1F1F1F1F1F1F1F1F080D0D050A0F16060D081F1F
        1F1F1F1F1F1F1F1F1F1F1F1F1F06080D0D080D05081F1F1F1F1F}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object data_mdb: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=EMSOp' +
      'tikDB'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'MSDASQL.1'
    Left = 88
    Top = 20
  end
  object dosya: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Metin Dosyalar'#305' (*.txt)|*.txt'
    Options = [ofReadOnly, ofHideReadOnly, ofEnableSizing]
    Title = 'Optik dosyas'#305
    Left = 408
    Top = 120
  end
  object t_sinavtanim: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sinavtanim where sinav_no=:SinavNo')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'SinavNo'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 172
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SinavNo'
        ParamType = ptUnknown
      end>
    object t_sinavtanimsinav_no: TIntegerField
      FieldName = 'sinav_no'
    end
    object t_sinavtanimturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object t_sinavtanimsinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
    end
    object t_sinavtanimsinav_adi: TStringField
      FieldName = 'sinav_adi'
      Size = 25
    end
    object t_sinavtanimturkce_soru_sayisi: TSmallintField
      FieldName = 'turkce_soru_sayisi'
    end
    object t_sinavtanimtarih1_soru_sayisi: TSmallintField
      FieldName = 'tarih1_soru_sayisi'
    end
    object t_sinavtanimcografya_soru_sayisi: TSmallintField
      FieldName = 'cografya_soru_sayisi'
    end
    object t_sinavtanimfelsefe_soru_sayisi: TSmallintField
      FieldName = 'felsefe_soru_sayisi'
    end
    object t_sinavtanimsosyal1_soru_sayisi: TSmallintField
      FieldName = 'sosyal1_soru_sayisi'
    end
    object t_sinavtanimcebir1_soru_sayisi: TSmallintField
      FieldName = 'cebir1_soru_sayisi'
    end
    object t_sinavtanimgeometri1_soru_sayisi: TSmallintField
      FieldName = 'geometri1_soru_sayisi'
    end
    object t_sinavtanimmatematik1_soru_sayisi: TSmallintField
      FieldName = 'matematik1_soru_sayisi'
    end
    object t_sinavtanimmatematik2_soru_sayisi: TSmallintField
      FieldName = 'matematik2_soru_sayisi'
    end
    object t_sinavtanimfizik1_soru_sayisi: TSmallintField
      FieldName = 'fizik1_soru_sayisi'
    end
    object t_sinavtanimkimya1_soru_sayisi: TSmallintField
      FieldName = 'kimya1_soru_sayisi'
    end
    object t_sinavtanimbiyoloji1_soru_sayisi: TSmallintField
      FieldName = 'biyoloji1_soru_sayisi'
    end
    object t_sinavtanimfen1_soru_sayisi: TSmallintField
      FieldName = 'fen1_soru_sayisi'
    end
    object t_sinavtanimedebiyat_soru_sayisi: TSmallintField
      FieldName = 'edebiyat_soru_sayisi'
    end
    object t_sinavtanimturkiyecografyasi_soru_sayisi: TSmallintField
      FieldName = 'turkiyecografyasi_soru_sayisi'
    end
    object t_sinavtanimpsikoloji_soru_sayisi: TSmallintField
      FieldName = 'psikoloji_soru_sayisi'
    end
    object t_sinavtanimedebiyatsosyal_soru_sayisi: TSmallintField
      FieldName = 'edebiyatsosyal_soru_sayisi'
    end
    object t_sinavtanimtarih2_soru_sayisi: TSmallintField
      FieldName = 'tarih2_soru_sayisi'
    end
    object t_sinavtanimulkelercografyasi_soru_sayisi: TSmallintField
      FieldName = 'ulkelercografyasi_soru_sayisi'
    end
    object t_sinavtanimsosyoloji_soru_sayisi: TSmallintField
      FieldName = 'sosyoloji_soru_sayisi'
    end
    object t_sinavtanimmantik_soru_sayisi: TSmallintField
      FieldName = 'mantik_soru_sayisi'
    end
    object t_sinavtanimsosyal2_soru_sayisi: TSmallintField
      FieldName = 'sosyal2_soru_sayisi'
    end
    object t_sinavtanimcebir2_soru_sayisi: TSmallintField
      FieldName = 'cebir2_soru_sayisi'
    end
    object t_sinavtanimgeometri2_soru_sayisi: TSmallintField
      FieldName = 'geometri2_soru_sayisi'
    end
    object t_sinavtanimfizik2_soru_sayisi: TSmallintField
      FieldName = 'fizik2_soru_sayisi'
    end
    object t_sinavtanimkimya2_soru_sayisi: TSmallintField
      FieldName = 'kimya2_soru_sayisi'
    end
    object t_sinavtanimbiyoloji2_soru_sayisi: TSmallintField
      FieldName = 'biyoloji2_soru_sayisi'
    end
    object t_sinavtanimfen2_soru_sayisi: TSmallintField
      FieldName = 'fen2_soru_sayisi'
    end
    object t_sinavtanimingilizce_soru_sayisi: TSmallintField
      FieldName = 'ingilizce_soru_sayisi'
    end
    object t_sinavtanimAturkce: TStringField
      FieldName = 'Aturkce'
      Size = 255
    end
    object t_sinavtanimAsos1: TStringField
      FieldName = 'Asos1'
      Size = 255
    end
    object t_sinavtanimAmat1: TStringField
      FieldName = 'Amat1'
      Size = 255
    end
    object t_sinavtanimAfen1: TStringField
      FieldName = 'Afen1'
      Size = 255
    end
    object t_sinavtanimAedsos: TStringField
      FieldName = 'Aedsos'
      Size = 255
    end
    object t_sinavtanimAsos2: TStringField
      FieldName = 'Asos2'
      Size = 255
    end
    object t_sinavtanimAmat2: TStringField
      FieldName = 'Amat2'
      Size = 255
    end
    object t_sinavtanimAfen2: TStringField
      FieldName = 'Afen2'
      Size = 255
    end
    object t_sinavtanimAing: TStringField
      FieldName = 'Aing'
      Size = 255
    end
    object t_sinavtanimBturkce: TStringField
      FieldName = 'Bturkce'
      Size = 255
    end
    object t_sinavtanimBsos1: TStringField
      FieldName = 'Bsos1'
      Size = 255
    end
    object t_sinavtanimBmat1: TStringField
      FieldName = 'Bmat1'
      Size = 255
    end
    object t_sinavtanimBfen1: TStringField
      FieldName = 'Bfen1'
      Size = 255
    end
    object t_sinavtanimBedsos: TStringField
      FieldName = 'Bedsos'
      Size = 255
    end
    object t_sinavtanimBsos2: TStringField
      FieldName = 'Bsos2'
      Size = 255
    end
    object t_sinavtanimBmat2: TStringField
      FieldName = 'Bmat2'
      Size = 255
    end
    object t_sinavtanimBfen2: TStringField
      FieldName = 'Bfen2'
      Size = 255
    end
    object t_sinavtanimBing: TStringField
      FieldName = 'Bing'
      Size = 255
    end
  end
  object t_sinavsonuc: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sinavsonuc where sinav_no =:p0')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 24
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object t_sinavsonucsinav_no: TIntegerField
      FieldName = 'sinav_no'
      Required = True
    end
    object t_sinavsonucsinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object t_sinavsonucdonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object t_sinavsonucogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object t_sinavsonucadi: TStringField
      FieldName = 'adi'
      Required = True
      Size = 15
    end
    object t_sinavsonucsoyadi: TStringField
      FieldName = 'soyadi'
      Required = True
      Size = 15
    end
    object t_sinavsonucturkce_dogru: TIntegerField
      FieldName = 'turkce_dogru'
    end
    object t_sinavsonucturkce_yanlis: TIntegerField
      FieldName = 'turkce_yanlis'
    end
    object t_sinavsonuctarih1_dogru: TSmallintField
      FieldName = 'tarih1_dogru'
    end
    object t_sinavsonuctarih1_yanlis: TSmallintField
      FieldName = 'tarih1_yanlis'
    end
    object t_sinavsonuccografya_dogru: TSmallintField
      FieldName = 'cografya_dogru'
    end
    object t_sinavsonuccografya_yanlis: TSmallintField
      FieldName = 'cografya_yanlis'
    end
    object t_sinavsonucfelsefe_dogru: TSmallintField
      FieldName = 'felsefe_dogru'
    end
    object t_sinavsonucfelsefe_yanlis: TSmallintField
      FieldName = 'felsefe_yanlis'
    end
    object t_sinavsonucsosyal1_dogru: TIntegerField
      FieldName = 'sosyal1_dogru'
    end
    object t_sinavsonucsosyal1_yanlis: TIntegerField
      FieldName = 'sosyal1_yanlis'
    end
    object t_sinavsonuccebir1_dogru: TSmallintField
      FieldName = 'cebir1_dogru'
    end
    object t_sinavsonuccebir1_yanlis: TSmallintField
      FieldName = 'cebir1_yanlis'
    end
    object t_sinavsonucgeometri1_dogru: TSmallintField
      FieldName = 'geometri1_dogru'
    end
    object t_sinavsonucgeometri1_yanlis: TSmallintField
      FieldName = 'geometri1_yanlis'
    end
    object t_sinavsonucmatematik1_dogru: TIntegerField
      FieldName = 'matematik1_dogru'
    end
    object t_sinavsonucmatematik1_yanlis: TIntegerField
      FieldName = 'matematik1_yanlis'
    end
    object t_sinavsonucfizik1_dogru: TSmallintField
      FieldName = 'fizik1_dogru'
    end
    object t_sinavsonucfizik1_yanlis: TSmallintField
      FieldName = 'fizik1_yanlis'
    end
    object t_sinavsonuckimya1_dogru: TSmallintField
      FieldName = 'kimya1_dogru'
    end
    object t_sinavsonuckimya1_yanlis: TSmallintField
      FieldName = 'kimya1_yanlis'
    end
    object t_sinavsonucbiyoloji1_dogru: TSmallintField
      FieldName = 'biyoloji1_dogru'
    end
    object t_sinavsonucbiyoloji1_yanlis: TSmallintField
      FieldName = 'biyoloji1_yanlis'
    end
    object t_sinavsonucfen1_dogru: TIntegerField
      FieldName = 'fen1_dogru'
    end
    object t_sinavsonucfen1_yanlis: TIntegerField
      FieldName = 'fen1_yanlis'
    end
    object t_sinavsonucedebiyat_dogru: TIntegerField
      FieldName = 'edebiyat_dogru'
    end
    object t_sinavsonucedebiyat_yanlis: TIntegerField
      FieldName = 'edebiyat_yanlis'
    end
    object t_sinavsonucturkiyecografyasi_dogru: TIntegerField
      FieldName = 'turkiyecografyasi_dogru'
    end
    object t_sinavsonucturkiyecografyasi_yanlis: TIntegerField
      FieldName = 'turkiyecografyasi_yanlis'
    end
    object t_sinavsonucpsikoloji_dogru: TIntegerField
      FieldName = 'psikoloji_dogru'
    end
    object t_sinavsonucpsikoloji_yanlis: TIntegerField
      FieldName = 'psikoloji_yanlis'
    end
    object t_sinavsonucedebiyatsosyal_dogru: TIntegerField
      FieldName = 'edebiyatsosyal_dogru'
    end
    object t_sinavsonucedebiyatsosyal_yanlis: TIntegerField
      FieldName = 'edebiyatsosyal_yanlis'
    end
    object t_sinavsonuctarih2_dogru: TIntegerField
      FieldName = 'tarih2_dogru'
    end
    object t_sinavsonuctarih2_yanlis: TIntegerField
      FieldName = 'tarih2_yanlis'
    end
    object t_sinavsonuculkelercografyasi_dogru: TIntegerField
      FieldName = 'ulkelercografyasi_dogru'
    end
    object t_sinavsonuculkelercografyasi_yanlis: TIntegerField
      FieldName = 'ulkelercografyasi_yanlis'
    end
    object t_sinavsonucsosyoloji_dogru: TIntegerField
      FieldName = 'sosyoloji_dogru'
    end
    object t_sinavsonucsosyoloji_yanlis: TIntegerField
      FieldName = 'sosyoloji_yanlis'
    end
    object t_sinavsonucmantik_dogru: TIntegerField
      FieldName = 'mantik_dogru'
    end
    object t_sinavsonucmantik_yanlis: TIntegerField
      FieldName = 'mantik_yanlis'
    end
    object t_sinavsonucsosyal2_dogru: TIntegerField
      FieldName = 'sosyal2_dogru'
    end
    object t_sinavsonucsosyal2_yanlis: TIntegerField
      FieldName = 'sosyal2_yanlis'
    end
    object t_sinavsonuccebir2_dogru: TIntegerField
      FieldName = 'cebir2_dogru'
    end
    object t_sinavsonuccebir2_yanlis: TIntegerField
      FieldName = 'cebir2_yanlis'
    end
    object t_sinavsonucgeometri2_dogru: TIntegerField
      FieldName = 'geometri2_dogru'
    end
    object t_sinavsonucgeometri2_yanlis: TIntegerField
      FieldName = 'geometri2_yanlis'
    end
    object t_sinavsonucmatematik2_dogru: TIntegerField
      FieldName = 'matematik2_dogru'
    end
    object t_sinavsonucmatematik2_yanlis: TIntegerField
      FieldName = 'matematik2_yanlis'
    end
    object t_sinavsonucfizik2_dogru: TIntegerField
      FieldName = 'fizik2_dogru'
    end
    object t_sinavsonucfizik2_yanlis: TIntegerField
      FieldName = 'fizik2_yanlis'
    end
    object t_sinavsonuckimya2_dogru: TIntegerField
      FieldName = 'kimya2_dogru'
    end
    object t_sinavsonuckimya2_yanlis: TIntegerField
      FieldName = 'kimya2_yanlis'
    end
    object t_sinavsonucbiyoloji2_dogru: TIntegerField
      FieldName = 'biyoloji2_dogru'
    end
    object t_sinavsonucbiyoloji2_yanlis: TIntegerField
      FieldName = 'biyoloji2_yanlis'
    end
    object t_sinavsonucfen2_dogru: TIntegerField
      FieldName = 'fen2_dogru'
    end
    object t_sinavsonucfen2_yanlis: TIntegerField
      FieldName = 'fen2_yanlis'
    end
    object t_sinavsonucingilizce_dogru: TIntegerField
      FieldName = 'ingilizce_dogru'
    end
    object t_sinavsonucingilizce_yanlis: TIntegerField
      FieldName = 'ingilizce_yanlis'
    end
    object t_sinavsonuctoplam_dogru: TIntegerField
      FieldName = 'toplam_dogru'
    end
    object t_sinavsonuctoplam_yanlis: TIntegerField
      FieldName = 'toplam_yanlis'
    end
    object t_sinavsonuckitapcik: TStringField
      FieldName = 'kitapcik'
      Size = 1
    end
    object t_sinavsonuccevapturkce: TStringField
      FieldName = 'cevapturkce'
      Size = 255
    end
    object t_sinavsonuccevapsos1: TStringField
      FieldName = 'cevapsos1'
      Size = 255
    end
    object t_sinavsonuccevapmat1: TStringField
      FieldName = 'cevapmat1'
      Size = 255
    end
    object t_sinavsonuccevapfen1: TStringField
      FieldName = 'cevapfen1'
      Size = 255
    end
    object t_sinavsonuccevapedsos: TStringField
      FieldName = 'cevapedsos'
      Size = 255
    end
    object t_sinavsonuccevapsos2: TStringField
      FieldName = 'cevapsos2'
      Size = 255
    end
    object t_sinavsonuccevapmat2: TStringField
      FieldName = 'cevapmat2'
      Size = 255
    end
    object t_sinavsonuccevapfen2: TStringField
      FieldName = 'cevapfen2'
      Size = 255
    end
    object t_sinavsonuccevaping: TStringField
      FieldName = 'cevaping'
      Size = 255
    end
  end
  object t_ogr: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 104
    Top = 117
    object t_ogrdonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object t_ogrogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object t_ogrsinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object t_ogradi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object t_ogrsoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object t_ogradsoyad: TStringField
      FieldName = 'adsoyad'
      Size = 31
    end
  end
  object t_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 168
    Top = 93
    object StringField1: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object IntegerField1: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'adsoyad'
      Size = 31
    end
  end
  object tablo_formtur: TADOTable
    Connection = data_mdb
    CursorType = ctStatic
    TableName = 'Forms'
    Left = 192
    Top = 33
    object tablo_formturform_no: TAutoIncField
      FieldName = 'form_no'
      ReadOnly = True
    end
    object tablo_formturform_name: TWideStringField
      FieldName = 'form_name'
      Size = 50
    end
    object tablo_formturform_desc: TMemoField
      FieldName = 'form_desc'
      BlobType = ftMemo
    end
  end
  object ara_formtur: TDataSource
    DataSet = tablo_formtur
    Left = 12
    Top = 72
  end
  object tablo_alanlar: TADOQuery
    Connection = data_mdb
    Parameters = <>
    Left = 136
    Top = 24
  end
end
