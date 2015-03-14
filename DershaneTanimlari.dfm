object FrDershaneTanimlari: TFrDershaneTanimlari
  Left = 255
  Top = 209
  Width = 440
  Height = 310
  BorderStyle = bsSizeToolWin
  Caption = 'Dershane Tan'#305'mlar'#305
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
  object Label1: TLabel
    Left = -1
    Top = 4
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'K'#305'sa Ad'#305
  end
  object Label2: TLabel
    Left = 0
    Top = 28
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Resmi Ad'#305
  end
  object Label3: TLabel
    Left = 0
    Top = 100
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Adresi'
  end
  object Label4: TLabel
    Left = 0
    Top = 52
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Telefon'
  end
  object Label5: TLabel
    Left = 0
    Top = 76
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Faks'
  end
  object Label6: TLabel
    Left = 0
    Top = 172
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Web Adresi'
  end
  object Label7: TLabel
    Left = 0
    Top = 196
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Mail Adresi'
  end
  object Label8: TLabel
    Left = 0
    Top = 220
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'M'#252'd'#252'r'#252
  end
  object Label9: TLabel
    Left = 271
    Top = 40
    Width = 84
    Height = 13
    Alignment = taCenter
    Caption = 'Dershane Logosu'
  end
  object Label10: TLabel
    Left = 270
    Top = 176
    Width = 161
    Height = 17
    AutoSize = False
    Caption = 'Y'#252'kseklik / Geni'#351'lik, 3/4 olmal'#305'd'#305'r.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label11: TLabel
    Left = 0
    Top = 148
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #304'li'
  end
  object dn_sms_ayarlari: TDBNavigator
    Left = 0
    Top = 241
    Width = 432
    Height = 35
    DataSource = DsDershaneAyarlari
    VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alBottom
    TabOrder = 0
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 62
    Top = 0
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_adi_kisa'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 1
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 62
    Top = 24
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_adi_resmi'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 2
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 62
    Top = 48
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_tel'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 3
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 62
    Top = 72
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_faks'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 4
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 62
    Top = 168
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_web'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 5
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 62
    Top = 192
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_mail'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 6
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 62
    Top = 216
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_mudur'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 7
  end
  object cxDBImage1: TcxDBImage
    Left = 270
    Top = 56
    Width = 160
    Height = 120
    DataBinding.DataField = 'dershane_logo'
    DataBinding.DataSource = DsDershaneAyarlari
    Properties.Stretch = True
    TabOrder = 8
  end
  object cxDBMemo1: TcxDBMemo
    Left = 62
    Top = 97
    Width = 201
    Height = 42
    DataBinding.DataField = 'dershane_adresi'
    DataBinding.DataSource = DsDershaneAyarlari
    TabOrder = 9
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 62
    Top = 144
    Width = 201
    Height = 21
    DataBinding.DataField = 'dershane_il'
    DataBinding.DataSource = DsDershaneAyarlari
    Style.StyleController = sc_text
    TabOrder = 10
    OnKeyPress = cxDBTextEdit3KeyPress
  end
  object TbDershaneAyarlari: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterPost = TbDershaneAyarlariAfterPost
    RequestLive = True
    SQL.Strings = (
      
        'select dershane_adi_kisa, dershane_adi_resmi, dershane_adresi, d' +
        'ershane_il, dershane_tel, dershane_faks, dershane_web, dershane_' +
        'mail, dershane_logo, dershane_mudur from ayarlar')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 254
    Top = 72
    object TbDershaneAyarlaridershane_adi_kisa: TStringField
      FieldName = 'dershane_adi_kisa'
      Size = 25
    end
    object TbDershaneAyarlaridershane_adi_resmi: TStringField
      FieldName = 'dershane_adi_resmi'
      Size = 50
    end
    object TbDershaneAyarlaridershane_adresi: TStringField
      FieldName = 'dershane_adresi'
      Size = 100
    end
    object TbDershaneAyarlaridershane_il: TStringField
      FieldName = 'dershane_il'
      Size = 15
    end
    object TbDershaneAyarlaridershane_tel: TStringField
      FieldName = 'dershane_tel'
      Size = 15
    end
    object TbDershaneAyarlaridershane_faks: TStringField
      FieldName = 'dershane_faks'
      Size = 15
    end
    object TbDershaneAyarlaridershane_web: TStringField
      FieldName = 'dershane_web'
      Size = 50
    end
    object TbDershaneAyarlaridershane_mail: TStringField
      FieldName = 'dershane_mail'
      Size = 50
    end
    object TbDershaneAyarlaridershane_logo: TBlobField
      FieldName = 'dershane_logo'
    end
    object TbDershaneAyarlaridershane_mudur: TStringField
      FieldName = 'dershane_mudur'
      Size = 30
    end
  end
  object sc_text: TcxEditStyleController
    StyleFocused.Color = 11075583
    Left = 302
    Top = 104
  end
  object DsDershaneAyarlari: TDataSource
    DataSet = TbDershaneAyarlari
    Left = 258
    Top = 24
  end
end
