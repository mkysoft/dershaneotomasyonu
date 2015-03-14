object fr_devamsizlik_girisi: Tfr_devamsizlik_girisi
  Left = 245
  Top = 178
  Width = 732
  Height = 354
  Caption = 'Devams'#305'zl'#305'k Giri'#351'i'
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
  object gr_devamsizliklar: TcxGrid
    Left = 181
    Top = 0
    Width = 543
    Height = 320
    Align = alClient
    TabOrder = 1
    TabStop = False
    object devamsizliklar: TcxGridDBTableView
      DragMode = dmAutomatic
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Enabled = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Enabled = False
      DataController.DataSource = ara_devamsizlik
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ' adet'
          Kind = skCount
          FieldName = 'sinif'
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.CustomizeDialog = False
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHiding = True
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object devamsizliklardonemi: TcxGridDBColumn
        Caption = 'D'#246'nemi'
        DataBinding.FieldName = 'donemi'
      end
      object devamsizliklarogr_no: TcxGridDBColumn
        Caption = #214'.No'
        DataBinding.FieldName = 'ogr_no'
      end
      object devamsizliklartarih: TcxGridDBColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'tarih'
      end
      object devamsizliklarders_1: TcxGridDBColumn
        Caption = 'Ders 1'
        DataBinding.FieldName = 'ders_1'
      end
      object devamsizliklarders_2: TcxGridDBColumn
        Caption = 'Ders 2'
        DataBinding.FieldName = 'ders_2'
      end
      object devamsizliklarders_3: TcxGridDBColumn
        Caption = 'Ders 3'
        DataBinding.FieldName = 'ders_3'
      end
      object devamsizliklarders_4: TcxGridDBColumn
        Caption = 'Ders 4'
        DataBinding.FieldName = 'ders_4'
      end
      object devamsizliklarders_5: TcxGridDBColumn
        Caption = 'Ders 5'
        DataBinding.FieldName = 'ders_5'
      end
      object devamsizliklarders_6: TcxGridDBColumn
        Caption = 'Ders 6'
        DataBinding.FieldName = 'ders_6'
      end
      object devamsizliklarders_7: TcxGridDBColumn
        Caption = 'Ders 7'
        DataBinding.FieldName = 'ders_7'
      end
      object devamsizliklarders_8: TcxGridDBColumn
        Caption = 'Ders 8'
        DataBinding.FieldName = 'ders_8'
      end
      object devamsizliklarders_9: TcxGridDBColumn
        Caption = 'Ders 9'
        DataBinding.FieldName = 'ders_9'
      end
      object devamsizliklarders_10: TcxGridDBColumn
        Caption = 'Ders 10'
        DataBinding.FieldName = 'ders_10'
      end
    end
    object gr_devamsizliklarLevel1: TcxGridLevel
      GridView = devamsizliklar
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 181
    Height = 320
    Align = alLeft
    Caption = ' Veri Giri'#351'i '
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 4
      Top = 36
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Tarih'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object tx_tarih: TcxDateEdit
      Left = 72
      Top = 36
      Width = 85
      Height = 21
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = tx_tarihPropertiesEditValueChanged
      TabOrder = 2
      OnKeyPress = tx_tarihKeyPress
    end
    object cxLabel2: TcxLabel
      Left = 4
      Top = 60
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Ders No'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
    end
    object tx_ders_no: TcxTextEdit
      Left = 72
      Top = 60
      Width = 37
      Height = 24
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      TabOrder = 1
      OnKeyPress = tx_ders_noKeyPress
    end
    object tx_ogr_no: TcxTextEdit
      Left = 72
      Top = 88
      Width = 49
      Height = 21
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.MaxLength = 4
      TabOrder = 0
      OnKeyPress = tx_ogr_noKeyPress
      OnKeyUp = tx_ogr_noKeyUp
    end
    object cxLabel3: TcxLabel
      Left = 4
      Top = 88
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = #214#287'renci No'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel7: TcxLabel
      Left = 4
      Top = 112
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Dersin Ad'#305
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object tx_dersin_adi: TcxTextEdit
      Left = 72
      Top = 112
      Width = 69
      Height = 21
      TabStop = False
      Properties.MaxLength = 10
      Properties.ReadOnly = True
      TabOrder = 7
    end
    object tx_sinifi: TcxTextEdit
      Left = 72
      Top = 136
      Width = 61
      Height = 21
      TabStop = False
      Properties.MaxLength = 10
      Properties.ReadOnly = True
      TabOrder = 8
    end
    object cxLabel6: TcxLabel
      Left = 4
      Top = 136
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'S'#305'n'#305'f'#305
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel4: TcxLabel
      Left = 4
      Top = 160
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Ad'#305
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object tx_adi: TcxTextEdit
      Left = 72
      Top = 160
      Width = 105
      Height = 21
      TabStop = False
      Properties.MaxLength = 15
      Properties.ReadOnly = True
      TabOrder = 11
    end
    object tx_soyadi: TcxTextEdit
      Left = 72
      Top = 184
      Width = 105
      Height = 21
      TabStop = False
      Properties.MaxLength = 15
      Properties.ReadOnly = True
      TabOrder = 12
    end
    object cxLabel5: TcxLabel
      Left = 4
      Top = 184
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Soyad'#305
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel8: TcxLabel
      Left = 2
      Top = 236
      Width = 177
      Height = 82
      TabStop = False
      Align = alBottom
      AutoSize = False
      Caption = 
        '  '#214#287'renci numras'#305' yazmadan bo'#351' olarak ENTER tu'#351'una basarsan'#305'z ot' +
        'omatik olarak Ders No bir artacakt'#305'r yada a'#351'a'#287#305' ve yukar'#305' ok tu'#351 +
        'lar'#305'na basarak art'#305'r'#305'p azaltabilirisiniz.'
      Properties.LabelStyle = cxlsRaised
      Properties.PenWidth = 0
      Properties.WordWrap = True
      Style.BorderStyle = ebsFlat
    end
    object cxLabel9: TcxLabel
      Left = 4
      Top = 12
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'D'#246'nemi'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object tx_donemi: TcxComboBox
      Left = 72
      Top = 10
      Width = 85
      Height = 21
      TabOrder = 16
      Text = 'tx_donemi'
    end
    object bt_ekle: TBitBtn
      Left = 56
      Top = 208
      Width = 77
      Height = 25
      Caption = 'Ekle'
      TabOrder = 17
      OnClick = bt_ekleClick
    end
  end
  object tablo_devamsizlik: TZQuery
    Connection = veriler.data_dershane
    OnFilterRecord = tablo_devamsizlikFilterRecord
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from devamsizliklar WHERE tarih=now()')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 196
    Top = 32
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
  end
  object ara_devamsizlik: TDataSource
    DataSet = tablo_devamsizlik
    Enabled = False
    Left = 276
    Top = 84
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 336
    Top = 44
  end
  object tablo_ogrenci: TZReadOnlyQuery
    Connection = veriler.data_dershane
    OnFilterRecord = tablo_ogrenciFilterRecord
    Filtered = True
    SQL.Strings = (
      'select donemi,ogr_no, adi, soyadi, sinifi from ogrenciler')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 400
    Top = 48
    object tablo_ogrencidonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_ogrenciogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_ogrenciadi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object tablo_ogrencisoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object tablo_ogrencisinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
  end
end
