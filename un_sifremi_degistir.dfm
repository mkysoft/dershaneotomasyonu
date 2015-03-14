object fr_sifremi_degistir: Tfr_sifremi_degistir
  Left = 332
  Top = 179
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #350'ifremi De'#287'i'#351'tir'
  ClientHeight = 80
  ClientWidth = 203
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
  object tx_sifre: TcxTextEdit
    Left = 76
    Top = 3
    Width = 125
    Height = 21
    Properties.EchoMode = eemPassword
    TabOrder = 0
    OnKeyPress = tx_sifreKeyPress
  end
  object cxLabel1: TcxLabel
    Left = 4
    Top = 4
    Width = 72
    Height = 17
    AutoSize = False
    Caption = 'Yeni '#350'ifreniz :'
  end
  object bt_degistir: TBitBtn
    Left = 4
    Top = 52
    Width = 97
    Height = 25
    Caption = 'De'#287'i'#351'tir'
    TabOrder = 2
    OnClick = bt_degistirClick
  end
  object bt_iptal: TBitBtn
    Left = 104
    Top = 52
    Width = 97
    Height = 25
    Caption = #304'ptal'
    TabOrder = 3
    OnClick = bt_iptalClick
  end
  object tx_sifre_tekrar: TcxTextEdit
    Left = 76
    Top = 27
    Width = 125
    Height = 21
    Properties.EchoMode = eemPassword
    TabOrder = 1
    OnKeyPress = tx_sifre_tekrarKeyPress
  end
  object cxLabel2: TcxLabel
    Left = 30
    Top = 28
    Width = 47
    Height = 17
    AutoSize = False
    Caption = 'Tekrar :'
  end
  object tablo_sifre_degistir: TZReadOnlyQuery
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 148
    Top = 8
  end
end
