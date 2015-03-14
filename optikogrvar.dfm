object fr_optikogrvar: Tfr_optikogrvar
  Left = 254
  Top = 261
  BorderStyle = bsDialog
  Caption = 
    'Bu '#214#287'renci Zaten Aktar'#305'lm'#305#351' - Bir Tanesi Bilgilerini Yanl'#305#351' Girm' +
    'i'#351
  ClientHeight = 174
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 0
    Top = 85
    Width = 572
    Height = 88
    Align = alTop
    Caption = 'Eklenecek '#246#287'rencinin forma girmi'#351' oldu'#287'u bilgileri '
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 16
      Width = 25
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 284
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Soyad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #214'gr No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_ogrno: TLabel
      Left = 52
      Top = 16
      Width = 25
      Height = 13
      AutoSize = False
    end
    object lb_adi: TLabel
      Left = 108
      Top = 16
      Width = 177
      Height = 13
      AutoSize = False
    end
    object lb_soyadi: TLabel
      Left = 328
      Top = 16
      Width = 177
      Height = 13
      AutoSize = False
    end
    object bt_yanlis: TBitBtn
      Left = 36
      Top = 44
      Width = 261
      Height = 33
      Caption = '&Ba'#351'ka '#214#287'renci yada D'#305#351'ardan Olarak Kaydet'
      TabOrder = 0
      OnClick = bt_yanlisClick
    end
    object bt_adsoyaddegistir: TBitBtn
      Left = 308
      Top = 44
      Width = 169
      Height = 33
      Caption = 'Ad'#305'n'#305' veya Soyad'#305'n'#305' De'#287'i'#351'tir'
      TabOrder = 1
      OnClick = bt_adsoyaddegistirClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 572
    Height = 85
    Align = alTop
    Caption = ' Daha '#246'nce s'#305'nav sonucu aktar'#305'lm'#305#351' '#246#287'renci '
    TabOrder = 1
    object Label4: TLabel
      Left = 80
      Top = 16
      Width = 25
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 252
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Soyad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #214'gr No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_kogrno: TLabel
      Left = 52
      Top = 16
      Width = 25
      Height = 13
      AutoSize = False
    end
    object lb_kadi: TLabel
      Left = 108
      Top = 16
      Width = 141
      Height = 13
      AutoSize = False
    end
    object lb_ksoyadi: TLabel
      Left = 296
      Top = 16
      Width = 133
      Height = 13
      AutoSize = False
    end
    object Label7: TLabel
      Left = 432
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'S'#305'n'#305'f'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_ksinifi: TLabel
      Left = 476
      Top = 16
      Width = 89
      Height = 13
      AutoSize = False
    end
    object bt_degistir: TBitBtn
      Left = 108
      Top = 44
      Width = 265
      Height = 33
      Caption = 'Daha '#214'nce &Kaydedilen '#214#287'renciyi De'#287'i'#351'tir'
      TabOrder = 0
      OnClick = bt_degistirClick
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 416
    Top = 32
  end
end
