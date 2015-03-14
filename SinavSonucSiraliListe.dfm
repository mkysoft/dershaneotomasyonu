object fr_sirali_listeler: Tfr_sirali_listeler
  Left = 278
  Top = 236
  Width = 700
  Height = 442
  Caption = 'S'#305'ral'#305' Listeler'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 297
    Height = 408
    Align = alLeft
    Caption = ' Bir S'#305'nav Se'#231'iniz'
    TabOrder = 0
    object gr_sinav_adlari: TcxGrid
      Left = 2
      Top = 15
      Width = 293
      Height = 391
      Align = alClient
      TabOrder = 0
      object sinav_adlari: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ara_sinav_adlari
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = sinav_adlarisinav_adi
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object sinav_adlarituru: TcxGridDBColumn
          Caption = 'T'#252'r'
          DataBinding.FieldName = 'turu'
          Width = 38
        end
        object sinav_adlarisinav_tarihi: TcxGridDBColumn
          Caption = 'S'#305'nav Tarihi'
          DataBinding.FieldName = 'sinav_tarihi'
          Options.Filtering = False
          Width = 67
        end
        object sinav_adlarisinav_adi: TcxGridDBColumn
          Caption = 'S'#305'nav Ad'#305
          DataBinding.FieldName = 'sinav_adi'
          Options.Filtering = False
          Width = 144
        end
        object sinav_adlarisinav_no: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'sinav_no'
          Options.Filtering = False
          Width = 30
        end
      end
      object gr_sinav_adlariLevel1: TcxGridLevel
        GridView = sinav_adlari
      end
    end
  end
  object Panel1: TPanel
    Left = 305
    Top = 0
    Width = 387
    Height = 408
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object gr_sinavlar: TcxGrid
      Left = 0
      Top = 49
      Width = 387
      Height = 359
      Align = alClient
      TabOrder = 0
      object sinavlarlgs: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ara_sinavlar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.BandHiding = True
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #214#287'rencinin'
          end
          item
            Caption = 'T'#252'rk'#231'e'
          end
          item
            Caption = 'Sosyal'
          end
          item
            Caption = 'Matematik'
          end
          item
            Caption = 'Fen'
          end
          item
            Caption = 'Toplam'
          end
          item
            Caption = 'Fen A'#287#305'rl'#305'kl'#305
          end
          item
            Caption = 'Toplam'
          end>
        object sinavlarlgsdonemi: TcxGridDBBandedColumn
          Caption = 'D'#246'nemi'
          DataBinding.FieldName = 'donemi'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarlgssinifi: TcxGridDBBandedColumn
          Caption = 'S'#305'n'#305'f'#305
          DataBinding.FieldName = 'sinifi'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgsogr_no: TcxGridDBBandedColumn
          Caption = 'No'
          DataBinding.FieldName = 'ogr_no'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgsadi: TcxGridDBBandedColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'adi'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object sinavlarlgssoyadi: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'soyadi'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object sinavlarlgsturkce_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'turkce_dogru'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgsturkce_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'turkce_yanlis'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarlgsturkce_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'turkce_net'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgssosyal1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyal1_dogru'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgssosyal1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyal1_yanlis'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarlgssosyal1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyal1_net'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgsmatematik1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'matematik1_dogru'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgsmatematik1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'matematik1_yanlis'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarlgsmatematik1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'matematik1_net'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgsfen1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fen1_dogru'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgsfen1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fen1_yanlis'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarlgsfen1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fen1_net'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgstoplam_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'toplam_dogru'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgstoplam_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'toplam_yanlis'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarlgstoplam_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'toplam_net'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgspuan_1: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_1'
          Options.Filtering = False
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgsderece_1: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_1'
          Options.Filtering = False
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarlgsderece_local_1: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_1'
          Options.Filtering = False
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgspuan_2: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_2'
          Options.Filtering = False
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarlgsderece_2: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_2'
          Options.Filtering = False
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarlgsderece_local_2: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_2'
          Options.Filtering = False
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object sinavlario: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ara_sinavlar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.BandHiding = True
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #214#287'rencinin'
          end
          item
            Caption = 'T'#252'rk'#231'e'
          end
          item
            Caption = 'Sosyal'
          end
          item
            Caption = 'Matematik'
          end
          item
            Caption = 'Fen'
          end
          item
            Caption = #304'ngilizce'
          end
          item
            Caption = 'Toplam'
          end
          item
            Caption = 'Toplam'
          end>
        object sinavlariodonemi: TcxGridDBBandedColumn
          Caption = 'D'#246'nemi'
          DataBinding.FieldName = 'donemi'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlariosinifi: TcxGridDBBandedColumn
          Caption = 'S'#305'n'#305'f'#305
          DataBinding.FieldName = 'sinifi'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarioogr_no: TcxGridDBBandedColumn
          Caption = 'No'
          DataBinding.FieldName = 'ogr_no'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarioadi: TcxGridDBBandedColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'adi'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object sinavlariosoyadi: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'soyadi'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object sinavlarioturkce_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'turkce_dogru'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarioturkce_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'turkce_yanlis'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarioturkce_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'turkce_net'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlariososyal1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyal1_dogru'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlariososyal1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyal1_yanlis'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlariososyal1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyal1_net'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlariomatematik1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'matematik1_dogru'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlariomatematik1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'matematik1_yanlis'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlariomatematik1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'matematik1_net'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlariofen1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fen1_dogru'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlariofen1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fen1_yanlis'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlariofen1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fen1_net'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarioingilizce_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'ingilizce_dogru'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarioingilizce_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'ingilizce_yanlis'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarioingilizce_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'ingilizce_net'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlariotoplam_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'toplam_dogru'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlariotoplam_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'toplam_yanlis'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlariotoplam_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'toplam_net'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlariopuan_1: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_1'
          Options.Filtering = False
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarioderece_1: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_1'
          Options.Filtering = False
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarioderece_local_1: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_1'
          Options.Filtering = False
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object sinavlarkpss: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ara_sinavlar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.BandHiding = True
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #214#287'rencinin'
          end
          item
            Caption = 'Genel Yetenek'
          end
          item
            Caption = 'Genel K'#252'lt'#252'r'
          end
          item
            Caption = 'E'#287'itim Bilimleri'
          end
          item
            Caption = 'Toplam'
          end
          item
            Caption = 'KPSS 3'
          end
          item
            Caption = 'KPSS 10'
          end>
        object sinavlarkpssdonemi: TcxGridDBBandedColumn
          Caption = 'D'#246'nemi'
          DataBinding.FieldName = 'donemi'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarkpsssinifi: TcxGridDBBandedColumn
          Caption = 'S'#305'n'#305'f'#305
          DataBinding.FieldName = 'sinifi'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarkpssogr_no: TcxGridDBBandedColumn
          Caption = 'No'
          DataBinding.FieldName = 'ogr_no'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarkpssadi: TcxGridDBBandedColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'adi'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object sinavlarkpsssoyadi: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'soyadi'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object sinavlarkpssturkce_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'turkce_dogru'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarkpssturkce_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'turkce_yanlis'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarkpssturkce_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'turkce_net'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarkpsssosyal1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyal1_dogru'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarkpsssosyal1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyal1_yanlis'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarkpsssosyal1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyal1_net'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarkpssmatematik1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'matematik1_dogru'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarkpssmatematik1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'matematik1_yanlis'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarkpssmatematik1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'matematik1_net'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarkpsstoplam_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'toplam_dogru'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarkpsstoplam_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'toplam_yanlis'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarkpsstoplam_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'toplam_net'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarkpsspuan_1: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_1'
          Options.Filtering = False
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarkpssderece_1: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_1'
          Options.Filtering = False
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarkpssderece_local_1: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_1'
          Options.Filtering = False
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarkpsspuan_2: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_2'
          Options.Filtering = False
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarkpssderece_2: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_2'
          Options.Filtering = False
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarkpssderece_local_2: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_2'
          Options.Filtering = False
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object sinavlaross: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ara_sinavlar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.BandHiding = True
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #214#287'rencinin'
          end
          item
            Caption = 'T'#252'rk'#231'e'
          end
          item
            Caption = 'Tarih-1'
            Visible = False
          end
          item
            Caption = 'Co'#287'rafya'
            Visible = False
          end
          item
            Caption = 'Felsefe'
            Visible = False
          end
          item
            Caption = 'Sosyal-1'
          end
          item
            Caption = 'Cebir-1'
            Visible = False
          end
          item
            Caption = 'Geometri-1'
            Visible = False
          end
          item
            Caption = 'Matemat-1'
          end
          item
            Caption = 'Fizik-1'
            Visible = False
          end
          item
            Caption = 'Kimya-1'
            Visible = False
          end
          item
            Caption = 'Biyoloji-1'
            Visible = False
          end
          item
            Caption = 'Fen-1'
          end
          item
            Caption = 'Edebiyat'
            Visible = False
          end
          item
            Caption = 'T'#252'r.'#199'o'#287
            Visible = False
          end
          item
            Caption = 'Psikoloji'
            Visible = False
          end
          item
            Caption = 'Ed-Sos'
          end
          item
            Caption = 'Tarih-2'
            Visible = False
          end
          item
            Caption = #220'lk.Co'#287
            Visible = False
          end
          item
            Caption = 'Sosyoloji'
            Visible = False
          end
          item
            Caption = 'Mant'#305'k'
            Visible = False
          end
          item
            Caption = 'Sosyal-2'
          end
          item
            Caption = 'Cebir-2'
            Visible = False
          end
          item
            Caption = 'Geomet-2'
            Visible = False
          end
          item
            Caption = 'Matemat-2'
          end
          item
            Caption = 'Fizik-2'
            Visible = False
          end
          item
            Caption = 'Kimya-2'
            Visible = False
          end
          item
            Caption = 'Biyoloji-2'
            Visible = False
          end
          item
            Caption = 'Fen-2'
          end
          item
            Caption = 'Toplam'
            Visible = False
          end
          item
            Caption = 'Say'#305'sal-1'
          end
          item
            Caption = 'S'#246'zel-1'
          end
          item
            Caption = 'EA-1'
          end
          item
            Caption = 'Say'#305'sal-2'
          end
          item
            Caption = 'S'#246'zel-2'
          end
          item
            Caption = 'EA-2'
          end>
        object sinavlarossdonemi: TcxGridDBBandedColumn
          Caption = 'D'#246'nemi'
          DataBinding.FieldName = 'donemi'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosssinifi: TcxGridDBBandedColumn
          Caption = 'S'#305'n'#305'f'#305
          DataBinding.FieldName = 'sinifi'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossogr_no: TcxGridDBBandedColumn
          Caption = 'No'
          DataBinding.FieldName = 'ogr_no'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossadi: TcxGridDBBandedColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'adi'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object sinavlarosssoyadi: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'soyadi'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object sinavlarossturkce_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'turkce_dogru'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossturkce_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'turkce_yanlis'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossturkce_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'turkce_net'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosstarih1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'tarih1_dogru'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosstarih1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'tarih1_yanlis'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosstarih1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'tarih1_net'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosscografya_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'cografya_dogru'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosscografya_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'cografya_yanlis'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosscografya_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'cografya_net'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossfelsefe_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'felsefe_dogru'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossfelsefe_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'felsefe_yanlis'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossfelsefe_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'felsefe_net'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosssosyal1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyal1_dogru'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosssosyal1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyal1_yanlis'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosssosyal1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyal1_net'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosscebir1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'cebir1_dogru'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosscebir1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'cebir1_yanlis'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosscebir1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'cebir1_net'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossgeometri1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'geometri1_dogru'
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossgeometri1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'geometri1_yanlis'
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossgeometri1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'geometri1_net'
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossmatematik1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'matematik1_dogru'
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossmatematik1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'matematik1_yanlis'
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossmatematik1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'matematik1_net'
          Position.BandIndex = 8
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossfizik1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fizik1_dogru'
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossfizik1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fizik1_yanlis'
          Position.BandIndex = 9
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossfizik1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fizik1_net'
          Position.BandIndex = 9
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosskimya1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'kimya1_dogru'
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosskimya1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'kimya1_yanlis'
          Position.BandIndex = 10
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosskimya1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'kimya1_net'
          Position.BandIndex = 10
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossbiyoloji1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'biyoloji1_dogru'
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossbiyoloji1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'biyoloji1_yanlis'
          Position.BandIndex = 11
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossbiyoloji1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'biyoloji1_net'
          Position.BandIndex = 11
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossfen1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fen1_dogru'
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossfen1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fen1_yanlis'
          Position.BandIndex = 12
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossfen1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fen1_net'
          Position.BandIndex = 12
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossedebiyat_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'edebiyat_dogru'
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossedebiyat_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'edebiyat_yanlis'
          Position.BandIndex = 13
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossedebiyat_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'edebiyat_net'
          Position.BandIndex = 13
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossturkiyecografyasi_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'turkiyecografyasi_dogru'
          Position.BandIndex = 14
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossturkiyecografyasi_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'turkiyecografyasi_yanlis'
          Position.BandIndex = 14
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossturkiyecografyasi_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'turkiyecografyasi_net'
          Position.BandIndex = 14
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosspsikoloji_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'psikoloji_dogru'
          Position.BandIndex = 15
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosspsikoloji_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'psikoloji_yanlis'
          Position.BandIndex = 15
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosspsikoloji_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'psikoloji_net'
          Position.BandIndex = 15
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossedebiyatsosyal_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'edebiyatsosyal_dogru'
          Position.BandIndex = 16
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossedebiyatsosyal_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'edebiyatsosyal_yanlis'
          Position.BandIndex = 16
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossedebiyatsosyal_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'edebiyatsosyal_net'
          Position.BandIndex = 16
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosstarih2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'tarih2_dogru'
          Position.BandIndex = 17
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosstarih2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'tarih2_yanlis'
          Position.BandIndex = 17
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosstarih2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'tarih2_net'
          Position.BandIndex = 17
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossulkelercografyasi_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'ulkelercografyasi_dogru'
          Position.BandIndex = 18
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossulkelercografyasi_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'ulkelercografyasi_yanlis'
          Position.BandIndex = 18
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossulkelercografyasi_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'ulkelercografyasi_net'
          Position.BandIndex = 18
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosssosyoloji_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyoloji_dogru'
          Position.BandIndex = 19
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosssosyoloji_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyoloji_yanlis'
          Position.BandIndex = 19
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosssosyoloji_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyoloji_net'
          Position.BandIndex = 19
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossmantik_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'mantik_dogru'
          Position.BandIndex = 20
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossmantik_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'mantik_yanlis'
          Position.BandIndex = 20
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossmantik_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'mantik_net'
          Position.BandIndex = 20
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosssosyal2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyal2_dogru'
          Position.BandIndex = 21
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosssosyal2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyal2_yanlis'
          Position.BandIndex = 21
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosssosyal2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyal2_net'
          Position.BandIndex = 21
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosscebir2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'cebir2_dogru'
          Position.BandIndex = 22
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosscebir2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'cebir2_yanlis'
          Position.BandIndex = 22
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosscebir2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'cebir2_net'
          Position.BandIndex = 22
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossgeometri2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'geometri2_dogru'
          Position.BandIndex = 23
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossgeometri2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'geometri2_yanlis'
          Position.BandIndex = 23
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossgeometri2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'geometri2_net'
          Position.BandIndex = 23
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossmatematik2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'matematik2_dogru'
          Position.BandIndex = 24
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossmatematik2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'matematik2_yanlis'
          Position.BandIndex = 24
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossmatematik2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'matematik2_net'
          Position.BandIndex = 24
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossfizik2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fizik2_dogru'
          Position.BandIndex = 25
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossfizik2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fizik2_yanlis'
          Position.BandIndex = 25
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossfizik2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fizik2_net'
          Position.BandIndex = 25
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosskimya2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'kimya2_dogru'
          Position.BandIndex = 26
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosskimya2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'kimya2_yanlis'
          Position.BandIndex = 26
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosskimya2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'kimya2_net'
          Position.BandIndex = 26
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossbiyoloji2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'biyoloji2_dogru'
          Position.BandIndex = 27
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossbiyoloji2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'biyoloji2_yanlis'
          Position.BandIndex = 27
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossbiyoloji2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'biyoloji2_net'
          Position.BandIndex = 27
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossfen2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fen2_dogru'
          Position.BandIndex = 28
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossfen2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fen2_yanlis'
          Position.BandIndex = 28
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossfen2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fen2_net'
          Position.BandIndex = 28
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosstoplam_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'toplam_dogru'
          Position.BandIndex = 29
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarosstoplam_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'toplam_yanlis'
          Position.BandIndex = 29
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosstoplam_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'toplam_net'
          Position.BandIndex = 29
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosspuan_1: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_1'
          Options.Filtering = False
          Position.BandIndex = 30
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossderece_1: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_1'
          Options.Filtering = False
          Position.BandIndex = 30
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossderece_local_1: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_1'
          Options.Filtering = False
          Position.BandIndex = 30
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosspuan_2: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_2'
          Options.Filtering = False
          Position.BandIndex = 31
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossderece_2: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_2'
          Options.Filtering = False
          Position.BandIndex = 31
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarossderece_local_2: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_2'
          Options.Filtering = False
          Position.BandIndex = 31
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarosspuan_3: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_3'
          Options.Filtering = False
          Position.BandIndex = 32
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossderece_3: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_3'
          Options.Filtering = False
          Position.BandIndex = 32
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossderece_local_3: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_3'
          Options.Filtering = False
          Position.BandIndex = 32
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosspuan_4: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_4'
          Options.Filtering = False
          Position.BandIndex = 33
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossderece_4: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_4'
          Options.Filtering = False
          Position.BandIndex = 33
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossderece_local_4: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_4'
          Options.Filtering = False
          Position.BandIndex = 33
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosspuan_5: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_5'
          Options.Filtering = False
          Position.BandIndex = 34
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossderece_5: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_5'
          Options.Filtering = False
          Position.BandIndex = 34
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossderece_local_5: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_5'
          Options.Filtering = False
          Position.BandIndex = 34
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sinavlarosspuan_6: TcxGridDBBandedColumn
          Caption = 'Puan'
          DataBinding.FieldName = 'puan_6'
          Options.Filtering = False
          Position.BandIndex = 35
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sinavlarossderece_6: TcxGridDBBandedColumn
          Caption = 'Dr'
          DataBinding.FieldName = 'derece_6'
          Options.Filtering = False
          Position.BandIndex = 35
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sinavlarossderece_local_6: TcxGridDBBandedColumn
          Caption = 'LD'
          DataBinding.FieldName = 'derece_local_6'
          Options.Filtering = False
          Position.BandIndex = 35
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object gr_sinavlarLevel1: TcxGridLevel
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 0
      Width = 387
      Height = 49
      Align = alTop
      Caption = ' '#199#305'kt'#305' Se'#231'enekleri '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      TabOrder = 1
      DesignSize = (
        387
        49)
      object bt_exceleaktar: TBitBtn
        Left = 91
        Top = 9
        Width = 73
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Excel'
        TabOrder = 0
        OnClick = bt_exceleaktarClick
        Glyph.Data = {
          C2070000424DC20700000000000036000000280000001C000000170000000100
          1800000000008C07000000000000000000000000000000000000417B57214F39
          214F39214F39214F39214F39214F391A45331A45331A45331A45331A45331A45
          331335291335291335291335291335291335290D281F0D281F0D281F0D281F0D
          281F0A1F190A1F190A1F190A1F19417B575CAA6545A35F45A35F45A35F45A35F
          3F9E5A3F9E5A3F9E5A399755399755399755358C4F358C4F2D87472D87472D87
          47227F40227F40227F401A7A3C1A7A3C1274371274371274370F6C330A6D300A
          1F19417B575CAA656C977E517666517666517666517666517666517666517666
          4B6B604B6B604B6B604B6B604B6B604B6B604B6B60435F59435F59435F59435F
          59435F59435F59435F59435F59435F590F6C330A1F1947815D63B2766C977EE8
          F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADB
          DAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2D2E4D2D2E4D2D2E4
          D2435F591274370A1F194D876273BA836C977EEDF5EDEDF5EDEBF3EBEAF2E9E8
          F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFAAD6B261996426422D
          213B27213B27213B27213B27213B27213B27D5E5D5435F591A7A3C0D281F4D87
          627CC18576A086EFF6EF4B964D26422D26422D26422D26422D26422D26422D26
          422D26422D26422D1A4D2A0F60153287353287351274371C6C3A2C66422C6642
          3A5F51213B27D5E5D5435F59227F400D281F558E6781BC9076A086F1F7F14B96
          4D1274371274371C6C3A1C6C3A2C66422C66423A5F513A5F513A5F510469041D
          781E88C7926DB6752D87472D8747227F40227F40046904D8E7D8D5E5D5435F59
          227F40133529558E6788C79276A086F3F8F3DAE9DA4B964D6DB67573BB7C73BB
          7C6DB67568B06F5CAA6555A45A0469044093479DD0A76DB675409347358C4F2D
          87472D874704690494C79CD8E7D8D8E7D8435F59227F40133529558E6794C79C
          76A086F3F8F3F3F8F3DAE9DA4B964D6DB67573BB7C73BB7C64AC6955A45A0469
          044093479DD0A768B06F499B54499B54409347358C4F0469041A4D2AA8C2A8D9
          E8D9D8E7D84B6B602D874713352958966B94C79C76A086F5F9F5F3F8F3F3F8F3
          DAE9DA4B964D6DB67568B06F55A45A0469044093479DD0A76DB67555A45A55A4
          5A499B54499B540469042D8747227F400F6015DAE9DAD9E8D94B6B602D874713
          352958966B9DD0A781AA8DF6FAF5F5F9F5F3F8F3F3F8F3DAE9DA4B964D55A45A
          046904409347AAD6B273BB7C55A45A55A45A55A45A55A45A0469043A734C5782
          5A558E6757825ADCEADBDAE9DA4B6B602D87471335295F9B729DD0A781AA8DF6
          FAF6F6FAF5F5F9F5F3F8F3F3F8F3DAE9DA1D781E409347AAD6B27CC1855CAA65
          5CAA6555A45A55A45A3A734CA8C2A8E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEA
          DB4B6B60358C4F1335295F9B72AAD6B281AA8DF8FAF8F6FAF6F6FAF5F5F9F5F3
          F8F394C79C4B964DBADEC088C79264AC6964AC695CAA6555A45A57825A046904
          CDDACDE2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADB4B6B60358C4F1A45335F9B
          72AAD6B281AA8DF9FBFAF8FAF8F6FAF6F6FAF594C79C499B54BADEC094C79C6D
          B67568B06F64AC695CAA6557825A579A5E57825A046904CDDACDE2EEE3E2EEE3
          E0EEE0DFECDFDEEBDE4B6B603997551A453366A077AAD6B281AA8DFAFDFAF9FB
          FAF8FAF894C79C55A45AC4E5CA94C79C73BB7C73BB7C6DB67564AC6957825A68
          B06F6DB67555A45A57825A046904CDDACDE2EEE3E2EEE3E0EEE0DFECDF517666
          3997551A453366A077BADEC081AA8DFAFDFAFAFDFA94C79C5CAA65C4E5CA88C7
          927CC1857CC18573BB7C68B06F57825A68B06F73BB7C73BB7C6DB67555A45A57
          825A046904CDDACDE2EEE3E2EEE3E0EEE05176663997551A45336CA67CBADEC0
          8AB795FBFEFB94C79C68B06FC4E5CA9DD0A788C7927CC1857CC18573BB7C6199
          64A8C2A86199646DB67573BB7C73BB7C6DB67555A45A57825A046904CDDACDE2
          EEE3E2EEE35176663F9E5A1A45336CA67CBADEC08AB795FDFEFD6DB675C4E5CA
          9DD0A788C79288C79288C79273BA83619964D8E7D8F3F8F3CDDACD6199646DB6
          7573BB7C73BB7C6DB67555A45A57825A046904E4EFE4E2EEE35176663F9E5A1A
          45336CA67CC4E5CA8AB795FEFFFE6DB6756DB67568B06F64AC6964AC69619964
          619964E3EBE3F5F9F5F3F8F3F3F8F3CDDACD619964619964619964558E675782
          5A57825A57825AE6F0E6E4EFE45176663F9E5A214F3971AA81C4E5CA8AB795FF
          FFFFFEFFFEFDFEFDFBFEFBFAFDFAFAFDFAF9FBFAF8FAF8F6FAF6F6FAF5F5F9F5
          F3F8F3F3F8F3F1F7F1EFF6EFEDF5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1E8E6F0
          E651766645A35F214F3976AF85CCE9D281AA8D8AB7958AB7958AB7958AB7958A
          B7958AB7958AB79581AA8D81AA8D81AA8D81AA8D81AA8D76A08676A08676A086
          76A08676A08676A0866C977E6C977E6C977E6C977E6C977E45A35F214F3976AF
          85CCE9D2CCE9D2CCE9D2C4E5CAC4E5CAC4E5CABADEC0BADEC0BADEC0AAD6B2AA
          D6B2AAD6B29DD0A79DD0A794C79C94C79C88C79281BC907CC18573BA8373BA83
          63B27663B27663B2765CAA655CAA65214F3976AF8576AF8576AF8571AA8171AA
          8171AA816CA67C6CA67C6CA67C66A07766A07766A0775F9B725F9B725F9B7258
          966B558E67558E67558E674D87624D87624D876247815D47815D47815D417B57
          417B57417B57}
      end
      object bt_yazdir: TBitBtn
        Left = 310
        Top = 9
        Width = 73
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'Yazd'#305'r'
        TabOrder = 1
        OnClick = bt_yazdirClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000220B0000220B00000001000000010000212121002121
          290029292900292931003131310039393900424242004A4A4A00525252005A5A
          5A00635A6300636363006B6B6B007B7B7B00848484008C84840084C684008C8C
          8C009C949C009C9C9C00A59C9C00A59CA500A5A5A500ADA5A500F7B5A500FFBD
          A500ADA5AD00ADADAD00B5ADAD00ADB5AD00E7B5AD00FFC6AD00B5ADB500B5B5
          B500BDB5B500DEB5B500E7BDB500F7BDB500FFC6B500FFCEB500BDB5BD00BDBD
          BD00C6BDBD00E7BDBD00E7C6BD00FFCEBD00FFD6BD00C6BDC600C6C6C600CEC6
          C600E7C6C600E7CEC600FFD6C600C6C6CE00CEC6CE00CECECE00D6CECE00EFCE
          CE00EFD6CE00FFDECE00D6CED600D6D6D600DED6D600F7DED600FFDED600FFE7
          D600D6F7D600D6D6DE00D6DEDE00DEDEDE00E7DEDE00EFDEDE00DEE7DE00E7E7
          DE00FFE7DE00FFEFDE00E7E7E700EFE7E700FFEFE700EFEFEF00FFF7EF00F7F7
          F700FFF7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00535353535353
          53535353535353535353535353535353535353535353535353531B361B135353
          1B3D3E291B53535353535353535353531B305151291B090B0E1B31464C3D2153
          5353535353531B224C54544F221C070004060B0E1B374C4517535353531B4554
          5251524F2121120C07040204060B11165353531637515151514C301B13161B21
          1C130D0905020614535353164F514F452917213D2116141314172121160E0C14
          535353164C3E2216223D454C4C3D30221B161413161B2116535353161C16293D
          453D3D4D51514F4C3D3729211716141353535316293D3D3D3D3D4C51302F3745
          4C4C453D37302916535353163D3D3D3D3D4551291D10211B1B29303D45453D1B
          5353535329453D3D4C4C21294F424F4C25291C171B292921535353535321303D
          301B315151514F4C4C4C453D3717165353535353535353142945371B30454C4C
          4C4C4C4530225353535353535353531B5151452929303D3D3D3D301B22535353
          5353535353535353474A41403F3F3F4746453053535353535353535353535353
          2C4A403B342D26261F3953535353535353535353535353532C4A403B342D261F
          18535353535353535353535353535353334A403B342D261F1853535353535353
          5353535353535353334A403B342D261F25535353535353535353535353535353
          334A403B342D2625255353535353535353535353535353324E4A403B342D2725
          53535353535353535353535353535333504A413B343425255353535353535353
          5353535353532333322C2C24241E255353535353535353535353}
      end
      object bt_sinif_liste: TBitBtn
        Left = 168
        Top = 9
        Width = 138
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 'S'#305'n'#305'f Baz'#305'nda Yazd'#305'r'
        TabOrder = 2
        OnClick = bt_sinif_listeClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000220B0000220B00000001000000010000212121002121
          290029292900292931003131310039393900424242004A4A4A00525252005A5A
          5A00635A6300636363006B6B6B007B7B7B00848484008C84840084C684008C8C
          8C009C949C009C9C9C00A59C9C00A59CA500A5A5A500ADA5A500F7B5A500FFBD
          A500ADA5AD00ADADAD00B5ADAD00ADB5AD00E7B5AD00FFC6AD00B5ADB500B5B5
          B500BDB5B500DEB5B500E7BDB500F7BDB500FFC6B500FFCEB500BDB5BD00BDBD
          BD00C6BDBD00E7BDBD00E7C6BD00FFCEBD00FFD6BD00C6BDC600C6C6C600CEC6
          C600E7C6C600E7CEC600FFD6C600C6C6CE00CEC6CE00CECECE00D6CECE00EFCE
          CE00EFD6CE00FFDECE00D6CED600D6D6D600DED6D600F7DED600FFDED600FFE7
          D600D6F7D600D6D6DE00D6DEDE00DEDEDE00E7DEDE00EFDEDE00DEE7DE00E7E7
          DE00FFE7DE00FFEFDE00E7E7E700EFE7E700FFEFE700EFEFEF00FFF7EF00F7F7
          F700FFF7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00535353535353
          53535353535353535353535353535353535353535353535353531B361B135353
          1B3D3E291B53535353535353535353531B305151291B090B0E1B31464C3D2153
          5353535353531B224C54544F221C070004060B0E1B374C4517535353531B4554
          5251524F2121120C07040204060B11165353531637515151514C301B13161B21
          1C130D0905020614535353164F514F452917213D2116141314172121160E0C14
          535353164C3E2216223D454C4C3D30221B161413161B2116535353161C16293D
          453D3D4D51514F4C3D3729211716141353535316293D3D3D3D3D4C51302F3745
          4C4C453D37302916535353163D3D3D3D3D4551291D10211B1B29303D45453D1B
          5353535329453D3D4C4C21294F424F4C25291C171B292921535353535321303D
          301B315151514F4C4C4C453D3717165353535353535353142945371B30454C4C
          4C4C4C4530225353535353535353531B5151452929303D3D3D3D301B22535353
          5353535353535353474A41403F3F3F4746453053535353535353535353535353
          2C4A403B342D26261F3953535353535353535353535353532C4A403B342D261F
          18535353535353535353535353535353334A403B342D261F1853535353535353
          5353535353535353334A403B342D261F25535353535353535353535353535353
          334A403B342D2625255353535353535353535353535353324E4A403B342D2725
          53535353535353535353535353535333504A413B343425255353535353535353
          5353535353532333322C2C24241E255353535353535353535353}
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 297
    Top = 0
    Width = 8
    Height = 408
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = GroupBox1
  end
  object PnlSiniflar: TPanel
    Left = 408
    Top = 100
    Width = 133
    Height = 281
    BevelInner = bvLowered
    BiDiMode = bdLeftToRight
    Color = 14090197
    ParentBiDiMode = False
    TabOrder = 3
    Visible = False
    object ClbSiniflar: TcxCheckListBox
      Left = 2
      Top = 32
      Width = 129
      Height = 220
      Align = alClient
      Items = <>
      Sorted = True
      Style.BorderStyle = cbsNone
      Style.Color = 14090197
      TabOrder = 0
    end
    object cxLabel1: TcxLabel
      Left = 2
      Top = 2
      Width = 129
      Height = 30
      Align = alTop
      Caption = 'Yazd'#305'rmak istedi'#287'inizi s'#305'n'#305'flar'#305' se'#231'iniz.'
      ParentColor = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Style.Color = 14090197
      Style.TransparentBorder = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 252
      Width = 129
      Height = 27
      Align = alBottom
      BevelOuter = bvNone
      Color = 14090197
      TabOrder = 2
      object BtSinifYazdirTamam: TcxButton
        Left = 2
        Top = 1
        Width = 62
        Height = 25
        Caption = 'Tamam'
        TabOrder = 0
        OnClick = BtSinifYazdirTamamClick
      end
      object BtSinifYazdirIptal: TcxButton
        Left = 66
        Top = 1
        Width = 62
        Height = 25
        Caption = #304'ptal'
        TabOrder = 1
        OnClick = BtSinifYazdirIptalClick
      end
    end
  end
  object tablo_sinavlar: TZReadOnlyQuery
    Connection = veriler.data_dershane
    OnFilterRecord = tablo_sinavlarFilterRecord
    SQL.Strings = (
      'select * from sinavsonuc where sinav_no =:p0')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 144
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object tablo_sinavlarsinav_no: TIntegerField
      FieldName = 'sinav_no'
      Required = True
    end
    object tablo_sinavlarsinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_sinavlardonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_sinavlarogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_sinavlaradi: TStringField
      FieldName = 'adi'
      Required = True
      Size = 15
    end
    object tablo_sinavlarsoyadi: TStringField
      FieldName = 'soyadi'
      Required = True
      Size = 15
    end
    object tablo_sinavlarturkce_dogru: TIntegerField
      FieldName = 'turkce_dogru'
    end
    object tablo_sinavlarturkce_yanlis: TIntegerField
      FieldName = 'turkce_yanlis'
    end
    object tablo_sinavlarturkce_net: TFloatField
      FieldName = 'turkce_net'
    end
    object tablo_sinavlartarih1_dogru: TSmallintField
      FieldName = 'tarih1_dogru'
    end
    object tablo_sinavlartarih1_yanlis: TSmallintField
      FieldName = 'tarih1_yanlis'
    end
    object tablo_sinavlartarih1_net: TFloatField
      FieldName = 'tarih1_net'
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
    object tablo_sinavlarsosyal1_dogru: TIntegerField
      FieldName = 'sosyal1_dogru'
    end
    object tablo_sinavlarsosyal1_yanlis: TIntegerField
      FieldName = 'sosyal1_yanlis'
    end
    object tablo_sinavlarsosyal1_net: TFloatField
      FieldName = 'sosyal1_net'
    end
    object tablo_sinavlarcebir1_dogru: TSmallintField
      FieldName = 'cebir1_dogru'
    end
    object tablo_sinavlarcebir1_yanlis: TSmallintField
      FieldName = 'cebir1_yanlis'
    end
    object tablo_sinavlarcebir1_net: TFloatField
      FieldName = 'cebir1_net'
    end
    object tablo_sinavlargeometri1_dogru: TSmallintField
      FieldName = 'geometri1_dogru'
    end
    object tablo_sinavlargeometri1_yanlis: TSmallintField
      FieldName = 'geometri1_yanlis'
    end
    object tablo_sinavlargeometri1_net: TFloatField
      FieldName = 'geometri1_net'
    end
    object tablo_sinavlarmatematik1_dogru: TIntegerField
      FieldName = 'matematik1_dogru'
    end
    object tablo_sinavlarmatematik1_yanlis: TIntegerField
      FieldName = 'matematik1_yanlis'
    end
    object tablo_sinavlarmatematik1_net: TFloatField
      FieldName = 'matematik1_net'
    end
    object tablo_sinavlarfizik1_dogru: TSmallintField
      FieldName = 'fizik1_dogru'
    end
    object tablo_sinavlarfizik1_yanlis: TSmallintField
      FieldName = 'fizik1_yanlis'
    end
    object tablo_sinavlarfizik1_net: TFloatField
      FieldName = 'fizik1_net'
    end
    object tablo_sinavlarkimya1_dogru: TSmallintField
      FieldName = 'kimya1_dogru'
    end
    object tablo_sinavlarkimya1_yanlis: TSmallintField
      FieldName = 'kimya1_yanlis'
    end
    object tablo_sinavlarkimya1_net: TFloatField
      FieldName = 'kimya1_net'
    end
    object tablo_sinavlarbiyoloji1_dogru: TSmallintField
      FieldName = 'biyoloji1_dogru'
    end
    object tablo_sinavlarbiyoloji1_yanlis: TSmallintField
      FieldName = 'biyoloji1_yanlis'
    end
    object tablo_sinavlarbiyoloji1_net: TFloatField
      FieldName = 'biyoloji1_net'
    end
    object tablo_sinavlarfen1_dogru: TIntegerField
      FieldName = 'fen1_dogru'
    end
    object tablo_sinavlarfen1_yanlis: TIntegerField
      FieldName = 'fen1_yanlis'
    end
    object tablo_sinavlarfen1_net: TFloatField
      FieldName = 'fen1_net'
    end
    object tablo_sinavlaredebiyat_dogru: TIntegerField
      FieldName = 'edebiyat_dogru'
    end
    object tablo_sinavlaredebiyat_yanlis: TIntegerField
      FieldName = 'edebiyat_yanlis'
    end
    object tablo_sinavlaredebiyat_net: TFloatField
      FieldName = 'edebiyat_net'
    end
    object tablo_sinavlarturkiyecografyasi_dogru: TIntegerField
      FieldName = 'turkiyecografyasi_dogru'
    end
    object tablo_sinavlarturkiyecografyasi_yanlis: TIntegerField
      FieldName = 'turkiyecografyasi_yanlis'
    end
    object tablo_sinavlarturkiyecografyasi_net: TFloatField
      FieldName = 'turkiyecografyasi_net'
    end
    object tablo_sinavlarpsikoloji_dogru: TIntegerField
      FieldName = 'psikoloji_dogru'
    end
    object tablo_sinavlarpsikoloji_yanlis: TIntegerField
      FieldName = 'psikoloji_yanlis'
    end
    object tablo_sinavlarpsikoloji_net: TFloatField
      FieldName = 'psikoloji_net'
    end
    object tablo_sinavlaredebiyatsosyal_dogru: TIntegerField
      FieldName = 'edebiyatsosyal_dogru'
    end
    object tablo_sinavlaredebiyatsosyal_yanlis: TIntegerField
      FieldName = 'edebiyatsosyal_yanlis'
    end
    object tablo_sinavlaredebiyatsosyal_net: TFloatField
      FieldName = 'edebiyatsosyal_net'
    end
    object tablo_sinavlartarih2_dogru: TIntegerField
      FieldName = 'tarih2_dogru'
    end
    object tablo_sinavlartarih2_yanlis: TIntegerField
      FieldName = 'tarih2_yanlis'
    end
    object tablo_sinavlartarih2_net: TFloatField
      FieldName = 'tarih2_net'
    end
    object tablo_sinavlarulkelercografyasi_dogru: TIntegerField
      FieldName = 'ulkelercografyasi_dogru'
    end
    object tablo_sinavlarulkelercografyasi_yanlis: TIntegerField
      FieldName = 'ulkelercografyasi_yanlis'
    end
    object tablo_sinavlarulkelercografyasi_net: TFloatField
      FieldName = 'ulkelercografyasi_net'
    end
    object tablo_sinavlarsosyoloji_dogru: TIntegerField
      FieldName = 'sosyoloji_dogru'
    end
    object tablo_sinavlarsosyoloji_yanlis: TIntegerField
      FieldName = 'sosyoloji_yanlis'
    end
    object tablo_sinavlarsosyoloji_net: TFloatField
      FieldName = 'sosyoloji_net'
    end
    object tablo_sinavlarmantik_dogru: TIntegerField
      FieldName = 'mantik_dogru'
    end
    object tablo_sinavlarmantik_yanlis: TIntegerField
      FieldName = 'mantik_yanlis'
    end
    object tablo_sinavlarmantik_net: TFloatField
      FieldName = 'mantik_net'
    end
    object tablo_sinavlarsosyal2_dogru: TIntegerField
      FieldName = 'sosyal2_dogru'
    end
    object tablo_sinavlarsosyal2_yanlis: TIntegerField
      FieldName = 'sosyal2_yanlis'
    end
    object tablo_sinavlarsosyal2_net: TFloatField
      FieldName = 'sosyal2_net'
    end
    object tablo_sinavlarcebir2_dogru: TIntegerField
      FieldName = 'cebir2_dogru'
    end
    object tablo_sinavlarcebir2_yanlis: TIntegerField
      FieldName = 'cebir2_yanlis'
    end
    object tablo_sinavlarcebir2_net: TFloatField
      FieldName = 'cebir2_net'
    end
    object tablo_sinavlargeometri2_dogru: TIntegerField
      FieldName = 'geometri2_dogru'
    end
    object tablo_sinavlargeometri2_yanlis: TIntegerField
      FieldName = 'geometri2_yanlis'
    end
    object tablo_sinavlargeometri2_net: TFloatField
      FieldName = 'geometri2_net'
    end
    object tablo_sinavlarmatematik2_dogru: TIntegerField
      FieldName = 'matematik2_dogru'
    end
    object tablo_sinavlarmatematik2_yanlis: TIntegerField
      FieldName = 'matematik2_yanlis'
    end
    object tablo_sinavlarmatematik2_net: TFloatField
      FieldName = 'matematik2_net'
    end
    object tablo_sinavlarfizik2_dogru: TIntegerField
      FieldName = 'fizik2_dogru'
    end
    object tablo_sinavlarfizik2_yanlis: TIntegerField
      FieldName = 'fizik2_yanlis'
    end
    object tablo_sinavlarfizik2_net: TFloatField
      FieldName = 'fizik2_net'
    end
    object tablo_sinavlarkimya2_dogru: TIntegerField
      FieldName = 'kimya2_dogru'
    end
    object tablo_sinavlarkimya2_yanlis: TIntegerField
      FieldName = 'kimya2_yanlis'
    end
    object tablo_sinavlarkimya2_net: TFloatField
      FieldName = 'kimya2_net'
    end
    object tablo_sinavlarbiyoloji2_dogru: TIntegerField
      FieldName = 'biyoloji2_dogru'
    end
    object tablo_sinavlarbiyoloji2_yanlis: TIntegerField
      FieldName = 'biyoloji2_yanlis'
    end
    object tablo_sinavlarbiyoloji2_net: TFloatField
      FieldName = 'biyoloji2_net'
    end
    object tablo_sinavlarfen2_dogru: TIntegerField
      FieldName = 'fen2_dogru'
    end
    object tablo_sinavlarfen2_yanlis: TIntegerField
      FieldName = 'fen2_yanlis'
    end
    object tablo_sinavlarfen2_net: TFloatField
      FieldName = 'fen2_net'
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
    object tablo_sinavlarderece_local_1: TIntegerField
      FieldName = 'derece_local_1'
    end
    object tablo_sinavlarpuan_2: TFloatField
      FieldName = 'puan_2'
    end
    object tablo_sinavlarderece_2: TIntegerField
      FieldName = 'derece_2'
    end
    object tablo_sinavlarderece_local_2: TIntegerField
      FieldName = 'derece_local_2'
    end
    object tablo_sinavlarpuan_3: TFloatField
      FieldName = 'puan_3'
    end
    object tablo_sinavlarderece_3: TIntegerField
      FieldName = 'derece_3'
    end
    object tablo_sinavlarderece_local_3: TIntegerField
      FieldName = 'derece_local_3'
    end
    object tablo_sinavlarpuan_4: TFloatField
      FieldName = 'puan_4'
    end
    object tablo_sinavlarderece_4: TIntegerField
      FieldName = 'derece_4'
    end
    object tablo_sinavlarderece_local_4: TIntegerField
      FieldName = 'derece_local_4'
    end
    object tablo_sinavlarpuan_5: TFloatField
      FieldName = 'puan_5'
    end
    object tablo_sinavlarderece_5: TIntegerField
      FieldName = 'derece_5'
    end
    object tablo_sinavlarderece_local_5: TIntegerField
      FieldName = 'derece_local_5'
    end
    object tablo_sinavlarpuan_6: TFloatField
      FieldName = 'puan_6'
    end
    object tablo_sinavlarderece_6: TIntegerField
      FieldName = 'derece_6'
    end
    object tablo_sinavlarderece_local_6: TIntegerField
      FieldName = 'derece_local_6'
    end
    object tablo_sinavlarid: TLargeintField
      FieldName = 'id'
    end
    object tablo_sinavlaringilizce_dogru: TIntegerField
      FieldName = 'ingilizce_dogru'
    end
    object tablo_sinavlaringilizce_yanlis: TIntegerField
      FieldName = 'ingilizce_yanlis'
    end
    object tablo_sinavlaringilizce_net: TFloatField
      FieldName = 'ingilizce_net'
    end
    object tablo_sinavlarcevapturkce: TStringField
      FieldName = 'cevapturkce'
      Size = 255
    end
    object tablo_sinavlarcevapsos1: TStringField
      FieldName = 'cevapsos1'
      Size = 255
    end
    object tablo_sinavlarcevapmat1: TStringField
      FieldName = 'cevapmat1'
      Size = 255
    end
    object tablo_sinavlarcevapfen1: TStringField
      FieldName = 'cevapfen1'
      Size = 255
    end
    object tablo_sinavlarcevapedsos: TStringField
      FieldName = 'cevapedsos'
      Size = 255
    end
    object tablo_sinavlarcevapsos2: TStringField
      FieldName = 'cevapsos2'
      Size = 255
    end
    object tablo_sinavlarcevapmat2: TStringField
      FieldName = 'cevapmat2'
      Size = 255
    end
    object tablo_sinavlarcevapfen2: TStringField
      FieldName = 'cevapfen2'
      Size = 255
    end
    object tablo_sinavlarcevaping: TStringField
      FieldName = 'cevaping'
      Size = 255
    end
    object tablo_sinavlarkitapcik: TStringField
      FieldName = 'kitapcik'
      Size = 1
    end
    object tablo_sinavlarbildirim: TStringField
      FieldName = 'bildirim'
      Size = 10
    end
  end
  object tablo_sinav_adlari: TZReadOnlyQuery
    Connection = veriler.data_dershane
    AfterScroll = tablo_sinav_adlariAfterScroll
    SQL.Strings = (
      
        'select sinav_no,sinav_adi,sinav_tarihi,turu from sinavtanim orde' +
        'r by sinav_tarihi desc,sinav_adi')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 104
    Top = 224
    object tablo_sinav_adlarisinav_adi: TStringField
      FieldName = 'sinav_adi'
      Size = 25
    end
    object tablo_sinav_adlarisinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
    end
    object tablo_sinav_adlarisinav_no: TIntegerField
      FieldName = 'sinav_no'
    end
    object tablo_sinav_adlarituru: TStringField
      FieldName = 'turu'
      Size = 4
    end
  end
  object ara_sinavlar: TDataSource
    DataSet = tablo_sinavlar
    Enabled = False
    Left = 352
    Top = 152
  end
  object ara_sinav_adlari: TDataSource
    DataSet = tablo_sinav_adlari
    Left = 96
    Top = 272
  end
  object mn_sinavlar: TcxGridPopupMenu
    Grid = gr_sinavlar
    PopupMenus = <>
    Left = 436
    Top = 144
  end
  object t_zaman: TTimer
    Enabled = False
    OnTimer = t_zamanTimer
    Left = 156
    Top = 272
  end
  object dosya: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'S'#305'nav Sonu'#231' Listesi'
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosyaCanClose
    Left = 200
    Top = 188
  end
  object pr_siralilisteler: TdxComponentPrinter
    CurrentLink = pr_siralilistelerLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPageSetup, peoPrint]
    Version = 0
    Left = 552
    Top = 212
    object pr_siralilistelerLink1: TdxGridReportLink
      Active = True
      Component = gr_sinavlar
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'G'#214'ZEM DERSHANES'#304)
      PrinterPage.PageHeader.RightTextAlignY = taBottom
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39875.951517303240000000
      BuiltInReportLink = True
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    OnFilterRecord = tablo_sinavlarFilterRecord
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 184
    Top = 92
  end
end
