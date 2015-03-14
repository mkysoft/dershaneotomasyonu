object fr_veliler: Tfr_veliler
  Left = 292
  Top = 207
  Width = 671
  Height = 403
  Caption = 'Veliler / Telefon Rehberi'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 416
    Top = 0
    Width = 247
    Height = 369
    Align = alRight
    Caption = ' Bilgileri '
    TabOrder = 1
    object tx_veli_soyadi: TcxDBTextEdit
      Left = 76
      Top = 32
      Width = 165
      Height = 21
      DataBinding.DataField = 'veli_soyadi'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 15
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 1
      OnKeyPress = tx_veli_soyadiKeyPress
    end
    object tx_adresi: TcxDBMemo
      Left = 76
      Top = 56
      Width = 165
      Height = 45
      DataBinding.DataField = 'adresi'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 99
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 2
      OnKeyPress = tx_adresiKeyPress
    end
    object tx_veli_ilcesi: TcxDBTextEdit
      Left = 37
      Top = 104
      Width = 88
      Height = 21
      DataBinding.DataField = 'adres_ilcesi'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 15
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 3
      OnKeyPress = tx_veli_adiKeyPress
    end
    object tx_veli_ili: TcxDBTextEdit
      Left = 144
      Top = 104
      Width = 97
      Height = 21
      DataBinding.DataField = 'adres_ili'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 15
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 4
      OnKeyPress = tx_veli_iliKeyPress
    end
    object tx_posta_kodu: TcxDBTextEdit
      Left = 144
      Top = 128
      Width = 97
      Height = 21
      DataBinding.DataField = 'posta_kodu'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 5
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 5
      OnKeyPress = tx_posta_koduKeyPress
    end
    object tx_email: TcxDBTextEdit
      Left = 116
      Top = 152
      Width = 125
      Height = 21
      DataBinding.DataField = 'email'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 255
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 6
      OnKeyPress = tx_emailKeyPress
    end
    object tx_meslegi: TcxDBComboBox
      Left = 116
      Top = 176
      Width = 125
      Height = 21
      DataBinding.DataField = 'meslegi'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 20
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 7
      OnKeyPress = tx_meslegiKeyPress
    end
    object tx_calistigi_yer: TcxDBTextEdit
      Left = 64
      Top = 200
      Width = 177
      Height = 21
      DataBinding.DataField = 'calistigi_yer'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 25
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 8
      OnKeyPress = tx_veli_adiKeyPress
    end
    object tx_gsm: TcxDBMaskEdit
      Left = 36
      Top = 248
      Width = 85
      Height = 21
      DataBinding.DataField = 'gsm'
      DataBinding.DataSource = ara_veliler
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(999\) 000 00 00;1;_'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 11
      OnKeyPress = tx_gsmKeyPress
    end
    object tx_fax: TcxDBMaskEdit
      Left = 156
      Top = 248
      Width = 85
      Height = 21
      DataBinding.DataField = 'fax'
      DataBinding.DataSource = ara_veliler
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(999\) 000 00 00;1;_'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 12
      OnKeyPress = tx_faxKeyPress
    end
    object Label27: TcxLabel
      Left = 124
      Top = 250
      Width = 27
      Height = 17
      Caption = 'Faks'
    end
    object Label25: TcxLabel
      Left = 4
      Top = 250
      Width = 28
      Height = 17
      Caption = 'GSM'
    end
    object Label30: TcxLabel
      Left = 3
      Top = 202
      Width = 58
      Height = 17
      Caption = #199'al'#305#351't'#305#287#305' Yer'
    end
    object Label29: TcxLabel
      Left = 71
      Top = 178
      Width = 40
      Height = 17
      Caption = 'Mesle'#287'i'
    end
    object Label23: TcxLabel
      Left = 80
      Top = 130
      Width = 59
      Height = 17
      Caption = 'Posta Kodu'
    end
    object Label28: TcxLabel
      Left = 84
      Top = 154
      Width = 29
      Height = 17
      Caption = 'Email'
    end
    object Label21: TcxLabel
      Left = 131
      Top = 106
      Width = 11
      Height = 17
      Caption = #304'li'
    end
    object Label22: TcxLabel
      Left = 7
      Top = 107
      Width = 28
      Height = 17
      Caption = #304'l'#231'esi'
    end
    object Label20: TcxLabel
      Left = 38
      Top = 57
      Width = 33
      Height = 17
      Caption = 'Adresi'
    end
    object Label19: TcxLabel
      Left = 36
      Top = 34
      Width = 36
      Height = 17
      Caption = 'Soyad'#305
    end
    object Label18: TcxLabel
      Left = 52
      Top = 10
      Width = 19
      Height = 17
      Caption = 'Ad'#305
    end
    object GroupBox9: TGroupBox
      Left = 2
      Top = 272
      Width = 243
      Height = 33
      Caption = ' Bildirim Se'#231'enekleri '
      TabOrder = 13
      object ck_bsms: TcxDBCheckBox
        Left = 12
        Top = 12
        Width = 49
        Height = 21
        Caption = 'SMS'
        DataBinding.DataField = 'sms_bildirim'
        DataBinding.DataSource = ara_veliler
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = False
        Properties.ValueChecked = 'Evet'
        Properties.ValueUnchecked = 'Hay'#305'r'
        Style.TransparentBorder = True
        TabOrder = 0
      end
      object ck_bemail: TcxDBCheckBox
        Left = 88
        Top = 12
        Width = 65
        Height = 21
        Caption = 'em@il'
        DataBinding.DataField = 'email_bildirim'
        DataBinding.DataSource = ara_veliler
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = False
        Properties.ValueChecked = 'Evet'
        Properties.ValueUnchecked = 'Hay'#305'r'
        Style.TransparentBorder = True
        TabOrder = 1
      end
      object ck_bfax: TcxDBCheckBox
        Left = 164
        Top = 12
        Width = 49
        Height = 21
        Caption = 'Faks'
        DataBinding.DataField = 'fax_bildirim'
        DataBinding.DataSource = ara_veliler
        Properties.DisplayUnchecked = 'False'
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = False
        Properties.ValueChecked = 'Evet'
        Properties.ValueUnchecked = 'Hay'#305'r'
        Style.TransparentBorder = True
        TabOrder = 2
      end
    end
    object Label24: TcxLabel
      Left = 6
      Top = 227
      Width = 30
      Height = 17
      Caption = 'Ev T.'
    end
    object tx_ev_telefonu: TcxDBMaskEdit
      Left = 36
      Top = 224
      Width = 85
      Height = 21
      DataBinding.DataField = 'ev_telefonu'
      DataBinding.DataSource = ara_veliler
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(999\) 000 00 00;1;_'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 9
      OnKeyPress = tx_ev_telefonuKeyPress
    end
    object tx_is_telefonu: TcxDBMaskEdit
      Left = 156
      Top = 224
      Width = 85
      Height = 21
      DataBinding.DataField = 'is_telefonu'
      DataBinding.DataSource = ara_veliler
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(999\) 000 00 00;1;_'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 10
      OnKeyPress = tx_is_telefonuKeyPress
    end
    object Label26: TcxLabel
      Left = 127
      Top = 226
      Width = 25
      Height = 17
      Caption = #304#351' T.'
    end
    object tx_veli_adi: TcxDBTextEdit
      Left = 76
      Top = 8
      Width = 165
      Height = 21
      DataBinding.DataField = 'veli_adi'
      DataBinding.DataSource = ara_veliler
      Properties.MaxLength = 25
      Properties.ReadOnly = False
      Style.StyleController = sc_text
      TabOrder = 0
      OnKeyPress = tx_veli_adiKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 304
      Width = 242
      Height = 37
      Caption = ' Veli Gruplar'#305' '
      TabOrder = 14
      object tx_vgrup1: TcxDBComboBox
        Left = 2
        Top = 12
        Width = 79
        Height = 21
        DataBinding.DataField = 'vgrup1'
        DataBinding.DataSource = ara_veliler
        Properties.MaxLength = 20
        Properties.ReadOnly = False
        Style.StyleController = sc_text
        TabOrder = 0
        OnKeyPress = tx_vgrup1KeyPress
      end
      object tx_vgrup2: TcxDBComboBox
        Left = 81
        Top = 12
        Width = 79
        Height = 21
        DataBinding.DataField = 'vgrup2'
        DataBinding.DataSource = ara_veliler
        Properties.MaxLength = 20
        Properties.ReadOnly = False
        Style.StyleController = sc_text
        TabOrder = 1
        OnKeyPress = tx_vgrup2KeyPress
      end
      object tx_vgrup3: TcxDBComboBox
        Left = 160
        Top = 12
        Width = 79
        Height = 21
        DataBinding.DataField = 'vgrup3'
        DataBinding.DataSource = ara_veliler
        Properties.MaxLength = 20
        Properties.ReadOnly = False
        Style.StyleController = sc_text
        TabOrder = 2
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 341
      Width = 243
      Height = 26
      DataSource = ara_veliler
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 15
    end
  end
  object gr_veliler: TcxGrid
    Left = 0
    Top = 0
    Width = 416
    Height = 369
    Align = alClient
    TabOrder = 0
    object veliler: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ara_veliler
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object velilerveli_adi: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'veli_adi'
        Options.Filtering = False
        Width = 89
      end
      object velilerveli_soyadi: TcxGridDBColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'veli_soyadi'
      end
      object velilervgrup1: TcxGridDBColumn
        Caption = 'V.Grup 1'
        DataBinding.FieldName = 'vgrup1'
        Width = 70
      end
      object velilervgrup2: TcxGridDBColumn
        Caption = 'V.Grup 2'
        DataBinding.FieldName = 'vgrup2'
        Width = 67
      end
      object velilervgrup3: TcxGridDBColumn
        Caption = 'V.Grup 3'
        DataBinding.FieldName = 'vgrup3'
      end
      object velilerveli_kodu: TcxGridDBColumn
        Caption = 'V.Kodu'
        DataBinding.FieldName = 'veli_kodu'
        Options.Filtering = False
        Options.Grouping = False
        Width = 42
      end
    end
    object gr_velilerLevel1: TcxGridLevel
      GridView = veliler
    end
  end
  object tablo_veliler: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    AfterInsert = tablo_velilerAfterInsert
    AfterEdit = tablo_velilerAfterEdit
    BeforeDelete = tablo_velilerBeforeDelete
    RequestLive = True
    SQL.Strings = (
      'select * from veliler order by veli_adi,veli_soyadi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 48
    Top = 76
    object tablo_velilerveli_kodu: TIntegerField
      FieldName = 'veli_kodu'
    end
    object tablo_velilerveli_adi: TStringField
      FieldName = 'veli_adi'
      Required = True
      Size = 25
    end
    object tablo_velilerveli_soyadi: TStringField
      FieldName = 'veli_soyadi'
      Required = True
      Size = 15
    end
    object tablo_velileradresi: TStringField
      FieldName = 'adresi'
      Size = 99
    end
    object tablo_velileradres_ili: TStringField
      FieldName = 'adres_ili'
      Required = True
      Size = 15
    end
    object tablo_velileradres_ilcesi: TStringField
      FieldName = 'adres_ilcesi'
      Required = True
      Size = 15
    end
    object tablo_velilerposta_kodu: TStringField
      FieldName = 'posta_kodu'
      Size = 5
    end
    object tablo_velilerev_telefonu: TStringField
      FieldName = 'ev_telefonu'
      Size = 15
    end
    object tablo_velilergsm: TStringField
      FieldName = 'gsm'
      Size = 15
    end
    object tablo_velilersms_bildirim: TStringField
      FieldName = 'sms_bildirim'
      Required = True
      Size = 5
    end
    object tablo_velileris_telefonu: TStringField
      FieldName = 'is_telefonu'
      Size = 15
    end
    object tablo_velilerfax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object tablo_velilerfax_bildirim: TStringField
      FieldName = 'fax_bildirim'
      Required = True
      Size = 5
    end
    object tablo_velileremail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object tablo_velileremail_bildirim: TStringField
      FieldName = 'email_bildirim'
      Required = True
      Size = 5
    end
    object tablo_velilermeslegi: TStringField
      FieldName = 'meslegi'
    end
    object tablo_velilercalistigi_yer: TStringField
      FieldName = 'calistigi_yer'
      Size = 25
    end
    object tablo_velilervgrup1: TStringField
      FieldName = 'vgrup1'
      Size = 15
    end
    object tablo_velilervgrup2: TStringField
      FieldName = 'vgrup2'
      Size = 15
    end
    object tablo_velilervgrup3: TStringField
      FieldName = 'vgrup3'
      Size = 15
    end
  end
  object ara_veliler: TDataSource
    DataSet = tablo_veliler
    Left = 40
    Top = 196
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 68
    Top = 132
  end
  object sc_text: TcxEditStyleController
    StyleFocused.Color = 11075583
    Left = 212
    Top = 108
  end
end
