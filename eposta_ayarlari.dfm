object fr_eposta_ayarlari: Tfr_eposta_ayarlari
  Left = 492
  Top = 284
  Width = 287
  Height = 148
  Caption = 'Eposta Ayarlar'#305
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
    Top = 79
    Width = 279
    Height = 35
    DataSource = ara_eposta_ayarlari
    VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alBottom
    TabOrder = 0
  end
  object tx_username: TcxDBTextEdit
    Left = 72
    Top = 8
    Width = 125
    Height = 21
    DataBinding.DataField = 'smtp_kullanici'
    DataBinding.DataSource = ara_eposta_ayarlari
    Properties.MaxLength = 25
    Style.StyleController = sc_text
    TabOrder = 1
  end
  object tx_sifre: TcxDBTextEdit
    Left = 72
    Top = 32
    Width = 125
    Height = 21
    DataBinding.DataField = 'smtp_sifre'
    DataBinding.DataSource = ara_eposta_ayarlari
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 25
    Style.StyleController = sc_text
    TabOrder = 2
  end
  object cxLabel2: TcxLabel
    Left = 0
    Top = 32
    Width = 69
    Height = 21
    AutoSize = False
    Caption = #350'ifre'
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 8
    Width = 70
    Height = 20
    AutoSize = False
    Caption = 'Kullan'#305'c'#305' Ad'#305
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object cxLabel5: TcxLabel
    Left = 0
    Top = 56
    Width = 71
    Height = 21
    AutoSize = False
    Caption = 'SMTP Server'
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
  end
  object tx_smtp: TcxDBTextEdit
    Left = 72
    Top = 56
    Width = 205
    Height = 21
    DataBinding.DataField = 'smtp'
    DataBinding.DataSource = ara_eposta_ayarlari
    Properties.MaxLength = 100
    Style.StyleController = sc_text
    TabOrder = 6
  end
  object tablo_eposta_ayarlari: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select smtp,smtp_kullanici,smtp_sifre from ayarlar')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 164
    Top = 8
    object tablo_eposta_ayarlarikanal: TStringField
      FieldName = 'smtp'
      Size = 25
    end
    object tablo_eposta_ayarlariusername: TStringField
      FieldName = 'smtp_kullanici'
      Size = 25
    end
    object tablo_eposta_ayarlarisifre: TStringField
      FieldName = 'smtp_sifre'
      Size = 25
    end
  end
  object sc_text: TcxEditStyleController
    StyleFocused.Color = 11075583
    Left = 12
    Top = 12
  end
  object ara_eposta_ayarlari: TDataSource
    DataSet = tablo_eposta_ayarlari
    Left = 212
    Top = 8
  end
end
