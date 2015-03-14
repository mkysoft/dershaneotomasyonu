object fr_sms_ayarlari: Tfr_sms_ayarlari
  Left = 438
  Top = 360
  Width = 279
  Height = 197
  BorderStyle = bsSizeToolWin
  Caption = 'SMS Ayarlar'#305
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dn_sms_ayarlari: TDBNavigator
    Left = 0
    Top = 128
    Width = 271
    Height = 35
    DataSource = ara_sms_ayarlari
    VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alBottom
    TabOrder = 0
  end
  object tx_username: TcxDBTextEdit
    Left = 64
    Top = 8
    Width = 125
    Height = 21
    DataBinding.DataField = 'username'
    DataBinding.DataSource = ara_sms_ayarlari
    Properties.MaxLength = 25
    Style.StyleController = sc_text
    TabOrder = 1
  end
  object tx_sifre: TcxDBTextEdit
    Left = 64
    Top = 32
    Width = 125
    Height = 21
    DataBinding.DataField = 'sifre'
    DataBinding.DataSource = ara_sms_ayarlari
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 25
    Style.StyleController = sc_text
    TabOrder = 2
  end
  object tx_kanal: TcxDBTextEdit
    Left = 64
    Top = 56
    Width = 101
    Height = 21
    DataBinding.DataField = 'kanal'
    DataBinding.DataSource = ara_sms_ayarlari
    Properties.MaxLength = 25
    Style.StyleController = sc_text
    TabOrder = 3
  end
  object tx_originator: TcxDBTextEdit
    Left = 64
    Top = 80
    Width = 125
    Height = 21
    DataBinding.DataField = 'originator'
    DataBinding.DataSource = ara_sms_ayarlari
    Properties.MaxLength = 11
    Style.StyleController = sc_text
    TabOrder = 4
  end
  object tx_gateway: TcxDBTextEdit
    Left = 64
    Top = 104
    Width = 205
    Height = 21
    DataBinding.DataField = 'gateway'
    DataBinding.DataSource = ara_sms_ayarlari
    Properties.MaxLength = 100
    Style.StyleController = sc_text
    TabOrder = 5
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 8
    Width = 61
    Height = 21
    AutoSize = False
    Caption = 'Kullan'#305'c'#305' Ad'#305
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object cxLabel2: TcxLabel
    Left = 0
    Top = 32
    Width = 61
    Height = 21
    AutoSize = False
    Caption = #350'ifre'
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 56
    Width = 61
    Height = 21
    AutoSize = False
    Caption = 'Kanal'
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object cxLabel4: TcxLabel
    Left = 0
    Top = 80
    Width = 61
    Height = 21
    AutoSize = False
    Caption = 'Originator'
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object cxLabel5: TcxLabel
    Left = 0
    Top = 104
    Width = 61
    Height = 21
    AutoSize = False
    Caption = 'Gateway'
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 80
    Width = 57
    Height = 21
    Caption = 'Listele'
    TabOrder = 11
    OnClick = BitBtn1Click
  end
  object tablo_sms_ayarlari: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select gateway,username,sifre,kanal,originator from ayarlar')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 208
    Top = 24
    object tablo_sms_ayarlarigateway: TStringField
      FieldName = 'gateway'
      Size = 100
    end
    object tablo_sms_ayarlariusername: TStringField
      FieldName = 'username'
      Size = 25
    end
    object tablo_sms_ayarlarisifre: TStringField
      FieldName = 'sifre'
      Size = 25
    end
    object tablo_sms_ayarlarikanal: TStringField
      FieldName = 'kanal'
      Size = 25
    end
    object tablo_sms_ayarlarioriginator: TStringField
      FieldName = 'originator'
      Size = 11
    end
  end
  object ara_sms_ayarlari: TDataSource
    DataSet = tablo_sms_ayarlari
    Left = 148
    Top = 8
  end
  object sc_text: TcxEditStyleController
    StyleFocused.Color = 11075583
    Left = 16
    Top = 32
  end
  object tablo_oku: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 80
    Top = 26
  end
end
