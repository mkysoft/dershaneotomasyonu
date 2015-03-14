object fr_devamsizlik_listesi: Tfr_devamsizlik_listesi
  Left = 230
  Top = 218
  Width = 748
  Height = 440
  Caption = 'Devams'#305'zl'#305'k Listesi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object gr_devamsizlik: TcxGrid
    Left = 0
    Top = 97
    Width = 740
    Height = 309
    Align = alClient
    TabOrder = 0
    object devamsizlik: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Visible = False
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = ara_devamsizlik
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.GroupRowSizing = True
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object devamsizlikdonemi: TcxGridDBColumn
        Caption = 'D'#246'nemi'
        DataBinding.FieldName = 'donemi'
        Options.Editing = False
        Width = 61
      end
      object devamsizlikogr_no: TcxGridDBColumn
        Caption = #214#287'renci No'
        DataBinding.FieldName = 'ogr_no'
        Options.Editing = False
        Width = 80
      end
      object devamsizlikadi: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'adi'
        Options.Editing = False
        Width = 81
      end
      object devamsizliksoyadi: TcxGridDBColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'soyadi'
        Options.Editing = False
        Width = 84
      end
      object devamsizliksinifi: TcxGridDBColumn
        Caption = 'S'#305'n'#305'f'#305
        DataBinding.FieldName = 'sinifi'
      end
      object devamsizlikveli_adi: TcxGridDBColumn
        Caption = 'Veli Ad'#305
        DataBinding.FieldName = 'veli_adi'
        Options.Editing = False
        Width = 84
      end
      object devamsizlikveli_soyadi: TcxGridDBColumn
        Caption = 'Veli Soyadi'
        DataBinding.FieldName = 'veli_soyadi'
        Options.Editing = False
        Width = 84
      end
      object devamsizlikev_telefonu: TcxGridDBColumn
        Caption = 'Ev Telefonu'
        DataBinding.FieldName = 'ev_telefonu'
        Options.Editing = False
        Width = 82
      end
      object devamsizlikis_telefonu: TcxGridDBColumn
        Caption = #304#351' Telefonu'
        DataBinding.FieldName = 'is_telefonu'
        Options.Editing = False
        Width = 81
      end
      object devamsizlikgsm: TcxGridDBColumn
        Caption = 'Cep Telefonu'
        DataBinding.FieldName = 'gsm'
        Options.Editing = False
        Width = 96
      end
      object devamsizliktarih: TcxGridDBColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'tarih'
        Options.Editing = False
      end
      object devamsizlikders_1: TcxGridDBColumn
        Caption = 'Ders 1'
        DataBinding.FieldName = 'ders_1'
        Options.Filtering = False
        Width = 53
      end
      object devamsizlikders_2: TcxGridDBColumn
        Caption = 'Ders 2'
        DataBinding.FieldName = 'ders_2'
        Options.Filtering = False
        Width = 53
      end
      object devamsizlikders_3: TcxGridDBColumn
        Caption = 'Ders 3'
        DataBinding.FieldName = 'ders_3'
        Options.Filtering = False
        Width = 53
      end
      object devamsizlikders_4: TcxGridDBColumn
        Caption = 'Ders 4'
        DataBinding.FieldName = 'ders_4'
        Options.Filtering = False
        Width = 53
      end
      object devamsizlikders_5: TcxGridDBColumn
        Caption = 'Ders 5'
        DataBinding.FieldName = 'ders_5'
        Options.Filtering = False
        Width = 55
      end
      object devamsizlikders_6: TcxGridDBColumn
        Caption = 'Ders 6'
        DataBinding.FieldName = 'ders_6'
        Options.Filtering = False
        Width = 55
      end
      object devamsizlikders_7: TcxGridDBColumn
        Caption = 'Ders 7'
        DataBinding.FieldName = 'ders_7'
        Options.Filtering = False
        Width = 53
      end
      object devamsizlikders_8: TcxGridDBColumn
        Caption = 'Ders 8'
        DataBinding.FieldName = 'ders_8'
        Options.Filtering = False
        Width = 53
      end
      object devamsizlikders_9: TcxGridDBColumn
        Caption = 'Ders 9'
        DataBinding.FieldName = 'ders_9'
        Options.Filtering = False
        Width = 53
      end
      object devamsizlikders_10: TcxGridDBColumn
        Caption = 'Ders 10'
        DataBinding.FieldName = 'ders_10'
        Options.Filtering = False
        Width = 59
      end
      object devamsizlikkiminle_gorusuldu: TcxGridDBColumn
        Caption = 'Kiminle G'#246'r'#252#351#252'ld'#252
        DataBinding.FieldName = 'kiminle_gorusuldu'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Annesi'
          'Babas'#305
          'Karde'#351'i'
          'Abisi'
          'Ablas'#305)
      end
      object devamsizlikaciklama: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Bilgilendirildi.'
          'Bilgisi var.'
          #304'leti'#351'im bilgileri yanl'#305#351'.'
          'Rahats'#305'zlanm'#305#351'.'
          'Ula'#351#305'lamad'#305'.')
        Properties.ReadOnly = False
        Width = 186
      end
      object devamsizlikbildirim_tarihi: TcxGridDBColumn
        Caption = 'Bildirim Tarihi'
        DataBinding.FieldName = 'bildirim_tarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = False
      end
      object devamsizlikkullanici: TcxGridDBColumn
        Caption = 'Kullan'#305'c'#305
        DataBinding.FieldName = 'kullanici'
        Options.Editing = False
        Width = 96
      end
      object devamsizlikid: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'id'
        Options.Editing = False
        Options.Filtering = False
        Width = 31
      end
      object devamsizliksms_bildirim: TcxGridDBColumn
        Caption = 'SMS Bildirim'
        DataBinding.FieldName = 'sms_bildirim'
        Visible = False
        Options.Editing = False
      end
      object devamsizlikemail_bildirim: TcxGridDBColumn
        Caption = 'Email Bildirim'
        DataBinding.FieldName = 'email_bildirim'
        Visible = False
        Options.Editing = False
      end
      object devamsizlikfax_bildirim: TcxGridDBColumn
        Caption = 'Faks Bildirim'
        DataBinding.FieldName = 'fax_bildirim'
        Visible = False
        Options.Editing = False
      end
    end
    object level1: TcxGridLevel
      Caption = 'Devams'#305'zl'#305'k Listesi'
      GridView = devamsizlik
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Width = 643
      Height = 97
      Align = alClient
      Caption = ' Devams'#305'zl'#305'k Listeleme Se'#231'enekleri '
      TabOrder = 0
      object Label7: TLabel
        Left = 4
        Top = 16
        Width = 73
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
      object Label1: TLabel
        Left = 84
        Top = 16
        Width = 81
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = #214#287'renci No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 168
        Top = 16
        Width = 77
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tarih'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 324
        Top = 16
        Width = 81
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'#231#305'klama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 252
        Top = 16
        Width = 69
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ders'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 408
        Top = 16
        Width = 77
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Bildirim Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 492
        Top = 16
        Width = 85
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Kullan'#305'c'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cm_don_kis: TcxComboBox
        Left = 4
        Top = 32
        Width = 77
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252)
        TabOrder = 0
        Text = 'T'#252'm'#252
      end
      object cm_ogr_kis: TcxComboBox
        Left = 84
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          'B'#252'y'#252'k'
          'K'#252#231#252'k'
          'Aras'#305'nda')
        Properties.ReadOnly = False
        Properties.OnChange = cm_ogr_kisPropertiesChange
        TabOrder = 1
        Text = 'T'#252'm'#252
      end
      object cxLabel1: TcxLabel
        Left = 32
        Top = 52
        Width = 50
        Height = 17
        Caption = 'Ba'#351'lang'#305#231
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object cxLabel3: TcxLabel
        Left = 56
        Top = 72
        Width = 23
        Height = 17
        Caption = 'Biti'#351
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object tx_ogr_bit: TcxTextEdit
        Left = 84
        Top = 72
        Width = 49
        Height = 21
        Enabled = False
        Properties.MaxLength = 4
        TabOrder = 4
      end
      object tx_ogr_bas: TcxTextEdit
        Left = 84
        Top = 52
        Width = 49
        Height = 21
        Enabled = False
        Properties.MaxLength = 4
        TabOrder = 5
      end
      object bt_bas_bul: TBitBtn
        Left = 136
        Top = 53
        Width = 29
        Height = 19
        Caption = 'Bul'
        TabOrder = 6
        OnClick = bt_bas_bulClick
        Style = bsNew
      end
      object bt_bit_bul: TBitBtn
        Left = 136
        Top = 73
        Width = 29
        Height = 19
        Caption = 'Bul'
        TabOrder = 7
        OnClick = bt_bas_bulClick
        Style = bsNew
      end
      object cm_tar_kis: TcxComboBox
        Left = 168
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          'B'#252'y'#252'k'
          'K'#252#231#252'k'
          'Aras'#305'nda')
        Properties.OnChange = cm_tar_kisPropertiesChange
        TabOrder = 8
        Text = 'T'#252'm'#252
      end
      object tx_tar_bas: TcxDateEdit
        Left = 168
        Top = 52
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 9
      end
      object tx_tar_bit: TcxDateEdit
        Left = 168
        Top = 72
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 10
      end
      object cm_aci_kis: TcxComboBox
        Left = 324
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          #304#231'eren')
        Properties.OnChange = cm_aci_kisPropertiesChange
        TabOrder = 11
        Text = 'T'#252'm'#252
      end
      object tx_aci_bas: TcxTextEdit
        Left = 324
        Top = 52
        Width = 81
        Height = 21
        AutoSize = False
        Enabled = False
        Properties.MaxLength = 255
        TabOrder = 12
      end
      object bt_goster: TBitBtn
        Left = 580
        Top = 31
        Width = 57
        Height = 29
        Caption = 'G'#246'ster'
        TabOrder = 13
        OnClick = bt_gosterClick
      end
      object bt_Sifirla: TBitBtn
        Left = 580
        Top = 64
        Width = 57
        Height = 29
        Caption = 'S'#305'f'#305'rla'
        TabOrder = 14
        OnClick = bt_SifirlaClick
      end
      object cm_ders_kis: TcxComboBox
        Left = 252
        Top = 32
        Width = 69
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          #304#231'eren')
        Properties.OnChange = cm_ders_kisPropertiesChange
        TabOrder = 15
        Text = 'T'#252'm'#252
      end
      object tx_ders_bas: TcxTextEdit
        Left = 252
        Top = 52
        Width = 69
        Height = 21
        AutoSize = False
        Enabled = False
        Properties.MaxLength = 255
        TabOrder = 16
      end
      object cm_bil_kis: TcxComboBox
        Left = 408
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          'B'#252'y'#252'k'
          'K'#252#231#252'k'
          'Aras'#305'nda')
        Properties.OnChange = cm_bil_kisPropertiesChange
        TabOrder = 17
        Text = 'T'#252'm'#252
      end
      object tx_bil_bas: TcxDateEdit
        Left = 408
        Top = 52
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 18
      end
      object tx_bil_bit: TcxDateEdit
        Left = 408
        Top = 72
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 19
      end
      object cm_kul_kis: TcxComboBox
        Left = 492
        Top = 32
        Width = 85
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          #304#231'eren')
        Properties.OnChange = cm_kul_kisPropertiesChange
        TabOrder = 20
        Text = 'T'#252'm'#252
      end
      object tx_kul_bas: TcxTextEdit
        Left = 492
        Top = 52
        Width = 85
        Height = 21
        AutoSize = False
        Enabled = False
        Properties.MaxLength = 255
        TabOrder = 21
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 643
      Top = 0
      Width = 97
      Height = 97
      Align = alRight
      Caption = ' '#199#305'kt'#305' Se'#231'enekleri '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      TabOrder = 1
      object bt_tablo: TBitBtn
        Left = 4
        Top = 20
        Width = 89
        Height = 33
        Caption = 'Tablo >>'
        TabOrder = 0
        OnClick = bt_tabloClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000320B0000320B00000001000000010000CE630000D66B
          0000D6730000DE7B0000D6731000D67B2100CE636300E7A563009C9C9C00FF9C
          9C00FFEFD600FFF7EF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000000
          0C0C0C0C000D0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A000C0C0C0C000D0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B060B0B06060B06060B
          06060B06060B0A000C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A00
          0C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B06
          0B0B09090B09090B09090B09090B0A000C0C0C0C000D0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0A000C0C0C0C000D0B060B0B09090B09090B09090B09090B0A00
          0C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B06
          0B0B09090B09090B09090B09090B0A000C0C0C0C000D0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0A000C0C0C0C000D0B08080808080808080808080808080B0A00
          0C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B0B
          0B0B09090B09090B09090B09090B0A000C0C0C0C010D0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0A000C0C0C0C010D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0A00
          0C0C0C0C02030303030303030303030303030303030303000C0C0C0C00000000
          000000000000000000000000000000070C0C0C0C0C0404040404040404040404
          040404040404050C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C}
      end
      object bt_bildirim: TBitBtn
        Left = 4
        Top = 60
        Width = 89
        Height = 33
        Caption = 'Bildirim >>'
        TabOrder = 1
        OnClick = bt_bildirimClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000130F0000130F00000001000000010000392918003131
          310021214A007B5A4A007363520018425A00846B5A000842630021526B005263
          6B0029637B00847B7B0084847B008C847B009C948C004A6B9C009C9C9C00B5B5
          B500E7CEB5003139BD008CB5C60010A5D60029ADD600D6D6D60042A5DE00DEDE
          DE000010E700F7EFE700299CEF002973F70073DEF70042E7F700FF00FF008CEF
          FF008CF7FF009CFFFF00ADFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020161616161616161616161616161616161616161616
          20202016222222221E1E1E1E1E1E1E1E1E16161E1E1E1E162020201622222221
          211E1E1E1E1E1E1E1E1624161E1E1E1620202016222222222221211E1E1E1E1E
          1E162424161E1E162020201622222222222121211E1E1E1E1E16242422161E16
          202020162323222222222121211E1E1E1E162222222216162020201623231910
          10100B010311211E1E16161616161616202020162323232222222203000A091E
          1E1E1E1E1E1E1E1620202016232323232322221714221D081E1E1E1E1E1E1E16
          20202016232323232323222215221D1D0721211E1E1E1E162020201623231910
          10100B0B0B151F1D1D080B0B0B0B1E162020201623232323232323232222151F
          1D1D0521211E1E16202020162323232323232323232222151F1D1D0821211E16
          20202016232323232323232323222222151F1D1D072121162020201616161616
          161616161616161616151F1D1301161620202020202020202020202020202020
          202015180D0C01202020202020202020202020202020202020202006251B0402
          20202020202020202020202020202020202020200E120A1D1320202020202020
          202020202020202020202020200F1C1D13202020202020202020202020202020
          2020202020201A1A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020}
      end
    end
  end
  object ara_devamsizlik: TDataSource
    DataSet = tablo_devamsizlik
    Enabled = False
    Left = 240
    Top = 272
  end
  object mn_devamsizlik: TcxGridPopupMenu
    Grid = gr_devamsizlik
    PopupMenus = <>
    Left = 304
    Top = 204
  end
  object ogr_veli_bilgileri: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'select o.donemi,o.ogr_no,o.adi,o.soyadi,o.sinifi,veli_adi,veli_s' +
        'oyadi,v.is_telefonu,v.ev_telefonu,v.gsm,sms_bildirim,email_bildi' +
        'rim,fax_bildirim from ogrenciler o left join veliler v on o.veli' +
        '_kodu=v.veli_kodu order by donemi,ogr_no')
    ParamCheck = True
    Params = <>
    MasterFields = 'donemi;ogr_no'
    MasterSource = ara_devamsizlik
    Options = [doCalcDefaults]
    Left = 428
    Top = 232
    object ogr_veli_bilgileridonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object ogr_veli_bilgileriogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object ogr_veli_bilgileriadi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object ogr_veli_bilgilerisoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object ogr_veli_bilgilerisinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object ogr_veli_bilgileriveli_adi: TStringField
      FieldName = 'veli_adi'
      Required = True
      Size = 25
    end
    object ogr_veli_bilgileriveli_soyadi: TStringField
      FieldName = 'veli_soyadi'
      Required = True
      Size = 15
    end
    object ogr_veli_bilgileriis_telefonu: TStringField
      FieldName = 'is_telefonu'
      Size = 15
    end
    object ogr_veli_bilgileriev_telefonu: TStringField
      FieldName = 'ev_telefonu'
      Size = 15
    end
    object ogr_veli_bilgilerigsm: TStringField
      FieldName = 'gsm'
      Size = 15
    end
    object ogr_veli_bilgilerisms_bildirim: TStringField
      FieldName = 'sms_bildirim'
      Required = True
      Size = 5
    end
    object ogr_veli_bilgileriemail_bildirim: TStringField
      FieldName = 'email_bildirim'
      Required = True
      Size = 5
    end
    object ogr_veli_bilgilerifax_bildirim: TStringField
      FieldName = 'fax_bildirim'
      Required = True
      Size = 5
    end
  end
  object tablo_devamsizlik: TZQuery
    Connection = veriler.data_dershane
    AutoCalcFields = False
    OnCalcFields = tablo_devamsizlikCalcFields
    OnFilterRecord = tablo_devamsizlikFilterRecord
    CachedUpdates = False
    AfterEdit = tablo_devamsizlikAfterEdit
    RequestLive = True
    SQL.Strings = (
      'select * from devamsizliklar order by tarih desc,donemi,ogr_no')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 384
    Top = 320
    object tablo_devamsizlikid: TLargeintField
      FieldName = 'id'
    end
    object tablo_devamsizlikdonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_devamsizlikogr_no: TIntegerField
      FieldName = 'ogr_no'
    end
    object tablo_devamsizliktarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_devamsizlikders_1: TStringField
      FieldName = 'ders_1'
      Size = 7
    end
    object tablo_devamsizlikders_2: TStringField
      FieldName = 'ders_2'
      Size = 7
    end
    object tablo_devamsizlikders_3: TStringField
      FieldName = 'ders_3'
      Size = 7
    end
    object tablo_devamsizlikders_4: TStringField
      FieldName = 'ders_4'
      Size = 7
    end
    object tablo_devamsizlikders_5: TStringField
      FieldName = 'ders_5'
      Size = 7
    end
    object tablo_devamsizlikders_6: TStringField
      FieldName = 'ders_6'
      Size = 7
    end
    object tablo_devamsizlikders_7: TStringField
      FieldName = 'ders_7'
      Size = 7
    end
    object tablo_devamsizlikders_8: TStringField
      FieldName = 'ders_8'
      Size = 7
    end
    object tablo_devamsizlikders_9: TStringField
      FieldName = 'ders_9'
      Size = 7
    end
    object tablo_devamsizlikders_10: TStringField
      FieldName = 'ders_10'
      Size = 7
    end
    object tablo_devamsizlikkullanici: TStringField
      FieldName = 'kullanici'
      Size = 16
    end
    object tablo_devamsizlikbildirim_tarihi: TDateTimeField
      FieldName = 'bildirim_tarihi'
    end
    object tablo_devamsizlikkiminle_gorusuldu: TStringField
      FieldName = 'kiminle_gorusuldu'
    end
    object tablo_devamsizlikaciklama: TStringField
      FieldName = 'aciklama'
      Size = 50
    end
    object tablo_devamsizliksinifi: TStringField
      FieldKind = fkCalculated
      FieldName = 'sinifi'
      Size = 7
      Calculated = True
    end
    object tablo_devamsizlikadi: TStringField
      FieldKind = fkCalculated
      FieldName = 'adi'
      Size = 15
      Calculated = True
    end
    object tablo_devamsizliksoyadi: TStringField
      FieldKind = fkCalculated
      FieldName = 'soyadi'
      Size = 7
      Calculated = True
    end
    object tablo_devamsizlikveli_adi: TStringField
      FieldKind = fkCalculated
      FieldName = 'veli_adi'
      Size = 25
      Calculated = True
    end
    object tablo_devamsizlikveli_soyadi: TStringField
      FieldKind = fkCalculated
      FieldName = 'veli_soyadi'
      Size = 15
      Calculated = True
    end
    object tablo_devamsizlikev_telefonu: TStringField
      FieldKind = fkCalculated
      FieldName = 'ev_telefonu'
      Size = 15
      Calculated = True
    end
    object tablo_devamsizlikis_telefonu: TStringField
      FieldKind = fkCalculated
      FieldName = 'is_telefonu'
      Size = 15
      Calculated = True
    end
    object tablo_devamsizlikgsm: TStringField
      FieldKind = fkCalculated
      FieldName = 'gsm'
      Size = 15
      Calculated = True
    end
    object tablo_devamsizliksms_bildirim: TStringField
      FieldKind = fkCalculated
      FieldName = 'sms_bildirim'
      Size = 15
      Calculated = True
    end
    object tablo_devamsizlikemail_bildirim: TStringField
      FieldKind = fkCalculated
      FieldName = 'email_bildirim'
      Size = 15
      Calculated = True
    end
    object tablo_devamsizlikfax_bildirim: TStringField
      FieldKind = fkCalculated
      FieldName = 'fax_bildirim'
      Size = 15
      Calculated = True
    end
  end
  object dosya: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Devams'#305'zl'#305'k Listesi'
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosyaCanClose
    Left = 200
    Top = 188
  end
  object t_zaman: TTimer
    Enabled = False
    OnTimer = t_zamanTimer
    Left = 156
    Top = 272
  end
  object pr_devamsizlik: TdxComponentPrinter
    CurrentLink = pr_devamsizlikLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPageSetup, peoPrint]
    Version = 0
    Left = 552
    Top = 212
    object pr_devamsizlikLink1: TdxGridReportLink
      Component = gr_devamsizlik
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Devams'#305'zl'#305'k Listesi'
      BuiltInReportLink = True
    end
  end
  object mn_tablo: TPopupMenu
    Images = veriler.il_genel
    Left = 520
    Top = 288
    object mn_yazdir: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 2
      OnClick = mn_yazdirClick
    end
    object mn_excel: TMenuItem
      Caption = 'Excel'#39'e Aktar'
      ImageIndex = 3
      OnClick = mn_excelClick
    end
  end
  object mn_bildirim: TPopupMenu
    Images = veriler.il_genel
    Left = 572
    Top = 280
    object mn_sms: TMenuItem
      Caption = 'SMS'
      ImageIndex = 0
      OnClick = mn_smsClick
    end
    object mn_eposta: TMenuItem
      Caption = 'Eposta'
      ImageIndex = 1
    end
    object mn_faks: TMenuItem
      Caption = 'Faks'
      Enabled = False
    end
  end
  object tablo_oku: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = False
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 112
    Top = 228
  end
end
