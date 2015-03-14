object FrSiniflarArasiAtama: TFrSiniflarArasiAtama
  Left = 339
  Top = 266
  BorderStyle = bsToolWindow
  Caption = 'S'#305'n'#305'f Atama'
  ClientHeight = 360
  ClientWidth = 239
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 55
    Top = 6
    Width = 34
    Height = 13
    Caption = 'D'#246'nem'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 28
    Width = 117
    Height = 269
    Caption = ' Kaynak S'#305'n'#305'flar '
    TabOrder = 0
    object ls_kaynak_siniflar: TcxListBox
      Left = 2
      Top = 15
      Width = 113
      Height = 252
      Align = alClient
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 120
    Top = 28
    Width = 117
    Height = 269
    Caption = ' Hedef S'#305'n'#305'flar  '
    TabOrder = 1
    object ls_hedef_siniflar: TcxListBox
      Left = 2
      Top = 15
      Width = 113
      Height = 252
      Align = alClient
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 0
    end
  end
  object cxLabel8: TcxLabel
    Left = 0
    Top = 296
    Width = 113
    Height = 61
    TabStop = False
    Align = alCustom
    AutoSize = False
    Caption = 
      'Birden falza s'#305'n'#305'f'#305' ayn'#305' anda se'#231'mek i'#231'in CTRL tu'#351'unu bas'#305'p s'#305'n'#305 +
      'flara t'#305'klay'#305'n'#305'z.'
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
  end
  object bt_ata: TBitBtn
    Left = 132
    Top = 316
    Width = 93
    Height = 25
    Caption = 'Ata'
    TabOrder = 3
    OnClick = bt_ataClick
  end
  object tx_donemi: TcxComboBox
    Left = 96
    Top = 2
    Width = 85
    Height = 21
    TabOrder = 4
    Text = 'tx_donemi'
    OnClick = tx_donemiClick
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 36
    Top = 100
  end
  object tablo_guncelle: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 44
    Top = 176
  end
end
