unit ogrenci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZConnection, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Mask, ExtCtrls, ComCtrls, TabNotBk, Grids,
  DBGrids, Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCalendar, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxDBExtLookupComboBox, cxRadioGroup, cxMemo,
  cxLabel, cxDBLabel, cxGroupBox, cxHint, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxCheckBox, cxImage, cxNavigator,
  cxDBNavigator, ImgList, ZSqlUpdate, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppBands, ppReport, ppStrtch, ppSubRpt, ppModule, raCodMod,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppParameter, ppProd, jpeg,
  ppMemo, ppRichTx, Menus, cxPC, cxLookAndFeels, cxLookAndFeelPainters,
  cxButtons, ZSqlMonitor, ppjpeg, ZDbcIntfs;
type
  Tfr_ogrenci = class(TForm)
    tablo_ogrenci: TZQuery;
    ara_ogrenci: TDataSource;
    tablo_veli: TZQuery;
    tablo_oku: TZReadOnlyQuery;
    ara_taksitler: TDataSource;
    tablo_odeme_durumu: TZQuery;
    ara_odeme_durumu: TDataSource;
    tablo_odeme_durumuislem_no: TIntegerField;
    tablo_odeme_durumutarih: TDateField;
    tablo_odeme_durumuilgilihesap: TStringField;
    tablo_odeme_durumuaciklama: TStringField;
    ara_veli: TDataSource;
    tablo_kayit_bedeli: TZQuery;
    tablo_kayit_bedeliogr_no: TIntegerField;
    ara_kayit_bedeli: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    tx_ogr_no: TcxDBTextEdit;
    tx_adi: TcxDBTextEdit;
    tx_soyadi: TcxDBTextEdit;
    tx_donemi: TcxDBComboBox;
    Panel1: TPanel;
    Label39: TcxLabel;
    Panel3: TPanel;
    mn_odeme_durumu: TcxGridPopupMenu;
    tablo_kayit_bedelidonemi: TStringField;
    tablo_odeme_durumuilgili_no: TIntegerField;
    tablo_odeme_durumuislem_tarihi: TDateTimeField;
    tablo_odeme_durumudonemi: TStringField;
    tablo_evrak_durumu: TZQuery;
    tablo_evrak_durumuevrak_adi: TStringField;
    tablo_evrak_durumuevrak_durum: TIntegerField;
    tablo_evrak_durumudonemi: TStringField;
    tablo_evrak_durumuogr_no: TIntegerField;
    ara_evrak_durumu: TDataSource;
    tablo_ogrenciogr_no: TIntegerField;
    tablo_ogrenciadi: TStringField;
    tablo_ogrencisoyadi: TStringField;
    tablo_ogrencicinsiyeti: TStringField;
    tablo_ogrenciresmi: TBlobField;
    tablo_ogrencitc_kimlik_no: TStringField;
    tablo_ogrencikayit_tarihi: TDateField;
    tablo_ogrenciokulu: TStringField;
    tablo_ogrencisinifi: TStringField;
    tablo_ogrencidurumu: TStringField;
    tablo_ogrencibaba_adi: TStringField;
    tablo_ogrenciana_adi: TStringField;
    tablo_ogrencidogum_yeri: TStringField;
    tablo_ogrencidogum_tarihi: TDateField;
    tablo_ogrenciili: TStringField;
    tablo_ogrenciilcesi: TStringField;
    tablo_ogrencimahallesi_koyu: TStringField;
    tablo_ogrencicilt_no: TStringField;
    tablo_ogrenciaile_sira_no: TStringField;
    tablo_ogrencisira_no: TStringField;
    tablo_ogrenciverildigi_yer: TStringField;
    tablo_ogrenciverilis_nedeni: TStringField;
    tablo_ogrencikayit_no: TStringField;
    tablo_ogrenciverilis_tarihi: TDateField;
    tablo_ogrenciveli_kodu: TIntegerField;
    tablo_ogrenciyakinligi: TStringField;
    tablo_ogrencidonemi: TStringField;
    ogr_res: TcxDBImage;
    DBNavigator1: TDBNavigator;
    tablo_kayit_bedelikayit_bedeli: TFloatField;
    tablo_odeme_durumualinan: TFloatField;
    tablo_odeme_durumuverilen: TFloatField;
    tablo_veliadresi: TStringField;
    tablo_veliposta_kodu: TStringField;
    tablo_veliev_telefonu: TStringField;
    tablo_veligsm: TStringField;
    tablo_veliis_telefonu: TStringField;
    tablo_velifax: TStringField;
    tablo_veliemail: TStringField;
    tablo_velimeslegi: TStringField;
    tablo_velicalistigi_yer: TStringField;
    tablo_veliveli_kodu: TAutoIncField;
    tablo_veliveli_adi: TStringField;
    tablo_veliveli_soyadi: TStringField;
    tablo_veliadres_ili: TStringField;
    tablo_veliadres_ilcesi: TStringField;
    tablo_geciken_borc_bildirimi: TZQuery;
    ara_geciken_borc_bildirimi: TDataSource;
    up_taksitler: TZUpdateSQL;
    tablo_geciken_borc_bildirimiid: TLargeintField;
    tablo_geciken_borc_bildirimidonemi: TStringField;
    tablo_geciken_borc_bildirimiogr_no: TIntegerField;
    tablo_geciken_borc_bildirimikontrol_tarihi: TDateField;
    tablo_geciken_borc_bildirimigeciken_borc_miktari: TFloatField;
    tablo_geciken_borc_bildirimibildirim_tarihi: TDateTimeField;
    tablo_geciken_borc_bildirimikiminle_gorusuldu: TStringField;
    tablo_geciken_borc_bildirimiaciklama: TStringField;
    tablo_geciken_borc_bildirimikullanici: TStringField;
    tablo_geciken_borc_bildirimiaktif: TIntegerField;
    tablo_taksitler: TZQuery;
    tablo_taksitlerogr_no: TIntegerField;
    tablo_taksitlervadesi: TDateField;
    tablo_taksitlermiktari: TFloatField;
    tablo_taksitlerdonemi: TStringField;
    boyama: TcxStyleRepository;
    gecersiz: TcxStyle;
    gecerli: TcxStyle;
    pp_ogrenci: TppDBPipeline;
    pp_veli: TppDBPipeline;
    rp_kayitkarti: TppReport;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    ppImage1: TppImage;
    ppLabel28: TppLabel;
    ppLabel47: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBImage1: TppDBImage;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppDBText16: TppDBText;
    ppLabel18: TppLabel;
    ppDBText17: TppDBText;
    ppLabel19: TppLabel;
    ppDBText18: TppDBText;
    ppLabel20: TppLabel;
    ppDBText19: TppDBText;
    ppLabel21: TppLabel;
    ppDBText20: TppDBText;
    ppLabel22: TppLabel;
    ppDBText21: TppDBText;
    ppLabel23: TppLabel;
    ppDBText22: TppDBText;
    ppLabel24: TppLabel;
    ppDBText24: TppDBText;
    ppLabel26: TppLabel;
    ppDBText25: TppDBText;
    ppLabel27: TppLabel;
    rp_veli: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText26: TppDBText;
    ppLabel29: TppLabel;
    ppDBText27: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText29: TppDBText;
    ppLabel32: TppLabel;
    ppDBText30: TppDBText;
    ppLabel33: TppLabel;
    ppDBText31: TppDBText;
    ppLabel34: TppLabel;
    ppDBText32: TppDBText;
    ppLabel35: TppLabel;
    ppDBText33: TppDBText;
    ppLabel36: TppLabel;
    ppDBText34: TppDBText;
    ppLabel37: TppLabel;
    ppDBText35: TppDBText;
    ppLabel38: TppLabel;
    ppDBText36: TppDBText;
    ppLabel39: TppLabel;
    ppDBText37: TppDBText;
    ppLabel40: TppLabel;
    ppDBText38: TppDBText;
    ppLabel41: TppLabel;
    ppDBText39: TppDBText;
    ppLabel42: TppLabel;
    ppDBText40: TppDBText;
    ppLabel43: TppLabel;
    ppDBText41: TppDBText;
    ppLabel44: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    rp_taksit: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel25: TppLabel;
    ppDBText23: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel6: TppLabel;
    ppLabel48: TppLabel;
    ppShape2: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine1: TppLine;
    ppLabel54: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppRichText1: TppRichText;
    ppMemo1: TppMemo;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    tablo_ogrencigrup1: TStringField;
    tablo_ogrencigrup2: TStringField;
    tablo_ogrencigrup3: TStringField;
    ppShape6: TppShape;
    rp_ogrencibelgesi: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppBelgeBir: TppRichText;
    ppBelgeIki: TppRichText;
    mn_yazdir: TPopupMenu;
    mn_kayitkarti: TMenuItem;
    mn_ogrencibelgesi: TMenuItem;
    tablo_grup1: TZQuery;
    tablo_grup1id: TLargeintField;
    tablo_grup1seviye: TIntegerField;
    tablo_grup1adi: TStringField;
    tablo_grup1ustgrup: TLargeintField;
    ara_grup1: TDataSource;
    tablo_grup2: TZQuery;
    tablo_grup2id: TLargeintField;
    tablo_grup2seviye: TIntegerField;
    tablo_grup2adi: TStringField;
    tablo_grup2ustgrup: TLargeintField;
    ara_grup2: TDataSource;
    ara_grup3: TDataSource;
    tablo_grup3: TZQuery;
    tablo_grup3id: TLargeintField;
    tablo_grup3seviye: TIntegerField;
    tablo_grup3adi: TStringField;
    tablo_grup3ustgrup: TLargeintField;
    tablo_sinifi: TZQuery;
    sinif: TStringField;
    ara_sinifi: TDataSource;
    tx_sinifi: TcxDBLookupComboBox;
    tablo_sinifigrup1: TStringField;
    tablo_sinifigrup2: TStringField;
    tablo_sinifigrup3: TStringField;
    tablo_velisms_bildirim: TStringField;
    tablo_velifax_bildirim: TStringField;
    tablo_veliemail_bildirim: TStringField;
    sc_text: TcxEditStyleController;
    sayfalar: TcxPageControl;
    sayfalar_bilgileri: TcxTabSheet;
    sayfalar_taksit: TcxTabSheet;
    GroupBox6: TGroupBox;
    gr_taksitler: TcxGrid;
    taksitler: TcxGridDBTableView;
    taksitlervadesi: TcxGridDBColumn;
    taksitlermiktari: TcxGridDBColumn;
    gr_taksitlerLevel1: TcxGridLevel;
    Panel8: TPanel;
    gr_notlar: TcxGrid;
    notlar: TcxGridDBTableView;
    notlaraktif: TcxGridDBColumn;
    notlaraciklama: TcxGridDBColumn;
    notlarkontrol_tarihi: TcxGridDBColumn;
    notlarbildirim_tarihi: TcxGridDBColumn;
    notlarkiminle_gorusuldu: TcxGridDBColumn;
    notlarkullanici: TcxGridDBColumn;
    gr_notlarLevel1: TcxGridLevel;
    Panel10: TPanel;
    lb_geciken_kalan: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Panel7: TPanel;
    tx_vadesi: TcxDateEdit;
    tx_miktari: TcxTextEdit;
    Label43: TcxLabel;
    tx_kayit_bedeli: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    sayfalar_odeme_durumu: TcxTabSheet;
    GroupBox7: TGroupBox;
    gr_odeme_durumu: TcxGrid;
    para_akisi: TcxGridDBTableView;
    para_akisiislem_no: TcxGridDBColumn;
    para_akisitarih: TcxGridDBColumn;
    para_akisiilgilihesap: TcxGridDBColumn;
    para_akisialinan: TcxGridDBColumn;
    para_akisiverilen: TcxGridDBColumn;
    para_akisiaciklama: TcxGridDBColumn;
    para_akisiilgili_no: TcxGridDBColumn;
    para_akisiislem_tarihi: TcxGridDBColumn;
    para_akisidonemi: TcxGridDBColumn;
    gr_odeme_durumuLevel1: TcxGridLevel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label42: TcxLabel;
    Label40: TcxLabel;
    Panel6: TPanel;
    lb_geciken_borc_yazi: TcxLabel;
    lb_kalan_borc_yazi: TcxLabel;
    sayfalar_evrak_durumu: TcxTabSheet;
    gr_evrak_durumu: TcxGrid;
    evrak_durumu: TcxGridDBTableView;
    evrak_durumuogr_no: TcxGridDBColumn;
    evrak_durumudonemi: TcxGridDBColumn;
    evrak_durumuevrak_adi: TcxGridDBColumn;
    evrak_durumuevrak_durum: TcxGridDBColumn;
    level1evrak_durumu: TcxGridLevel;
    GroupBox8: TGroupBox;
    bilgi_sayfalari: TcxPageControl;
    bilgi_sayfalari_genel: TcxTabSheet;
    bilgi_sayfalari_ayrintili: TcxTabSheet;
    Label6: TcxLabel;
    tx_tc_kimlik_no: TcxDBTextEdit;
    Label8: TcxLabel;
    tx_kayit_tarihi: TcxDBDateEdit;
    tx_okulu: TcxDBComboBox;
    Label9: TcxLabel;
    Label10: TcxLabel;
    tx_durumu: TcxDBComboBox;
    tx_baba_adi: TcxDBTextEdit;
    Label11: TcxLabel;
    Label12: TcxLabel;
    tx_ana_adi: TcxDBTextEdit;
    tx_dogum_yeri: TcxDBTextEdit;
    Label13: TcxLabel;
    Label14: TcxLabel;
    tx_dogum_tarihi: TcxDBDateEdit;
    Label31: TcxLabel;
    Label33: TcxLabel;
    tx_cilt_no: TcxDBTextEdit;
    tx_aile_sira_no: TcxDBTextEdit;
    tx_sira_no: TcxDBTextEdit;
    Label34: TcxLabel;
    tx_ili: TcxDBTextEdit;
    Label15: TcxLabel;
    tx_ilcesi: TcxDBTextEdit;
    tx_mahellesi_koyu: TcxDBTextEdit;
    tx_verildigi_yer: TcxDBTextEdit;
    tx_verilis_nedeni: TcxDBComboBox;
    tx_kayit_no: TcxDBTextEdit;
    tx_verilis_tarihi: TcxDBDateEdit;
    Label38: TcxLabel;
    Label37: TcxLabel;
    Label36: TcxLabel;
    Label35: TcxLabel;
    Label17: TcxLabel;
    Label16: TcxLabel;
    veli_sayfalari: TcxPageControl;
    veli_sayfalari_genel: TcxTabSheet;
    veli_sayfalari_ayrintilar: TcxTabSheet;
    tx_yakinligi: TcxDBComboBox;
    Label32: TcxLabel;
    tx_veli_adi: TcxDBTextEdit;
    Label18: TcxLabel;
    tx_veli_soyadi: TcxDBTextEdit;
    Label19: TcxLabel;
    tx_adresi: TcxDBMemo;
    Label20: TcxLabel;
    tx_veli_ilcesi: TcxDBTextEdit;
    Label22: TcxLabel;
    tx_veli_ili: TcxDBTextEdit;
    Label21: TcxLabel;
    Label23: TcxLabel;
    Label28: TcxLabel;
    tx_email: TcxDBTextEdit;
    tx_posta_kodu: TcxDBTextEdit;
    tx_meslegi: TcxDBComboBox;
    Label29: TcxLabel;
    Label30: TcxLabel;
    tx_calistigi_yer: TcxDBTextEdit;
    Label25: TcxLabel;
    tx_gsm: TcxDBMaskEdit;
    tx_fax: TcxDBMaskEdit;
    Label27: TcxLabel;
    Label24: TcxLabel;
    tx_ev_telefonu: TcxDBMaskEdit;
    tx_is_telefonu: TcxDBMaskEdit;
    Label26: TcxLabel;
    tx_cinsiyeti: TcxDBRadioGroup;
    tx_grubu1: TcxDBLookupComboBox;
    tx_grubu2: TcxDBLookupComboBox;
    tx_grubu3: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    ck_bsms: TcxDBCheckBox;
    ck_bemail: TcxDBCheckBox;
    ck_bfax: TcxDBCheckBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    lb_geciken_borc: TcxLabel;
    lb_kalan_borc: TcxLabel;
    bt_yazdir: TcxButton;
    bt_bos_ogr_no_soyle: TcxButton;
    bt_ogrenci_bul: TcxButton;
    bt_evraklari_ekle: TcxButton;
    bt_geciken_borc: TcxButton;
    bt_ekle: TcxButton;
    bt_sil: TcxButton;
    bt_odeme_islemi: TcxButton;
    bt_yeni_veli: TcxButton;
    bt_veli_iptal: TcxButton;
    bt_veli_sec: TcxButton;
    tx_danisman: TcxLabel;
    tablo_ogrenciegitim_suresi: TStringField;
    cxLabel10: TcxLabel;
    tx_egitim_suresi: TcxDBComboBox;
    ppImage3: TppImage;
    ppDBTaksitler: TppDBPipeline;
    ppSRTaksitListe: TppSubReport;
    ppCRTaksitListe: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText42: TppDBText;
    ppTxKayitBedeli: TppDBText;
    ppDBKayitBedeli: TppDBPipeline;
    ppLine14: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel67: TppLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    tablo_ogrencikayit_eden: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure tx_miktariKeyPress(Sender: TObject; var Key: Char);
    procedure bt_ekleClick(Sender: TObject);
    procedure bt_silClick(Sender: TObject);
    procedure tx_adiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_veli_adiEditing(Sender: TObject; var CanEdit: Boolean);
    procedure bt_veli_secClick(Sender: TObject);
    procedure tablo_ogrenciBeforePost(DataSet: TDataSet);
    procedure bt_yeni_veliClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_odeme_islemiClick(Sender: TObject);
    procedure bt_evraklari_ekleClick(Sender: TObject);
    procedure tablo_ogrenciBeforeDelete(DataSet: TDataSet);
    procedure tx_soyadiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_okuluKeyPress(Sender: TObject; var Key: Char);
    procedure bt_veli_iptalClick(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure tablo_ogrenciAfterPost(DataSet: TDataSet);
    procedure tx_miktariKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tx_kayit_bedeliKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tablo_ogrenciAfterDelete(DataSet: TDataSet);
    procedure tx_adresiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_veli_iliKeyPress(Sender: TObject; var Key: Char);
    procedure tablo_ogrenciAfterInsert(DataSet: TDataSet);
    procedure tablo_veliAfterInsert(DataSet: TDataSet);
    procedure tablo_veliAfterEdit(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tablo_geciken_borc_bildirimiBeforePost(DataSet: TDataSet);
    procedure tablo_geciken_borc_bildirimiAfterInsert(DataSet: TDataSet);
    procedure tablo_taksitlerAfterOpen(DataSet: TDataSet);
    procedure bt_geciken_borcClick(Sender: TObject);
    procedure notlarStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure ppDBText39GetText(Sender: TObject; var Text: string);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ppLabel64GetText(Sender: TObject; var Text: string);
    procedure ppLabel65GetText(Sender: TObject; var Text: string);
    procedure ppLabel66GetText(Sender: TObject; var Text: string);
    procedure ppLabel47GetText(Sender: TObject; var Text: string);
    procedure ppLabel54GetText(Sender: TObject; var Text: string);
    procedure tx_grubu1KeyPress(Sender: TObject; var Key: Char);
    procedure mn_kayitkartiClick(Sender: TObject);
    procedure mn_ogrencibelgesiClick(Sender: TObject);
    procedure tx_grubu1PropertiesChange(Sender: TObject);
    procedure tx_grubu2PropertiesChange(Sender: TObject);
    procedure tx_grubu3PropertiesChange(Sender: TObject);
    procedure sayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure tx_grubu2KeyPress(Sender: TObject; var Key: Char);
    procedure tx_grubu3KeyPress(Sender: TObject; var Key: Char);
    procedure tx_gsmExit(Sender: TObject);
    procedure tx_faxExit(Sender: TObject);
    procedure tx_ev_telefonuEnter(Sender: TObject);
    procedure tx_is_telefonuEnter(Sender: TObject);
    procedure kayitgez(ileri: boolean);
    procedure tx_sinifiKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_bos_ogr_no_soyleClick(Sender: TObject);
    procedure bt_ogrenci_bulClick(Sender: TObject);
    procedure taksitlerEditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure tx_emailExit(Sender: TObject);
    procedure tx_kayit_bedeliEditing(Sender: TObject;
      var CanEdit: Boolean);
    procedure tx_tc_kimlik_noExit(Sender: TObject);
    procedure SabitleriYukle;
    procedure KayitGoster;
    procedure ppImage1Print(Sender: TObject);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure ppLabel67GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    SabitlerYuklendi: boolean;
  public
    { Public declarations }
  end;

var
  fr_ogrenci: Tfr_ogrenci;

implementation

uses un_veli_sec, ogrenci_arama, veritabani, functionlar,
  gelir_gider_girisi, BosNumaralar, un_geciken_borc_bildirimi,
  DateUtils;

{$R *.dfm}

procedure Tfr_ogrenci.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_ogrenci.FormCreate(Sender: TObject);
begin
  SOgr.KayitVar := false;
  bt_ogrenci_bulClick(bt_ogrenci_bul);
  if SOgr.Iptal = true then Close;
end;

procedure Tfr_ogrenci.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  case Button of
    nbEdit:
      begin
        tx_ogr_no.Properties.ReadOnly := True;
        tx_donemi.Properties.ReadOnly := True;
      end;
    nbInsert:
      begin
        tx_ogr_no.Properties.ReadOnly := False;
        tx_donemi.Properties.ReadOnly := False;
        tablo_veli.Insert;
        tablo_evrak_durumu.close;
        tablo_odeme_durumu.close;
        tablo_taksitler.close;
        tablo_geciken_borc_bildirimi.close;
        tablo_ogrenci.FieldByName('donemi').Text := AktifDonem;
        tx_ogr_no.SetFocus;
      end;
    nbCancel:
      begin
        tx_ogr_no.Properties.ReadOnly := True;
        tx_donemi.Properties.ReadOnly := True;
        tablo_veli.Cancel;
        tablo_kayit_bedeli.Cancel;
      end;
  end;
end;

procedure Tfr_ogrenci.tx_miktariKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #44 then exit;
  if Key = #8 then exit;
  if (Key < #48) or (Key > #57) then
  begin
    Key := chr(256);
    Exit;
  end;
end;

procedure Tfr_ogrenci.bt_ekleClick(Sender: TObject);
begin
  if tablo_ogrenci.State = dsInsert then
  begin
    messagedlg('Þu anda bir öðrenciye ait bilgi giriyorsunuz. Öncelikle bu iþlemi kaydedin!', mtError, [mbOk], 0);
    sysutils.Abort;
    exit;
  end;
  if (tx_vadesi.Text = '') or (strtofloat(metindensil('.', tx_miktari.Text)) <= 0) then
  begin
    messagedlg('Taksit vadesi yada miktarý yanlýþ!', mtError, [mbOk], 0);
    tx_vadesi.SetFocus;
    Exit;
  end;
  tablo_taksitler.Insert;
//  tablo_taksitler.Append;
  tablo_taksitlerdonemi.Text := tablo_ogrenci.fieldbyname('donemi').Text;
  tablo_taksitlerogr_no.AsInteger := tablo_ogrenci.fieldbyname('ogr_no').asinteger;
  tablo_taksitlervadesi.AsDateTime := strtodate(tx_vadesi.text);
  tablo_taksitlermiktari.AsFloat := strtofloat(metindensil('.', tx_miktari.Text));
  tablo_taksitler.Post;
//  tablo_taksitler.Refresh;
  tx_vadesi.Date := IncMonth(tx_vadesi.Date);
  if (tablo_ogrenci.State <> dsEdit) and (tablo_ogrenci.State <> dsInsert) then
    tablo_ogrenci.Edit;
  tx_vadesi.SetFocus;
end;

procedure Tfr_ogrenci.bt_silClick(Sender: TObject);
begin
  if taksitler.Controller.SelectedRecordCount < 1 then
  begin
    messagedlg('Silicenek kayýt yok!', mtError, [mbOk], 0);
    exit;
  end;
  if messagedlg('Bu taksit kaydýný silmek istiyor musunuz?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    tablo_taksitler.Delete;
//    tablo_taksitler.Refresh;
    if (tablo_ogrenci.State <> dsEdit) and (tablo_ogrenci.State <> dsInsert) then
      tablo_ogrenci.Edit;
  end;
end;

procedure Tfr_ogrenci.tx_adiKeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TcxDBTextEdit do
    if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
      Key := bkharf(Key, true)
    else
      Key := bkharf(Key, false);
end;

procedure Tfr_ogrenci.tx_veli_adiEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  if (tablo_veli.RecordCount < 1) and (tablo_veli.State <> dsInsert) then
  begin
    messagedlg('Bu öðrenci için daha önce veli bilgisi girilmemiþ.' + chr(13) + 'Yeni Veli yada Veli Seç düðmesini kullanýnýz!', mtError, [mbOk], 0);
    CanEdit := False;
    Exit;
  end;
  tablo_ogrenci.Edit;
end;

procedure Tfr_ogrenci.bt_veli_secClick(Sender: TObject);
begin
  application.CreateForm(Tfr_veli_sec, fr_veli_sec);
  fr_veli_sec.ShowModal;
  if SVeli.Iptal = true then Exit;
  tablo_ogrenci.Edit;
  if tablo_veli.State in [dsInsert, dsEdit] then tablo_veli.Cancel;
  tablo_ogrenci.FieldByName('veli_kodu').AsInteger := SVeli.VeliKodu;
  tablo_veli.Close;
  tablo_veli.Params[0].AsInteger := SVeli.VeliKodu;
  tablo_veli.Open;
end;

procedure Tfr_ogrenci.tablo_ogrenciBeforePost(DataSet: TDataSet);
begin
  if tablo_ogrenci.FieldByName('ogr_no').AsInteger < 10 then
    raise Exception.Create('Öðrenci numarasý 10'' dan küçük olamaz!');
  if tablo_veli.State = dsEdit then tablo_veli.Post;
  if (tablo_veli.State = dsInsert) and (tx_veli_adi.Text <> '') then
  begin
    tablo_veli.Post;
    tablo_ogrenci.FieldByName('veli_kodu').AsString := tablo_veli.fieldbyname('veli_kodu').Text;
  end
  else
    tablo_veli.Cancel;
  try
    if tablo_kayit_bedeli.State in [dsInsert] then
      if (tx_kayit_bedeli.Text = '') or (tx_kayit_bedeli.Text = '0') then
        tablo_kayit_bedeli.Cancel
      else
        tablo_kayit_bedeli.Post
    else if tablo_kayit_bedeli.State in [dsEdit] then
      tablo_kayit_bedeli.Post;
  except
    on E:EZDatabaseError do
      if pos('UPDATE command denied to user',E.Message) > 0 then
        raise Exception.Create('Kayýt bedelini deðiþtirmeye yetkiniz yok!');
  end;
  if tablo_evrak_durumu.State in [dsEdit, dsInsert] then
    tablo_evrak_durumu.Post;
  if tablo_taksitler.UpdatesPending = true then
  begin
    tablo_taksitler.ApplyUpdates;
    tablo_taksitler.CommitUpdates;
  end;
  tx_gsmExit(tx_gsm);
  tx_faxExit(tx_fax);
  tx_emailExit(tx_email);
  if (tablo_ogrenci.state = dsEdit) and (not tablo_ogrencisinifi.IsNull) and
    (varisnull(tablo_sinifi.Lookup('sinif', vararrayof([tx_sinifi.Text]), 'sinif'))) then
  begin
    MessageDlg('Öðrencinin sýnýfý ile grubu uyumsuz!'#13#10'Lütfen düzeltiniz yada sýnýfýný silmek için Del tuþunu kullanýnýz.', mtWarning, [mbOK], 0);
    tx_sinifi.SetFocus;
    SysUtils.Abort;
    exit;
  end;
{ resim küçültme çalýþmalarý (resim sýkýþtýrma baþlýðýnda)

var
  ARect: TRect;
  oran: real;

   if (not tablo_ogrenciresmi.IsNull) and (ogr_res.EditModified) then
   begin
     oran := ogr_res.Picture.Width / 320;
     if oran < ogr_res.Picture.Height/240 then
       oran := ogr_res.Picture.Height/240;
     ARect := Rect(0, 0, Round(ogr_res.Picture.Width/oran), Round(ogr_res.Picture.Height/oran));
     ogr_res.Picture.Bitmap.Canvas.StretchDraw(ARect, ogr_res.Picture.Graphic);
     ogr_res.CopyToClipboard;
   end;
}
end;

procedure Tfr_ogrenci.bt_yeni_veliClick(Sender: TObject);
begin
  if tablo_veli.State = dsInsert then
  begin
    messagedlg('Zaten yeni bir veli kaydý!', mtError, [mbOk], 0);
    Exit;
  end;
  if tablo_ogrenci.State <> dsEdit then tablo_ogrenci.Edit;
  tablo_veli.Insert;
  tx_veli_adi.SetFocus;
end;

procedure Tfr_ogrenci.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tablo_ogrenci.State in [dsInsert, dsEdit] then
    case messagedlg('Yaptýðýnýz deðiþiklikleri kaydetmek istiyor musunuz?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: tablo_ogrenci.Post;
      mrCancel: CanClose := False;
    end;
end;

procedure Tfr_ogrenci.bt_odeme_islemiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_gelir_gider_girisi, fr_gelir_gider_girisi);
  fr_gelir_gider_girisi.tx_ilgili_no.Text := tx_ogr_no.Text;
  fr_gelir_gider_girisi.tx_donemi.Text := tx_donemi.Text;
  fr_gelir_gider_girisi.tx_adi_soyadi.Text := tx_adi.Text + ' ' + tx_soyadi.Text;
  fr_gelir_gider_girisi.tx_aciklama.Text := 'Taksit Ödeme';
  fr_gelir_gider_girisi.tx_alinan.SetFocus;
end;

procedure Tfr_ogrenci.bt_evraklari_ekleClick(Sender: TObject);
begin
  if tablo_ogrenci.State = dsInsert then
  begin
    messagedlg('Þu anda bir öðrenci kaydý giriyorsunuz. Öncelikle bu iþlemi kaydedin!', mtError, [mbOk], 0);
    sysutils.Abort;
    exit;
  end;
  tablo_oku.close;
  tablo_oku.sql.clear;
  tablo_oku.sql.Add('select evrak_adi FROM gerekli_evraklar');
  tablo_oku.open;
  while tablo_oku.Eof = False do
  begin
    if tablo_evrak_durumu.Lookup('evrak_adi', tablo_oku.FieldByName('evrak_adi').AsString, 'evrak_adi') = null then
      tablo_evrak_durumu.AppendRecord([strtoint(tx_ogr_no.Text), tx_donemi.Text, tablo_oku.FieldByName('evrak_adi').AsString, 0]);
    tablo_oku.Next;
  end;
end;

procedure Tfr_ogrenci.tablo_ogrenciBeforeDelete(DataSet: TDataSet);
var
  gun, ay, yil: word;
  kod: string;
begin
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from kayitbedeli where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from devamsizliklar where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from evrak_durumu where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from geciken_borc_bildirimi where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from rehberlik_notlari where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from sinavsonuc where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from taksitler where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from geciken_borc_bildirimi where donemi=''' + tablo_ogrencidonemi.Text + ''' and ogr_no=' + tablo_ogrenciogr_no.Text);
  tablo_oku.ExecSQL;
  decodedate(now, yil, ay, gun);
  kod := inttostr(gun) + inttostr(ay) + copy(inttostr(yil), 3, 2);
  decodetime(time, ay, gun, yil, ay);
  kod := kod + inttostr(yil) + copy(inttostr(gun), 2, 1);
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('update paraakisi set donemi=''' + kod + ''' where ilgili_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('update gizli set donemi=''' + kod + ''' where ogr_no=' + tablo_ogrenci.fieldbyname('ogr_no').AsString + ' and donemi=''' + tablo_ogrenci.fieldbyname('donemi').AsString + '''');
  tablo_oku.ExecSQL;
end;

procedure Tfr_ogrenci.tx_soyadiKeyPress(Sender: TObject; var Key: Char);
begin
  Key := bkharf(Key, true);
end;

procedure Tfr_ogrenci.tx_okuluKeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TcxDBComboBox do
    if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
      Key := bkharf(Key, true)
    else
      Key := bkharf(Key, false);
end;

procedure Tfr_ogrenci.bt_veli_iptalClick(Sender: TObject);
begin
  if tablo_ogrenci.RecordCount < 1 then exit;
  tablo_ogrenci.Edit;
  tablo_ogrenci.FieldByName('veli_kodu').Clear;
  tablo_veli.close;
end;

procedure Tfr_ogrenci.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbRefresh) and (tablo_ogrenci.State in [dsEdit, dsInsert]) then
    case messagedlg('Yaptýðýnýz deðiþiklikleri kaydetmek istiyor musunuz?', mtConfirmation, [mbYes, mbNo], 0) of
      mrYes:
        begin
          if strtoint(tx_ogr_no.Text) < 10 then
          begin
            messagedlg('Öðrenci numarasý geçersiz!', mtError, [mbOK], 0);
            SysUtils.Abort;
            exit;
          end;
          if tx_donemi.Text = '' then
          begin
            messagedlg('Öðrencinin dönemi geçersiz!', mtError, [mbOK], 0);
            SysUtils.Abort;
            exit;
          end;
          tablo_ogrenci.Post;
        end;
      mrNo:
        begin
          tablo_veli.cancel;
          tablo_evrak_durumu.cancel;
          tablo_kayit_bedeli.Cancel;
          tablo_taksitler.CancelUpdates;
//      tablo_taksitler.Refresh;
          tablo_ogrenci.cancel;
        end;
    end;
  if Button = nbCancel then
  begin
    if tablo_veli.State in [dsEdit, dsInsert] then tablo_veli.Cancel;
    if tablo_evrak_durumu.State in [dsEdit, dsInsert] then tablo_evrak_durumu.Cancel;
    if tablo_kayit_bedeli.State in [dsEdit, dsInsert] then tablo_kayit_bedeli.Cancel;
    tablo_taksitler.CancelUpdates;
//    tablo_taksitler.Refresh;
  end;
  if Button = nbPost then
  begin
    if (length(trim(tx_ogr_no.Text)) = 0) or (strtoint(tx_ogr_no.Text) < 10) then
    begin
      messagedlg('Öðrenci numarasý geçersiz!', mtError, [mbOK], 0);
      tx_ogr_no.SetFocus;
      SysUtils.Abort;
      exit;
    end;
    if tx_donemi.Text = '' then
    begin
      messagedlg('Öðrencinin dönemi geçersiz!', mtError, [mbOK], 0);
      tx_donemi.SetFocus;
      SysUtils.Abort;
      exit;
    end;
    if ((tablo_grup1.RecordCount > 0) and (tx_grubu1.Text = ''))
      or ((tablo_grup2.RecordCount > 0) and (tx_grubu2.Text = ''))
      or ((tablo_grup3.RecordCount > 0) and (tx_grubu3.Text = '')) then
    begin
      MessageDlg('Lütfen öðrencinin grubunu seçiniz!', mtWarning, [mbOK], 0);
      tx_grubu1.SetFocus;
      SysUtils.Abort;
      exit;
    end;
    if (tablo_ogrenci.state in [dsEdit,dsInsert]) and (not tablo_ogrencisinifi.IsNull) and
      (varisnull(tablo_sinifi.Lookup('sinif', vararrayof([tx_sinifi.Text]), 'sinif'))) then
    begin
      MessageDlg('Öðrencinin sýnýfý ile grubu uyumsuz!'#13#10'Lütfen düzeltiniz yada sýnýfýný silmek için Del tuþunu kullanýnýz.', mtWarning, [mbOK], 0);
      tx_sinifi.SetFocus;
      SysUtils.Abort;
      exit;
    end;
    if (sayfalar.ActivePage = sayfalar_bilgileri) and (tablo_ogrencisinifi.IsNull) then
      MessageDlg('Öðrencinin sýnýfýný boþ býraktýnýz.', mtInformation, [mbOK], 0);
  end;
  if Button = nbInsert then
  begin
    sayfalar_bilgileri.Show;
  end;
  if Button = nbNext then
  begin
    kayitgez(true);
    SysUtils.Abort;
  end;
  if Button = nbPrior then
  begin
    kayitgez(false);
    SysUtils.Abort;
  end;
end;

procedure Tfr_ogrenci.tablo_ogrenciAfterPost(DataSet: TDataSet);
begin
  tx_ogr_no.Properties.ReadOnly := True;
  tx_donemi.Properties.ReadOnly := True;
  SOgr.KayitGoster := true;
  SOgr.Donem := tx_donemi.Text;
  SOgr.OgrNo := strtoint(tx_ogr_no.text);
  bt_ogrenci_bulClick(bt_ogrenci_bul);
end;

procedure Tfr_ogrenci.tx_miktariKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i, u: integer;
begin
  if Key = VK_ADD then tx_miktari.EditingText := tx_miktari.EditingText + '000';
  if Key in [96..105, 8, 46, VK_ADD] then
  begin
    if length(tx_miktari.EditingText) < 4 then exit;
    if copy(tx_miktari.EditingText, length(tx_miktari.EditingText), 1) = ',' then exit;
    if copy(tx_miktari.EditingText, length(tx_miktari.EditingText) - 1, 2) = ',0' then exit;
    i := tx_miktari.SelStart;
    u := length(tx_miktari.Text);
    tx_miktari.EditingText := formatfloat('0,.##', strtofloat(metindensil('.', tx_miktari.EditingText)));
    if i <> u then
    begin
      if u > length(tx_miktari.EditingText) then i := i - 1;
      if u < length(tx_miktari.EditingText) then i := i + 1;
      tx_miktari.SelStart := i;
    end
    else
      tx_miktari.SelStart := length(tx_miktari.EditingText);
  end;
end;

procedure Tfr_ogrenci.tx_kayit_bedeliKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i, u: integer;
begin
  if Key = VK_ADD then tx_kayit_bedeli.EditingText := tx_kayit_bedeli.EditingText + '000';
  if Key in [96..105, 8, 46, VK_ADD] then
  begin
    if length(tx_kayit_bedeli.EditingText) < 4 then exit;
    if copy(tx_kayit_bedeli.EditingText, length(tx_kayit_bedeli.EditingText), 1) = ',' then exit;
    if copy(tx_kayit_bedeli.EditingText, length(tx_miktari.EditingText) - 1, 2) = ',0' then exit;
    i := tx_kayit_bedeli.SelStart;
    u := length(tx_kayit_bedeli.EditingText);
    tx_kayit_bedeli.EditingText := formatfloat('0,.##', strtofloat(metindensil('.', tx_kayit_bedeli.EditingText)));
    if i <> u then
    begin
      if u > length(tx_kayit_bedeli.EditingText) then i := i - 1;
      if u < length(tx_kayit_bedeli.EditingText) then i := i + 1;
      tx_kayit_bedeli.SelStart := i;
    end
    else
      tx_kayit_bedeli.SelStart := length(tx_kayit_bedeli.EditingText);
  end;
end;

procedure Tfr_ogrenci.tablo_ogrenciAfterDelete(DataSet: TDataSet);
begin
  bt_ogrenci_bulClick(bt_ogrenci_bul);
  if SOgr.Iptal = True Then Close;
end;

procedure Tfr_ogrenci.tx_adresiKeyPress(Sender: TObject; var Key: Char);
begin
  with Sender as TcxDBMemo do
    if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
      Key := bkharf(Key, true)
    else
      Key := bkharf(Key, false);
end;

procedure Tfr_ogrenci.tx_veli_iliKeyPress(Sender: TObject; var Key: Char);
begin
  key := bkharf(key, true);
end;

procedure Tfr_ogrenci.tablo_ogrenciAfterInsert(DataSet: TDataSet);
begin
  tablo_ogrenci.FieldByName('kayit_tarihi').AsDateTime := now();
  tablo_ogrenci.FieldByName('kayit_eden').Text := kullanici_adi;
end;

procedure Tfr_ogrenci.tablo_veliAfterInsert(DataSet: TDataSet);
begin
  tablo_veliev_telefonu.Text := '(454)';
  tablo_veliis_telefonu.Text := '(454)';
end;

procedure Tfr_ogrenci.tablo_veliAfterEdit(DataSet: TDataSet);
begin
  if tablo_veliev_telefonu.Text = '' then
    tablo_veliev_telefonu.Text := '(454)';
  if tablo_veliis_telefonu.Text = '' then
    tablo_veliis_telefonu.Text := '(454)';
end;

procedure Tfr_ogrenci.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_NEXT) then
    kayitgez(true);
  if (Key = VK_PRIOR) then
    kayitgez(false);
  if Key = VK_F3 then bt_ogrenci_bul.Click;
  if Key = VK_F6 then DBNavigator1.BtnClick(nbInsert);
  if Key = VK_F2 then DBNavigator1.BtnClick(nbEdit);
  if Key = VK_F4 then DBNavigator1.BtnClick(nbPost);
  if Key = VK_F5 then DBNavigator1.BtnClick(nbRefresh);
  if Key = VK_F7 then DBNavigator1.BtnClick(nbDelete);
  if Key = VK_F8 then bt_odeme_islemi.Click;
  if Key = VK_ESCAPE then DBNavigator1.BtnClick(nbCancel);
end;

procedure Tfr_ogrenci.tablo_geciken_borc_bildirimiBeforePost(
  DataSet: TDataSet);
begin
  tablo_geciken_borc_bildirimidonemi.text := tablo_ogrencidonemi.text;
  tablo_geciken_borc_bildirimiogr_no.asinteger := tablo_ogrenciogr_no.asinteger;
  tablo_geciken_borc_bildirimigeciken_borc_miktari.AsFloat := 0;
end;

procedure Tfr_ogrenci.tablo_geciken_borc_bildirimiAfterInsert(
  DataSet: TDataSet);
begin
  tablo_geciken_borc_bildirimikontrol_tarihi.AsDateTime := now();
  tablo_geciken_borc_bildirimikullanici.Text := kullanici_adi;
  tablo_geciken_borc_bildirimiaktif.AsInteger := 1;
end;

procedure Tfr_ogrenci.tablo_taksitlerAfterOpen(DataSet: TDataSet);
begin
//  if tablo_odeme_durumu.state =dsinactive then exit;
  if tablo_ogrenci.State in [dsEdit, dsInsert] then exit;
  if (tablo_ogrenci.FieldByName('donemi').asstring = '') or (tablo_ogrenci.FieldByName('ogr_no').asstring = '') then exit;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SELECT borc(:donemi,:ogr_no),odenen(:donemi,:ogr_no,null),gecikenborc(:donemi,:ogr_no,null)');
  tablo_oku.Params[0].Asstring := tablo_ogrenci.FieldByName('donemi').asstring;
  tablo_oku.Params[1].AsInteger := tablo_ogrenci.FieldByName('ogr_no').AsInteger;
  tablo_oku.Open;
//para hesaplarý hesabý
  lb_kalan_borc.Caption := FormatFloat('0,.##', tablo_oku.Fields.Fields[0].AsFloat - tablo_oku.Fields.Fields[1].AsFloat);
  lb_kalan_borc_yazi.Caption := SayiYazi(tablo_oku.Fields.Fields[0].AsFloat - tablo_oku.Fields.Fields[1].AsFloat);
  lb_kalan_borc_yazi.Hint := lb_kalan_borc_yazi.caption;
  lb_geciken_borc.Caption := tablo_oku.Fields.Fields[2].Text;
  lb_geciken_borc_yazi.Caption := SayiYazi(tablo_oku.Fields.Fields[2].AsFloat);
  lb_geciken_borc_yazi.Hint := lb_geciken_borc_yazi.Caption;
  lb_geciken_kalan.Caption := 'Geciken: ' + lb_geciken_borc.Caption + '   Kalan: ' + lb_kalan_borc.Caption;
end;

procedure Tfr_ogrenci.bt_geciken_borcClick(Sender: TObject);
begin
  application.CreateForm(Tfr_geciken_borc_bildirimi, fr_geciken_borc_bildirimi);
  fr_geciken_borc_bildirimi.cm_don_kis.Text := tablo_ogrencidonemi.Text;
  fr_geciken_borc_bildirimi.cm_ogr_kis.ItemIndex := 1;
  fr_geciken_borc_bildirimi.cm_ogr_kisPropertiesChange(fr_geciken_borc_bildirimi.cm_ogr_kis);
  fr_geciken_borc_bildirimi.tx_ogr_bas.Text := tablo_ogrenciogr_no.Text;
  fr_geciken_borc_bildirimi.bt_gosterClick(fr_geciken_borc_bildirimi.bt_goster);
end;

procedure Tfr_ogrenci.notlarStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[0] = 1 then
    AStyle := gecerli
  else
    AStyle := gecersiz;
end;

procedure Tfr_ogrenci.ppDBText39GetText(Sender: TObject; var Text: string);
begin
  if Text = '0' then
    Text := 'Hayýr'
  else
    Text := 'Evet';
end;

procedure Tfr_ogrenci.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (CtrlDown = true) then
    case Key of
      #2: sayfalar_bilgileri.Show;
      #20: sayfalar_taksit.Show;
      #15: sayfalar_odeme_durumu.Show;
      #5: sayfalar_evrak_durumu.Show;
    end;
  if Key = #13 then
  begin
    if (ActiveControl.Parent.Name = 'tx_soyadi')
      and sayfalar_bilgileri.Showing then
      tx_tc_kimlik_no.SetFocus
    else if ActiveControl.Parent.Name = 'tx_verilis_tarihi' then
    begin
      tx_cinsiyeti.SetFocus;
      SelectNext(ActiveControl, true, true);
    end
    else if ActiveControl.Parent.Name = 'tx_cinsiyeti' then
      tx_yakinligi.SetFocus
    else if ActiveControl.Parent.Name = 'tx_miktari' then
      bt_ekle.SetFocus
    else if ActiveControl.Parent.Name = 'tx_grubu3' then
    begin
      bilgi_sayfalari_ayrintili.Show;
      tx_cilt_no.SetFocus;
    end
    else if ActiveControl.Name = 'ck_bfax' then
    begin
      veli_sayfalari_ayrintilar.Show;
      tx_adresi.SetFocus;
    end
    else if (ActiveControl.Parent.Name = 'tx_calistigi_yer')
      and (tablo_ogrenci.State in [dsEdit, dsInsert]) then
      tablo_ogrenci.Post
    else
      SelectNext(ActiveControl, true, true);
    Key := #0;
  end;
end;

procedure Tfr_ogrenci.ppLabel64GetText(Sender: TObject; var Text: string);
begin
  Text := ppDBText26.Text + ' ' + ppDBText27.Text;
end;

procedure Tfr_ogrenci.ppLabel65GetText(Sender: TObject; var Text: string);
begin
  Text := ppDBText2.Text + ' ' + ppDBText3.Text;
end;

procedure Tfr_ogrenci.ppLabel66GetText(Sender: TObject; var Text: string);
begin
  Text := Dershane.Mudur;
end;

procedure Tfr_ogrenci.ppLabel47GetText(Sender: TObject; var Text: string);
begin
  Text := pp_ogrenci.GetFieldValue('donemi') + ' Dönemi Öðrenci Kayýt Dosyasý';
end;

procedure Tfr_ogrenci.ppLabel54GetText(Sender: TObject; var Text: string);
begin
  Text := pp_ogrenci.GetFieldValue('donemi') + ' Dönemi Öðrenci Kayýt Sözleþmesi';
end;

procedure Tfr_ogrenci.tx_grubu1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := bkharf(Key, true);
end;

procedure Tfr_ogrenci.mn_kayitkartiClick(Sender: TObject);
begin
  case MessageDlg('Taksit listesini yazdýrmak istiyor musunuz?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
    mrYes:
    begin
      ppSRTaksitListe.Visible := true;
      ppTxKayitBedeli.Visible := true;
    end;
    mrNo:
    begin
      ppSRTaksitListe.Visible := false;
      ppTxKayitBedeli.Visible := false;
    end;
    mrCancel: Exit;
    mrNone: Exit;
  end;
  rp_kayitkarti.Print;
end;

procedure Tfr_ogrenci.mn_ogrencibelgesiClick(Sender: TObject);
var
  temp: string;
begin
  temp := ppBelgeBir.RichText;
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[dershanebuyuk]',bkmetin(Dershane.AdiResmi,1),[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[dershane]',Dershane.AdiResmi,[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[Sayi]',InputBox('Sayý','Belge Sayý No: ',''),[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[il]',Dershane.Il,[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[bugun]',datetostr(date),[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[AdiSoyadi]',tx_adi.Text+' '+tx_soyadi.Text,[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[BabaAdi]',tx_baba_adi.Text,[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[DogumYeriYili]',tx_dogum_yeri.Text+' '+ inttostr(yearof(tx_dogum_tarihi.date)),[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[OgrNo]',tx_ogr_no.Text,[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[Donemi]',InputBox('Dönem','Öðrenci Belgesi Dönemi: ',tx_donemi.Text),[rfReplaceAll]);
  ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[Mudur]',Dershane.Mudur,[rfReplaceAll]);
  if tablo_ogrencicinsiyeti.Text = 'Kýz' then
    ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[cinsiyet]','kýzý',[rfReplaceAll])
  else
    ppBelgeBir.RichText := StringReplace(ppBelgeBir.RichText,'[cinsiyet]','oðlu',[rfReplaceAll]);
  ppBelgeIki.RichText := ppBelgeBir.RichText;
  rp_ogrencibelgesi.Print;
  ppBelgeBir.RichText := temp;
  ppBelgeIki.RichText := '';
end;

procedure Tfr_ogrenci.tx_grubu1PropertiesChange(Sender: TObject);
begin
  tablo_grup1.Locate('adi', VarArrayOf([tx_grubu1.Text]), [loCaseInsensitive]);
  if (tablo_grup2.State = dsBrowse) and (tablo_ogrenci.State in [dsInsert, dsEdit]) and (tablo_grup2.RecordCount < 1) then
  begin
    tablo_ogrencigrup2.Clear;
    tablo_ogrencigrup3.Clear;
  end;
  tx_grubu3PropertiesChange(tx_grubu3);
  //  tablo_sinifi.Filter:='donem='+QuotedStr(tx_donemi.Text)+'and grup1='+QuotedStr(tx_grubu1.Text);
end;

procedure Tfr_ogrenci.tx_grubu2PropertiesChange(Sender: TObject);
begin
  tablo_grup2.Locate('adi', VarArrayOf([tx_grubu2.Text]), [loCaseInsensitive]);
  if (tablo_grup3.State = dsBrowse) and (tablo_ogrenci.State in [dsInsert, dsEdit]) and (tablo_grup3.RecordCount < 1) then tablo_ogrencigrup3.Clear;
  tx_grubu3PropertiesChange(tx_grubu3);
  //  tablo_sinifi.Filter:='donem='+QuotedStr(tx_donemi.Text)+'and grup1='+QuotedStr(tx_grubu1.Text)+' and grup2='+QuotedStr(tx_grubu2.Text);
end;

procedure Tfr_ogrenci.tx_grubu3PropertiesChange(Sender: TObject);
var
  filtre: string;
begin
  filtre := '';
  if trim(tx_grubu1.Text) <> '' then
    filtre := filtre + ' and grup1=' + QuotedStr(tx_grubu1.Text);
  if trim(tx_grubu2.Text) <> '' then
    filtre := filtre + ' and grup2=' + QuotedStr(tx_grubu2.Text);
  if trim(tx_grubu3.Text) <> '' then
    filtre := filtre + ' and grup3=' + QuotedStr(tx_grubu3.Text);
  if copy(filtre, 1, 4) = ' and' then
    filtre := copy(filtre, 6, length(filtre) - 5);
  tablo_sinifi.Filter := filtre;
end;

procedure Tfr_ogrenci.sayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if (tablo_ogrenci.State = dsInsert) then
  begin
    messagedlg('Þu anda bir öðrenci kaydý giriyorsunuz. Öncelikle bu iþlemi tamamlayýn!', mtError, [mbOk], 0);
    AllowChange := False;
    SysUtils.Abort;
  end;
  if NewPage = sayfalar_evrak_durumu then
    tablo_evrak_durumu.Open;
  if (NewPage = sayfalar_taksit) or (NewPage = sayfalar_odeme_durumu) then
  begin
    tablo_odeme_durumu.Open;
    tablo_taksitler.Open;
    tablo_geciken_borc_bildirimi.open;
    tablo_taksitler.Open;
  end;
  if NewPage = sayfalar_taksit then
  begin
    tablo_kayit_bedeli.Open;
    if tablo_kayit_bedeli.RecordCount = 0 then
    begin
      tablo_kayit_bedeli.Append;
      tablo_kayit_bedelidonemi.Text := tablo_ogrencidonemi.text;
      tablo_kayit_bedeliogr_no.AsInteger := tablo_ogrenciogr_no.AsInteger;
    end;
  end;
end;

procedure Tfr_ogrenci.tx_grubu2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := bkharf(Key, true);
end;

procedure Tfr_ogrenci.tx_grubu3KeyPress(Sender: TObject; var Key: Char);
begin
  Key := bkharf(Key, true);
end;

procedure Tfr_ogrenci.tx_gsmExit(Sender: TObject);
var
 gsmno: string;
begin
  gsmno := tx_gsm.Text;
  gsmno := stringreplace(gsmno,' ','',[rfReplaceAll]);
  gsmno := stringreplace(gsmno,'(','',[rfReplaceAll]);
  gsmno := stringreplace(gsmno,')','',[rfReplaceAll]);
  if length(gsmno) = 10 then
    ck_bsms.Checked := true
  else
    ck_bsms.Checked := false;
end;

procedure Tfr_ogrenci.tx_faxExit(Sender: TObject);
begin
  if length(trim(tx_fax.Text)) > 10 then
    ck_bfax.Checked := true
  else
    ck_bfax.Checked := false;
end;

procedure Tfr_ogrenci.tx_ev_telefonuEnter(Sender: TObject);
begin
  tx_ev_telefonu.SelStart := 6;
end;

procedure Tfr_ogrenci.tx_is_telefonuEnter(Sender: TObject);
begin
  tx_is_telefonu.SelStart := 6;
end;

procedure Tfr_ogrenci.kayitgez(ileri: boolean);
var
  sql: string;
begin
  if (tablo_ogrenci.State = dsBrowse) and (tablo_ogrenci.RecordCount > 0) then
  begin
    tablo_oku.Close;
    sql := 'select donemi,ogr_no from ogrenciler WHERE ';
    sql := sql + 'donemi=''' + tablo_ogrenci.fieldbyname('donemi').Text + ''' AND ';
    sql := sql + 'ogr_no ';
    if ileri = false then
      sql := sql + '> ' + tablo_ogrenci.fieldbyname('ogr_no').Text + ' ORDER BY  ogr_no asc'
    else
      sql := sql + '< ' + tablo_ogrenci.fieldbyname('ogr_no').Text + ' ORDER BY  ogr_no desc';
    sql := sql + ' limit 1';
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add(sql);
    tablo_oku.Open;
    if tablo_oku.RecordCount <> 1 then exit;
    SOgr.Donem := tablo_oku.fieldbyname('donemi').Text;
    SOgr.OgrNo := tablo_oku.fieldbyname('ogr_no').AsInteger;
    tablo_oku.Close;
    SOgr.KayitGoster := true;
    bt_ogrenci_bulClick(bt_ogrenci_bul);
    if sayfalar.ActivePage = sayfalar_evrak_durumu then
      tablo_evrak_durumu.Open;
    if (sayfalar.ActivePage = sayfalar_taksit) or (sayfalar.ActivePage = sayfalar_odeme_durumu) then
    begin
      tablo_odeme_durumu.Open;
      tablo_taksitler.Open;
      tablo_geciken_borc_bildirimi.open;
      tablo_kayit_bedeli.Open;
    end;
  end;
end;

procedure Tfr_ogrenci.tx_sinifiKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    if tablo_ogrenci.State <> dsEdit then
      tablo_ogrenci.Edit;
    tablo_ogrencisinifi.Clear;
  end;
end;

procedure Tfr_ogrenci.bt_bos_ogr_no_soyleClick(Sender: TObject);
begin
  application.CreateForm(TFrBosNumaralar, FrBosNumaralar);
  FrBosNumaralar.ShowModal;
  if SOgr.Iptal = true then Exit;
  if tablo_ogrenci.State <> dsInsert then
  begin
    messagedlg('Þu anda kayýt ekleme iþlemi yapmýyorsunuz!', mtError, [mbOk], 0);
    Exit;
  end;
  tablo_ogrenci.fieldbyname('donemi').Text := SOgr.Donem;
  tablo_ogrenci.fieldbyname('ogr_no').AsInteger := SOgr.OgrNo;
  tx_ogr_no.SetFocus;
end;

procedure Tfr_ogrenci.bt_ogrenci_bulClick(Sender: TObject);
begin
  if SOgr.KayitGoster = true then
  begin
    SabitleriYukle;
    KayitGoster;
    SOgr.KayitGoster := False;
    Exit;
  end
  else
  begin
    Application.CreateForm(Tfr_ogrenci_arama, fr_ogrenci_arama);
    if SOgr.Iptal = true then Exit;
    if (SOgr.KayitVar = false) and (SOgr.Iptal = false) then
    begin
      tablo_evrak_durumu.Close;
      tablo_veli.Close;
      tablo_odeme_durumu.Close;
      tablo_taksitler.Close;
      tablo_geciken_borc_bildirimi.close;
      tablo_kayit_bedeli.Close;
      tablo_ogrenci.close;
      sayfalar.ActivePage := sayfalar_bilgileri;
      SabitleriYukle;
      tablo_ogrenci.ParamByName('donem').AsString := SOgr.Donem;
      tablo_ogrenci.ParamByName('ogrno').AsInteger := 0;
      tablo_ogrenci.Open;
      tablo_ogrenci.Insert;
      tablo_ogrencidonemi.Text := SOgr.Donem;
    end
    else
    begin
      if tablo_ogrenci.State in [dsInsert, dsEdit] then
        case messagedlg('Yaptýðýnýz deðiþiklikleri kaydetmek istiyor musunuz?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: tablo_ogrenci.Post;
          mrCancel: Exit;
        end;
      SabitleriYukle;
      KayitGoster;
    end;
  end;
end;

procedure Tfr_ogrenci.taksitlerEditChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
begin
  if (tablo_ogrenci.State <> dsEdit) and (tablo_ogrenci.State <> dsInsert) then
    tablo_ogrenci.Edit;
end;

procedure Tfr_ogrenci.tx_emailExit(Sender: TObject);
begin
  if Pos('@', tx_fax.Text) < 2 then
    ck_bemail.Checked := true
  else
    ck_bemail.Checked := false;
end;

procedure Tfr_ogrenci.tx_kayit_bedeliEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  if tablo_ogrenci.State <> dsEdit then tablo_ogrenci.Edit;
end;

procedure Tfr_ogrenci.tx_tc_kimlik_noExit(Sender: TObject);
var
  i, toplam: Shortint;
begin
  if (tx_tc_kimlik_no.Text='') or (tx_tc_kimlik_no.Text='0') then
    Exit
  else if length(tx_tc_kimlik_no.Text) <> 11 then
  begin
    MessageDlg('TC Kimlik numarasý 11 haneli olmalýdýr!', mtError, [mbOK], 0);
    tx_tc_kimlik_no.SetFocus;
  end
  else
  begin
    toplam := 0;
    for i:=1 to 10 do
      toplam := toplam + strtoint(tx_tc_kimlik_no.text[i]);
    if toplam mod 10 <> strtoint(tx_tc_kimlik_no.text[11]) then
    begin
      MessageDlg('Geçersiz bir TC Kimlik numarasý girilmiþ!', mtError, [mbOK], 0);
      tx_tc_kimlik_no.SetFocus;
    end;
  end;
end;

procedure Tfr_ogrenci.SabitleriYukle;
begin
  if SabitlerYuklendi then Exit;
{dönemi}
  tx_donemi.Properties.Items := Donemler;
{yakýnlýðý}
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct yakinligi from ogrenciler');
  tablo_oku.open;
  while tablo_oku.Eof = false do
  begin
    tx_yakinligi.Properties.Items.Add(tablo_oku.Fields[0].text);
    tablo_oku.Next;
  end;
{ okulu }
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct okulu from ogrenciler');
  tablo_oku.open;
  while tablo_oku.Eof = false do
  begin
    tx_okulu.Properties.Items.Add(tablo_oku.Fields[0].text);
    tablo_oku.Next;
  end;
{ mesleði }
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct meslegi from veliler');
  tablo_oku.open;
  while tablo_oku.Eof = false do
  begin
    tx_meslegi.Properties.Items.Add(tablo_oku.Fields[0].text);
    tablo_oku.Next;
  end;
{ verilis nedeni }
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct verilis_nedeni from ogrenciler');
  tablo_oku.open;
  while tablo_oku.Eof = false do
  begin
    tx_verilis_nedeni.Properties.Items.Add(tablo_oku.Fields[0].text);
    tablo_oku.Next;
  end;
{ gruplar }
  tablo_grup1.Open;
  tablo_grup2.Open;
  tablo_grup3.Open;
{ sinifi }
  tablo_sinifi.ParamByName('donem').Text := SOgr.Donem;
  tablo_sinifi.Open;
  SabitlerYuklendi := true; 
end;

procedure Tfr_ogrenci.KayitGoster;
begin
  tablo_evrak_durumu.Close;
  tablo_veli.Close;
  tablo_odeme_durumu.Close;
  tablo_taksitler.Close;
  tablo_geciken_borc_bildirimi.close;
  tablo_kayit_bedeli.Close;
  tablo_ogrenci.close;
  tablo_kayit_bedeli.ParamByName('donem').AsString := SOgr.Donem;
  tablo_kayit_bedeli.ParamByName('ogrno').AsInteger := SOgr.OgrNo;
  tablo_odeme_durumu.Params[0].Text := SOgr.Donem;
  tablo_odeme_durumu.Params[1].AsInteger := SOgr.OgrNo;
  tablo_taksitler.Params[0].Text := SOgr.Donem;
  tablo_taksitler.Params[1].AsInteger := SOgr.OgrNo;
  tablo_geciken_borc_bildirimi.Params[0].Text := SOgr.Donem;
  tablo_geciken_borc_bildirimi.Params[1].AsInteger := SOgr.OgrNo;
  tablo_evrak_durumu.Params[0].Text := SOgr.Donem;
  tablo_evrak_durumu.Params[1].AsInteger := SOgr.OgrNo;
  tablo_ogrenci.ParamByName('donem').AsString := SOgr.Donem;
  tablo_ogrenci.ParamByName('ogrno').AsInteger := SOgr.OgrNo;
  tablo_ogrenci.Open;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select danisman from siniflar where donem=' + QuotedStr(SOgr.Donem) + ' and sinif=' + QuotedStr(tablo_ogrencisinifi.Text));
  tablo_oku.Open;
  tx_danisman.Caption := tablo_oku.fieldbyname('danisman').Text;
  tablo_oku.Close;
  tablo_veli.Params[0].text := tablo_ogrenci.fieldbyname('veli_kodu').text;
  tablo_veli.Open;
  DBNavigator1.Controls[1].Enabled := true;
  if yetki > 199 then
  begin
    sayfalar_taksit.Enabled := false;
    sayfalar_odeme_durumu.Enabled := false;
  end;
  if sayfalar.ActivePageIndex in [sayfalar_taksit.PageIndex, sayfalar_odeme_durumu.PageIndex] then
  begin
    tablo_odeme_durumu.Open;
    tablo_taksitler.Open;
    tablo_geciken_borc_bildirimi.Open;
    tablo_kayit_bedeli.Open;
  end;
  if sayfalar.ActivePage = sayfalar_evrak_durumu then
    tablo_evrak_durumu.Open;
  if sayfalar.ActivePage = sayfalar_taksit then
  begin
    tablo_kayit_bedeli.Open;
    if tablo_kayit_bedeli.RecordCount = 0 then
    begin
      tablo_kayit_bedeli.Append;
      tablo_kayit_bedelidonemi.Text := tablo_ogrencidonemi.text;
      tablo_kayit_bedeliogr_no.AsInteger := tablo_ogrenciogr_no.AsInteger;
    end;
  end;
end;

procedure Tfr_ogrenci.ppImage1Print(Sender: TObject);
begin
  TppImage(Sender).Picture.Assign(Dershane.Logo);
end;

procedure Tfr_ogrenci.ppLabel28GetText(Sender: TObject; var Text: String);
begin
  Text := bkmetin(Dershane.AdiResmi,1);
end;

procedure Tfr_ogrenci.ppLabel67GetText(Sender: TObject; var Text: String);
begin
  if ppTxKayitBedeli.Visible = true then
    Text := SayiYazi(tablo_kayit_bedelikayit_bedeli.AsFloat)
  else
    Text := '';
end;

end.

