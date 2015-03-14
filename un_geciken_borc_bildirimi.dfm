object fr_geciken_borc_bildirimi: Tfr_geciken_borc_bildirimi
  Left = 235
  Top = 224
  Width = 771
  Height = 440
  Caption = 'Geciken Bor'#231' Bildirimi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 81
      Top = 0
      Width = 590
      Height = 97
      Align = alClient
      Caption = ' Geciken bor'#231' bildirimi listeleme secenekleri '
      TabOrder = 0
      object Label7: TLabel
        Left = 2
        Top = 16
        Width = 73
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'D'#246'nemi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 82
        Top = 16
        Width = 81
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = #214#287'renci No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 166
        Top = 16
        Width = 77
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Kontrol Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 333
        Top = 16
        Width = 81
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'#231#305'klama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 249
        Top = 16
        Width = 77
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Bildirim Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 417
        Top = 16
        Width = 85
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Kullan'#305'c'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cm_don_kis: TcxComboBox
        Left = 2
        Top = 32
        Width = 77
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252)
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 0
        Text = 'T'#252'm'#252
      end
      object cm_ogr_kis: TcxComboBox
        Left = 82
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          'B'#252'y'#252'k'
          'K'#252#231#252'k'
          'Aras'#305'nda')
        Properties.ReadOnly = False
        Properties.OnChange = cm_ogr_kisPropertiesChange
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 1
        Text = 'T'#252'm'#252
      end
      object cxLabel1: TcxLabel
        Left = 30
        Top = 52
        Width = 50
        Height = 17
        Caption = 'Ba'#351'lang'#305#231
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object cxLabel3: TcxLabel
        Left = 54
        Top = 72
        Width = 23
        Height = 17
        Caption = 'Biti'#351
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
      end
      object tx_ogr_bit: TcxTextEdit
        Left = 82
        Top = 72
        Width = 49
        Height = 21
        Enabled = False
        Properties.MaxLength = 4
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 4
      end
      object tx_ogr_bas: TcxTextEdit
        Left = 82
        Top = 52
        Width = 49
        Height = 21
        Enabled = False
        Properties.MaxLength = 4
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 5
      end
      object bt_bas_bul: TBitBtn
        Left = 134
        Top = 53
        Width = 29
        Height = 19
        Caption = 'Bul'
        TabOrder = 6
        OnClick = bt_bas_bulClick
        Style = bsNew
      end
      object bt_bit_bul: TBitBtn
        Left = 134
        Top = 73
        Width = 29
        Height = 19
        Caption = 'Bul'
        TabOrder = 7
        OnClick = bt_bas_bulClick
        Style = bsNew
      end
      object cm_tar_kis: TcxComboBox
        Left = 166
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it')
        Properties.OnChange = cm_tar_kisPropertiesChange
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 8
        Text = 'T'#252'm'#252
      end
      object cm_aci_kis: TcxComboBox
        Left = 333
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          #304#231'eren')
        Properties.OnChange = cm_aci_kisPropertiesChange
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 9
        Text = 'T'#252'm'#252
      end
      object tx_aci_bas: TcxTextEdit
        Left = 333
        Top = 52
        Width = 81
        Height = 21
        AutoSize = False
        Enabled = False
        Properties.MaxLength = 255
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 10
      end
      object bt_goster: TBitBtn
        Left = 505
        Top = 23
        Width = 80
        Height = 33
        Caption = 'G'#246'ster'
        TabOrder = 11
        OnClick = bt_gosterClick
        Glyph.Data = {
          16060000424D1606000000000000360400002800000014000000180000000100
          080000000000E0010000D30E0000D30E00000001000000010000734229007B4A
          3900844A3900E7734200EF7B4200F7844200EF844A00F7844A00946B5200B56B
          5200E7845200F78C5200FF8C520084635A009C6B5A00B5735A00BD735A00F78C
          5A008C736300A5736300A57B6300B57B6300BD7B6300C67B6300CE7B6300BD84
          6300C6846300CE846300E78C6300FF9C6300FFA56300AD7B6B00BD846B00C684
          6B00CE846B00DE946B00E7946B00FFA56B009C7B7300B5847300C68C7300CE8C
          7300CE947300E7947300EF947300DE9C7300E79C7300EF9C7300FFA57300FFAD
          73009C847B00A5847B00B58C7B00BD8C7B00C68C7B00CE8C7B00B5947B00CE94
          7B00D6947B00DE947B00E7947B00DE9C7B00E79C7B00E7A57B00DEAD7B00FFAD
          7B00AD8C8400B58C8400C6948400D6948400DE948400CE9C8400D69C8400DE9C
          8400EF9C8400F7A58400EFAD8400F7AD8400DE9C8C00D6A58C00DEA58C00E7A5
          8C00EFA58C00E7AD8C00EFAD8C00FFAD8C00FFBD8C00FFC68C00BD9C9400CE9C
          9400BDA59400CEA59400D6A59400DEA59400E7A59400D6AD9400DEAD9400E7AD
          9400DEB59400E7B59400EFB59400F7B59400FFB59400F7BD9400FFC69400DEAD
          9C00E7AD9C00DEB59C00E7B59C00EFB59C00E7BD9C00EFBD9C00F7C69C00FFDE
          9C00948CA500E7ADA500DEB5A500E7B5A500FFB5A500DEBDA500E7BDA500EFBD
          A500F7BDA500FFBDA500EFC6A500F7C6A500FFC6A5007384AD008C94AD00CEAD
          AD00E7B5AD00DEBDAD00E7BDAD00FFBDAD00E7C6AD00EFC6AD00F7C6AD00FFC6
          AD00E7CEAD00EFCEAD00F7CEAD00FFCEAD00B5B5B500CEBDB500E7BDB500DEC6
          B500E7C6B500FFC6B500E7CEB500EFCEB500F7CEB500FFCEB500EFD6B500F7D6
          B500FFD6B500FFDEB500E7C6BD00E7CEBD00EFCEBD00FFCEBD00E7D6BD00F7D6
          BD00FFD6BD00FFDEBD009CADC600E7CEC600EFD6C600FFD6C600EFDEC600F7DE
          C600FFDEC600FFE7C600FFEFC600D6CECE00F7D6CE00FFD6CE00E7DECE00FFDE
          CE00F7E7CE00FFE7CE00FFEFCE001063D600BDB5D600FFDED600F7E7D600F7EF
          D600FFEFD600FFF7D600A5CEDE00F7E7DE00FFE7DE00F7EFDE00F7F7DE00FFF7
          DE00FFFFDE00086BE700ADC6E700EFEFE700FFEFE700F7F7E700FFFFE7005294
          F7004A9CF700FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCDCDCDCDCD
          CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD201328362742322B2BCDCDCDCDCDCDCD
          CDCDCD1B48396C502035442708080002020DCDCDCDCDCD194E89AB78293B554B
          4B4B273326010DCDCDCDCD214E769A7848656521093C522118200ECDCDCDCD21
          4E7A8D8786A25059A66D3E512B5043CDCDCDCD21507B977C696B6094C5836079
          646C34CDCDCDCD1A5085A3620F107D8A146BA3777C7827CDCDCDCD205D93A26B
          476C5F28175160363D6B34CDCDCDCD1A5D93978794B45C45A26C39453B6034CD
          CDCDCD1A5E939A8B747779A2BF866C886F7734CDCDCDCD1A5E9FAB6215167D7C
          1F6B9A68718D34CDCDCDCD1A6AA7AB6035606E4F2856817F808F47CDCDCDCD1A
          6AA7A38691B4745CA35772C3B5A440CDCDCDCD1974AFA2999277879591688ECA
          C9B62DCDCDCDCD1974B1AA9A7C8C6CA1A8ABB0BCC4AD2ACDCDCDCD1A74B7AA7D
          8C6F8C8C8C99958698A644CDCDCDCD1A82BEA1532E4B4B4B3D3D3D4C659658CD
          CDCDCD1A90C6A92F061D1E1D2525304130795ACDCDCDCD1A82C6B34C03040404
          06060B0C045158CDCDCDCD1A90CBC199533F2E2B23231C110A635BCDCDCDCD1B
          AECECCC2C2C2C1C2C1C1AA8C9ABA6BCDCDCDCDCD6BBDB2B2B9BFC0BFB9C0B9B8
          C2C16BCDCDCDCDCDCD8492929CA5A69D91A6B9C1C8B974CDCDCD}
      end
      object bt_Sifirla: TBitBtn
        Left = 505
        Top = 59
        Width = 80
        Height = 33
        Caption = 'S'#305'f'#305'rla'
        TabOrder = 12
        OnClick = bt_SifirlaClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000FE0E0000FE0E000000010000000100009C5A2900B573
          2900BD7B4A00DE9C7300E7A57300394A9400949494004A6B9C00E7CEB5007B94
          C600F7E7D600ADCEE700E7E7E700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D0D0D0D0D
          0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D00000000000000000000000000
          0D0D0D0D0D0D0D0D0D0D0D000801010101010101010A0001000D0D0D0D0D0D0D
          0D0D0D000802020202020202020A000101000D0D0D0D0D0D0D0D0D0008020202
          02020202020A00010101000D0D0D0D0D0D0D0D000608030303030303030A0600
          010101050D0D0D0D0D0D0D0D000808080808080A0A0C080001010107050D0D0D
          0D0D0D0D0D00040404040404040404040001010907050D0D0D0D0D0D0D0D0004
          0404040404040404040001090907050D0D0D0D0D0D0D0D000404040404040404
          04040007090907050D0D0D0D0D0D0D0D00040404040404040404040507090907
          050D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B05070909050D0D0D0D0D0D0D
          0D0D050B0B0B0B0B0B0B0B0B0B050709050D0D0D0D0D0D0D0D0D0D050B0B0B0B
          0B0B0B0B0B0B0507050D0D0D0D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B05
          050D0D0D0D0D0D0D0D0D0D0D0D050B0B0B0B0B0B0B0B0B0B050D0D0D0D0D0D0D
          0D0D0D0D0D0D070505050505050505070D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
      end
      object cm_bil_kis: TcxComboBox
        Left = 249
        Top = 32
        Width = 81
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          'B'#252'y'#252'k'
          'K'#252#231#252'k'
          'Aras'#305'nda')
        Properties.OnChange = cm_bil_kisPropertiesChange
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 13
        Text = 'T'#252'm'#252
      end
      object tx_bil_bas: TcxDateEdit
        Left = 249
        Top = 52
        Width = 81
        Height = 21
        Enabled = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 14
      end
      object tx_bil_bit: TcxDateEdit
        Left = 249
        Top = 72
        Width = 81
        Height = 21
        Enabled = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 15
      end
      object cm_kul_kis: TcxComboBox
        Left = 417
        Top = 32
        Width = 85
        Height = 21
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'T'#252'm'#252
          'E'#351'it'
          #304#231'eren')
        Properties.OnChange = cm_kul_kisPropertiesChange
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 16
        Text = 'T'#252'm'#252
      end
      object tx_kul_bas: TcxTextEdit
        Left = 417
        Top = 52
        Width = 85
        Height = 21
        AutoSize = False
        Enabled = False
        Properties.MaxLength = 255
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 17
      end
      object tx_kontrol_tarihleri: TcxComboBox
        Left = 166
        Top = 52
        Width = 81
        Height = 21
        Enabled = False
        Properties.DropDownListStyle = lsEditFixedList
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 18
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 671
      Top = 0
      Width = 92
      Height = 97
      Align = alRight
      Caption = #199#305'kt'#305' Se'#231'enekleri'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      TabOrder = 1
      object bt_tablo: TBitBtn
        Left = 5
        Top = 23
        Width = 82
        Height = 33
        Caption = 'Tablo >>'
        TabOrder = 0
        OnClick = bt_tabloClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000320B0000320B00000001000000010000CE630000D66B
          0000D6730000DE7B0000D6731000D67B2100CE636300E7A563009C9C9C00FF9C
          9C00FFEFD600FFF7EF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000000
          0C0C0C0C000D0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A000C0C0C0C000D0B0B
          0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B060B0B06060B06060B
          06060B06060B0A000C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A00
          0C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B06
          0B0B09090B09090B09090B09090B0A000C0C0C0C000D0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0A000C0C0C0C000D0B060B0B09090B09090B09090B09090B0A00
          0C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B06
          0B0B09090B09090B09090B09090B0A000C0C0C0C000D0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0A000C0C0C0C000D0B08080808080808080808080808080B0A00
          0C0C0C0C000D0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A000C0C0C0C000D0B0B
          0B0B09090B09090B09090B09090B0A000C0C0C0C010D0B0B0B0B0B0B0B0B0B0B
          0B0B0B0B0B0B0A000C0C0C0C010D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0A00
          0C0C0C0C02030303030303030303030303030303030303000C0C0C0C00000000
          000000000000000000000000000000070C0C0C0C0C0404040404040404040404
          040404040404050C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C}
      end
      object bt_bildirim: TBitBtn
        Left = 5
        Top = 59
        Width = 82
        Height = 33
        Caption = 'Bildirim >>'
        TabOrder = 1
        OnClick = bt_bildirimClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000130F0000130F00000001000000010000392918003131
          310021214A007B5A4A007363520018425A00846B5A000842630021526B005263
          6B0029637B00847B7B0084847B008C847B009C948C004A6B9C009C9C9C00B5B5
          B500E7CEB5003139BD008CB5C60010A5D60029ADD600D6D6D60042A5DE00DEDE
          DE000010E700F7EFE700299CEF002973F70073DEF70042E7F700FF00FF008CEF
          FF008CF7FF009CFFFF00ADFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020161616161616161616161616161616161616161616
          20202016222222221E1E1E1E1E1E1E1E1E16161E1E1E1E162020201622222221
          211E1E1E1E1E1E1E1E1624161E1E1E1620202016222222222221211E1E1E1E1E
          1E162424161E1E162020201622222222222121211E1E1E1E1E16242422161E16
          202020162323222222222121211E1E1E1E162222222216162020201623231910
          10100B010311211E1E16161616161616202020162323232222222203000A091E
          1E1E1E1E1E1E1E1620202016232323232322221714221D081E1E1E1E1E1E1E16
          20202016232323232323222215221D1D0721211E1E1E1E162020201623231910
          10100B0B0B151F1D1D080B0B0B0B1E162020201623232323232323232222151F
          1D1D0521211E1E16202020162323232323232323232222151F1D1D0821211E16
          20202016232323232323232323222222151F1D1D072121162020201616161616
          161616161616161616151F1D1301161620202020202020202020202020202020
          202015180D0C01202020202020202020202020202020202020202006251B0402
          20202020202020202020202020202020202020200E120A1D1320202020202020
          202020202020202020202020200F1C1D13202020202020202020202020202020
          2020202020201A1A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020}
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 0
      Top = 0
      Width = 81
      Height = 97
      Align = alLeft
      Caption = ' Bor'#231' Hesapla '
      TabOrder = 2
      object Label2: TLabel
        Left = 4
        Top = 30
        Width = 73
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Kontrol Tarihi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object tx_kontol_tarih: TcxDateEdit
        Left = 2
        Top = 44
        Width = 77
        Height = 21
        Properties.DateOnError = deToday
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 0
      end
      object bt_hesapla: TBitBtn
        Left = 4
        Top = 68
        Width = 73
        Height = 25
        Caption = 'Hesapla'
        TabOrder = 1
        OnClick = bt_hesaplaClick
      end
    end
  end
  object gr_geciken_borc: TcxGrid
    Left = 0
    Top = 97
    Width = 763
    Height = 309
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    object geciken_borc_bildirimi: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Refresh.Enabled = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Visible = False
      DataController.DataModeController.GridMode = True
      DataController.DataSource = ara_geciken_borc_bildirimi
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.,##'
          Kind = skSum
          FieldName = 'geciken_borc_miktari'
          Column = geciken_borc_bildirimigeciken_borc_miktari
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.GroupRowSizing = True
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object geciken_borc_bildirimiid: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'id'
        Options.Editing = False
        Options.Filtering = False
        Width = 20
      end
      object geciken_borc_bildirimidonemi: TcxGridDBColumn
        Caption = 'D'#246'nemi'
        DataBinding.FieldName = 'donemi'
        Options.Editing = False
      end
      object geciken_borc_bildirimisinifi: TcxGridDBColumn
        Caption = 'S'#305'n'#305'f'#305
        DataBinding.FieldName = 'sinifi'
        Width = 87
      end
      object geciken_borc_bildirimiogr_no: TcxGridDBColumn
        Caption = #214#287'renci No'
        DataBinding.FieldName = 'ogr_no'
        Options.Editing = False
        Options.Filtering = False
        Width = 61
      end
      object geciken_borc_bildirimiadi: TcxGridDBColumn
        Caption = 'Ad'#305
        DataBinding.FieldName = 'adi'
        Options.Editing = False
        Options.Filtering = False
        Width = 81
      end
      object geciken_borc_bildirimisoyadi: TcxGridDBColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'soyadi'
        Options.Editing = False
        Options.Filtering = False
        Width = 84
      end
      object geciken_borc_bildirimiveli_adi: TcxGridDBColumn
        Caption = 'Veli Ad'#305
        DataBinding.FieldName = 'veli_adi'
        Options.Editing = False
        Options.Filtering = False
        Width = 84
      end
      object geciken_borc_bildirimiveli_soyadi: TcxGridDBColumn
        Caption = 'Veli Soyadi'
        DataBinding.FieldName = 'veli_soyadi'
        Options.Editing = False
        Options.Filtering = False
        Width = 71
      end
      object geciken_borc_bildirimiev_telefonu: TcxGridDBColumn
        Caption = 'Ev Telefonu'
        DataBinding.FieldName = 'ev_telefonu'
        Options.Filtering = False
      end
      object geciken_borc_bildirimigsm: TcxGridDBColumn
        Caption = 'GSM'
        DataBinding.FieldName = 'gsm'
        Options.Filtering = False
      end
      object geciken_borc_bildirimiis_telefonu: TcxGridDBColumn
        Caption = #304#351' Telefonu'
        DataBinding.FieldName = 'is_telefonu'
        Options.Filtering = False
      end
      object geciken_borc_bildirimikontrol_tarihi: TcxGridDBColumn
        Caption = 'Kontrol Tarihi'
        DataBinding.FieldName = 'kontrol_tarihi'
        Visible = False
        GroupIndex = 0
        SortIndex = 0
        SortOrder = soAscending
        Width = 76
      end
      object geciken_borc_bildirimigeciken_borc_miktari: TcxGridDBColumn
        Caption = 'Geciken Bor'#231' Miktari'
        DataBinding.FieldName = 'geciken_borc_miktari'
        Width = 123
      end
      object geciken_borc_bildirimiaciklama: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Bilgilendirildi.'
          'Ula'#351#305'lamad'#305'.'
          #304'leti'#351'im bilgileri yanl'#305#351'.')
        Properties.ReadOnly = False
        Width = 186
      end
      object geciken_borc_bildirimikiminle_gorusuldu: TcxGridDBColumn
        Caption = 'Kiminle G'#246'r'#252#351#252'ld'#252
        DataBinding.FieldName = 'kiminle_gorusuldu'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Annesi'
          'Babas'#305
          'Karde'#351'i'
          'Abisi'
          'Ablas'#305)
        Options.Filtering = False
      end
      object geciken_borc_bildirimibildirim_tarihi: TcxGridDBColumn
        Caption = 'Bildirim Tarihi'
        DataBinding.FieldName = 'bildirim_tarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = False
      end
      object geciken_borc_bildirimikullanici: TcxGridDBColumn
        Caption = 'Kullan'#305'c'#305
        DataBinding.FieldName = 'kullanici'
        Options.Editing = False
        Width = 96
      end
      object geciken_borc_bildirimisms_bildirim: TcxGridDBColumn
        DataBinding.FieldName = 'sms_bildirim'
        Visible = False
        Options.Filtering = False
      end
      object geciken_borc_bildirimifax_bildirim: TcxGridDBColumn
        DataBinding.FieldName = 'fax_bildirim'
        Visible = False
        Options.Filtering = False
      end
      object geciken_borc_bildirimiemail_bildirim: TcxGridDBColumn
        DataBinding.FieldName = 'email_bildirim'
        Visible = False
        Options.Filtering = False
      end
    end
    object geciken_borc_detay: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataModeController.GridMode = True
      DataController.DataSource = ara_geciken_detay
      DataController.DetailKeyFieldNames = 'donemi;ogr_no'
      DataController.KeyFieldNames = 'id'
      DataController.MasterKeyFieldNames = 'donemi;ogr_no'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object geciken_borc_detayaciklama: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
      end
      object geciken_borc_detaykontrol_tarihi: TcxGridDBColumn
        Caption = 'Kontrol Tarihi'
        DataBinding.FieldName = 'kontrol_tarihi'
      end
      object geciken_borc_detaybildirim_tarihi: TcxGridDBColumn
        Caption = 'Bildirim Tarihi'
        DataBinding.FieldName = 'bildirim_tarihi'
      end
      object geciken_borc_detaykiminle_gorusuldu: TcxGridDBColumn
        Caption = 'Kiminle G'#246'r'#252#351#252'ld'#252
        DataBinding.FieldName = 'kiminle_gorusuldu'
      end
      object geciken_borc_detaykullanici: TcxGridDBColumn
        Caption = 'Kullan'#305'c'#305
        DataBinding.FieldName = 'kullanici'
      end
    end
    object level1: TcxGridLevel
      Caption = 'Devams'#305'zl'#305'k Listesi'
      GridView = geciken_borc_bildirimi
      object level2: TcxGridLevel
        GridView = geciken_borc_detay
      end
    end
  end
  object ara_geciken_borc_bildirimi: TDataSource
    DataSet = tablo_geciken_borc_bildirimi
    Enabled = False
    Left = 572
    Top = 240
  end
  object mn_geciken_borc_bildirimi: TcxGridPopupMenu
    Grid = gr_geciken_borc
    PopupMenus = <>
    Left = 304
    Top = 204
  end
  object ogr_veli_bilgileri: TZReadOnlyQuery
    Connection = veriler.data_dershane
    AutoCalcFields = False
    SQL.Strings = (
      
        'select sinifi,donemi,ogr_no,adi,soyadi,veli_adi,veli_soyadi,is_t' +
        'elefonu,ev_telefonu,gsm,sms_bildirim,fax_bildirim,email_bildirim' +
        ' from ogrenciler o left join veliler v on o.veli_kodu=v.veli_kod' +
        'u order by donemi,ogr_no')
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 428
    Top = 232
    object ogr_veli_bilgilerisinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object ogr_veli_bilgileridonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object ogr_veli_bilgileriogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object ogr_veli_bilgileriadi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object ogr_veli_bilgilerisoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object ogr_veli_bilgileriveli_adi: TStringField
      FieldName = 'veli_adi'
      Required = True
      Size = 25
    end
    object ogr_veli_bilgileriveli_soyadi: TStringField
      FieldName = 'veli_soyadi'
      Required = True
      Size = 15
    end
    object ogr_veli_bilgileriis_telefonu: TStringField
      FieldName = 'is_telefonu'
      Size = 15
    end
    object ogr_veli_bilgileriev_telefonu: TStringField
      FieldName = 'ev_telefonu'
      Size = 15
    end
    object ogr_veli_bilgilerigsm: TStringField
      FieldName = 'gsm'
      Size = 15
    end
    object ogr_veli_bilgilerisms_bildirim: TStringField
      FieldName = 'sms_bildirim'
      Required = True
      Size = 5
    end
    object ogr_veli_bilgilerifax_bildirim: TStringField
      FieldName = 'fax_bildirim'
      Required = True
      Size = 5
    end
    object ogr_veli_bilgileriemail_bildirim: TStringField
      FieldName = 'email_bildirim'
      Required = True
      Size = 5
    end
  end
  object tablo_geciken_borc_bildirimi: TZQuery
    Connection = veriler.data_dershane
    AutoCalcFields = False
    OnCalcFields = tablo_geciken_borc_bildirimiCalcFields
    OnFilterRecord = tablo_geciken_borc_bildirimiFilterRecord
    CachedUpdates = False
    AfterEdit = tablo_geciken_borc_bildirimiAfterEdit
    RequestLive = True
    SQL.Strings = (
      'select * from geciken_borc_bildirimi')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 576
    Top = 188
    object tablo_geciken_borc_bildirimiid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
    object tablo_geciken_borc_bildirimidonemi: TStringField
      FieldName = 'donemi'
      ReadOnly = True
      Size = 9
    end
    object tablo_geciken_borc_bildirimiogr_no: TIntegerField
      FieldName = 'ogr_no'
      ReadOnly = True
    end
    object tablo_geciken_borc_bildirimikullanici: TStringField
      FieldName = 'kullanici'
      Size = 16
    end
    object tablo_geciken_borc_bildirimikontrol_tarihi: TDateTimeField
      FieldName = 'kontrol_tarihi'
    end
    object tablo_geciken_borc_bildirimigeciken_borc_miktari: TFloatField
      FieldName = 'geciken_borc_miktari'
      ReadOnly = True
      DisplayFormat = '0,.##'
    end
    object tablo_geciken_borc_bildirimibildirim_tarihi: TDateTimeField
      FieldName = 'bildirim_tarihi'
    end
    object tablo_geciken_borc_bildirimikiminle_gorusuldu: TStringField
      FieldName = 'kiminle_gorusuldu'
    end
    object tablo_geciken_borc_bildirimiaciklama: TStringField
      FieldName = 'aciklama'
      Size = 50
    end
    object tablo_geciken_borc_bildirimiaktif: TIntegerField
      FieldName = 'aktif'
      Required = True
    end
    object tablo_geciken_borc_bildirimiadi: TStringField
      FieldKind = fkCalculated
      FieldName = 'adi'
      Size = 15
      Calculated = True
    end
    object tablo_geciken_borc_bildirimisoyadi: TStringField
      FieldKind = fkCalculated
      FieldName = 'soyadi'
      Size = 15
      Calculated = True
    end
    object tablo_geciken_borc_bildirimiveli_adi: TStringField
      FieldKind = fkCalculated
      FieldName = 'veli_adi'
      Size = 25
      Calculated = True
    end
    object tablo_geciken_borc_bildirimiveli_soyadi: TStringField
      FieldKind = fkCalculated
      FieldName = 'veli_soyadi'
      Size = 15
      Calculated = True
    end
    object tablo_geciken_borc_bildirimiev_telefonu: TStringField
      FieldKind = fkCalculated
      FieldName = 'ev_telefonu'
      Size = 15
      Calculated = True
    end
    object tablo_geciken_borc_bildirimiis_telefonu: TStringField
      FieldKind = fkCalculated
      FieldName = 'is_telefonu'
      Size = 15
      Calculated = True
    end
    object tablo_geciken_borc_bildirimigsm: TStringField
      FieldKind = fkCalculated
      FieldName = 'gsm'
      Size = 15
      Calculated = True
    end
    object tablo_geciken_borc_bildirimisinifi: TStringField
      FieldKind = fkCalculated
      FieldName = 'sinifi'
      Size = 7
      Calculated = True
    end
    object tablo_geciken_borc_bildirimisms_bildirim: TStringField
      FieldKind = fkCalculated
      FieldName = 'sms_bildirim'
      Size = 5
      Calculated = True
    end
    object tablo_geciken_borc_bildirimifax_bildirim: TStringField
      FieldKind = fkCalculated
      FieldName = 'fax_bildirim'
      Size = 5
      Calculated = True
    end
    object tablo_geciken_borc_bildirimiemail_bildirim: TStringField
      FieldKind = fkCalculated
      FieldName = 'email_bildirim'
      Size = 5
      Calculated = True
    end
  end
  object dosya: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Geciken Bor'#231' Bildirimi'
    Filter = 'Exel Dosyalar'#305' (*.xls) |*.xls|T'#252'm Dosyalar|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableIncludeNotify, ofEnableSizing]
    Title = 'Kaydet'
    OnCanClose = dosyaCanClose
    Left = 200
    Top = 188
  end
  object t_zaman: TTimer
    Enabled = False
    OnTimer = t_zamanTimer
    Left = 156
    Top = 272
  end
  object pr_geciken_borc_bildirimi: TdxComponentPrinter
    CurrentLink = pr_geciken_borc_bildirimiLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPageSetup, peoPrint]
    Version = 0
    Left = 404
    Top = 168
    object pr_geciken_borc_bildirimiLink1: TdxGridReportLink
      Component = gr_geciken_borc
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Geciken Bor'#231' Bildirimi'
      BuiltInReportLink = True
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 80
    Top = 200
  end
  object tablo_geciken_borc_ekle: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 76
    Top = 248
  end
  object tablo_ogrenciler: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 84
    Top = 156
  end
  object tablo_taksit: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 76
    Top = 308
  end
  object ara_ogr_veli_bilgileri: TDataSource
    DataSet = ogr_veli_bilgileri
    Enabled = False
    Left = 476
    Top = 296
  end
  object tablo_geciken_detay: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'select * from geciken_borc_bildirimi where donemi=:donemi and og' +
        'r_no=:ogr_no and geciken_borc_miktari=0 and aktif=1')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'donemi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ogr_no'
        ParamType = ptUnknown
      end>
    DataSource = ara_geciken_borc_bildirimi
    Options = [doCalcDefaults]
    Left = 692
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'donemi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ogr_no'
        ParamType = ptUnknown
      end>
    object tablo_geciken_detayid: TLargeintField
      FieldName = 'id'
    end
    object tablo_geciken_detaydonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_geciken_detayogr_no: TIntegerField
      FieldName = 'ogr_no'
    end
    object tablo_geciken_detaykontrol_tarihi: TDateField
      FieldName = 'kontrol_tarihi'
      Required = True
    end
    object tablo_geciken_detaygeciken_borc_miktari: TFloatField
      FieldName = 'geciken_borc_miktari'
      Required = True
    end
    object tablo_geciken_detaybildirim_tarihi: TDateTimeField
      FieldName = 'bildirim_tarihi'
    end
    object tablo_geciken_detaykiminle_gorusuldu: TStringField
      FieldName = 'kiminle_gorusuldu'
    end
    object tablo_geciken_detayaciklama: TStringField
      FieldName = 'aciklama'
      Size = 255
    end
    object tablo_geciken_detaykullanici: TStringField
      FieldName = 'kullanici'
      Size = 16
    end
    object tablo_geciken_detayaktif: TIntegerField
      FieldName = 'aktif'
      Required = True
    end
  end
  object ara_geciken_detay: TDataSource
    DataSet = tablo_geciken_detay
    Left = 684
    Top = 252
  end
  object mn_tablo: TPopupMenu
    Images = veriler.il_genel
    Left = 332
    Top = 304
    object mn_yazdir: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 2
      OnClick = mn_yazdirClick
    end
    object mn_excel: TMenuItem
      Caption = 'Excel'#39'e Aktar'
      ImageIndex = 3
      OnClick = mn_excelClick
    end
  end
  object mn_bildirim: TPopupMenu
    Images = veriler.il_genel
    Left = 388
    Top = 300
    object mn_sms: TMenuItem
      Caption = 'SMS'
      ImageIndex = 0
      OnClick = mn_smsClick
    end
    object mn_eposta: TMenuItem
      Caption = 'Eposta'
      ImageIndex = 1
    end
    object mn_faks: TMenuItem
      Caption = 'Faks'
      Enabled = False
    end
  end
end
