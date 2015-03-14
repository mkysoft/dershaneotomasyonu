object FrSinavVeriGirisi: TFrSinavVeriGirisi
  Left = 219
  Top = 187
  BorderStyle = bsSingle
  Caption = 'S'#305'nav Veri Giri'#351'i'
  ClientHeight = 456
  ClientWidth = 743
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 309
    Top = 0
    Width = 434
    Height = 456
    Align = alClient
    Caption = ' Girilen '#214#287'renciler'
    TabOrder = 0
    object gr_veriler: TcxGrid
      Left = 2
      Top = 15
      Width = 430
      Height = 408
      Align = alClient
      TabOrder = 0
      object sonuclar: TcxGridDBBandedTableView
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
        DataController.DataSource = ara_sinav
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
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
          end
          item
            Caption = 'Co'#287'rafya'
          end
          item
            Caption = 'Felsefe'
          end
          item
            Caption = 'Sosyal-1'
          end
          item
            Caption = 'Cebir-1'
          end
          item
            Caption = 'Geometri-1'
          end
          item
            Caption = 'Matemat-1'
          end
          item
            Caption = 'Fizik-1'
          end
          item
            Caption = 'Kimya-1'
          end
          item
            Caption = 'Biyoloji-1'
          end
          item
            Caption = 'Fen-1'
          end
          item
            Caption = 'Edebiyat'
          end
          item
            Caption = 'T'#252'r.'#199'o'#287
          end
          item
            Caption = 'Psikoloji'
          end
          item
            Caption = 'Ed-Sos'
          end
          item
            Caption = 'Tarih-2'
          end
          item
            Caption = #220'lk.Co'#287
          end
          item
            Caption = 'Sosyoloji'
          end
          item
            Caption = 'Mant'#305'k'
          end
          item
            Caption = 'Sosyal-2'
          end
          item
            Caption = 'Cebir-2'
          end
          item
            Caption = 'Geomet-2'
          end
          item
            Caption = 'Matemat-2'
          end
          item
            Caption = 'Fizik-2'
          end
          item
            Caption = 'Kimya-2'
          end
          item
            Caption = 'Biyoloji-2'
          end
          item
            Caption = 'Fen-2'
          end
          item
            Caption = #304'ngilizce'
          end
          item
            Caption = 'Toplam'
          end
          item
            Caption = 'Cevaplar'#305
          end>
        object sonuclardonemi: TcxGridDBBandedColumn
          Caption = 'D'#246'nemi'
          DataBinding.FieldName = 'donemi'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarsinifi: TcxGridDBBandedColumn
          Caption = 'S'#305'n'#305'f'#305
          DataBinding.FieldName = 'sinifi'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarogr_no: TcxGridDBBandedColumn
          Caption = 'No'
          DataBinding.FieldName = 'ogr_no'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclaradi: TcxGridDBBandedColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'adi'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object sonuclarsoyadi: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'soyadi'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object sonuclarturkce_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'turkce_dogru'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarturkce_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'turkce_yanlis'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarturkce_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'turkce_net'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclartarih1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'tarih1_dogru'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclartarih1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'tarih1_yanlis'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclartarih1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'tarih1_net'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarcografya_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'cografya_dogru'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarcografya_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'cografya_yanlis'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarcografya_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'cografya_net'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarfelsefe_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'felsefe_dogru'
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarfelsefe_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'felsefe_yanlis'
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarfelsefe_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'felsefe_net'
          Position.BandIndex = 4
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarsosyal1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyal1_dogru'
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarsosyal1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyal1_yanlis'
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarsosyal1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyal1_net'
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarcebir1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'cebir1_dogru'
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarcebir1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'cebir1_yanlis'
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarcebir1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'cebir1_net'
          Position.BandIndex = 6
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclargeometri1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'geometri1_dogru'
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclargeometri1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'geometri1_yanlis'
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclargeometri1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'geometri1_net'
          Position.BandIndex = 7
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarmatematik1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'matematik1_dogru'
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarmatematik1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'matematik1_yanlis'
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarmatematik1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'matematik1_net'
          Position.BandIndex = 8
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarfizik1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fizik1_dogru'
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarfizik1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fizik1_yanlis'
          Position.BandIndex = 9
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarfizik1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fizik1_net'
          Position.BandIndex = 9
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarkimya1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'kimya1_dogru'
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarkimya1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'kimya1_yanlis'
          Position.BandIndex = 10
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarkimya1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'kimya1_net'
          Position.BandIndex = 10
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarbiyoloji1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'biyoloji1_dogru'
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarbiyoloji1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'biyoloji1_yanlis'
          Position.BandIndex = 11
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarbiyoloji1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'biyoloji1_net'
          Position.BandIndex = 11
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarfen1_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fen1_dogru'
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarfen1_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fen1_yanlis'
          Position.BandIndex = 12
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarfen1_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fen1_net'
          Position.BandIndex = 12
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclaredebiyat_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'edebiyat_dogru'
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclaredebiyat_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'edebiyat_yanlis'
          Position.BandIndex = 13
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclaredebiyat_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'edebiyat_net'
          Position.BandIndex = 13
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarturkiyecografyasi_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'turkiyecografyasi_dogru'
          Position.BandIndex = 14
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarturkiyecografyasi_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'turkiyecografyasi_yanlis'
          Position.BandIndex = 14
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarturkiyecografyasi_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'turkiyecografyasi_net'
          Position.BandIndex = 14
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarpsikoloji_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'psikoloji_dogru'
          Position.BandIndex = 15
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarpsikoloji_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'psikoloji_yanlis'
          Position.BandIndex = 15
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarpsikoloji_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'psikoloji_net'
          Position.BandIndex = 15
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclaredebiyatsosyal_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'edebiyatsosyal_dogru'
          Position.BandIndex = 16
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclaredebiyatsosyal_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'edebiyatsosyal_yanlis'
          Position.BandIndex = 16
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclaredebiyatsosyal_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'edebiyatsosyal_net'
          Position.BandIndex = 16
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclartarih2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'tarih2_dogru'
          Position.BandIndex = 17
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclartarih2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'tarih2_yanlis'
          Position.BandIndex = 17
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclartarih2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'tarih2_net'
          Position.BandIndex = 17
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarulkelercografyasi_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'ulkelercografyasi_dogru'
          Position.BandIndex = 18
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarulkelercografyasi_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'ulkelercografyasi_yanlis'
          Position.BandIndex = 18
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarulkelercografyasi_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'ulkelercografyasi_net'
          Position.BandIndex = 18
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarsosyoloji_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyoloji_dogru'
          Position.BandIndex = 19
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarsosyoloji_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyoloji_yanlis'
          Position.BandIndex = 19
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarsosyoloji_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyoloji_net'
          Position.BandIndex = 19
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarmantik_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'mantik_dogru'
          Position.BandIndex = 20
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarmantik_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'mantik_yanlis'
          Position.BandIndex = 20
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarmantik_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'mantik_net'
          Position.BandIndex = 20
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarsosyal2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'sosyal2_dogru'
          Position.BandIndex = 21
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarsosyal2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'sosyal2_yanlis'
          Position.BandIndex = 21
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarsosyal2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'sosyal2_net'
          Position.BandIndex = 21
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarcebir2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'cebir2_dogru'
          Position.BandIndex = 22
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarcebir2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'cebir2_yanlis'
          Position.BandIndex = 22
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarcebir2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'cebir2_net'
          Position.BandIndex = 22
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclargeometri2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'geometri2_dogru'
          Position.BandIndex = 23
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclargeometri2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'geometri2_yanlis'
          Position.BandIndex = 23
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclargeometri2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'geometri2_net'
          Position.BandIndex = 23
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarmatematik2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'matematik2_dogru'
          Position.BandIndex = 24
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarmatematik2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'matematik2_yanlis'
          Position.BandIndex = 24
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarmatematik2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'matematik2_net'
          Position.BandIndex = 24
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarfizik2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fizik2_dogru'
          Position.BandIndex = 25
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarfizik2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fizik2_yanlis'
          Position.BandIndex = 25
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarfizik2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fizik2_net'
          Position.BandIndex = 25
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarkimya2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'kimya2_dogru'
          Position.BandIndex = 26
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarkimya2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'kimya2_yanlis'
          Position.BandIndex = 26
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarkimya2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'kimya2_net'
          Position.BandIndex = 26
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarbiyoloji2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'biyoloji2_dogru'
          Position.BandIndex = 27
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarbiyoloji2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'biyoloji2_yanlis'
          Position.BandIndex = 27
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarbiyoloji2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'biyoloji2_net'
          Position.BandIndex = 27
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarfen2_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'fen2_dogru'
          Position.BandIndex = 28
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarfen2_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'fen2_yanlis'
          Position.BandIndex = 28
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarfen2_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'fen2_net'
          Position.BandIndex = 28
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclaringilizce_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'ingilizce_dogru'
          Position.BandIndex = 29
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclaringilizce_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'ingilizce_yanlis'
          Position.BandIndex = 29
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclaringilizce_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'ingilizce_net'
          Position.BandIndex = 29
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclartoplam_dogru: TcxGridDBBandedColumn
          Caption = 'D'
          DataBinding.FieldName = 'toplam_dogru'
          Position.BandIndex = 30
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclartoplam_yanlis: TcxGridDBBandedColumn
          Caption = 'Y'
          DataBinding.FieldName = 'toplam_yanlis'
          Position.BandIndex = 30
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclartoplam_net: TcxGridDBBandedColumn
          Caption = 'N'
          DataBinding.FieldName = 'toplam_net'
          Position.BandIndex = 30
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarkitapcik: TcxGridDBBandedColumn
          Caption = 'Kitap'#231#305'k'
          DataBinding.FieldName = 'kitapcik'
          Position.BandIndex = 31
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object sonuclarcevapturkce: TcxGridDBBandedColumn
          Caption = 'T'#252'rk'#231'e'
          DataBinding.FieldName = 'cevapturkce'
          Position.BandIndex = 31
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object sonuclarcevapsos1: TcxGridDBBandedColumn
          Caption = 'Sosyal 1'
          DataBinding.FieldName = 'cevapsos1'
          Position.BandIndex = 31
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object sonuclarcevapmat1: TcxGridDBBandedColumn
          Caption = 'Matematik 1'
          DataBinding.FieldName = 'cevapmat1'
          Position.BandIndex = 31
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object sonuclarcevapfen1: TcxGridDBBandedColumn
          Caption = 'Fen 1'
          DataBinding.FieldName = 'cevapfen1'
          Position.BandIndex = 31
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object sonuclarcevapedsos: TcxGridDBBandedColumn
          Caption = 'Edebiyat Sosyal'
          DataBinding.FieldName = 'cevapedsos'
          Position.BandIndex = 31
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object sonuclarcevapsos2: TcxGridDBBandedColumn
          Caption = 'Sosyal 2'
          DataBinding.FieldName = 'cevapsos2'
          Position.BandIndex = 31
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object sonuclarcevapmat2: TcxGridDBBandedColumn
          Caption = 'Matematik 2'
          DataBinding.FieldName = 'cevapmat2'
          Position.BandIndex = 31
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object sonuclarcevapfen2: TcxGridDBBandedColumn
          Caption = 'Fen 2'
          DataBinding.FieldName = 'cevapfen2'
          Position.BandIndex = 31
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object sonuclarcevaping: TcxGridDBBandedColumn
          Caption = #304'ngilizce'
          DataBinding.FieldName = 'cevaping'
          Position.BandIndex = 31
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
      end
      object gr_verilerLevel1: TcxGridLevel
        GridView = sonuclar
      end
    end
    object cxLabel8: TcxLabel
      Left = 2
      Top = 423
      Width = 430
      Height = 31
      TabStop = False
      Align = alBottom
      AutoSize = False
      Caption = 
        '  D'#305#351'ar'#305'dan giren '#246#287'renciler i'#231'in '#246#287'renci  numaras'#305' olarak 3 gir' +
        'in. '#214#287'renci bulmak i'#231'in '#214#287'rencinin Numaras'#305' k'#305'sm'#305'm'#305'n'#305' bo'#351' b'#305'rak'#305 +
        'p Enter'#39' a bas'#305'n'#305'z.'
      Properties.LabelStyle = cxlsRaised
      Properties.PenWidth = 0
      Properties.WordWrap = True
      Style.BorderStyle = ebsFlat
    end
  end
  object sayfalar: TPageControl
    Left = 0
    Top = 0
    Width = 309
    Height = 456
    ActivePage = sayfa_sinav
    Align = alLeft
    TabOrder = 1
    object sayfa_sinav: TTabSheet
      Caption = 'S'#305'nav Bilgileri'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 301
        Height = 428
        Align = alClient
        Caption = 'Bir S'#305'nav Se'#231'iniz '
        TabOrder = 0
        object gr_sinavtanim: TcxGrid
          Left = 2
          Top = 15
          Width = 297
          Height = 411
          Align = alClient
          TabOrder = 0
          object sinavlar: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Enabled = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Enabled = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.NextPage.Enabled = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Enabled = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.SaveBookmark.Enabled = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Enabled = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Enabled = False
            NavigatorButtons.Filter.Visible = False
            OnFocusedRecordChanged = sinavlarFocusedRecordChanged
            DataController.DataSource = ara_sinavtanim
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object sinavlarsinav_no: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'sinav_no'
              Options.Editing = False
              Width = 25
            end
            object sinavlarturu: TcxGridDBColumn
              Caption = 'T'#252'r'#252
              DataBinding.FieldName = 'turu'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #214'SS'
                'OKS')
              Width = 40
            end
            object sinavlarsinav_tarihi: TcxGridDBColumn
              Caption = 'Tarihi'
              DataBinding.FieldName = 'sinav_tarihi'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ReadOnly = False
              Properties.SaveTime = False
              Properties.ShowTime = False
              Width = 62
            end
            object sinavlarsinav_adi: TcxGridDBColumn
              Caption = 'Ad'#305
              DataBinding.FieldName = 'sinav_adi'
              Width = 168
            end
          end
          object gr_sinavtanimLevel1: TcxGridLevel
            GridView = sinavlar
          end
        end
      end
    end
    object sayfa_oss: TTabSheet
      Caption = #214'SS'
      ImageIndex = 1
      OnShow = sayfa_ossShow
      DesignSize = (
        301
        428)
      object Shape4: TShape
        Left = 119
        Top = 331
        Width = 182
        Height = 71
        Brush.Color = 7989991
      end
      object Shape3: TShape
        Left = 119
        Top = 187
        Width = 182
        Height = 95
        Brush.Color = 7989991
      end
      object Shape2: TShape
        Left = 119
        Top = 115
        Width = 182
        Height = 71
        Brush.Color = 14333850
      end
      object Shape1: TShape
        Left = 119
        Top = 283
        Width = 182
        Height = 47
        Brush.Color = 14333850
      end
      object Label11: TLabel
        Left = 83
        Top = 102
        Width = 28
        Height = 13
        Caption = 'Yanl'#305#351
      end
      object Label10: TLabel
        Left = 49
        Top = 102
        Width = 29
        Height = 13
        Caption = 'Do'#287'ru'
      end
      object Label6: TLabel
        Left = 0
        Top = 120
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'T'#252'rk'#231'e'
      end
      object Label12: TLabel
        Left = 0
        Top = 144
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tarih-1'
      end
      object Label13: TLabel
        Left = 0
        Top = 168
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Co'#287'rafya'
      end
      object Label7: TLabel
        Left = 0
        Top = 192
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Felsefe'
      end
      object Label8: TLabel
        Left = 0
        Top = 216
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cebir-1'
      end
      object Label29: TLabel
        Left = 0
        Top = 240
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Geometri-1'
      end
      object Label9: TLabel
        Left = 0
        Top = 264
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fizik-1'
      end
      object Label28: TLabel
        Left = 0
        Top = 288
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kimya-1'
      end
      object Label27: TLabel
        Left = 0
        Top = 312
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Biyoloji-1'
      end
      object Label24: TLabel
        Left = 11
        Top = 4
        Width = 36
        Height = 13
        Caption = 'D'#246'nemi'
      end
      object Label30: TLabel
        Left = 184
        Top = 4
        Width = 44
        Height = 13
        Caption = 'Numaras'#305
      end
      object Label31: TLabel
        Left = 48
        Top = 26
        Width = 69
        Height = 13
        Caption = #214#287'rencinin Ad'#305
      end
      object Label68: TLabel
        Left = 32
        Top = 49
        Width = 86
        Height = 13
        Caption = #214#287'rencinin Soyad'#305
      end
      object Label69: TLabel
        Left = 40
        Top = 72
        Width = 76
        Height = 13
        Caption = #214#287'rencinin S'#305'n'#305'f'#305
      end
      object Label70: TLabel
        Left = 0
        Top = 89
        Width = 121
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = '          1. B'#246'l'#252'm      '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label71: TLabel
        Left = 120
        Top = 89
        Width = 181
        Height = 13
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = '          2. B'#246'l'#252'm                 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 121
        Top = 120
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Edebiyat'
        Transparent = True
      end
      object Label73: TLabel
        Left = 121
        Top = 144
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'T'#252'r.'#199'o'#287'raf'
        Transparent = True
      end
      object Label74: TLabel
        Left = 121
        Top = 168
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Psikoloji'
        Transparent = True
      end
      object Label75: TLabel
        Left = 121
        Top = 192
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tarih-2'
        Transparent = True
      end
      object Label76: TLabel
        Left = 121
        Top = 216
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #220'lke.'#199'o'#287'r'
        Transparent = True
      end
      object Label77: TLabel
        Left = 121
        Top = 240
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sosyoloji'
        Transparent = True
      end
      object Label78: TLabel
        Left = 121
        Top = 264
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Mant'#305'k'
        Transparent = True
      end
      object Label79: TLabel
        Left = 121
        Top = 360
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Kimya-2'
        Transparent = True
      end
      object Label80: TLabel
        Left = 121
        Top = 384
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Biyoloji-2'
        Transparent = True
      end
      object Label83: TLabel
        Left = 121
        Top = 288
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cebir-2'
        Transparent = True
      end
      object Label84: TLabel
        Left = 121
        Top = 312
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Geometri-2'
        Transparent = True
      end
      object Label85: TLabel
        Left = 121
        Top = 336
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fizik-2'
        Transparent = True
      end
      object Label86: TLabel
        Left = 172
        Top = 102
        Width = 29
        Height = 13
        Caption = 'Do'#287'ru'
      end
      object Label87: TLabel
        Left = 206
        Top = 102
        Width = 28
        Height = 13
        Caption = 'Yanl'#305#351
      end
      object Label91: TLabel
        Left = 0
        Top = 336
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sosyal-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label92: TLabel
        Left = 0
        Top = 360
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Matem-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label93: TLabel
        Left = 0
        Top = 384
        Width = 51
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fen-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label94: TLabel
        Left = 244
        Top = 135
        Width = 51
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ed-Sos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label95: TLabel
        Left = 243
        Top = 217
        Width = 51
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sosyal-2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label96: TLabel
        Left = 243
        Top = 291
        Width = 51
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Matem-2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label97: TLabel
        Left = 246
        Top = 354
        Width = 51
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fen-2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object tx_oss_ed_d: TcxTextEdit
        Left = 173
        Top = 116
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 23
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ge2_d: TcxTextEdit
        Left = 173
        Top = 308
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 39
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_fi2_d: TcxTextEdit
        Left = 173
        Top = 332
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 41
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ta2_d: TcxTextEdit
        Left = 173
        Top = 188
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 29
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_p_d: TcxTextEdit
        Left = 173
        Top = 164
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 27
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_uc_d: TcxTextEdit
        Left = 173
        Top = 212
        Width = 29
        Height = 21
        Hint = 'M.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 31
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ssy_d: TcxTextEdit
        Left = 173
        Top = 236
        Width = 29
        Height = 21
        Hint = 'M.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 33
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_mn_d: TcxTextEdit
        Left = 173
        Top = 260
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 35
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ce2_d: TcxTextEdit
        Left = 173
        Top = 284
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 37
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ki2_d: TcxTextEdit
        Left = 173
        Top = 356
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 43
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_bi2_d: TcxTextEdit
        Left = 173
        Top = 380
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 45
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_donemi: TcxComboBox
        Left = 52
        Top = 0
        Width = 97
        Height = 21
        TabOrder = 0
        Text = 'tx_oks_donemi'
        OnKeyPress = tx_oss_donemiKeyPress
      end
      object tx_oss_ogr_no: TcxTextEdit
        Left = 232
        Top = 0
        Width = 61
        Height = 21
        BeepOnEnter = False
        Properties.MaxLength = 4
        TabOrder = 1
        OnKeyPress = tx_oss_ogr_noKeyPress
      end
      object tx_oss_adi: TcxTextEdit
        Left = 124
        Top = 22
        Width = 169
        Height = 21
        BeepOnEnter = False
        Properties.MaxLength = 15
        TabOrder = 2
        OnKeyPress = tx_oss_adiKeyPress
      end
      object tx_oss_soyadi: TcxTextEdit
        Left = 124
        Top = 45
        Width = 169
        Height = 21
        BeepOnEnter = False
        Properties.MaxLength = 15
        TabOrder = 3
        OnKeyPress = tx_oss_soyadiKeyPress
      end
      object tx_oss_sinifi: TcxTextEdit
        Left = 124
        Top = 68
        Width = 69
        Height = 21
        Properties.ReadOnly = True
        TabOrder = 4
      end
      object tx_oss_tc_d: TcxTextEdit
        Left = 173
        Top = 140
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 25
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object bt_oss_ekle: TBitBtn
        Left = 0
        Top = 403
        Width = 300
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Ekle'
        TabOrder = 61
        OnClick = bt_oss_ekleClick
      end
      object tx_oss_ed_y: TcxTextEdit
        Left = 205
        Top = 116
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 24
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_tc_y: TcxTextEdit
        Left = 205
        Top = 140
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 26
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_p_y: TcxTextEdit
        Left = 205
        Top = 164
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 28
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ta2_y: TcxTextEdit
        Left = 205
        Top = 188
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 30
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_uc_y: TcxTextEdit
        Left = 205
        Top = 212
        Width = 29
        Height = 21
        Hint = 'M.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 32
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ssy_y: TcxTextEdit
        Left = 205
        Top = 236
        Width = 29
        Height = 21
        Hint = 'M.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 34
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_mn_y: TcxTextEdit
        Left = 205
        Top = 260
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 36
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ce2_y: TcxTextEdit
        Left = 205
        Top = 284
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 38
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ge2_y: TcxTextEdit
        Left = 205
        Top = 308
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 40
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_fi2_y: TcxTextEdit
        Left = 205
        Top = 332
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 42
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ki2_y: TcxTextEdit
        Left = 205
        Top = 356
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 44
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_bi2_y: TcxTextEdit
        Left = 205
        Top = 380
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 46
        Text = '0'
        OnKeyPress = tx_oss_bi2_yKeyPress
      end
      object tx_oss_t_d: TcxTextEdit
        Left = 51
        Top = 116
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 5
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_t_y: TcxTextEdit
        Left = 83
        Top = 117
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 6
        Text = '0'
        OnKeyPress = tx_oss_t_yKeyPress
      end
      object tx_oss_ta1_y: TcxTextEdit
        Left = 83
        Top = 140
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 8
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ta1_d: TcxTextEdit
        Left = 51
        Top = 140
        Width = 29
        Height = 21
        Hint = 'T.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 7
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_co_d: TcxTextEdit
        Left = 51
        Top = 164
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 9
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_co_y: TcxTextEdit
        Left = 83
        Top = 164
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 10
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_fe_y: TcxTextEdit
        Left = 83
        Top = 188
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 12
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_fe_d: TcxTextEdit
        Left = 51
        Top = 188
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 11
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ce1_d: TcxTextEdit
        Left = 51
        Top = 212
        Width = 29
        Height = 21
        Hint = 'M.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 13
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ce1_y: TcxTextEdit
        Left = 83
        Top = 212
        Width = 29
        Height = 21
        Hint = 'M.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 14
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ge1_y: TcxTextEdit
        Left = 83
        Top = 236
        Width = 29
        Height = 21
        Hint = 'M.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 16
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ge1_d: TcxTextEdit
        Left = 51
        Top = 236
        Width = 29
        Height = 21
        Hint = 'M.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 15
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_fi1_y: TcxTextEdit
        Left = 83
        Top = 260
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 18
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_fi1_d: TcxTextEdit
        Left = 51
        Top = 260
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 17
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ki1_y: TcxTextEdit
        Left = 83
        Top = 284
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 20
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_ki1_d: TcxTextEdit
        Left = 51
        Top = 284
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 19
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_bi1_y: TcxTextEdit
        Left = 83
        Top = 308
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 22
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_bi1_d: TcxTextEdit
        Left = 51
        Top = 308
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        TabOrder = 21
        Text = '0'
        OnKeyPress = tx_oss_t_dKeyPress
      end
      object tx_oss_edsos_d: TcxTextEdit
        Left = 239
        Top = 149
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 53
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_edsos_y: TcxTextEdit
        Left = 270
        Top = 149
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 54
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_so2_d: TcxTextEdit
        Left = 239
        Top = 231
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 55
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_so2_y: TcxTextEdit
        Left = 270
        Top = 231
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 56
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_ma2_d: TcxTextEdit
        Left = 239
        Top = 305
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 57
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_ma2_y: TcxTextEdit
        Left = 270
        Top = 305
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 58
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_f2_d: TcxTextEdit
        Left = 239
        Top = 368
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 59
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_f2_y: TcxTextEdit
        Left = 270
        Top = 368
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 60
        Text = '0'
        OnKeyPress = tx_oss_f2_yKeyPress
      end
      object tx_oss_so1_y: TcxTextEdit
        Left = 83
        Top = 332
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 48
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_so1_d: TcxTextEdit
        Left = 51
        Top = 332
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 47
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_ma1_y: TcxTextEdit
        Left = 83
        Top = 356
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 50
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_ma1_d: TcxTextEdit
        Left = 51
        Top = 356
        Width = 29
        Height = 21
        Hint = 'S.D'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 49
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_f1_y: TcxTextEdit
        Left = 83
        Top = 380
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 52
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object tx_oss_f1_d: TcxTextEdit
        Left = 51
        Top = 380
        Width = 29
        Height = 21
        Hint = 'S.Y'
        BeepOnEnter = False
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
        Properties.MaxLength = 3
        ShowHint = True
        Style.Color = 8257146
        TabOrder = 51
        Text = '0'
        OnKeyPress = tx_oss_so1_dKeyPress
      end
      object cb_netgiris: TCheckBox
        Left = 232
        Top = 71
        Width = 65
        Height = 17
        Caption = 'Net giri'#351'i'
        Checked = True
        State = cbChecked
        TabOrder = 62
      end
    end
    object sayfa_sbs: TTabSheet
      Caption = 'SBS'
      ImageIndex = 2
      OnShow = sayfa_sbsShow
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 301
        Height = 428
        Align = alClient
        Caption = ' '#214#287'renci Bilgileri ve S'#305'nav Sonu'#231'lar'#305' '
        TabOrder = 0
        DesignSize = (
          301
          428)
        object Label1: TLabel
          Left = 184
          Top = 18
          Width = 44
          Height = 13
          Caption = 'Numaras'#305
        end
        object Label4: TLabel
          Left = 48
          Top = 40
          Width = 69
          Height = 13
          Caption = #214#287'rencinin Ad'#305
        end
        object Label5: TLabel
          Left = 32
          Top = 64
          Width = 86
          Height = 13
          Caption = #214#287'rencinin Soyad'#305
        end
        object Label14: TLabel
          Left = 40
          Top = 88
          Width = 76
          Height = 13
          Caption = #214#287'rencinin S'#305'n'#305'f'#305
        end
        object Label15: TLabel
          Left = 11
          Top = 18
          Width = 36
          Height = 13
          Caption = 'D'#246'nemi'
        end
        object Label59: TLabel
          Left = 29
          Top = 130
          Width = 59
          Height = 24
          Caption = 'T'#252'rk'#231'e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 91
          Top = 123
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label61: TLabel
          Left = 93
          Top = 147
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label21: TLabel
          Left = 31
          Top = 182
          Width = 55
          Height = 24
          Caption = 'Sosyal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 4
          Top = 233
          Width = 84
          Height = 24
          Caption = 'Matematik'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 52
          Top = 285
          Width = 34
          Height = 24
          Caption = 'Fen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label62: TLabel
          Left = 91
          Top = 175
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label63: TLabel
          Left = 93
          Top = 199
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label64: TLabel
          Left = 91
          Top = 227
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label65: TLabel
          Left = 93
          Top = 251
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label66: TLabel
          Left = 91
          Top = 279
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label67: TLabel
          Left = 93
          Top = 303
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label2: TLabel
          Left = 18
          Top = 338
          Width = 68
          Height = 24
          Caption = #304'ngilizce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 91
          Top = 332
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label16: TLabel
          Left = 93
          Top = 356
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label90: TLabel
          Left = 0
          Top = 408
          Width = 51
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Biyoloji-2'
        end
        object tx_oks_ogr_no: TcxTextEdit
          Left = 232
          Top = 14
          Width = 61
          Height = 21
          BeepOnEnter = False
          Properties.MaxLength = 4
          TabOrder = 0
          OnKeyPress = tx_oks_ogr_noKeyPress
        end
        object tx_oks_adi: TcxTextEdit
          Left = 124
          Top = 36
          Width = 169
          Height = 21
          BeepOnEnter = False
          Properties.MaxLength = 15
          TabOrder = 1
          OnKeyPress = tx_oks_adiKeyPress
        end
        object tx_oks_soyadi: TcxTextEdit
          Left = 124
          Top = 60
          Width = 169
          Height = 21
          BeepOnEnter = False
          Properties.MaxLength = 15
          TabOrder = 2
          OnKeyPress = tx_oks_soyadiKeyPress
        end
        object bt_oks_ekle: TBitBtn
          Left = 6
          Top = 399
          Width = 289
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Ekle'
          TabOrder = 3
          OnClick = bt_oks_ekleClick
        end
        object tx_oks_sinifi: TcxTextEdit
          Left = 124
          Top = 84
          Width = 117
          Height = 21
          Properties.ReadOnly = True
          TabOrder = 4
        end
        object tx_oks_donemi: TcxComboBox
          Left = 52
          Top = 14
          Width = 97
          Height = 21
          TabOrder = 5
          Text = 'tx_oks_donemi'
          OnKeyPress = tx_oks_donemiKeyPress
        end
        object tx_oks_t_d: TcxTextEdit
          Left = 124
          Top = 119
          Width = 29
          Height = 21
          Hint = 'T.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 6
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_t_y: TcxTextEdit
          Left = 124
          Top = 143
          Width = 29
          Height = 21
          Hint = 'T.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 7
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_s_d: TcxTextEdit
          Left = 124
          Top = 171
          Width = 29
          Height = 21
          Hint = 'S.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 8
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_s_y: TcxTextEdit
          Left = 124
          Top = 195
          Width = 29
          Height = 21
          Hint = 'S.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 9
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_m_d: TcxTextEdit
          Left = 124
          Top = 223
          Width = 29
          Height = 21
          Hint = 'M.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 10
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_m_y: TcxTextEdit
          Left = 124
          Top = 247
          Width = 29
          Height = 21
          Hint = 'M.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 11
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_f_d: TcxTextEdit
          Left = 124
          Top = 276
          Width = 29
          Height = 21
          Hint = 'F.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 12
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_f_y: TcxTextEdit
          Left = 124
          Top = 300
          Width = 29
          Height = 21
          Hint = 'F.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 13
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_i_d: TcxTextEdit
          Left = 124
          Top = 329
          Width = 29
          Height = 21
          Hint = 'F.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 14
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_oks_i_y: TcxTextEdit
          Left = 124
          Top = 353
          Width = 29
          Height = 21
          Hint = 'F.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 15
          Text = '0'
        end
      end
    end
    object sayfa_kpss: TTabSheet
      Caption = 'KPSS'
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 301
        Height = 428
        Align = alClient
        Caption = ' '#214#287'renci Bilgileri ve S'#305'nav Sonu'#231'lar'#305' '
        TabOrder = 0
        DesignSize = (
          301
          428)
        object Label17: TLabel
          Left = 184
          Top = 18
          Width = 44
          Height = 13
          Caption = 'Numaras'#305
        end
        object Label18: TLabel
          Left = 48
          Top = 40
          Width = 69
          Height = 13
          Caption = #214#287'rencinin Ad'#305
        end
        object Label19: TLabel
          Left = 32
          Top = 64
          Width = 86
          Height = 13
          Caption = #214#287'rencinin Soyad'#305
        end
        object Label20: TLabel
          Left = 40
          Top = 88
          Width = 76
          Height = 13
          Caption = #214#287'rencinin S'#305'n'#305'f'#305
        end
        object Label25: TLabel
          Left = 11
          Top = 18
          Width = 36
          Height = 13
          Caption = 'D'#246'nemi'
        end
        object Label26: TLabel
          Left = 4
          Top = 130
          Width = 125
          Height = 24
          Caption = 'Genel Yetenek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 133
          Top = 123
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label33: TLabel
          Left = 135
          Top = 147
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label34: TLabel
          Left = 22
          Top = 182
          Width = 104
          Height = 24
          Caption = 'Genel K'#252'lt'#252'r'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 5
          Top = 233
          Width = 122
          Height = 24
          Caption = 'E'#287'itim Bilimleri'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 133
          Top = 175
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label38: TLabel
          Left = 135
          Top = 199
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label39: TLabel
          Left = 133
          Top = 227
          Width = 29
          Height = 13
          Caption = 'Do'#287'ru'
        end
        object Label40: TLabel
          Left = 135
          Top = 251
          Width = 28
          Height = 13
          Caption = 'Yanl'#305#351
        end
        object Label46: TLabel
          Left = 0
          Top = 408
          Width = 51
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Biyoloji-2'
        end
        object tx_kpss_ogr_no: TcxTextEdit
          Left = 232
          Top = 14
          Width = 61
          Height = 21
          BeepOnEnter = False
          Properties.MaxLength = 4
          TabOrder = 0
          OnKeyPress = tx_kpss_ogr_noKeyPress
        end
        object tx_kpss_adi: TcxTextEdit
          Left = 124
          Top = 36
          Width = 169
          Height = 21
          BeepOnEnter = False
          Properties.MaxLength = 15
          TabOrder = 1
          OnKeyPress = tx_kpss_adiKeyPress
        end
        object tx_kpss_soyadi: TcxTextEdit
          Left = 124
          Top = 60
          Width = 169
          Height = 21
          BeepOnEnter = False
          Properties.MaxLength = 15
          TabOrder = 2
          OnKeyPress = tx_kpss_soyadiKeyPress
        end
        object bt_kpss_ekle: TBitBtn
          Left = 6
          Top = 399
          Width = 289
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Ekle'
          TabOrder = 3
          OnClick = bt_kpss_ekleClick
        end
        object tx_kpss_sinifi: TcxTextEdit
          Left = 124
          Top = 84
          Width = 117
          Height = 21
          Properties.ReadOnly = True
          TabOrder = 4
        end
        object tx_kpss_donemi: TcxComboBox
          Left = 52
          Top = 14
          Width = 97
          Height = 21
          TabOrder = 5
          Text = 'tx_oks_donemi'
          OnKeyPress = tx_kpss_donemiKeyPress
        end
        object tx_kpss_t_d: TcxTextEdit
          Left = 166
          Top = 119
          Width = 29
          Height = 21
          Hint = 'T.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 6
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_kpss_t_y: TcxTextEdit
          Left = 166
          Top = 143
          Width = 29
          Height = 21
          Hint = 'T.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 7
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_kpss_s_d: TcxTextEdit
          Left = 166
          Top = 171
          Width = 29
          Height = 21
          Hint = 'S.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 8
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_kpss_s_y: TcxTextEdit
          Left = 166
          Top = 195
          Width = 29
          Height = 21
          Hint = 'S.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 9
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_kpss_m_d: TcxTextEdit
          Left = 166
          Top = 223
          Width = 29
          Height = 21
          Hint = 'M.D'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 10
          Text = '0'
          OnKeyPress = tx_oksKeyPress
        end
        object tx_kpss_m_y: TcxTextEdit
          Left = 166
          Top = 247
          Width = 29
          Height = 21
          Hint = 'M.Y'
          BeepOnEnter = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 3
          ShowHint = True
          TabOrder = 11
          Text = '0'
          OnKeyPress = tx_kpss_m_yKeyPress
        end
      end
    end
  end
  object tablo_sinav: TZQuery
    Connection = veriler.data_dershane
    AfterRefresh = tablo_sinavAfterRefresh
    OnFilterRecord = tablo_sinavFilterRecord
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sinavsonuc where sinav_no =:p0')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 352
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object tablo_sinavid: TLargeintField
      FieldName = 'id'
    end
    object tablo_sinavsinav_no: TIntegerField
      FieldName = 'sinav_no'
      Required = True
    end
    object tablo_sinavsinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_sinavdonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_sinavogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_sinavadi: TStringField
      FieldName = 'adi'
      Required = True
      Size = 15
    end
    object tablo_sinavsoyadi: TStringField
      FieldName = 'soyadi'
      Required = True
      Size = 15
    end
    object tablo_sinavturkce_dogru: TIntegerField
      FieldName = 'turkce_dogru'
    end
    object tablo_sinavturkce_yanlis: TIntegerField
      FieldName = 'turkce_yanlis'
    end
    object tablo_sinavturkce_net: TFloatField
      FieldName = 'turkce_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavtarih1_dogru: TSmallintField
      FieldName = 'tarih1_dogru'
    end
    object tablo_sinavtarih1_yanlis: TSmallintField
      FieldName = 'tarih1_yanlis'
    end
    object tablo_sinavtarih1_net: TFloatField
      FieldName = 'tarih1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavcografya_dogru: TSmallintField
      FieldName = 'cografya_dogru'
    end
    object tablo_sinavcografya_yanlis: TSmallintField
      FieldName = 'cografya_yanlis'
    end
    object tablo_sinavcografya_net: TFloatField
      FieldName = 'cografya_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavfelsefe_dogru: TSmallintField
      FieldName = 'felsefe_dogru'
    end
    object tablo_sinavfelsefe_yanlis: TSmallintField
      FieldName = 'felsefe_yanlis'
    end
    object tablo_sinavfelsefe_net: TFloatField
      FieldName = 'felsefe_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavsosyal1_dogru: TIntegerField
      FieldName = 'sosyal1_dogru'
    end
    object tablo_sinavsosyal1_yanlis: TIntegerField
      FieldName = 'sosyal1_yanlis'
    end
    object tablo_sinavsosyal1_net: TFloatField
      FieldName = 'sosyal1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavcebir1_dogru: TSmallintField
      FieldName = 'cebir1_dogru'
    end
    object tablo_sinavcebir1_yanlis: TSmallintField
      FieldName = 'cebir1_yanlis'
    end
    object tablo_sinavcebir1_net: TFloatField
      FieldName = 'cebir1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavgeometri1_dogru: TSmallintField
      FieldName = 'geometri1_dogru'
    end
    object tablo_sinavgeometri1_yanlis: TSmallintField
      FieldName = 'geometri1_yanlis'
    end
    object tablo_sinavgeometri1_net: TFloatField
      FieldName = 'geometri1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavmatematik1_dogru: TIntegerField
      FieldName = 'matematik1_dogru'
    end
    object tablo_sinavmatematik1_yanlis: TIntegerField
      FieldName = 'matematik1_yanlis'
    end
    object tablo_sinavmatematik1_net: TFloatField
      FieldName = 'matematik1_net'
      DisplayFormat = '#.##'
    end
    object tablo_sinavfizik1_dogru: TSmallintField
      FieldName = 'fizik1_dogru'
    end
    object tablo_sinavfizik1_yanlis: TSmallintField
      FieldName = 'fizik1_yanlis'
    end
    object tablo_sinavfizik1_net: TFloatField
      FieldName = 'fizik1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavkimya1_dogru: TSmallintField
      FieldName = 'kimya1_dogru'
    end
    object tablo_sinavkimya1_yanlis: TSmallintField
      FieldName = 'kimya1_yanlis'
    end
    object tablo_sinavkimya1_net: TFloatField
      FieldName = 'kimya1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavbiyoloji1_dogru: TSmallintField
      FieldName = 'biyoloji1_dogru'
    end
    object tablo_sinavbiyoloji1_yanlis: TSmallintField
      FieldName = 'biyoloji1_yanlis'
    end
    object tablo_sinavbiyoloji1_net: TFloatField
      FieldName = 'biyoloji1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavfen1_dogru: TIntegerField
      FieldName = 'fen1_dogru'
    end
    object tablo_sinavfen1_yanlis: TIntegerField
      FieldName = 'fen1_yanlis'
    end
    object tablo_sinavfen1_net: TFloatField
      FieldName = 'fen1_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavedebiyat_dogru: TIntegerField
      FieldName = 'edebiyat_dogru'
    end
    object tablo_sinavedebiyat_yanlis: TIntegerField
      FieldName = 'edebiyat_yanlis'
    end
    object tablo_sinavedebiyat_net: TFloatField
      FieldName = 'edebiyat_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavturkiyecografyasi_dogru: TIntegerField
      FieldName = 'turkiyecografyasi_dogru'
    end
    object tablo_sinavturkiyecografyasi_yanlis: TIntegerField
      FieldName = 'turkiyecografyasi_yanlis'
    end
    object tablo_sinavturkiyecografyasi_net: TFloatField
      FieldName = 'turkiyecografyasi_net'
      DisplayFormat = '#.##'
    end
    object tablo_sinavpsikoloji_dogru: TIntegerField
      FieldName = 'psikoloji_dogru'
    end
    object tablo_sinavpsikoloji_yanlis: TIntegerField
      FieldName = 'psikoloji_yanlis'
    end
    object tablo_sinavpsikoloji_net: TFloatField
      FieldName = 'psikoloji_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavedebiyatsosyal_dogru: TIntegerField
      FieldName = 'edebiyatsosyal_dogru'
    end
    object tablo_sinavedebiyatsosyal_yanlis: TIntegerField
      FieldName = 'edebiyatsosyal_yanlis'
    end
    object tablo_sinavedebiyatsosyal_net: TFloatField
      FieldName = 'edebiyatsosyal_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavtarih2_dogru: TIntegerField
      FieldName = 'tarih2_dogru'
    end
    object tablo_sinavtarih2_yanlis: TIntegerField
      FieldName = 'tarih2_yanlis'
    end
    object tablo_sinavtarih2_net: TFloatField
      FieldName = 'tarih2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavulkelercografyasi_dogru: TIntegerField
      FieldName = 'ulkelercografyasi_dogru'
    end
    object tablo_sinavulkelercografyasi_yanlis: TIntegerField
      FieldName = 'ulkelercografyasi_yanlis'
    end
    object tablo_sinavulkelercografyasi_net: TFloatField
      FieldName = 'ulkelercografyasi_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavsosyoloji_dogru: TIntegerField
      FieldName = 'sosyoloji_dogru'
    end
    object tablo_sinavsosyoloji_yanlis: TIntegerField
      FieldName = 'sosyoloji_yanlis'
    end
    object tablo_sinavsosyoloji_net: TFloatField
      FieldName = 'sosyoloji_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavmantik_dogru: TIntegerField
      FieldName = 'mantik_dogru'
    end
    object tablo_sinavmantik_yanlis: TIntegerField
      FieldName = 'mantik_yanlis'
    end
    object tablo_sinavmantik_net: TFloatField
      FieldName = 'mantik_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavsosyal2_dogru: TIntegerField
      FieldName = 'sosyal2_dogru'
    end
    object tablo_sinavsosyal2_yanlis: TIntegerField
      FieldName = 'sosyal2_yanlis'
    end
    object tablo_sinavsosyal2_net: TFloatField
      FieldName = 'sosyal2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavcebir2_dogru: TIntegerField
      FieldName = 'cebir2_dogru'
    end
    object tablo_sinavcebir2_yanlis: TIntegerField
      FieldName = 'cebir2_yanlis'
    end
    object tablo_sinavcebir2_net: TFloatField
      FieldName = 'cebir2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavgeometri2_dogru: TIntegerField
      FieldName = 'geometri2_dogru'
    end
    object tablo_sinavgeometri2_yanlis: TIntegerField
      FieldName = 'geometri2_yanlis'
    end
    object tablo_sinavgeometri2_net: TFloatField
      FieldName = 'geometri2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavmatematik2_dogru: TIntegerField
      FieldName = 'matematik2_dogru'
    end
    object tablo_sinavmatematik2_yanlis: TIntegerField
      FieldName = 'matematik2_yanlis'
    end
    object tablo_sinavmatematik2_net: TFloatField
      FieldName = 'matematik2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavfizik2_dogru: TIntegerField
      FieldName = 'fizik2_dogru'
    end
    object tablo_sinavfizik2_yanlis: TIntegerField
      FieldName = 'fizik2_yanlis'
    end
    object tablo_sinavfizik2_net: TFloatField
      FieldName = 'fizik2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavkimya2_dogru: TIntegerField
      FieldName = 'kimya2_dogru'
    end
    object tablo_sinavkimya2_yanlis: TIntegerField
      FieldName = 'kimya2_yanlis'
    end
    object tablo_sinavkimya2_net: TFloatField
      FieldName = 'kimya2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavbiyoloji2_dogru: TIntegerField
      FieldName = 'biyoloji2_dogru'
    end
    object tablo_sinavbiyoloji2_yanlis: TIntegerField
      FieldName = 'biyoloji2_yanlis'
    end
    object tablo_sinavbiyoloji2_net: TFloatField
      FieldName = 'biyoloji2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavfen2_dogru: TIntegerField
      FieldName = 'fen2_dogru'
    end
    object tablo_sinavfen2_yanlis: TIntegerField
      FieldName = 'fen2_yanlis'
    end
    object tablo_sinavfen2_net: TFloatField
      FieldName = 'fen2_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavingilizce_dogru: TIntegerField
      FieldName = 'ingilizce_dogru'
    end
    object tablo_sinavingilizce_yanlis: TIntegerField
      FieldName = 'ingilizce_yanlis'
    end
    object tablo_sinavingilizce_net: TFloatField
      FieldName = 'ingilizce_net'
      DisplayFormat = '#.##'
    end
    object tablo_sinavtoplam_dogru: TIntegerField
      FieldName = 'toplam_dogru'
    end
    object tablo_sinavtoplam_yanlis: TIntegerField
      FieldName = 'toplam_yanlis'
    end
    object tablo_sinavtoplam_net: TFloatField
      FieldName = 'toplam_net'
      DisplayFormat = '#.##'
      Precision = 2
    end
    object tablo_sinavpuan_1: TFloatField
      FieldName = 'puan_1'
    end
    object tablo_sinavderece_1: TIntegerField
      FieldName = 'derece_1'
    end
    object tablo_sinavderece_local_1: TIntegerField
      FieldName = 'derece_local_1'
    end
    object tablo_sinavpuan_2: TFloatField
      FieldName = 'puan_2'
    end
    object tablo_sinavderece_2: TIntegerField
      FieldName = 'derece_2'
    end
    object tablo_sinavderece_local_2: TIntegerField
      FieldName = 'derece_local_2'
    end
    object tablo_sinavpuan_3: TFloatField
      FieldName = 'puan_3'
    end
    object tablo_sinavderece_3: TIntegerField
      FieldName = 'derece_3'
    end
    object tablo_sinavderece_local_3: TIntegerField
      FieldName = 'derece_local_3'
    end
    object tablo_sinavpuan_4: TFloatField
      FieldName = 'puan_4'
    end
    object tablo_sinavderece_4: TIntegerField
      FieldName = 'derece_4'
    end
    object tablo_sinavderece_local_4: TIntegerField
      FieldName = 'derece_local_4'
    end
    object tablo_sinavpuan_5: TFloatField
      FieldName = 'puan_5'
    end
    object tablo_sinavderece_5: TIntegerField
      FieldName = 'derece_5'
    end
    object tablo_sinavderece_local_5: TIntegerField
      FieldName = 'derece_local_5'
    end
    object tablo_sinavpuan_6: TFloatField
      FieldName = 'puan_6'
    end
    object tablo_sinavderece_6: TIntegerField
      FieldName = 'derece_6'
    end
    object tablo_sinavderece_local_6: TIntegerField
      FieldName = 'derece_local_6'
    end
    object tablo_sinavcevapturkce: TStringField
      FieldName = 'cevapturkce'
      Size = 255
    end
    object tablo_sinavcevapsos1: TStringField
      FieldName = 'cevapsos1'
      Size = 255
    end
    object tablo_sinavcevapmat1: TStringField
      FieldName = 'cevapmat1'
      Size = 255
    end
    object tablo_sinavcevapfen1: TStringField
      FieldName = 'cevapfen1'
      Size = 255
    end
    object tablo_sinavcevapedsos: TStringField
      FieldName = 'cevapedsos'
      Size = 255
    end
    object tablo_sinavcevapsos2: TStringField
      FieldName = 'cevapsos2'
      Size = 255
    end
    object tablo_sinavcevapmat2: TStringField
      FieldName = 'cevapmat2'
      Size = 255
    end
    object tablo_sinavcevapfen2: TStringField
      FieldName = 'cevapfen2'
      Size = 255
    end
    object tablo_sinavcevaping: TStringField
      FieldName = 'cevaping'
      Size = 255
    end
    object tablo_sinavkitapcik: TStringField
      FieldName = 'kitapcik'
      Size = 1
    end
    object tablo_sinavbildirim: TStringField
      FieldName = 'bildirim'
      Size = 10
    end
  end
  object ara_sinav: TDataSource
    DataSet = tablo_sinav
    Enabled = False
    Left = 356
    Top = 240
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
    Left = 408
    Top = 104
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
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      '')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 500
    Top = 84
  end
  object ara_sinavtanim: TDataSource
    DataSet = tablo_sinavtanim
    Left = 453
    Top = 244
  end
  object tablo_sinavtanim: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'select sinav_no,turu,sinav_tarihi,sinav_adi from sinavtanim orde' +
        'r by sinav_tarihi desc,sinav_adi')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 452
    Top = 180
    object tablo_sinavtanimsinav_no: TIntegerField
      DisplayWidth = 10
      FieldName = 'sinav_no'
    end
    object tablo_sinavtanimturu: TStringField
      DisplayWidth = 4
      FieldName = 'turu'
      Size = 4
    end
    object tablo_sinavtanimsinav_tarihi: TDateField
      DisplayWidth = 10
      FieldName = 'sinav_tarihi'
    end
    object tablo_sinavtanimsinav_adi: TStringField
      DisplayWidth = 25
      FieldName = 'sinav_adi'
      Size = 25
    end
  end
end
