unit ogrenci_izleme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxSplitter, cxImage, cxDBEdit, cxLabel, cxDBLabel, ExtCtrls, cxContainer,
  cxTextEdit, StdCtrls, Buttons, cxCheckBox, cxGridCustomPopupMenu,
  cxGridPopupMenu, ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart,
  cxRadioGroup, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPSGraphicLnk, dxPSTCLnk, dxPSDBTCLnk, dxPScxGridLnk,
  cxGridBandedTableView, cxGridDBBandedTableView, ppDB, ppDBPipe, ppCtrls,
  ppBands, ppStrtch, ppMemo, ppVar, jpeg, ppPrnabl, ppClass, ppCache,
  ppParameter, ppComm, ppRelatv, ppProd, ppReport,ppJPeg, ppModule,
  raCodMod, ppSubRpt,clipbrd, cxCalendar, dxPScxCommon, cxGroupBox,
  cxLookAndFeelPainters, cxButtons;

type
  Tfr_ogrenci_izleme = class(TForm)
    ara_sinavlar: TDataSource;
    ara_ogrenciler: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tx_ogr_no: TcxDBTextEdit;
    tx_adi: TcxDBTextEdit;
    tx_soyadi: TcxDBTextEdit;
    Panel1: TPanel;
    Label39: TLabel;
    tx_danisman: TcxDBLabel;
    ogr_res: TcxDBImage;
    tx_donemi: TcxDBTextEdit;
    tx_sinifi: TcxDBTextEdit;
    bt_ogrenci_bul: TBitBtn;
    bt_ayrintili_bilgi: TBitBtn;
    tablo_ogrenciler: TZReadOnlyQuery;
    tablo_sinavlar: TZReadOnlyQuery;
    sayfalar: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gr_sinavlarLevel1: TcxGridLevel;
    gr_sinavlar: TcxGrid;
    mn_sinavlar: TcxGridPopupMenu;
    tablo_ogrencilerdonemi: TStringField;
    tablo_ogrencilerogr_no: TIntegerField;
    tablo_ogrencilersinifi: TStringField;
    tablo_ogrencileradi: TStringField;
    tablo_ogrencilersoyadi: TStringField;
    tablo_ogrencilerresmi: TBlobField;
    tablo_ogrencilerdurumu: TStringField;
    tablo_ogrencilerdanisman: TStringField;
    Panel2: TPanel;
    rb_grafik: TcxRadioGroup;
    bt_yazdir: TBitBtn;
    TabSheet3: TTabSheet;
    ara_notlar: TDataSource;
    tablo_notlar: TZQuery;
    tablo_notlarid: TLargeintField;
    tablo_notlardonemi: TStringField;
    tablo_notlarogr_no: TIntegerField;
    tablo_notlartarih: TDateField;
    tablo_notlarnotu: TStringField;
    gr_notlar: TcxGrid;
    vi_notlar: TcxGridDBTableView;
    vi_notlarid: TcxGridDBColumn;
    vi_notlardonemi: TcxGridDBColumn;
    vi_notlarogr_no: TcxGridDBColumn;
    vi_notlartarih: TcxGridDBColumn;
    vi_notlarnotu: TcxGridDBColumn;
    gr_notlarLevel1: TcxGridLevel;
    rp_yazdir: TdxComponentPrinter;
    TabSheet4: TTabSheet;
    tablo_devamsizlik: TZReadOnlyQuery;
    ara_devamsizlik: TDataSource;
    gr_devamsizliklar: TcxGrid;
    devamsizliklar: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tablo_devamsizlikid: TLargeintField;
    tablo_devamsizlikdonemi: TStringField;
    tablo_devamsizlikogr_no: TIntegerField;
    tablo_devamsizlikders_1: TStringField;
    tablo_devamsizlikders_2: TStringField;
    tablo_devamsizlikders_3: TStringField;
    tablo_devamsizlikders_4: TStringField;
    tablo_devamsizlikders_5: TStringField;
    tablo_devamsizlikders_6: TStringField;
    tablo_devamsizlikders_7: TStringField;
    tablo_devamsizlikders_8: TStringField;
    tablo_devamsizlikders_9: TStringField;
    tablo_devamsizlikders_10: TStringField;
    tablo_devamsizliktarih: TDateField;
    tablo_devamsizlikkullanici: TStringField;
    tablo_devamsizlikbildirim_tarihi: TDateTimeField;
    tablo_devamsizlikkiminle_gorusuldu: TStringField;
    tablo_devamsizlikaciklama: TStringField;
    devamsizliklarders_1: TcxGridDBColumn;
    devamsizliklarders_2: TcxGridDBColumn;
    devamsizliklarders_3: TcxGridDBColumn;
    devamsizliklarders_4: TcxGridDBColumn;
    devamsizliklarders_5: TcxGridDBColumn;
    devamsizliklarders_6: TcxGridDBColumn;
    devamsizliklarders_7: TcxGridDBColumn;
    devamsizliklarders_8: TcxGridDBColumn;
    devamsizliklarders_9: TcxGridDBColumn;
    devamsizliklarders_10: TcxGridDBColumn;
    devamsizliklartarih: TcxGridDBColumn;
    devamsizliklarkullanici: TcxGridDBColumn;
    devamsizliklarbildirim_tarihi: TcxGridDBColumn;
    devamsizliklarkiminle_gorusuldu: TcxGridDBColumn;
    devamsizliklaraciklama: TcxGridDBColumn;
    bt_izdos: TBitBtn;
    sinavlaross: TcxGridDBBandedTableView;
    sinavlarlgs: TcxGridDBBandedTableView;
    sinavlarkpss: TcxGridDBBandedTableView;
    gf_durum: TDBChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    rp_izleme: TppReport;
    ppParameterList1: TppParameterList;
    rd_ogr: TppDBPipeline;
    tablo_oku: TZReadOnlyQuery;
    tablo_ogrencilerveli_kodu: TIntegerField;
    rd_sinavlar: TppDBPipeline;
    rd_devam: TppDBPipeline;
    rd_not: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    rp_adi: TppDBText;
    rp_ogr_no: TppDBText;
    rp_soyadi: TppDBText;
    rp_donemi: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppLabel15: TppLabel;
    rp_ogr_resim: TppDBImage;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel12: TppLabel;
    pp_l_va: TppLabel;
    pp_l_vs: TppLabel;
    pp_l_et: TppLabel;
    pp_l_it: TppLabel;
    pp_l_ct: TppLabel;
    ppDBText2: TppDBText;
    ppaltrapordevam: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine5: TppLine;
    ppaltrapornot: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLine1: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppaltraporsinavoss: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine6: TppLine;
    ppFooterBand1: TppFooterBand;
    ppaltraporsinavlgs: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel56: TppLabel;
    ppLabel59: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel79: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppsinavlgspuan: TppImage;
    ppsinavlgsnet: TppImage;
    ppsinavosspuan: TppImage;
    ppsinavossnet: TppImage;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    tablo_sinavlarsinav_no: TIntegerField;
    tablo_sinavlarsinifi: TStringField;
    tablo_sinavlardonemi: TStringField;
    tablo_sinavlarogr_no: TIntegerField;
    tablo_sinavlaradi: TStringField;
    tablo_sinavlarsoyadi: TStringField;
    tablo_sinavlarturkce_dogru: TIntegerField;
    tablo_sinavlarturkce_yanlis: TIntegerField;
    tablo_sinavlarturkce_net: TFloatField;
    tablo_sinavlartarih1_dogru: TSmallintField;
    tablo_sinavlartarih1_yanlis: TSmallintField;
    tablo_sinavlartarih1_net: TFloatField;
    tablo_sinavlarcografya_dogru: TSmallintField;
    tablo_sinavlarcografya_yanlis: TSmallintField;
    tablo_sinavlarcografya_net: TFloatField;
    tablo_sinavlarfelsefe_dogru: TSmallintField;
    tablo_sinavlarfelsefe_yanlis: TSmallintField;
    tablo_sinavlarfelsefe_net: TFloatField;
    tablo_sinavlarsosyal1_dogru: TIntegerField;
    tablo_sinavlarsosyal1_yanlis: TIntegerField;
    tablo_sinavlarsosyal1_net: TFloatField;
    tablo_sinavlarcebir1_dogru: TSmallintField;
    tablo_sinavlarcebir1_yanlis: TSmallintField;
    tablo_sinavlarcebir1_net: TFloatField;
    tablo_sinavlargeometri1_dogru: TSmallintField;
    tablo_sinavlargeometri1_yanlis: TSmallintField;
    tablo_sinavlargeometri1_net: TFloatField;
    tablo_sinavlarmatematik1_dogru: TIntegerField;
    tablo_sinavlarmatematik1_yanlis: TIntegerField;
    tablo_sinavlarmatematik1_net: TFloatField;
    tablo_sinavlarfizik1_dogru: TSmallintField;
    tablo_sinavlarfizik1_yanlis: TSmallintField;
    tablo_sinavlarfizik1_net: TFloatField;
    tablo_sinavlarkimya1_dogru: TSmallintField;
    tablo_sinavlarkimya1_yanlis: TSmallintField;
    tablo_sinavlarkimya1_net: TFloatField;
    tablo_sinavlarbiyoloji1_dogru: TSmallintField;
    tablo_sinavlarbiyoloji1_yanlis: TSmallintField;
    tablo_sinavlarbiyoloji1_net: TFloatField;
    tablo_sinavlarfen1_dogru: TIntegerField;
    tablo_sinavlarfen1_yanlis: TIntegerField;
    tablo_sinavlarfen1_net: TFloatField;
    tablo_sinavlaredebiyat_dogru: TIntegerField;
    tablo_sinavlaredebiyat_yanlis: TIntegerField;
    tablo_sinavlaredebiyat_net: TFloatField;
    tablo_sinavlarturkiyecografyasi_dogru: TIntegerField;
    tablo_sinavlarturkiyecografyasi_yanlis: TIntegerField;
    tablo_sinavlarturkiyecografyasi_net: TFloatField;
    tablo_sinavlarpsikoloji_dogru: TIntegerField;
    tablo_sinavlarpsikoloji_yanlis: TIntegerField;
    tablo_sinavlarpsikoloji_net: TFloatField;
    tablo_sinavlaredebiyatsosyal_dogru: TIntegerField;
    tablo_sinavlaredebiyatsosyal_yanlis: TIntegerField;
    tablo_sinavlaredebiyatsosyal_net: TFloatField;
    tablo_sinavlartarih2_dogru: TIntegerField;
    tablo_sinavlartarih2_yanlis: TIntegerField;
    tablo_sinavlartarih2_net: TFloatField;
    tablo_sinavlarulkelercografyasi_dogru: TIntegerField;
    tablo_sinavlarulkelercografyasi_yanlis: TIntegerField;
    tablo_sinavlarulkelercografyasi_net: TFloatField;
    tablo_sinavlarsosyoloji_dogru: TIntegerField;
    tablo_sinavlarsosyoloji_yanlis: TIntegerField;
    tablo_sinavlarsosyoloji_net: TFloatField;
    tablo_sinavlarmantik_dogru: TIntegerField;
    tablo_sinavlarmantik_yanlis: TIntegerField;
    tablo_sinavlarmantik_net: TFloatField;
    tablo_sinavlarsosyal2_dogru: TIntegerField;
    tablo_sinavlarsosyal2_yanlis: TIntegerField;
    tablo_sinavlarsosyal2_net: TFloatField;
    tablo_sinavlarcebir2_dogru: TIntegerField;
    tablo_sinavlarcebir2_yanlis: TIntegerField;
    tablo_sinavlarcebir2_net: TFloatField;
    tablo_sinavlargeometri2_dogru: TIntegerField;
    tablo_sinavlargeometri2_yanlis: TIntegerField;
    tablo_sinavlargeometri2_net: TFloatField;
    tablo_sinavlarmatematik2_dogru: TIntegerField;
    tablo_sinavlarmatematik2_yanlis: TIntegerField;
    tablo_sinavlarmatematik2_net: TFloatField;
    tablo_sinavlarfizik2_dogru: TIntegerField;
    tablo_sinavlarfizik2_yanlis: TIntegerField;
    tablo_sinavlarfizik2_net: TFloatField;
    tablo_sinavlarkimya2_dogru: TIntegerField;
    tablo_sinavlarkimya2_yanlis: TIntegerField;
    tablo_sinavlarkimya2_net: TFloatField;
    tablo_sinavlarbiyoloji2_dogru: TIntegerField;
    tablo_sinavlarbiyoloji2_yanlis: TIntegerField;
    tablo_sinavlarbiyoloji2_net: TFloatField;
    tablo_sinavlarfen2_dogru: TIntegerField;
    tablo_sinavlarfen2_yanlis: TIntegerField;
    tablo_sinavlarfen2_net: TFloatField;
    tablo_sinavlartoplam_dogru: TIntegerField;
    tablo_sinavlartoplam_yanlis: TIntegerField;
    tablo_sinavlartoplam_net: TFloatField;
    tablo_sinavlarpuan_1: TFloatField;
    tablo_sinavlarderece_1: TIntegerField;
    tablo_sinavlarderece_local_1: TIntegerField;
    tablo_sinavlarpuan_2: TFloatField;
    tablo_sinavlarderece_2: TIntegerField;
    tablo_sinavlarderece_local_2: TIntegerField;
    tablo_sinavlarpuan_3: TFloatField;
    tablo_sinavlarderece_3: TIntegerField;
    tablo_sinavlarderece_local_3: TIntegerField;
    tablo_sinavlarpuan_4: TFloatField;
    tablo_sinavlarderece_4: TIntegerField;
    tablo_sinavlarderece_local_4: TIntegerField;
    tablo_sinavlarpuan_5: TFloatField;
    tablo_sinavlarderece_5: TIntegerField;
    tablo_sinavlarderece_local_5: TIntegerField;
    tablo_sinavlarpuan_6: TFloatField;
    tablo_sinavlarderece_6: TIntegerField;
    tablo_sinavlarderece_local_6: TIntegerField;
    tablo_sinavlarbildirim: TStringField;
    tablo_sinavlarturu: TStringField;
    tablo_sinavlarsinav_tarihi: TDateField;
    tablo_sinavlarsinav_adi: TStringField;
    sinavlarosssinav_adi: TcxGridDBBandedColumn;
    sinavlarosssinav_tarihi: TcxGridDBBandedColumn;
    sinavlarlgssinav_adi: TcxGridDBBandedColumn;
    sinavlarlgssinav_tarihi: TcxGridDBBandedColumn;
    Panel3: TPanel;
    pr_sinavsonuclari: TdxComponentPrinter;
    pr_sinavsonuclariLink1: TdxGridReportLink;
    rp_yazdirLink1: TdxDBTeeChartReportLink;
    bt_analiz_et: TcxButton;
    bt_sinavsonucyazdir: TcxButton;
    tablo_konu_analiz: TZReadOnlyQuery;
    ara_konu_analiz: TDataSource;
    sinavlaranaliz: TcxGridDBTableView;
    sinavlarlgssinav_no: TcxGridDBBandedColumn;
    sinavlarosssinav_no: TcxGridDBBandedColumn;
    tablo_konu_analizders: TStringField;
    tablo_konu_analizkonu: TStringField;
    tablo_konu_analizdurum: TStringField;
    tablo_konu_analizadet: TLargeintField;
    sinavlaranalizders: TcxGridDBColumn;
    sinavlaranalizkonu: TcxGridDBColumn;
    sinavlaranalizdurum: TcxGridDBColumn;
    sinavlaranalizadet: TcxGridDBColumn;
    ppImage1: TppImage;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppImage3: TppImage;
    sinavlarlgsColumn1: TcxGridDBBandedColumn;
    sinavlarlgsColumn2: TcxGridDBBandedColumn;
    sinavlarlgsColumn3: TcxGridDBBandedColumn;
    tablo_sinavlaringilizce_dogru: TIntegerField;
    tablo_sinavlaringilizce_yanlis: TIntegerField;
    tablo_sinavlaringilizce_net: TFloatField;
    sinavlarkpsspuan_1: TcxGridDBBandedColumn;
    sinavlarkpsspuan_2: TcxGridDBBandedColumn;
    sinavlarkpssderece_2: TcxGridDBBandedColumn;
    sinavlarkpssderece_local_2: TcxGridDBBandedColumn;
    sinavlarkpssderece_1: TcxGridDBBandedColumn;
    sinavlarkpssderece_local_1: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_ogrenci_bulClick(Sender: TObject);
    procedure bt_ayrintili_bilgiClick(Sender: TObject);
    procedure rb_grafikClick(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_izdosClick(Sender: TObject);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure ppsinavlgspuanPrint(Sender: TObject);
    procedure ppsinavosspuanPrint(Sender: TObject);
    procedure bt_sinavsonucyazdirClick(Sender: TObject);
    procedure bt_analiz_etClick(Sender: TObject);
    procedure ppImage1Print(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
  private
    GosterilenView:TcxCustomGridView;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_ogrenci_izleme: Tfr_ogrenci_izleme;

implementation
  uses functionlar,veritabani, ogrenci_arama, ogrenci;
{$R *.dfm}

procedure Tfr_ogrenci_izleme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_ogrenci_izleme.bt_ogrenci_bulClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  tablo_ogrenciler.Close;
  tablo_ogrenciler.Params[0].Text := SOgr.donem;
  tablo_ogrenciler.Params[1].AsInteger := SOgr.ogrno;
  tablo_ogrenciler.Open;
  if pos('Ýlköðretim',tablo_ogrenciler.FieldByName('durumu').Text)>0 then
  begin
    Series1.Title:='Fen Aðýr.';
    Series2.Title:='Toplam';
    Series3.Active := false;
    Series4.Active := false;
    Series5.Active := false;
    Series6.Active := false;
    Series7.Active := false;
    Series8.Active := false;
    gr_sinavlarLevel1.GridView:=sinavlarlgs;
  end
  else if (pos('Lise',tablo_ogrenciler.FieldByName('durumu').Text)>0) or (tablo_ogrenciler.FieldByName('durumu').Text = 'Mezun') then
  begin
    Series3.Active := true;
    Series4.Active := true;
    Series5.Active := true;
    Series6.Active := true;
    Series1.Title:='Sayýsal-1';
    Series2.Title:='Sözel-1';
    Series3.Title:='EA-1';
    Series4.Title:='Sayýsal-1';
    Series5.Title:='Sözel-1';
    Series6.Title:='EA-1';
    gr_sinavlarLevel1.GridView:=sinavlaross;
  end
  else
  begin
    messagedlg(tablo_ogrenciler.fieldbyname('donemi').Text+'  '
    +tablo_ogrenciler.fieldbyname('ogr_no').Text+' '
    +tablo_ogrenciler.fieldbyname('adi').Text+' '
    +tablo_ogrenciler.fieldbyname('soyadi').Text
    +' '#13#10'Öðrencinin durumu belirtilmemiþ. Öðrenci ekranýndan düzeltiniz.',mtInformation, [mbOk], 0);
    tablo_ogrenciler.Close;
    Exit;
  end;
  tablo_sinavlar.Close;
  tablo_sinavlar.Params[0].Text := SOgr.donem;
  tablo_sinavlar.Params[1].AsInteger := SOgr.ogrno;
  tablo_sinavlar.Open;
  gf_durum.Title.Text.Text := tablo_ogrenciler.fieldbyname('donemi').Text+'  '
    +tablo_ogrenciler.fieldbyname('ogr_no').Text+' '
    +tablo_ogrenciler.fieldbyname('adi').Text+' '
    +tablo_ogrenciler.fieldbyname('soyadi').Text;
  tablo_notlar.Close;
  tablo_notlar.Params[0].Text := SOgr.donem;
  tablo_notlar.Params[1].AsInteger := SOgr.ogrno;
  tablo_notlar.Open;
  TcxGridDBBandedTableView(gr_sinavlarLevel1.GridView).ApplyBestFit();
  tablo_devamsizlik.Close;
  tablo_devamsizlik.Params[0].Text := SOgr.donem;
  tablo_devamsizlik.Params[1].AsInteger := SOgr.ogrno;
  tablo_devamsizlik.Open;
  devamsizliklar.ApplyBestFit();
//  showmessage(inttostr(tablo_ogrenciler.RecordCount));
end;

procedure Tfr_ogrenci_izleme.bt_ayrintili_bilgiClick(
  Sender: TObject);
begin
  if tablo_ogrenciler.State = dsBrowse then
  begin
    SOgr.KayitGoster := true;
    SOgr.Iptal := false;
    SOgr.Donem := tx_donemi.Text;
    SOgr.OgrNo := StrToInt(tx_ogr_no.Text);
    application.CreateForm(Tfr_ogrenci,fr_ogrenci);
  end;
end;

procedure Tfr_ogrenci_izleme.rb_grafikClick(Sender: TObject);
begin
  if rb_grafik.ItemIndex = 0 then
  begin
     Series7.Active := false;
     Series8.Active := false;
     Series3.Active := false;
     Series4.Active := false;
     Series5.Active := false;
     Series6.Active := false;
     Series1.YValues.ValueSource := 'puan_1';
     Series2.YValues.ValueSource := 'puan_2';
     Series3.YValues.ValueSource := 'puan_3';
     Series4.YValues.ValueSource := 'puan_4';
     Series5.YValues.ValueSource := 'puan_5';
     Series6.YValues.ValueSource := 'puan_6';
     if (pos('Lise',tablo_ogrenciler.FieldByName('durumu').Text)>0) or (tablo_ogrenciler.FieldByName('durumu').Text = 'Mezun') then
     begin
      Series3.Active := true;
      Series4.Active := true;
      Series5.Active := true;
      Series6.Active := true;
      Series1.Title:='Sayýsal-1';
      Series2.Title:='Sözel-1';
      Series3.Title:='EA-1';
      Series4.Title:='Sayýsal-2';
      Series5.Title:='Sözel-2';
      Series6.Title:='EA-2';
     end
     else if pos('Ýlköðretim',tablo_ogrenciler.FieldByName('durumu').Text)>0 then
     begin
      Series3.Active := false;
      Series4.Active := false;
      Series5.Active := false;
      Series6.Active := false;
      Series1.Title:='Fen Aðýr.';
      Series2.Title:='Toplam';
     end;
     gf_durum.LeftAxis.Title.Caption:='Puan'
  end
  else
  begin
     if (pos('Lise',tablo_ogrenciler.FieldByName('durumu').Text)>0) or (tablo_ogrenciler.FieldByName('durumu').Text = 'Mezun') then
     begin
       Series3.Active := true;
       Series4.Active := true;
       Series5.Active := true;
       Series6.Active := true;
       Series7.Active := true;
       Series8.Active := true;
       series1.Title := 'Türkçe';
       Series1.YValues.ValueSource := 'turkce_net';
       series2.Title := 'Sosyal-1';
       Series2.YValues.ValueSource := 'sosyal1_net';
       series3.Title := 'Matematik-1';
       Series3.YValues.ValueSource := 'matematik1_net';
       series4.Title := 'Fen-1';
       Series4.YValues.ValueSource := 'fen1_net';
       series5.Title := 'Ed-Sos';
       Series5.YValues.ValueSource := 'edebiyatsosyal_net';
       series6.Title := 'Sosyal-2';
       Series6.YValues.ValueSource := 'sosyal2_net';
       series7.Title := 'Matematik-2';
       Series7.YValues.ValueSource := 'matematik2_net';
       series8.Title := 'Fen-2';
       Series8.YValues.ValueSource := 'fen2_net';
     end
     else if pos('Ýlköðretim',tablo_ogrenciler.FieldByName('durumu').Text)>0 then
     begin
       Series3.Active := true;
       Series4.Active := true;
       Series5.Active := true;
       Series6.Active := false;
       Series7.Active := false;
       Series8.Active := false;
       series1.Title := 'Türkçe';
       Series1.YValues.ValueSource := 'turkce_net';
       series2.Title := 'Sosyal';
       Series2.YValues.ValueSource := 'sosyal1_net';
       series3.Title := 'Matematik';
       Series3.YValues.ValueSource := 'matematik1_net';
       series4.Title := 'Fen';
       Series4.YValues.ValueSource := 'fen1_net';
       series5.Title := 'Toplam Net';
       Series5.YValues.ValueSource := 'toplam_net';
     end;
     gf_durum.LeftAxis.Title.Caption:='Net';
  end;
end;

procedure Tfr_ogrenci_izleme.bt_yazdirClick(Sender: TObject);
begin
  rp_yazdir.Preview(true);
end;

procedure Tfr_ogrenci_izleme.FormShow(Sender: TObject);
begin
 bt_ogrenci_bulClick(bt_ogrenci_bul);
end;

procedure Tfr_ogrenci_izleme.bt_izdosClick(Sender: TObject);
begin
  if (pos('Lise',tablo_ogrenciler.FieldByName('durumu').Text)>0) or (tablo_ogrenciler.FieldByName('durumu').Text = 'Mezun') then
  begin
    ppaltraporsinavoss.Visible:=true;
    ppaltraporsinavlgs.Visible:=false;
  end
  else if pos('Ýlköðretim',tablo_ogrenciler.FieldByName('durumu').Text)>0 then
  begin
    ppaltraporsinavlgs.Visible:=true;
    ppaltraporsinavoss.Visible:=false;
  end;      
  rp_izleme.print;
  if ppaltraporsinavoss.Visible=true then bt_sinavsonucyazdir.Click;

end;

procedure Tfr_ogrenci_izleme.ppDetailBand1BeforeGenerate(Sender: TObject);
begin
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select veli_adi,veli_soyadi,ev_telefonu,is_telefonu,gsm from veliler where veli_kodu='+tablo_ogrencilerveli_kodu.Text);
  tablo_oku.Open;
  if tablo_oku.RecordCount<1 then exit;
  pp_l_va.Caption:= tablo_oku.Fields.Fields[0].Text;
  pp_l_vs.Caption:= tablo_oku.Fields.Fields[1].Text;
  pp_l_et.Caption:= tablo_oku.Fields.Fields[2].Text;
  pp_l_it.Caption:= tablo_oku.Fields.Fields[3].Text;
  pp_l_ct.Caption:= tablo_oku.Fields.Fields[4].Text;
end;

procedure Tfr_ogrenci_izleme.ppsinavlgspuanPrint(Sender: TObject);
begin
  rb_grafik.ItemIndex:=0;
  gf_durum.CopyToClipboardBitmap;
  ppsinavlgspuan.Picture.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
  rb_grafik.ItemIndex:=1;
  gf_durum.CopyToClipboardBitmap;
  ppsinavlgsnet.Picture.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
  rb_grafik.ItemIndex:=0;
end;

procedure Tfr_ogrenci_izleme.ppsinavosspuanPrint(Sender: TObject);
begin
  rb_grafik.ItemIndex:=0;
  gf_durum.CopyToClipboardBitmap;
  ppsinavosspuan.Picture.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
  rb_grafik.ItemIndex:=1;
  gf_durum.CopyToClipboardBitmap;
  ppsinavossnet.Picture.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
  rb_grafik.ItemIndex:=0;
end;

procedure Tfr_ogrenci_izleme.bt_sinavsonucyazdirClick(Sender: TObject);
begin
  pr_sinavsonuclari.Preview(true);
end;

procedure Tfr_ogrenci_izleme.bt_analiz_etClick(Sender: TObject);
var
  sql:string;
  i:integer;
begin
  if bt_analiz_et.Caption='Seçili Sýnav(lar)ýn Konu Analizlerini Çýkart' then
  begin
    if (gr_sinavlarLevel1.GridView as TcxGridDBBandedTableView).Controller.SelectedRowCount<1 then
    begin
      MessageDlg('En az bir sýnav seçmeniz gerekir!', mtError, [mbOK], 0);
      exit;
    end;
    tablo_konu_analiz.Close;
    ara_konu_analiz.Enabled:=false;
    bt_analiz_et.Caption:='Sýnav Sonuçlarýný Göster';
    GosterilenView:= gr_sinavlarlevel1.gridview;
    sql:='';
    for i:=0 to (gr_sinavlarLevel1.GridView as TcxGridDBBandedTableView).Controller.SelectedRowCount-1 do
      sql:=sql+vartostr((gr_sinavlarLevel1.GridView as TcxGridDBBandedTableView).Controller.SelectedRecords[i].Values[2]) +',';
    sql:=copy(sql,1,length(sql)-1);
    sql:='select sinavkonu.ders,konu,'
      +'cevapkontrol(sinav_no,sinavkonu.ders,soru_no_a,'+QuotedStr(tablo_ogrencilerdonemi.Text)+','+tablo_ogrencilerogr_no.Text+') as durum,'
      +'count(cevapkontrol(sinav_no,sinavkonu.ders,soru_no_a,'+QuotedStr(tablo_ogrencilerdonemi.Text)+','+tablo_ogrencilerogr_no.Text+')) as adet'
      +' from sinavkonu join sinavkonutanim on konu_no=id where sinav_no in ('
      +sql+') group by konu,durum';
    tablo_konu_analiz.SQL.Add(sql);
    tablo_konu_analiz.Open;
    ara_konu_analiz.Enabled:=true;
    gr_sinavlarLevel1.GridView:=sinavlaranaliz;
    sinavlaranaliz.ApplyBestFit();
  end
  else
  begin
    bt_analiz_et.Caption:='Seçili Sýnav(lar)ýn Konu Analizlerini Çýkart';
    gr_sinavlarLevel1.GridView:=GosterilenView;
    GosterilenView:=nil;
  end;
end;

procedure Tfr_ogrenci_izleme.ppImage1Print(Sender: TObject);
begin
  TppImage(Sender).Picture.Assign(Dershane.Logo);
end;

procedure Tfr_ogrenci_izleme.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  Text := bkmetin(Dershane.AdiResmi,1);
end;

end.
