program DershaneOtomasyonu;

{%ToDo 'DershaneOtomasyonu.todo'}

uses
  Forms,
  SysUtils,
  Giris in 'Giris.pas' {fr_giris},
  AnaForm in 'AnaForm.pas' {FrAnaForm},
  ogrenci in 'ogrenci.pas' {fr_ogrenci},
  un_veli_sec in 'un_veli_sec.pas' {fr_veli_sec},
  ogrenci_arama in 'ogrenci_arama.pas' {fr_ogrenci_arama},
  SinavVeriGirisi in 'SinavVeriGirisi.pas' {FrSinavVeriGirisi},
  SinavDegerlendirme in 'SinavDegerlendirme.pas' {fr_sinav_degerlendirme},
  gelir_gider_girisi in 'gelir_gider_girisi.pas' {fr_gelir_gider_girisi},
  veritabani in 'veritabani.pas' {veriler: TDataModule},
  functionlar in 'functionlar.pas',
  un_gelir_gider_durumu in 'un_gelir_gider_durumu.pas' {fr_gelir_gider_durumu},
  SinifTanimlari in 'SinifTanimlari.pas' {fr_sinif_tanimlari},
  un_devamsizlik_girisi in 'un_devamsizlik_girisi.pas' {fr_devamsizlik_girisi},
  un_devamsizlik_listesi in 'un_devamsizlik_listesi.pas' {fr_devamsizlik_listesi},
  un_rehberlik_notlari in 'un_rehberlik_notlari.pas' {fr_rehberlik_notlari},
  un_evrak_tanimlari in 'un_evrak_tanimlari.pas' {fr_evrak_tanimlari},
  SinavSonucSiraliListe in 'SinavSonucSiraliListe.pas' {fr_sirali_listeler},
  SinavSonucBildirimIslemleri in 'SinavSonucBildirimIslemleri.pas' {FrSonucBildirimIslemleri},
  SinifListesi in 'SinifListesi.pas' {FrSinifListesi},
  gizli_ogrenciler in 'gizli_ogrenciler.pas' {fr_gizli_ogrenciler},
  un_sifremi_degistir in 'un_sifremi_degistir.pas' {fr_sifremi_degistir},
  un_kullanicilar in 'un_kullanicilar.pas' {fr_kullanicilar},
  un_pratik_puan_hesabi in 'un_pratik_puan_hesabi.pas' {fr_pratik_puan_hesabi},
  BosNumaralar in 'BosNumaralar.pas' {FrBosNumaralar},
  genel_rapor_ekrani in 'genel_rapor_ekrani.pas' {fr_genel_rapor_ekrani},
  OgrenciNumaraDegistir in 'OgrenciNumaraDegistir.pas' {FrOgrenciNumaraDegistir},
  un_geciken_borc_bildirimi in 'un_geciken_borc_bildirimi.pas' {fr_geciken_borc_bildirimi},
  un_toplu_ogrenci_silme in 'un_toplu_ogrenci_silme.pas' {fr_toplu_ogrenci_silme},
  ogrenci_izleme in 'ogrenci_izleme.pas' {fr_ogrenci_izleme},
  un_hesap_kapatma in 'un_hesap_kapatma.pas' {fr_hesap_kapatma},
  ogrenci_kopyala in 'ogrenci_kopyala.pas' {fr_ogrenci_kopyala},
  Yedek in 'Yedek.pas' {FrYedek},
  un_tum_kayitlari_silme in 'un_tum_kayitlari_silme.pas' {fr_tum_kayitlari_silme},
  un_odendi_makbuzu in 'un_odendi_makbuzu.pas' {fr_odendi_makbuzu},
  un_gorunum in 'un_gorunum.pas' {fr_gorunum},
  un_sutun_basliklari in 'un_sutun_basliklari.pas' {fr_sutun_basliklari},
  un_hakkinda in 'un_hakkinda.pas' {fr_hakkinda},
  TopluSinifDegistirme in 'TopluSinifDegistirme.pas' {fr_toplu_sinif_degistirme},
  SinavSonucundanSinifAtama in 'SinavSonucundanSinifAtama.pas' {FrSinavSonucundanSinifAtama},
  SiniflarArasiAtama in 'SiniflarArasiAtama.pas' {FrSiniflarArasiAtama},
  SinavaGirmeyenler in 'SinavaGirmeyenler.pas' {fr_sinava_girmeyenler},
  un_personel in 'un_personel.pas' {fr_personel},
  un_personel_bul in 'un_personel_bul.pas' {fr_personel_bul},
  un_evrak_durumu in 'un_evrak_durumu.pas' {fr_evrak_durumu},
  Bakim in 'Bakim.pas' {FrBakim},
  un_odeme_takibi in 'un_odeme_takibi.pas' {fr_odeme_takibi},
  un_taksit_listesi in 'un_taksit_listesi.pas' {fr_taksit_listesi},
  DataAktarim in 'DataAktarim.pas' {FrDataAktarim},
  optikaktarim in 'optikaktarim.pas' {fr_optikaktarim},
  optikogrsec in 'optikogrsec.pas' {fr_optikogrsec},
  optikogrvar in 'optikogrvar.pas' {fr_optikogrvar},
  grup_bazinda_kayitlar in 'grup_bazinda_kayitlar.pas' {fr_grup_bazinda_kayitlar},
  grup_tanimlari in 'grup_tanimlari.pas' {fr_grup_tanimlari},
  veliler in 'veliler.pas' {fr_veliler},
  MesajGonder in 'MesajGonder.pas' {FrMesajGonder},
  sms_ayarlari in 'sms_ayarlari.pas' {fr_sms_ayarlari},
  MesajDurumlari in 'MesajDurumlari.pas' {FrMesajDurumlari},
  eposta_ayarlari in 'eposta_ayarlari.pas' {fr_eposta_ayarlari},
  yapilan_islemler in 'yapilan_islemler.pas' {fr_yapilan_islemler},
  sinav_tanimlari in 'sinav_tanimlari.pas' {fr_sinav_tanimlari},
  konu_tanimlari in 'konu_tanimlari.pas' {fr_konu_tanimlari},
  konu_analizi in 'konu_analizi.pas' {fr_konu_analizi},
  sinav_arama in 'sinav_arama.pas' {fr_sinav_arama},
  SMSFonksiyonlari in 'SMSFonksiyonlari.pas',
  DershaneTanimlari in 'DershaneTanimlari.pas' {FrDershaneTanimlari};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Dershane Otomasyonu';
  Application.HelpFile := 'D:\Dershane Otomasyonu\DershaneOtomasyonu.hlp';
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  Application.CreateForm(TFrAnaForm, FrAnaForm);
  Application.CreateForm(Tveriler, veriler);
  Application.Run;
end.



