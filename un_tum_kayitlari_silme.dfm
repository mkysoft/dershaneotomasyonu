object fr_tum_kayitlari_silme: Tfr_tum_kayitlari_silme
  Left = 328
  Top = 249
  BorderStyle = bsSingle
  Caption = 'T'#252'm Kay'#305'tlar'#305' Silme'
  ClientHeight = 255
  ClientWidth = 279
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
    Width = 145
    Height = 255
    Align = alLeft
    Caption = ' Silmek '#304'stedi'#287'iniz Tablolar '
    TabOrder = 0
    object lst_tablolar: TcxCheckListBox
      Left = 2
      Top = 32
      Width = 141
      Height = 189
      EditValue = 0
      OnClickCheck = lst_tablolarClickCheck
      Align = alClient
      Columns = 0
      Items = <
        item
          Text = 'ders_programlari'
        end
        item
          Text = 'devamsizliklar'
        end
        item
          Text = 'evrak_durumu'
        end
        item
          Text = 'geciken_borc_bildirimi'
        end
        item
          Text = 'gizli'
        end
        item
          Text = 'gorunum'
        end
        item
          Text = 'gruplar'
        end
        item
          Text = 'kayitbedeli'
        end
        item
          Text = 'maas'
        end
        item
          Text = 'ogrenciler'
        end
        item
          Text = 'paraakisi'
        end
        item
          Text = 'personel'
        end
        item
          Text = 'rehberlik_notlari'
        end
        item
          Text = 'sinavtanim'
        end
        item
          Text = 'sinavsonuc'
        end
        item
          Text = 'siniflar'
        end
        item
          Text = 'taksitler'
        end
        item
          Text = 'veliler'
        end>
      ScrollWidth = 0
      TabOrder = 0
      TabWidth = 0
    end
    object Panel1: TPanel
      Left = 2
      Top = 221
      Width = 141
      Height = 32
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object bt_sil: TBitBtn
        Left = 8
        Top = 4
        Width = 129
        Height = 25
        Caption = 'Se'#231'ili Tablolar'#305' Sil'
        TabOrder = 0
        OnClick = bt_silClick
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 141
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object chk_tumunu_sec: TcxCheckBox
        Left = 0
        Top = -4
        Width = 113
        Height = 21
        ParentFont = False
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = 'T'#252'm'#252'n'#252' Se'#231
        Style.BorderColor = clBlack
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        OnClick = chk_tumunu_secClick
      end
    end
  end
  object cxLabel8: TcxLabel
    Left = 145
    Top = 0
    Width = 134
    Height = 255
    TabStop = False
    Align = alClient
    AutoSize = False
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
    TabOrder = 1
    Caption = 
      'Silme i'#351'lemi yapmadan '#246'nce yedek almay'#305' unutmay'#305'n'#305'z. Silme i'#351'lle' +
      'mini Muhasebe ve M'#252'd'#252'r kullan'#305'c'#305'lar'#305' yapabilir. Buradan sildi'#287'ni' +
      'z kay'#305'tlar tamamen silinir. Muhasebe kay'#305'tlar'#305'n'#305'zda dengesizlik ' +
      'olu'#351'abilir. Olu'#351'mamas'#305' i'#231'in paraakisi tablosunu silmek yerine, M' +
      'uhasebe men'#252's'#252'nden Hesap Kapatma'#39' y'#305' kullan'#305'n'#305'n'#305'z.'
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 188
    Top = 180
  end
end
