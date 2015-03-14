unit AnaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ExtCtrls, cxControls, DB, ZAbstractRODataset,
  ZDataset, cxGraphics, dxStatusBar, dxBar,dateutils, StdCtrls,
  cxContainer, cxListBox, ShellApi;

type
  TFrAnaForm = class(TForm)
    mn_nesne: TMainMenu;
    mn_ogrenciler: TMenuItem;
    mn_ogrenci_ekrani: TMenuItem;
    mn_numara_degitirme: TMenuItem;
    mn_sinavlar: TMenuItem;
    mn_sinav_veri_girisi: TMenuItem;
    mn_sinav_degerlendirme: TMenuItem;
    mn_sinif_listesi: TMenuItem;
    mn_sonuc_bildirim_islemleri: TMenuItem;
    mn_sirali_listeler: TMenuItem;
    mn_tanimlar: TMenuItem;
    mn_sinif_tanimlari: TMenuItem;
    mn_devamsizliklar: TMenuItem;
    mn_devamsizlik_girisi: TMenuItem;
    mn_muhasebe: TMenuItem;
    mn_gelir_gider_girisi: TMenuItem;
    mn_gelir_gider_durumu: TMenuItem;
    iconlar: TImageList;
    mn_devamsizlik_listesi: TMenuItem;
    mn_rehberlik: TMenuItem;
    mn_rehberlik_noklari: TMenuItem;
    mn_evrak_tanimlari: TMenuItem;
    mn_gorunum: TMenuItem;
    mn_arac_cubugu_ayar: TMenuItem;
    mn_pencere: TMenuItem;
    mn_tumunu_sigdir: TMenuItem;
    mn_tumunu_goster: TMenuItem;
    MnDershaneTanimlari: TMenuItem;
    tablo_oku: TZReadOnlyQuery;
    mn_gizli_ogrenciler: TMenuItem;
    mn_sifremi_degistir: TMenuItem;
    mn_kullanicilar: TMenuItem;
    mn_pratik_puan_hesabi: TMenuItem;
    mn_genel_rapor_ekrani: TMenuItem;
    durum_cubugu: TdxStatusBar;
    mn_durum_cubugu: TMenuItem;
    mn_geciken_borc_bildirimi: TMenuItem;
    N1: TMenuItem;
    mn_toplu_ogrenci_silme: TMenuItem;
    mn_hesap_kapatma: TMenuItem;
    mn_ogrenci_kopyala: TMenuItem;
    mn_program: TMenuItem;
    mn_yedek: TMenuItem;
    mn_cikis: TMenuItem;
    mn_tum_kayitlari_silme: TMenuItem;
    mn_odendi_makbuzu: TMenuItem;
    mn_sutun_basliklari: TMenuItem;
    mn_genel_rapor_ekrani2: TMenuItem;
    N3: TMenuItem;
    mn_hakkinda: TMenuItem;
    mn_yardim_konulari: TMenuItem;
    mn_kullanici_degistir: TMenuItem;
    N4: TMenuItem;
    mn_toplu_sinif_degistirme: TMenuItem;
    mn_sinav_sonucundan_sinif_atama: TMenuItem;
    MnSiniflarArasiAtama: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    mn_personel: TMenuItem;
    mn_personel_ekrani: TMenuItem;
    mn_personel_liste: TMenuItem;
    mn_sinava_girmeyenler: TMenuItem;
    mn_evrak_durumu: TMenuItem;
    mn_bakim: TMenuItem;
    mn_analizler: TMenuItem;
    arac_cubugu: TdxBarManager;
    bt_ogrenci_ekrani: TdxBarButton;
    bt_gelir_gider_girisi: TdxBarButton;
    bt_gelir_gider_durumu: TdxBarButton;
    bt_sms: TdxBarButton;
    bt_yedek: TdxBarButton;
    bt_bakim: TdxBarButton;
    mn_odeme_takibi: TMenuItem;
    mn_ogrenci_izleme: TMenuItem;
    lb_yedek: TLabel;
    Label1: TLabel;
    nd: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    nn: TLabel;
    na: TLabel;
    ns: TLabel;
    mn_gun_sonu: TMenuItem;
    bt_gun_sonu: TdxBarButton;
    N15: TMenuItem;
    mn_optik_aktarim: TMenuItem;
    mn_taksit_listesi: TMenuItem;
    N16: TMenuItem;
    mn_guncelle: TMenuItem;
    mn_grupbazindakayitlar: TMenuItem;
    N2: TMenuItem;
    mn_grup_tanimlari: TMenuItem;
    guncelle_kontrol: TTimer;
    mn_bugun_doganlar: TMenuItem;
    mn_yedek_alma_uyarisi: TMenuItem;
    mn_iletisim: TMenuItem;
    mn_ayarlar: TMenuItem;
    mn_MesajDurumlari: TMenuItem;
    mn_veliler: TMenuItem;
    mn_sms_gonder: TMenuItem;
    N17: TMenuItem;
    mn_ayarlar_sms: TMenuItem;
    mn_ayarlar_eposta: TMenuItem;
    mn_ayarlar_faks: TMenuItem;
    bt_mesaj: TdxBarButton;
    mn_yardim: TMenuItem;
    N18: TMenuItem;
    mn_www_mkysoft_com: TMenuItem;
    mn_yapilan_islemler: TMenuItem;
    mn_sinav_tanimlari: TMenuItem;
    mn_konu_tanimlari: TMenuItem;
    mn_konu_analizi: TMenuItem;
    N19: TMenuItem;
    mn_data_aktarim: TMenuItem;
    procedure mn_ogrenci_ekraniClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mn_sinav_veri_girisiClick(Sender: TObject);
    procedure mn_sinav_degerlendirmeClick(Sender: TObject);
    procedure mn_gelir_gider_girisiClick(Sender: TObject);
    procedure mn_gelir_gider_durumuClick(Sender: TObject);
    procedure mn_sinif_tanimlariClick(Sender: TObject);
    procedure mn_devamsizlik_girisiClick(Sender: TObject);
    procedure mn_devamsizlik_listesiClick(Sender: TObject);
    procedure mn_rehberlik_noklariClick(Sender: TObject);
    procedure mn_evrak_tanimlariClick(Sender: TObject);
    procedure mn_arac_cubugu_ayarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mn_tumunu_sigdirClick(Sender: TObject);
    procedure mn_tumunu_gosterClick(Sender: TObject);
    procedure mn_sirali_listelerClick(Sender: TObject);
    procedure mn_sonuc_bildirim_islemleriClick(Sender: TObject);
    procedure MnDershaneTanimlariClick(Sender: TObject);
    procedure mn_sinif_listesiClick(Sender: TObject);
    procedure mn_tanimlarClick(Sender: TObject);
    procedure mn_gizli_ogrencilerClick(Sender: TObject);
    procedure mn_sifremi_degistirClick(Sender: TObject);
    procedure mn_kullanicilarClick(Sender: TObject);
    procedure mn_pratik_puan_hesabiClick(Sender: TObject);
    procedure mn_genel_rapor_ekraniClick(Sender: TObject);
    procedure mn_durum_cubuguClick(Sender: TObject);
    procedure mn_numara_degitirmeClick(Sender: TObject);
    procedure mn_geciken_borc_bildirimiClick(Sender: TObject);
    procedure mn_toplu_ogrenci_silmeClick(Sender: TObject);
    procedure mn_ogrenci_izlemeClick(Sender: TObject);
    procedure mn_hesap_kapatmaClick(Sender: TObject);
    procedure mn_ogrenci_kopyalaClick(Sender: TObject);
    procedure mn_cikisClick(Sender: TObject);
    procedure mn_yedekClick(Sender: TObject);
    procedure mn_tum_kayitlari_silmeClick(Sender: TObject);
    procedure mn_odendi_makbuzuClick(Sender: TObject);
    procedure mn_sutun_basliklariClick(Sender: TObject);
    procedure mn_hakkindaClick(Sender: TObject);
    procedure mn_yardim_konulariClick(Sender: TObject);
    procedure mn_kullanici_degistirClick(Sender: TObject);
    procedure mn_toplu_sinif_degistirmeClick(Sender: TObject);
    procedure mn_sinav_sonucundan_sinif_atamaClick(Sender: TObject);
    procedure MnSiniflarArasiAtamaClick(Sender: TObject);
    procedure mn_sinava_girmeyenlerClick(Sender: TObject);
    procedure mn_personel_ekraniClick(Sender: TObject);
    procedure mn_evrak_durumuClick(Sender: TObject);
    procedure mn_bakimClick(Sender: TObject);
    procedure mn_odeme_takibiClick(Sender: TObject);
    procedure mn_gun_sonuClick(Sender: TObject);
    procedure mn_optik_aktarimClick(Sender: TObject);
    procedure mn_taksit_listesiClick(Sender: TObject);
    procedure mn_guncelleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mn_grupbazindakayitlarClick(Sender: TObject);
    procedure mn_grup_tanimlariClick(Sender: TObject);
    procedure guncelle_kontrolTimer(Sender: TObject);
    procedure mn_bugun_doganlarClick(Sender: TObject);
    procedure mn_yedek_alma_uyarisiClick(Sender: TObject);
    procedure mn_velilerClick(Sender: TObject);
    procedure mn_MesajGonderClick(Sender: TObject);
    procedure mn_ayarlar_smsClick(Sender: TObject);
    procedure mn_MesajDurumlariClick(Sender: TObject);
    procedure mn_ayarlar_epostaClick(Sender: TObject);
    procedure mn_www_mkysoft_comClick(Sender: TObject);
    procedure mn_yapilan_islemlerClick(Sender: TObject);
    procedure mn_sinav_tanimlariClick(Sender: TObject);
    procedure mn_konu_tanimlariClick(Sender: TObject);
    procedure mn_konu_analiziClick(Sender: TObject);
    procedure GizliVeYetkiKontrolleri;
    procedure mn_pencereClick(Sender: TObject);
    procedure mn_pencere_MnPencereAcikClick(Sender: TObject);
    procedure mn_data_aktarimClick(Sender: TObject);
  private
    { Private declarations }
  public

end;

var
  FrAnaForm: TFrAnaForm;
implementation


{$R *.dfm}
uses ogrenci, Giris, SinavVeriGirisi, SinavDegerlendirme,
  gelir_gider_girisi, un_gelir_gider_durumu, SinifTanimlari,
  un_devamsizlik_girisi, un_devamsizlik_listesi, un_rehberlik_notlari,
  un_evrak_tanimlari,functionlar, SinavSonucSiraliListe,
  SinavSonucBildirimIslemleri,veritabani, SinifListesi,
  gizli_ogrenciler, un_sifremi_degistir, un_kullanicilar,
  un_pratik_puan_hesabi, genel_rapor_ekrani,
  OgrenciNumaraDegistir, un_geciken_borc_bildirimi, un_toplu_ogrenci_silme,
  ogrenci_izleme,un_hesap_kapatma, ogrenci_kopyala,Yedek,
  un_tum_kayitlari_silme,un_odendi_makbuzu,
  un_sutun_basliklari, un_hakkinda, TopluSinifDegistirme,
  SinavSonucundanSinifAtama, SiniflarArasiAtama, SinavaGirmeyenler,
  un_personel, un_evrak_durumu,Bakim, un_odeme_takibi,un_taksit_listesi,
  optikaktarim, grup_bazinda_kayitlar, grup_tanimlari,
  veliler, MesajGonder, sms_ayarlari, MesajDurumlari, eposta_ayarlari,
  yapilan_islemler, sinav_tanimlari, konu_tanimlari, konu_analizi,
  DershaneTanimlari, DataAktarim;

procedure TFrAnaForm.mn_ogrenci_ekraniClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci,fr_ogrenci);
end;

procedure TFrAnaForm.FormShow(Sender: TObject);
var
  deger:string;
begin
  application.CreateForm(Tfr_giris, fr_giris);
  fr_giris.showmodal;
  if veriler.data_dershane.Connected = false then exit;
//Araç Çubuðu
  deger := reg_oku('Araç Çubuðu');
  if deger = '' then
  begin
    reg_yaz('Araç Çubuðu','1');
    deger := '1';
  end;
  if deger = '1' then
    mn_arac_cubugu_ayar.Checked := true
  else
  begin
    mn_arac_cubugu_ayar.Checked := false;
    arac_cubugu.BarByCaption('Ana Çubuk').Visible := false;
  end;
//Bugün doðanlar
  deger := reg_oku('Bugün Doðanlar');
  if deger = '' then
  begin
    reg_yaz('Bugün Doðanlar','1');
    deger := '1';
  end;
  if deger = '1' then
    mn_bugun_doganlar.Checked := true
  else
    mn_bugun_doganlar.Checked := false;
  mn_bugun_doganlarClick(mn_bugun_doganlar);
//Yedek Alma Uyarýsý
  deger := reg_oku('Yedek Alma Uyarýsý');
  if deger = '' then
  begin
    reg_yaz('Yedek Alma Uyarýsý','1');
    deger := '1';
  end;
  if deger = '1' then
    mn_yedek_alma_uyarisi.Checked := true
  else
    mn_yedek_alma_uyarisi.Checked := false;
  mn_yedek_alma_uyarisiClick(mn_yedek_alma_uyarisi);
//Durum çubuðu
  deger := reg_oku('Durum Çubuðu');
  if deger = '' then
  begin
    reg_yaz('Durum Çubuðu','1');
    deger := '1';
  end;
  if deger='1' then
  mn_durum_cubugu.Checked:=true
  else
  begin
    mn_durum_cubugu.Checked:=false;
    durum_cubugu.Hide;
  end;
  durum_cubugu.Panels[1].Text:='Kullanýcý : '+veriler.data_dershane.User;
  durum_cubugu.Panels[2].Text:='Ana Makine : '+veriler.data_dershane.HostName;
  durum_cubugu.Panels[3].Text:='Versiyon : '+versiyon;
  durum_cubugu.Panels[4].Text:='Veri Tabaný : '+veriler.data_dershane.Database;
  durum_cubugu.Panels[5].Text := Dershane.AdiKisa;
  if ana_bilgisayar='localhost' then
  begin
    mn_yedek.Visible:=true;
    mn_guncelle.Visible:=true;
    guncelle_kontrol.Enabled:=true;
  end;
  GizliVeYetkiKontrolleri;
end;

procedure TFrAnaForm.GizliVeYetkiKontrolleri;
begin
//gizli durumuna baðlý yetkilendirmeler
  if gizli = true then
  begin
    mn_genel_rapor_ekrani.Visible := false;
    mn_genel_rapor_ekrani2.Visible := false;
    mn_yapilan_islemler.Visible := false;
    mn_personel.Visible := false;
    mn_odeme_takibi.Visible := false;
    mn_grupbazindakayitlar.Visible := false;
  end
  else
  begin
    mn_genel_rapor_ekrani.Visible := true;
    mn_genel_rapor_ekrani2.Visible := true;
    mn_personel.Visible := true;
    if yetki < 51 then
     begin
      mn_odeme_takibi.Visible := true;
      mn_taksit_listesi.Visible := true;
      mn_yapilan_islemler.Visible := true;
      mn_grupbazindakayitlar.Visible := true;
     end
    else
     begin
      mn_odeme_takibi.Visible := false;
      mn_taksit_listesi.Visible := false;
      mn_grupbazindakayitlar.Visible := false;
     end;
  end;
//yetkilendirmeler
  if yetki < 51 then
  begin
    mn_ayarlar.Enabled:=true;
    mn_tum_kayitlari_silme.Visible := true;
    MnDershaneTanimlari.Enabled := True;
  end
  else
  begin
    mn_ayarlar.Enabled:=false;
    mn_tum_kayitlari_silme.Visible := false;
    MnDershaneTanimlari.Enabled := False;
  end;
end;

procedure TFrAnaForm.mn_sinav_veri_girisiClick(Sender: TObject);
begin
  application.CreateForm(TFrSinavVeriGirisi,FrSinavVeriGirisi);
end;

procedure TFrAnaForm.mn_sinav_degerlendirmeClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sinav_degerlendirme,fr_sinav_degerlendirme);
end;

procedure TFrAnaForm.mn_gelir_gider_girisiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_gelir_gider_girisi,fr_gelir_gider_girisi);
end;

procedure TFrAnaForm.mn_gelir_gider_durumuClick(Sender: TObject);
begin
  application.CreateForm(Tfr_gelir_gider_durumu,fr_gelir_gider_durumu);
end;

procedure TFrAnaForm.mn_sinif_tanimlariClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sinif_tanimlari,fr_sinif_tanimlari);
end;

procedure TFrAnaForm.mn_devamsizlik_girisiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_devamsizlik_girisi,fr_devamsizlik_girisi);
end;

procedure TFrAnaForm.mn_devamsizlik_listesiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_devamsizlik_listesi,fr_devamsizlik_listesi);
end;

procedure TFrAnaForm.mn_rehberlik_noklariClick(Sender: TObject);
begin
  application.CreateForm(Tfr_rehberlik_notlari,fr_rehberlik_notlari);
end;

procedure TFrAnaForm.mn_evrak_tanimlariClick(Sender: TObject);
begin
  application.CreateForm(Tfr_evrak_tanimlari,fr_evrak_tanimlari);
end;

procedure TFrAnaForm.mn_sirali_listelerClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sirali_listeler,fr_sirali_listeler);
end;

procedure TFrAnaForm.mn_sonuc_bildirim_islemleriClick(Sender: TObject);
begin
  application.CreateForm(TFrSonucBildirimIslemleri,FrSonucBildirimIslemleri);
end;

procedure TFrAnaForm.mn_sinif_listesiClick(Sender: TObject);
begin
  application.CreateForm(TFrSinifListesi,FrSinifListesi);
end;

procedure TFrAnaForm.mn_gizli_ogrencilerClick(Sender: TObject);
begin
  application.CreateForm(Tfr_gizli_ogrenciler,fr_gizli_ogrenciler);
end;

procedure TFrAnaForm.mn_sifremi_degistirClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sifremi_degistir,fr_sifremi_degistir);
end;

procedure TFrAnaForm.mn_kullanicilarClick(Sender: TObject);
begin
  application.CreateForm(Tfr_kullanicilar,fr_kullanicilar);
end;

procedure TFrAnaForm.mn_pratik_puan_hesabiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_pratik_puan_hesabi,fr_pratik_puan_hesabi);
end;

procedure TFrAnaForm.mn_genel_rapor_ekraniClick(Sender: TObject);
begin
  application.CreateForm(Tfr_genel_rapor_ekrani,fr_genel_rapor_ekrani);
end;

procedure TFrAnaForm.mn_numara_degitirmeClick(Sender: TObject);
begin
  application.CreateForm(TFrOgrenciNumaraDegistir,FrOgrenciNumaraDegistir);
end;

procedure TFrAnaForm.mn_geciken_borc_bildirimiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_geciken_borc_bildirimi,fr_geciken_borc_bildirimi);
end;

procedure TFrAnaForm.mn_toplu_ogrenci_silmeClick(Sender: TObject);
begin
  application.CreateForm(Tfr_toplu_ogrenci_silme,fr_toplu_ogrenci_silme);
end;

procedure TFrAnaForm.mn_ogrenci_izlemeClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_izleme,fr_ogrenci_izleme);
end;

procedure TFrAnaForm.mn_hesap_kapatmaClick(Sender: TObject);
begin
  application.CreateForm(Tfr_hesap_kapatma,fr_hesap_kapatma);
end;

procedure TFrAnaForm.mn_ogrenci_kopyalaClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_kopyala,fr_ogrenci_kopyala);
end;

procedure TFrAnaForm.mn_yedekClick(Sender: TObject);
begin
  application.CreateForm(TFrYedek,FrYedek);
end;

procedure TFrAnaForm.mn_tum_kayitlari_silmeClick(Sender: TObject);
begin
  application.CreateForm(Tfr_tum_kayitlari_silme,fr_tum_kayitlari_silme);
end;

procedure TFrAnaForm.mn_odendi_makbuzuClick(Sender: TObject);
begin
  application.CreateForm(Tfr_odendi_makbuzu,fr_odendi_makbuzu);
end;

procedure TFrAnaForm.mn_sutun_basliklariClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sutun_basliklari,fr_sutun_basliklari);
end;

procedure TFrAnaForm.mn_hakkindaClick(Sender: TObject);
begin
  application.CreateForm(Tfr_hakkinda,fr_hakkinda);
end;

procedure TFrAnaForm.mn_yardim_konulariClick(Sender: TObject);
begin
  Application.HelpCommand(HELP_FINDER,0);
end;

procedure TFrAnaForm.mn_toplu_sinif_degistirmeClick(Sender: TObject);
begin
  application.CreateForm(Tfr_toplu_sinif_degistirme,fr_toplu_sinif_degistirme);
end;


procedure TFrAnaForm.mn_sinav_sonucundan_sinif_atamaClick(
  Sender: TObject);
begin
  application.CreateForm(TFrSinavSonucundanSinifAtama,FrSinavSonucundanSinifAtama);
end;

procedure TFrAnaForm.MnSiniflarArasiAtamaClick(Sender: TObject);
begin
  application.CreateForm(TFrSiniflarArasiAtama,FrSiniflarArasiAtama);
end;

procedure TFrAnaForm.mn_sinava_girmeyenlerClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sinava_girmeyenler,fr_sinava_girmeyenler);
end;

procedure TFrAnaForm.mn_personel_ekraniClick(Sender: TObject);
begin
  application.CreateForm(Tfr_personel,fr_personel);
end;

procedure TFrAnaForm.mn_evrak_durumuClick(Sender: TObject);
begin
  application.CreateForm(Tfr_evrak_durumu,fr_evrak_durumu);
end;

procedure TFrAnaForm.mn_bakimClick(Sender: TObject);
begin
  application.CreateForm(TFrBakim,FrBakim);
end;

procedure TFrAnaForm.mn_kullanici_degistirClick(Sender: TObject);
var
i:integer;
begin
  for i:= 0 to FrAnaForm.MDIChildCount-1 do
    FrAnaForm.MDIChildren[i].Close;
  veriler.data_dershane.Disconnect;
  FormShow(FrAnaForm);
end;

procedure TFrAnaForm.mn_arac_cubugu_ayarClick(Sender: TObject);
begin
  if mn_arac_cubugu_ayar.Checked = True then
    arac_cubugu.BarByCaption('Ana Çubuk').Visible := true
  else
    arac_cubugu.BarByCaption('Ana Çubuk').Visible := false;
end;

procedure TFrAnaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mn_arac_cubugu_ayar.Checked = true then
    reg_yaz('Araç Çubuðu','1')
  else
    reg_yaz('Araç Çubuðu','0');
  if mn_durum_cubugu.Checked = true then
    reg_yaz('Durum Çubuðu','1')
  else
    reg_yaz('Durum Çubuðu','0');
  if mn_bugun_doganlar.Checked = true then
    reg_yaz('Bugün Doðanlar','1')
  else
    reg_yaz('Bugün Doðanlar','0');
  if mn_yedek_alma_uyarisi.Checked = true then
    reg_yaz('Yedek Alma Uyarýsý','1')
  else
    reg_yaz('Yedek Alma Uyarýsý','0');
  veriler.data_dershane.Disconnect;
  veriler.data_kok.Disconnect;
end;

procedure TFrAnaForm.mn_tumunu_sigdirClick(Sender: TObject);
begin
  self.Tile;
end;

procedure TFrAnaForm.mn_tumunu_gosterClick(Sender: TObject);
begin
  self.Cascade;
end;

procedure TFrAnaForm.MnDershaneTanimlariClick(Sender: TObject);
begin
  Application.CreateForm(TFrDershaneTanimlari, FrDershaneTanimlari);
end;

procedure TFrAnaForm.mn_tanimlarClick(Sender: TObject);
begin
  if (ShiftDown = True) and (yetki<200) then
    mn_gizli_ogrenciler.Visible := true
  else
    mn_gizli_ogrenciler.Visible := false;
end;

procedure TFrAnaForm.mn_durum_cubuguClick(Sender: TObject);
begin
  if mn_durum_cubugu.Checked = True then
    durum_cubugu.Show
  else
    durum_cubugu.Hide;
end;

procedure TFrAnaForm.mn_cikisClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrAnaForm.mn_odeme_takibiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_odeme_takibi,fr_odeme_takibi);
end;

procedure TFrAnaForm.mn_taksit_listesiClick(Sender: TObject);
begin
  application.CreateForm(Tfr_taksit_listesi,fr_taksit_listesi);
end;

procedure TFrAnaForm.mn_gun_sonuClick(Sender: TObject);
begin
  application.CreateForm(Tfr_gelir_gider_durumu,fr_gelir_gider_durumu);
  fr_gelir_gider_durumu.cm_tar_kis.Text := 'Eþit';
  fr_gelir_gider_durumu.tx_tar_bas.Enabled := true;
  fr_gelir_gider_durumu.tx_tar_bas.Date := now();
  fr_gelir_gider_durumu.bt_gosterClick(fr_gelir_gider_durumu.bt_goster);
end;

procedure TFrAnaForm.mn_optik_aktarimClick(Sender: TObject);
begin
  application.CreateForm(Tfr_optikaktarim,fr_optikaktarim);
end;

procedure TFrAnaForm.mn_guncelleClick(Sender: TObject);
begin
//  application.CreateForm(Tfr_guncelle,fr_guncelle);
end;

procedure TFrAnaForm.FormCreate(Sender: TObject);
begin
  if UpperCase(ExtractFileName(Application.ExeName))='DERSHANEOTOMASYONUYENI.EXE' then
  begin
    while FileExists(extractfilepath(Application.ExeName)+'DershaneOtomasyonu.exe')=true do
    begin
      deletefile(extractfilepath(Application.ExeName)+'DershaneOtomasyonu.exe');
      sleep(100);
    end;
    CopyFile(pchar(Application.exename),PCHAR(extractfilepath(Application.ExeName)+'DershaneOtomasyonu.exe'),true);
    WinExec(pchar(extractfilepath(Application.ExeName)+'DershaneOtomasyonu.exe'),0);
    Application.Terminate;
    Exit;
  end;
  if FileExists(extractfilepath(Application.ExeName)+'DershaneOtomasyonuYeni.exe')=true and (UpperCase(ExtractFileName(Application.ExeName))='DERSHANEOTOMASYONU.EXE') then
  begin
    while FileExists(extractfilepath(Application.ExeName)+'DershaneOtomasyonuYeni.exe')=true do
    begin
      deletefile(extractfilepath(Application.ExeName)+'DershaneOtomasyonuYeni.exe');
      sleep(100);
    end;
  end;
end;

procedure TFrAnaForm.mn_grupbazindakayitlarClick(Sender: TObject);
begin
  application.CreateForm(Tfr_grup_bazinda_kayitlar,fr_grup_bazinda_kayitlar);
end;

procedure TFrAnaForm.mn_grup_tanimlariClick(Sender: TObject);
begin
  application.CreateForm(Tfr_grup_tanimlari,fr_grup_tanimlari);
end;

procedure TFrAnaForm.guncelle_kontrolTimer(Sender: TObject);
begin
//  try
//    guncelle_kontrol.Enabled:=false;
//    fr_guncelle.kontrol;
//  except
//    exit;
//  end;
end;

procedure TFrAnaForm.mn_bugun_doganlarClick(Sender: TObject);
begin
  if mn_bugun_doganlar.Checked=true then
  begin
    Label1.Visible:=true;
    Label3.Visible:=true;
    Label4.Visible:=true;
    Label5.Visible:=true;
    Label7.Visible:=true;
    nd.Visible:=true;
    nn.Visible:=true;
    na.Visible:=true;
    ns.Visible:=true;
    tablo_oku.Close;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select donemi,ogr_no,sinifi,concat_ws('' '',adi,soyadi) as adsoyad FROM ogrenciler WHERE month(dogum_tarihi)=month(now()) AND dayofmonth(dogum_tarihi)=dayofmonth(now()) ');
    tablo_oku.SQL.Add('and donemi=if(month(now())>6,concat_ws(''-'',year(now()),year(now())+1),concat_ws(''-'',year(now())-1,year(now())))');
    tablo_oku.Open;
    if tablo_oku.RecordCount > 0 then
    while tablo_oku.Eof = false do
    begin
     nd.Caption := nd.Caption+tablo_oku.fieldbyname('donemi').Text+#13;
     nn.Caption := nn.Caption+tablo_oku.fieldbyname('ogr_no').Text+#13;
     na.Caption := na.Caption+tablo_oku.fieldbyname('adsoyad').Text+#13;
     ns.Caption := ns.Caption+tablo_oku.fieldbyname('sinifi').Text+#13;
     tablo_oku.Next;
    end;
    tablo_oku.Close;
    tablo_oku.SQL.Clear;
  end
  else
  begin
    Label1.Visible:=false;
    Label3.Visible:=false;
    Label4.Visible:=false;
    Label5.Visible:=false;
    Label7.Visible:=false;
    nd.Visible:=false;
    nn.Visible:=false;
    na.Visible:=false;
    ns.Visible:=false;
  end;
end;

procedure TFrAnaForm.mn_yedek_alma_uyarisiClick(Sender: TObject);
begin
  if mn_yedek_alma_uyarisi.Checked=true then
  begin
    lb_yedek.Visible:=true;
    if DaysBetween(now,yedek_tarih) > 0 then
      lb_yedek.Caption := inttostr(DaysBetween(now,yedek_tarih))+' gün önce yedek aldýnýz.'#13'Yedek almayý unutmayýnýz.';
  end
  else
    lb_yedek.Visible:=false;
end;

procedure TFrAnaForm.mn_velilerClick(Sender: TObject);
begin
  application.CreateForm(Tfr_veliler,fr_veliler);
end;

procedure TFrAnaForm.mn_MesajGonderClick(Sender: TObject);
begin
  application.CreateForm(TFrMesajGonder,FrMesajGonder);
end;

procedure TFrAnaForm.mn_ayarlar_smsClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sms_ayarlari,fr_sms_ayarlari);
end;

procedure TFrAnaForm.mn_MesajDurumlariClick(Sender: TObject);
begin
  application.CreateForm(TFrMesajDurumlari,FrMesajDurumlari);
end;

procedure TFrAnaForm.mn_ayarlar_epostaClick(Sender: TObject);
begin
  application.CreateForm(Tfr_eposta_ayarlari,fr_eposta_ayarlari);
end;

procedure TFrAnaForm.mn_www_mkysoft_comClick(Sender: TObject);
begin
  ShellExecute(0,'open','http://www.mkysoft.com','','',SW_SHOWNORMAL);
end;

procedure TFrAnaForm.mn_yapilan_islemlerClick(Sender: TObject);
begin
  application.CreateForm(Tfr_yapilan_islemler,fr_yapilan_islemler);
end;

procedure TFrAnaForm.mn_sinav_tanimlariClick(Sender: TObject);
begin
  application.CreateForm(Tfr_sinav_tanimlari,fr_sinav_tanimlari);
end;

procedure TFrAnaForm.mn_konu_tanimlariClick(Sender: TObject);
begin
  application.CreateForm(Tfr_konu_tanimlari,fr_konu_tanimlari);
end;

procedure TFrAnaForm.mn_konu_analiziClick(Sender: TObject);
begin
  application.CreateForm(Tfr_konu_analizi,fr_konu_analizi);
end;

procedure TFrAnaForm.mn_pencereClick(Sender: TObject);
var
  i:integer;
  MnPencereAcik:TMenuItem;
begin
  while mn_pencere.Count > 2 do
    mn_pencere.Items[mn_pencere.Count-1].Free;
  for i:=0 to FrAnaForm.MDIChildCount-1 do
  begin
    MnPencereAcik:=TMenuItem.Create(nil);
    MnPencereAcik.Name:='mn_pencere_'+FrAnaForm.MDIChildren[i].Name;
    MnPencereAcik.Caption := FrAnaForm.MDIChildren[i].Caption;
    MnPencereAcik.OnClick := mn_pencere_MnPencereAcikClick;
    mn_pencere.Add(MnPencereAcik);
  end;
end;

procedure TFrAnaForm.mn_pencere_MnPencereAcikClick(Sender: TObject);
var
  nesneadi:string;
  i:integer;
begin
  nesneadi := (Sender as TMenuItem).Name;
  nesneadi := copy(nesneadi,12,length(nesneadi)-11);
  for i:=0 to FrAnaForm.MDIChildCount-1 do
    if FrAnaForm.MDIChildren[i].Name = nesneadi then
    begin
      FrAnaForm.MDIChildren[i].WindowState:= wsMaximized;
      break;
    end;
end;

procedure TFrAnaForm.mn_data_aktarimClick(Sender: TObject);
begin
  application.CreateForm(TFrDataAktarim,FrDataAktarim);
end;

end.
