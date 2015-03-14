object FrOgrenciNumaraDegistir: TFrOgrenciNumaraDegistir
  Left = 309
  Top = 212
  Width = 339
  Height = 239
  Caption = 'Numara De'#287'i'#351'tir'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 331
    Height = 73
    Align = alTop
    Caption = ' Kay'#305't Aral'#305#287#305'n'#305' '
    TabOrder = 0
    object Label3: TLabel
      Left = 0
      Top = 52
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Biti'#351
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 0
      Top = 28
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ba'#351'lang'#305#231
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 76
      Top = 8
      Width = 57
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'D'#246'nemi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 148
      Top = 8
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Numaras'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cm_don_bas_ara: TcxComboBox
      Left = 68
      Top = 24
      Width = 77
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 0
    end
    object cm_don_bit_ara: TcxComboBox
      Left = 68
      Top = 48
      Width = 77
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 1
    end
    object tx_ogr_no_bas_ara: TcxTextEdit
      Left = 160
      Top = 24
      Width = 57
      Height = 21
      Properties.MaxLength = 4
      TabOrder = 2
    end
    object tx_ogr_no_bit_ara: TcxTextEdit
      Left = 160
      Top = 48
      Width = 57
      Height = 21
      Properties.MaxLength = 4
      TabOrder = 3
    end
    object bt_ogrenci_bul_bas: TBitBtn
      Left = 228
      Top = 24
      Width = 93
      Height = 21
      Caption = #214#287'renci Bul'
      TabOrder = 4
      OnClick = bt_ogrenci_bul_basClick
    end
    object bt_ogrenci_bul_bas_bit: TBitBtn
      Left = 228
      Top = 48
      Width = 93
      Height = 21
      Caption = #214#287'renci Bul'
      TabOrder = 5
      OnClick = bt_ogrenci_bul_bas_bitClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 73
    Width = 331
    Height = 60
    Align = alTop
    Caption = ' Hedef Ba'#351'lang'#305'c'#305' '
    TabOrder = 1
    object Label7: TLabel
      Left = 4
      Top = 16
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'D'#246'nemi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 128
      Top = 16
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Numaras'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cm_don_hedef: TcxComboBox
      Left = 4
      Top = 32
      Width = 77
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 0
    end
    object tx_ogr_no_hedef: TcxTextEdit
      Left = 124
      Top = 31
      Width = 69
      Height = 21
      Properties.MaxLength = 4
      TabOrder = 1
    end
    object bt_bos_ogr_no_numaralar: TBitBtn
      Left = 220
      Top = 27
      Width = 101
      Height = 25
      Caption = 'Bo'#351' Numaralar'
      TabOrder = 2
      OnClick = bt_bos_ogr_no_numaralarClick
    end
  end
  object bt_degistir: TBitBtn
    Left = 4
    Top = 158
    Width = 321
    Height = 25
    Caption = 'De'#287'i'#351'tir'
    TabOrder = 2
    OnClick = bt_degistirClick
  end
  object cxLabel8: TcxLabel
    Left = 0
    Top = 186
    Width = 331
    Height = 19
    TabStop = False
    Align = alBottom
    AutoSize = False
    Caption = 
      '  D'#304'KKAT! Mevcut kay'#305'tlar'#305' '#252'zerine yaz'#305'lmaz. Dolu olan kay'#305'tlar ' +
      'atlan'#305'r.'
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
  end
  object CkbDonemDegistir: TcxCheckBox
    Left = 93
    Top = 134
    Width = 145
    Height = 21
    Caption = 'Sadece d'#246'nem de'#287'i'#351'tir.'
    TabOrder = 4
    OnClick = CkbDonemDegistirClick
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 80
    Top = 84
  end
end
