unit SinavVeriGirisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  StdCtrls, cxCalendar, Buttons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, cxDBEdit, DBCtrls, ComCtrls, cxLabel,
  cxGridBandedTableView, cxGridDBBandedTableView,ZDbcIntfs;

type
  TFrSinavVeriGirisi = class(TForm)
    tablo_sinav: TZQuery;
    GroupBox1: TGroupBox;
    gr_verilerLevel1: TcxGridLevel;
    gr_veriler: TcxGrid;
    ara_sinav: TDataSource;
    tablo_ogrenci: TZReadOnlyQuery;
    tablo_oku: TZReadOnlyQuery;
    tablo_ogrencidonemi: TStringField;
    tablo_ogrenciogr_no: TIntegerField;
    tablo_ogrenciadi: TStringField;
    tablo_ogrencisoyadi: TStringField;
    tablo_ogrencisinifi: TStringField;
    ara_sinavtanim: TDataSource;
    cxLabel8: TcxLabel;
    sayfalar: TPageControl;
    sayfa_sinav: TTabSheet;
    sayfa_oss: TTabSheet;
    sayfa_sbs: TTabSheet;
    GroupBox3: TGroupBox;
    gr_sinavtanim: TcxGrid;
    sinavlar: TcxGridDBTableView;
    sinavlarsinav_no: TcxGridDBColumn;
    sinavlarsinav_tarihi: TcxGridDBColumn;
    sinavlarsinav_adi: TcxGridDBColumn;
    gr_sinavtanimLevel1: TcxGridLevel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    tx_oks_ogr_no: TcxTextEdit;
    tx_oks_adi: TcxTextEdit;
    tx_oks_soyadi: TcxTextEdit;
    bt_oks_ekle: TBitBtn;
    tx_oks_sinifi: TcxTextEdit;
    tx_oks_donemi: TcxComboBox;
    sinavlarturu: TcxGridDBColumn;
    tx_oss_ed_d: TcxTextEdit;
    Label11: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    tx_oss_ge2_d: TcxTextEdit;
    tx_oss_fi2_d: TcxTextEdit;
    tx_oss_ta2_d: TcxTextEdit;
    tx_oss_p_d: TcxTextEdit;
    Label13: TLabel;
    Label7: TLabel;
    tx_oss_uc_d: TcxTextEdit;
    Label8: TLabel;
    tx_oss_ssy_d: TcxTextEdit;
    Label29: TLabel;
    Label9: TLabel;
    tx_oss_mn_d: TcxTextEdit;
    tx_oss_ce2_d: TcxTextEdit;
    Label28: TLabel;
    Label27: TLabel;
    tx_oss_ki2_d: TcxTextEdit;
    tx_oss_bi2_d: TcxTextEdit;
    tx_oks_t_d: TcxTextEdit;
    Label59: TLabel;
    tx_oks_t_y: TcxTextEdit;
    Label60: TLabel;
    Label61: TLabel;
    Label21: TLabel;
    tx_oks_s_d: TcxTextEdit;
    tx_oks_s_y: TcxTextEdit;
    Label22: TLabel;
    tx_oks_m_d: TcxTextEdit;
    tx_oks_m_y: TcxTextEdit;
    Label23: TLabel;
    tx_oks_f_d: TcxTextEdit;
    tx_oks_f_y: TcxTextEdit;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label24: TLabel;
    tx_oss_donemi: TcxComboBox;
    Label30: TLabel;
    tx_oss_ogr_no: TcxTextEdit;
    tx_oss_adi: TcxTextEdit;
    Label31: TLabel;
    Label68: TLabel;
    tx_oss_soyadi: TcxTextEdit;
    tx_oss_sinifi: TcxTextEdit;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    tx_oss_tc_d: TcxTextEdit;
    bt_oss_ekle: TBitBtn;
    tx_oss_ed_y: TcxTextEdit;
    tx_oss_tc_y: TcxTextEdit;
    tx_oss_p_y: TcxTextEdit;
    tx_oss_ta2_y: TcxTextEdit;
    tx_oss_uc_y: TcxTextEdit;
    tx_oss_ssy_y: TcxTextEdit;
    tx_oss_mn_y: TcxTextEdit;
    tx_oss_ce2_y: TcxTextEdit;
    tx_oss_ge2_y: TcxTextEdit;
    tx_oss_fi2_y: TcxTextEdit;
    tx_oss_ki2_y: TcxTextEdit;
    tx_oss_bi2_y: TcxTextEdit;
    tx_oss_t_d: TcxTextEdit;
    tx_oss_t_y: TcxTextEdit;
    tx_oss_ta1_y: TcxTextEdit;
    tx_oss_ta1_d: TcxTextEdit;
    tx_oss_co_d: TcxTextEdit;
    tx_oss_co_y: TcxTextEdit;
    tx_oss_fe_y: TcxTextEdit;
    tx_oss_fe_d: TcxTextEdit;
    tx_oss_ce1_d: TcxTextEdit;
    tx_oss_ce1_y: TcxTextEdit;
    tx_oss_ge1_y: TcxTextEdit;
    tx_oss_ge1_d: TcxTextEdit;
    tx_oss_fi1_y: TcxTextEdit;
    tx_oss_fi1_d: TcxTextEdit;
    tx_oss_ki1_y: TcxTextEdit;
    tx_oss_ki1_d: TcxTextEdit;
    tx_oss_bi1_y: TcxTextEdit;
    tx_oss_bi1_d: TcxTextEdit;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    tx_oss_edsos_d: TcxTextEdit;
    tx_oss_edsos_y: TcxTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label95: TLabel;
    tx_oss_so2_d: TcxTextEdit;
    tx_oss_so2_y: TcxTextEdit;
    Label96: TLabel;
    tx_oss_ma2_d: TcxTextEdit;
    tx_oss_ma2_y: TcxTextEdit;
    Label97: TLabel;
    tx_oss_f2_d: TcxTextEdit;
    tx_oss_f2_y: TcxTextEdit;
    tx_oss_so1_y: TcxTextEdit;
    tx_oss_so1_d: TcxTextEdit;
    tx_oss_ma1_y: TcxTextEdit;
    tx_oss_ma1_d: TcxTextEdit;
    tx_oss_f1_y: TcxTextEdit;
    tx_oss_f1_d: TcxTextEdit;
    sonuclar: TcxGridDBBandedTableView;
    sonuclarsinifi: TcxGridDBBandedColumn;
    sonuclardonemi: TcxGridDBBandedColumn;
    sonuclarogr_no: TcxGridDBBandedColumn;
    sonuclaradi: TcxGridDBBandedColumn;
    sonuclarsoyadi: TcxGridDBBandedColumn;
    sonuclarturkce_dogru: TcxGridDBBandedColumn;
    sonuclarturkce_yanlis: TcxGridDBBandedColumn;
    sonuclartarih1_dogru: TcxGridDBBandedColumn;
    sonuclartarih1_yanlis: TcxGridDBBandedColumn;
    sonuclartarih1_net: TcxGridDBBandedColumn;
    sonuclarcografya_dogru: TcxGridDBBandedColumn;
    sonuclarcografya_yanlis: TcxGridDBBandedColumn;
    sonuclarcografya_net: TcxGridDBBandedColumn;
    sonuclarfelsefe_dogru: TcxGridDBBandedColumn;
    sonuclarfelsefe_yanlis: TcxGridDBBandedColumn;
    sonuclarfelsefe_net: TcxGridDBBandedColumn;
    sonuclarsosyal1_dogru: TcxGridDBBandedColumn;
    sonuclarsosyal1_yanlis: TcxGridDBBandedColumn;
    sonuclarsosyal1_net: TcxGridDBBandedColumn;
    sonuclarcebir1_dogru: TcxGridDBBandedColumn;
    sonuclarcebir1_yanlis: TcxGridDBBandedColumn;
    sonuclarcebir1_net: TcxGridDBBandedColumn;
    sonuclargeometri1_dogru: TcxGridDBBandedColumn;
    sonuclargeometri1_yanlis: TcxGridDBBandedColumn;
    sonuclargeometri1_net: TcxGridDBBandedColumn;
    sonuclarmatematik1_dogru: TcxGridDBBandedColumn;
    sonuclarmatematik1_yanlis: TcxGridDBBandedColumn;
    sonuclarmatematik1_net: TcxGridDBBandedColumn;
    sonuclarfizik1_dogru: TcxGridDBBandedColumn;
    sonuclarfizik1_yanlis: TcxGridDBBandedColumn;
    sonuclarfizik1_net: TcxGridDBBandedColumn;
    sonuclarkimya1_dogru: TcxGridDBBandedColumn;
    sonuclarkimya1_yanlis: TcxGridDBBandedColumn;
    sonuclarkimya1_net: TcxGridDBBandedColumn;
    sonuclarbiyoloji1_dogru: TcxGridDBBandedColumn;
    sonuclarbiyoloji1_yanlis: TcxGridDBBandedColumn;
    sonuclarbiyoloji1_net: TcxGridDBBandedColumn;
    sonuclarfen1_dogru: TcxGridDBBandedColumn;
    sonuclarfen1_yanlis: TcxGridDBBandedColumn;
    sonuclarfen1_net: TcxGridDBBandedColumn;
    sonuclaredebiyat_dogru: TcxGridDBBandedColumn;
    sonuclaredebiyat_yanlis: TcxGridDBBandedColumn;
    sonuclaredebiyat_net: TcxGridDBBandedColumn;
    sonuclarturkiyecografyasi_dogru: TcxGridDBBandedColumn;
    sonuclarturkiyecografyasi_yanlis: TcxGridDBBandedColumn;
    sonuclarturkiyecografyasi_net: TcxGridDBBandedColumn;
    sonuclarpsikoloji_dogru: TcxGridDBBandedColumn;
    sonuclarpsikoloji_yanlis: TcxGridDBBandedColumn;
    sonuclarpsikoloji_net: TcxGridDBBandedColumn;
    sonuclaredebiyatsosyal_dogru: TcxGridDBBandedColumn;
    sonuclaredebiyatsosyal_yanlis: TcxGridDBBandedColumn;
    sonuclaredebiyatsosyal_net: TcxGridDBBandedColumn;
    sonuclartarih2_dogru: TcxGridDBBandedColumn;
    sonuclartarih2_yanlis: TcxGridDBBandedColumn;
    sonuclartarih2_net: TcxGridDBBandedColumn;
    sonuclarulkelercografyasi_dogru: TcxGridDBBandedColumn;
    sonuclarulkelercografyasi_yanlis: TcxGridDBBandedColumn;
    sonuclarulkelercografyasi_net: TcxGridDBBandedColumn;
    sonuclarsosyoloji_dogru: TcxGridDBBandedColumn;
    sonuclarsosyoloji_yanlis: TcxGridDBBandedColumn;
    sonuclarsosyoloji_net: TcxGridDBBandedColumn;
    sonuclarmantik_dogru: TcxGridDBBandedColumn;
    sonuclarmantik_yanlis: TcxGridDBBandedColumn;
    sonuclarmantik_net: TcxGridDBBandedColumn;
    sonuclarsosyal2_dogru: TcxGridDBBandedColumn;
    sonuclarsosyal2_yanlis: TcxGridDBBandedColumn;
    sonuclarsosyal2_net: TcxGridDBBandedColumn;
    sonuclarcebir2_dogru: TcxGridDBBandedColumn;
    sonuclarcebir2_yanlis: TcxGridDBBandedColumn;
    sonuclarcebir2_net: TcxGridDBBandedColumn;
    sonuclargeometri2_dogru: TcxGridDBBandedColumn;
    sonuclargeometri2_yanlis: TcxGridDBBandedColumn;
    sonuclargeometri2_net: TcxGridDBBandedColumn;
    sonuclarmatematik2_dogru: TcxGridDBBandedColumn;
    sonuclarmatematik2_yanlis: TcxGridDBBandedColumn;
    sonuclarmatematik2_net: TcxGridDBBandedColumn;
    sonuclarfizik2_dogru: TcxGridDBBandedColumn;
    sonuclarfizik2_yanlis: TcxGridDBBandedColumn;
    sonuclarfizik2_net: TcxGridDBBandedColumn;
    sonuclarkimya2_dogru: TcxGridDBBandedColumn;
    sonuclarkimya2_yanlis: TcxGridDBBandedColumn;
    sonuclarkimya2_net: TcxGridDBBandedColumn;
    sonuclarbiyoloji2_dogru: TcxGridDBBandedColumn;
    sonuclarbiyoloji2_yanlis: TcxGridDBBandedColumn;
    sonuclarbiyoloji2_net: TcxGridDBBandedColumn;
    sonuclarfen2_dogru: TcxGridDBBandedColumn;
    sonuclarfen2_yanlis: TcxGridDBBandedColumn;
    sonuclarfen2_net: TcxGridDBBandedColumn;
    sonuclartoplam_dogru: TcxGridDBBandedColumn;
    sonuclartoplam_yanlis: TcxGridDBBandedColumn;
    sonuclartoplam_net: TcxGridDBBandedColumn;
    cb_netgiris: TCheckBox;
    sonuclarkitapcik: TcxGridDBBandedColumn;
    sonuclarcevapturkce: TcxGridDBBandedColumn;
    sonuclarcevapsos1: TcxGridDBBandedColumn;
    sonuclarcevapsos2: TcxGridDBBandedColumn;
    sonuclarcevapedsos: TcxGridDBBandedColumn;
    tablo_sinavid: TLargeintField;
    tablo_sinavsinav_no: TIntegerField;
    tablo_sinavsinifi: TStringField;
    tablo_sinavdonemi: TStringField;
    tablo_sinavogr_no: TIntegerField;
    tablo_sinavadi: TStringField;
    tablo_sinavsoyadi: TStringField;
    tablo_sinavturkce_dogru: TIntegerField;
    tablo_sinavturkce_yanlis: TIntegerField;
    tablo_sinavtarih1_dogru: TSmallintField;
    tablo_sinavtarih1_yanlis: TSmallintField;
    tablo_sinavtarih1_net: TFloatField;
    tablo_sinavcografya_dogru: TSmallintField;
    tablo_sinavcografya_yanlis: TSmallintField;
    tablo_sinavcografya_net: TFloatField;
    tablo_sinavfelsefe_dogru: TSmallintField;
    tablo_sinavfelsefe_yanlis: TSmallintField;
    tablo_sinavfelsefe_net: TFloatField;
    tablo_sinavsosyal1_dogru: TIntegerField;
    tablo_sinavsosyal1_yanlis: TIntegerField;
    tablo_sinavsosyal1_net: TFloatField;
    tablo_sinavcebir1_dogru: TSmallintField;
    tablo_sinavcebir1_yanlis: TSmallintField;
    tablo_sinavcebir1_net: TFloatField;
    tablo_sinavgeometri1_dogru: TSmallintField;
    tablo_sinavgeometri1_yanlis: TSmallintField;
    tablo_sinavgeometri1_net: TFloatField;
    tablo_sinavmatematik1_dogru: TIntegerField;
    tablo_sinavmatematik1_yanlis: TIntegerField;
    tablo_sinavmatematik1_net: TFloatField;
    tablo_sinavfizik1_dogru: TSmallintField;
    tablo_sinavfizik1_yanlis: TSmallintField;
    tablo_sinavfizik1_net: TFloatField;
    tablo_sinavkimya1_dogru: TSmallintField;
    tablo_sinavkimya1_yanlis: TSmallintField;
    tablo_sinavkimya1_net: TFloatField;
    tablo_sinavbiyoloji1_dogru: TSmallintField;
    tablo_sinavbiyoloji1_yanlis: TSmallintField;
    tablo_sinavbiyoloji1_net: TFloatField;
    tablo_sinavfen1_dogru: TIntegerField;
    tablo_sinavfen1_yanlis: TIntegerField;
    tablo_sinavfen1_net: TFloatField;
    tablo_sinavedebiyat_dogru: TIntegerField;
    tablo_sinavedebiyat_yanlis: TIntegerField;
    tablo_sinavedebiyat_net: TFloatField;
    tablo_sinavturkiyecografyasi_dogru: TIntegerField;
    tablo_sinavturkiyecografyasi_yanlis: TIntegerField;
    tablo_sinavturkiyecografyasi_net: TFloatField;
    tablo_sinavpsikoloji_dogru: TIntegerField;
    tablo_sinavpsikoloji_yanlis: TIntegerField;
    tablo_sinavpsikoloji_net: TFloatField;
    tablo_sinavedebiyatsosyal_dogru: TIntegerField;
    tablo_sinavedebiyatsosyal_yanlis: TIntegerField;
    tablo_sinavedebiyatsosyal_net: TFloatField;
    tablo_sinavtarih2_dogru: TIntegerField;
    tablo_sinavtarih2_yanlis: TIntegerField;
    tablo_sinavtarih2_net: TFloatField;
    tablo_sinavulkelercografyasi_dogru: TIntegerField;
    tablo_sinavulkelercografyasi_yanlis: TIntegerField;
    tablo_sinavulkelercografyasi_net: TFloatField;
    tablo_sinavsosyoloji_dogru: TIntegerField;
    tablo_sinavsosyoloji_yanlis: TIntegerField;
    tablo_sinavsosyoloji_net: TFloatField;
    tablo_sinavmantik_dogru: TIntegerField;
    tablo_sinavmantik_yanlis: TIntegerField;
    tablo_sinavmantik_net: TFloatField;
    tablo_sinavsosyal2_dogru: TIntegerField;
    tablo_sinavsosyal2_yanlis: TIntegerField;
    tablo_sinavsosyal2_net: TFloatField;
    tablo_sinavcebir2_dogru: TIntegerField;
    tablo_sinavcebir2_yanlis: TIntegerField;
    tablo_sinavcebir2_net: TFloatField;
    tablo_sinavgeometri2_dogru: TIntegerField;
    tablo_sinavgeometri2_yanlis: TIntegerField;
    tablo_sinavgeometri2_net: TFloatField;
    tablo_sinavmatematik2_dogru: TIntegerField;
    tablo_sinavmatematik2_yanlis: TIntegerField;
    tablo_sinavmatematik2_net: TFloatField;
    tablo_sinavfizik2_dogru: TIntegerField;
    tablo_sinavfizik2_yanlis: TIntegerField;
    tablo_sinavfizik2_net: TFloatField;
    tablo_sinavkimya2_dogru: TIntegerField;
    tablo_sinavkimya2_yanlis: TIntegerField;
    tablo_sinavkimya2_net: TFloatField;
    tablo_sinavbiyoloji2_dogru: TIntegerField;
    tablo_sinavbiyoloji2_yanlis: TIntegerField;
    tablo_sinavbiyoloji2_net: TFloatField;
    tablo_sinavfen2_dogru: TIntegerField;
    tablo_sinavfen2_yanlis: TIntegerField;
    tablo_sinavfen2_net: TFloatField;
    tablo_sinavtoplam_dogru: TIntegerField;
    tablo_sinavtoplam_yanlis: TIntegerField;
    tablo_sinavtoplam_net: TFloatField;
    tablo_sinavpuan_1: TFloatField;
    tablo_sinavderece_1: TIntegerField;
    tablo_sinavderece_local_1: TIntegerField;
    tablo_sinavpuan_2: TFloatField;
    tablo_sinavderece_2: TIntegerField;
    tablo_sinavderece_local_2: TIntegerField;
    tablo_sinavpuan_3: TFloatField;
    tablo_sinavderece_3: TIntegerField;
    tablo_sinavderece_local_3: TIntegerField;
    tablo_sinavpuan_4: TFloatField;
    tablo_sinavderece_4: TIntegerField;
    tablo_sinavderece_local_4: TIntegerField;
    tablo_sinavpuan_5: TFloatField;
    tablo_sinavderece_5: TIntegerField;
    tablo_sinavderece_local_5: TIntegerField;
    tablo_sinavpuan_6: TFloatField;
    tablo_sinavderece_6: TIntegerField;
    tablo_sinavderece_local_6: TIntegerField;
    tablo_sinavcevapturkce: TStringField;
    tablo_sinavcevapsos1: TStringField;
    tablo_sinavcevapmat1: TStringField;
    tablo_sinavcevapfen1: TStringField;
    tablo_sinavcevapedsos: TStringField;
    tablo_sinavcevapsos2: TStringField;
    tablo_sinavcevapmat2: TStringField;
    tablo_sinavcevapfen2: TStringField;
    tablo_sinavkitapcik: TStringField;
    tablo_sinavbildirim: TStringField;
    sonuclarturkce_net: TcxGridDBBandedColumn;
    tablo_sinavturkce_net: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Label16: TLabel;
    tx_oks_i_d: TcxTextEdit;
    tx_oks_i_y: TcxTextEdit;
    tablo_sinavingilizce_dogru: TIntegerField;
    tablo_sinavingilizce_yanlis: TIntegerField;
    tablo_sinavingilizce_net: TFloatField;
    tablo_sinavcevaping: TStringField;
    sonuclaringilizce_dogru: TcxGridDBBandedColumn;
    sonuclaringilizce_yanlis: TcxGridDBBandedColumn;
    sonuclaringilizce_net: TcxGridDBBandedColumn;
    sonuclarcevaping: TcxGridDBBandedColumn;
    sayfa_kpss: TTabSheet;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label46: TLabel;
    tx_kpss_ogr_no: TcxTextEdit;
    tx_kpss_adi: TcxTextEdit;
    tx_kpss_soyadi: TcxTextEdit;
    bt_kpss_ekle: TBitBtn;
    tx_kpss_sinifi: TcxTextEdit;
    tx_kpss_donemi: TcxComboBox;
    tx_kpss_t_d: TcxTextEdit;
    tx_kpss_t_y: TcxTextEdit;
    tx_kpss_s_d: TcxTextEdit;
    tx_kpss_s_y: TcxTextEdit;
    tx_kpss_m_d: TcxTextEdit;
    tx_kpss_m_y: TcxTextEdit;
    tablo_sinavtanim: TZReadOnlyQuery;
    tablo_sinavtanimsinav_no: TIntegerField;
    tablo_sinavtanimturu: TStringField;
    tablo_sinavtanimsinav_tarihi: TDateField;
    tablo_sinavtanimsinav_adi: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tx_oks_ogr_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oks_adiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oks_soyadiKeyPress(Sender: TObject; var Key: Char);
    procedure bt_oks_ekleClick(Sender: TObject);
    procedure tx_oks_donemiKeyPress(Sender: TObject; var Key: Char);
    procedure tablo_sinavFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_ogrenciFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tx_oksKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oss_donemiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oss_ogr_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oss_adiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oss_soyadiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oss_t_dKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oss_bi2_yKeyPress(Sender: TObject; var Key: Char);
    procedure bt_oss_ekleClick(Sender: TObject);
    procedure tx_oss_so1_dKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oss_f2_yKeyPress(Sender: TObject; var Key: Char);
    procedure tablo_sinavAfterRefresh(DataSet: TDataSet);
    procedure sinavlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tx_oss_t_yKeyPress(Sender: TObject; var Key: Char);
    procedure sayfa_ossShow(Sender: TObject);
    procedure sayfa_sbsShow(Sender: TObject);
    procedure bt_kpss_ekleClick(Sender: TObject);
    procedure tx_kpss_donemiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_kpss_ogr_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_kpss_adiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_kpss_soyadiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_kpss_m_yKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSinavVeriGirisi: TFrSinavVeriGirisi;

implementation

uses ogrenci_arama, veritabani,functionlar;
{$R *.dfm}

procedure TFrSinavVeriGirisi.FormCreate(Sender: TObject);
begin
  tablo_sinavtanim.Open;
  tx_oks_donemi.Properties.Items := Donemler;
  tx_kpss_donemi.Properties.Items := Donemler;
  tx_oss_donemi.Properties.Items := Donemler;
  tx_oks_donemi.Text := AktifDonem;
  tx_kpss_donemi.Text := AktifDonem;
  tx_oss_donemi.Text := AktifDonem;
  tablo_ogrenci.Filtered := gizli;
  tablo_sinav.Filtered := gizli;
  tablo_ogrenci.Open;
end;

procedure TFrSinavVeriGirisi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrSinavVeriGirisi.tx_oks_ogr_noKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin;
    if tx_oks_ogr_no.text = '' then
    begin
      application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
      if SOgr.Iptal = false then
        begin
          tx_oks_ogr_no.Text := inttostr(SOgr.OgrNo);
          tx_oks_donemi.text := SOgr.Donem;
          tablo_ogrenci.Locate('ogr_no;donemi', varArrayof([SOgr.OgrNo, SOgr.Donem]), []);
          tx_oks_adi.Text := tablo_ogrenci.Fieldbyname('adi').Text;
          tx_oks_soyadi.Text := tablo_ogrenci.Fieldbyname('soyadi').Text;
          tx_oks_sinifi.Text := tablo_ogrenci.Fieldbyname('sinifi').Text;
          tx_oks_t_d.SetFocus;
        end;
    end
    else if tx_oks_ogr_no.Text = '3' then
    begin
      tx_oks_sinifi.Text := 'Dýþarýdan';
      tx_oks_adi.SetFocus;
    end
    else
      if tablo_ogrenci.Locate('ogr_no;donemi', vararrayof([tx_oks_ogr_no.Text,tx_oks_donemi.Text]), []) = True then
      begin
        tx_oks_adi.Text := tablo_ogrenci.Fieldbyname('adi').Text;
        tx_oks_soyadi.Text := tablo_ogrenci.Fieldbyname('soyadi').Text;
        tx_oks_sinifi.Text := tablo_ogrenci.Fieldbyname('sinifi').Text;
        tx_oks_t_d.SetFocus;
      end
      else
      begin
        messagedlg('Bu numraya ait öðrenci yok!' + chr(13) +
        'Dýþarýdan girenler için öðrenci numarasý olarak 3 yazýn.' + chr(13) + 'Öðrenci aramak için boþ býrakýp ENTER `a basýn.' , mtError, [mbOk], 0);
        tx_oks_adi.text := '';
        tx_oks_soyadi.text := '';
        tx_oks_sinifi.Text := '';
        tx_oks_ogr_no.SelectAll;
      end;
    end;
end;

procedure TFrSinavVeriGirisi.tx_oks_adiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_oks_soyadi.SetFocus;
 with Sender as TcxTextEdit do
 if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true);
end;

procedure TFrSinavVeriGirisi.tx_oks_soyadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ord(Key) = 13 then tx_oks_t_d.SetFocus;
 Key := bkharf(Key,true);
end;

procedure TFrSinavVeriGirisi.bt_oks_ekleClick(Sender: TObject);
var
  enter_kod :char;
begin
//Ekleme iþlemi..
  if tablo_sinavtanim.State <> dsBrowse then
  begin
     messagedlg('Sýnav ekleme iþlemini tamamlayýn!',mtError, [mbOk], 0);
     Exit;
  end;
  if sinavlar.Controller.SelectedRowCount < 1 then
  begin
     messagedlg('Sýnav seçilmemiþ!',mtError, [mbOk], 0);
     Exit;
  end;
   if tx_oks_adi.Text = '' then
   begin
     messagedlg('Öðrenci bilgileri düzgün deðil!',mtError, [mbOk], 0);
     Exit;
   end
   else if tx_oks_donemi.Text = '' then
   begin
     messagedlg('Dönem bilgisini mutlaka girmelisiniz!',mtError, [mbOk], 0);
     tx_oks_donemi.SetFocus;
     Exit;
   end
   else if tx_oks_ogr_no.Text = '' then
   begin
     messagedlg('Öðrenci numarasý geçersiz!',mtError, [mbOk], 0);
     tx_oks_ogr_no.Clear;
     tx_oks_adi.Clear;
     tx_oks_soyadi.Clear;
     tx_oks_sinifi.Clear;
     Exit;
   end;
//tekrar kontrol
  enter_kod := #13;
  tx_oks_ogr_noKeyPress(tx_oks_ogr_no, enter_kod);
//KAyýtlarý kaydet //////////////////
  tablo_sinav.Insert;
  tablo_sinav.Fieldbyname('sinav_no').Asinteger := tablo_sinavtanim.fieldbyname('sinav_no').AsInteger;
  tablo_sinav.Fieldbyname('donemi').AsString := tx_oks_donemi.Text;
  tablo_sinav.Fieldbyname('ogr_no').AsString := tx_oks_ogr_no.Text;
  tablo_sinav.Fieldbyname('adi').AsString := tx_oks_adi.Text;
  tablo_sinav.Fieldbyname('soyadi').AsString := tx_oks_soyadi.Text;
  tablo_sinav.Fieldbyname('sinifi').AsString := tx_oks_sinifi.Text;
  tablo_sinav.Fieldbyname('turkce_dogru').AsString := tx_oks_t_d.Text;
  tablo_sinav.Fieldbyname('turkce_yanlis').AsString := tx_oks_t_y.Text;
  tablo_sinav.Fieldbyname('sosyal1_dogru').AsString := tx_oks_s_d.Text;
  tablo_sinav.Fieldbyname('sosyal1_yanlis').AsString := tx_oks_s_y.Text;
  tablo_sinav.Fieldbyname('matematik1_dogru').AsString := tx_oks_m_d.Text;
  tablo_sinav.Fieldbyname('matematik1_yanlis').AsString := tx_oks_m_y.Text;
  tablo_sinav.Fieldbyname('fen1_dogru').AsString := tx_oks_f_d.Text;
  tablo_sinav.Fieldbyname('fen1_yanlis').AsString := tx_oks_f_y.Text;
  tablo_sinav.Fieldbyname('ingilizce_dogru').AsString := tx_oks_i_d.Text;
  tablo_sinav.Fieldbyname('ingilizce_yanlis').AsString := tx_oks_i_y.Text;
  tablo_sinav.Fieldbyname('toplam_dogru').AsInteger := strtoint(tx_oks_t_d.Text)+strtoint(tx_oks_s_d.Text)+strtoint(tx_oks_m_d.Text)+strtoint(tx_oks_f_d.Text)+strtoint(tx_oks_i_d.Text);
  tablo_sinav.Fieldbyname('toplam_yanlis').AsInteger := strtoint(tx_oks_t_y.Text)+strtoint(tx_oks_s_y.Text)+strtoint(tx_oks_m_y.Text)+strtoint(tx_oks_f_y.Text)+strtoint(tx_oks_i_y.Text);
//mükerer kontrol
  try
    tablo_sinav.Post;
  except
    on E: EZDatabaseError do
    begin
      if pos('Duplicate entry',E.Message)>0 then
      begin
        MessageDlg('Bu kayýt daha önce girilmiþ!', mtError, [mbOK], 0);
        tablo_sinav.Cancel;
        tx_oks_ogr_no.SetFocus;
        tx_oks_ogr_no.SelectAll;
        exit;
      end
      else
      begin
        Application.ShowException(E);
        tablo_sinav.Cancel;
        Exit;
      end;
    end;
  end;
///////////////////
  tx_oks_ogr_no.Clear;
  tx_oks_adi.Clear;
  tx_oks_soyadi.Clear;
  tx_oks_sinifi.Clear;
  tx_oks_t_d.Text := '0';
  tx_oks_t_y.Text := '0';
  tx_oks_s_d.Text := '0';
  tx_oks_s_y.Text := '0';
  tx_oks_m_d.Text := '0';
  tx_oks_m_y.Text := '0';
  tx_oks_f_d.Text := '0';
  tx_oks_f_y.Text := '0';
  tx_oks_i_d.Text := '0';
  tx_oks_i_y.Text := '0';
  tx_oks_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.tx_oks_donemiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_oks_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.tablo_sinavFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_sinav.fieldbyname('donemi').AsString,tablo_sinav.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure TFrSinavVeriGirisi.tablo_ogrenciFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_ogrenci.fieldbyname('donemi').AsString,tablo_ogrenci.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure TFrSinavVeriGirisi.tx_oksKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then SelectNext(ActiveControl, true, true);
end;

procedure TFrSinavVeriGirisi.tx_oss_donemiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_oss_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.tx_oss_ogr_noKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin;
    if tx_oss_ogr_no.text = '' then
    begin
      application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
      if SOgr.Iptal = false then
        begin
          tx_oss_ogr_no.Text := inttostr(SOgr.OgrNo);
          tx_oss_donemi.text := SOgr.Donem;
          tablo_ogrenci.Locate('ogr_no;donemi', varArrayof([SOgr.OgrNo, SOgr.Donem]), []);
          tx_oss_adi.Text := tablo_ogrenci.Fieldbyname('adi').Text;
          tx_oss_soyadi.Text := tablo_ogrenci.Fieldbyname('soyadi').Text;
          tx_oss_sinifi.Text := tablo_ogrenci.Fieldbyname('sinifi').Text;
          tx_oss_t_d.SetFocus;
        end;
    end
    else if tx_oss_ogr_no.Text = '3' then
    begin
      tx_oss_sinifi.Text := 'Dýþarýdan';
      tx_oss_adi.SetFocus;
    end
    else
      if tablo_ogrenci.Locate('ogr_no;donemi', vararrayof([tx_oss_ogr_no.Text,tx_oss_donemi.Text]), []) = True then
      begin
        tx_oss_adi.Text := tablo_ogrenci.Fieldbyname('adi').Text;
        tx_oss_soyadi.Text := tablo_ogrenci.Fieldbyname('soyadi').Text;
        tx_oss_sinifi.Text := tablo_ogrenci.Fieldbyname('sinifi').Text;
        tx_oss_t_d.SetFocus;
      end
      else
      begin
        messagedlg('Bu numraya ait öðrenci yok!' + chr(13) +
        'Dýþarýdan girenler için öðrenci numarasý olarak 3 yazýn.' + chr(13) + 'Öðrenci aramak için boþ býrakýp ENTER `a basýn.' , mtError, [mbOk], 0);
        tx_oss_adi.text := '';
        tx_oss_soyadi.text := '';
        tx_oss_sinifi.Text := '';
        tx_oss_ogr_no.SelectAll;
      end;
    end;
end;

procedure TFrSinavVeriGirisi.tx_oss_adiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_oss_soyadi.SetFocus;
 with Sender as TcxTextEdit do
 if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true);
end;

procedure TFrSinavVeriGirisi.tx_oss_soyadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ord(Key) = 13 then tx_oss_t_d.SetFocus;
 Key := bkharf(Key,true);
end;

procedure TFrSinavVeriGirisi.tx_oss_t_dKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    if tcxtextedit(sender).name = 'tx_oss_fe_y' then
    begin
      tx_oss_so1_d.Text:=inttostr(strtoint(tx_oss_ta1_d.text)+strtoint(tx_oss_co_d.text)+strtoint(tx_oss_fe_d.text));
      tx_oss_so1_y.Text:=inttostr(strtoint(tx_oss_ta1_y.text)+strtoint(tx_oss_co_y.text)+strtoint(tx_oss_fe_y.text));
    end;
    if tcxtextedit(sender).name = 'tx_oss_ge1_y' then
    begin
      tx_oss_ma1_d.Text:=inttostr(strtoint(tx_oss_ce1_d.text)+strtoint(tx_oss_ge1_d.text));
      tx_oss_ma1_y.Text:=inttostr(strtoint(tx_oss_ce1_y.text)+strtoint(tx_oss_ge1_y.text));
    end;
    if tcxtextedit(sender).name = 'tx_oss_bi1_y' then
    begin
      tx_oss_f1_d.Text:=inttostr(strtoint(tx_oss_fi1_d.text)+strtoint(tx_oss_ki1_d.text)+strtoint(tx_oss_bi1_d.text));
      tx_oss_f1_y.Text:=inttostr(strtoint(tx_oss_fi1_y.text)+strtoint(tx_oss_ki1_y.text)+strtoint(tx_oss_bi1_y.text));
    end;
    if tcxtextedit(sender).name = 'tx_oss_p_y' then
    begin
      tx_oss_edsos_d.Text:=inttostr(strtoint(tx_oss_ed_d.text)+strtoint(tx_oss_tc_d.text)+strtoint(tx_oss_p_d.text));
      tx_oss_edsos_y.Text:=inttostr(strtoint(tx_oss_ed_y.text)+strtoint(tx_oss_tc_y.text)+strtoint(tx_oss_p_y.text));
    end;
    if tcxtextedit(sender).name = 'tx_oss_mn_y' then
    begin
      tx_oss_so2_d.Text:=inttostr(strtoint(tx_oss_ta2_d.text)+strtoint(tx_oss_uc_d.text)+strtoint(tx_oss_ssy_d.text)+strtoint(tx_oss_mn_d.text));
      tx_oss_so2_y.Text:=inttostr(strtoint(tx_oss_ta2_y.text)+strtoint(tx_oss_uc_y.text)+strtoint(tx_oss_ssy_y.text)+strtoint(tx_oss_mn_y.text));
    end;
    if tcxtextedit(sender).name = 'tx_oss_ge2_y' then
    begin
      tx_oss_ma2_d.Text:=inttostr(strtoint(tx_oss_ce2_d.text)+strtoint(tx_oss_ge2_d.text));
      tx_oss_ma2_y.Text:=inttostr(strtoint(tx_oss_ce2_y.text)+strtoint(tx_oss_ge2_y.text));
    end;
    SelectNext(ActiveControl,true,true);
  end;
end;

procedure TFrSinavVeriGirisi.tx_oss_bi2_yKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    tx_oss_f2_d.Text:=inttostr(strtoint(tx_oss_fi2_d.text)+strtoint(tx_oss_ki2_d.text)+strtoint(tx_oss_bi2_d.text));
    tx_oss_f2_y.Text:=inttostr(strtoint(tx_oss_fi2_y.text)+strtoint(tx_oss_ki2_y.text)+strtoint(tx_oss_bi2_y.text));
    bt_oss_ekleClick(bt_oss_ekle);
  end;
end;

procedure TFrSinavVeriGirisi.bt_oss_ekleClick(Sender: TObject);
var
enter_kod :char;
i:integer;
begin
//Ekleme iþlemi..
  if sinavlar.Controller.SelectedRowCount < 1 then
  begin
     messagedlg('Sýnav seçilmemiþ!',mtError, [mbOk], 0);
     Exit;
  end;
   if tx_oss_adi.Text = '' then
   begin
     messagedlg('Öðrenci bilgileri düzgün deðil!',mtError, [mbOk], 0);
     Exit;
   end
   else if tx_oss_donemi.Text = '' then
   begin
     messagedlg('Dönem bilgisini mutlaka girmelisiniz!',mtError, [mbOk], 0);
     tx_oss_donemi.SetFocus;
     Exit;
   end
   else if tx_oss_ogr_no.Text = '' then
   begin
     messagedlg('Öðrenci numarasý geçersiz!',mtError, [mbOk], 0);
     tx_oss_ogr_no.Clear;
     tx_oss_adi.Clear;
     tx_oss_soyadi.Clear;
     tx_oss_sinifi.Clear;
     Exit;
   end;
//tekrar kontrol
  enter_kod := #13;
  tx_oss_ogr_noKeyPress(tx_oss_ogr_no, enter_kod);
//KAyýtlarý kaydet //////////////////
  tablo_sinav.Insert;
  tablo_sinav.Fieldbyname('sinav_no').Asinteger := tablo_sinavtanim.fieldbyname('sinav_no').AsInteger;
  tablo_sinav.Fieldbyname('donemi').AsString := tx_oss_donemi.Text;
  tablo_sinav.Fieldbyname('ogr_no').AsString := tx_oss_ogr_no.Text;
  tablo_sinav.Fieldbyname('adi').AsString := tx_oss_adi.Text;
  tablo_sinav.Fieldbyname('soyadi').AsString := tx_oss_soyadi.Text;
  tablo_sinav.Fieldbyname('sinifi').AsString := tx_oss_sinifi.Text;
  tablo_sinav.Fieldbyname('turkce_dogru').AsString := tx_oss_t_d.Text;
  tablo_sinav.Fieldbyname('turkce_yanlis').AsString := tx_oss_t_y.Text;
  tablo_sinav.Fieldbyname('tarih1_dogru').AsString := tx_oss_ta1_d.Text;
  tablo_sinav.Fieldbyname('tarih1_yanlis').AsString := tx_oss_ta1_y.Text;
  tablo_sinav.Fieldbyname('cografya_dogru').AsString := tx_oss_co_d.Text;
  tablo_sinav.Fieldbyname('cografya_yanlis').AsString := tx_oss_co_y.Text;
  tablo_sinav.Fieldbyname('felsefe_dogru').AsString := tx_oss_fe_d.Text;
  tablo_sinav.Fieldbyname('felsefe_yanlis').AsString := tx_oss_fe_y.Text;
  tablo_sinav.Fieldbyname('sosyal1_dogru').AsString := tx_oss_so1_d.Text;
  tablo_sinav.Fieldbyname('sosyal1_yanlis').AsString := tx_oss_so1_y.Text;
  tablo_sinav.Fieldbyname('cebir1_dogru').AsString := tx_oss_ce1_d.Text;
  tablo_sinav.Fieldbyname('cebir1_yanlis').AsString := tx_oss_ce1_y.Text;
  tablo_sinav.Fieldbyname('geometri1_dogru').AsString := tx_oss_ge1_d.Text;
  tablo_sinav.Fieldbyname('geometri1_yanlis').AsString := tx_oss_ge1_y.Text;
  tablo_sinav.Fieldbyname('matematik1_dogru').AsString := tx_oss_ma1_d.Text;
  tablo_sinav.Fieldbyname('matematik1_yanlis').AsString := tx_oss_ma1_y.Text;
  tablo_sinav.Fieldbyname('fizik1_dogru').AsString := tx_oss_fi1_d.Text;
  tablo_sinav.Fieldbyname('fizik1_yanlis').AsString := tx_oss_fi1_y.Text;
  tablo_sinav.Fieldbyname('kimya1_dogru').AsString := tx_oss_ki1_d.Text;
  tablo_sinav.Fieldbyname('kimya1_yanlis').AsString := tx_oss_ki1_y.Text;
  tablo_sinav.Fieldbyname('biyoloji1_dogru').AsString := tx_oss_bi1_d.Text;
  tablo_sinav.Fieldbyname('biyoloji1_yanlis').AsString := tx_oss_bi1_y.Text;
  tablo_sinav.Fieldbyname('fen1_dogru').AsString := tx_oss_f1_d.Text;
  tablo_sinav.Fieldbyname('fen1_yanlis').AsString := tx_oss_f1_y.Text;
//2. bölüm
  tablo_sinav.Fieldbyname('edebiyat_dogru').AsString := tx_oss_ed_d.Text;
  tablo_sinav.Fieldbyname('edebiyat_yanlis').AsString := tx_oss_ed_y.Text;
  tablo_sinav.Fieldbyname('turkiyecografyasi_dogru').AsString := tx_oss_tc_d.Text;
  tablo_sinav.Fieldbyname('turkiyecografyasi_yanlis').AsString := tx_oss_tc_y.Text;
  tablo_sinav.Fieldbyname('psikoloji_dogru').AsString := tx_oss_p_d.Text;
  tablo_sinav.Fieldbyname('psikoloji_yanlis').AsString := tx_oss_p_y.Text;
  tablo_sinav.Fieldbyname('edebiyatsosyal_dogru').AsString := tx_oss_edsos_d.Text;
  tablo_sinav.Fieldbyname('edebiyatsosyal_yanlis').AsString := tx_oss_edsos_y.Text;
  tablo_sinav.Fieldbyname('tarih2_dogru').AsString := tx_oss_ta2_d.Text;
  tablo_sinav.Fieldbyname('tarih2_yanlis').AsString := tx_oss_ta2_y.Text;
  tablo_sinav.Fieldbyname('ulkelercografyasi_dogru').AsString := tx_oss_uc_d.Text;
  tablo_sinav.Fieldbyname('ulkelercografyasi_yanlis').AsString := tx_oss_uc_y.Text;
  tablo_sinav.Fieldbyname('sosyoloji_dogru').AsString := tx_oss_ssy_d.Text;
  tablo_sinav.Fieldbyname('sosyoloji_yanlis').AsString := tx_oss_ssy_y.Text;
  tablo_sinav.Fieldbyname('mantik_dogru').AsString := tx_oss_mn_d.Text;
  tablo_sinav.Fieldbyname('mantik_yanlis').AsString := tx_oss_mn_y.Text;
  tablo_sinav.Fieldbyname('sosyal2_dogru').AsString := tx_oss_so2_d.Text;
  tablo_sinav.Fieldbyname('sosyal2_yanlis').AsString := tx_oss_so2_y.Text;
  tablo_sinav.Fieldbyname('cebir2_dogru').AsString := tx_oss_ce2_d.Text;
  tablo_sinav.Fieldbyname('cebir2_yanlis').AsString := tx_oss_ce2_y.Text;
  tablo_sinav.Fieldbyname('geometri2_dogru').AsString := tx_oss_ge2_d.Text;
  tablo_sinav.Fieldbyname('geometri2_yanlis').AsString := tx_oss_ge2_y.Text;
  tablo_sinav.Fieldbyname('matematik2_dogru').AsString := tx_oss_ma2_d.Text;
  tablo_sinav.Fieldbyname('matematik2_yanlis').AsString := tx_oss_ma2_y.Text;
  tablo_sinav.Fieldbyname('fizik2_dogru').AsString := tx_oss_fi2_d.Text;
  tablo_sinav.Fieldbyname('fizik2_yanlis').AsString := tx_oss_fi2_y.Text;
  tablo_sinav.Fieldbyname('kimya2_dogru').AsString := tx_oss_ki2_d.Text;
  tablo_sinav.Fieldbyname('kimya2_yanlis').AsString := tx_oss_ki2_y.Text;
  tablo_sinav.Fieldbyname('biyoloji2_dogru').AsString := tx_oss_bi2_d.Text;
  tablo_sinav.Fieldbyname('biyoloji2_yanlis').AsString := tx_oss_bi2_y.Text;
  tablo_sinav.Fieldbyname('fen2_dogru').AsString := tx_oss_f2_d.Text;
  tablo_sinav.Fieldbyname('fen2_yanlis').AsString := tx_oss_f2_y.Text;
//toplam
  tablo_sinav.Fieldbyname('toplam_dogru').AsInteger := strtoint(tx_oss_t_d.Text)+strtoint(tx_oss_so1_d.Text)+strtoint(tx_oss_ma1_d.Text)+strtoint(tx_oss_f1_d.Text)+strtoint(tx_oss_edsos_d.Text)+strtoint(tx_oss_so2_d.Text)+strtoint(tx_oss_ma2_d.Text)+strtoint(tx_oss_f2_d.Text);
  tablo_sinav.Fieldbyname('toplam_yanlis').AsInteger := strtoint(tx_oss_t_y.Text)+strtoint(tx_oss_so1_y.Text)+strtoint(tx_oss_ma1_y.Text)+strtoint(tx_oss_f1_y.Text)+strtoint(tx_oss_edsos_y.Text)+strtoint(tx_oss_so2_y.Text)+strtoint(tx_oss_ma2_y.Text)+strtoint(tx_oss_f2_y.Text);
//mükerer kontrol
  try
    tablo_sinav.Post;
  except
    on E: EZDatabaseError do
    begin
      if pos('Duplicate entry',E.Message)>0 then
      begin
        MessageDlg('Bu kayýt daha önce girilmiþ!', mtError, [mbOK], 0);
        tablo_sinav.Cancel;
        tx_oss_ogr_no.SetFocus;
        tx_oss_ogr_no.SelectAll;
        exit;
      end
      else
      begin
        Application.ShowException(E);
        tablo_sinav.Cancel;
        Exit;
      end;
    end;
  end;
///////////////////
  tx_oss_ogr_no.Clear;
  tx_oss_adi.Clear;
  tx_oss_soyadi.Clear;
  tx_oss_sinifi.Clear;
  tx_oss_t_d.SetFocus;
  for i:=6 to 61 do
  begin
    tcxtextedit(activecontrol).Text:='0';
    SelectNext(ActiveControl,true,true);
  end;
  tx_oss_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.tx_oss_so1_dKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then SelectNext(ActiveControl,true,true);
end;

procedure TFrSinavVeriGirisi.tx_oss_f2_yKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then bt_oss_ekle.Click;
end;

procedure TFrSinavVeriGirisi.tablo_sinavAfterRefresh(DataSet: TDataSet);
begin
  sonuclar.ApplyBestFit();
end;

procedure TFrSinavVeriGirisi.sinavlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 if sinavlar.Controller.SelectedRowCount > 0 then
 begin
  tablo_sinav.Close;
  tablo_sinav.Params[0].AsInteger := tablo_sinavtanim.fieldbyname('sinav_no').asinteger;
  ara_sinav.Enabled :=false;
  tablo_sinav.open;
  ara_sinav.Enabled :=true;
  sonuclar.ApplyBestFit();
 end ;
end;

procedure TFrSinavVeriGirisi.tx_oss_t_yKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key<>#13 then exit;
 if (cb_netgiris.Checked=true) then
   tx_oss_so1_d.SetFocus
 else
   tx_oss_ta1_d.SetFocus;
end;

procedure TFrSinavVeriGirisi.sayfa_ossShow(Sender: TObject);
begin
  tx_oss_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.sayfa_sbsShow(Sender: TObject);
begin
  tx_oks_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.bt_kpss_ekleClick(Sender: TObject);
var
  enter_kod :char;
begin
//KPSS Ekleme iþlemi..
  if sinavlar.Controller.SelectedRowCount < 1 then
  begin
     messagedlg('Sýnav seçilmemiþ!',mtError, [mbOk], 0);
     Exit;
  end;
   if tx_kpss_adi.Text = '' then
   begin
     messagedlg('Öðrenci bilgileri düzgün deðil!',mtError, [mbOk], 0);
     Exit;
   end
   else if tx_kpss_donemi.Text = '' then
   begin
     messagedlg('Dönem bilgisini mutlaka girmelisiniz!',mtError, [mbOk], 0);
     tx_kpss_donemi.SetFocus;
     Exit;
   end
   else if tx_kpss_ogr_no.Text = '' then
   begin
     messagedlg('Öðrenci numarasý geçersiz!',mtError, [mbOk], 0);
     tx_kpss_ogr_no.Clear;
     tx_kpss_adi.Clear;
     tx_kpss_soyadi.Clear;
     tx_kpss_sinifi.Clear;
     Exit;
   end;
//tekrar kontrol
  enter_kod := #13;
  tx_kpss_ogr_noKeyPress(tx_kpss_ogr_no, enter_kod);
//KAyýtlarý kaydet //////////////////
  tablo_sinav.Insert;
  tablo_sinav.Fieldbyname('sinav_no').Asinteger := tablo_sinavtanim.fieldbyname('sinav_no').AsInteger;
  tablo_sinav.Fieldbyname('donemi').AsString := tx_kpss_donemi.Text;
  tablo_sinav.Fieldbyname('ogr_no').AsString := tx_kpss_ogr_no.Text;
  tablo_sinav.Fieldbyname('adi').AsString := tx_kpss_adi.Text;
  tablo_sinav.Fieldbyname('soyadi').AsString := tx_kpss_soyadi.Text;
  tablo_sinav.Fieldbyname('sinifi').AsString := tx_kpss_sinifi.Text;
  tablo_sinav.Fieldbyname('turkce_dogru').AsString := tx_kpss_t_d.Text;
  tablo_sinav.Fieldbyname('turkce_yanlis').AsString := tx_kpss_t_y.Text;
  tablo_sinav.Fieldbyname('sosyal1_dogru').AsString := tx_kpss_s_d.Text;
  tablo_sinav.Fieldbyname('sosyal1_yanlis').AsString := tx_kpss_s_y.Text;
  tablo_sinav.Fieldbyname('matematik1_dogru').AsString := tx_kpss_m_d.Text;
  tablo_sinav.Fieldbyname('matematik1_yanlis').AsString := tx_kpss_m_y.Text;
//mükerer kontrol
  try
    tablo_sinav.Post;
  except
    on E: EZDatabaseError do
    begin
      if pos('Duplicate entry',E.Message)>0 then
      begin
        MessageDlg('Bu kayýt daha önce girilmiþ!', mtError, [mbOK], 0);
        tablo_sinav.Cancel;
        tx_kpss_ogr_no.SetFocus;
        tx_kpss_ogr_no.SelectAll;
        exit;
      end
      else
      begin
        Application.ShowException(E);
        tablo_sinav.Cancel;
        Exit;
      end;
    end;
  end;
///////////////////
  tx_kpss_ogr_no.Clear;
  tx_kpss_adi.Clear;
  tx_kpss_soyadi.Clear;
  tx_kpss_sinifi.Clear;
  tx_kpss_t_d.Text := '0';
  tx_kpss_t_y.Text := '0';
  tx_kpss_s_d.Text := '0';
  tx_kpss_s_y.Text := '0';
  tx_kpss_m_d.Text := '0';
  tx_kpss_m_y.Text := '0';
  tx_kpss_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.tx_kpss_donemiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_kpss_ogr_no.SetFocus;
end;

procedure TFrSinavVeriGirisi.tx_kpss_ogr_noKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin;
    if tx_kpss_ogr_no.text = '' then
    begin
      application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
      if SOgr.Iptal = false then
        begin
          tx_kpss_ogr_no.Text := inttostr(SOgr.OgrNo);
          tx_kpss_donemi.text := SOgr.Donem;
          tablo_ogrenci.Locate('ogr_no;donemi', varArrayof([SOgr.OgrNo, SOgr.Donem]), []);
          tx_kpss_adi.Text := tablo_ogrenci.Fieldbyname('adi').Text;
          tx_kpss_soyadi.Text := tablo_ogrenci.Fieldbyname('soyadi').Text;
          tx_kpss_sinifi.Text := tablo_ogrenci.Fieldbyname('sinifi').Text;
          tx_kpss_t_d.SetFocus;
        end;
    end
    else if tx_kpss_ogr_no.Text = '3' then
    begin
      tx_kpss_sinifi.Text := 'Dýþarýdan';
      tx_kpss_adi.SetFocus;
    end
    else
      if tablo_ogrenci.Locate('ogr_no;donemi', vararrayof([tx_kpss_ogr_no.Text,tx_kpss_donemi.Text]), []) = True then
      begin
        tx_kpss_adi.Text := tablo_ogrenci.Fieldbyname('adi').Text;
        tx_kpss_soyadi.Text := tablo_ogrenci.Fieldbyname('soyadi').Text;
        tx_kpss_sinifi.Text := tablo_ogrenci.Fieldbyname('sinifi').Text;
        tx_kpss_t_d.SetFocus;
      end
      else
      begin
        messagedlg('Bu numraya ait öðrenci yok!' + chr(13) +
        'Dýþarýdan girenler için öðrenci numarasý olarak 3 yazýn.' + chr(13) + 'Öðrenci aramak için boþ býrakýp ENTER `a basýn.' , mtError, [mbOk], 0);
        tx_kpss_adi.text := '';
        tx_kpss_soyadi.text := '';
        tx_kpss_sinifi.Text := '';
        tx_kpss_ogr_no.SelectAll;
      end;
    end;
end;

procedure TFrSinavVeriGirisi.tx_kpss_adiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_kpss_soyadi.SetFocus;
 with Sender as TcxTextEdit do
 if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true);
end;

procedure TFrSinavVeriGirisi.tx_kpss_soyadiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ord(Key) = 13 then tx_kpss_t_d.SetFocus;
 Key := bkharf(Key,true);
end;

procedure TFrSinavVeriGirisi.tx_kpss_m_yKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then bt_kpss_ekleClick(bt_kpss_ekle);
end;

end.

