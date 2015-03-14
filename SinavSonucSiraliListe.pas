unit SinavSonucSiraliListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, StdCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxSplitter, Buttons, cxGroupBox,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxGridLnk,cxExportGrid4Link,ShellAPI, cxGridBandedTableView,
  cxGridDBBandedTableView, DBCtrls, cxFilterControl, dxPScxCommon, cxLabel,
  cxCheckListBox, cxLookAndFeelPainters, cxButtons;

type
  Tfr_sirali_listeler = class(TForm)
    tablo_sinavlar: TZReadOnlyQuery;
    tablo_sinav_adlari: TZReadOnlyQuery;
    ara_sinavlar: TDataSource;
    ara_sinav_adlari: TDataSource;
    GroupBox1: TGroupBox;
    gr_sinav_adlari: TcxGrid;
    sinav_adlari: TcxGridDBTableView;
    sinav_adlarisinav_tarihi: TcxGridDBColumn;
    sinav_adlarisinav_adi: TcxGridDBColumn;
    gr_sinav_adlariLevel1: TcxGridLevel;
    Panel1: TPanel;
    tablo_sinav_adlarisinav_adi: TStringField;
    tablo_sinav_adlarisinav_tarihi: TDateField;
    mn_sinavlar: TcxGridPopupMenu;
    cxSplitter1: TcxSplitter;
    gr_sinavlar: TcxGrid;
    sinavlarlgs: TcxGridDBBandedTableView;
    sinavlarlgsdonemi: TcxGridDBBandedColumn;
    sinavlarlgssinifi: TcxGridDBBandedColumn;
    sinavlarlgsogr_no: TcxGridDBBandedColumn;
    sinavlarlgsadi: TcxGridDBBandedColumn;
    sinavlarlgssoyadi: TcxGridDBBandedColumn;
    sinavlarlgsturkce_dogru: TcxGridDBBandedColumn;
    sinavlarlgsturkce_yanlis: TcxGridDBBandedColumn;
    sinavlarlgsturkce_net: TcxGridDBBandedColumn;
    sinavlarlgssosyal1_dogru: TcxGridDBBandedColumn;
    sinavlarlgssosyal1_yanlis: TcxGridDBBandedColumn;
    sinavlarlgssosyal1_net: TcxGridDBBandedColumn;
    sinavlarlgsmatematik1_dogru: TcxGridDBBandedColumn;
    sinavlarlgsmatematik1_yanlis: TcxGridDBBandedColumn;
    sinavlarlgsmatematik1_net: TcxGridDBBandedColumn;
    sinavlarlgsfen1_dogru: TcxGridDBBandedColumn;
    sinavlarlgsfen1_yanlis: TcxGridDBBandedColumn;
    sinavlarlgsfen1_net: TcxGridDBBandedColumn;
    sinavlarlgstoplam_dogru: TcxGridDBBandedColumn;
    sinavlarlgstoplam_yanlis: TcxGridDBBandedColumn;
    sinavlarlgstoplam_net: TcxGridDBBandedColumn;
    sinavlarlgspuan_1: TcxGridDBBandedColumn;
    sinavlarlgsderece_1: TcxGridDBBandedColumn;
    sinavlarlgsderece_local_1: TcxGridDBBandedColumn;
    sinavlarlgspuan_2: TcxGridDBBandedColumn;
    sinavlarlgsderece_2: TcxGridDBBandedColumn;
    sinavlarlgsderece_local_2: TcxGridDBBandedColumn;

    sinavlarkpss: TcxGridDBBandedTableView;
    sinavlarkpssdonemi: TcxGridDBBandedColumn;
    sinavlarkpsssinifi: TcxGridDBBandedColumn;
    sinavlarkpssogr_no: TcxGridDBBandedColumn;
    sinavlarkpssadi: TcxGridDBBandedColumn;
    sinavlarkpsssoyadi: TcxGridDBBandedColumn;
    sinavlarkpssturkce_dogru: TcxGridDBBandedColumn;
    sinavlarkpssturkce_yanlis: TcxGridDBBandedColumn;
    sinavlarkpssturkce_net: TcxGridDBBandedColumn;
    sinavlarkpsssosyal1_dogru: TcxGridDBBandedColumn;
    sinavlarkpsssosyal1_yanlis: TcxGridDBBandedColumn;
    sinavlarkpsssosyal1_net: TcxGridDBBandedColumn;
    sinavlarkpssmatematik1_dogru: TcxGridDBBandedColumn;
    sinavlarkpssmatematik1_yanlis: TcxGridDBBandedColumn;
    sinavlarkpssmatematik1_net: TcxGridDBBandedColumn;
    sinavlarkpsstoplam_dogru: TcxGridDBBandedColumn;
    sinavlarkpsstoplam_yanlis: TcxGridDBBandedColumn;
    sinavlarkpsstoplam_net: TcxGridDBBandedColumn;
    sinavlarkpsspuan_1: TcxGridDBBandedColumn;
    sinavlarkpssderece_1: TcxGridDBBandedColumn;
    sinavlarkpssderece_local_1: TcxGridDBBandedColumn;
    sinavlarkpsspuan_2: TcxGridDBBandedColumn;
    sinavlarkpssderece_2: TcxGridDBBandedColumn;
    sinavlarkpssderece_local_2: TcxGridDBBandedColumn;


    sinavlario: TcxGridDBBandedTableView;
    sinavlariodonemi: TcxGridDBBandedColumn;
    sinavlariosinifi: TcxGridDBBandedColumn;
    sinavlarioogr_no: TcxGridDBBandedColumn;
    sinavlarioadi: TcxGridDBBandedColumn;
    sinavlariosoyadi: TcxGridDBBandedColumn;
    sinavlarioturkce_dogru: TcxGridDBBandedColumn;
    sinavlarioturkce_yanlis: TcxGridDBBandedColumn;
    sinavlarioturkce_net: TcxGridDBBandedColumn;
    sinavlariososyal1_dogru: TcxGridDBBandedColumn;
    sinavlariososyal1_yanlis: TcxGridDBBandedColumn;
    sinavlariososyal1_net: TcxGridDBBandedColumn;
    sinavlariomatematik1_dogru: TcxGridDBBandedColumn;
    sinavlariomatematik1_yanlis: TcxGridDBBandedColumn;
    sinavlariomatematik1_net: TcxGridDBBandedColumn;
    sinavlariofen1_dogru: TcxGridDBBandedColumn;
    sinavlariofen1_yanlis: TcxGridDBBandedColumn;
    sinavlariofen1_net: TcxGridDBBandedColumn;
    sinavlariotoplam_dogru: TcxGridDBBandedColumn;
    sinavlariotoplam_yanlis: TcxGridDBBandedColumn;
    sinavlariotoplam_net: TcxGridDBBandedColumn;
    sinavlariopuan_1: TcxGridDBBandedColumn;
    sinavlarioderece_1: TcxGridDBBandedColumn;
    sinavlarioderece_local_1: TcxGridDBBandedColumn;
    sinavlarioingilizce_dogru: TcxGridDBBandedColumn;
    sinavlarioingilizce_yanlis: TcxGridDBBandedColumn;
    sinavlarioingilizce_net: TcxGridDBBandedColumn;
    gr_sinavlarLevel1: TcxGridLevel;
    t_zaman: TTimer;
    dosya: TSaveDialog;
    pr_siralilisteler: TdxComponentPrinter;
    sinav_adlarisinav_no: TcxGridDBColumn;
    tablo_sinav_adlarisinav_no: TIntegerField;
    sinavlaross: TcxGridDBBandedTableView;
    sinavlarossdonemi: TcxGridDBBandedColumn;
    sinavlarosssinifi: TcxGridDBBandedColumn;
    sinavlarossogr_no: TcxGridDBBandedColumn;
    sinavlarossadi: TcxGridDBBandedColumn;
    sinavlarosssoyadi: TcxGridDBBandedColumn;
    sinavlarossturkce_dogru: TcxGridDBBandedColumn;
    sinavlarossturkce_yanlis: TcxGridDBBandedColumn;
    sinavlarossturkce_net: TcxGridDBBandedColumn;
    sinavlarosstarih1_dogru: TcxGridDBBandedColumn;
    sinavlarosstarih1_yanlis: TcxGridDBBandedColumn;
    sinavlarosstarih1_net: TcxGridDBBandedColumn;
    sinavlarosscografya_dogru: TcxGridDBBandedColumn;
    sinavlarosscografya_yanlis: TcxGridDBBandedColumn;
    sinavlarosscografya_net: TcxGridDBBandedColumn;
    sinavlarossfelsefe_dogru: TcxGridDBBandedColumn;
    sinavlarossfelsefe_yanlis: TcxGridDBBandedColumn;
    sinavlarossfelsefe_net: TcxGridDBBandedColumn;
    sinavlarosssosyal1_dogru: TcxGridDBBandedColumn;
    sinavlarosssosyal1_yanlis: TcxGridDBBandedColumn;
    sinavlarosssosyal1_net: TcxGridDBBandedColumn;
    sinavlarosscebir1_dogru: TcxGridDBBandedColumn;
    sinavlarosscebir1_yanlis: TcxGridDBBandedColumn;
    sinavlarosscebir1_net: TcxGridDBBandedColumn;
    sinavlarossgeometri1_dogru: TcxGridDBBandedColumn;
    sinavlarossgeometri1_yanlis: TcxGridDBBandedColumn;
    sinavlarossgeometri1_net: TcxGridDBBandedColumn;
    sinavlarossmatematik1_dogru: TcxGridDBBandedColumn;
    sinavlarossmatematik1_yanlis: TcxGridDBBandedColumn;
    sinavlarossmatematik1_net: TcxGridDBBandedColumn;
    sinavlarossfizik1_dogru: TcxGridDBBandedColumn;
    sinavlarossfizik1_yanlis: TcxGridDBBandedColumn;
    sinavlarossfizik1_net: TcxGridDBBandedColumn;
    sinavlarosskimya1_dogru: TcxGridDBBandedColumn;
    sinavlarosskimya1_yanlis: TcxGridDBBandedColumn;
    sinavlarosskimya1_net: TcxGridDBBandedColumn;
    sinavlarossbiyoloji1_dogru: TcxGridDBBandedColumn;
    sinavlarossbiyoloji1_yanlis: TcxGridDBBandedColumn;
    sinavlarossbiyoloji1_net: TcxGridDBBandedColumn;
    sinavlarossfen1_dogru: TcxGridDBBandedColumn;
    sinavlarossfen1_yanlis: TcxGridDBBandedColumn;
    sinavlarossfen1_net: TcxGridDBBandedColumn;
    sinavlarossedebiyat_dogru: TcxGridDBBandedColumn;
    sinavlarossedebiyat_yanlis: TcxGridDBBandedColumn;
    sinavlarossedebiyat_net: TcxGridDBBandedColumn;
    sinavlarossturkiyecografyasi_dogru: TcxGridDBBandedColumn;
    sinavlarossturkiyecografyasi_yanlis: TcxGridDBBandedColumn;
    sinavlarossturkiyecografyasi_net: TcxGridDBBandedColumn;
    sinavlarosspsikoloji_dogru: TcxGridDBBandedColumn;
    sinavlarosspsikoloji_yanlis: TcxGridDBBandedColumn;
    sinavlarosspsikoloji_net: TcxGridDBBandedColumn;
    sinavlarossedebiyatsosyal_dogru: TcxGridDBBandedColumn;
    sinavlarossedebiyatsosyal_yanlis: TcxGridDBBandedColumn;
    sinavlarossedebiyatsosyal_net: TcxGridDBBandedColumn;
    sinavlarosstarih2_dogru: TcxGridDBBandedColumn;
    sinavlarosstarih2_yanlis: TcxGridDBBandedColumn;
    sinavlarosstarih2_net: TcxGridDBBandedColumn;
    sinavlarossulkelercografyasi_dogru: TcxGridDBBandedColumn;
    sinavlarossulkelercografyasi_yanlis: TcxGridDBBandedColumn;
    sinavlarossulkelercografyasi_net: TcxGridDBBandedColumn;
    sinavlarosssosyoloji_dogru: TcxGridDBBandedColumn;
    sinavlarosssosyoloji_yanlis: TcxGridDBBandedColumn;
    sinavlarosssosyoloji_net: TcxGridDBBandedColumn;
    sinavlarossmantik_dogru: TcxGridDBBandedColumn;
    sinavlarossmantik_yanlis: TcxGridDBBandedColumn;
    sinavlarossmantik_net: TcxGridDBBandedColumn;
    sinavlarosssosyal2_dogru: TcxGridDBBandedColumn;
    sinavlarosssosyal2_yanlis: TcxGridDBBandedColumn;
    sinavlarosssosyal2_net: TcxGridDBBandedColumn;
    sinavlarosscebir2_dogru: TcxGridDBBandedColumn;
    sinavlarosscebir2_yanlis: TcxGridDBBandedColumn;
    sinavlarosscebir2_net: TcxGridDBBandedColumn;
    sinavlarossgeometri2_dogru: TcxGridDBBandedColumn;
    sinavlarossgeometri2_yanlis: TcxGridDBBandedColumn;
    sinavlarossgeometri2_net: TcxGridDBBandedColumn;
    sinavlarossmatematik2_dogru: TcxGridDBBandedColumn;
    sinavlarossmatematik2_yanlis: TcxGridDBBandedColumn;
    sinavlarossmatematik2_net: TcxGridDBBandedColumn;
    sinavlarossfizik2_dogru: TcxGridDBBandedColumn;
    sinavlarossfizik2_yanlis: TcxGridDBBandedColumn;
    sinavlarossfizik2_net: TcxGridDBBandedColumn;
    sinavlarosskimya2_dogru: TcxGridDBBandedColumn;
    sinavlarosskimya2_yanlis: TcxGridDBBandedColumn;
    sinavlarosskimya2_net: TcxGridDBBandedColumn;
    sinavlarossbiyoloji2_dogru: TcxGridDBBandedColumn;
    sinavlarossbiyoloji2_yanlis: TcxGridDBBandedColumn;
    sinavlarossbiyoloji2_net: TcxGridDBBandedColumn;
    sinavlarossfen2_dogru: TcxGridDBBandedColumn;
    sinavlarossfen2_yanlis: TcxGridDBBandedColumn;
    sinavlarossfen2_net: TcxGridDBBandedColumn;
    sinavlarosstoplam_dogru: TcxGridDBBandedColumn;
    sinavlarosstoplam_yanlis: TcxGridDBBandedColumn;
    sinavlarosstoplam_net: TcxGridDBBandedColumn;
    sinavlarosspuan_1: TcxGridDBBandedColumn;
    sinavlarossderece_1: TcxGridDBBandedColumn;
    sinavlarossderece_local_1: TcxGridDBBandedColumn;
    sinavlarosspuan_2: TcxGridDBBandedColumn;
    sinavlarossderece_2: TcxGridDBBandedColumn;
    sinavlarossderece_local_2: TcxGridDBBandedColumn;
    sinavlarosspuan_3: TcxGridDBBandedColumn;
    sinavlarossderece_3: TcxGridDBBandedColumn;
    sinavlarossderece_local_3: TcxGridDBBandedColumn;
    sinavlarosspuan_4: TcxGridDBBandedColumn;
    sinavlarossderece_4: TcxGridDBBandedColumn;
    sinavlarossderece_local_4: TcxGridDBBandedColumn;
    sinavlarosspuan_5: TcxGridDBBandedColumn;
    sinavlarossderece_5: TcxGridDBBandedColumn;
    sinavlarossderece_local_5: TcxGridDBBandedColumn;
    sinavlarosspuan_6: TcxGridDBBandedColumn;
    sinavlarossderece_6: TcxGridDBBandedColumn;
    sinavlarossderece_local_6: TcxGridDBBandedColumn;
    tablo_sinav_adlarituru: TStringField;
    sinav_adlarituru: TcxGridDBColumn;
    tablo_oku: TZReadOnlyQuery;
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
    cxGroupBox2: TcxGroupBox;
    bt_exceleaktar: TBitBtn;
    bt_yazdir: TBitBtn;
    bt_sinif_liste: TBitBtn;
    pr_siralilistelerLink1: TdxGridReportLink;
    PnlSiniflar: TPanel;
    ClbSiniflar: TcxCheckListBox;
    cxLabel1: TcxLabel;
    BtSinifYazdirTamam: TcxButton;
    Panel2: TPanel;
    BtSinifYazdirIptal: TcxButton;
    tablo_sinavlarid: TLargeintField;
    tablo_sinavlaringilizce_dogru: TIntegerField;
    tablo_sinavlaringilizce_yanlis: TIntegerField;
    tablo_sinavlaringilizce_net: TFloatField;
    tablo_sinavlarcevapturkce: TStringField;
    tablo_sinavlarcevapsos1: TStringField;
    tablo_sinavlarcevapmat1: TStringField;
    tablo_sinavlarcevapfen1: TStringField;
    tablo_sinavlarcevapedsos: TStringField;
    tablo_sinavlarcevapsos2: TStringField;
    tablo_sinavlarcevapmat2: TStringField;
    tablo_sinavlarcevapfen2: TStringField;
    tablo_sinavlarcevaping: TStringField;
    tablo_sinavlarkitapcik: TStringField;
    tablo_sinavlarbildirim: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure t_zamanTimer(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure tablo_sinavlarFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_sinav_adlariAfterScroll(DataSet: TDataSet);
    procedure bt_sinif_listeClick(Sender: TObject);
    procedure BtSinifYazdirTamamClick(Sender: TObject);
    procedure BtSinifYazdirIptalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sirali_listeler: Tfr_sirali_listeler;

implementation

uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_sirali_listeler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_sirali_listeler.FormShow(Sender: TObject);
begin
  tablo_sinav_adlari.open;
end;

procedure Tfr_sirali_listeler.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_sirali_listeler.bt_yazdirClick(Sender: TObject);
var
  i: integer;
  aview:TcxGridDBBandedTableView;
begin
  pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTitle.Clear;
  pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTitle.Add(bkmetin(Dershane.AdiKisa,1));
  if tablo_sinav_adlarituru.Text='ÖSS' then
  begin
    aview:=sinavlaross;
    pr_siralilistelerLink1.PrinterPage.ScaleMode:= smFit;
  end
  else if tablo_sinav_adlarituru.Text='OKS' then
  begin
    aview:=sinavlarlgs;
    pr_siralilistelerLink1.PrinterPage.ScaleMode:= smAdjust;
  end
  else if tablo_sinav_adlarituru.Text='KPSS' then
  begin
    aview:=sinavlarkpss;
    pr_siralilistelerLink1.PrinterPage.ScaleMode:= smAdjust;
  end
  else
  begin
    aview:=sinavlario;
    pr_siralilistelerLink1.PrinterPage.ScaleMode:= smAdjust;
  end;
  for i := 0 to aview.ColumnCount-1 do
   if aview.Columns[i].SortOrder in [soDescending,soAscending] then
   begin
    pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTitle.add(tablo_sinav_adlari.fieldbyname('sinav_tarihi').AsString +' tarihli '+ tablo_sinav_adlari.fieldbyname('sinav_adi').AsString+' sýnavý '+aview.Bands.Items[aview.Columns[i].Position.bandindex].Caption +' puan sýralý liste.');
    break;
   end;
  if pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTitle.Count<33 then
    pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTitle.Add(tablo_sinav_adlari.fieldbyname('sinav_tarihi').AsString +' - '+ tablo_sinav_adlari.fieldbyname('sinav_adi').AsString);
  pr_siralilisteler.Preview(True,nil);
end;

procedure Tfr_sirali_listeler.bt_exceleaktarClick(Sender: TObject);
begin
 dosya.Execute;
end;

procedure Tfr_sirali_listeler.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_sinavlar,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_sirali_listeler.tablo_sinavlarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  if veriler.tablo_gizli.State<>dsbrowse then exit;
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_sinavlar.fieldbyname('donemi').AsString,tablo_sinavlar.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_sirali_listeler.tablo_sinav_adlariAfterScroll(
  DataSet: TDataSet);
begin
 if sinav_adlari.Controller.SelectedRowCount > 0 then
 begin
  tablo_sinavlar.Close;
  tablo_sinavlar.Params[0].AsInteger := tablo_sinav_adlari.fieldbyname('sinav_no').AsInteger;
  tablo_sinavlar.Filtered := gizli;
  tablo_sinavlar.Open;
  ara_sinavlar.Enabled := true;
  if tablo_sinav_adlarituru.Text='ÖSS' then
  begin
   gr_sinavlarLevel1.GridView:=sinavlaross;
   sinavlaross.ApplyBestFit();
  end
  else if tablo_sinav_adlarituru.Text='OKS' then
  begin
   gr_sinavlarLevel1.GridView:=sinavlarlgs;
   sinavlarlgs.ApplyBestFit();
  end
  else if tablo_sinav_adlarituru.Text='KPSS' then
  begin
   gr_sinavlarLevel1.GridView:=sinavlarkpss;
   sinavlarkpss.ApplyBestFit();
  end
  else
  begin
   gr_sinavlarLevel1.GridView:=sinavlario;
   sinavlario.ApplyBestFit();
  end;
 end;
end;

procedure Tfr_sirali_listeler.bt_sinif_listeClick(Sender: TObject);
begin
  panel1.Enabled := false;
  PnlSiniflar.Left := Panel1.Left + (panel1.Width - PnlSiniflar.Width) div 2;
  GroupBox1.Enabled := false;
  PnlSiniflar.Visible := true;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct sinifi,(select danisman from siniflar where sinif=sinifi and donem=' + QuotedStr(AktifDonem) + ') as danisman from sinavsonuc where sinav_no='+tablo_sinav_adlarisinav_no.Text);
  tablo_oku.Open;
  ClbSiniflar.Items.Clear;
  while tablo_oku.Eof=false do
  begin
    if tablo_oku.fieldbyname('sinifi').text<>'Dýþarýdan' then
      ClbSiniflar.AddItem(tablo_oku.fieldbyname('sinifi').text);
    tablo_oku.Next;
  end;
end;

procedure Tfr_sirali_listeler.BtSinifYazdirTamamClick(Sender: TObject);
var
  metin:string;
  i:integer;
  gizle: boolean;
begin
  gizle := true;
  for i:=0 to ClbSiniflar.Count-1 do
    if ClbSiniflar.Items.Items[i].Checked then
    begin
      tablo_oku.Locate('sinifi',ClbSiniflar.Items.Items[i].Text,[]);
      tablo_sinavlar.Filter:='sinifi='+QuotedStr(ClbSiniflar.Items.Items[i].Text);
      tablo_sinavlar.Filtered:=true;
      pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTitle.Clear;
      pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTextAlignY := taTop;
      pr_siralilistelerLink1.PrinterPage.PageHeader.CenterTitle.Add(bkmetin(Dershane.AdiKisa,1)+#13+#13);
      if tablo_sinav_adlarituru.Text='ÖSS' then
        pr_siralilistelerLink1.PrinterPage.ScaleMode:= smFit
      else
        pr_siralilistelerLink1.PrinterPage.ScaleMode:= smAdjust;
      pr_siralilistelerLink1.PrinterPage.Margins.Top:= 40000;
      pr_siralilistelerLink1.PrinterPage.Header := 12700;
      pr_siralilistelerLink1.PrinterPage.PageHeader.LeftTitle.Clear;
      metin:='        Sayýn '+tablo_oku.fieldbyname('danisman').text
        +', '+#13+tablo_sinav_adlari.fieldbyname('sinav_tarihi').AsString
        +' tarihinde yapýlan '+ tablo_sinav_adlari.fieldbyname('sinav_adi').AsString
        +' sýnavýndan danýþmaný olduðunuz '+tablo_oku.fieldbyname('sinifi').text
        +' sýnýfýn almýþ olduðu'#13#10' sonuçlar aþaðýda sunulmuþtur. Bilgilerinizi ve gereðini rica ederim.';
      pr_siralilistelerLink1.PrinterPage.PageHeader.LeftTextAlignY := taCenterY;
      pr_siralilistelerLink1.PrinterPage.PageHeader.LeftTitle.Add(metin);
      pr_siralilistelerLink1.PrinterPage.PageHeader.RightTitle.Clear;
      pr_siralilistelerLink1.PrinterPage.PageHeader.RightTextAlignY := taBottom;
      metin := 'Dershane Müdürü'+stringofchar(' ',abs(length('Dershane Müdürü')-length(Dershane.mudur)));
      pr_siralilistelerLink1.PrinterPage.PageHeader.RightTitle.Add(metin);
      pr_siralilistelerLink1.PrinterPage.PageHeader.RightTitle.Add(Dershane.mudur);
      pr_siralilisteler.Print(gizle,nil);
      gizle := false;
    end;
  tablo_sinavlar.Filter:='';
  tablo_sinavlar.Filtered:=false;
  PnlSiniflar.Visible := false;
  tablo_oku.Close;
  pr_siralilistelerLink1.PrinterPage.Header:= 6350;
  pr_siralilistelerLink1.PrinterPage.Margins.Top:= 12700;
  panel1.Enabled := true;
  GroupBox1.Enabled := true;
end;

procedure Tfr_sirali_listeler.BtSinifYazdirIptalClick(Sender: TObject);
begin
  tablo_oku.Close;
  PnlSiniflar.Visible := false;
  panel1.Enabled := true;
  GroupBox1.Enabled := true;
end;

end.

