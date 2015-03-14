object fr_toplu_ogrenci_silme: Tfr_toplu_ogrenci_silme
  Left = 309
  Top = 212
  Width = 317
  Height = 174
  Caption = 'Toplu '#214#287'renci Silme'
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
    Width = 309
    Height = 73
    Align = alTop
    Caption = ' Kay'#305't Aral'#305#287#305'n'#305' '
    TabOrder = 0
    object Label3: TLabel
      Left = 12
      Top = 52
      Width = 49
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
      Left = 4
      Top = 28
      Width = 57
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
      Left = 144
      Top = 8
      Width = 69
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
      Left = 152
      Top = 24
      Width = 57
      Height = 21
      Properties.MaxLength = 4
      TabOrder = 2
    end
    object tx_ogr_no_bit_ara: TcxTextEdit
      Left = 152
      Top = 48
      Width = 57
      Height = 21
      Properties.MaxLength = 4
      TabOrder = 3
    end
    object bt_ogrenci_bul_bas: TBitBtn
      Left = 212
      Top = 24
      Width = 93
      Height = 21
      Caption = #214#287'renci Bul'
      TabOrder = 4
      OnClick = bt_ogrenci_bul_basClick
    end
    object bt_ogrenci_bul_bas_bit: TBitBtn
      Left = 212
      Top = 48
      Width = 93
      Height = 21
      Caption = #214#287'renci Bul'
      TabOrder = 5
      OnClick = bt_ogrenci_bul_bas_bitClick
    end
  end
  object bt_sil: TBitBtn
    Left = 4
    Top = 76
    Width = 301
    Height = 25
    Caption = 'Sil'
    TabOrder = 1
    OnClick = bt_silClick
  end
  object cxLabel8: TcxLabel
    Left = 0
    Top = 104
    Width = 309
    Height = 36
    TabStop = False
    Align = alBottom
    AutoSize = False
    Caption = 
      '   D'#304'KKAT! Sildi'#287'iniz kay'#305'tlar'#305' geri geritme '#351'ans'#305'n'#305'z yoktur. L'#252 +
      'tfen yedek al'#305'n.'
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 200
    Top = 84
  end
end
