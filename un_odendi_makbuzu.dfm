object fr_odendi_makbuzu: Tfr_odendi_makbuzu
  Left = 282
  Top = 238
  Width = 660
  Height = 398
  Caption = #214'dendi Makbuzu Yazd'#305'rma'
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
  object gr_gun: TcxGrid
    Left = 0
    Top = 97
    Width = 652
    Height = 230
    Align = alClient
    TabOrder = 0
    object paraakisi: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ara_para_akisi
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = 'Al'#305'nan #,'
          Kind = skSum
          FieldName = 'alinan'
          Column = paraakisialinan
        end
        item
          Format = 'Verilen #,'
          Kind = skSum
          FieldName = 'verilen'
          Column = paraakisiverilen
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.CustomizeDialog = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.DataRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object paraakisiislem_no: TcxGridDBColumn
        Caption = #304#351'lem No'
        DataBinding.FieldName = 'islem_no'
        Width = 49
      end
      object paraakisidonemi: TcxGridDBColumn
        Caption = 'D'#246'nemi'
        DataBinding.FieldName = 'donemi'
        Width = 53
      end
      object paraakisiilgili_no: TcxGridDBColumn
        Caption = #304'lgili No'
        DataBinding.FieldName = 'ilgili_no'
        Width = 56
      end
      object paraakisiadi_soyadi: TcxGridDBColumn
        Caption = 'Ad'#305' Soyad'#305
        DataBinding.FieldName = 'adi_soyadi'
        Width = 119
      end
      object paraakisitarih: TcxGridDBColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'tarih'
        SortIndex = 0
        SortOrder = soAscending
        Width = 54
      end
      object paraakisiilgilihesap: TcxGridDBColumn
        Caption = #304'lgili Hesap'
        DataBinding.FieldName = 'ilgilihesap'
        Width = 97
      end
      object paraakisialinan: TcxGridDBColumn
        Caption = 'Al'#305'nan'
        DataBinding.FieldName = 'alinan'
        Width = 50
      end
      object paraakisiverilen: TcxGridDBColumn
        Caption = 'Verilen'
        DataBinding.FieldName = 'verilen'
        Width = 55
      end
      object paraakisiaciklama: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        Width = 107
      end
      object paraakisiislem_tarihi: TcxGridDBColumn
        DataBinding.FieldName = 'islem_tarihi'
        Visible = False
      end
    end
    object level1: TcxGridLevel
      GridView = paraakisi
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 327
    Width = 652
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bt_yazdir: TBitBtn
      Left = 272
      Top = 4
      Width = 101
      Height = 29
      Caption = 'Makbuz Yazd'#305'r'
      TabOrder = 0
      OnClick = bt_yazdirClick
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Width = 652
    Height = 97
    Align = alTop
    Caption = ' Listeleme Se'#231'enekleri '
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    TabOrder = 2
    object Label1: TLabel
      Left = 84
      Top = 16
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #304'lgili No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 16
      Width = 65
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #304#351'lem No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 236
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
    object Label4: TLabel
      Left = 320
      Top = 16
      Width = 73
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #304'lgili Hesap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 396
      Top = 16
      Width = 97
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
    object Label6: TLabel
      Left = 496
      Top = 16
      Width = 77
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #304#351'lem Tarihi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
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
    object tx_tar_bas: TcxDateEdit
      Left = 236
      Top = 52
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object tx_tar_bit: TcxDateEdit
      Left = 236
      Top = 72
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 1
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
    object cxLabel2: TcxLabel
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
    object tx_ilg_bas: TcxTextEdit
      Left = 84
      Top = 52
      Width = 49
      Height = 21
      Enabled = False
      Properties.MaxLength = 4
      TabOrder = 4
    end
    object tx_ilg_bit: TcxTextEdit
      Left = 84
      Top = 72
      Width = 49
      Height = 21
      Enabled = False
      Properties.MaxLength = 4
      TabOrder = 5
    end
    object cm_ilg_kis: TcxComboBox
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
      Properties.OnChange = cm_ilg_kisPropertiesChange
      TabOrder = 6
      Text = 'T'#252'm'#252
    end
    object cm_isl_kis: TcxComboBox
      Left = 168
      Top = 32
      Width = 65
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'T'#252'm'#252
        'E'#351'it'
        'B'#252'y'#252'k'
        'K'#252#231#252'k'
        'Aras'#305'nda')
      Properties.OnChange = cm_isl_kisPropertiesChange
      TabOrder = 7
      Text = 'T'#252'm'#252
    end
    object tx_isl_bas: TcxTextEdit
      Left = 168
      Top = 52
      Width = 65
      Height = 21
      Enabled = False
      Properties.MaxLength = 4
      TabOrder = 8
    end
    object tx_isl_bit: TcxTextEdit
      Left = 168
      Top = 72
      Width = 65
      Height = 21
      Enabled = False
      Properties.MaxLength = 4
      TabOrder = 9
    end
    object cm_tar_kis: TcxComboBox
      Left = 236
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
      TabOrder = 10
      Text = 'T'#252'm'#252
    end
    object cm_hes_kis: TcxComboBox
      Left = 320
      Top = 32
      Width = 73
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'T'#252'm'#252
        'Kasa'
        'Pos Cihaz'#305
        'Banka'
        #199'ek'
        'Dolar'
        'Euro')
      TabOrder = 11
      Text = 'T'#252'm'#252
    end
    object cm_aci_kis: TcxComboBox
      Left = 396
      Top = 32
      Width = 97
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'T'#252'm'#252
        'E'#351'it'
        #304#231'eren')
      Properties.OnChange = cm_aci_kisPropertiesChange
      TabOrder = 12
      Text = 'T'#252'm'#252
    end
    object cm_ist_kis: TcxComboBox
      Left = 496
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
      Properties.OnChange = cm_ist_kisPropertiesChange
      TabOrder = 13
      Text = 'T'#252'm'#252
    end
    object tx_ist_bas: TcxDateEdit
      Left = 496
      Top = 52
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 14
    end
    object tx_ist_bit: TcxDateEdit
      Left = 496
      Top = 72
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 15
    end
    object bt_goster: TBitBtn
      Left = 580
      Top = 32
      Width = 57
      Height = 29
      Caption = 'G'#246'ster'
      TabOrder = 16
      OnClick = bt_gosterClick
    end
    object bt_Sifirla: TBitBtn
      Left = 580
      Top = 64
      Width = 57
      Height = 29
      Caption = 'S'#305'f'#305'rla'
      TabOrder = 17
      OnClick = bt_SifirlaClick
    end
    object bt_bas_bul: TBitBtn
      Left = 136
      Top = 53
      Width = 29
      Height = 19
      Caption = 'Bul'
      TabOrder = 18
      OnClick = bt_bas_bulClick
      Style = bsNew
    end
    object bt_bit_bul: TBitBtn
      Left = 136
      Top = 73
      Width = 29
      Height = 19
      Caption = 'Bul'
      TabOrder = 19
      OnClick = bt_bas_bulClick
      Style = bsNew
    end
    object cm_don_kis: TcxComboBox
      Left = 4
      Top = 32
      Width = 77
      Height = 21
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'T'#252'm'#252)
      TabOrder = 20
      Text = 'T'#252'm'#252
    end
    object tx_aci_bas: TcxTextEdit
      Left = 396
      Top = 52
      Width = 97
      Height = 21
      AutoSize = False
      Enabled = False
      Properties.MaxLength = 255
      TabOrder = 21
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      '')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 288
    Top = 36
  end
  object ara_para_akisi: TDataSource
    AutoEdit = False
    DataSet = tablo_para_akisi
    Enabled = False
    Left = 348
    Top = 112
  end
  object tablo_para_akisi: TZReadOnlyQuery
    Connection = veriler.data_dershane
    OnFilterRecord = tablo_para_akisiFilterRecord
    SQL.Strings = (
      'select * from paraakisi where aciklama like '#39'%Taksit '#214'deme%'#39' ')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 432
    Top = 124
    object tablo_para_akisiilgili_no: TIntegerField
      FieldName = 'ilgili_no'
    end
    object tablo_para_akisiislem_no: TIntegerField
      FieldName = 'islem_no'
    end
    object tablo_para_akisitarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_para_akisialinan: TFloatField
      FieldName = 'alinan'
    end
    object tablo_para_akisiverilen: TFloatField
      FieldName = 'verilen'
    end
    object tablo_para_akisiaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tablo_para_akisiilgilihesap: TStringField
      FieldName = 'ilgilihesap'
    end
    object tablo_para_akisiislem_tarihi: TDateTimeField
      FieldName = 'islem_tarihi'
    end
    object tablo_para_akisidonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_para_akisiadi_soyadi: TStringField
      FieldName = 'adi_soyadi'
      Size = 30
    end
  end
end
