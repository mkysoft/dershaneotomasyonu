object fr_sinav_tanimlari: Tfr_sinav_tanimlari
  Left = 271
  Top = 168
  Width = 677
  Height = 480
  Caption = 'S'#305'nav Tan'#305'mlar'#305
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'T'#252'rk'#231'e'
  end
  object Label4: TLabel
    Left = 8
    Top = 91
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Ed-Sos'
  end
  object Label5: TLabel
    Left = 8
    Top = 72
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fen 1'
  end
  object Label6: TLabel
    Left = 8
    Top = 54
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Mat 1'
  end
  object Label7: TLabel
    Left = 8
    Top = 35
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Sos 1'
  end
  object Label8: TLabel
    Left = 8
    Top = 111
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Sos 2'
  end
  object Label9: TLabel
    Left = 8
    Top = 130
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Mat 2'
  end
  object Label10: TLabel
    Left = 8
    Top = 148
    Width = 37
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fen 2'
  end
  object sayfalar: TPageControl
    Left = 0
    Top = 0
    Width = 669
    Height = 414
    ActivePage = sayfa_sinav
    Align = alClient
    TabOrder = 0
    OnChanging = sayfalarChanging
    object sayfa_sinav: TTabSheet
      Caption = 'S'#305'nav Bilgileri'
      object gr_sinavtanim: TcxGrid
        Left = 0
        Top = 0
        Width = 661
        Height = 386
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
          DataController.DataSource = ara_sinavtanim
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object sinavlarsinav_no: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'sinav_no'
            Options.Editing = False
            Width = 23
          end
          object sinavlarturu: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'turu'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              #304#214
              'KPSS'
              'OKS'
              #214'SS')
            Width = 30
          end
          object sinavlarsinav_tarihi: TcxGridDBColumn
            Caption = 'Tarihi'
            DataBinding.FieldName = 'sinav_tarihi'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = False
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 64
          end
          object sinavlarsinav_adi: TcxGridDBColumn
            Caption = 'Ad'#305
            DataBinding.FieldName = 'sinav_adi'
            Width = 173
          end
        end
        object gr_sinavtanimLevel1: TcxGridLevel
          GridView = sinavlar
        end
      end
    end
    object sayfa_soru_sayilari: TTabSheet
      Caption = 'Soru Say'#305'lar'#305
      ImageIndex = 1
      OnShow = sayfa_soru_sayilariShow
      object gb_oks: TcxGroupBox
        Left = 0
        Top = 233
        Width = 661
        Height = 60
        Align = alTop
        Caption = 'OKS'
        TabOrder = 0
        object Label3: TLabel
          Left = 246
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Sosyal'
        end
        object Label16: TLabel
          Left = 172
          Top = 16
          Width = 34
          Height = 13
          Caption = 'T'#252'rk'#231'e'
        end
        object Label40: TLabel
          Left = 312
          Top = 16
          Width = 49
          Height = 13
          Caption = 'Matematik'
        end
        object Label41: TLabel
          Left = 399
          Top = 16
          Width = 18
          Height = 13
          Caption = 'Fen'
        end
        object lbi: TLabel
          Left = 447
          Top = 16
          Width = 38
          Height = 13
          Caption = #304'ngilizce'
        end
        object tx_oks_t: TcxDBTextEdit
          Left = 176
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'turkce_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 0
          OnKeyPress = tx_oks_tKeyPress
        end
        object tx_oks_s: TcxDBTextEdit
          Left = 247
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'sosyal1_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 1
          OnKeyPress = tx_oks_sKeyPress
        end
        object tx_oks_m: TcxDBTextEdit
          Left = 321
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'matematik1_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 2
          OnKeyPress = tx_oks_mKeyPress
        end
        object tx_oks_f: TcxDBTextEdit
          Left = 395
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'fen1_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 3
          OnKeyPress = tx_oks_fKeyPress
        end
        object tx_oks_i: TcxDBTextEdit
          Left = 451
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'ingilizce_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 4
        end
      end
      object gb_oss: TcxGroupBox
        Left = 0
        Top = 0
        Width = 661
        Height = 233
        Align = alTop
        Caption = #214'SS'
        TabOrder = 1
        object Label2: TLabel
          Left = 2
          Top = 16
          Width = 657
          Height = 13
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = '  1. B'#246'l'#252'm  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 2
          Top = 131
          Width = 657
          Height = 13
          Align = alCustom
          Alignment = taCenter
          AutoSize = False
          Caption = '  2. B'#246'l'#252'm  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 4
          Top = 148
          Width = 152
          Height = 80
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 0
          object Label44: TLabel
            Left = 47
            Top = 1
            Width = 49
            Height = 26
            Alignment = taCenter
            Caption = 'T'#252'rkiye Co'#287'rafyas'#305
            WordWrap = True
          end
          object Label43: TLabel
            Left = 2
            Top = 14
            Width = 35
            Height = 13
            Caption = 'Edbiyat'
            WordWrap = True
          end
          object Label50: TLabel
            Left = 2
            Top = 55
            Width = 99
            Height = 13
            Caption = 'Edebiyat - Sosyal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 105
            Top = 14
            Width = 38
            Height = 13
            Caption = 'Psikoloji'
          end
          object tx_ed_s_s: TcxDBTextEdit
            Left = 7
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'edebiyat_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 0
            OnKeyPress = tx_ed_s_sKeyPress
          end
          object tx_tc_s_s: TcxDBTextEdit
            Left = 59
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'turkiyecografyasi_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 1
            OnKeyPress = tx_tc_s_sKeyPress
          end
          object tx_edsos_s_s: TcxDBTextEdit
            Left = 103
            Top = 51
            Width = 33
            Height = 21
            DataBinding.DataField = 'edebiyatsosyal_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            Properties.Alignment.Horz = taCenter
            TabOrder = 2
            OnKeyPress = tx_edsos_s_sKeyPress
          end
          object tx_p_s_s: TcxDBTextEdit
            Left = 111
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'psikoloji_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 3
            OnKeyPress = tx_p_s_sKeyPress
          end
        end
        object Panel2: TPanel
          Left = 156
          Top = 148
          Width = 205
          Height = 80
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 1
          object Label46: TLabel
            Left = 2
            Top = 14
            Width = 39
            Height = 13
            Caption = 'Tarih - 2'
          end
          object Label47: TLabel
            Left = 165
            Top = 14
            Width = 32
            Height = 13
            Caption = 'Mant'#305'k'
          end
          object Label55: TLabel
            Left = 49
            Top = 1
            Width = 57
            Height = 29
            Alignment = taCenter
            AutoSize = False
            Caption = #220'lkeler Co'#287'rafyas'#305
            WordWrap = True
          end
          object Label56: TLabel
            Left = 114
            Top = 14
            Width = 41
            Height = 13
            Caption = 'Sosyoloji'
          end
          object Label58: TLabel
            Left = 82
            Top = 55
            Width = 57
            Height = 13
            Caption = 'Sosyal - 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object tx_ta2_s_s: TcxDBTextEdit
            Left = 11
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'tarih2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 0
            OnKeyPress = tx_ta2_s_sKeyPress
          end
          object tx_uc_s_s: TcxDBTextEdit
            Left = 66
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'ulkelercografyasi_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 1
            OnKeyPress = tx_uc_s_sKeyPress
          end
          object tx_sy_s_s: TcxDBTextEdit
            Left = 124
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'sosyoloji_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 2
            OnKeyPress = tx_sy_s_sKeyPress
          end
          object tx_man_s_s: TcxDBTextEdit
            Left = 168
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'mantik_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 3
            OnKeyPress = tx_man_s_sKeyPress
          end
          object tx_s2_s_s: TcxDBTextEdit
            Left = 141
            Top = 51
            Width = 52
            Height = 21
            DataBinding.DataField = 'sosyal2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            Properties.Alignment.Horz = taCenter
            TabOrder = 4
            OnKeyPress = tx_s2_s_sKeyPress
          end
        end
        object Panel3: TPanel
          Left = 360
          Top = 148
          Width = 138
          Height = 80
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 2
          object Label57: TLabel
            Left = 26
            Top = 14
            Width = 39
            Height = 13
            Caption = 'Cebir - 2'
          end
          object Label49: TLabel
            Left = 2
            Top = 55
            Width = 78
            Height = 13
            Caption = 'Matematik - 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 72
            Top = 14
            Width = 57
            Height = 13
            Caption = 'Geometri - 2'
          end
          object tx_ce2_s_s: TcxDBTextEdit
            Left = 32
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'cebir2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 0
            OnKeyPress = tx_ce2_s_sKeyPress
          end
          object tx_m2_s_s: TcxDBTextEdit
            Left = 86
            Top = 51
            Width = 31
            Height = 21
            DataBinding.DataField = 'matematik2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 1
            OnKeyPress = tx_m2_s_sKeyPress
          end
          object tx_ge2_s_s: TcxDBTextEdit
            Left = 88
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'geometri2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 2
            OnKeyPress = tx_ge2_s_sKeyPress
          end
        end
        object Panel4: TPanel
          Left = 497
          Top = 148
          Width = 162
          Height = 80
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 3
          object Label54: TLabel
            Left = 106
            Top = 14
            Width = 47
            Height = 13
            Caption = 'Biyoloji - 2'
          end
          object Label51: TLabel
            Left = 2
            Top = 14
            Width = 36
            Height = 13
            Caption = 'Fizik - 2'
          end
          object Label52: TLabel
            Left = 52
            Top = 55
            Width = 41
            Height = 13
            Caption = 'Fen - 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label53: TLabel
            Left = 50
            Top = 14
            Width = 43
            Height = 13
            Caption = 'Kimya - 2'
          end
          object tx_f2_s_s: TcxDBTextEdit
            Left = 97
            Top = 51
            Width = 44
            Height = 21
            DataBinding.DataField = 'fen2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            Properties.Alignment.Horz = taCenter
            TabOrder = 0
          end
          object tx_fi2_s_s: TcxDBTextEdit
            Left = 8
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'fizik2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 1
            OnKeyPress = tx_fi2_s_sKeyPress
          end
          object tx_ki2_s_s: TcxDBTextEdit
            Left = 60
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'kimya2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 2
            OnKeyPress = tx_ki2_s_sKeyPress
          end
          object tx_bi2_s_s: TcxDBTextEdit
            Left = 116
            Top = 28
            Width = 25
            Height = 21
            DataBinding.DataField = 'biyoloji2_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 3
            OnKeyPress = tx_bi2_s_sKeyPress
          end
        end
        object Panel5: TPanel
          Left = 4
          Top = 32
          Width = 45
          Height = 80
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 4
          object Label20: TLabel
            Left = 2
            Top = 14
            Width = 34
            Height = 13
            Caption = 'T'#252'rk'#231'e'
            WordWrap = True
          end
          object tx_t_s_s: TcxDBTextEdit
            Left = 5
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'turkce_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 0
            OnKeyPress = tx_t_s_sKeyPress
          end
        end
        object Panel6: TPanel
          Left = 105
          Top = 32
          Width = 146
          Height = 80
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 5
          object Label32: TLabel
            Left = 2
            Top = 14
            Width = 39
            Height = 13
            Caption = 'Tarih - 1'
          end
          object Label33: TLabel
            Left = 51
            Top = 14
            Width = 42
            Height = 13
            Caption = 'Co'#287'rafya'
          end
          object Label18: TLabel
            Left = 32
            Top = 55
            Width = 57
            Height = 13
            Caption = 'Sosyal - 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 103
            Top = 14
            Width = 34
            Height = 13
            Caption = 'Felsefe'
          end
          object tx_ta1_s_s: TcxDBTextEdit
            Left = 8
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'tarih1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 0
            OnKeyPress = tx_ta1_s_sKeyPress
          end
          object tx_co_s_s: TcxDBTextEdit
            Left = 58
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'cografya_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 1
            OnKeyPress = tx_co_s_sKeyPress
          end
          object tx_fe_s_s: TcxDBTextEdit
            Left = 106
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'felsefe_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 2
            OnKeyPress = tx_fe_s_sKeyPress
          end
          object tx_s1_s_s: TcxDBTextEdit
            Left = 92
            Top = 51
            Width = 43
            Height = 21
            DataBinding.DataField = 'sosyal1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            Properties.Alignment.Horz = taCenter
            TabOrder = 3
            OnKeyPress = tx_s1_s_sKeyPress
          end
        end
        object Panel7: TPanel
          Left = 312
          Top = 32
          Width = 133
          Height = 80
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 6
          object Label35: TLabel
            Left = 2
            Top = 14
            Width = 39
            Height = 13
            Caption = 'Cebir - 1'
          end
          object Label36: TLabel
            Left = 68
            Top = 14
            Width = 57
            Height = 13
            Caption = 'Geometri - 1'
          end
          object Label19: TLabel
            Left = 2
            Top = 55
            Width = 78
            Height = 13
            Caption = 'Matematik - 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object tx_ce1_s_s: TcxDBTextEdit
            Left = 8
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'cebir1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 0
            OnKeyPress = tx_ce1_s_sKeyPress
          end
          object tx_ge1_s_s: TcxDBTextEdit
            Left = 83
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'geometri1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 1
            OnKeyPress = tx_ge1_s_sKeyPress
          end
          object tx_m1_s_s: TcxDBTextEdit
            Left = 82
            Top = 51
            Width = 31
            Height = 21
            DataBinding.DataField = 'matematik1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 2
            OnKeyPress = tx_m1_s_sKeyPress
          end
        end
        object Panel8: TPanel
          Left = 502
          Top = 32
          Width = 157
          Height = 77
          BevelInner = bvSpace
          BorderStyle = bsSingle
          TabOrder = 7
          object Label37: TLabel
            Left = 2
            Top = 14
            Width = 36
            Height = 13
            Caption = 'Fizik - 1'
          end
          object Label38: TLabel
            Left = 50
            Top = 14
            Width = 43
            Height = 13
            Caption = 'Kimya - 1'
          end
          object Label39: TLabel
            Left = 102
            Top = 14
            Width = 47
            Height = 13
            Caption = 'Biyoloji - 1'
          end
          object Label17: TLabel
            Left = 48
            Top = 56
            Width = 33
            Height = 13
            Caption = 'Fen-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object tx_fi1_s_s: TcxDBTextEdit
            Left = 6
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'fizik1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 0
            OnKeyPress = tx_fi1_s_sKeyPress
          end
          object tx_ki1_s_s: TcxDBTextEdit
            Left = 56
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'kimya1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 1
            OnKeyPress = tx_ki1_s_sKeyPress
          end
          object tx_bi1_s_s: TcxDBTextEdit
            Left = 112
            Top = 28
            Width = 29
            Height = 21
            DataBinding.DataField = 'biyoloji1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            TabOrder = 2
            OnKeyPress = tx_bi1_s_sKeyPress
          end
          object tx_f1_s_s: TcxDBTextEdit
            Left = 83
            Top = 51
            Width = 59
            Height = 21
            DataBinding.DataField = 'fen1_soru_sayisi'
            DataBinding.DataSource = ara_sinavtanim
            Properties.Alignment.Horz = taCenter
            TabOrder = 3
            OnKeyPress = tx_f1_s_sKeyPress
          end
        end
      end
      object gb_kpss: TcxGroupBox
        Left = 0
        Top = 293
        Width = 661
        Height = 60
        Align = alTop
        Caption = 'KPSS'
        TabOrder = 2
        object Label11: TLabel
          Left = 232
          Top = 16
          Width = 58
          Height = 13
          Caption = 'Genel K'#252'lt'#252'r'
        end
        object Label12: TLabel
          Left = 153
          Top = 16
          Width = 71
          Height = 13
          Caption = 'Genel Yetenek'
        end
        object Label13: TLabel
          Left = 304
          Top = 16
          Width = 65
          Height = 13
          Caption = 'E'#287'itim Bilimleri'
        end
        object tx_kpss_t: TcxDBTextEdit
          Left = 176
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'turkce_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 0
          OnKeyPress = tx_kpss_tKeyPress
        end
        object tx_kpss_s: TcxDBTextEdit
          Left = 247
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'sosyal1_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 1
          OnKeyPress = tx_kpss_sKeyPress
        end
        object tx_kpss_m: TcxDBTextEdit
          Left = 321
          Top = 31
          Width = 29
          Height = 21
          DataBinding.DataField = 'matematik1_soru_sayisi'
          DataBinding.DataSource = ara_sinavtanim
          TabOrder = 2
        end
      end
    end
    object sayfa_cevap_anahtarlari: TTabSheet
      Caption = 'Cevap Anahtarlar'#305
      ImageIndex = 2
      OnShow = sayfa_cevap_anahtarlariShow
      object cxGroupBox3: TcxGroupBox
        Left = 105
        Top = 0
        Width = 278
        Height = 386
        Align = alLeft
        Caption = 'Kitap'#231#305'k A'
        TabOrder = 0
        object lb_kona: TLabel
          Left = 257
          Top = 16
          Width = 16
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 4
          Top = 16
          Width = 251
          Height = 21
          DataBinding.DataField = 'Aturkce'
          DataBinding.DataSource = ara_sinavtanim
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.StyleController = sc_text
          TabOrder = 0
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 4
          Top = 37
          Width = 251
          Height = 21
          DataBinding.DataField = 'Asos1'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 1
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 4
          Top = 58
          Width = 251
          Height = 21
          DataBinding.DataField = 'Amat1'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 3
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 4
          Top = 79
          Width = 251
          Height = 21
          DataBinding.DataField = 'Afen1'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 2
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 4
          Top = 100
          Width = 251
          Height = 21
          DataBinding.DataField = 'Aedsos'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 4
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 4
          Top = 121
          Width = 251
          Height = 21
          DataBinding.DataField = 'Asos2'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 5
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 4
          Top = 142
          Width = 251
          Height = 21
          DataBinding.DataField = 'Amat2'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 6
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 4
          Top = 163
          Width = 251
          Height = 21
          DataBinding.DataField = 'Afen2'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 7
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
        object TxCpAing: TcxDBTextEdit
          Left = 4
          Top = 100
          Width = 251
          Height = 21
          DataBinding.DataField = 'Aing'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 8
          OnKeyDown = cxDBTextEdit1KeyDown
          OnKeyUp = cxDBTextEdit1KeyDown
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 383
        Top = 0
        Width = 278
        Height = 386
        Align = alLeft
        Caption = 'Kitap'#231#305'k B'
        TabOrder = 1
        object lb_konb: TLabel
          Left = 257
          Top = 18
          Width = 16
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 4
          Top = 16
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bturkce'
          DataBinding.DataSource = ara_sinavtanim
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.StyleController = sc_text
          TabOrder = 0
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 4
          Top = 37
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bsos1'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 1
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 4
          Top = 58
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bmat1'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 2
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 4
          Top = 79
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bfen1'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 3
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 4
          Top = 100
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bedsos'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 4
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 4
          Top = 121
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bsos2'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 5
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 4
          Top = 142
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bmat2'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 6
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 4
          Top = 163
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bfen2'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 7
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
        object TxCpBing: TcxDBTextEdit
          Left = 4
          Top = 100
          Width = 251
          Height = 21
          DataBinding.DataField = 'Bing'
          DataBinding.DataSource = ara_sinavtanim
          Properties.CharCase = ecUpperCase
          Style.StyleController = sc_text
          TabOrder = 8
          OnKeyDown = cxDBTextEdit9KeyDown
          OnKeyUp = cxDBTextEdit9KeyDown
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 0
        Width = 105
        Height = 386
        Align = alLeft
        Caption = ' Dersler '
        TabOrder = 2
        object Label100: TLabel
          Left = 57
          Top = 20
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'T'#252'rk'#231'e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label104: TLabel
          Left = 7
          Top = 104
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = 'Edebiyat-Sosyal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label103: TLabel
          Left = 65
          Top = 83
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fen 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label102: TLabel
          Left = 28
          Top = 62
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Matematik 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label101: TLabel
          Left = 49
          Top = 41
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sosyal 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label105: TLabel
          Left = 49
          Top = 125
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sosyal 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label106: TLabel
          Left = 28
          Top = 146
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Matematik 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label107: TLabel
          Left = 65
          Top = 167
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fen 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbIng: TLabel
          Left = 50
          Top = 104
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = #304'ngilizce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object sayfa_soru_konulari: TTabSheet
      Caption = 'Soru Konular'#305
      ImageIndex = 3
      OnShow = sayfa_soru_konulariShow
      object gr_konu_tanim: TcxGrid
        Left = 0
        Top = 0
        Width = 661
        Height = 353
        Align = alClient
        TabOrder = 0
        object vw_konu_tanim: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.Refresh.Enabled = False
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Enabled = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Enabled = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Enabled = False
          NavigatorButtons.Filter.Visible = False
          OnEditing = vw_konu_tanimEditing
          OnInitEdit = vw_konu_tanimInitEdit
          DataController.DataSource = ara_sinavkonu
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.MultiSelect = True
          OptionsView.Navigator = True
          Bands = <
            item
              Caption = 'A Kitap'#231#305#287#305' Sorular'#305
            end
            item
              Caption = 'B Kitap'#231#305#287#305' Sorular'#305
            end
            item
              Caption = 'Sorunun Konusuna '#304'li'#351'kin'
              Width = 437
            end>
          object vw_konu_tanimkitapcik_a: TcxGridDBBandedColumn
            Caption = 'Kitap'#231#305'k No'
            DataBinding.FieldName = 'kitapcik_a'
            Width = 61
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vw_konu_tanimsoru_no_a: TcxGridDBBandedColumn
            Caption = 'Ders No'
            DataBinding.FieldName = 'soru_no_a'
            Width = 44
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object vw_konu_tanimkitapcik_b: TcxGridDBBandedColumn
            Caption = 'Kitapc'#305'k No'
            DataBinding.FieldName = 'kitapcik_b'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.OnEditValueChanged = vw_konu_tanimkitapcik_bPropertiesEditValueChanged
            Width = 61
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vw_konu_tanimsoru_no_b: TcxGridDBBandedColumn
            Caption = 'Ders No'
            DataBinding.FieldName = 'soru_no_b'
            Width = 44
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object vw_konu_tanimders: TcxGridDBBandedColumn
            Caption = 'Ders Ad'#305
            DataBinding.FieldName = 'ders'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items.Strings = (
              'Biyoloji 1'
              'Biyoloji 2'
              'Cebir 1'
              'Cebir 2'
              'Co'#287'rafya'
              'Edebiyat'
              'Felsefe'
              'Fen Bilgisi'
              'Fizik 1'
              'Fizik 2'
              'Geometri 1'
              'Geometri 2'
              #304'ngilizce'
              'Kimya 1'
              'Kimya 2'
              'Mant'#305'k'
              'Matematik'
              'Matematik 1'
              'Matematik 2'
              'Psikoloji'
              'Sosyal Bilgiler'
              'Sosyoloji'
              'Tarih 1'
              'Tarih 2'
              'T'#252'rk'#231'e'
              'T'#252'rkiye Co'#287'rafyas'#305
              #220'lkeler Co'#287'rafyas'#305)
            Properties.Sorted = True
            Width = 69
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object vw_konu_tanimders_konu: TcxGridDBBandedColumn
            Caption = 'Genel Ders Ad'#305
            DataBinding.FieldName = 'ders_konu'
            PropertiesClassName = 'TcxComboBoxProperties'
            Width = 84
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object vw_konu_tanimkonu_no: TcxGridDBBandedColumn
            Caption = 'Konu Ad'#305
            DataBinding.FieldName = 'konu_no'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                Caption = 'Konular'
                FieldName = 'konu'
              end
              item
                Caption = 'Dersler'
                MinWidth = 0
                Width = 0
                FieldName = 'ders'
              end>
            Properties.ListSource = ara_konutanim
            Width = 284
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object gr_konu_tanimLevel1: TcxGridLevel
          GridView = vw_konu_tanim
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 353
        Width = 661
        Height = 33
        Align = alBottom
        Style.BorderStyle = ebsNone
        TabOrder = 1
        DesignSize = (
          661
          33)
        object bt_kaydet: TcxButton
          Left = 584
          Top = 2
          Width = 75
          Height = 29
          Anchors = [akTop, akRight]
          Caption = 'Kaydet'
          TabOrder = 0
          OnClick = bt_kaydetClick
          LookAndFeel.Kind = lfOffice11
        end
        object bt_iptal: TcxButton
          Left = 504
          Top = 2
          Width = 75
          Height = 29
          Anchors = [akTop, akRight]
          Caption = #304'ptal'
          TabOrder = 1
          OnClick = bt_iptalClick
          LookAndFeel.Kind = lfOffice11
        end
        object bt_konutanim: TcxButton
          Left = 4
          Top = 2
          Width = 129
          Height = 29
          Caption = 'Konu Tan'#305'mlar'#305
          TabOrder = 2
          OnClick = bt_konutanimClick
          LookAndFeel.Kind = lfOffice11
        end
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 414
    Width = 669
    Height = 32
    DataSource = ara_sinavtanim
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alBottom
    TabOrder = 1
  end
  object ara_sinavtanim: TDataSource
    DataSet = tablo_sinavtanim
    Left = 97
    Top = 264
  end
  object tablo_sinavtanim: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    BeforePost = tablo_sinavtanimBeforePost
    RequestLive = True
    SQL.Strings = (
      'select * from sinavtanim order by sinav_tarihi desc,sinav_adi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 72
    Top = 280
    object tablo_sinavtanimsinav_no: TIntegerField
      FieldName = 'sinav_no'
    end
    object tablo_sinavtanimturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object tablo_sinavtanimsinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
    end
    object tablo_sinavtanimsinav_adi: TStringField
      FieldName = 'sinav_adi'
      Size = 25
    end
    object tablo_sinavtanimturkce_soru_sayisi: TSmallintField
      FieldName = 'turkce_soru_sayisi'
    end
    object tablo_sinavtanimtarih1_soru_sayisi: TSmallintField
      FieldName = 'tarih1_soru_sayisi'
    end
    object tablo_sinavtanimcografya_soru_sayisi: TSmallintField
      FieldName = 'cografya_soru_sayisi'
    end
    object tablo_sinavtanimfelsefe_soru_sayisi: TSmallintField
      FieldName = 'felsefe_soru_sayisi'
    end
    object tablo_sinavtanimsosyal1_soru_sayisi: TSmallintField
      FieldName = 'sosyal1_soru_sayisi'
    end
    object tablo_sinavtanimcebir1_soru_sayisi: TSmallintField
      FieldName = 'cebir1_soru_sayisi'
    end
    object tablo_sinavtanimgeometri1_soru_sayisi: TSmallintField
      FieldName = 'geometri1_soru_sayisi'
    end
    object tablo_sinavtanimmatematik1_soru_sayisi: TSmallintField
      FieldName = 'matematik1_soru_sayisi'
    end
    object tablo_sinavtanimmatematik2_soru_sayisi: TSmallintField
      FieldName = 'matematik2_soru_sayisi'
    end
    object tablo_sinavtanimfizik1_soru_sayisi: TSmallintField
      FieldName = 'fizik1_soru_sayisi'
    end
    object tablo_sinavtanimkimya1_soru_sayisi: TSmallintField
      FieldName = 'kimya1_soru_sayisi'
    end
    object tablo_sinavtanimbiyoloji1_soru_sayisi: TSmallintField
      FieldName = 'biyoloji1_soru_sayisi'
    end
    object tablo_sinavtanimfen1_soru_sayisi: TSmallintField
      FieldName = 'fen1_soru_sayisi'
    end
    object tablo_sinavtanimedebiyat_soru_sayisi: TSmallintField
      FieldName = 'edebiyat_soru_sayisi'
    end
    object tablo_sinavtanimturkiyecografyasi_soru_sayisi: TSmallintField
      FieldName = 'turkiyecografyasi_soru_sayisi'
    end
    object tablo_sinavtanimpsikoloji_soru_sayisi: TSmallintField
      FieldName = 'psikoloji_soru_sayisi'
    end
    object tablo_sinavtanimedebiyatsosyal_soru_sayisi: TSmallintField
      FieldName = 'edebiyatsosyal_soru_sayisi'
    end
    object tablo_sinavtanimtarih2_soru_sayisi: TSmallintField
      FieldName = 'tarih2_soru_sayisi'
    end
    object tablo_sinavtanimulkelercografyasi_soru_sayisi: TSmallintField
      FieldName = 'ulkelercografyasi_soru_sayisi'
    end
    object tablo_sinavtanimsosyoloji_soru_sayisi: TSmallintField
      FieldName = 'sosyoloji_soru_sayisi'
    end
    object tablo_sinavtanimmantik_soru_sayisi: TSmallintField
      FieldName = 'mantik_soru_sayisi'
    end
    object tablo_sinavtanimsosyal2_soru_sayisi: TSmallintField
      FieldName = 'sosyal2_soru_sayisi'
    end
    object tablo_sinavtanimcebir2_soru_sayisi: TSmallintField
      FieldName = 'cebir2_soru_sayisi'
    end
    object tablo_sinavtanimgeometri2_soru_sayisi: TSmallintField
      FieldName = 'geometri2_soru_sayisi'
    end
    object tablo_sinavtanimfizik2_soru_sayisi: TSmallintField
      FieldName = 'fizik2_soru_sayisi'
    end
    object tablo_sinavtanimkimya2_soru_sayisi: TSmallintField
      FieldName = 'kimya2_soru_sayisi'
    end
    object tablo_sinavtanimbiyoloji2_soru_sayisi: TSmallintField
      FieldName = 'biyoloji2_soru_sayisi'
    end
    object tablo_sinavtanimfen2_soru_sayisi: TSmallintField
      FieldName = 'fen2_soru_sayisi'
    end
    object tablo_sinavtanimingilizce_soru_sayisi: TSmallintField
      FieldName = 'ingilizce_soru_sayisi'
    end
    object tablo_sinavtanimAturkce: TStringField
      FieldName = 'Aturkce'
      Size = 255
    end
    object tablo_sinavtanimAsos1: TStringField
      FieldName = 'Asos1'
      Size = 255
    end
    object tablo_sinavtanimAmat1: TStringField
      FieldName = 'Amat1'
      Size = 255
    end
    object tablo_sinavtanimAfen1: TStringField
      FieldName = 'Afen1'
      Size = 255
    end
    object tablo_sinavtanimAedsos: TStringField
      FieldName = 'Aedsos'
      Size = 255
    end
    object tablo_sinavtanimAsos2: TStringField
      FieldName = 'Asos2'
      Size = 255
    end
    object tablo_sinavtanimAmat2: TStringField
      FieldName = 'Amat2'
      Size = 255
    end
    object tablo_sinavtanimAfen2: TStringField
      FieldName = 'Afen2'
      Size = 255
    end
    object tablo_sinavtanimAing: TStringField
      FieldName = 'Aing'
      Size = 255
    end
    object tablo_sinavtanimBturkce: TStringField
      FieldName = 'Bturkce'
      Size = 255
    end
    object tablo_sinavtanimBsos1: TStringField
      FieldName = 'Bsos1'
      Size = 255
    end
    object tablo_sinavtanimBmat1: TStringField
      FieldName = 'Bmat1'
      Size = 255
    end
    object tablo_sinavtanimBfen1: TStringField
      FieldName = 'Bfen1'
      Size = 255
    end
    object tablo_sinavtanimBedsos: TStringField
      FieldName = 'Bedsos'
      Size = 255
    end
    object tablo_sinavtanimBsos2: TStringField
      FieldName = 'Bsos2'
      Size = 255
    end
    object tablo_sinavtanimBmat2: TStringField
      FieldName = 'Bmat2'
      Size = 255
    end
    object tablo_sinavtanimBfen2: TStringField
      FieldName = 'Bfen2'
      Size = 255
    end
    object tablo_sinavtanimBing: TStringField
      FieldName = 'Bing'
      Size = 255
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      '')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 276
    Top = 256
  end
  object sc_text: TcxEditStyleController
    StyleFocused.Color = 11075583
    Left = 364
    Top = 244
  end
  object ara_sinavkonu: TDataSource
    DataSet = tablo_sinavkonu
    Enabled = False
    Left = 472
    Top = 224
  end
  object ara_konutanim: TDataSource
    DataSet = tablo_sinavkonutanim
    Enabled = False
    Left = 532
    Top = 280
  end
  object tablo_sinavkonutanim: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      'select * from sinavkonutanim where turu=:turu')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'turu'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 332
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'turu'
        ParamType = ptUnknown
      end>
    object tablo_sinavkonutanimid: TIntegerField
      FieldName = 'id'
    end
    object tablo_sinavkonutanimturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object tablo_sinavkonutanimders: TStringField
      FieldName = 'ders'
    end
    object tablo_sinavkonutanimkonu: TStringField
      FieldName = 'konu'
      Size = 255
    end
  end
  object tablo_sinavkonu: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'select sinav_no,kitapcik_a,soru_no_a,kitapcik_b,soru_no_b,(selec' +
        't ders from sinavkonutanim where id=konu_no) as ders_konu,ders,k' +
        'onu_no from sinavkonu where sinav_no=:sinav_no order by ders,kit' +
        'apcik_a')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'sinav_no'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 484
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sinav_no'
        ParamType = ptUnknown
      end>
    object tablo_sinavkonusinav_no: TIntegerField
      FieldName = 'sinav_no'
      Required = True
    end
    object tablo_sinavkonukitapcik_a: TIntegerField
      FieldName = 'kitapcik_a'
    end
    object tablo_sinavkonusoru_no_a: TIntegerField
      FieldName = 'soru_no_a'
      Required = True
    end
    object tablo_sinavkonukitapcik_b: TIntegerField
      FieldName = 'kitapcik_b'
    end
    object tablo_sinavkonusoru_no_b: TIntegerField
      FieldName = 'soru_no_b'
    end
    object tablo_sinavkonuders_konu: TStringField
      FieldName = 'ders_konu'
    end
    object tablo_sinavkonuders: TStringField
      FieldName = 'ders'
      Required = True
    end
    object tablo_sinavkonukonu_no: TIntegerField
      FieldName = 'konu_no'
    end
  end
end
