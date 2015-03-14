unit SinavSonucBildirimIslemleri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, DB,
  ZAbstractRODataset, ZDataset, ppDB, ppDBPipe, ppParameter, ppVar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxSplitter, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ppModule, daDataModule, ppMemo,  ExtCtrls, ppRichTx,
  ComCtrls, jpeg, Menus, cxContainer, cxTextEdit, ppJPeg,strutils,pptypes,
  dxmdaset, cxLookAndFeelPainters, cxButtons, ppPageBreak, ZSqlMonitor,
  ZAbstractDataset, ppRegion;

type
  TFrSonucBildirimIslemleri = class(TForm)
    TbSinavTanimOzet: TZReadOnlyQuery;
    DsSinavTanimOzet: TDataSource;
    sinav_tarih: TcxGridDBTableView;
    gr_sinav_tarihLevel1: TcxGridLevel;
    gr_sinav_tarih: TcxGrid;
    sinav_tarihsinav_adi: TcxGridDBColumn;
    sinav_tarihsinav_tarihi: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    DsYazilacaklar: TDataSource;
    UpBildirim: TZReadOnlyQuery;
    Panel1: TPanel;
    gr_yazilacaklar: TcxGrid;
    yazilacaklar: TcxGridDBTableView;
    yazilacaklarid: TcxGridDBColumn;
    yazilacaklardonemi: TcxGridDBColumn;
    yazilacaklarogr_no: TcxGridDBColumn;
    yazilacaklaradi: TcxGridDBColumn;
    yazilacaklarsoyadi: TcxGridDBColumn;
    yazilacaklarsinifi: TcxGridDBColumn;
    gr_yazilacaklarLevel1: TcxGridLevel;
    GroupBox1: TGroupBox;
    bt_tumunu_ekle: TBitBtn;
    bt_temizle: TBitBtn;
    GroupBox2: TGroupBox;
    rt_mesaj: TRichEdit;
    bt_sil: TBitBtn;
    pu_sil: TPopupMenu;
    mn_secili_olan_disindakileri_sil: TMenuItem;
    mn_disaridan_girenleri_sil: TMenuItem;
    mn_adresi_dershane_olanlari_sil: TMenuItem;
    mn_adresi_olmayanlari_sil: TMenuItem;
    mn_dershane_ogrencileri_sil: TMenuItem;
    mn_adresi_dershane_olmayanlari_sil: TMenuItem;
    mn_adresi_olanlari_sil: TMenuItem;
    Label1: TLabel;
    tx_katilimci_sayisi: TcxTextEdit;
    TbTemp: TZReadOnlyQuery;
    sinav_tarihsinav_no: TcxGridDBColumn;
    sinav_tarihturu: TcxGridDBColumn;
    mn_bildirim_yapilanlari_sil: TMenuItem;
    mn_secili_olanlari_sil: TMenuItem;
    mn_bildirim: TPopupMenu;
    mn_tumunu_yazdir: TMenuItem;
    mn_secili_olani_yazdir: TMenuItem;
    mn_sms: TMenuItem;
    mn_eposta: TMenuItem;
    mn_faks: TMenuItem;
    mn_sms_almak_istemeyenleri_sil: TMenuItem;
    yazilacaklarsinav_no: TcxGridDBColumn;
    MTbYazilacaklar: TdxMemData;
    MTbYazilacaklarid: TLargeintField;
    MTbYazilacaklardonemi: TStringField;
    MTbYazilacaklarogr_no: TIntegerField;
    MTbYazilacaklaradi: TStringField;
    MTbYazilacaklarsoyadi: TStringField;
    MTbYazilacaklarsinifi: TStringField;
    MTbYazilacaklarsinav_no: TLargeintField;
    bt_yazdir: TcxButton;
    RpSinavSonucBelgesi: TppReport;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    MnOgrenciDurumBelgesi: TMenuItem;
    MnSinavSonucBelgesi: TMenuItem;
    MnOzetTumunuYazdir: TMenuItem;
    MnOzetSeciliOlaniYazdir: TMenuItem;
    TbSinavSonuc: TZQuery;
    DpYazilacaklar: TppDBPipeline;
    DsSinavSonuc: TDataSource;
    TbSinavSonucid: TLargeintField;
    TbSinavSonucsinav_no: TIntegerField;
    TbSinavSonucsinifi: TStringField;
    TbSinavSonucdonemi: TStringField;
    TbSinavSonucogr_no: TIntegerField;
    TbSinavSonucadi: TStringField;
    TbSinavSonucsoyadi: TStringField;
    TbSinavSonucturkce_dogru: TIntegerField;
    TbSinavSonucturkce_yanlis: TIntegerField;
    TbSinavSonucturkce_net: TFloatField;
    TbSinavSonuctarih1_dogru: TSmallintField;
    TbSinavSonuctarih1_yanlis: TSmallintField;
    TbSinavSonuctarih1_net: TFloatField;
    TbSinavSonuccografya_dogru: TSmallintField;
    TbSinavSonuccografya_yanlis: TSmallintField;
    TbSinavSonuccografya_net: TFloatField;
    TbSinavSonucfelsefe_dogru: TSmallintField;
    TbSinavSonucfelsefe_yanlis: TSmallintField;
    TbSinavSonucfelsefe_net: TFloatField;
    TbSinavSonucsosyal1_dogru: TIntegerField;
    TbSinavSonucsosyal1_yanlis: TIntegerField;
    TbSinavSonucsosyal1_net: TFloatField;
    TbSinavSonuccebir1_dogru: TSmallintField;
    TbSinavSonuccebir1_yanlis: TSmallintField;
    TbSinavSonuccebir1_net: TFloatField;
    TbSinavSonucgeometri1_dogru: TSmallintField;
    TbSinavSonucgeometri1_yanlis: TSmallintField;
    TbSinavSonucgeometri1_net: TFloatField;
    TbSinavSonucmatematik1_dogru: TIntegerField;
    TbSinavSonucmatematik1_yanlis: TIntegerField;
    TbSinavSonucmatematik1_net: TFloatField;
    TbSinavSonucfizik1_dogru: TSmallintField;
    TbSinavSonucfizik1_yanlis: TSmallintField;
    TbSinavSonucfizik1_net: TFloatField;
    TbSinavSonuckimya1_dogru: TSmallintField;
    TbSinavSonuckimya1_yanlis: TSmallintField;
    TbSinavSonuckimya1_net: TFloatField;
    TbSinavSonucbiyoloji1_dogru: TSmallintField;
    TbSinavSonucbiyoloji1_yanlis: TSmallintField;
    TbSinavSonucbiyoloji1_net: TFloatField;
    TbSinavSonucfen1_dogru: TIntegerField;
    TbSinavSonucfen1_yanlis: TIntegerField;
    TbSinavSonucfen1_net: TFloatField;
    TbSinavSonucedebiyat_dogru: TIntegerField;
    TbSinavSonucedebiyat_yanlis: TIntegerField;
    TbSinavSonucedebiyat_net: TFloatField;
    TbSinavSonucturkiyecografyasi_dogru: TIntegerField;
    TbSinavSonucturkiyecografyasi_yanlis: TIntegerField;
    TbSinavSonucturkiyecografyasi_net: TFloatField;
    TbSinavSonucpsikoloji_dogru: TIntegerField;
    TbSinavSonucpsikoloji_yanlis: TIntegerField;
    TbSinavSonucpsikoloji_net: TFloatField;
    TbSinavSonucedebiyatsosyal_dogru: TIntegerField;
    TbSinavSonucedebiyatsosyal_yanlis: TIntegerField;
    TbSinavSonucedebiyatsosyal_net: TFloatField;
    TbSinavSonuctarih2_dogru: TIntegerField;
    TbSinavSonuctarih2_yanlis: TIntegerField;
    TbSinavSonuctarih2_net: TFloatField;
    TbSinavSonuculkelercografyasi_dogru: TIntegerField;
    TbSinavSonuculkelercografyasi_yanlis: TIntegerField;
    TbSinavSonuculkelercografyasi_net: TFloatField;
    TbSinavSonucsosyoloji_dogru: TIntegerField;
    TbSinavSonucsosyoloji_yanlis: TIntegerField;
    TbSinavSonucsosyoloji_net: TFloatField;
    TbSinavSonucmantik_dogru: TIntegerField;
    TbSinavSonucmantik_yanlis: TIntegerField;
    TbSinavSonucmantik_net: TFloatField;
    TbSinavSonucsosyal2_dogru: TIntegerField;
    TbSinavSonucsosyal2_yanlis: TIntegerField;
    TbSinavSonucsosyal2_net: TFloatField;
    TbSinavSonuccebir2_dogru: TIntegerField;
    TbSinavSonuccebir2_yanlis: TIntegerField;
    TbSinavSonuccebir2_net: TFloatField;
    TbSinavSonucgeometri2_dogru: TIntegerField;
    TbSinavSonucgeometri2_yanlis: TIntegerField;
    TbSinavSonucgeometri2_net: TFloatField;
    TbSinavSonucmatematik2_dogru: TIntegerField;
    TbSinavSonucmatematik2_yanlis: TIntegerField;
    TbSinavSonucmatematik2_net: TFloatField;
    TbSinavSonucfizik2_dogru: TIntegerField;
    TbSinavSonucfizik2_yanlis: TIntegerField;
    TbSinavSonucfizik2_net: TFloatField;
    TbSinavSonuckimya2_dogru: TIntegerField;
    TbSinavSonuckimya2_yanlis: TIntegerField;
    TbSinavSonuckimya2_net: TFloatField;
    TbSinavSonucbiyoloji2_dogru: TIntegerField;
    TbSinavSonucbiyoloji2_yanlis: TIntegerField;
    TbSinavSonucbiyoloji2_net: TFloatField;
    TbSinavSonucfen2_dogru: TIntegerField;
    TbSinavSonucfen2_yanlis: TIntegerField;
    TbSinavSonucfen2_net: TFloatField;
    TbSinavSonucingilizce_dogru: TIntegerField;
    TbSinavSonucingilizce_yanlis: TIntegerField;
    TbSinavSonucingilizce_net: TFloatField;
    TbSinavSonuctoplam_dogru: TIntegerField;
    TbSinavSonuctoplam_yanlis: TIntegerField;
    TbSinavSonuctoplam_net: TFloatField;
    TbSinavSonucpuan_1: TFloatField;
    TbSinavSonucderece_1: TIntegerField;
    TbSinavSonucderece_local_1: TIntegerField;
    TbSinavSonucpuan_2: TFloatField;
    TbSinavSonucderece_2: TIntegerField;
    TbSinavSonucderece_local_2: TIntegerField;
    TbSinavSonucpuan_3: TFloatField;
    TbSinavSonucderece_3: TIntegerField;
    TbSinavSonucderece_local_3: TIntegerField;
    TbSinavSonucpuan_4: TFloatField;
    TbSinavSonucderece_4: TIntegerField;
    TbSinavSonucderece_local_4: TIntegerField;
    TbSinavSonucpuan_5: TFloatField;
    TbSinavSonucderece_5: TIntegerField;
    TbSinavSonucderece_local_5: TIntegerField;
    TbSinavSonucpuan_6: TFloatField;
    TbSinavSonucderece_6: TIntegerField;
    TbSinavSonucderece_local_6: TIntegerField;
    TbSinavSonuccevapturkce: TStringField;
    TbSinavSonuccevapsos1: TStringField;
    TbSinavSonuccevapmat1: TStringField;
    TbSinavSonuccevapfen1: TStringField;
    TbSinavSonuccevapedsos: TStringField;
    TbSinavSonuccevapsos2: TStringField;
    TbSinavSonuccevapmat2: TStringField;
    TbSinavSonuccevapfen2: TStringField;
    TbSinavSonuccevaping: TStringField;
    TbSinavSonuckitapcik: TStringField;
    TbSinavSonucbildirim: TStringField;
    TbSinavSonucsinav_adi: TStringField;
    TbSinavSonucsinav_tarihi: TDateField;
    TbSinavSonucturu: TStringField;
    TbOgrVeli: TZReadOnlyQuery;
    DsOgrVeli: TDataSource;
    DpOgrVeli: TppDBPipeline;
    TbOgrVelidonemi: TStringField;
    TbOgrVeliogr_no: TIntegerField;
    TbOgrVeliresmi: TBlobField;
    TbOgrVeliveli_kodu: TIntegerField;
    TbOgrVeliveli_ad_soyad: TStringField;
    TbOgrVeliposta_kodu: TStringField;
    TbOgrVeliadres_ili: TStringField;
    TbOgrVeliadres_ilcesi: TStringField;
    TbOgrVeliadresi: TStringField;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppDBText3: TppDBText;
    ppLabel17: TppLabel;
    ppDBText4: TppDBText;
    ppLabel20: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel24: TppLabel;
    ppDBText7: TppDBText;
    DpSinavSonuc: TppDBPipeline;
    ppImage3: TppImage;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppMemo6: TppMemo;
    SprOSS: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    SprOKS: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel36: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    SprIO: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel37: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppRegion05: TppRegion;
    ppRegion03: TppRegion;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    SprPIO: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel45: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppRegion01: TppRegion;
    ppLabel46: TppLabel;
    ppDBText29: TppDBText;
    ppLabel47: TppLabel;
    ppDBText30: TppDBText;
    ppLabel48: TppLabel;
    ppDBText31: TppDBText;
    SprPOSS: TppSubReport;
    ppChildReport6: TppChildReport;
    SprPOKS: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel58: TppLabel;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel59: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppTitleBand7: TppTitleBand;
    ppDetailBand9: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppLabel49: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel50: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel54: TppLabel;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel60: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel65: TppLabel;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppLabel66: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppLabel67: TppLabel;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppLabel68: TppLabel;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppLine5: TppLine;
    ppLabel69: TppLabel;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLabel70: TppLabel;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppLine6: TppLine;
    ppLabel71: TppLabel;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppLabel72: TppLabel;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppLabel73: TppLabel;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppLabel74: TppLabel;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppLine7: TppLine;
    ppLabel75: TppLabel;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppLabel76: TppLabel;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLabel77: TppLabel;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppLabel78: TppLabel;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppLine8: TppLine;
    ppLabel79: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText101: TppDBText;
    ppLabel25: TppLabel;
    ppDBText8: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppLabel80: TppLabel;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppLabel81: TppLabel;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLabel82: TppLabel;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppLabel83: TppLabel;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppLabel84: TppLabel;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppLine9: TppLine;
    ppLabel85: TppLabel;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppLabel86: TppLabel;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppLabel87: TppLabel;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppLine10: TppLine;
    ppLabel88: TppLabel;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppLabel89: TppLabel;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppLabel90: TppLabel;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppLabel91: TppLabel;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppLine11: TppLine;
    ppLabel92: TppLabel;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel32: TppLabel;
    ppLabel99: TppLabel;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppLine12: TppLine;
    ppLabel100: TppLabel;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppLabel101: TppLabel;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppLabel102: TppLabel;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppLabel103: TppLabel;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppLine13: TppLine;
    ppLine1: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel22: TppLabel;
    ppLine16: TppLine;
    ppLabel38: TppLabel;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    RpOgrenciDurumBelgesi: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppImage5: TppImage;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel108: TppLabel;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppLabel109: TppLabel;
    ppDBText163: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppLabel110: TppLabel;
    ppDBText166: TppDBText;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppDBText167: TppDBText;
    ppLabel117: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBImage1: TppDBImage;
    ppDetailBand5: TppDetailBand;
    ppLabel165: TppLabel;
    ppLine59: TppLine;
    RpOgrenciDurumBelgesiKS: TppLabel;
    ppLabel167: TppLabel;
    ppLine60: TppLine;
    ppLabel169: TppLabel;
    ppLine61: TppLine;
    ppFooterBand3: TppFooterBand;
    ppParameterList2: TppParameterList;
    TbOgrVelidanisman: TStringField;
    ppDBText168: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    SbrOSS: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel118: TppLabel;
    ppLabel166: TppLabel;
    ppLabel168: TppLabel;
    ppLabel204: TppLabel;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel225: TppLabel;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText174: TppDBText;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppLabel208: TppLabel;
    ppDBText175: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    SbrDOSS: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppDetailBand11: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppLabel130: TppLabel;
    ppDBText199: TppDBText;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppLabel143: TppLabel;
    ppDBText208: TppDBText;
    ppDBText209: TppDBText;
    ppDBText210: TppDBText;
    ppLabel154: TppLabel;
    ppDBText220: TppDBText;
    ppDBText221: TppDBText;
    ppDBText222: TppDBText;
    ppLabel158: TppLabel;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppLabel159: TppLabel;
    ppDBText235: TppDBText;
    ppDBText236: TppDBText;
    ppDBText237: TppDBText;
    ppLabel172: TppLabel;
    ppDBText259: TppDBText;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppLabel176: TppLabel;
    ppDBText271: TppDBText;
    ppDBText272: TppDBText;
    ppDBText273: TppDBText;
    ppLine24: TppLine;
    ppLabel177: TppLabel;
    ppDBText274: TppDBText;
    ppDBText275: TppDBText;
    ppDBText276: TppDBText;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppLabel126: TppLabel;
    TbSinavTanim: TZQuery;
    TbSinavTanimsinav_no: TIntegerField;
    TbSinavTanimturu: TStringField;
    TbSinavTanimsinav_tarihi: TDateField;
    TbSinavTanimsinav_adi: TStringField;
    TbSinavTanimturkce_soru_sayisi: TSmallintField;
    TbSinavTanimtarih1_soru_sayisi: TSmallintField;
    TbSinavTanimcografya_soru_sayisi: TSmallintField;
    TbSinavTanimfelsefe_soru_sayisi: TSmallintField;
    TbSinavTanimsosyal1_soru_sayisi: TSmallintField;
    TbSinavTanimcebir1_soru_sayisi: TSmallintField;
    TbSinavTanimgeometri1_soru_sayisi: TSmallintField;
    TbSinavTanimmatematik1_soru_sayisi: TSmallintField;
    TbSinavTanimmatematik2_soru_sayisi: TSmallintField;
    TbSinavTanimfizik1_soru_sayisi: TSmallintField;
    TbSinavTanimkimya1_soru_sayisi: TSmallintField;
    TbSinavTanimbiyoloji1_soru_sayisi: TSmallintField;
    TbSinavTanimfen1_soru_sayisi: TSmallintField;
    TbSinavTanimedebiyat_soru_sayisi: TSmallintField;
    TbSinavTanimturkiyecografyasi_soru_sayisi: TSmallintField;
    TbSinavTanimpsikoloji_soru_sayisi: TSmallintField;
    TbSinavTanimedebiyatsosyal_soru_sayisi: TSmallintField;
    TbSinavTanimtarih2_soru_sayisi: TSmallintField;
    TbSinavTanimulkelercografyasi_soru_sayisi: TSmallintField;
    TbSinavTanimsosyoloji_soru_sayisi: TSmallintField;
    TbSinavTanimmantik_soru_sayisi: TSmallintField;
    TbSinavTanimsosyal2_soru_sayisi: TSmallintField;
    TbSinavTanimcebir2_soru_sayisi: TSmallintField;
    TbSinavTanimgeometri2_soru_sayisi: TSmallintField;
    TbSinavTanimfizik2_soru_sayisi: TSmallintField;
    TbSinavTanimkimya2_soru_sayisi: TSmallintField;
    TbSinavTanimbiyoloji2_soru_sayisi: TSmallintField;
    TbSinavTanimfen2_soru_sayisi: TSmallintField;
    TbSinavTanimingilizce_soru_sayisi: TSmallintField;
    TbSinavTanimAturkce: TStringField;
    TbSinavTanimAsos1: TStringField;
    TbSinavTanimAmat1: TStringField;
    TbSinavTanimAfen1: TStringField;
    TbSinavTanimAedsos: TStringField;
    TbSinavTanimAsos2: TStringField;
    TbSinavTanimAmat2: TStringField;
    TbSinavTanimAfen2: TStringField;
    TbSinavTanimAing: TStringField;
    TbSinavTanimBturkce: TStringField;
    TbSinavTanimBsos1: TStringField;
    TbSinavTanimBmat1: TStringField;
    TbSinavTanimBfen1: TStringField;
    TbSinavTanimBedsos: TStringField;
    TbSinavTanimBsos2: TStringField;
    TbSinavTanimBmat2: TStringField;
    TbSinavTanimBfen2: TStringField;
    TbSinavTanimBing: TStringField;
    DsSinavTanim: TDataSource;
    DpSinavTanim: TppDBPipeline;
    TbSon9Sinav: TZReadOnlyQuery;
    TbSon9Sinavsinav_no: TIntegerField;
    TbSon9Sinavsinav_tarihi: TDateField;
    TbSon9Sinavsinav_adi: TStringField;
    TbSon9Sinavpuan_1: TFloatField;
    TbSon9Sinavderece_1: TIntegerField;
    TbSon9Sinavpuan_2: TFloatField;
    TbSon9Sinavderece_2: TIntegerField;
    TbSon9Sinavpuan_3: TFloatField;
    TbSon9Sinavderece_3: TIntegerField;
    TbSon9Sinavpuan_4: TFloatField;
    TbSon9Sinavderece_4: TIntegerField;
    TbSon9Sinavpuan_5: TFloatField;
    TbSon9Sinavderece_5: TIntegerField;
    TbSon9Sinavpuan_6: TFloatField;
    TbSon9Sinavderece_6: TIntegerField;
    SbrSonOSS: TppSubReport;
    ppChildReport9: TppChildReport;
    DsSon9Sinav: TDataSource;
    DpSon9Sinav: TppDBPipeline;
    ppTitleBand9: TppTitleBand;
    ppDetailBand12: TppDetailBand;
    ppSummaryBand9: TppSummaryBand;
    ppLabel119: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel144: TppLabel;
    ppLabel146: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel160: TppLabel;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText202: TppDBText;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppDBText205: TppDBText;
    ppDBText206: TppDBText;
    ppDBText207: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    TbDevamsizlik: TZReadOnlyQuery;
    DsDevamsizlik: TDataSource;
    DpDevamsizlik: TppDBPipeline;
    TbDevamsizliktarih: TDateField;
    TbDevamsizlikders_1: TStringField;
    TbDevamsizlikders_2: TStringField;
    TbDevamsizlikders_3: TStringField;
    TbDevamsizlikders_4: TStringField;
    TbDevamsizlikders_5: TStringField;
    TbDevamsizlikders_6: TStringField;
    TbDevamsizlikders_7: TStringField;
    TbDevamsizlikders_8: TStringField;
    TbDevamsizlikders_9: TStringField;
    TbDevamsizlikders_10: TStringField;
    SbrDevamsizlik: TppSubReport;
    ppChildReport10: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppDetailBand13: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLine46: TppLine;
    ppLine27: TppLine;
    ppDBText217: TppDBText;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppDBText223: TppDBText;
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    SbrRehberlik: TppSubReport;
    ppChildReport11: TppChildReport;
    TbRehberlik: TZReadOnlyQuery;
    DsRehberlik: TDataSource;
    DpRehberlik: TppDBPipeline;
    TbRehberliktarih: TDateField;
    TbRehberliknotu: TStringField;
    ppTitleBand11: TppTitleBand;
    ppDetailBand14: TppDetailBand;
    ppSummaryBand11: TppSummaryBand;
    ppLine47: TppLine;
    ppLabel145: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppDBText231: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    RpOgrenciDurumBelgesiMesaj: TppMemo;
    ppLine53: TppLine;
    ppLine54: TppLine;
    TbGecikenBorc: TZReadOnlyQuery;
    RpOgrenciDurumBelgesiBorc: TppMemo;
    TbGecikenBorctarih: TDateTimeField;
    TbGecikenBorcgecikenborc: TFloatField;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppRegionSon9Sinav: TppRegion;
    SbrOKS: TppSubReport;
    ppChildReport12: TppChildReport;
    SbrIO: TppSubReport;
    ppChildReport13: TppChildReport;
    ppTitleBand12: TppTitleBand;
    ppDetailBand15: TppDetailBand;
    ppSummaryBand12: TppSummaryBand;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine80: TppLine;
    ppLabel197: TppLabel;
    ppDBText254: TppDBText;
    ppDBText173: TppDBText;
    ppDBText238: TppDBText;
    ppDBText239: TppDBText;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppTitleBand13: TppTitleBand;
    ppDetailBand16: TppDetailBand;
    ppSummaryBand13: TppSummaryBand;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine81: TppLine;
    ppLabel184: TppLabel;
    ppDBText242: TppDBText;
    SbrSonIO: TppSubReport;
    ppChildReport14: TppChildReport;
    SbrSonOKS: TppSubReport;
    ppChildReport15: TppChildReport;
    ppTitleBand14: TppTitleBand;
    ppDetailBand17: TppDetailBand;
    ppSummaryBand14: TppSummaryBand;
    ppLine82: TppLine;
    ppLabel185: TppLabel;
    ppLine83: TppLine;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLine85: TppLine;
    ppLine166: TppLine;
    ppDBText243: TppDBText;
    ppDBText244: TppDBText;
    ppDBText245: TppDBText;
    ppDBText246: TppDBText;
    ppDBText250: TppDBText;
    ppDBText251: TppDBText;
    ppLine167: TppLine;
    ppLine84: TppLine;
    ppTitleBand15: TppTitleBand;
    ppDetailBand18: TppDetailBand;
    ppSummaryBand15: TppSummaryBand;
    ppLine168: TppLine;
    ppLabel190: TppLabel;
    ppLine169: TppLine;
    ppLabel191: TppLabel;
    ppLabel195: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppDBText247: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText256: TppDBText;
    ppLine173: TppLine;
    SbrDOKS: TppSubReport;
    ppChildReport16: TppChildReport;
    ppTitleBand16: TppTitleBand;
    ppDetailBand19: TppDetailBand;
    ppLabel196: TppLabel;
    ppDBText255: TppDBText;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppLabel198: TppLabel;
    ppDBText262: TppDBText;
    ppDBText263: TppDBText;
    ppDBText264: TppDBText;
    ppLabel201: TppLabel;
    ppDBText265: TppDBText;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppLabel210: TppLabel;
    ppDBText277: TppDBText;
    ppDBText278: TppDBText;
    ppDBText279: TppDBText;
    ppLine174: TppLine;
    ppLabel222: TppLabel;
    ppDBText286: TppDBText;
    ppDBText287: TppDBText;
    ppDBText288: TppDBText;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel229: TppLabel;
    ppDBText289: TppDBText;
    ppDBText290: TppDBText;
    ppDBText291: TppDBText;
    ppDBText293: TppDBText;
    ppLabel230: TppLabel;
    ppSummaryBand16: TppSummaryBand;
    SbrDIO: TppSubReport;
    ppChildReport17: TppChildReport;
    ppTitleBand17: TppTitleBand;
    ppDetailBand20: TppDetailBand;
    ppLabel231: TppLabel;
    ppDBText296: TppDBText;
    ppDBText297: TppDBText;
    ppDBText298: TppDBText;
    ppLabel235: TppLabel;
    ppDBText299: TppDBText;
    ppDBText300: TppDBText;
    ppDBText301: TppDBText;
    ppLabel236: TppLabel;
    ppDBText302: TppDBText;
    ppDBText303: TppDBText;
    ppDBText304: TppDBText;
    ppLabel237: TppLabel;
    ppDBText305: TppDBText;
    ppDBText306: TppDBText;
    ppDBText307: TppDBText;
    ppLabel240: TppLabel;
    ppDBText308: TppDBText;
    ppDBText309: TppDBText;
    ppDBText310: TppDBText;
    ppLine175: TppLine;
    ppLabel243: TppLabel;
    ppDBText317: TppDBText;
    ppDBText318: TppDBText;
    ppDBText319: TppDBText;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppDBText320: TppDBText;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppDBText323: TppDBText;
    ppDBText324: TppDBText;
    ppLabel247: TppLabel;
    ppSummaryBand17: TppSummaryBand;
    TbSinavTanimOzetsinav_no: TIntegerField;
    TbSinavTanimOzetturu: TStringField;
    TbSinavTanimOzetsinav_tarihi: TDateField;
    TbSinavTanimOzetsinav_adi: TStringField;
    TbSinavTanimOzetkatilimci: TLargeintField;
    ppParameterList1: TppParameterList;
    ppDBText1: TppDBText;
    ppLabelMudur: TppLabel;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppDBText20: TppDBText;
    ppDBText268: TppDBText;
    ppDBText269: TppDBText;
    ppDBText270: TppDBText;
    ppLabel3: TppLabel;
    ppImage1: TppImage;
    SprPKPSS: TppSubReport;
    ppChildReport18: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand18: TppSummaryBand;
    ppLabel4: TppLabel;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppLabel5: TppLabel;
    ppDBText283: TppDBText;
    ppDBText284: TppDBText;
    ppDBText285: TppDBText;
    SprKPSS: TppSubReport;
    ppChildReport19: TppChildReport;
    ppTitleBand19: TppTitleBand;
    ppDetailBand21: TppDetailBand;
    ppSummaryBand19: TppSummaryBand;
    ppLabel6: TppLabel;
    ppDBText292: TppDBText;
    ppDBText294: TppDBText;
    ppDBText295: TppDBText;
    ppLabel8: TppLabel;
    ppDBText314: TppDBText;
    ppDBText315: TppDBText;
    ppDBText316: TppDBText;
    ppLabel9: TppLabel;
    ppDBText325: TppDBText;
    ppDBText326: TppDBText;
    ppDBText327: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText328: TppDBText;
    ppDBText329: TppDBText;
    ppDBText330: TppDBText;
    ppLine2: TppLine;
    SbrDKPSS: TppSubReport;
    ppChildReport20: TppChildReport;
    ppTitleBand20: TppTitleBand;
    ppDetailBand22: TppDetailBand;
    ppSummaryBand20: TppSummaryBand;
    ppLabel15: TppLabel;
    ppDBText331: TppDBText;
    ppDBText332: TppDBText;
    ppDBText333: TppDBText;
    ppLabel16: TppLabel;
    ppDBText334: TppDBText;
    ppDBText335: TppDBText;
    ppDBText336: TppDBText;
    ppLabel19: TppLabel;
    ppDBText340: TppDBText;
    ppDBText341: TppDBText;
    ppDBText342: TppDBText;
    ppLine3: TppLine;
    ppLabel21: TppLabel;
    ppDBText343: TppDBText;
    ppDBText344: TppDBText;
    ppDBText345: TppDBText;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText346: TppDBText;
    ppDBText347: TppDBText;
    ppDBText349: TppDBText;
    ppLabel30: TppLabel;
    SbrKPSS: TppSubReport;
    ppChildReport21: TppChildReport;
    ppTitleBand21: TppTitleBand;
    ppDetailBand23: TppDetailBand;
    ppSummaryBand21: TppSummaryBand;
    ppDBText350: TppDBText;
    ppDBText351: TppDBText;
    ppLabel31: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine4: TppLine;
    ppLine21: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel53: TppLabel;
    ppDBText352: TppDBText;
    ppDBText353: TppDBText;
    ppDBText354: TppDBText;
    ppDBText355: TppDBText;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    SbrSonKPSS: TppSubReport;
    ppChildReport22: TppChildReport;
    ppTitleBand22: TppTitleBand;
    ppDetailBand24: TppDetailBand;
    ppSummaryBand22: TppSummaryBand;
    ppLine44: TppLine;
    ppLabel129: TppLabel;
    ppLine45: TppLine;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel209: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLine100: TppLine;
    ppLine102: TppLine;
    ppDBText356: TppDBText;
    ppDBText357: TppDBText;
    ppDBText358: TppDBText;
    ppDBText359: TppDBText;
    ppDBText360: TppDBText;
    ppDBText361: TppDBText;
    ppLine101: TppLine;
    ppLine103: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_tumunu_ekleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_temizleClick(Sender: TObject);
    procedure sinav_tarihDblClick(Sender: TObject);
    procedure bt_silClick(Sender: TObject);
    procedure mn_secili_olan_disindakileri_silClick(Sender: TObject);
    procedure mn_disaridan_girenleri_silClick(Sender: TObject);
    procedure mn_adresi_dershane_olanlari_silClick(Sender: TObject);
    procedure mn_adresi_olmayanlari_silClick(Sender: TObject);
    procedure mn_dershane_ogrencileri_silClick(Sender: TObject);
    procedure mn_adresi_dershane_olmayanlari_silClick(Sender: TObject);
    procedure mn_adresi_olanlari_silClick(Sender: TObject);
    procedure mn_bildirim_yapilanlari_silClick(Sender: TObject);
    procedure mn_secili_olanlari_silClick(Sender: TObject);
    procedure mn_tumunu_yazdirClick(Sender: TObject);
    procedure mn_secili_olani_yazdirClick(Sender: TObject);
    procedure mn_smsClick(Sender: TObject);
    procedure mn_sms_almak_istemeyenleri_silClick(Sender: TObject);
    procedure mn_epostaClick(Sender: TObject);
    procedure mn_faksClick(Sender: TObject);
    procedure MnOzetSeciliOlaniYazdirClick(Sender: TObject);
    procedure MnOzetTumunuYazdirClick(Sender: TObject);
    procedure RpOgrenciDurumBelgesiKSGetText(Sender: TObject;
      var Text: String);
    procedure TbSon9SinavBeforeOpen(DataSet: TDataSet);
    procedure RpOgrenciDurumBelgesiMesajPrint(Sender: TObject);
    procedure RpOgrenciDurumBelgesiBorcPrint(Sender: TObject);
    procedure TbDevamsizlikBeforeOpen(DataSet: TDataSet);
    procedure TbTempFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ppDetailBand2BeforeGenerate(Sender: TObject);
    procedure ppDetailBand5BeforeGenerate(Sender: TObject);
    procedure RpOgrenciDurumBelgesiPreviewFormClose(Sender: TObject);
    procedure RpSinavSonucBelgesiPreviewFormClose(Sender: TObject);
    procedure ppLabelMudurGetText(Sender: TObject; var Text: String);
    procedure ppImage3Print(Sender: TObject);
    procedure ppLabel33GetText(Sender: TObject; var Text: String);
    procedure ppMemo6Print(Sender: TObject);
    procedure ppImage5Print(Sender: TObject);
    procedure ppLabel108GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSonucBildirimIslemleri: TFrSonucBildirimIslemleri;

implementation

uses veritabani,functionlar,MesajGonder;
{$R *.dfm}

procedure TFrSonucBildirimIslemleri.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrSonucBildirimIslemleri.bt_tumunu_ekleClick(Sender: TObject);
begin
  if TbSinavTanimOzet.RecordCount < 1 then
  begin
    messagedlg('Hiçbir sýnav yok!', mtError ,[mbOK], 0);
    exit;
  end;
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.Close;
  TbTemp.sql.clear;
  TbTemp.SQL.add('select id,donemi,ogr_no,adi,soyadi,sinifi,sinav_no from sinavsonuc where sinav_no=:p0');
  TbTemp.Params[0].Asinteger := TbSinavTanimOzetsinav_no.asinteger;
  TbTemp.Open;
  MTbYazilacaklar.Open;
  while TbTemp.Eof = False do
  begin
    if not MTbYazilacaklar.Locate('id',vararrayof([TbTemp.FieldByName('id').AsInteger]),[]) then
    begin
      MTbYazilacaklar.Append;
      MTbYazilacaklardonemi.AsString:=TbTemp.FieldByName('donemi').AsString;
      MTbYazilacaklarid.AsInteger:=TbTemp.FieldByName('id').AsInteger;
      MTbYazilacaklarogr_no.AsInteger:=TbTemp.FieldByName('ogr_no').AsInteger;
      MTbYazilacaklaradi.AsString:=TbTemp.FieldByName('adi').AsString;
      MTbYazilacaklarsoyadi.AsString:=TbTemp.FieldByName('soyadi').AsString;
      MTbYazilacaklarsinifi.AsString:=TbTemp.FieldByName('sinifi').AsString;
      MTbYazilacaklarsinav_no.AsInteger:=TbTemp.FieldByName('sinav_no').AsInteger;
      MTbYazilacaklar.Post;
    end;
    TbTemp.Next;
  end;
  TbTemp.Close;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
  tx_katilimci_sayisi.Text := TbSinavTanimOzetkatilimci.AsString;
end;

procedure TFrSonucBildirimIslemleri.FormCreate(Sender: TObject);
begin
  TbTemp.Filtered := gizli;
  TbSinavTanimOzet.Open;
  rt_mesaj.Text := reg_oku('Durum Belgesi Mesajý');
  if rt_mesaj.Text = '' then rt_mesaj.Text := '     Ýyi günler.'
end;

procedure TFrSonucBildirimIslemleri.bt_temizleClick(Sender: TObject);
begin
  MTbYazilacaklar.Close;
end;

procedure TFrSonucBildirimIslemleri.sinav_tarihDblClick(Sender: TObject);
begin
  bt_tumunu_ekleClick(bt_tumunu_ekle);
end;

procedure TFrSonucBildirimIslemleri.bt_silClick(Sender: TObject);
begin
  if MTbYazilacaklar.RecordCount<1 then
  begin
    MessageDlg('Yazdýrýlacaklar listesinde hiç bir kayýt yok!', mtWarning, [mbOK], 0);
    exit;
  end;
  pu_sil.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TFrSonucBildirimIslemleri.mn_secili_olan_disindakileri_silClick(
  Sender: TObject);
var
i:integer;
begin
  if MTbYazilacaklar.RecordCount < 1 then exit;
  if TbSinavTanimOzet.RecordCount < 1 then
  begin
    messagedlg('Hiçbir sýnav yok!', mtError ,[mbOK], 0);
    exit;
  end;
  i:=yazilacaklar.ViewData.RecordCount-1;
  while i>=0 do
  begin
    if yazilacaklar.viewdata.Records[i].Selected=false then
      yazilacaklar.DataController.DeleteRecord(yazilacaklar.ViewData.Rows[i].RecordIndex);
    dec(i);
  end;
end;

procedure TFrSonucBildirimIslemleri.mn_disaridan_girenleri_silClick(
  Sender: TObject);
begin
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  while MTbYazilacaklar.Eof = false do
    if MTbYazilacaklarsinifi.Text = 'Dýþarýdan' then
      MTbYazilacaklar.Delete
    else
      MTbYazilacaklar.Next;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_adresi_dershane_olanlari_silClick(
  Sender: TObject);
begin
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  TbTemp.Close;
  TbTemp.SQL.Clear;
  TbTemp.SQL.Add('SELECT donemi,ogr_no FROM ogrenciler left join veliler on ogrenciler.veli_kodu = veliler.veli_kodu where donemi = :p0 and ogr_no = :p1 and UPPER(adresi) like ''%'+bkmetin(Dershane.AdiKisa,1)+'%''');
  while MTbYazilacaklar.Eof = false do
  begin
    TbTemp.Close;
    TbTemp.ParamByName('p0').Text := MTbYazilacaklardonemi.AsString;
    TbTemp.ParamByName('p1').AsInteger := MTbYazilacaklarogr_no.AsInteger;
    TbTemp.Open;
    if TbTemp.RecordCount > 0 then
      MTbYazilacaklar.Delete
    else
      MTbYazilacaklar.Next;
  end;
  TbTemp.Close;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_adresi_olmayanlari_silClick(
  Sender: TObject);
begin
  TbTemp.Close;
  TbTemp.SQL.Clear;
  TbTemp.SQL.Add('SELECT donemi,ogr_no FROM ogrenciler left join veliler on ogrenciler.veli_kodu = veliler.veli_kodu where donemi = :p0 and ogr_no = :p1 and TRIM(adresi) = ''''');
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  while MTbYazilacaklar.Eof = false do
  begin
    TbTemp.Close;
    TbTemp.ParamByName('p0').Text := MTbYazilacaklardonemi.AsString;
    TbTemp.ParamByName('p1').AsInteger := MTbYazilacaklarogr_no.AsInteger;
    TbTemp.Open;
    if TbTemp.RecordCount > 0 then
      MTbYazilacaklar.Delete
    else
      MTbYazilacaklar.Next;
  end;
  TbTemp.Close;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_dershane_ogrencileri_silClick(
  Sender: TObject);
begin
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  while MTbYazilacaklar.Eof = false do
    if MTbYazilacaklarsinifi.Text <> 'Dýþarýdan' then
      MTbYazilacaklar.Delete
    else
      MTbYazilacaklar.Next;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_adresi_dershane_olmayanlari_silClick(
  Sender: TObject);
begin
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  TbTemp.Close;
  TbTemp.SQL.Clear;
  TbTemp.SQL.Add('SELECT donemi,ogr_no FROM ogrenciler left join veliler on ogrenciler.veli_kodu = veliler.veli_kodu where donemi = :p0 and ogr_no = :p1 and UPPER(adresi) like ''%'+bkmetin(Dershane.AdiKisa,1)+'%''');
  while MTbYazilacaklar.Eof = false do
  begin
    TbTemp.Close;
    TbTemp.ParamByName('p0').Text := MTbYazilacaklardonemi.AsString;
    TbTemp.ParamByName('p1').AsInteger := MTbYazilacaklarogr_no.AsInteger;
    TbTemp.Open;
    if TbTemp.RecordCount > 0 then
      MTbYazilacaklar.Next
    else
      MTbYazilacaklar.Delete;
  end;
  TbTemp.Close;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_adresi_olanlari_silClick(
  Sender: TObject);
begin
  TbTemp.Close;
  TbTemp.SQL.Clear;
  TbTemp.SQL.Add('SELECT donemi,ogr_no FROM ogrenciler left join veliler on ogrenciler.veli_kodu = veliler.veli_kodu where donemi = :p0 and ogr_no = :p1 and TRIM(adresi) <> ''''');
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  while MTbYazilacaklar.Eof = false do
  begin
    TbTemp.Close;
    TbTemp.ParamByName('p0').Text := MTbYazilacaklardonemi.AsString;
    TbTemp.ParamByName('p1').AsInteger := MTbYazilacaklarogr_no.AsInteger;
    TbTemp.Open;
    if TbTemp.RecordCount > 0 then
      MTbYazilacaklar.Delete
    else
      MTbYazilacaklar.Next;
  end;
  TbTemp.Close;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_bildirim_yapilanlari_silClick(
  Sender: TObject);
begin
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  while MTbYazilacaklar.Eof = false do
  begin
    TbTemp.Close;
    TbTemp.SQL.Clear;
    TbTemp.SQL.Add('select bildirim from sinavsonuc where id='
      +MTbYazilacaklarid.Text);
    TbTemp.Open;
    if TbTemp.FieldByName('bildirim').Text <> '' then
      MTbYazilacaklar.Delete
    else
      MTbYazilacaklar.Next;
  end;
  TbTemp.Close;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_secili_olanlari_silClick(
  Sender: TObject);
begin
  yazilacaklar.DataController.DeleteSelection;
end;

procedure TFrSonucBildirimIslemleri.mn_tumunu_yazdirClick(Sender: TObject);
begin
  if (not MTbYazilacaklar.Active) or (MTbYazilacaklar.RecordCount < 1) then
  begin
    messagedlg('Yazdýrýlacak öðrenci listesi boþ!',mtError, [mbOk], 0);
    Exit;
  end;
  TbSinavTanim.Open;
  TbSinavSonuc.Open;
  TbOgrVeli.Open;
  TbSon9Sinav.Open;
  TbDevamsizlik.Open;
  TbGecikenBorc.Open;
  TbRehberlik.Open;
  RpOgrenciDurumBelgesi.CloseDataPipelines;
  RpOgrenciDurumBelgesi.Print;
//REGÝSTERE KAYDET
  reg_yaz('Durum Belgesi Mesajý',rt_mesaj.Text);
//yazdir

end;

procedure TFrSonucBildirimIslemleri.mn_secili_olani_yazdirClick(
  Sender: TObject);
begin
  if yazilacaklar.Controller.SelectedRecordCount = 0 then
  begin
    messagedlg('Bir kayýt seçmelisiniz!', mtError ,[mbOK], 0);
    exit;
  end;
  DpYazilacaklar.RangeBegin:=rbCurrentRecord;
  DpYazilacaklar.RangeEndCount := 1;
  DpYazilacaklar.RangeEnd:=reCount;
  mn_tumunu_yazdir.Click;
  DpYazilacaklar.RangeBegin:=rbFirstRecord;
  DpYazilacaklar.RangeEnd:=reLastRecord;
  DpYazilacaklar.RangeEndCount:=0;
end;

procedure TFrSonucBildirimIslemleri.mn_smsClick(Sender: TObject);
var
  idler:widestring;
begin
  if (not MTbYazilacaklar.Active) or (MTbYazilacaklar.RecordCount < 1) then
  begin
    messagedlg('SMS gönderilecek öðrenci listesi boþ!',mtError, [mbOk], 0);
    Exit;
  end;
  mn_sms_almak_istemeyenleri_sil.Click;
  idler:='';
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  while MTbYazilacaklar.Eof=false do
  begin
    idler:=idler+MTbYazilacaklarid.Text+',';
    MTbYazilacaklar.Next;
  end;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
  idler:=copy(idler,1,length(idler)-1);
  idler:='('+idler+')';
  application.CreateForm(TFrMesajGonder,FrMesajGonder);
  with FrMesajGonder do
  begin
    tablo_alicilar.Close;
    tablo_alicilar.SQL.Clear;
    tablo_alicilar.SQL.Add('select sinav_adi,sinav_tarihi,adi,soyadi,'
                          +'round(puan_1) as puan_1,round(puan_2) as puan_2,round(puan_3) as puan_3,'
                          +'round(puan_4) as puan_4,round(puan_5) as puan_5,round(puan_6) as puan_6,'
                          +'derece_1,derece_2,derece_3,derece_4,derece_5,derece_6,'
                          +'veli_adi,veli_soyadi,gsm,sms_bildirim from sinavsonuc'
                          +' left join sinavtanim using(sinav_no)'
                          +' left join ogrenciler using(donemi,ogr_no) left join veliler using (veli_kodu)'
                          +' where id in '+idler);
    alicilari_hazirla;
  end;
  MessageDlg('Alýcýlar ayarlandý. Hazýr Mesajlar düðmesinden mesaj seçerek gönderebilirsiniz.', mtInformation, [mbOK], 0);
  UpBildirim.Close;
  UpBildirim.SQL.Clear;
  UpBildirim.SQL.Add('update sinavsonuc set bildirim=''SMS'' where id in '+idler);
  UpBildirim.ExecSQL;
end;

procedure TFrSonucBildirimIslemleri.mn_sms_almak_istemeyenleri_silClick(
  Sender: TObject);
begin
  DsYazilacaklar.Enabled := false;
  MTbYazilacaklar.First;
  TbTemp.Close;
  TbTemp.SQL.Clear;
  TbTemp.SQL.Add('select sms_bildirim from sinavsonuc'
                        +' left join ogrenciler using(donemi,ogr_no) left join veliler using (veli_kodu)'
                        +' where id= :p0 and sms_bildirim <> ''Evet''');
  while MTbYazilacaklar.Eof = false do
  begin
    TbTemp.Close;
    TbTemp.ParamByName('p0').AsInteger := MTbYazilacaklarid.asinteger;
    TbTemp.Open;
    if TbTemp.RecordCount > 0  then
      MTbYazilacaklar.Delete
    else
      MTbYazilacaklar.Next;
  end;
  TbTemp.Close;
  MTbYazilacaklar.First;
  DsYazilacaklar.Enabled := true;
end;

procedure TFrSonucBildirimIslemleri.mn_epostaClick(Sender: TObject);
begin
  if (not MTbYazilacaklar.Active) or (MTbYazilacaklar.RecordCount < 1) then
  begin
    messagedlg('Eposta gönderilecek öðrenci listesi boþ!',mtError, [mbOk], 0);
    Exit;
  end;
end;

procedure TFrSonucBildirimIslemleri.mn_faksClick(Sender: TObject);
begin
  if (not MTbYazilacaklar.Active) or (MTbYazilacaklar.RecordCount < 1) then
  begin
    messagedlg('Faks gönderilecek öðrenci listesi boþ!',mtError, [mbOk], 0);
    Exit;
  end;
end;

procedure TFrSonucBildirimIslemleri.MnOzetSeciliOlaniYazdirClick(
  Sender: TObject);
begin
  if yazilacaklar.Controller.SelectedRecordCount = 0 then
  begin
    messagedlg('Bir kayýt seçmelisiniz!', mtError ,[mbOK], 0);
    exit;
  end;

  DpYazilacaklar.RangeBegin:=rbCurrentRecord;
  DpYazilacaklar.RangeEndCount:=1;
  DpYazilacaklar.RangeEnd:=reCount;
  MnOzetTumunuYazdir.Click;
  DpYazilacaklar.RangeBegin:=rbFirstRecord;
  DpYazilacaklar.RangeEnd:=reLastRecord;
  DpYazilacaklar.RangeEndCount:=0;
end;

procedure TFrSonucBildirimIslemleri.MnOzetTumunuYazdirClick(
  Sender: TObject);
begin
  if (not MTbYazilacaklar.Active) or (MTbYazilacaklar.RecordCount < 1) then
  begin
    messagedlg('Yazdýrýlacak öðrenci listesi boþ!',mtError, [mbOk], 0);
    Exit;
  end;
  TbSinavSonuc.Open;
  TbOgrVeli.Open;
  RpSinavSonucBelgesi.CloseDataPipelines;
  RpSinavSonucBelgesi.Print;
end;

procedure TFrSonucBildirimIslemleri.RpOgrenciDurumBelgesiKSGetText(
  Sender: TObject; var Text: String);
begin
  Text := tx_katilimci_sayisi.Text;
end;

procedure TFrSonucBildirimIslemleri.RpOgrenciDurumBelgesiMesajPrint(Sender: TObject);
begin
  RpOgrenciDurumBelgesiMesaj.Lines.Clear;
  RpOgrenciDurumBelgesiMesaj.Lines.Add('*** '+rt_mesaj.Text);
end;

procedure TFrSonucBildirimIslemleri.RpOgrenciDurumBelgesiBorcPrint(
  Sender: TObject);
begin
  RpOgrenciDurumBelgesiBorc.Lines.Clear;
  if TbGecikenBorcgecikenborc.AsFloat > 0 then
    RpOgrenciDurumBelgesiBorc.Lines.Add(TbGecikenBorctarih.AsString+' itibariyle ' + formatcurr('0, YTL',TbGecikenBorcgecikenborc.AsFloat) + ' geciken borcunuz vardýr.')
  else
    RpOgrenciDurumBelgesiBorc.Lines.Add('Zamanýnda yaptýðýnýz ödemeler için teþekkür ederiz.');
end;

procedure TFrSonucBildirimIslemleri.TbSon9SinavBeforeOpen(
  DataSet: TDataSet);
begin
  TZReadOnlyQuery(DataSet).ParamByName('sinav_tarihi').Text := mtarih(TbSinavTanimsinav_tarihi.AsDateTime);
end;

procedure TFrSonucBildirimIslemleri.TbDevamsizlikBeforeOpen(
  DataSet: TDataSet);
begin
  TbSon9Sinav.First;
  if  TbSon9Sinav.RecordCount > 0 then
    TZReadOnlyQuery(DataSet).ParamByName('sinav_tarihi').Text  := mtarih(TbSon9Sinavsinav_tarihi.AsDateTime)
  else
    TZReadOnlyQuery(DataSet).ParamByName('sinav_tarihi').Text := '0000-00-00';
end;

procedure TFrSonucBildirimIslemleri.TbTempFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([TbTemp.fieldbyname('donemi').AsString,TbTemp.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure TFrSonucBildirimIslemleri.ppDetailBand2BeforeGenerate(
  Sender: TObject);
begin
  SprOKS.Visible := false;
  SprKPSS.Visible := false;
  SprIO.Visible := false;
  SprPOKS.Visible := false;
  SprPKPSS.Visible := false;
  SprPIO.Visible := false;
  SprPOSS.Visible := false;
  SprOSS.Visible := false;
  if TbSinavSonuc.FieldByName('turu').AsString = 'ÖSS' then
  begin
    SprPOSS.Visible := true;
    SprOSS.Visible := true;
  end
  else if TbSinavSonuc.FieldByName('turu').AsString = 'OKS' then
  begin
    SprOKS.Visible := true;
    SprPOKS.Visible := true;
  end
  else if TbSinavSonuc.FieldByName('turu').AsString = 'KPSS' then
  begin
    SprKPSS.Visible := true;
    SprPKPSS.Visible := true;
  end
  else
  begin
    SprIO.Visible := true;
    SprPIO.Visible := true;
  end;
end;

procedure TFrSonucBildirimIslemleri.ppDetailBand5BeforeGenerate(
  Sender: TObject);
begin
  SbrOKS.Visible := false;
  SbrKPSS.Visible := false;
  SbrIO.Visible := false;
  SbrSonOKS.Visible := false;
  SbrSonKPSS.Visible := false;
  SbrSonIO.Visible := false;
  SbrDOKS.Visible := false;
  SbrDKPSS.Visible := false;
  SbrDIO.Visible := false;
  SbrOSS.Visible := false;
  SbrSonOSS.Visible := false;
  SbrDOSS.Visible := false;
  if TbSinavSonuc.FieldByName('turu').AsString = 'ÖSS' then
  begin
    SbrOSS.Visible := true;
    SbrSonOSS.Visible := true;
    SbrDOSS.Visible := true;
  end
  else if TbSinavSonuc.FieldByName('turu').AsString = 'OKS' then
  begin
    SbrOKS.Visible := true;
    SbrSonOKS.Visible := true;
    SbrDOKS.Visible := true;
  end
  else if TbSinavSonuc.FieldByName('turu').AsString = 'KPSS' then
  begin
    SbrKPSS.Visible := true;
    SbrSonKPSS.Visible := true;
    SbrDKPSS.Visible := true;
  end
  else
  begin
    SbrIO.Visible := true;
    SbrSonIO.Visible := true;
    SbrDIO.Visible := true;
  end;
end;

procedure TFrSonucBildirimIslemleri.RpOgrenciDurumBelgesiPreviewFormClose(
  Sender: TObject);
var
  ids: string;
begin
  if (MessageDlg('Yazdýrdýðýnýz Öðrenci Durum Belgeleri için, velinin bilgilendirildiði bilgisi kaydedilsin mi?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
  begin
    MTbYazilacaklar.First;
    ids := '';
    while MTbYazilacaklar.Eof = false do
    begin
      ids := ids + MTbYazilacaklarid.AsString + ',';
      MTbYazilacaklar.Next;
    end;
    ids := '(' + copy(ids, 1, length(ids)-1) + ')';
    UpBildirim.SQL.Clear;
    UpBildirim.SQL.Add('update sinavsonuc set bildirim=''Posta'' where id in '+ids);
    UpBildirim.ExecSQL;
  end;
  RpSinavSonucBelgesiPreviewFormClose(RpSinavSonucBelgesi);
end;

procedure TFrSonucBildirimIslemleri.RpSinavSonucBelgesiPreviewFormClose(
  Sender: TObject);
begin
  TbDevamsizlik.Close;
  TbSinavTanim.Close;
  TbSinavSonuc.Close;
  TbGecikenBorc.Close;
  TbOgrVeli.Close;
  TbRehberlik.Close;
  TbSon9Sinav.Close;
end;

procedure TFrSonucBildirimIslemleri.ppLabelMudurGetText(Sender: TObject;
  var Text: String);
begin
  Text := Dershane.mudur;
end;

procedure TFrSonucBildirimIslemleri.ppImage3Print(Sender: TObject);
begin
  TppImage(Sender).Picture.Assign(Dershane.Logo);
end;

procedure TFrSonucBildirimIslemleri.ppLabel33GetText(Sender: TObject;
  var Text: String);
begin
  Text := bkmetin(Dershane.AdiKisa,1);
end;

procedure TFrSonucBildirimIslemleri.ppMemo6Print(Sender: TObject);
begin
  TppMemo(Sender).Text := Dershane.Adresi+' ' + Dershane.Il+'  '+Dershane.Tel;
end;

procedure TFrSonucBildirimIslemleri.ppImage5Print(Sender: TObject);
begin
  TppImage(Sender).Picture.Assign(Dershane.Logo);
end;

procedure TFrSonucBildirimIslemleri.ppLabel108GetText(Sender: TObject;
  var Text: String);
begin
  Text := bkmetin(Dershane.AdiKisa,1);
end;

procedure TFrSonucBildirimIslemleri.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  Text := Dershane.Adresi + ' ' + Dershane.Il + '   Tel: '+Dershane.Tel + '   Faks: ' + Dershane.Faks;
end;

end.
