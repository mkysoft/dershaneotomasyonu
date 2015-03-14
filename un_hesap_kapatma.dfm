object fr_hesap_kapatma: Tfr_hesap_kapatma
  Left = 383
  Top = 302
  Width = 197
  Height = 296
  Caption = 'Hesap Kapatma'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label31: TLabel
    Left = 31
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Biti'#351' Tarihi'
  end
  object Label1: TLabel
    Left = 3
    Top = 8
    Width = 75
    Height = 13
    Caption = 'Ba'#351'lang'#305#231' Tarihi'
  end
  object cxLabel8: TcxLabel
    Left = 0
    Top = 89
    Width = 189
    Height = 173
    TabStop = False
    Align = alBottom
    AutoSize = False
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
    TabOrder = 0
    Caption = 
      '    D'#304'KKAT! Belirti'#287'iniz tarih aral'#305#287#305'ndaki kay'#305'tlar silinerek t' +
      'ek bir kay'#305't olarak kaydedilecektir. Her ilgili hesap ayr'#305' ayr'#305' ' +
      'kaydedilir. Yazd'#305#287#305'n'#305'z tarihler dahildir. Hesap kapatt'#305#287#305'n'#305'z tar' +
      'ih aral'#305#287#305'ndan taksidi olan '#246#287'renciler varsa taksitlerini '#246'demem' +
      'i'#351'ler gibi g'#246'r'#252'n'#252'r. Bu nedenle '#231'ok eski tarihler i'#231'in hesap kapa' +
      't'#305'n'#305'z. Hesab'#305' kapatmadan '#246'nce yedek al'#305'n'#305'z yada Muhasebe men'#252's'#252'n' +
      'den Gelir-Gider Durumu ekran'#305'ndan hesab'#305' kapat'#305'lacak kay'#305'tlar'#305' E' +
      'xcel'#39'e aktar'#305'n'#305'z. Daha sonra kontrol i'#231'in laz'#305'm olabilir. '
  end
  object bt_hesabi_kapat: TBitBtn
    Left = 4
    Top = 56
    Width = 181
    Height = 29
    Caption = 'Hesab'#305' Kapat'
    TabOrder = 1
    OnClick = bt_hesabi_kapatClick
  end
  object tx_tarih_bas: TcxDateEdit
    Left = 84
    Top = 4
    Width = 97
    Height = 21
    Properties.DateOnError = deToday
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 2
  end
  object tx_tarih_bit: TcxDateEdit
    Left = 84
    Top = 28
    Width = 97
    Height = 21
    Properties.DateOnError = deToday
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 3
  end
  object tablo_oku1: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 36
    Top = 96
  end
  object tablo_oku2: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 100
    Top = 104
  end
  object tablo_oku3: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 148
    Top = 104
  end
end
