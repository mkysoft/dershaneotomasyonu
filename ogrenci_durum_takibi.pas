unit ogrenci_durum_takibi;

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
  dxPSCore, dxPSGraphicLnk, dxPSTCLnk, dxPSDBTCLnk, dxPScxGridLnk;

type
  Tfr_ogrenci_durum_takibi = class(TForm)
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gr_sinavlar: TcxGridDBTableView;
    gr_sinavlar1: TcxGridLevel;
    gr_sivlar1: TcxGrid;
    mn_sinavlar: TcxGridPopupMenu;
    gf_durum: TDBChart;
    Series1: TFastLineSeries;
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
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
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
    rp_yazdirLink1: TdxDBTeeChartReportLink;
    tablo_sinavlarogr_no: TIntegerField;
    tablo_sinavlardonemi: TStringField;
    tablo_sinavlaradi: TStringField;
    tablo_sinavlarsoyadi: TStringField;
    tablo_sinavlarturkce_dogru: TIntegerField;
    tablo_sinavlartarih_dogru: TSmallintField;
    tablo_sinavlartarih_yanlis: TSmallintField;
    tablo_sinavlartarih_net: TFloatField;
    tablo_sinavlarcografya_dogru: TSmallintField;
    tablo_sinavlarcografya_yanlis: TSmallintField;
    tablo_sinavlarcografya_net: TFloatField;
    tablo_sinavlarfelsefe_dogru: TSmallintField;
    tablo_sinavlarfelsefe_yanlis: TSmallintField;
    tablo_sinavlarfelsefe_net: TFloatField;
    tablo_sinavlarsosyal_dogru: TIntegerField;
    tablo_sinavlarmatemat_dogru: TSmallintField;
    tablo_sinavlarmatemat_yanlis: TSmallintField;
    tablo_sinavlarmatemat_net: TFloatField;
    tablo_sinavlargeometri_dogru: TSmallintField;
    tablo_sinavlargeometri_yanlis: TSmallintField;
    tablo_sinavlargeometri_net: TFloatField;
    tablo_sinavlarmatematik_dogru: TIntegerField;
    tablo_sinavlarfizik_dogru: TSmallintField;
    tablo_sinavlarfizik_yanlis: TSmallintField;
    tablo_sinavlarfizik_net: TFloatField;
    tablo_sinavlarkimya_dogru: TSmallintField;
    tablo_sinavlarkimya_yanlis: TSmallintField;
    tablo_sinavlarkimya_net: TFloatField;
    tablo_sinavlarbiyoloji_dogru: TSmallintField;
    tablo_sinavlarbiyoloji_yanlis: TSmallintField;
    tablo_sinavlarbiyoloji_net: TFloatField;
    tablo_sinavlarfen_dogru: TIntegerField;
    tablo_sinavlarsinav_adi: TStringField;
    tablo_sinavlarsinav_tarihi: TDateField;
    tablo_sinavlarturkce_yanlis: TIntegerField;
    tablo_sinavlarsosyal_yanlis: TIntegerField;
    tablo_sinavlarmatematik_yanlis: TIntegerField;
    tablo_sinavlarfen_yanlis: TIntegerField;
    tablo_sinavlarturkce_net: TFloatField;
    tablo_sinavlarsosyal_net: TFloatField;
    tablo_sinavlarmatematik_net: TFloatField;
    tablo_sinavlarfen_net: TFloatField;
    tablo_sinavlartoplam_dogru: TIntegerField;
    tablo_sinavlartoplam_yanlis: TIntegerField;
    tablo_sinavlartoplam_net: TFloatField;
    tablo_sinavlarpuan_1: TFloatField;
    tablo_sinavlarderece_1: TIntegerField;
    tablo_sinavlarpuan_2: TFloatField;
    tablo_sinavlarderece_2: TIntegerField;
    tablo_sinavlarpuan_3: TFloatField;
    tablo_sinavlarsinifi: TStringField;
    tablo_sinavlarderece_local_1: TIntegerField;
    tablo_sinavlarderece_local_2: TIntegerField;
    tablo_sinavlarderece_3: TIntegerField;
    tablo_sinavlarderece_local_3: TIntegerField;
    tablo_sinavlarid: TIntegerField;
    tablo_sinavlarturkce_soru_sayisi: TSmallintField;
    tablo_sinavlartarih_soru_sayisi: TSmallintField;
    tablo_sinavlarcografya_soru_sayisi: TSmallintField;
    tablo_sinavlarfelsefe_soru_sayisi: TSmallintField;
    tablo_sinavlarsosyal_soru_sayisi: TSmallintField;
    tablo_sinavlarmatemat_soru_sayisi: TSmallintField;
    tablo_sinavlargeometri_soru_sayisi: TSmallintField;
    tablo_sinavlarmatematik_soru_sayisi: TSmallintField;
    tablo_sinavlarfizik_soru_sayisi: TSmallintField;
    tablo_sinavlarkimya_soru_sayisi: TSmallintField;
    tablo_sinavlarbiyoloji_soru_sayisi: TSmallintField;
    tablo_sinavlarfen_soru_sayisi: TSmallintField;
    gr_sinavlarturkce_dogru: TcxGridDBColumn;
    gr_sinavlartarih_dogru: TcxGridDBColumn;
    gr_sinavlartarih_yanlis: TcxGridDBColumn;
    gr_sinavlartarih_net: TcxGridDBColumn;
    gr_sinavlarcografya_dogru: TcxGridDBColumn;
    gr_sinavlarcografya_yanlis: TcxGridDBColumn;
    gr_sinavlarcografya_net: TcxGridDBColumn;
    gr_sinavlarfelsefe_dogru: TcxGridDBColumn;
    gr_sinavlarfelsefe_yanlis: TcxGridDBColumn;
    gr_sinavlarfelsefe_net: TcxGridDBColumn;
    gr_sinavlarsosyal_dogru: TcxGridDBColumn;
    gr_sinavlarmatemat_dogru: TcxGridDBColumn;
    gr_sinavlarmatemat_yanlis: TcxGridDBColumn;
    gr_sinavlarmatemat_net: TcxGridDBColumn;
    gr_sinavlargeometri_dogru: TcxGridDBColumn;
    gr_sinavlargeometri_yanlis: TcxGridDBColumn;
    gr_sinavlargeometri_net: TcxGridDBColumn;
    gr_sinavlarmatematik_dogru: TcxGridDBColumn;
    gr_sinavlarfizik_dogru: TcxGridDBColumn;
    gr_sinavlarfizik_yanlis: TcxGridDBColumn;
    gr_sinavlarfizik_net: TcxGridDBColumn;
    gr_sinavlarkimya_dogru: TcxGridDBColumn;
    gr_sinavlarkimya_yanlis: TcxGridDBColumn;
    gr_sinavlarkimya_net: TcxGridDBColumn;
    gr_sinavlarbiyoloji_dogru: TcxGridDBColumn;
    gr_sinavlarbiyoloji_yanlis: TcxGridDBColumn;
    gr_sinavlarbiyoloji_net: TcxGridDBColumn;
    gr_sinavlarfen_dogru: TcxGridDBColumn;
    gr_sinavlarsinav_adi: TcxGridDBColumn;
    gr_sinavlarsinav_tarihi: TcxGridDBColumn;
    gr_sinavlarturkce_yanlis: TcxGridDBColumn;
    gr_sinavlarsosyal_yanlis: TcxGridDBColumn;
    gr_sinavlarmatematik_yanlis: TcxGridDBColumn;
    gr_sinavlarfen_yanlis: TcxGridDBColumn;
    gr_sinavlarturkce_net: TcxGridDBColumn;
    gr_sinavlarsosyal_net: TcxGridDBColumn;
    gr_sinavlarmatematik_net: TcxGridDBColumn;
    gr_sinavlarfen_net: TcxGridDBColumn;
    gr_sinavlartoplam_dogru: TcxGridDBColumn;
    gr_sinavlartoplam_yanlis: TcxGridDBColumn;
    gr_sinavlartoplam_net: TcxGridDBColumn;
    gr_sinavlarpuan_1: TcxGridDBColumn;
    gr_sinavlarderece_1: TcxGridDBColumn;
    gr_sinavlarpuan_2: TcxGridDBColumn;
    gr_sinavlarderece_2: TcxGridDBColumn;
    gr_sinavlarpuan_3: TcxGridDBColumn;
    gr_sinavlarderece_local_1: TcxGridDBColumn;
    gr_sinavlarderece_local_2: TcxGridDBColumn;
    gr_sinavlarderece_3: TcxGridDBColumn;
    gr_sinavlarderece_local_3: TcxGridDBColumn;
    gr_sinavlarturkce_soru_sayisi: TcxGridDBColumn;
    gr_sinavlartarih_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarcografya_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarfelsefe_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarsosyal_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarmatemat_soru_sayisi: TcxGridDBColumn;
    gr_sinavlargeometri_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarmatematik_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarfizik_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarkimya_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarbiyoloji_soru_sayisi: TcxGridDBColumn;
    gr_sinavlarfen_soru_sayisi: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_ogrenci_bulClick(Sender: TObject);
    procedure bt_ayrintili_bilgiClick(Sender: TObject);
    procedure rb_grafikClick(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_ogrenci_durum_takibi: Tfr_ogrenci_durum_takibi;

implementation
  uses AnaForm,un_dershane, ogrenci_arama, ogrenci;
{$R *.dfm}

procedure Tfr_ogrenci_durum_takibi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_ogrenci_durum_takibi.bt_ogrenci_bulClick(Sender: TObject);
begin
  secilenogr := 0;
  secilendonem := '';
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if secilenogr = 0 then Exit;
  tablo_ogrenciler.Close;
  tablo_ogrenciler.Params[0].Text := secilendonem;
  tablo_ogrenciler.Params[1].AsInteger := secilenogr;
  tablo_ogrenciler.Open;
  if pos('Ýlköðretim',tablo_ogrenciler.FieldByName('durumu').Text)>0 then
  begin
    Series1.Title:='Fen Aðýr.';
    Series2.Title:='Toplam';
    Series3.Active := false;
    gr_sinavlartoplam_dogru.Visible := true;
    gr_sinavlartoplam_yanlis.Visible := true;
    gr_sinavlartoplam_net.Visible := true;
    gr_sinavlarpuan_1.Caption := 'F.A.P';
    gr_sinavlarpuan_2.Caption := 'T.P';
    gr_sinavlarpuan_3.Visible := false;
    gr_sinavlarderece_local_1.Caption := 'F.A.L.D';
    gr_sinavlarderece_local_2.Caption := 'T.L.D';
    gr_sinavlarderece_local_3.Visible := false;
    gr_sinavlarderece_1.Caption := 'F.A.De';
    gr_sinavlarderece_2.Caption := 'T.De';
    gr_sinavlarderece_3.Visible := false;
  end
  else if (pos('Lise',tablo_ogrenciler.FieldByName('durumu').Text)>0) or (tablo_ogrenciler.FieldByName('durumu').Text = 'Mezun') then
  begin
    Series3.Active := true;
    Series1.Title:='Sayýsal';
    Series2.Title:='Sözel';
    Series3.Title:='EA';
    gr_sinavlartoplam_dogru.Visible := false;
    gr_sinavlartoplam_yanlis.Visible := false;
    gr_sinavlartoplam_net.Visible := false;
    gr_sinavlarpuan_1.Caption := 'Sa.P';
    gr_sinavlarpuan_2.Caption := 'Sö.P';
    gr_sinavlarpuan_3.Caption := 'EA.P';
    gr_sinavlarderece_local_1.Caption := 'Sa.L.D';
    gr_sinavlarderece_local_2.Caption := 'Sö.L.D';
    gr_sinavlarderece_local_3.Caption := 'EA.L.D';
    gr_sinavlarderece_1.Caption := 'Sa.De';
    gr_sinavlarderece_2.Caption := 'Sö.De';
    gr_sinavlarderece_3.Caption := 'EA.De';
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
  tablo_sinavlar.Params[0].Text := secilendonem;
  tablo_sinavlar.Params[1].AsInteger := secilenogr;
  tablo_sinavlar.Open;
  gf_durum.Title.Text.Text := tablo_ogrenciler.fieldbyname('donemi').Text+'  '
    +tablo_ogrenciler.fieldbyname('ogr_no').Text+' '
    +tablo_ogrenciler.fieldbyname('adi').Text+' '
    +tablo_ogrenciler.fieldbyname('soyadi').Text;
  tablo_notlar.Close;
  tablo_notlar.Params[0].Text := secilendonem;
  tablo_notlar.Params[1].AsInteger := secilenogr;
  tablo_notlar.Open;
  gr_sinavlar.ApplyBestFit();
//  showmessage(inttostr(tablo_ogrenciler.RecordCount));
end;

procedure Tfr_ogrenci_durum_takibi.bt_ayrintili_bilgiClick(
  Sender: TObject);
begin
  if tablo_ogrenciler.State = dsBrowse then
  begin
    kayitgoster:=true;
    application.CreateForm(Tfr_ogrenci,fr_ogrenci);
  end;
end;

procedure Tfr_ogrenci_durum_takibi.rb_grafikClick(Sender: TObject);
begin
  if rb_grafik.ItemIndex = 0 then
  begin
     Series2.Active := true;
     Series3.Active := true;
     series1.Title := 'Sayýsal';
     Series1.YValues.ValueSource := 'puan_1';
     series2.Title := 'Sözel';
     Series2.YValues.ValueSource := 'puan_2';
     series3.Title := 'EA';
     Series3.YValues.ValueSource := 'puan_3';
  end
  else
  begin
     series1.Title := 'Toplam Net';
     Series1.YValues.ValueSource := 'toplam_net';
     Series2.Active := false;
     Series3.Active := false;
  end;
end;

procedure Tfr_ogrenci_durum_takibi.bt_yazdirClick(Sender: TObject);
begin
  rp_yazdir.Preview(true);
end;

end.
