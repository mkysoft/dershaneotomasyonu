object fr_ogrenci_izleme: Tfr_ogrenci_izleme
  Left = 209
  Top = 207
  Width = 748
  Height = 433
  Caption = #214#287'renci '#304'zleme'
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
    Width = 137
    Height = 399
    Align = alLeft
    Caption = ' '#214#287'renci '
    TabOrder = 0
    object Label1: TLabel
      Left = 62
      Top = 134
      Width = 22
      Height = 13
      Caption = 'S'#305'n'#305'f'#305
    end
    object Label2: TLabel
      Left = 7
      Top = 214
      Width = 32
      Height = 13
      Caption = 'Soyad'#305
    end
    object Label3: TLabel
      Left = 7
      Top = 134
      Width = 44
      Height = 13
      Caption = 'Numaras'#305
    end
    object Label4: TLabel
      Left = 7
      Top = 174
      Width = 15
      Height = 13
      Caption = 'Ad'#305
    end
    object Label5: TLabel
      Left = 7
      Top = 116
      Width = 36
      Height = 13
      Caption = 'D'#246'nemi'
    end
    object tx_ogr_no: TcxDBTextEdit
      Left = 4
      Top = 148
      Width = 53
      Height = 21
      DataBinding.DataField = 'ogr_no'
      DataBinding.DataSource = ara_ogrenciler
      Properties.MaxLength = 4
      Properties.ReadOnly = True
      TabOrder = 0
    end
    object tx_adi: TcxDBTextEdit
      Left = 4
      Top = 188
      Width = 129
      Height = 21
      DataBinding.DataField = 'adi'
      DataBinding.DataSource = ara_ogrenciler
      Properties.MaxLength = 15
      Properties.ReadOnly = False
      TabOrder = 1
    end
    object tx_soyadi: TcxDBTextEdit
      Left = 4
      Top = 228
      Width = 129
      Height = 21
      DataBinding.DataField = 'soyadi'
      DataBinding.DataSource = ara_ogrenciler
      Properties.MaxLength = 15
      Properties.ReadOnly = False
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 4
      Top = 252
      Width = 129
      Height = 41
      BevelInner = bvLowered
      TabOrder = 3
      object Label39: TLabel
        Left = 19
        Top = 4
        Width = 98
        Height = 13
        Caption = 'Dan'#305#351'man '#214#287'retmeni'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
    end
    object tx_danisman: TcxDBLabel
      Left = 4
      Top = 272
      Width = 129
      Height = 17
      DataBinding.DataField = 'danisman'
      DataBinding.DataSource = ara_ogrenciler
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
    end
    object ogr_res: TcxDBImage
      Left = 4
      Top = 16
      Width = 129
      Height = 93
      Hint = 'Resim y'#252'klemek,silmek,farkl'#305' kaydetmek i'#231'in sa'#287' tu'#351'la t'#305'klay'#305'n.'
      DataBinding.DataField = 'resmi'
      DataBinding.DataSource = ara_ogrenciler
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.GraphicTransparency = gtTransparent
      Properties.ReadOnly = False
      Properties.Stretch = True
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      TabOrder = 5
    end
    object tx_donemi: TcxDBTextEdit
      Left = 56
      Top = 112
      Width = 73
      Height = 21
      DataBinding.DataField = 'donemi'
      DataBinding.DataSource = ara_ogrenciler
      TabOrder = 6
    end
    object tx_sinifi: TcxDBTextEdit
      Left = 64
      Top = 148
      Width = 65
      Height = 21
      DataBinding.DataField = 'sinifi'
      DataBinding.DataSource = ara_ogrenciler
      TabOrder = 7
    end
    object bt_ogrenci_bul: TBitBtn
      Left = 4
      Top = 300
      Width = 129
      Height = 29
      Caption = #214#287'renci Bul'
      TabOrder = 8
      OnClick = bt_ogrenci_bulClick
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E00000001000000010000181810001818
        18002929290031313100313931004A39310039393900423939004A423900524A
        3900424242004A4A42004A4A4A00524A4A0052524A00735A4A00525252005A5A
        5A007B6B5A00846B5A00636363006B6363006B6B6B0094846B00737373009484
        73009C8C7300737B7B007B7B7B0094947B00A5947B00848484009C948400A594
        8400AD94840084848C008C8C8C0094948C00A59C8C00AD9C8C00ADA58C00EFBD
        8C0094949400A59C9400B5A59400BDB59400C6B59400DEBD9400EFBD9400F7BD
        9400EFC6940094949C009C9C9C00A5A59C00B5AD9C00EFBD9C00E7C69C00EFC6
        9C00E7CE9C009CA5A500A5A5A500A5ADA500B5ADA500B5B5A500C6BDA500CEBD
        A500D6BDA500E7C6A500F7CEA500EFD6A500FFD6A500ADADAD00B5ADAD00B5B5
        AD00DEC6AD00EFC6AD00DECEAD00EFCEAD00F7CEAD00F7D6AD00FFD6AD00F7DE
        AD00B5B5B500CEC6B500E7CEB500F7D6B500FFD6B500FFDEB500BDBDBD00EFD6
        BD00F7D6BD00FFD6BD00F7DEBD00FFDEBD00FFE7BD00BDBDC600BDC6C600C6C6
        C600F7D6C600F7DEC600FFDEC600FFF7C600C6C6CE00CECECE00D6D6CE00EFDE
        CE00FFDECE00F7E7CE00FFE7CE00FFEFCE00D6D6D600DEDED600FFDED600FFE7
        D600FFEFD600DEDEDE00FFF7DE00FFFFDE00E7E7E700EFE7E700FFEFE700FFF7
        E700FFFFE700EFEFEF00FFF7EF00FFFFEF00F7F7F700FFFFF700FF00FF00F7FF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080800616808080808080808080808080808080808080808080110A103C
        808080808080808080808080808080808080800C0C2A241C5280808080808080
        808080808080808080800A0C2A6E582452808080808080808080808080808080
        8006102A676734528080808080808080808080808080808002113461612A3C80
        80808080808080808080808080808016013452612A3C80808080808080808080
        80808080808080110624472A4780808080808080808080808080808080801601
        0C161F3C8080808080808080808017030D0C0A173C140616342A678080808080
        808080802A090F203E36211305010E4780808080808080808080803308176B7D
        7974747121081680808080808080808080808007207974544A4A596C7F2B1580
        808080808080808080803319697843293737322F7872121B8080808080808080
        8080262E6C714B29303029386B751A188080808080808080808034426C71634E
        44444B646C6D271F8080808080808080808026415D64635A555A5A645C6D2C24
        8080808080808080808026405556647274746C5A56651E238080808080808080
        808080264E507181817F7F7056451D3C80808080808080808080802536446C81
        81827C64572834808080808080808080808080803B2D4F727A745E4541348080
        808080808080808080808080803C3F4C453A4A53358080808080808080808080
        8080808080803F3F3F3F3F3F8080808080808080808080808080}
    end
    object bt_ayrintili_bilgi: TBitBtn
      Left = 4
      Top = 332
      Width = 129
      Height = 29
      Caption = 'Ayr'#305'nt'#305'l'#305' Bilgi'
      TabOrder = 9
      OnClick = bt_ayrintili_bilgiClick
    end
    object bt_izdos: TBitBtn
      Left = 4
      Top = 364
      Width = 129
      Height = 29
      Caption = #304'zleme Dosyas'#305
      TabOrder = 10
      OnClick = bt_izdosClick
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
  object sayfalar: TPageControl
    Left = 137
    Top = 0
    Width = 603
    Height = 399
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Ba'#351'ar'#305' Grafi'#287'i'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 595
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object rb_grafik: TcxRadioGroup
          Left = 0
          Top = 0
          Width = 133
          Height = 37
          Align = alCustom
          Caption = ' Grafik Se'#231'enekleri '
          ItemIndex = 0
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Puan'
              Value = 'puan'
            end
            item
              Caption = 'Net'
              Value = 'net'
            end>
          TabOrder = 0
          OnClick = rb_grafikClick
        end
        object bt_yazdir: TBitBtn
          Left = 504
          Top = 5
          Width = 85
          Height = 29
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
      end
      object gf_durum: TDBChart
        Left = 0
        Top = 41
        Width = 595
        Height = 330
        AnimatedZoom = True
        AnimatedZoomSteps = 4
        BackWall.Brush.Color = clWhite
        PrintProportional = False
        Title.Text.Strings = (
          'Grafik')
        BottomAxis.Axis.Mode = pmBlack
        BottomAxis.LabelsAngle = 90
        BottomAxis.LabelsMultiLine = True
        Chart3DPercent = 1
        LeftAxis.LabelsMultiLine = True
        LeftAxis.LabelsOnAxis = False
        LeftAxis.Title.Caption = 'Puan'
        View3D = False
        View3DWalls = False
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = clRed
          Title = 'Cizgi 1'
          XLabelsSource = 'sinav_adi'
          LinePen.Style = psDot
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_1'
        end
        object Series2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = 16512
          Title = 'Cizgi 2'
          XLabelsSource = 'sinav_adi'
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_2'
        end
        object Series3: TLineSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = clGreen
          Title = 'Cizgi 3'
          XLabelsSource = 'sinav_adi'
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_3'
        end
        object Series4: TLineSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = clBlue
          Title = 'Cizgi 4'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = clBlue
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_3'
        end
        object Series5: TLineSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = 33023
          Title = 'Cizgi 5'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = 33023
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_3'
        end
        object Series6: TLineSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = 33023
          Title = 'Cizgi 6'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = 33023
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_3'
        end
        object Series7: TLineSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = 33023
          Title = 'Cizgi 7'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = 33023
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_3'
        end
        object Series8: TLineSeries
          Active = False
          Marks.ArrowLength = 8
          Marks.Frame.Visible = False
          Marks.Visible = False
          DataSource = tablo_sinavlar
          SeriesColor = 33023
          Title = 'Cizgi 8'
          XLabelsSource = 'sinav_adi'
          LinePen.Color = 33023
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'puan_3'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'S'#305'nav Sonu'#231'lar'#305
      ImageIndex = 1
      object gr_sinavlar: TcxGrid
        Left = 0
        Top = 32
        Width = 595
        Height = 339
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
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'S'#305'nav'#305'n'
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
              Caption = 'SBS'
            end>
          object sinavlarlgssinav_adi: TcxGridDBBandedColumn
            Caption = 'Ad'#305
            DataBinding.FieldName = 'sinav_adi'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarlgssinav_tarihi: TcxGridDBBandedColumn
            Caption = 'Tarihi'
            DataBinding.FieldName = 'sinav_tarihi'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarlgssinav_no: TcxGridDBBandedColumn
            Caption = 'S'#305'nav No'
            DataBinding.FieldName = 'sinav_no'
            Visible = False
            Hidden = True
            Position.BandIndex = 0
            Position.ColIndex = 2
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
          object sinavlarlgsColumn1: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'ingilizce_dogru'
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarlgsColumn2: TcxGridDBBandedColumn
            Caption = 'Y'
            DataBinding.FieldName = 'ingilizce_yanlis'
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarlgsColumn3: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'ingilizce_net'
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object sinavlarlgstoplam_dogru: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'toplam_dogru'
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarlgstoplam_yanlis: TcxGridDBBandedColumn
            Caption = 'Y'
            DataBinding.FieldName = 'toplam_yanlis'
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarlgstoplam_net: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'toplam_net'
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object sinavlarlgspuan_1: TcxGridDBBandedColumn
            Caption = 'Puan'
            DataBinding.FieldName = 'puan_1'
            Options.Filtering = False
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarlgsderece_1: TcxGridDBBandedColumn
            Caption = 'Dr'
            DataBinding.FieldName = 'derece_1'
            Options.Filtering = False
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarlgsderece_local_1: TcxGridDBBandedColumn
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
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'S'#305'nav'#305'n'
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
              Caption = 'KPSS 3'
            end
            item
              Caption = 'KPSS 10'
            end>
          object sinavlarkpsssinav_adi: TcxGridDBBandedColumn
            Caption = 'Ad'#305
            DataBinding.FieldName = 'sinav_adi'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarkpsssinav_tarihi: TcxGridDBBandedColumn
            Caption = 'Tarihi'
            DataBinding.FieldName = 'sinav_tarihi'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarkpsssinav_no: TcxGridDBBandedColumn
            Caption = 'S'#305'nav No'
            DataBinding.FieldName = 'sinav_no'
            Visible = False
            Hidden = True
            Position.BandIndex = 0
            Position.ColIndex = 2
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
          object sinavlarkpsspuan_1: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'puan_1'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarkpssderece_1: TcxGridDBBandedColumn
            Caption = 'Y'
            DataBinding.FieldName = 'derece_2'
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarkpssderece_local_1: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'derece_local_1'
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object sinavlarkpsspuan_2: TcxGridDBBandedColumn
            Caption = 'Puan'
            DataBinding.FieldName = 'puan_2'
            Options.Filtering = False
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarkpssderece_2: TcxGridDBBandedColumn
            Caption = 'Dr'
            DataBinding.FieldName = 'derece_2'
            Options.Filtering = False
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarkpssderece_local_2: TcxGridDBBandedColumn
            Caption = 'LD'
            DataBinding.FieldName = 'derece_local_2'
            Options.Filtering = False
            Position.BandIndex = 5
            Position.ColIndex = 2
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
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'S'#305'nav'#305'n'
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
              Caption = 'Toplam'
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
          object sinavlarosssinav_adi: TcxGridDBBandedColumn
            Caption = 'Ad'#305
            DataBinding.FieldName = 'sinav_adi'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object sinavlarosssinav_tarihi: TcxGridDBBandedColumn
            Caption = 'Tarihi'
            DataBinding.FieldName = 'sinav_tarihi'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object sinavlarosssinav_no: TcxGridDBBandedColumn
            Caption = 'S'#305'nav No'
            DataBinding.FieldName = 'sinav_no'
            Visible = False
            Hidden = True
            Position.BandIndex = 0
            Position.ColIndex = 2
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
        object sinavlaranaliz: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ara_konu_analiz
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object sinavlaranalizders: TcxGridDBColumn
            Caption = 'Konu Dersi'
            DataBinding.FieldName = 'ders'
          end
          object sinavlaranalizkonu: TcxGridDBColumn
            Caption = 'Konu'
            DataBinding.FieldName = 'konu'
          end
          object sinavlaranalizdurum: TcxGridDBColumn
            Caption = 'Durum'
            DataBinding.FieldName = 'durum'
          end
          object sinavlaranalizadet: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            Options.Filtering = False
            Options.Grouping = False
          end
        end
        object gr_sinavlarLevel1: TcxGridLevel
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 595
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          595
          32)
        object bt_analiz_et: TcxButton
          Left = 0
          Top = 0
          Width = 237
          Height = 32
          Caption = 'Se'#231'ili S'#305'nav(lar)'#305'n Konu Analizlerini '#199#305'kart'
          TabOrder = 0
          OnClick = bt_analiz_etClick
          LookAndFeel.Kind = lfOffice11
        end
        object bt_sinavsonucyazdir: TcxButton
          Left = 512
          Top = 0
          Width = 83
          Height = 32
          Anchors = [akTop, akRight]
          Caption = 'Yazd'#305'r'
          TabOrder = 1
          OnClick = bt_sinavsonucyazdirClick
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
          LookAndFeel.Kind = lfOffice11
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Rehberlik Notlar'#305
      ImageIndex = 2
      object gr_notlar: TcxGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 371
        Align = alClient
        TabOrder = 0
        object vi_notlar: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Enabled = False
          NavigatorButtons.NextPage.Enabled = False
          NavigatorButtons.SaveBookmark.Enabled = False
          NavigatorButtons.GotoBookmark.Enabled = False
          NavigatorButtons.Filter.Enabled = False
          DataController.DataSource = ara_notlar
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = vi_notlarnotu
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object vi_notlarid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object vi_notlardonemi: TcxGridDBColumn
            DataBinding.FieldName = 'donemi'
            Visible = False
          end
          object vi_notlarogr_no: TcxGridDBColumn
            DataBinding.FieldName = 'ogr_no'
            Visible = False
          end
          object vi_notlartarih: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            Options.Filtering = False
            Width = 72
          end
          object vi_notlarnotu: TcxGridDBColumn
            Caption = 'Not'
            DataBinding.FieldName = 'notu'
            Options.Filtering = False
            Width = 521
          end
        end
        object gr_notlarLevel1: TcxGridLevel
          GridView = vi_notlar
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Devams'#305'zl'#305'klar'#305
      ImageIndex = 3
      object gr_devamsizliklar: TcxGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 371
        Align = alClient
        TabOrder = 0
        object devamsizliklar: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ara_devamsizlik
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsView.GroupByBox = False
          object devamsizliklartarih: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
          end
          object devamsizliklarders_1: TcxGridDBColumn
            Caption = '1. Ders'
            DataBinding.FieldName = 'ders_1'
          end
          object devamsizliklarders_2: TcxGridDBColumn
            Caption = '2. Ders'
            DataBinding.FieldName = 'ders_2'
          end
          object devamsizliklarders_3: TcxGridDBColumn
            Caption = '3. Ders'
            DataBinding.FieldName = 'ders_3'
          end
          object devamsizliklarders_4: TcxGridDBColumn
            Caption = '4. Ders'
            DataBinding.FieldName = 'ders_4'
          end
          object devamsizliklarders_5: TcxGridDBColumn
            Caption = '5. Ders'
            DataBinding.FieldName = 'ders_5'
          end
          object devamsizliklarders_6: TcxGridDBColumn
            Caption = '6. Ders'
            DataBinding.FieldName = 'ders_6'
          end
          object devamsizliklarders_7: TcxGridDBColumn
            Caption = '7. Ders'
            DataBinding.FieldName = 'ders_7'
          end
          object devamsizliklarders_8: TcxGridDBColumn
            Caption = '8. Ders'
            DataBinding.FieldName = 'ders_8'
          end
          object devamsizliklarders_9: TcxGridDBColumn
            Caption = '9. Ders'
            DataBinding.FieldName = 'ders_9'
          end
          object devamsizliklarders_10: TcxGridDBColumn
            Caption = '10. Ders'
            DataBinding.FieldName = 'ders_10'
          end
          object devamsizliklarkullanici: TcxGridDBColumn
            Caption = 'Kullan'#305'c'#305
            DataBinding.FieldName = 'kullanici'
          end
          object devamsizliklarbildirim_tarihi: TcxGridDBColumn
            Caption = 'Bildirim Tarihi'
            DataBinding.FieldName = 'bildirim_tarihi'
          end
          object devamsizliklarkiminle_gorusuldu: TcxGridDBColumn
            Caption = 'Kiminle G'#246'r'#252#351#252'ld'#252
            DataBinding.FieldName = 'kiminle_gorusuldu'
          end
          object devamsizliklaraciklama: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = devamsizliklar
        end
      end
    end
  end
  object ara_sinavlar: TDataSource
    DataSet = tablo_sinavlar
    Left = 388
    Top = 220
  end
  object ara_ogrenciler: TDataSource
    DataSet = tablo_ogrenciler
    Left = 248
    Top = 204
  end
  object tablo_ogrenciler: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'SELECT donemi,ogr_no,sinifi,adi,soyadi,resmi,durumu,danisman,vel' +
        'i_kodu FROM ogrenciler left join siniflar on ogrenciler.sinifi=s' +
        'iniflar.sinif WHERE donemi =:par1 AND ogr_no =:par2')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 248
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_ogrencilerdonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_ogrencilerogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_ogrencilersinifi: TStringField
      FieldName = 'sinifi'
      Size = 10
    end
    object tablo_ogrencileradi: TStringField
      FieldName = 'adi'
      Size = 15
    end
    object tablo_ogrencilersoyadi: TStringField
      FieldName = 'soyadi'
      Size = 15
    end
    object tablo_ogrencilerresmi: TBlobField
      FieldName = 'resmi'
    end
    object tablo_ogrencilerdurumu: TStringField
      FieldName = 'durumu'
      Size = 12
    end
    object tablo_ogrencilerdanisman: TStringField
      FieldName = 'danisman'
      Size = 25
    end
    object tablo_ogrencilerveli_kodu: TIntegerField
      FieldName = 'veli_kodu'
    end
  end
  object tablo_sinavlar: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'SELECT * FROM sinavsonuc join sinavtanim using(sinav_no) WHERE d' +
        'onemi =:par1 AND ogr_no =:par2 order by sinav_tarihi')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 388
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
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
    object tablo_sinavlaringilizce_dogru: TIntegerField
      FieldName = 'ingilizce_dogru'
    end
    object tablo_sinavlaringilizce_yanlis: TIntegerField
      FieldName = 'ingilizce_yanlis'
    end
    object tablo_sinavlaringilizce_net: TFloatField
      FieldName = 'ingilizce_net'
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
    object tablo_sinavlarbildirim: TStringField
      FieldName = 'bildirim'
      Size = 10
    end
    object tablo_sinavlarturu: TStringField
      FieldName = 'turu'
      Size = 4
    end
    object tablo_sinavlarsinav_tarihi: TDateField
      FieldName = 'sinav_tarihi'
    end
    object tablo_sinavlarsinav_adi: TStringField
      FieldName = 'sinav_adi'
      Size = 25
    end
  end
  object mn_sinavlar: TcxGridPopupMenu
    Grid = gr_sinavlar
    PopupMenus = <>
    Left = 313
    Top = 312
  end
  object ara_notlar: TDataSource
    DataSet = tablo_notlar
    Left = 528
    Top = 140
  end
  object tablo_notlar: TZQuery
    Connection = veriler.data_dershane
    CachedUpdates = False
    RequestLive = True
    SQL.Strings = (
      
        'select * from rehberlik_notlari where donemi =:par1 and ogr_no =' +
        ':par2')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    MasterFields = 'donemi;ogr_no'
    MasterSource = ara_ogrenciler
    IndexFieldNames = 'donemi;ogr_no'
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 524
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_notlarid: TLargeintField
      FieldName = 'id'
    end
    object tablo_notlardonemi: TStringField
      FieldName = 'donemi'
      Required = True
      Size = 9
    end
    object tablo_notlarogr_no: TIntegerField
      FieldName = 'ogr_no'
      Required = True
    end
    object tablo_notlartarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_notlarnotu: TStringField
      FieldName = 'notu'
      Size = 255
    end
  end
  object rp_yazdir: TdxComponentPrinter
    CurrentLink = rp_yazdirLink1
    Version = 0
    Left = 605
    Top = 261
    object rp_yazdirLink1: TdxDBTeeChartReportLink
      Component = gf_durum
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
      ReportDocument.Caption = #214#287'renci S'#305'nav Durumu'
      BuiltInReportLink = True
    end
  end
  object tablo_devamsizlik: TZReadOnlyQuery
    Connection = veriler.data_dershane
    SQL.Strings = (
      
        'SELECT * FROM devamsizliklar WHERE donemi =:par1 AND ogr_no =:pa' +
        'r2 order by tarih')
    ParamCheck = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults]
    Left = 384
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'par1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'par2'
        ParamType = ptUnknown
      end>
    object tablo_devamsizlikid: TLargeintField
      FieldName = 'id'
    end
    object tablo_devamsizlikdonemi: TStringField
      FieldName = 'donemi'
      Size = 9
    end
    object tablo_devamsizlikogr_no: TIntegerField
      FieldName = 'ogr_no'
    end
    object tablo_devamsizlikders_1: TStringField
      FieldName = 'ders_1'
      Size = 7
    end
    object tablo_devamsizlikders_2: TStringField
      FieldName = 'ders_2'
      Size = 7
    end
    object tablo_devamsizlikders_3: TStringField
      FieldName = 'ders_3'
      Size = 7
    end
    object tablo_devamsizlikders_4: TStringField
      FieldName = 'ders_4'
      Size = 7
    end
    object tablo_devamsizlikders_5: TStringField
      FieldName = 'ders_5'
      Size = 7
    end
    object tablo_devamsizlikders_6: TStringField
      FieldName = 'ders_6'
      Size = 7
    end
    object tablo_devamsizlikders_7: TStringField
      FieldName = 'ders_7'
      Size = 7
    end
    object tablo_devamsizlikders_8: TStringField
      FieldName = 'ders_8'
      Size = 7
    end
    object tablo_devamsizlikders_9: TStringField
      FieldName = 'ders_9'
      Size = 7
    end
    object tablo_devamsizlikders_10: TStringField
      FieldName = 'ders_10'
      Size = 7
    end
    object tablo_devamsizliktarih: TDateField
      FieldName = 'tarih'
    end
    object tablo_devamsizlikkullanici: TStringField
      FieldName = 'kullanici'
      Size = 16
    end
    object tablo_devamsizlikbildirim_tarihi: TDateTimeField
      FieldName = 'bildirim_tarihi'
    end
    object tablo_devamsizlikkiminle_gorusuldu: TStringField
      FieldName = 'kiminle_gorusuldu'
    end
    object tablo_devamsizlikaciklama: TStringField
      FieldName = 'aciklama'
      Size = 50
    end
  end
  object ara_devamsizlik: TDataSource
    DataSet = tablo_devamsizlik
    Left = 384
    Top = 112
  end
  object rp_izleme: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = #214#287'renci '#304'zleme Dosyas'#305
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 15000
    PrinterSetup.mmMarginRight = 15000
    PrinterSetup.mmMarginTop = 25000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Dershane Otomasyonu\ogrenciizlemedosyasi.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    CachePages = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 517
    Top = 281
    Version = '10.02'
    mmColumnWidth = 165000
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      BeforeGenerate = ppDetailBand1BeforeGenerate
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65617
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DERSHANE RESM'#304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 15346
        mmTop = 0
        mmWidth = 150548
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 26458
        mmLeft = 0
        mmTop = 12435
        mmWidth = 93134
        BandType = 4
      end
      object rp_adi: TppDBText
        UserName = 'rp_adi'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'adi'
        DataPipeline = rd_ogr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'rd_ogr'
        mmHeight = 4233
        mmLeft = 40481
        mmTop = 18785
        mmWidth = 51858
        BandType = 4
      end
      object rp_ogr_no: TppDBText
        UserName = 'rp_ogr_no'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ogr_no'
        DataPipeline = rd_ogr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'rd_ogr'
        mmHeight = 4233
        mmLeft = 80169
        mmTop = 13494
        mmWidth = 12435
        BandType = 4
      end
      object rp_soyadi: TppDBText
        UserName = 'rp_adi1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'soyadi'
        DataPipeline = rd_ogr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'rd_ogr'
        mmHeight = 4233
        mmLeft = 40481
        mmTop = 23813
        mmWidth = 52123
        BandType = 4
      end
      object rp_donemi: TppDBText
        UserName = 'rp_ogr_no1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'donemi'
        DataPipeline = rd_ogr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'rd_ogr'
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 13494
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'D'#246'nem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 13494
        mmWidth = 13758
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Soyad'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 23813
        mmWidth = 17463
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ad'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 18785
        mmWidth = 17727
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Numara:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 64558
        mmTop = 13494
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'S'#305'n'#305'f'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 28840
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'sinifi'
        DataPipeline = rd_ogr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'rd_ogr'
        mmHeight = 4233
        mmLeft = 40481
        mmTop = 28840
        mmWidth = 52123
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dan'#305#351'man :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 33867
        mmWidth = 19050
        BandType = 4
      end
      object rp_ogr_resim: TppDBImage
        UserName = 'rp_ogr_resim'
        MaintainAspectRatio = True
        Stretch = True
        Transparent = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'resmi'
        DataPipeline = rd_ogr
        GraphicType = 'JPEG'
        ParentDataPipeline = False
        DataPipelineName = 'rd_ogr'
        mmHeight = 24871
        mmLeft = 794
        mmTop = 13229
        mmWidth = 18785
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 26458
        mmLeft = 96573
        mmTop = 12435
        mmWidth = 83608
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Veli Ad'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 13494
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Veli Soyad'#305' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 18785
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ev Tel :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 23813
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #304#351' Tel :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 28840
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep Tel :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 33867
        mmWidth = 22225
        BandType = 4
      end
      object pp_l_va: TppLabel
        UserName = '_l_va'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_l_va'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 13494
        mmWidth = 57150
        BandType = 4
      end
      object pp_l_vs: TppLabel
        UserName = '_l_va1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_l_va'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 18785
        mmWidth = 57150
        BandType = 4
      end
      object pp_l_et: TppLabel
        UserName = '_l_va2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_l_va'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 23813
        mmWidth = 57150
        BandType = 4
      end
      object pp_l_it: TppLabel
        UserName = '_l_it'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_l_va'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 28840
        mmWidth = 57150
        BandType = 4
      end
      object pp_l_ct: TppLabel
        UserName = '_l_it1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_l_va'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 33867
        mmWidth = 57150
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'danisman'
        DataPipeline = rd_ogr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'rd_ogr'
        mmHeight = 4233
        mmLeft = 40481
        mmTop = 33867
        mmWidth = 51858
        BandType = 4
      end
      object ppaltrapordevam: TppSubReport
        UserName = 'altrapordevam'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'rd_devam'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 39952
        mmWidth = 180000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = rd_devam
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = #214#287'renci '#304'zleme Dosyas'#305
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 15000
          PrinterSetup.mmMarginRight = 15000
          PrinterSetup.mmMarginTop = 25000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'rd_devam'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 13494
            mmPrintPosition = 0
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = clNavy
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 12700
              mmWidth = 179917
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Devams'#305'zl'#305'klar'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4763
              mmLeft = 1323
              mmTop = 1323
              mmWidth = 30956
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '1.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 16933
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '2.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 31485
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '3.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 46038
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '4.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 60590
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '5.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 75142
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '6.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 89694
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '7.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 104246
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '8.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 118798
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '9.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 133350
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '10.ders'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 148167
              mmTop = 7938
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tarih'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4106
              mmLeft = 0
              mmTop = 7938
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bild. Tar.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 163777
              mmTop = 7938
              mmWidth = 16140
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_1'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 16933
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_2'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 31485
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_3'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 46038
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_4'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 60590
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_5'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 75142
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_6'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 89694
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_7'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 104246
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_8'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 118798
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_9'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3175
              mmLeft = 133350
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ders_10'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3175
              mmLeft = 148167
              mmTop = 529
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'tarih'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3239
              mmLeft = 0
              mmTop = 529
              mmWidth = 16669
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'bildirim_tarihi'
              DataPipeline = rd_devam
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_devam'
              mmHeight = 3175
              mmLeft = 164042
              mmTop = 529
              mmWidth = 15875
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 2646
            mmPrintPosition = 0
            object ppLine5: TppLine
              UserName = 'Line5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 265
              mmWidth = 179917
              BandType = 7
            end
          end
        end
      end
      object ppaltrapornot: TppSubReport
        UserName = 'altrapornot'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppaltrapordevam
        TraverseAllData = False
        DataPipelineName = 'rd_not'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 45508
        mmWidth = 180000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = rd_not
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = #214#287'renci '#304'zleme Dosyas'#305
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 15000
          PrinterSetup.mmMarginRight = 15000
          PrinterSetup.mmMarginTop = 25000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'rd_not'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = clNavy
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 12171
              mmWidth = 179917
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Rehberlik Notlar'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4763
              mmLeft = 1323
              mmTop = 1323
              mmWidth = 41275
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tarih'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 0
              mmTop = 7408
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Not'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4763
              mmLeft = 16404
              mmTop = 7408
              mmWidth = 163777
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'tarih'
              DataPipeline = rd_not
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_not'
              mmHeight = 3239
              mmLeft = 0
              mmTop = 529
              mmWidth = 15346
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'notu'
              DataPipeline = rd_not
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'rd_not'
              mmHeight = 3239
              mmLeft = 16404
              mmTop = 529
              mmWidth = 163777
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 1323
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 265
              mmWidth = 179917
              BandType = 7
            end
          end
        end
      end
      object ppaltraporsinavoss: TppSubReport
        UserName = 'altraporsinavoss'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppaltrapornot
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'rd_sinavlar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 51065
        mmWidth = 180000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = rd_sinavlar
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = #214#287'renci '#304'zleme Dosyas'#305
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 15000
          PrinterSetup.mmMarginRight = 15000
          PrinterSetup.mmMarginTop = 25000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'rd_sinavlar'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 83344
            mmPrintPosition = 0
            object ppsinavosspuan: TppImage
              OnPrint = ppsinavosspuanPrint
              UserName = 'ppsinavosspuan'
              MaintainAspectRatio = False
              Stretch = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              mmHeight = 83079
              mmLeft = 0
              mmTop = 0
              mmWidth = 90000
              BandType = 1
            end
            object ppsinavossnet: TppImage
              OnPrint = ppsinavlgspuanPrint
              UserName = 'ppsinavosspuan1'
              MaintainAspectRatio = False
              Stretch = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              mmHeight = 83079
              mmLeft = 90223
              mmTop = 0
              mmWidth = 89959
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 529
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 179917
              BandType = 7
            end
          end
        end
      end
      object ppaltraporsinavlgs: TppSubReport
        UserName = 'altraporsinavoss1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppaltrapornot
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'rd_sinavlar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 56356
        mmWidth = 180000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = rd_sinavlar
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = #214#287'renci '#304'zleme Dosyas'#305
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 15000
          PrinterSetup.mmMarginRight = 15000
          PrinterSetup.mmMarginTop = 25000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'rd_sinavlar'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 81756
            mmPrintPosition = 0
            object ppLabel47: TppLabel
              UserName = 'Label17'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'S'#305'nav Sonu'#231'lar'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4763
              mmLeft = 76465
              mmTop = 65352
              mmWidth = 27517
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label18'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ad'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 0
              mmTop = 76994
              mmWidth = 36777
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label20'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D  Y    N'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4498
              mmLeft = 38629
              mmTop = 76994
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label61'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Puan   Dr Ld'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4498
              mmLeft = 131234
              mmTop = 76994
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label82'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'S'#305'nav'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 0
              mmTop = 71967
              mmWidth = 36777
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label83'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T'#252'rk'#231'e'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 38629
              mmTop = 71967
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel56: TppLabel
              UserName = 'Label87'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Sosyal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 57415
              mmTop = 71967
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel59: TppLabel
              UserName = 'Label88'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Matem.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 76200
              mmTop = 71967
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel64: TppLabel
              UserName = 'Label92'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fen'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 94721
              mmTop = 71967
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel65: TppLabel
              UserName = 'Label93'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Toplam'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 112977
              mmTop = 71967
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label94'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Toplam'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 131234
              mmTop = 71967
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel67: TppLabel
              UserName = 'Label95'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fen A'#287#305'rl'#305'.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 155575
              mmTop = 71967
              mmWidth = 22490
              BandType = 1
            end
            object ppLabel72: TppLabel
              UserName = 'Label204'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D  Y    N'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4498
              mmLeft = 57415
              mmTop = 76994
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel75: TppLabel
              UserName = 'Label39'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D  Y    N'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4498
              mmLeft = 76200
              mmTop = 76994
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel79: TppLabel
              UserName = 'Label43'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D  Y    N'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4498
              mmLeft = 94721
              mmTop = 76994
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel97: TppLabel
              UserName = 'Label44'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D  Y    N'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4498
              mmLeft = 112977
              mmTop = 76994
              mmWidth = 16669
              BandType = 1
            end
            object ppLabel98: TppLabel
              UserName = 'Label45'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Puan   Dr Ld'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'TIMES NEW ROMAN'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 4498
              mmLeft = 155575
              mmTop = 76994
              mmWidth = 22490
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = clNavy
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 80963
              mmWidth = 179123
              BandType = 1
            end
            object ppsinavlgspuan: TppImage
              OnPrint = ppsinavlgspuanPrint
              UserName = 'sinavlgspuan'
              MaintainAspectRatio = False
              Stretch = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              mmHeight = 61913
              mmLeft = 0
              mmTop = 1852
              mmWidth = 89959
              BandType = 1
            end
            object ppsinavlgsnet: TppImage
              OnPrint = ppsinavlgspuanPrint
              UserName = 'sinavlgspuan1'
              MaintainAspectRatio = False
              Stretch = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              mmHeight = 61913
              mmLeft = 90223
              mmTop = 1852
              mmWidth = 89959
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText66: TppDBText
              UserName = 'DBText11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'sinav_adi'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 0
              mmTop = 529
              mmWidth = 37835
              BandType = 4
            end
            object ppDBText67: TppDBText
              UserName = 'DBText14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'turkce_dogru'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 38629
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText68: TppDBText
              UserName = 'DBText17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'turkce_yanlis'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 43392
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText69: TppDBText
              UserName = 'DBText20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'turkce_net'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 48154
              mmTop = 529
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText79: TppDBText
              UserName = 'DBText30'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'sosyal1_dogru'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 57415
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText80: TppDBText
              UserName = 'DBText31'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'sosyal1_yanlis'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 62177
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText81: TppDBText
              UserName = 'DBText32'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'sosyal1_net'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 66940
              mmTop = 529
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText88: TppDBText
              UserName = 'DBText39'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'matematik1_dogru'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 76200
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText89: TppDBText
              UserName = 'DBText40'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'matematik1_yanlis'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 80963
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText90: TppDBText
              UserName = 'DBText41'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'matematik1_net'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 85725
              mmTop = 529
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText100: TppDBText
              UserName = 'DBText51'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'fen1_dogru'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 94721
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText101: TppDBText
              UserName = 'DBText52'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'fen1_yanlis'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 99484
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText102: TppDBText
              UserName = 'DBText53'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'fen1_net'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 103981
              mmTop = 529
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText103: TppDBText
              UserName = 'DBText54'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'toplam_dogru'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 112977
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText104: TppDBText
              UserName = 'DBText55'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'toplam_yanlis'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 117475
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText105: TppDBText
              UserName = 'DBText56'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'toplam_net'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 121973
              mmTop = 529
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText106: TppDBText
              UserName = 'DBText57'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'puan_1'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 131234
              mmTop = 529
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText107: TppDBText
              UserName = 'DBText58'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'derece_1'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 142875
              mmTop = 529
              mmWidth = 6350
              BandType = 4
            end
            object ppDBText108: TppDBText
              UserName = 'DBText59'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'derece_local_1'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 150548
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
            object ppDBText109: TppDBText
              UserName = 'DBText60'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'puan_2'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 155575
              mmTop = 529
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText110: TppDBText
              UserName = 'DBText61'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'derece_2'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 167217
              mmTop = 529
              mmWidth = 6350
              BandType = 4
            end
            object ppDBText111: TppDBText
              UserName = 'DBText62'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'derece_local_2'
              DataPipeline = rd_sinavlar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'rd_sinavlar'
              mmHeight = 3175
              mmLeft = 174890
              mmTop = 529
              mmWidth = 3175
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 1058
            mmPrintPosition = 0
            object ppLine8: TppLine
              UserName = 'Line8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 529
              mmWidth = 179123
              BandType = 7
            end
          end
        end
      end
      object ppImage1: TppImage
        OnPrint = ppImage1Print
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        mmHeight = 11377
        mmLeft = 0
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label47'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'D'#246'nemi '#214#287'renci Kay'#305't Dosyas'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 15610
        mmTop = 5556
        mmWidth = 150284
        BandType = 4
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 137584
        mmTop = 6879
        mmWidth = 28046
        BandType = 4
      end
      object ppImage3: TppImage
        OnPrint = ppImage1Print
        UserName = 'Image3'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        mmHeight = 11377
        mmLeft = 166159
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rd_ogr: TppDBPipeline
    DataSource = ara_ogrenciler
    UserName = 'rd_ogr'
    Left = 461
    Top = 273
    object rd_ogrppField1: TppField
      FieldAlias = 'donemi'
      FieldName = 'donemi'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object rd_ogrppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ogr_no'
      FieldName = 'ogr_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object rd_ogrppField3: TppField
      FieldAlias = 'sinifi'
      FieldName = 'sinifi'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object rd_ogrppField4: TppField
      FieldAlias = 'adi'
      FieldName = 'adi'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object rd_ogrppField5: TppField
      FieldAlias = 'soyadi'
      FieldName = 'soyadi'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object rd_ogrppField6: TppField
      FieldAlias = 'resmi'
      FieldName = 'resmi'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 5
      Searchable = False
      Sortable = False
    end
    object rd_ogrppField7: TppField
      FieldAlias = 'durumu'
      FieldName = 'durumu'
      FieldLength = 12
      DisplayWidth = 12
      Position = 6
    end
    object rd_ogrppField8: TppField
      FieldAlias = 'danisman'
      FieldName = 'danisman'
      FieldLength = 25
      DisplayWidth = 25
      Position = 7
    end
    object rd_ogrppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'veli_kodu'
      FieldName = 'veli_kodu'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
  end
  object tablo_oku: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 240
    Top = 268
  end
  object rd_sinavlar: TppDBPipeline
    DataSource = ara_sinavlar
    UserName = 'rd_sinavlar'
    Left = 413
    Top = 281
    object rd_sinavlarppField1: TppField
      FieldAlias = 'sinav_no'
      FieldName = 'sinav_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField2: TppField
      FieldAlias = 'sinifi'
      FieldName = 'sinifi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField3: TppField
      FieldAlias = 'donemi'
      FieldName = 'donemi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField4: TppField
      FieldAlias = 'ogr_no'
      FieldName = 'ogr_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField5: TppField
      FieldAlias = 'adi'
      FieldName = 'adi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField6: TppField
      FieldAlias = 'soyadi'
      FieldName = 'soyadi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField7: TppField
      FieldAlias = 'turkce_dogru'
      FieldName = 'turkce_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField8: TppField
      FieldAlias = 'turkce_yanlis'
      FieldName = 'turkce_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField9: TppField
      FieldAlias = 'turkce_net'
      FieldName = 'turkce_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField10: TppField
      FieldAlias = 'tarih1_dogru'
      FieldName = 'tarih1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField11: TppField
      FieldAlias = 'tarih1_yanlis'
      FieldName = 'tarih1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField12: TppField
      FieldAlias = 'tarih1_net'
      FieldName = 'tarih1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField13: TppField
      FieldAlias = 'cografya_dogru'
      FieldName = 'cografya_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField14: TppField
      FieldAlias = 'cografya_yanlis'
      FieldName = 'cografya_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField15: TppField
      FieldAlias = 'cografya_net'
      FieldName = 'cografya_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField16: TppField
      FieldAlias = 'felsefe_dogru'
      FieldName = 'felsefe_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField17: TppField
      FieldAlias = 'felsefe_yanlis'
      FieldName = 'felsefe_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField18: TppField
      FieldAlias = 'felsefe_net'
      FieldName = 'felsefe_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField19: TppField
      FieldAlias = 'sosyal1_dogru'
      FieldName = 'sosyal1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField20: TppField
      FieldAlias = 'sosyal1_yanlis'
      FieldName = 'sosyal1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField21: TppField
      FieldAlias = 'sosyal1_net'
      FieldName = 'sosyal1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField22: TppField
      FieldAlias = 'cebir1_dogru'
      FieldName = 'cebir1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField23: TppField
      FieldAlias = 'cebir1_yanlis'
      FieldName = 'cebir1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField24: TppField
      FieldAlias = 'cebir1_net'
      FieldName = 'cebir1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField25: TppField
      FieldAlias = 'geometri1_dogru'
      FieldName = 'geometri1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField26: TppField
      FieldAlias = 'geometri1_yanlis'
      FieldName = 'geometri1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField27: TppField
      FieldAlias = 'geometri1_net'
      FieldName = 'geometri1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField28: TppField
      FieldAlias = 'matematik1_dogru'
      FieldName = 'matematik1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField29: TppField
      FieldAlias = 'matematik1_yanlis'
      FieldName = 'matematik1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField30: TppField
      FieldAlias = 'matematik1_net'
      FieldName = 'matematik1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField31: TppField
      FieldAlias = 'fizik1_dogru'
      FieldName = 'fizik1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField32: TppField
      FieldAlias = 'fizik1_yanlis'
      FieldName = 'fizik1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField33: TppField
      FieldAlias = 'fizik1_net'
      FieldName = 'fizik1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField34: TppField
      FieldAlias = 'kimya1_dogru'
      FieldName = 'kimya1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField35: TppField
      FieldAlias = 'kimya1_yanlis'
      FieldName = 'kimya1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField36: TppField
      FieldAlias = 'kimya1_net'
      FieldName = 'kimya1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField37: TppField
      FieldAlias = 'biyoloji1_dogru'
      FieldName = 'biyoloji1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField38: TppField
      FieldAlias = 'biyoloji1_yanlis'
      FieldName = 'biyoloji1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField39: TppField
      FieldAlias = 'biyoloji1_net'
      FieldName = 'biyoloji1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField40: TppField
      FieldAlias = 'fen1_dogru'
      FieldName = 'fen1_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField41: TppField
      FieldAlias = 'fen1_yanlis'
      FieldName = 'fen1_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField42: TppField
      FieldAlias = 'fen1_net'
      FieldName = 'fen1_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField43: TppField
      FieldAlias = 'edebiyat_dogru'
      FieldName = 'edebiyat_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField44: TppField
      FieldAlias = 'edebiyat_yanlis'
      FieldName = 'edebiyat_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField45: TppField
      FieldAlias = 'edebiyat_net'
      FieldName = 'edebiyat_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField46: TppField
      FieldAlias = 'turkiyecografyasi_dogru'
      FieldName = 'turkiyecografyasi_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField47: TppField
      FieldAlias = 'turkiyecografyasi_yanlis'
      FieldName = 'turkiyecografyasi_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField48: TppField
      FieldAlias = 'turkiyecografyasi_net'
      FieldName = 'turkiyecografyasi_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField49: TppField
      FieldAlias = 'psikoloji_dogru'
      FieldName = 'psikoloji_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField50: TppField
      FieldAlias = 'psikoloji_yanlis'
      FieldName = 'psikoloji_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField51: TppField
      FieldAlias = 'psikoloji_net'
      FieldName = 'psikoloji_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField52: TppField
      FieldAlias = 'edebiyatsosyal_dogru'
      FieldName = 'edebiyatsosyal_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField53: TppField
      FieldAlias = 'edebiyatsosyal_yanlis'
      FieldName = 'edebiyatsosyal_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField54: TppField
      FieldAlias = 'edebiyatsosyal_net'
      FieldName = 'edebiyatsosyal_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField55: TppField
      FieldAlias = 'tarih2_dogru'
      FieldName = 'tarih2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField56: TppField
      FieldAlias = 'tarih2_yanlis'
      FieldName = 'tarih2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField57: TppField
      FieldAlias = 'tarih2_net'
      FieldName = 'tarih2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField58: TppField
      FieldAlias = 'ulkelercografyasi_dogru'
      FieldName = 'ulkelercografyasi_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField59: TppField
      FieldAlias = 'ulkelercografyasi_yanlis'
      FieldName = 'ulkelercografyasi_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField60: TppField
      FieldAlias = 'ulkelercografyasi_net'
      FieldName = 'ulkelercografyasi_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField61: TppField
      FieldAlias = 'sosyoloji_dogru'
      FieldName = 'sosyoloji_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField62: TppField
      FieldAlias = 'sosyoloji_yanlis'
      FieldName = 'sosyoloji_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField63: TppField
      FieldAlias = 'sosyoloji_net'
      FieldName = 'sosyoloji_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField64: TppField
      FieldAlias = 'mantik_dogru'
      FieldName = 'mantik_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField65: TppField
      FieldAlias = 'mantik_yanlis'
      FieldName = 'mantik_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField66: TppField
      FieldAlias = 'mantik_net'
      FieldName = 'mantik_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField67: TppField
      FieldAlias = 'sosyal2_dogru'
      FieldName = 'sosyal2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField68: TppField
      FieldAlias = 'sosyal2_yanlis'
      FieldName = 'sosyal2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField69: TppField
      FieldAlias = 'sosyal2_net'
      FieldName = 'sosyal2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField70: TppField
      FieldAlias = 'cebir2_dogru'
      FieldName = 'cebir2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField71: TppField
      FieldAlias = 'cebir2_yanlis'
      FieldName = 'cebir2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField72: TppField
      FieldAlias = 'cebir2_net'
      FieldName = 'cebir2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField73: TppField
      FieldAlias = 'geometri2_dogru'
      FieldName = 'geometri2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField74: TppField
      FieldAlias = 'geometri2_yanlis'
      FieldName = 'geometri2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField75: TppField
      FieldAlias = 'geometri2_net'
      FieldName = 'geometri2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField76: TppField
      FieldAlias = 'matematik2_dogru'
      FieldName = 'matematik2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField77: TppField
      FieldAlias = 'matematik2_yanlis'
      FieldName = 'matematik2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField78: TppField
      FieldAlias = 'matematik2_net'
      FieldName = 'matematik2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField79: TppField
      FieldAlias = 'fizik2_dogru'
      FieldName = 'fizik2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField80: TppField
      FieldAlias = 'fizik2_yanlis'
      FieldName = 'fizik2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField81: TppField
      FieldAlias = 'fizik2_net'
      FieldName = 'fizik2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField82: TppField
      FieldAlias = 'kimya2_dogru'
      FieldName = 'kimya2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField83: TppField
      FieldAlias = 'kimya2_yanlis'
      FieldName = 'kimya2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField84: TppField
      FieldAlias = 'kimya2_net'
      FieldName = 'kimya2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField85: TppField
      FieldAlias = 'biyoloji2_dogru'
      FieldName = 'biyoloji2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField86: TppField
      FieldAlias = 'biyoloji2_yanlis'
      FieldName = 'biyoloji2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField87: TppField
      FieldAlias = 'biyoloji2_net'
      FieldName = 'biyoloji2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField88: TppField
      FieldAlias = 'fen2_dogru'
      FieldName = 'fen2_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField89: TppField
      FieldAlias = 'fen2_yanlis'
      FieldName = 'fen2_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField90: TppField
      FieldAlias = 'fen2_net'
      FieldName = 'fen2_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField91: TppField
      FieldAlias = 'toplam_dogru'
      FieldName = 'toplam_dogru'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField92: TppField
      FieldAlias = 'toplam_yanlis'
      FieldName = 'toplam_yanlis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField93: TppField
      FieldAlias = 'toplam_net'
      FieldName = 'toplam_net'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField94: TppField
      FieldAlias = 'puan_1'
      FieldName = 'puan_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField95: TppField
      FieldAlias = 'derece_1'
      FieldName = 'derece_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField96: TppField
      FieldAlias = 'derece_local_1'
      FieldName = 'derece_local_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField97: TppField
      FieldAlias = 'puan_2'
      FieldName = 'puan_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField98: TppField
      FieldAlias = 'derece_2'
      FieldName = 'derece_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField99: TppField
      FieldAlias = 'derece_local_2'
      FieldName = 'derece_local_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField100: TppField
      FieldAlias = 'puan_3'
      FieldName = 'puan_3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField101: TppField
      FieldAlias = 'derece_3'
      FieldName = 'derece_3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField102: TppField
      FieldAlias = 'derece_local_3'
      FieldName = 'derece_local_3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField103: TppField
      FieldAlias = 'puan_4'
      FieldName = 'puan_4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField104: TppField
      FieldAlias = 'derece_4'
      FieldName = 'derece_4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField105: TppField
      FieldAlias = 'derece_local_4'
      FieldName = 'derece_local_4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField106: TppField
      FieldAlias = 'puan_5'
      FieldName = 'puan_5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField107: TppField
      FieldAlias = 'derece_5'
      FieldName = 'derece_5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField108: TppField
      FieldAlias = 'derece_local_5'
      FieldName = 'derece_local_5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField109: TppField
      FieldAlias = 'puan_6'
      FieldName = 'puan_6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField110: TppField
      FieldAlias = 'derece_6'
      FieldName = 'derece_6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField111: TppField
      FieldAlias = 'derece_local_6'
      FieldName = 'derece_local_6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField112: TppField
      FieldAlias = 'bildirim'
      FieldName = 'bildirim'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField113: TppField
      FieldAlias = 'turu'
      FieldName = 'turu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField114: TppField
      FieldAlias = 'sinav_tarihi'
      FieldName = 'sinav_tarihi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField115: TppField
      FieldAlias = 'sinav_adi'
      FieldName = 'sinav_adi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField116: TppField
      FieldAlias = 'turkce_soru_sayisi'
      FieldName = 'turkce_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField117: TppField
      FieldAlias = 'tarih1_soru_sayisi'
      FieldName = 'tarih1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField118: TppField
      FieldAlias = 'cografya_soru_sayisi'
      FieldName = 'cografya_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 117
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField119: TppField
      FieldAlias = 'felsefe_soru_sayisi'
      FieldName = 'felsefe_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 118
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField120: TppField
      FieldAlias = 'sosyal1_soru_sayisi'
      FieldName = 'sosyal1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 119
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField121: TppField
      FieldAlias = 'cebir1_soru_sayisi'
      FieldName = 'cebir1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 120
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField122: TppField
      FieldAlias = 'geometri1_soru_sayisi'
      FieldName = 'geometri1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 121
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField123: TppField
      FieldAlias = 'matematik1_soru_sayisi'
      FieldName = 'matematik1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 122
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField124: TppField
      FieldAlias = 'matematik2_soru_sayisi'
      FieldName = 'matematik2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 123
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField125: TppField
      FieldAlias = 'fizik1_soru_sayisi'
      FieldName = 'fizik1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 124
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField126: TppField
      FieldAlias = 'kimya1_soru_sayisi'
      FieldName = 'kimya1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 125
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField127: TppField
      FieldAlias = 'biyoloji1_soru_sayisi'
      FieldName = 'biyoloji1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 126
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField128: TppField
      FieldAlias = 'fen1_soru_sayisi'
      FieldName = 'fen1_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 127
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField129: TppField
      FieldAlias = 'edebiyat_soru_sayisi'
      FieldName = 'edebiyat_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 128
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField130: TppField
      FieldAlias = 'turkiyecografyasi_soru_sayisi'
      FieldName = 'turkiyecografyasi_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 129
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField131: TppField
      FieldAlias = 'psikoloji_soru_sayisi'
      FieldName = 'psikoloji_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 130
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField132: TppField
      FieldAlias = 'edebiyatsosyal_soru_sayisi'
      FieldName = 'edebiyatsosyal_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 131
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField133: TppField
      FieldAlias = 'tarih2_soru_sayisi'
      FieldName = 'tarih2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 132
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField134: TppField
      FieldAlias = 'ulkelercografyasi_soru_sayisi'
      FieldName = 'ulkelercografyasi_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 133
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField135: TppField
      FieldAlias = 'sosyoloji_soru_sayisi'
      FieldName = 'sosyoloji_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 134
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField136: TppField
      FieldAlias = 'mantik_soru_sayisi'
      FieldName = 'mantik_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 135
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField137: TppField
      FieldAlias = 'sosyal2_soru_sayisi'
      FieldName = 'sosyal2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 136
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField138: TppField
      FieldAlias = 'cebir2_soru_sayisi'
      FieldName = 'cebir2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 137
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField139: TppField
      FieldAlias = 'geometri2_soru_sayisi'
      FieldName = 'geometri2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 138
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField140: TppField
      FieldAlias = 'fizik2_soru_sayisi'
      FieldName = 'fizik2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 139
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField141: TppField
      FieldAlias = 'kimya2_soru_sayisi'
      FieldName = 'kimya2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 140
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField142: TppField
      FieldAlias = 'biyoloji2_soru_sayisi'
      FieldName = 'biyoloji2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 141
      Searchable = False
      Sortable = False
    end
    object rd_sinavlarppField143: TppField
      FieldAlias = 'fen2_soru_sayisi'
      FieldName = 'fen2_soru_sayisi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 142
      Searchable = False
      Sortable = False
    end
  end
  object rd_devam: TppDBPipeline
    DataSource = ara_devamsizlik
    UserName = 'rd_devam'
    Left = 373
    Top = 321
    object rg_devamppField1: TppField
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 0
      Position = 0
      SelectOrder = 0
    end
    object rg_devamppField2: TppField
      FieldAlias = 'donemi'
      FieldName = 'donemi'
      FieldLength = 9
      DisplayWidth = 9
      Position = 1
      SelectOrder = 1
    end
    object rg_devamppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ogr_no'
      FieldName = 'ogr_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
      SelectOrder = 2
    end
    object rg_devamppField4: TppField
      FieldAlias = 'ders_1'
      FieldName = 'ders_1'
      FieldLength = 7
      DisplayWidth = 7
      Position = 3
      SelectOrder = 3
    end
    object rg_devamppField5: TppField
      FieldAlias = 'ders_2'
      FieldName = 'ders_2'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
      SelectOrder = 4
    end
    object rg_devamppField6: TppField
      FieldAlias = 'ders_3'
      FieldName = 'ders_3'
      FieldLength = 7
      DisplayWidth = 7
      Position = 5
      SelectOrder = 5
    end
    object rg_devamppField7: TppField
      FieldAlias = 'ders_4'
      FieldName = 'ders_4'
      FieldLength = 7
      DisplayWidth = 7
      Position = 6
      SelectOrder = 6
    end
    object rg_devamppField8: TppField
      FieldAlias = 'ders_5'
      FieldName = 'ders_5'
      FieldLength = 7
      DisplayWidth = 7
      Position = 7
      SelectOrder = 7
    end
    object rg_devamppField9: TppField
      FieldAlias = 'ders_6'
      FieldName = 'ders_6'
      FieldLength = 7
      DisplayWidth = 7
      Position = 8
      SelectOrder = 8
    end
    object rg_devamppField10: TppField
      FieldAlias = 'ders_7'
      FieldName = 'ders_7'
      FieldLength = 7
      DisplayWidth = 7
      Position = 9
      SelectOrder = 9
    end
    object rg_devamppField11: TppField
      FieldAlias = 'ders_8'
      FieldName = 'ders_8'
      FieldLength = 7
      DisplayWidth = 7
      Position = 10
      SelectOrder = 10
    end
    object rg_devamppField12: TppField
      FieldAlias = 'ders_9'
      FieldName = 'ders_9'
      FieldLength = 7
      DisplayWidth = 7
      Position = 11
      SelectOrder = 11
    end
    object rg_devamppField13: TppField
      FieldAlias = 'ders_10'
      FieldName = 'ders_10'
      FieldLength = 7
      DisplayWidth = 7
      Position = 12
      SelectOrder = 12
    end
    object rg_devamppField14: TppField
      FieldAlias = 'tarih'
      FieldName = 'tarih'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 13
      SelectOrder = 0
    end
    object rg_devamppField15: TppField
      FieldAlias = 'kullanici'
      FieldName = 'kullanici'
      FieldLength = 16
      DisplayWidth = 16
      Position = 14
      SelectOrder = 3
    end
    object rg_devamppField16: TppField
      FieldAlias = 'bildirim_tarihi'
      FieldName = 'bildirim_tarihi'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
      SelectOrder = 11
    end
    object rg_devamppField17: TppField
      FieldAlias = 'kiminle_gorusuldu'
      FieldName = 'kiminle_gorusuldu'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
      SelectOrder = 5
    end
    object rg_devamppField18: TppField
      FieldAlias = 'aciklama'
      FieldName = 'aciklama'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
      SelectOrder = 6
    end
  end
  object rd_not: TppDBPipeline
    DataSource = ara_notlar
    UserName = 'rd_not'
    Left = 341
    Top = 265
    object rp_notppField1: TppField
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object rp_notppField2: TppField
      FieldAlias = 'donemi'
      FieldName = 'donemi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object rp_notppField3: TppField
      FieldAlias = 'ogr_no'
      FieldName = 'ogr_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object rp_notppField4: TppField
      FieldAlias = 'tarih'
      FieldName = 'tarih'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      SelectOrder = 0
      Searchable = False
      Sortable = False
    end
    object rp_notppField5: TppField
      FieldAlias = 'notu'
      FieldName = 'notu'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      SelectOrder = 1
      Searchable = False
      Sortable = False
    end
  end
  object pr_sinavsonuclari: TdxComponentPrinter
    CurrentLink = pr_sinavsonuclariLink1
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPageBackground, peoPageSetup, peoPrint]
    Version = 0
    Left = 608
    Top = 200
    object pr_sinavsonuclariLink1: TdxGridReportLink
      Component = gr_sinavlar
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
      ReportDocument.Caption = 'S'#305'nav Sonu'#231'lar'#305
      BuiltInReportLink = True
    end
  end
  object tablo_konu_analiz: TZReadOnlyQuery
    Connection = veriler.data_dershane
    ParamCheck = True
    Params = <>
    Options = [doCalcDefaults]
    Left = 617
    Top = 100
    object tablo_konu_analizders: TStringField
      FieldName = 'ders'
      Required = True
    end
    object tablo_konu_analizkonu: TStringField
      FieldName = 'konu'
      Size = 255
    end
    object tablo_konu_analizdurum: TStringField
      DisplayWidth = 255
      FieldName = 'durum'
      Size = 1
    end
    object tablo_konu_analizadet: TLargeintField
      FieldName = 'adet'
      Required = True
    end
  end
  object ara_konu_analiz: TDataSource
    DataSet = tablo_konu_analiz
    Enabled = False
    Left = 613
    Top = 152
  end
end
