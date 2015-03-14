object fr_konu_tanimlari: Tfr_konu_tanimlari
  Left = 354
  Top = 195
  Width = 594
  Height = 366
  Caption = 'Konu Tan'#305'mlar'#305
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
  object gr_konu_tanim: TcxGrid
    Left = 0
    Top = 0
    Width = 586
    Height = 332
    Align = alClient
    TabOrder = 0
    object vw_konu_tanim: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Enabled = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.Prior.Enabled = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Enabled = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Visible = False
      DataController.DataSource = ara_sinav_konu_tanim
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.Navigator = True
      object vw_konu_tanimid: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'id'
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.Grouping = False
        Width = 38
      end
      object vw_konu_tanimturu: TcxGridDBColumn
        Caption = 'T'#252'r'#252
        DataBinding.FieldName = 'turu'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #304#214
          'KPSS'
          'OKS'
          #214'SS')
        MinWidth = 50
        Width = 50
      end
      object vw_konu_tanimders: TcxGridDBColumn
        Caption = 'Ders'
        DataBinding.FieldName = 'ders'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Biyoloji'
          'Cebir'
          'Co'#287'rafya'
          'Edebiyat'
          'E'#287'itim Bilimleri'
          'Felsefe'
          'Fen Bilgisi'
          'Fizik'
          'Genel K'#252'lt'#252'r'
          'Genel Yetenek'
          'Geometri'
          #304'ngilizce'
          'Kimya'
          'Mant'#305'k'
          'Matematik'
          'Psikoloji'
          'Sosyal Bilgiler'
          'Sosyoloji'
          'Tarih'
          'T'#252'rk'#231'e'
          'T'#252'rkiye Co'#287'rafyas'#305
          #220'lkeler Co'#287'rafyas'#305)
        Properties.Sorted = True
      end
      object vw_konu_tanimkonu: TcxGridDBColumn
        Caption = 'Konu'
        DataBinding.FieldName = 'konu'
      end
    end
    object gr_konu_tanimLevel1: TcxGridLevel
      GridView = vw_konu_tanim
    end
  end
  object tablo_sinav_konu_tanim: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      'select * from sinavkonutanim order by turu,ders,konu')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 212
    Top = 100
    object tablo_sinav_konu_tanimid: TIntegerField
      FieldName = 'id'
    end
    object tablo_sinav_konu_tanimturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object tablo_sinav_konu_tanimders: TStringField
      FieldName = 'ders'
    end
    object tablo_sinav_konu_tanimkonu: TStringField
      FieldName = 'konu'
      Size = 255
    end
  end
  object ara_sinav_konu_tanim: TDataSource
    DataSet = tablo_sinav_konu_tanim
    Left = 344
    Top = 120
  end
end
