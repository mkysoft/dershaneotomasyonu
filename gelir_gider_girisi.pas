unit gelir_gider_girisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection, StdCtrls, Buttons, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, ExtCtrls,
  ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppParameter, ppComm,
  ppRelatv, ppProd, ppReport, ppViewr, cxLabel, cxDBEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, jpeg, ppStrtch, ppMemo,ogrenci,
  cxCheckBox, cxLookAndFeelPainters, cxButtons, ppSubRpt, ppRegion, ppDB,
  ppDBJIT;

type
  Tfr_gelir_gider_girisi = class(TForm)
    tablo_gelir_gider: TZQuery;
    ara_para_akisi: TDataSource;
    cxGroupBox1: TcxGroupBox;
    paraakisi: TcxGridDBTableView;
    level1: TcxGridLevel;
    gr_gun: TcxGrid;
    paraakisiilgili_no: TcxGridDBColumn;
    paraakisiislem_no: TcxGridDBColumn;
    paraakisitarih: TcxGridDBColumn;
    paraakisialinan: TcxGridDBColumn;
    paraakisiverilen: TcxGridDBColumn;
    paraakisiaciklama: TcxGridDBColumn;
    paraakisiilgilihesap: TcxGridDBColumn;
    tablo_oku: TZReadOnlyQuery;
    cxGroupBox2: TcxGroupBox;
    tx_ilgili_no: TcxTextEdit;
    bt_ogr_sec: TBitBtn;
    tx_tarih: TcxDateEdit;
    tx_alinan: TcxTextEdit;
    tx_verilen: TcxTextEdit;
    tx_ilgili_hesap: TcxComboBox;
    tx_aciklama: TcxMemo;
    makbuz: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    lb_islem_no1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    lb_numarasi1: TppLabel;
    lb_adi1: TppLabel;
    lb_soyadi1: TppLabel;
    ppShape3: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    lb_tarihi1: TppLabel;
    lb_miktari1: TppLabel;
    ppLabel12: TppLabel;
    ppShape4: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    lb_toplam_borcu1: TppLabel;
    lb_odenen_borc1: TppLabel;
    lb_kalan_borc1: TppLabel;
    ppLabel20: TppLabel;
    lb_tahsil_eden1: TppLabel;
    lb_tarih_saat1: TppLabel;
    ppLabel14: TppLabel;
    ppParameterList1: TppParameterList;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    ppLabel16: TppLabel;
    lb_donemi1: TppLabel;
    tx_adi_soyadi: TcxTextEdit;
    cxLabel7: TcxLabel;
    paraakisidonemi: TcxGridDBColumn;
    paraakisiadi_soyadi: TcxGridDBColumn;
    paraakisiislem_tarihi: TcxGridDBColumn;
    mn_gelir_gider: TcxGridPopupMenu;
    lb_miktari_yaziyla1: TppMemo;
    tx_donemi: TcxComboBox;
    ppLabel17: TppLabel;
    lb_geciken_borc1: TppLabel;
    ppLabel18: TppLabel;
    lb_makbuz_sira_no1: TppLabel;
    lb_kullanici1: TppLabel;
    ppLabel19: TppLabel;
    bt_personel: TBitBtn;
    bt_ekle: TcxButton;
    ppImage1: TppImage;
    ppBandsPerRecordIcin: TppJITPipeline;
    ppLabel15: TppLabel;
    ppLbKopya: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_ogr_secClick(Sender: TObject);
    procedure tx_alinanKeyPress(Sender: TObject; var Key: Char);
    procedure tx_verilenKeyPress(Sender: TObject; var Key: Char);
    procedure tx_tarihKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ilgili_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ilgili_hesapKeyPress(Sender: TObject; var Key: Char);
    procedure bt_ekleClick(Sender: TObject);
    procedure tx_aciklamaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure tx_adi_soyadiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_alinanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tablo_gelir_giderFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure paraakisiDataControllerDataChanged(Sender: TObject);
    procedure bt_personelClick(Sender: TObject);
    procedure ppImage1Print(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_gelir_gider_girisi: Tfr_gelir_gider_girisi;

implementation

{$R *.dfm}
uses ogrenci_arama, veritabani, functionlar, AnaForm,
  un_personel_bul;

procedure Tfr_gelir_gider_girisi.tx_alinanKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #44 then exit;
     if Key = #8 then exit;
     if (Key = #13) and (tx_ilgili_no.Text <> '') and (tx_alinan.Text <> '') then tx_aciklama.Text := 'Taksit Ödeme';
     if Key = '+' then tx_alinan.Text := tx_alinan.Text + '000';
     if (ord(Key) = 13) and (tx_alinan.Text = '') then tx_verilen.SetFocus;
     if (ord(Key) = 13) and (tx_alinan.Text <> '') then tx_ilgili_hesap.SetFocus;
     if (Key < #48) or (Key > #57) then
     begin
       Key := chr(256);
       Exit;
     end;
end;

procedure Tfr_gelir_gider_girisi.FormCreate(Sender: TObject);
begin
  tablo_gelir_gider.Filtered := gizli;
 tablo_gelir_gider.SQL.Clear;
 if yetki > 50 then
  tablo_gelir_gider.sql.add('select ilgili_no,islem_no,tarih,alinan,verilen,aciklama,ilgilihesap,donemi,adi_soyadi from paraakisi where tarih = now() and aciklama not like ''MAAÞ%''')
 else
  tablo_gelir_gider.sql.add('select ilgili_no,islem_no,tarih,alinan,verilen,aciklama,ilgilihesap,donemi,adi_soyadi from paraakisi where tarih = now()');
 tablo_gelir_gider.Open;
  ara_para_akisi.Enabled := true;
  paraakisi.ViewData.Expand(true);
  paraakisi.ApplyBestFit();
  tx_tarih.Date := now();
  tx_donemi.Properties.Items := Donemler;
  tx_donemi.Properties.Items.Add('PERSONEL');
  tx_donemi.Text := AktifDonem;
  if yetki < 51 then tx_tarih.Enabled :=true;
end;

procedure Tfr_gelir_gider_girisi.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i:integer;
begin
 for i := FrAnaForm.MDIChildCount-1 downto 0 do
  if FrAnaForm.MDIChildren[i].Caption = 'Öðrenci Bilgileri' then
  begin
   if Fr_ogrenci.tablo_odeme_durumu.State = dsBrowse then
     fr_ogrenci.tablo_odeme_durumu.Refresh;
   if fr_ogrenci.tablo_taksitler.State = dsBrowse then
     fr_ogrenci.tablo_taksitler.Refresh;
  end;
 Action := caFree;
end;

procedure Tfr_gelir_gider_girisi.bt_ogr_secClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  tx_ilgili_no.Text := inttostr(SOgr.OgrNo);
  tx_donemi.Text := SOgr.Donem;
  tx_aciklama.Text := 'Taksit Ödeme';
  tx_adi_soyadi.Text := SOgr.Adi +' '+ SOgr.Soyadi;
  tx_alinan.SetFocus;
end;

procedure Tfr_gelir_gider_girisi.tx_verilenKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #44 then exit;
     if Key = #8 then exit;
     if (Key = #13) and (tx_ilgili_no.Text <> '') and (tx_verilen.Text <> '')  and (tx_donemi.Text <> 'PERSONEL') then tx_aciklama.Text := 'Taksit Ýade';
     if Key = '+' then tx_verilen.Text := tx_verilen.Text + '000';
     if ord(Key) = 13 then tx_ilgili_hesap.SetFocus;
     if (Key = #13) and (tx_ilgili_no.Text <> '') and (tx_alinan.Text <> '')  and (tx_donemi.Text <> 'PERSONEL') then tx_aciklama.Text := 'Taksit Ödeme';
     if (Key < #48) or (Key > #57) then
     begin
       Key := chr(256);
       Exit;
     end;
end;

procedure Tfr_gelir_gider_girisi.tx_tarihKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tx_alinan.SetFocus;
end;

procedure Tfr_gelir_gider_girisi.tx_ilgili_noKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_adi_soyadi.SetFocus;
  if Key = #8 then exit;
  if ord(Key) < 48 then Key := chr(256);
  if ord(Key) > 57 then Key := chr(256);
end;

procedure Tfr_gelir_gider_girisi.tx_ilgili_hesapKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ord(Key) = 13 then
  begin
   if tx_ilgili_hesap.Text = '' then
    messagedlg('Ýlgili hesap seçilmemiþ!',mtError, [mbOk], 0)
   else
    tx_aciklama.SetFocus;
  end;
end;

procedure Tfr_gelir_gider_girisi.bt_ekleClick(Sender: TObject);
var
  mesaj,baslik: string;
begin
 if (pos('Taksit Ödeme',tx_aciklama.Text)>0) and (tx_ilgili_no.text='') then
 begin
  messagedlg('Öðrenci numarasý girmeden taksit ödeme yapamazsýnýz!',mtError, [mbOk], 0);
  tx_ilgili_no.SetFocus;
  Exit;
 end;
 if (tx_ilgili_hesap.Text = '') then
 begin
  messagedlg('Ýlgili hesap seçilmemiþ!',mtError, [mbOk], 0);
  tx_ilgili_hesap.SetFocus;
  Exit;
 end;
 if ((tx_alinan.Text = '') and (tx_verilen.Text = ''))
    or ((tx_alinan.Text = '0') and (tx_verilen.Text = '0')) then
 begin
  messagedlg('Para miktarý girilmemiþ!',mtError, [mbOk], 0);
  tx_alinan.SetFocus;
  Exit;
 end;
 if (pos(bkmetin(tx_aciklama.text,0),'maaþ')>0) and (yetki > 50) then
 begin
  messagedlg(kullanici_adi+' kullanýcýsýnýn maaþ girme yetkisi yok!',mtError, [mbOk], 0);
  tx_aciklama.SetFocus;
  Exit;
 end;
 mesaj := 'Hesap: '+tx_ilgili_hesap.text+#13;
 mesaj := mesaj + 'Tarih: '+tx_tarih.Text+#13;
 mesaj := mesaj + 'Dönemi: '+tx_donemi.Text+#13;
 if tx_donemi.Text = 'PERSONEL' then
  mesaj := mesaj + 'Personel - Ýlgili No: '+tx_ilgili_no.Text+#13
 else
  mesaj := mesaj + 'Öðrenci - Ýlgili No: '+tx_ilgili_no.Text+#13;
//  mesaj := mesaj + 'Adý Soyadý: '+tx_adi_soyadi.Text+#13;
 if tx_donemi.Text = 'PERSONEL' then
  mesaj := mesaj + 'Adý Soyadý: '+tx_adi_soyadi.Text+#13;
 if (tx_alinan.Text = '') or (tx_alinan.Text = '0') then
 begin
  if tx_donemi.Text = 'PERSONEL' then
   baslik := 'Maaþ - Avans - Para Çýkýþý'
  else
   baslik := 'Verilen - Gider - Para Çýkýþý';
  mesaj := mesaj + 'Verilecek Miktar: '+tx_verilen.Text+#13;
 end;
 if (tx_verilen.Text = '') or (tx_verilen.Text = '0') then
 begin
  baslik := 'Alýnan - Gelir - Para Giriþi';
  mesaj := mesaj + 'Alýnacak Miktar: '+tx_alinan.Text+#13;
 end;
 mesaj := mesaj+'Açýklama: '+tx_aciklama.Text+#13;
 if tx_aciklama.Text = 'Taksit Ödeme' then
 begin
  baslik := tx_aciklama.Text;
  mesaj := mesaj + 'Makbuz yazdýrýlacak!'+#13+'Lütfen A5, yoksa A4 kaðýt kullanýn.';
 end;
 if messagedlg(baslik + #13+'------------------------------'+#13 + mesaj, mtConfirmation ,[mbYes, mbNo, mbCancel], 0) <> mrYes then exit;
//Taksit Ödeme Ýþlemi
 if (tx_ilgili_no.Text <> '') and (tx_alinan.Text <> '') and (tx_aciklama.Text = 'Taksit Ödeme') then
 begin
  if gizli=true then
    if veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_gelir_gider.fieldbyname('donemi').AsString,tablo_gelir_gider.fieldbyname('ilgili_no').AsInteger]),[loCaseInsensitive])=true then
    begin
     messagedlg('Öðrenci numarasý geçersiz!',mtError, [mbOk], 0);
     tx_ilgili_no.SetFocus;
     Exit;
    end;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SELECT ogr_no, adi, soyadi, donemi from ogrenciler where ogr_no=' + tx_ilgili_no.Text + ' and donemi ="'+ tx_donemi.Text +'"');
  tablo_oku.Open;
  if tablo_oku.RecordCount <> 1 then
  begin
   messagedlg('Öðrenci numarasý geçersiz!',mtError, [mbOk], 0);
   tx_ilgili_no.SetFocus;
   Exit;
  end;
  tx_adi_soyadi.Text := tablo_oku.fieldbyname('adi').AsString +' '+ tablo_oku.fieldbyname('soyadi').AsString;
  lb_donemi1.Caption := tablo_oku.fieldbyname('donemi').Text;
  lb_numarasi1.Caption := tablo_oku.fieldbyname('ogr_no').Text;
  lb_adi1.Caption := tablo_oku.fieldbyname('adi').Text;
  lb_soyadi1.Caption := tablo_oku.fieldbyname('soyadi').Text;
  tablo_oku.Close;
  tablo_gelir_gider.Insert;
  tablo_gelir_gider.FieldByName('donemi').Text := tx_donemi.Text;
  tablo_gelir_gider.FieldByName('ilgili_no').Text := tx_ilgili_no.Text;
  tablo_gelir_gider.FieldByName('tarih').AsDateTime := tx_tarih.Date;
  tablo_gelir_gider.FieldByName('alinan').Text := metindensil('.',tx_alinan.Text);
  tablo_gelir_gider.FieldByName('verilen').Text := metindensil('.',tx_verilen.Text);
  tablo_gelir_gider.FieldByName('ilgilihesap').Text := tx_ilgili_hesap.Text;
  tablo_gelir_gider.FieldByName('aciklama').Text := tx_aciklama.Text;
  tablo_gelir_gider.FieldByName('adi_soyadi').Text := tx_adi_soyadi.Text;
  tablo_gelir_gider.Post;
  lb_islem_no1.Caption := tablo_gelir_gider.fieldbyname('islem_no').Text;
  lb_tarihi1.Caption := datetostr(tx_tarih.Date);
  lb_miktari1.Caption := tx_alinan.Text+' YTL';
  lb_miktari_yaziyla1.Text := sayiyazi(strtofloat(metindensil('.',tx_alinan.Text)));
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SELECT makbuz_sira_no from ayarlar');
  tablo_oku.Open;
  lb_makbuz_sira_no1.Caption := tablo_oku.fieldbyname('makbuz_sira_no').Text;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('UPDATE ayarlar SET makbuz_sira_no = makbuz_sira_no+1');
  tablo_oku.ExecSQL;
// Kalan borç hesaplar
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SELECT borc(:donemi,:ogr_no),odenen(:donemi,:ogr_no,null),gecikenborc(:donemi,:ogr_no,null)');
  tablo_oku.Params[0].Text := tx_donemi.Text;
  tablo_oku.Params[1].Text := tx_ilgili_no.Text;
  tablo_oku.Open;
  lb_toplam_borcu1.Caption := formatfloat('0,.##', tablo_oku.Fields.Fields[0].AsFloat)+' YTL';
  lb_odenen_borc1.Caption := formatfloat('0,.##', tablo_oku.Fields.Fields[1].AsFloat)+' YTL';
  lb_kalan_borc1.Caption := formatfloat('0,.##', (tablo_oku.Fields.Fields[0].AsFloat-tablo_oku.Fields.Fields[1].AsFloat))+' YTL';
  if tablo_oku.Fields.Fields[2].AsFloat <= 0 then
  begin
    lb_geciken_borc1.Caption := 'Yok';
  end
  else
  begin
    lb_geciken_borc1.Caption := formatfloat('0.,00',tablo_oku.Fields.Fields[2].AsFloat)+' YTL';
 end;
  tablo_oku.Close;
/////
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select concat(veli_adi,'' '',veli_soyadi) as personeladisoyadi from veliler where veli_kodu=(select personel_kodu from personel where user='''+kullanici_adi+''')');
  tablo_oku.Open;
  lb_tahsil_eden1.Caption := tablo_oku.fieldbyname('personeladisoyadi').Text;
  tablo_oku.Close;
  lb_kullanici1.Caption := kullanici_adi;
  lb_tarih_saat1.Caption := datetimetostr(now());
  Makbuz.OutlineSettings.Visible:=False;
  makbuz.Print;
  tx_ilgili_no.Clear;
  tx_alinan.Clear;
  tx_verilen.Clear;
  tx_ilgili_hesap.Clear;
  tx_aciklama.Clear;
  tx_adi_soyadi.Clear;
  tablo_gelir_gider.Refresh;
  tx_ilgili_no.SetFocus;
  exit;
 end;
 tablo_gelir_gider.Insert;
 tablo_gelir_gider.FieldByName('donemi').Text := tx_donemi.Text;
 tablo_gelir_gider.FieldByName('ilgili_no').Text := tx_ilgili_no.Text;
 tablo_gelir_gider.FieldByName('tarih').AsDateTime := tx_tarih.Date;
 tablo_gelir_gider.FieldByName('alinan').Text := metindensil('.',tx_alinan.Text);
 tablo_gelir_gider.FieldByName('verilen').Text := metindensil('.',tx_verilen.Text);
 tablo_gelir_gider.FieldByName('ilgilihesap').Text := tx_ilgili_hesap.Text;
 tablo_gelir_gider.FieldByName('aciklama').Text := tx_aciklama.Text;
 tablo_gelir_gider.FieldByName('adi_soyadi').Text := tx_adi_soyadi.Text;
 tablo_gelir_gider.Post;
 tx_ilgili_no.Clear;
 tx_alinan.Clear;
 tx_verilen.Clear;
 tx_ilgili_hesap.Clear;
 tx_aciklama.Clear;
 tx_adi_soyadi.Clear;
 tx_ilgili_no.SetFocus;
 tablo_gelir_gider.Refresh;
end;

procedure Tfr_gelir_gider_girisi.tx_aciklamaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ord(Key) = 13 then bt_ekleClick(bt_ekle);
  with Sender as TcxMemo do
  if SelStart = 0 then
  begin
   Key := bkharf(Key,true);
   if Key='A' then
   begin
     tx_aciklama.Text := 'AVANS';
     SelStart:=1;
     SelLength:=4;
     Key:=chr(256);
   end;
   if Key='M' then
   begin
     tx_aciklama.Text := 'MAAÞ';
     SelStart:=1;
     SelLength:=3;
     Key:=chr(256);
   end;
   if Key='T' then
   begin
     tx_aciklama.Text := 'Taksit Ödeme';
     SelStart:=1;
     SelLength:=11;
     Key:=chr(256);
   end;
  end;
end;

procedure Tfr_gelir_gider_girisi.FormShow(Sender: TObject);
begin
  tx_ilgili_no.SetFocus;
end;

procedure Tfr_gelir_gider_girisi.tx_adi_soyadiKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
 if yetki < 51 then
  tx_tarih.SetFocus
 else
  tx_alinan.SetFocus;
end;

procedure Tfr_gelir_gider_girisi.tx_alinanKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
   i,u: integer;
begin
  if Key in [96..105,8,46,VK_ADD] then
  begin
    if length((Sender as TcxTextEdit).Text) < 4 then exit;
    if copy((Sender as TcxTextEdit).Text,length((Sender as TcxTextEdit).Text),1)=',' then exit;
    if copy((Sender as TcxTextEdit).Text,length((Sender as TcxTextEdit).Text)-1,2)=',0' then exit;
    i := (Sender as TcxTextEdit).SelStart;
    u := length((Sender as TcxTextEdit).Text);
    (Sender as TcxTextEdit).Text := formatfloat('0,.##',strtofloat(metindensil('.',(Sender as TcxTextEdit).Text)));
    if i<>u then
    begin
    if u > length((Sender as TcxTextEdit).Text) then i:=i-1;
    if u < length((Sender as TcxTextEdit).Text) then i:=i+1;
    (Sender as TcxTextEdit).SelStart := i;
    end
    else
      (Sender as TcxTextEdit).SelStart := length((Sender as TcxTextEdit).Text);
  end;
end;

procedure Tfr_gelir_gider_girisi.tablo_gelir_giderFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_gelir_gider.fieldbyname('donemi').AsString,tablo_gelir_gider.fieldbyname('ilgili_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_gelir_gider_girisi.paraakisiDataControllerDataChanged(
  Sender: TObject);
var
alinan,verilen: Extended;
begin
  alinan := strtofloat(metindensil('.',paraakisi.DataController.Summary.FooterSummaryTexts[1]));
  verilen := strtofloat(metindensil('.',paraakisi.DataController.Summary.FooterSummaryTexts[2]));
  paraakisi.DataController.Summary.FooterSummaryItems.Items[3].Format := '''Fark '+formatfloat('0.,00',alinan - verilen)+'''';
end;

procedure Tfr_gelir_gider_girisi.bt_personelClick(Sender: TObject);
begin
  application.CreateForm(Tfr_personel_bul,fr_personel_bul);
  if SVeli.Iptal = true then Exit;
  tx_ilgili_no.Text := inttostr(SVeli.VeliKodu);
  tx_donemi.Text := 'PERSONEL';
  tx_ilgili_hesap.Text := 'MaaþAvans';
  tx_adi_soyadi.Text := SVeli.AdiSoyadi;
  tx_aciklama.Text := '';
  tx_verilen.SetFocus;
end;

procedure Tfr_gelir_gider_girisi.ppImage1Print(Sender: TObject);
begin
  TppImage(Sender).Picture.Assign(Dershane.Logo);
end;

procedure Tfr_gelir_gider_girisi.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  Text := bkmetin(Dershane.AdiKisa,1);
end;

procedure Tfr_gelir_gider_girisi.ppLabel19GetText(Sender: TObject;
  var Text: String);
begin
  Text := Dershane.Adresi + ' ' + Dershane.Il;
end;

procedure Tfr_gelir_gider_girisi.ppLabel15GetText(Sender: TObject;
  var Text: String);
begin
  Text := 'Tel: '+Dershane.Tel + '     Faks: ' + Dershane.Faks;
end;

end.

