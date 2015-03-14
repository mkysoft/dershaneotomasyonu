object fr_gelir_gider_girisi: Tfr_gelir_gider_girisi
  Left = 246
  Top = 235
  Width = 741
  Height = 422
  VertScrollBar.Tracking = True
  Caption = 'Gelir Gider Giri'#351'i'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 189
    Top = 0
    Width = 544
    Height = 388
    Align = alClient
    Caption = ' G'#252'n '#304#231'i Gelir - Gider Durumu '
    TabOrder = 1
    object gr_gun: TcxGrid
      Left = 2
      Top = 16
      Width = 540
      Height = 370
      Align = alClient
      TabOrder = 0
      object paraakisi: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ara_para_akisi
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Al'#305'nan 0,.##'
            Kind = skSum
            FieldName = 'alinan'
            Column = paraakisialinan
          end
          item
            Format = 'Verilen 0,.##'
            Kind = skSum
            FieldName = 'verilen'
            Column = paraakisiverilen
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '# adet'
            Kind = skCount
            FieldName = 'islem_no'
            Column = paraakisiislem_no
          end
          item
            Format = '0,.##'
            Kind = skSum
            FieldName = 'alinan'
            Column = paraakisialinan
          end
          item
            Format = '0,.##'
            Kind = skSum
            FieldName = 'verilen'
            Column = paraakisiverilen
          end
          item
            Format = 'Kasa'
            Kind = skCount
            Column = paraakisiaciklama
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDataChanged = paraakisiDataControllerDataChanged
        Filtering.CustomizeDialog = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnHiding = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        object paraakisiislem_no: TcxGridDBColumn
          Caption = #304#351'lem No'
          DataBinding.FieldName = 'islem_no'
          Width = 31
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
          SortIndex = 0
          SortOrder = soAscending
          Width = 119
        end
        object paraakisitarih: TcxGridDBColumn
          Caption = 'Tarih'
          DataBinding.FieldName = 'tarih'
          Width = 54
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
        object paraakisiilgilihesap: TcxGridDBColumn
          Caption = #304'lgili Hesap'
          DataBinding.FieldName = 'ilgilihesap'
          Visible = False
          GroupIndex = 0
          SortIndex = 1
          SortOrder = soAscending
          Width = 97
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
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Width = 189
    Height = 388
    Align = alLeft
    Caption = ' Verileri Giriniz '
    TabOrder = 0
    object tx_ilgili_no: TcxTextEdit
      Left = 68
      Top = 52
      Width = 41
      Height = 21
      BeepOnEnter = False
      Properties.MaxLength = 4
      TabOrder = 0
      OnKeyPress = tx_ilgili_noKeyPress
    end
    object bt_ogr_sec: TBitBtn
      Left = 112
      Top = 40
      Width = 73
      Height = 21
      Caption = #214#287'renci Bul'
      TabOrder = 1
      OnClick = bt_ogr_secClick
    end
    object tx_tarih: TcxDateEdit
      Left = 68
      Top = 112
      Width = 81
      Height = 21
      BeepOnEnter = False
      Enabled = False
      Properties.DateOnError = deToday
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      OnKeyPress = tx_tarihKeyPress
    end
    object tx_alinan: TcxTextEdit
      Left = 68
      Top = 136
      Width = 105
      Height = 21
      Hint = '000 eklemek i'#231'in + '#39'ya bas'#305'n.'
      BeepOnEnter = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyPress = tx_alinanKeyPress
      OnKeyUp = tx_alinanKeyUp
    end
    object tx_verilen: TcxTextEdit
      Left = 68
      Top = 160
      Width = 105
      Height = 21
      Hint = '000 eklemek i'#231'in + '#39'ya bas'#305'n.'
      BeepOnEnter = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyPress = tx_verilenKeyPress
      OnKeyUp = tx_alinanKeyUp
    end
    object tx_ilgili_hesap: TcxComboBox
      Left = 68
      Top = 184
      Width = 105
      Height = 21
      BeepOnEnter = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Kasa'
        'Pos Cihaz'#305
        'Maa'#351'Avans'
        'Banka'
        #199'ek'
        'Dolar'
        'Euro')
      Properties.ReadOnly = False
      TabOrder = 6
      OnKeyPress = tx_ilgili_hesapKeyPress
    end
    object tx_aciklama: TcxMemo
      Left = 68
      Top = 208
      Width = 117
      Height = 37
      Properties.MaxLength = 255
      Properties.ScrollBars = ssVertical
      Properties.WantReturns = False
      TabOrder = 7
      OnKeyPress = tx_aciklamaKeyPress
    end
    object cxLabel8: TcxLabel
      Left = 2
      Top = 288
      Width = 185
      Height = 98
      TabStop = False
      Align = alBottom
      AutoSize = False
      Caption = 
        '     Dolar ve Euro hesaplar'#305'n'#305' kullanarak '#246#287'renciler i'#231'in para g' +
        'iri'#351'i ve '#231#305'k'#305#351#305' yapmay'#305'n'#305'z. Kay'#305'tlardan her hangi birini d'#252'zeltm' +
        'ek yada silmek istedi'#287'inizde Muhasebe ba'#351'l'#305#287#305' alt'#305'nda yer alan G' +
        'elir-Gider Durumu men'#252's'#252'n'#252' kullan'#305'n'#305'z.'
      Properties.LabelStyle = cxlsRaised
      Properties.PenWidth = 0
      Properties.WordWrap = True
      Style.BorderStyle = ebsFlat
    end
    object cxLabel9: TcxLabel
      Left = 4
      Top = 16
      Width = 61
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'D'#246'nemi'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel6: TcxLabel
      Left = 4
      Top = 52
      Width = 61
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = #304'lgili No'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel1: TcxLabel
      Left = 4
      Top = 208
      Width = 61
      Height = 37
      TabStop = False
      AutoSize = False
      Caption = 'A'#231#305'klama'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel2: TcxLabel
      Left = 4
      Top = 184
      Width = 61
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = #304'lgili Hesap'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel3: TcxLabel
      Left = 0
      Top = 160
      Width = 65
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Gider-Verilen'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel4: TcxLabel
      Left = 4
      Top = 136
      Width = 61
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Gelir-Al'#305'nan'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxLabel5: TcxLabel
      Left = 4
      Top = 111
      Width = 61
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Tarih'
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object tx_adi_soyadi: TcxTextEdit
      Left = 68
      Top = 88
      Width = 105
      Height = 21
      BeepOnEnter = False
      ParentShowHint = False
      Properties.MaxLength = 30
      ShowHint = True
      TabOrder = 2
      OnKeyPress = tx_adi_soyadiKeyPress
    end
    object cxLabel7: TcxLabel
      Left = 4
      Top = 88
      Width = 61
      Height = 20
      TabStop = False
      AutoSize = False
      Caption = 'Ad'#305' Soyad'#305
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object tx_donemi: TcxComboBox
      Left = 68
      Top = 16
      Width = 85
      Height = 21
      Properties.CharCase = ecUpperCase
      TabOrder = 17
    end
    object bt_personel: TBitBtn
      Left = 112
      Top = 64
      Width = 73
      Height = 21
      Caption = 'Personel Bul'
      TabOrder = 18
      OnClick = bt_personelClick
    end
    object bt_ekle: TcxButton
      Left = 28
      Top = 250
      Width = 137
      Height = 31
      Caption = 'Ekle'
      TabOrder = 19
      OnClick = bt_ekleClick
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000230B0000230B000000010000000100000829A5000018
        AD000021AD000829AD001029AD000831AD001031AD001831AD001039AD001839
        AD002139AD000021B5000029B5000829B5001031B5001831B5002139B5000029
        C6001839CE00214ACE000031D6000831D6001031D6001842D6002142D600214A
        D600294AD6000029DE000031DE000831DE000839DE001039DE001839DE001042
        DE001842DE002142DE00184ADE00214ADE00294ADE002952DE003152DE00425A
        DE000031E7000842E700104AE700184AE700214AE700294AE7002152E7002952
        E7003152E7003952E700215AE700295AE700315AE700395AE700425AE7002963
        E7003163E7003963E7004263E7004A63E7004A6BE700526BE7005273E7005A73
        E7006373E700637BE7006B7BE7006B84E7000839EF000842EF001042EF00104A
        EF00184AEF00214AEF001852EF002152EF002952EF00315AEF00395AEF00425A
        EF003963EF004263EF004A63EF00526BEF005273EF00637BEF006B7BEF006B84
        EF007384EF00738CEF007B8CEF008494EF00849CEF008C9CEF0094A5EF009CAD
        EF0094A5F7009CADF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00646464646464
        6464646464646464646464646464646464646464646464646464646464646464
        6464646464646464646464646464646464646464646464646464646464646464
        64646464590F00040606040606050C0D030D0B02055964646464646412161718
        18181918181722211F1E1C141104646464646464152331323232323227314D4A
        4948462A1B016464646464641F262850505150505D3535304C492B461C026464
        64646464202837533D3D3C61655D3534304C49471D026464646464642337533D
        3D3D3D61655D3935302D2C481E0D64646464646425523F3F3F3E3E61655D3631
        302D2D49210D64646464646426543F3F3F3F3E61655D3631302D2C4A220E6464
        6464646432553F615D5D5D5D655D5D5D5D5D2C4B240664646464646451406165
        656565656565656565655D2E25076464646464643C4241616161616165616161
        6161242625076464646464643D444343413F3D61655D31272E2E2E3126086464
        646464643D595A57423F3D61655D3228272F4E311A096464646464643F5C5B59
        43413F61655D373232272728260A646464646464415F5E5B59574241653E3D3C
        532937321A076464646464644361615D5B5A5844434342413F3E533326066464
        646464645960625D5B45454343434256403E523618106464646464645959433F
        3E3D383C38513728323225231359646464646464646464646464646464646464
        6464646464646464646464646464646464646464646464646464646464646464
        6464646464646464646464646464646464646464646464646464}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object tablo_gelir_gider: TZQuery
    Connection = veriler.data_dershane
    OnFilterRecord = tablo_gelir_giderFilterRecord
    CachedUpdates = False
    RequestLive = True
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 456
    Top = 112
  end
  object ara_para_akisi: TDataSource
    AutoEdit = False
    DataSet = tablo_gelir_gider
    Enabled = False
    Left = 348
    Top = 112
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      '')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 452
    Top = 188
  end
  object makbuz: TppReport
    AutoStop = False
    DataPipeline = ppBandsPerRecordIcin
    PageLimit = 1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Makbuz'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Dershane Otomasyonu\makbuz.rtm'
    Units = utMillimeters
    ArchiveFileName = 'makbuz.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 308
    Top = 216
    Version = '10.02'
    mmColumnWidth = 2159003
    DataPipelineName = 'ppBandsPerRecordIcin'
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 8000
      mmHeight = 86519
      mmPrintPosition = 0
      object ppLbKopya: TppLabel
        UserName = 'LbKopya'
        Angle = 45
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'KOPYA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'Arial'
        Font.Size = 72
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 81756
        mmLeft = 171450
        mmTop = 3175
        mmWidth = 81756
        BandType = 4
        RotatedOriginLeft = -3835
        RotatedOriginTop = 59964
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Style = bsClear
        Shape = stRoundRect
        mmHeight = 86519
        mmLeft = 149490
        mmTop = 0
        mmWidth = 127794
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'lb_islem_no2'
        OnGetText = ppLabel19GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Adres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 178859
        mmTop = 5292
        mmWidth = 95515
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Style = bsClear
        mmHeight = 32015
        mmLeft = 151342
        mmTop = 19844
        mmWidth = 62177
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DERSHANE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 178859
        mmTop = 0
        mmWidth = 92340
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #214'dendi Makbuzu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 178859
        mmTop = 11906
        mmWidth = 95515
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #304#351'lem No : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 179388
        mmTop = 16140
        mmWidth = 16404
        BandType = 4
      end
      object lb_islem_no1: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 196057
        mmTop = 16140
        mmWidth = 15875
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Numaras'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 152400
        mmTop = 33073
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ad'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 39158
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #214'  '#287'  r  e  n  c  i  n i n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 151871
        mmTop = 20902
        mmWidth = 60854
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Soyad'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 45508
        mmWidth = 22225
        BandType = 4
      end
      object lb_numarasi1: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 175684
        mmTop = 33073
        mmWidth = 23283
        BandType = 4
      end
      object lb_adi1: TppLabel
        UserName = 'lb_numarasi1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_adi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 175948
        mmTop = 39158
        mmWidth = 37042
        BandType = 4
      end
      object lb_soyadi1: TppLabel
        UserName = 'lb_numarasi2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 175948
        mmTop = 45508
        mmWidth = 37042
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Style = bsClear
        mmHeight = 32015
        mmLeft = 214578
        mmTop = 19844
        mmWidth = 60590
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #214'  d  e  m  e  n  i  n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 215636
        mmTop = 20902
        mmWidth = 58738
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tarihi :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 215371
        mmTop = 27252
        mmWidth = 17463
        BandType = 4
      end
      object lb_tarihi1: TppLabel
        UserName = 'lb_numarasi3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 233892
        mmTop = 27252
        mmWidth = 40481
        BandType = 4
      end
      object lb_miktari1: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 233892
        mmTop = 33602
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Miktar'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 215371
        mmTop = 33602
        mmWidth = 17463
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Style = bsClear
        mmHeight = 25929
        mmLeft = 151342
        mmTop = 52917
        mmWidth = 87842
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Toplam Bor'#231' Tutar'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 152400
        mmTop = 53975
        mmWidth = 46038
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #214'denen Bor'#231' Miktar'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 152400
        mmTop = 60325
        mmWidth = 46038
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Kalan Bor'#231' Miktar'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 152400
        mmTop = 66675
        mmWidth = 45773
        BandType = 4
      end
      object lb_toplam_borcu1: TppLabel
        UserName = 'lb_miktari1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 198967
        mmTop = 53975
        mmWidth = 38629
        BandType = 4
      end
      object lb_odenen_borc1: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 198967
        mmTop = 60325
        mmWidth = 38365
        BandType = 4
      end
      object lb_kalan_borc1: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 198967
        mmTop = 66675
        mmWidth = 38629
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'T a h s i l  E d e n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 239978
        mmTop = 52652
        mmWidth = 35454
        BandType = 4
      end
      object lb_tahsil_eden1: TppLabel
        UserName = 'lb_miktari_yaziyla1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'tahsileden'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 20108
        mmLeft = 239978
        mmTop = 58473
        mmWidth = 35983
        BandType = 4
      end
      object lb_tarih_saat1: TppLabel
        UserName = 'lb_miktari_yaziyla2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'tarih saat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 248709
        mmTop = 16404
        mmWidth = 27517
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          'NOT: Makbuzunuzu '#246'demeleriniz bitinceye kadar saklay'#305'n'#305'z, aksi t' +
          'akdirde itilaf halinde dershane kay'#305'tlar'#305' dikkate al'#305'nacakt'#305'r. B' +
          'u makbuz fatura yerine ge'#231'mez.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 158750
        mmTop = 79111
        mmWidth = 115359
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'D'#246'nemi :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 152136
        mmTop = 27252
        mmWidth = 22225
        BandType = 4
      end
      object lb_donemi1: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 175684
        mmTop = 27252
        mmWidth = 25929
        BandType = 4
      end
      object lb_miktari_yaziyla1: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 11377
        mmLeft = 215371
        mmTop = 39688
        mmWidth = 59002
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Geciken Bor'#231' Miktar'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 152400
        mmTop = 72231
        mmWidth = 45773
        BandType = 4
      end
      object lb_geciken_borc1: TppLabel
        UserName = 'lb_kalan_borc1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_numarasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 198967
        mmTop = 72231
        mmWidth = 38629
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Makbuz No : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 213255
        mmTop = 16140
        mmWidth = 18785
        BandType = 4
      end
      object lb_makbuz_sira_no1: TppLabel
        UserName = 'lb_islem_no1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lb_islem_no'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 232569
        mmTop = 16140
        mmWidth = 14023
        BandType = 4
      end
      object lb_kullanici1: TppLabel
        UserName = 'Label30'
        CharWrap = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'tahsileden'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 242359
        mmTop = 75142
        mmWidth = 30956
        BandType = 4
      end
      object ppImage1: TppImage
        OnPrint = ppImage1Print
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        mmHeight = 17198
        mmLeft = 155575
        mmTop = 1323
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel Faks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 178859
        mmTop = 8202
        mmWidth = 95515
        BandType = 4
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object mn_gelir_gider: TcxGridPopupMenu
    Grid = gr_gun
    PopupMenus = <>
    Left = 256
    Top = 144
  end
  object ppBandsPerRecordIcin: TppJITPipeline
    InitialIndex = 0
    RecordCount = 2
    SkipWhenNoRecords = False
    UserName = 'BandsPerRecordIcin'
    Left = 381
    Top = 232
  end
end
