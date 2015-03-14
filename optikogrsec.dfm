object fr_optikogrsec: Tfr_optikogrsec
  Left = 270
  Top = 200
  BorderStyle = bsDialog
  Caption = #214#287'renci Se'#231
  ClientHeight = 446
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 514
    Height = 41
    Align = alTop
    Caption = ' Forma Girmi'#351' Oldu'#287'u Bilgiler '
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 16
      Width = 25
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 284
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Soyad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #214'gr No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_ogrno: TLabel
      Left = 52
      Top = 16
      Width = 25
      Height = 13
      AutoSize = False
    end
    object lb_adi: TLabel
      Left = 108
      Top = 16
      Width = 177
      Height = 13
      AutoSize = False
    end
    object lb_soyadi: TLabel
      Left = 328
      Top = 16
      Width = 177
      Height = 13
      AutoSize = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 396
    Width = 514
    Height = 50
    Align = alBottom
    Caption = ' Bir Eylem Se'#231'iniz '
    TabOrder = 1
    object bt_disardan: TBitBtn
      Left = 160
      Top = 16
      Width = 109
      Height = 29
      Caption = '&D'#305#351'ardan'
      TabOrder = 0
      OnClick = bt_disardanClick
    end
    object bt_secili: TBitBtn
      Left = 4
      Top = 16
      Width = 153
      Height = 29
      Caption = '&Se'#231'ili '#214#287'renci Olarak Kaydet'
      TabOrder = 1
      OnClick = bt_seciliClick
    end
    object bt_iptal: TBitBtn
      Left = 368
      Top = 16
      Width = 141
      Height = 29
      Caption = 'Aktar'#305'm '#304#351'lemini '#304'ptal Et'
      TabOrder = 2
      OnClick = bt_iptalClick
    end
  end
  object gr_ogr: TcxGrid
    Left = 0
    Top = 41
    Width = 514
    Height = 355
    Align = alClient
    TabOrder = 2
    object ogrenciler: TcxGridDBTableView
      OnDblClick = ogrencilerDblClick
      OnKeyPress = ogrencilerKeyPress
      DataController.DataSource = ara_ogr
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object ogrencilerdonemi: TcxGridDBColumn
        Caption = 'D'#246'nemi'
        Options.Editing = False
        DataBinding.FieldName = 'donemi'
      end
      object ogrencilerogr_no: TcxGridDBColumn
        Caption = #214'gr No'
        Options.Editing = False
        DataBinding.FieldName = 'ogr_no'
      end
      object ogrencileradsoyad: TcxGridDBColumn
        Caption = 'Ad'#305' Soyad'#305
        Options.Editing = False
        DataBinding.FieldName = 'adsoyad'
      end
      object ogrencilersinifi: TcxGridDBColumn
        Caption = 'S'#305'n'#305'f'#305
        Options.Editing = False
        DataBinding.FieldName = 'sinifi'
      end
    end
    object gr_ogrLevel1: TcxGridLevel
      GridView = ogrenciler
    end
  end
  object ara_ogr: TDataSource
    DataSet = fr_optikaktarim.t_ogr
    Left = 400
    Top = 284
  end
end
