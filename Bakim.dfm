object FrBakim: TFrBakim
  Left = 328
  Top = 249
  BorderStyle = bsSingle
  Caption = 'Bak'#305'm'
  ClientHeight = 67
  ClientWidth = 157
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
  object cxLabel8: TcxLabel
    Left = 0
    Top = 36
    Width = 157
    Height = 31
    TabStop = False
    Align = alBottom
    AutoSize = False
    Caption = ' Hata olmasa bile arada bir kullanmak h'#305'z kazand'#305'r'#305'r.'
    Properties.LabelStyle = cxlsRaised
    Properties.PenWidth = 0
    Properties.WordWrap = True
    Style.BorderStyle = ebsFlat
  end
  object bt_bakim: TBitBtn
    Left = 12
    Top = 8
    Width = 129
    Height = 25
    Caption = 'Bak'#305'm '#304#351'lemini Ba'#351'lat'
    TabOrder = 1
    OnClick = bt_bakimClick
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_kok
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 28
    Top = 8
  end
end
