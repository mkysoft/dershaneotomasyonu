object fr_personel_bul: Tfr_personel_bul
  Left = 438
  Top = 179
  BorderStyle = bsDialog
  Caption = 'Personel Bul'
  ClientHeight = 396
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gr_veli: TcxGrid
    Left = 0
    Top = 0
    Width = 312
    Height = 368
    Align = alClient
    TabOrder = 0
    object arama: TcxGridDBTableView
      OnDblClick = aramaDblClick
      OnKeyPress = aramaKeyPress
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ara_personel
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.CustomizeDialog = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object aramaveli_adi: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'veli_adi'
        Width = 118
      end
      object aramaveli_soyadi: TcxGridDBColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'veli_soyadi'
        Width = 136
      end
      object aramapersonel_kodu: TcxGridDBColumn
        Caption = 'P.Kodu'
        DataBinding.FieldName = 'personel_kodu'
        Width = 44
      end
    end
    object gr_veliLevel1: TcxGridLevel
      GridView = arama
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 312
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bt_sec: TBitBtn
      Left = 2
      Top = 2
      Width = 115
      Height = 25
      Caption = 'Se'#231
      TabOrder = 0
      OnClick = bt_secClick
    end
    object personel_say: TcxLabel
      Left = 118
      Top = 4
      Width = 79
      Height = 17
      AutoSize = False
      Caption = '0 Personel'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGreen
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
    end
    object br_vazgec: TBitBtn
      Left = 196
      Top = 2
      Width = 115
      Height = 25
      Caption = 'Vazge'#231
      TabOrder = 2
      OnClick = br_vazgecClick
    end
  end
  object tablo_personel: TZReadOnlyQuery
    Connection = veriler.data_dershane
    AfterOpen = tablo_personelAfterOpen
    SQL.Strings = (
      
        'select personel_kodu,veli_adi,veli_soyadi from personel inner jo' +
        'in veliler on personel_kodu=veli_kodu order by veli_adi,veli_soy' +
        'adi')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 124
    Top = 96
    object tablo_personelpersonel_kodu: TIntegerField
      FieldName = 'personel_kodu'
      Required = True
    end
    object tablo_personelveli_adi: TStringField
      FieldName = 'veli_adi'
      Required = True
      Size = 25
    end
    object tablo_personelveli_soyadi: TStringField
      FieldName = 'veli_soyadi'
      Required = True
      Size = 15
    end
  end
  object ara_personel: TDataSource
    DataSet = tablo_personel
    Left = 124
    Top = 184
  end
end
