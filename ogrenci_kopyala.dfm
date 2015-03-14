object fr_ogrenci_kopyala: Tfr_ogrenci_kopyala
  Left = 347
  Top = 363
  Width = 388
  Height = 154
  Caption = #214#287'renci Kopyala'
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
    Width = 380
    Height = 45
    Align = alTop
    Caption = ' Kopyalanacak '#214#287'renci '
    TabOrder = 0
    object Label1: TLabel
      Left = -4
      Top = 20
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
      Left = 152
      Top = 20
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
    object cm_don_kaynak: TcxComboBox
      Left = 56
      Top = 16
      Width = 77
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 0
    end
    object tx_ogr_no_kaynak: TcxTextEdit
      Left = 216
      Top = 16
      Width = 57
      Height = 21
      Properties.MaxLength = 4
      TabOrder = 1
    end
    object bt_ogrenci_bul: TBitBtn
      Left = 280
      Top = 12
      Width = 93
      Height = 29
      Caption = #214#287'renci Bul'
      TabOrder = 2
      OnClick = bt_ogrenci_bulClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 45
    Width = 380
    Height = 44
    Align = alTop
    Caption = ' Hedef '#214#287'renci Numaras'#305' '
    TabOrder = 1
    object Label2: TLabel
      Left = 0
      Top = 20
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
    object Label3: TLabel
      Left = 152
      Top = 20
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
    object cm_don_hedef: TcxComboBox
      Left = 56
      Top = 16
      Width = 77
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 0
    end
    object tx_ogr_no_hedef: TcxTextEdit
      Left = 216
      Top = 16
      Width = 57
      Height = 21
      Properties.MaxLength = 4
      TabOrder = 1
    end
    object bt_bos_numaralar: TBitBtn
      Left = 280
      Top = 12
      Width = 93
      Height = 29
      Caption = 'Bo'#351' Numaralar'
      TabOrder = 2
      OnClick = bt_bos_numaralarClick
    end
  end
  object bt_kopyala: TBitBtn
    Left = 4
    Top = 92
    Width = 373
    Height = 25
    Caption = 'Kopyala'
    TabOrder = 2
    OnClick = bt_kopyalaClick
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 164
    Top = 36
  end
end
