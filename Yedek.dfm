object FrYedek: TFrYedek
  Left = 334
  Top = 212
  Width = 275
  Height = 335
  Caption = 'Yedek Alma - Geri Y'#252'kleme'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel8: TcxLabel
    Left = 0
    Top = 154
    Width = 267
    Height = 72
    TabStop = False
    Align = alBottom
    AutoSize = False
    Caption = 
      '    mysql i'#231'inde kullan'#305'c'#305' '#351'ifreleri bulunur. Bu nedenle '#231'ok s'#305'k' +
      ' olarak yedeklemenize gerek yoktur. Geri y'#252'kleme yaparken hata o' +
      'lmad'#305#287#305' s'#252'rece mysql'#39' i y'#252'klemeyiniz. Eski kay'#305'tlardan bilgi ara' +
      'mak i'#231'in yedek dosyas'#305'n'#305', yede'#287'e geri y'#252'kleyiniz.  '
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 267
    Height = 49
    Align = alTop
    Caption = ' Yedekle '
    Color = 15138790
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object bt_yedekle_dershane: TBitBtn
      Left = 8
      Top = 16
      Width = 117
      Height = 25
      Caption = 'Dershane'
      TabOrder = 0
      OnClick = bt_yedekle_dershaneClick
    end
    object bt_yedekle_mysql: TBitBtn
      Left = 144
      Top = 16
      Width = 117
      Height = 25
      Caption = 'mysql'
      TabOrder = 1
      OnClick = bt_yedekle_mysqlClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 101
    Width = 267
    Height = 52
    Align = alTop
    Caption = ' Geri Y'#252'kle '
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object bt_geri_dershane: TBitBtn
      Left = 8
      Top = 19
      Width = 117
      Height = 25
      Caption = 'Dershane'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bt_geri_dershaneClick
    end
    object bt_geri_mysql: TBitBtn
      Left = 144
      Top = 19
      Width = 117
      Height = 25
      Caption = 'mysql'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bt_geri_mysqlClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 49
    Width = 267
    Height = 52
    Align = alTop
    Caption = ' Yede'#287'e Geri Y'#252'kle '
    Color = 65408
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object bt_yedek_geri_dershane: TBitBtn
      Left = 8
      Top = 19
      Width = 117
      Height = 25
      Caption = 'Dershane'
      TabOrder = 0
      OnClick = bt_yedek_geri_dershaneClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 226
    Width = 267
    Height = 75
    Align = alBottom
    Caption = ' Yedekleme Durumu '
    TabOrder = 4
    object Label2: TLabel
      Left = 2
      Top = 44
      Width = 263
      Height = 13
      Align = alTop
      Caption = 'S'#305'k'#305#351't'#305'rma'
    end
    object AMSikistirma: TAbMeter
      Left = 2
      Top = 57
      Width = 263
      Height = 16
      Align = alTop
      Orientation = moHorizontal
      UnusedColor = clBtnFace
      UsedColor = clNavy
    end
    object Label3: TLabel
      Left = 2
      Top = 15
      Width = 263
      Height = 13
      Align = alTop
      Caption = 'Mevcut Tablo'
    end
    object AMTablo: TAbMeter
      Left = 2
      Top = 28
      Width = 263
      Height = 16
      Align = alTop
      Orientation = moHorizontal
      UnusedColor = clBtnFace
      UsedColor = clNavy
    end
  end
  object zip_ac: TAbUnZipper
    Left = 132
    Top = 64
  end
  object zip_kapa: TAbZipper
    ArchiveProgressMeter = AMLSikistirma
    ItemProgressMeter = AMLTablo
    AutoSave = True
    CompressionMethodToUse = smStored
    DeflationOption = doSuperFast
    DOSMode = False
    OnArchiveItemProgress = zip_kapaArchiveItemProgress
    StoreOptions = [soStripDrive, soStripPath, soRemoveDots]
    Left = 172
    Top = 64
  end
  object dg_ac: TOpenDialog
    DefaultExt = '.zip'
    Options = [ofPathMustExist, ofEnableSizing]
    OnCanClose = dg_kapaCanClose
    Left = 240
    Top = 60
  end
  object dg_kapa: TSaveDialog
    DefaultExt = '.zip'
    Filter = 'S'#305'k'#305#351't'#305'r'#305'lm'#305#351' dosya (*.zip)|*.zip'
    Options = [ofOverwritePrompt, ofPathMustExist, ofEnableSizing]
    Title = 'Yedek Alma'
    OnCanClose = dg_kapaCanClose
    Left = 212
    Top = 60
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_kok
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 112
    Top = 116
  end
  object AMLTablo: TAbVCLMeterLink
    Meter = AMTablo
    Left = 136
    Top = 256
  end
  object AMLSikistirma: TAbVCLMeterLink
    Meter = AMSikistirma
    Left = 180
    Top = 256
  end
end
