object fr_ogrenci_durum_takibi: Tfr_ogrenci_durum_takibi
  Left = 247
  Top = 190
  Width = 748
  Height = 406
  Caption = #214#287'renci Durum Takibi'
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 137
    Height = 372
    Align = alLeft
    Caption = ' '#214#287'renci '
    TabOrder = 0
    object Label1: TLabel
      Left = 62
      Top = 134
      Width = 22
      Height = 13
      Caption = 'S'#305'n'#305'f'#305
    end
    object Label2: TLabel
      Left = 7
      Top = 214
      Width = 32
      Height = 13
      Caption = 'Soyad'#305
    end
    object Label3: TLabel
      Left = 7
      Top = 134
      Width = 44
      Height = 13
      Caption = 'Numaras'#305
    end
    object Label4: TLabel
      Left = 7
      Top = 174
      Width = 15
      Height = 13
      Caption = 'Ad'#305
    end
    object Label5: TLabel
      Left = 7
      Top = 116
      Width = 36
      Height = 13
      Caption = 'D'#246'nemi'
    end
    object tx_ogr_no: TcxDBTextEdit
      Left = 4
      Top = 148
      Width = 53
      Height = 21
      DataBinding.DataField = 'ogr_no'
      DataBinding.DataSource = ara_ogrenciler
      Properties.MaxLength = 4
      Properties.ReadOnly = True
      TabOrder = 0
    end
    object tx_adi: TcxDBTextEdit
      Left = 4
      Top = 188
      Width = 129
      Height = 21
      DataBinding.DataField = 'adi'
      DataBinding.DataSource = ara_ogrenciler
      Properties.MaxLength = 15
      Properties.ReadOnly = False
      TabOrder = 1
    end
    object tx_soyadi: TcxDBTextEdit
      Left = 4
      Top = 228
      Width = 129
      Height = 21
      DataBinding.DataField = 'soyadi'
      DataBinding.DataSource = ara_ogrenciler
      Properties.MaxLength = 15
      Properties.ReadOnly = False
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 4
      Top = 252
      Width = 129
      Height = 41
      BevelInner = bvLowered
      TabOrder = 3
      object Label39: TLabel
        Left = 19
        Top = 4
        Width = 98
        Height = 13
        Caption = 'Dan'#305#351'man '#214#287'retmeni'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
    end
    object tx_danisman: TcxDBLabel
      Left = 4
      Top = 272
      Width = 129
      Height = 17
      DataBinding.DataField = 'danisman'
      DataBinding.DataSource = ara_ogrenciler
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      TabOrder = 4
    end
    object ogr_res: TcxDBImage
      Left = 4
      Top = 16
      Width = 129
      Height = 93
      Hint = 'Resim y'#252'klemek,silmek,farkl'#305' kaydetmek i'#231'in sa'#287' tu'#351'la t'#305'klay'#305'n.'
      DataBinding.DataField = 'resmi'
      DataBinding.DataSource = ara_ogrenciler
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.GraphicTransparency = gtTransparent
      Properties.ReadOnly = False
      Properties.Stretch = True
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      TabOrder = 5
    end
    object tx_donemi: TcxDBTextEdit
      Left = 56
      Top = 112
      Width = 73
      Height = 21
      DataBinding.DataField = 'donemi'
      DataBinding.DataSource = ara_ogrenciler
      TabOrder = 6
    end
    object tx_sinifi: TcxDBTextEdit
      Left = 64
      Top = 148
      Width = 65
      Height = 21
      DataBinding.DataField = 'sinifi'
      DataBinding.DataSource = ara_ogrenciler
      TabOrder = 7
    end
    object bt_ogrenci_bul: TBitBtn
      Left = 4
      Top = 300
      Width = 129
      Height = 29
      Caption = #214#287'renci Bul'
      TabOrder = 8
      OnClick = bt_ogrenci_bulClick
    end
    object bt_ayrintili_bilgi: TBitBtn
      Left = 4
      Top = 332
      Width = 129
      Height = 29
      Caption = 'Ayr'#305'nt'#305'l'#305' Bilgi'
      TabOrder = 9
      OnClick = bt_ayrintili_bilgiClick
    end
  end
  object PageControl1: TPageControl
    Left = 137
    Top = 0
    Width = 603
    Height = 372
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Ba'#351'ar'#305' Grafi'#287'i'
      object gf_durum: TDBChart
        Left = 0
        Top = 41
        Width = 595
        Height = 303
        AnimatedZoom = True
        AnimatedZoomSteps = 4
        BackWall.Brush.Color = clWhite
        PrintProportional = False
        Title.Text.Strings = (
          'Grafik')
        Chart3DPercent = 1
        LeftAxis.LabelsMultiLine = True
        View3D = False
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Series1: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Style = smsLegend
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = clRed
          Title = 'Cizgi 1'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_1'
        end
        object Series2: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = 16512
          Title = 'Cizgi 2'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = 16512
          LinePen.Style = psDash
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_2'
        end
        object Series3: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = clGreen
          Title = 'Cizgi 3'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = clGreen
          LinePen.Style = psDot
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_3'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 595
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object rb_grafik: TcxRadioGroup
          Left = 0
          Top = 0
          Width = 133
          Height = 37
          Align = alCustom
          ItemIndex = 0
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Puan'
              Value = 'puan'
            end
            item
              Caption = 'Net'
              Value = 'net'
            end>
          TabOrder = 0
          OnClick = rb_grafikClick
          Caption = ' Grafik Se'#231'enekleri '
        end
        object bt_yazdir: TBitBtn
          Left = 144
          Top = 5
          Width = 85
          Height = 29
          Caption = 'Yazd'#305'r'
          TabOrder = 1
          OnClick = bt_yazdirClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'S'#305'nav Sonu'#231'lar'#305
      ImageIndex = 1
      object gr_sivlar1: TcxGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 344
        Align = alClient
        TabOrder = 0
        object gr_sinavlar: TcxGridDBTableView
          DataController.DataSource = ara_sinavlar
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          object gr_sinavlarsinav_adi: TcxGridDBColumn
            Caption = 'S'#305'nav Ad'#305
            DataBinding.FieldName = 'sinav_adi'
          end
          object gr_sinavlarsinav_tarihi: TcxGridDBColumn
            Caption = 'Sinav Tarihi'
            DataBinding.FieldName = 'sinav_tarihi'
          end
          object gr_sinavlarturkce_soru_sayisi: TcxGridDBColumn
            Caption = 'T.S.S'
            DataBinding.FieldName = 'turkce_soru_sayisi'
          end
          object gr_sinavlarturkce_dogru: TcxGridDBColumn
            Caption = 'T.D'
            DataBinding.FieldName = 'turkce_dogru'
          end
          object gr_sinavlarturkce_yanlis: TcxGridDBColumn
            Caption = 'T.Y'
            DataBinding.FieldName = 'turkce_yanlis'
          end
          object gr_sinavlarturkce_net: TcxGridDBColumn
            Caption = 'T.N'
            DataBinding.FieldName = 'turkce_net'
          end
          object gr_sinavlartarih_soru_sayisi: TcxGridDBColumn
            Caption = 'Ta.S.S'
            DataBinding.FieldName = 'tarih_soru_sayisi'
          end
          object gr_sinavlartarih_dogru: TcxGridDBColumn
            Caption = 'Ta.D'
            DataBinding.FieldName = 'tarih_dogru'
          end
          object gr_sinavlartarih_yanlis: TcxGridDBColumn
            Caption = 'Ta.Y'
            DataBinding.FieldName = 'tarih_yanlis'
          end
          object gr_sinavlartarih_net: TcxGridDBColumn
            Caption = 'Sinav Tarihi'
            DataBinding.FieldName = 'tarih_net'
          end
          object gr_sinavlarcografya_soru_sayisi: TcxGridDBColumn
            Caption = 'C.S.S'
            DataBinding.FieldName = 'cografya_soru_sayisi'
          end
          object gr_sinavlarcografya_dogru: TcxGridDBColumn
            Caption = 'C.D'
            DataBinding.FieldName = 'cografya_dogru'
          end
          object gr_sinavlarcografya_yanlis: TcxGridDBColumn
            Caption = 'C.Y'
            DataBinding.FieldName = 'cografya_yanlis'
          end
          object gr_sinavlarcografya_net: TcxGridDBColumn
            Caption = 'C.N'
            DataBinding.FieldName = 'cografya_net'
          end
          object gr_sinavlarfelsefe_soru_sayisi: TcxGridDBColumn
            Caption = 'Fe.S.S'
            DataBinding.FieldName = 'felsefe_soru_sayisi'
          end
          object gr_sinavlarfelsefe_dogru: TcxGridDBColumn
            Caption = 'Fe.D'
            DataBinding.FieldName = 'felsefe_dogru'
          end
          object gr_sinavlarfelsefe_yanlis: TcxGridDBColumn
            Caption = 'Fe.Y'
            DataBinding.FieldName = 'felsefe_yanlis'
          end
          object gr_sinavlarfelsefe_net: TcxGridDBColumn
            Caption = 'Fe.N'
            DataBinding.FieldName = 'felsefe_net'
          end
          object gr_sinavlarsosyal_soru_sayisi: TcxGridDBColumn
            Caption = 'S.S.S'
            DataBinding.FieldName = 'sosyal_soru_sayisi'
          end
          object gr_sinavlarsosyal_dogru: TcxGridDBColumn
            Caption = 'S.D'
            DataBinding.FieldName = 'sosyal_dogru'
          end
          object gr_sinavlarsosyal_yanlis: TcxGridDBColumn
            Caption = 'S.Y'
            DataBinding.FieldName = 'sosyal_yanlis'
          end
          object gr_sinavlarsosyal_net: TcxGridDBColumn
            Caption = 'S.N'
            DataBinding.FieldName = 'sosyal_net'
          end
          object gr_sinavlarmatemat_soru_sayisi: TcxGridDBColumn
            Caption = 'Ma.S.S'
            DataBinding.FieldName = 'matemat_soru_sayisi'
          end
          object gr_sinavlarmatemat_dogru: TcxGridDBColumn
            Caption = 'Ma.D'
            DataBinding.FieldName = 'matemat_dogru'
          end
          object gr_sinavlarmatemat_yanlis: TcxGridDBColumn
            Caption = 'Ma.Y'
            DataBinding.FieldName = 'matemat_yanlis'
          end
          object gr_sinavlarmatemat_net: TcxGridDBColumn
            Caption = 'Ma.N'
            DataBinding.FieldName = 'matemat_net'
          end
          object gr_sinavlargeometri_soru_sayisi: TcxGridDBColumn
            Caption = 'G.S.S'
            DataBinding.FieldName = 'geometri_soru_sayisi'
          end
          object gr_sinavlargeometri_dogru: TcxGridDBColumn
            Caption = 'G.D'
            DataBinding.FieldName = 'geometri_dogru'
          end
          object gr_sinavlargeometri_yanlis: TcxGridDBColumn
            Caption = 'G.Y'
            DataBinding.FieldName = 'geometri_yanlis'
          end
          object gr_sinavlargeometri_net: TcxGridDBColumn
            Caption = 'G.N'
            DataBinding.FieldName = 'geometri_net'
          end
          object gr_sinavlarmatematik_soru_sayisi: TcxGridDBColumn
            Caption = 'M.S.S'
            DataBinding.FieldName = 'matematik_soru_sayisi'
          end
          object gr_sinavlarmatematik_dogru: TcxGridDBColumn
            Caption = 'M.D'
            DataBinding.FieldName = 'matematik_dogru'
          end
          object gr_sinavlarmatematik_yanlis: TcxGridDBColumn
            Caption = 'M.Y'
            DataBinding.FieldName = 'matematik_yanlis'
          end
          object gr_sinavlarmatematik_net: TcxGridDBColumn
            Caption = 'M.N'
            DataBinding.FieldName = 'matematik_net'
          end
          object gr_sinavlarfizik_soru_sayisi: TcxGridDBColumn
            Caption = 'Fi.S.S'
            DataBinding.FieldName = 'fizik_soru_sayisi'
          end
          object gr_sinavlarfizik_dogru: TcxGridDBColumn
            Caption = 'Fi.D'
            DataBinding.FieldName = 'fizik_dogru'
          end
          object gr_sinavlarfizik_yanlis: TcxGridDBColumn
            Caption = 'Fi.Y'
            DataBinding.FieldName = 'fizik_yanlis'
          end
          object gr_sinavlarfizik_net: TcxGridDBColumn
            Caption = 'Fi.N'
            DataBinding.FieldName = 'fizik_net'
          end
          object gr_sinavlarkimya_soru_sayisi: TcxGridDBColumn
            Caption = 'K.S.S'
            DataBinding.FieldName = 'kimya_soru_sayisi'
          end
          object gr_sinavlarkimya_dogru: TcxGridDBColumn
            Caption = 'K.D'
            DataBinding.FieldName = 'kimya_dogru'
          end
          object gr_sinavlarkimya_yanlis: TcxGridDBColumn
            Caption = 'K.Y'
            DataBinding.FieldName = 'kimya_yanlis'
          end
          object gr_sinavlarkimya_net: TcxGridDBColumn
            Caption = 'K.N'
            DataBinding.FieldName = 'kimya_net'
          end
          object gr_sinavlarbiyoloji_soru_sayisi: TcxGridDBColumn
            Caption = 'B.S.S'
            DataBinding.FieldName = 'biyoloji_soru_sayisi'
          end
          object gr_sinavlarbiyoloji_dogru: TcxGridDBColumn
            Caption = 'B.D'
            DataBinding.FieldName = 'biyoloji_dogru'
          end
          object gr_sinavlarbiyoloji_yanlis: TcxGridDBColumn
            Caption = 'B.Y'
            DataBinding.FieldName = 'biyoloji_yanlis'
          end
          object gr_sinavlarbiyoloji_net: TcxGridDBColumn
            Caption = 'B.N'
            DataBinding.FieldName = 'biyoloji_net'
          end
          object gr_sinavlarfen_soru_sayisi: TcxGridDBColumn
            Caption = 'F.S.S'
            DataBinding.FieldName = 'fen_soru_sayisi'
          end
          object gr_sinavlarfen_dogru: TcxGridDBColumn
            Caption = 'F.D'
            DataBinding.FieldName = 'fen_dogru'
          end
          object gr_sinavlarfen_yanlis: TcxGridDBColumn
            Caption = 'F.Y'
            DataBinding.FieldName = 'fen_yanlis'
          end
          object gr_sinavlarfen_net: TcxGridDBColumn
            Caption = 'F.N'
            DataBinding.FieldName = 'fen_net'
          end
          object gr_sinavlartoplam_dogru: TcxGridDBColumn
            Caption = 'T.D'
            DataBinding.FieldName = 'toplam_dogru'
          end
          object gr_sinavlartoplam_yanlis: TcxGridDBColumn
            Caption = 'T.Y'
            DataBinding.FieldName = 'toplam_yanlis'
          end
          object gr_sinavlartoplam_net: TcxGridDBColumn
            Caption = 'T.N'
            DataBinding.FieldName = 'toplam_net'
          end
          object gr_sinavlarpuan_1: TcxGridDBColumn
            DataBinding.FieldName = 'puan_1'
          end
          object gr_sinavlarderece_1: TcxGridDBColumn
            DataBinding.FieldName = 'derece_1'
          end
          object gr_sinavlarderece_local_1: TcxGridDBColumn
            DataBinding.FieldName = 'derece_local_1'
          end
          object gr_sinavlarpuan_2: TcxGridDBColumn
            DataBinding.FieldName = 'puan_2'
          end
          object gr_sinavlarderece_2: TcxGridDBColumn
            DataBinding.FieldName = 'derece_2'
          end
          object gr_sinavlarderece_local_2: TcxGridDBColumn
            DataBinding.FieldName = 'derece_local_2'
          end
          object gr_sinavlarpuan_3: TcxGridDBColumn
            DataBinding.FieldName = 'puan_3'
          end
          object gr_sinavlarderece_3: TcxGridDBColumn
            DataBinding.FieldName = 'derece_3'
          end
          object gr_sinavlarderece_local_3: TcxGridDBColumn
            DataBinding.FieldName = 'derece_local_3'
          end
        end
        object gr_sinavlar1: TcxGridLevel
          GridView = gr_sinavlar
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Rehberlik Notlar'#305
      ImageIndex = 2
      object gr_notlar: TcxGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 344
        Align = alClient
        TabOrder = 0
        object vi_notlar: TcxGridDBTableView
          DataController.DataSource = ara_notlar
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Enabled = False
          NavigatorButtons.NextPage.Enabled = False
          NavigatorButtons.SaveBookmark.Enabled = False
          NavigatorButtons.GotoBookmark.Enabled = False
          NavigatorButtons.Filter.Enabled = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = vi_notlarnotu
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object vi_notlarid: TcxGridDBColumn
            Visible = False
            DataBinding.FieldName = 'id'
          end
          object vi_notlardonemi: TcxGridDBColumn
            Visible = False
            DataBinding.FieldName = 'donemi'
          end
          object vi_notlarogr_no: TcxGridDBColumn
            Visible = False
            DataBinding.FieldName = 'ogr_no'
          end
          object vi_notlartarih: TcxGridDBColumn
            Caption = 'Tarih'
            Options.Filtering = False
            Width = 72
            DataBinding.FieldName = 'tarih'
          end
          object vi_notlarnotu: TcxGridDBColumn
            Caption = 'Not'
            Options.Filtering = False
            Width = 521
            DataBinding.FieldName = 'notu'
          end
        end
        object gr_notlarLevel1: TcxGridLevel
          GridView = vi_notlar
        end
      end
    end
  end
  object ara_sinavlar: TDataSource
    DataSet = tablo_sinavlar
    Left = 404
    Top = 228
  end
  object ara_ogrenciler: TDataSource
    DataSet = tablo_ogrenciler
    Left = 248
    Top = 204
  end
  object tablo_ogrenciler: TZReadOnlyQuery
    Connection = dershane.data_dershane
    SQL.Strings = (
      
        'SELECT donemi,ogr_no,sinifi,adi,soyadi,resmi,durumu,danisman FRO' +
        'M ogrenciler left join siniflar on ogrenciler.sinifi=siniflar.si' +
        'nif WHERE donemi =:par1 AND ogr_no =:par2')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 248
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_ogrencilerdonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_ogrencilerogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_ogrencilersinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_ogrencileradi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object tablo_ogrencilersoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object tablo_ogrencilerresmi: TBlobField
      FieldName = 'resmi'
    end
    object tablo_ogrencilerdurumu: TStringField
      FieldName = 'durumu'
      Size = 12
    end
    object tablo_ogrencilerdanisman: TStringField
      FieldName = 'danisman'
      Size = 25
    end
  end
  object tablo_sinavlar: TZReadOnlyQuery
    Connection = dershane.data_dershane
    SQL.Strings = (
      
        'SELECT * FROM sinavlar WHERE donemi =:par1 AND ogr_no =:par2 ord' +
        'er by sinav_tarihi')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 396
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_sinavlarogr_no: TIntegerField
      FieldName = 'ogr_no'
    end
    object tablo_sinavlardonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_sinavlaradi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object tablo_sinavlarsoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object tablo_sinavlarturkce_dogru: TIntegerField
      FieldName = 'turkce_dogru'
    end
    object tablo_sinavlartarih_dogru: TSmallintField
      FieldName = 'tarih_dogru'
    end
    object tablo_sinavlartarih_yanlis: TSmallintField
      FieldName = 'tarih_yanlis'
    end
    object tablo_sinavlartarih_net: TFloatField
      FieldName = 'tarih_net'
    end
    object tablo_sinavlarcografya_dogru: TSmallintField
      FieldName = 'cografya_dogru'
    end
    object tablo_sinavlarcografya_yanlis: TSmallintField
      FieldName = 'cografya_yanlis'
    end
    object tablo_sinavlarcografya_net: TFloatField
      FieldName = 'cografya_net'
    end
    object tablo_sinavlarfelsefe_dogru: TSmallintField
      FieldName = 'felsefe_dogru'
    end
    object tablo_sinavlarfelsefe_yanlis: TSmallintField
      FieldName = 'felsefe_yanlis'
    end
    object tablo_sinavlarfelsefe_net: TFloatField
      FieldName = 'felsefe_net'
    end
    object tablo_sinavlarsosyal_dogru: TIntegerField
      FieldName = 'sosyal_dogru'
    end
    object tablo_sinavlarmatemat_dogru: TSmallintField
      FieldName = 'matemat_dogru'
    end
    object tablo_sinavlarmatemat_yanlis: TSmallintField
      FieldName = 'matemat_yanlis'
    end
    object tablo_sinavlarmatemat_net: TFloatField
      FieldName = 'matemat_net'
    end
    object tablo_sinavlargeometri_dogru: TSmallintField
      FieldName = 'geometri_dogru'
    end
    object tablo_sinavlargeometri_yanlis: TSmallintField
      FieldName = 'geometri_yanlis'
    end
    object tablo_sinavlargeometri_net: TFloatField
      FieldName = 'geometri_net'
    end
    object tablo_sinavlarmatematik_dogru: TIntegerField
      FieldName = 'matematik_dogru'
    end
    object tablo_sinavlarfizik_dogru: TSmallintField
      FieldName = 'fizik_dogru'
    end
    object tablo_sinavlarfizik_yanlis: TSmallintField
      FieldName = 'fizik_yanlis'
    end
    object tablo_sinavlarfizik_net: TFloatField
      FieldName = 'fizik_net'
    end
    object tablo_sinavlarkimya_dogru: TSmallintField
      FieldName = 'kimya_dogru'
    end
    object tablo_sinavlarkimya_yanlis: TSmallintField
      FieldName = 'kimya_yanlis'
    end
    object tablo_sinavlarkimya_net: TFloatField
      FieldName = 'kimya_net'
    end
    object tablo_sinavlarbiyoloji_dogru: TSmallintField
      FieldName = 'biyoloji_dogru'
    end
    object tablo_sinavlarbiyoloji_yanlis: TSmallintField
      FieldName = 'biyoloji_yanlis'
    end
    object tablo_sinavlarbiyoloji_net: TFloatField
      FieldName = 'biyoloji_net'
    end
    object tablo_sinavlarfen_dogru: TIntegerField
      FieldName = 'fen_dogru'
    end
    object tablo_sinavlarsinav_adi: TStringField
      FieldName = 'sinav_adi'
      Size = 25
    end
    object tablo_sinavlarsinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
    end
    object tablo_sinavlarturkce_yanlis: TIntegerField
      FieldName = 'turkce_yanlis'
    end
    object tablo_sinavlarsosyal_yanlis: TIntegerField
      FieldName = 'sosyal_yanlis'
    end
    object tablo_sinavlarmatematik_yanlis: TIntegerField
      FieldName = 'matematik_yanlis'
    end
    object tablo_sinavlarfen_yanlis: TIntegerField
      FieldName = 'fen_yanlis'
    end
    object tablo_sinavlarturkce_net: TFloatField
      FieldName = 'turkce_net'
    end
    object tablo_sinavlarsosyal_net: TFloatField
      FieldName = 'sosyal_net'
    end
    object tablo_sinavlarmatematik_net: TFloatField
      FieldName = 'matematik_net'
    end
    object tablo_sinavlarfen_net: TFloatField
      FieldName = 'fen_net'
    end
    object tablo_sinavlartoplam_dogru: TIntegerField
      FieldName = 'toplam_dogru'
    end
    object tablo_sinavlartoplam_yanlis: TIntegerField
      FieldName = 'toplam_yanlis'
    end
    object tablo_sinavlartoplam_net: TFloatField
      FieldName = 'toplam_net'
    end
    object tablo_sinavlarpuan_1: TFloatField
      FieldName = 'puan_1'
    end
    object tablo_sinavlarderece_1: TIntegerField
      FieldName = 'derece_1'
    end
    object tablo_sinavlarpuan_2: TFloatField
      FieldName = 'puan_2'
    end
    object tablo_sinavlarderece_2: TIntegerField
      FieldName = 'derece_2'
    end
    object tablo_sinavlarpuan_3: TFloatField
      FieldName = 'puan_3'
    end
    object tablo_sinavlarsinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_sinavlarderece_local_1: TIntegerField
      FieldName = 'derece_local_1'
    end
    object tablo_sinavlarderece_local_2: TIntegerField
      FieldName = 'derece_local_2'
    end
    object tablo_sinavlarderece_3: TIntegerField
      FieldName = 'derece_3'
    end
    object tablo_sinavlarderece_local_3: TIntegerField
      FieldName = 'derece_local_3'
    end
    object tablo_sinavlarid: TIntegerField
      FieldName = 'id'
    end
    object tablo_sinavlarturkce_soru_sayisi: TSmallintField
      FieldName = 'turkce_soru_sayisi'
    end
    object tablo_sinavlartarih_soru_sayisi: TSmallintField
      FieldName = 'tarih_soru_sayisi'
    end
    object tablo_sinavlarcografya_soru_sayisi: TSmallintField
      FieldName = 'cografya_soru_sayisi'
    end
    object tablo_sinavlarfelsefe_soru_sayisi: TSmallintField
      FieldName = 'felsefe_soru_sayisi'
    end
    object tablo_sinavlarsosyal_soru_sayisi: TSmallintField
      FieldName = 'sosyal_soru_sayisi'
    end
    object tablo_sinavlarmatemat_soru_sayisi: TSmallintField
      FieldName = 'matemat_soru_sayisi'
    end
    object tablo_sinavlargeometri_soru_sayisi: TSmallintField
      FieldName = 'geometri_soru_sayisi'
    end
    object tablo_sinavlarmatematik_soru_sayisi: TSmallintField
      FieldName = 'matematik_soru_sayisi'
    end
    object tablo_sinavlarfizik_soru_sayisi: TSmallintField
      FieldName = 'fizik_soru_sayisi'
    end
    object tablo_sinavlarkimya_soru_sayisi: TSmallintField
      FieldName = 'kimya_soru_sayisi'
    end
    object tablo_sinavlarbiyoloji_soru_sayisi: TSmallintField
      FieldName = 'biyoloji_soru_sayisi'
    end
    object tablo_sinavlarfen_soru_sayisi: TSmallintField
      FieldName = 'fen_soru_sayisi'
    end
  end
  object mn_sinavlar: TcxGridPopupMenu
    Grid = gr_sivlar1
    PopupMenus = <>
    Left = 313
    Top = 312
  end
  object ara_notlar: TDataSource
    DataSet = tablo_notlar
    Left = 532
    Top = 192
  end
  object tablo_notlar: TZQuery
    Connection = dershane.data_dershane
    RequestLive = True
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from rehberlik_notlari where donemi =:par1 and ogr_no =' +
        ':par2')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    MasterFields = 'donemi;ogr_no'
    MasterSource = ara_ogrenciler
    IndexFieldNames = 'donemi;ogr_no'
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 532
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_notlarid: TLargeintField
      FieldName = 'id'
    end
    object tablo_notlardonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_notlarogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_notlartarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_notlarnotu: TStringField
      FieldName = 'notu'
      Size = 255
    end
  end
  object rp_yazdir: TdxComponentPrinter
    CurrentLink = rp_yazdirLink1
    Version = 0
    Left = 605
    Top = 261
    object rp_yazdirLink1: TdxDBTeeChartReportLink
      Active = True
      Caption = 'New Report'
      Component = gf_durum
      DateTime = 38323.484063287040000000
      DesignerHelpContext = 0
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.MinMargins.Bottom = 0
      PrinterPage.MinMargins.Left = 0
      PrinterPage.MinMargins.Right = 0
      PrinterPage.MinMargins.Top = 0
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      BuiltInReportLink = True
    end
  end
end
