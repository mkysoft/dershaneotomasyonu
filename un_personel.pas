unit un_personel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxImage, cxDBEdit, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, StdCtrls, ExtCtrls, ComCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, DBCtrls, cxMaskEdit, cxDropDownEdit,
  cxMemo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCalendar, cxGroupBox, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxGridLnk, ShellAPI,cxExportGrid4Link,
  Grids, Menus, dxPSBaseGridLnk, dxPSGrLnks, dxPSStdGrLnk, dxPSContainerLnk,
  dxPScxCommon;

type
  Tfr_personel = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label2: TcxLabel;
    tx_personel_kodu: TcxDBTextEdit;
    tx_adi: TcxDBTextEdit;
    tx_soyadi: TcxDBTextEdit;
    ogr_res: TcxDBImage;
    personel_sayfalar: TPageControl;
    ts_bilgileri: TTabSheet;
    ts_maas: TTabSheet;
    tablo_personel: TZQuery;
    ara_personel: TDataSource;
    ara_veli: TDataSource;
    tablo_veli: TZQuery;
    bt_personel_bul: TBitBtn;
    Panel9: TPanel;
    Label44: TcxLabel;
    Label45: TcxLabel;
    Label46: TcxLabel;
    Label47: TcxLabel;
    Label48: TcxLabel;
    Label49: TcxLabel;
    db_kontrol: TDBNavigator;
    Label29: TcxLabel;
    tx_brans: TcxDBComboBox;
    tablo_maas: TZQuery;
    ara_maas: TDataSource;
    Panel3: TPanel;
    tx_tarih: TcxDateEdit;
    tx_miktari: TcxTextEdit;
    bt_ekle: TBitBtn;
    bt_sil: TBitBtn;
    gr_maaslar: TcxGrid;
    maas: TcxGridDBTableView;
    maastarih: TcxGridDBColumn;
    maasmiktar: TcxGridDBColumn;
    gr_maaslarLevel1: TcxGridLevel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    rb_maas: TRadioGroup;
    ts_avans: TTabSheet;
    cxGroupBox2: TcxGroupBox;
    tx_avans_tarih: TcxDateEdit;
    tx_alinan: TcxTextEdit;
    tx_verilen: TcxTextEdit;
    tx_ilgili_hesap: TcxComboBox;
    tx_aciklama: TcxMemo;
    bt_avans_ekle: TBitBtn;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    tablo_paraakisi: TZQuery;
    mn_paraakisi: TcxGridPopupMenu;
    ara_paraakisi: TDataSource;
    Panel2: TPanel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    lb_aldigi: TcxLabel;
    lb_almasi: TcxLabel;
    lb_odenmesi: TcxLabel;
    tablo_oku: TZReadOnlyQuery;
    Panel4: TPanel;
    gr_para_akisi: TcxGrid;
    paraakisi: TcxGridDBTableView;
    paraakisiislem_no: TcxGridDBColumn;
    paraakisitarih: TcxGridDBColumn;
    paraakisialinan: TcxGridDBColumn;
    paraakisiverilen: TcxGridDBColumn;
    paraakisiilgilihesap: TcxGridDBColumn;
    paraakisiislem_tarihi: TcxGridDBColumn;
    paraakisiaciklama: TcxGridDBColumn;
    paraakisiilgili_no: TcxGridDBColumn;
    paraakisidonemi: TcxGridDBColumn;
    paraakisiadi_soyadi: TcxGridDBColumn;
    gr_para_akisiLevel1: TcxGridLevel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    tx_adresi: TcxDBMemo;
    Label20: TcxLabel;
    Label22: TcxLabel;
    tx_veli_ilcesi: TcxDBTextEdit;
    tx_veli_ili: TcxDBTextEdit;
    Label21: TcxLabel;
    Label23: TcxLabel;
    tx_posta_kodu: TcxDBTextEdit;
    tx_email: TcxDBTextEdit;
    Label28: TcxLabel;
    Label25: TcxLabel;
    tx_gsm: TcxDBMaskEdit;
    tx_fax: TcxDBMaskEdit;
    Label27: TcxLabel;
    tx_ev_telefonu: TcxDBMaskEdit;
    Label24: TcxLabel;
    Label26: TcxLabel;
    tx_is_telefonu: TcxDBMaskEdit;
    GroupBox4: TGroupBox;
    cxLabel17: TcxLabel;
    tx_ise_giris_tarihi: TcxDBDateEdit;
    tx_tc_kimlik_no: TcxDBTextEdit;
    Label31: TcxLabel;
    cxLabel1: TcxLabel;
    tx_sicil_no: TcxDBTextEdit;
    tx_vergi_no: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    tx_sigorta_no: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    tx_nema_no: TcxDBTextEdit;
    tx_elektrik: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    tx_su: TcxDBTextEdit;
    bt_veli_sec: TBitBtn;
    tx_ders_1: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    tx_ders_2: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    tx_ders_3: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    lb_almasi_y: TcxLabel;
    lb_odenmesi_y: TcxLabel;
    lb_aldigi_y: TcxLabel;
    Panel5: TPanel;
    rb_para_secenek: TRadioGroup;
    dosya: TSaveDialog;
    pr_paraakisi: TdxComponentPrinter;
    Panel6: TPanel;
    bt_exceleaktar: TBitBtn;
    bt_yazdir: TBitBtn;
    t_zaman: TTimer;
    tablo_veliveli_kodu: TIntegerField;
    tablo_veliveli_adi: TStringField;
    tablo_veliveli_soyadi: TStringField;
    tablo_veliadresi: TStringField;
    tablo_veliadres_ili: TStringField;
    tablo_veliadres_ilcesi: TStringField;
    tablo_veliposta_kodu: TStringField;
    tablo_veliev_telefonu: TStringField;
    tablo_veligsm: TStringField;
    tablo_veliis_telefonu: TStringField;
    tablo_velifax: TStringField;
    tablo_veliemail: TStringField;
    tablo_velimeslegi: TStringField;
    tablo_velicalistigi_yer: TStringField;
    tablo_personelpersonel_kodu: TIntegerField;
    tablo_personeltc_kimlik_no: TStringField;
    tablo_personelresim: TBlobField;
    tablo_personelsicil_no: TStringField;
    tablo_personelvergi_no: TStringField;
    tablo_personelelektrik: TStringField;
    tablo_personelsu: TStringField;
    tablo_personelise_giris_tarihi: TDateField;
    tablo_personelsigorta_no: TStringField;
    tablo_personelnema_no: TStringField;
    tablo_personelders_1: TStringField;
    tablo_personelders_2: TStringField;
    tablo_personelders_3: TStringField;
    tablo_paraakisiilgili_no: TIntegerField;
    tablo_paraakisiislem_no: TIntegerField;
    tablo_paraakisitarih: TDateField;
    tablo_paraakisialinan: TFloatField;
    tablo_paraakisiverilen: TFloatField;
    tablo_paraakisiaciklama: TStringField;
    tablo_paraakisiilgilihesap: TStringField;
    tablo_paraakisiislem_tarihi: TDateTimeField;
    tablo_paraakisidonemi: TStringField;
    tablo_paraakisiadi_soyadi: TStringField;
    tablo_maaspersonel_kodu: TIntegerField;
    tablo_maastarih: TDateField;
    tablo_maasmiktar: TFloatField;
    ts_ders_programi: TTabSheet;
    gr_ders_programi: TStringGrid;
    Panel7: TPanel;
    bt_program_excel_aktar: TBitBtn;
    bt_program_yazdir: TBitBtn;
    PopupMenu1: TPopupMenu;
    pr_program: TdxComponentPrinter;
    dosya_program: TSaveDialog;
    t_zaman_program: TTimer;
    pr_programLink1: TdxStringGridReportLink;
    pr_paraakisiLink1: TdxGridReportLink;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_personel_bulClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tx_adiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_soyadiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_bransKeyPress(Sender: TObject; var Key: Char);
    procedure tx_tc_kimlik_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_sicil_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_vergi_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_gsmKeyPress(Sender: TObject; var Key: Char);
    procedure tx_faxKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ev_telefonuKeyPress(Sender: TObject; var Key: Char);
    procedure tx_is_telefonuKeyPress(Sender: TObject; var Key: Char);
    procedure tx_emailKeyPress(Sender: TObject; var Key: Char);
    procedure tx_veli_ilcesiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_posta_koduKeyPress(Sender: TObject; var Key: Char);
    procedure tx_elektrikKeyPress(Sender: TObject; var Key: Char);
    procedure tx_adresiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_veli_iliKeyPress(Sender: TObject; var Key: Char);
    procedure tablo_veliBeforeEdit(DataSet: TDataSet);
    procedure tablo_personelBeforePost(DataSet: TDataSet);
    procedure tablo_personelAfterDelete(DataSet: TDataSet);
    procedure tablo_personelAfterInsert(DataSet: TDataSet);
    procedure bt_veli_secClick(Sender: TObject);
    procedure personel_sayfalarChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure tx_tarihKeyPress(Sender: TObject; var Key: Char);
    procedure tx_miktariKeyPress(Sender: TObject; var Key: Char);
    procedure tx_miktariKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_ekleClick(Sender: TObject);
    procedure bt_silClick(Sender: TObject);
    procedure rb_maasClick(Sender: TObject);
    procedure tx_alinanKeyPress(Sender: TObject; var Key: Char);
    procedure tx_alinanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tx_verilenKeyPress(Sender: TObject; var Key: Char);
    procedure tx_verilenKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tx_ilgili_hesapKeyPress(Sender: TObject; var Key: Char);
    procedure tx_avans_tarihKeyPress(Sender: TObject; var Key: Char);
    procedure tx_aciklamaKeyPress(Sender: TObject; var Key: Char);
    procedure tablo_veliAfterInsert(DataSet: TDataSet);
    procedure tablo_veliAfterEdit(DataSet: TDataSet);
    procedure ts_avansShow(Sender: TObject);
    procedure ts_maasShow(Sender: TObject);
    procedure bt_avans_ekleClick(Sender: TObject);
    procedure tx_ders_1KeyPress(Sender: TObject; var Key: Char);
    procedure tx_ders_2KeyPress(Sender: TObject; var Key: Char);
    procedure tx_ders_3KeyPress(Sender: TObject; var Key: Char);
    procedure tx_ise_giris_tarihiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_suKeyPress(Sender: TObject; var Key: Char);
    procedure tx_sigorta_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_nema_noKeyPress(Sender: TObject; var Key: Char);
    procedure rb_para_secenekClick(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure bt_yazdirClick(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure t_zamanTimer(Sender: TObject);
    procedure paraakisiDataControllerDataChanged(Sender: TObject);
    procedure tablo_personelBeforeDelete(DataSet: TDataSet);
    procedure ts_ders_programiShow(Sender: TObject);
    procedure bt_program_yazdirClick(Sender: TObject);
    procedure bt_program_excel_aktarClick(Sender: TObject);
    procedure dosya_programCanClose(Sender: TObject;
      var CanClose: Boolean);
    procedure t_zaman_programTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_personel: Tfr_personel;

implementation
uses veritabani, un_personel_bul, un_veli_sec, functionlar;
{$R *.dfm}

procedure Tfr_personel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_personel.bt_personel_bulClick(Sender: TObject);
label goster;
begin
  if SVeli.KayitGoster = true then goto goster;
  application.CreateForm(Tfr_personel_bul,fr_personel_bul);
  if tablo_personel.State in [dsInsert, dsEdit] then
    case messagedlg('Yaptýðýnýz deðiþiklikleri kaydetmek istiyor musunuz?', mtConfirmation ,[mbYes, mbNo, mbCancel], 0) of
    mrYes: tablo_personel.Post;
    mrCancel: exit;
    end;
goster:
{
  tablo_evrak_durumu.Close;
  tablo_veli.Close;
  tablo_odeme_durumu.Close;
  tablo_taksitler.Close;
  tablo_ogrenci.Close;
  tablo_ogrenci.Params[0].Text:=secilendonem;
  tablo_ogrenci.Params[1].AsInteger:=secilenogr;
  tablo_odeme_durumu.Params[0].Text:=secilendonem;
  tablo_odeme_durumu.Params[1].AsInteger:=secilenogr;
  tablo_taksitler.Params[0].Text:=secilendonem;
  tablo_taksitler.Params[1].AsInteger:=secilenogr;
  tablo_evrak_durumu.Params[0].Text:=secilendonem;
  tablo_evrak_durumu.Params[1].AsInteger:=secilenogr;
  tablo_ogrenci.Open;
  tablo_odeme_durumu.Open;
  tablo_taksitler.Open;
  tablo_veli.Params[0].text:=tablo_ogrenci.fieldbyname('veli_kodu').text;
  tablo_veli.Open;
  tablo_evrak_durumu.Open;
  }
  ts_bilgileri.Show;
  tablo_personel.Close;
  tablo_personel.Params[0].AsInteger := SVeli.VeliKodu;
  tablo_personel.Open;
  tablo_veli.Close;
  tablo_veli.Params[0].AsInteger := SVeli.VeliKodu;
  tablo_veli.Open;
  tablo_maas.Close;
  SVeli.KayitGoster:=false;
end;

procedure Tfr_personel.FormCreate(Sender: TObject);
begin
  bt_personel_bulClick(bt_personel_bul);
  if (SVeli.KayitVar = false) and (SVeli.Iptal = false) then
  begin
    tablo_personel.Params[0].AsInteger := 0;
    tablo_personel.Open;
    tablo_veli.Params[0].AsInteger := 0;
    tablo_veli.Open;
    exit;
  end;
  if SVeli.Iptal = true then Close;
  tx_avans_tarih.Date := now;
  if yetki > 50 then
  begin
   ts_maas.Enabled := false;
   ts_avans.Enabled := false;
   ts_maas.TabVisible := false;
   ts_avans.TabVisible := false;
  end;
end;

procedure Tfr_personel.tx_adiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_soyadi.setfocus;
  with Sender as TcxDBTextEdit do
  if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true)
  else
    Key := bkharf(Key,false);
end;

procedure Tfr_personel.tx_soyadiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_brans.setfocus;
  Key := bkharf(Key,true);
end;

procedure Tfr_personel.tx_bransKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_tc_kimlik_no.setfocus;
  with Sender as TcxDBComboBox do
  if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true);
end;

procedure Tfr_personel.tx_tc_kimlik_noKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_sicil_no.setfocus;
end;

procedure Tfr_personel.tx_sicil_noKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_vergi_no.setfocus;
end;

procedure Tfr_personel.tx_vergi_noKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_sigorta_no.setfocus;
end;

procedure Tfr_personel.tx_gsmKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_fax.setfocus;
end;

procedure Tfr_personel.tx_faxKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tx_ev_telefonu.setfocus;
    tx_ev_telefonu.SelStart := 6;
  end;
end;

procedure Tfr_personel.tx_ev_telefonuKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      tx_is_telefonu.setfocus;
      tx_is_telefonu.SelStart := 6;
  end;
end;

procedure Tfr_personel.tx_is_telefonuKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_ders_1.setfocus;
end;

procedure Tfr_personel.tx_emailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_gsm.setfocus;
end;

procedure Tfr_personel.tx_veli_ilcesiKeyPress(Sender: TObject;
  var Key: Char);
begin  if Key = #13 then tx_veli_ili.setfocus;
  with Sender as TcxDBTextEdit do
  if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true);
end;

procedure Tfr_personel.tx_posta_koduKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_email.setfocus;
end;

procedure Tfr_personel.tx_elektrikKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_su.setfocus;
end;

procedure Tfr_personel.tx_adresiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_veli_ilcesi.setfocus;
  with Sender as TcxDBMemo do
  if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true);
end;

procedure Tfr_personel.tx_veli_iliKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_posta_kodu.setfocus;
  with Sender as TcxDBTextEdit do
  if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true);
end;

procedure Tfr_personel.tablo_veliBeforeEdit(DataSet: TDataSet);
begin
  tablo_personel.Edit;
end;

procedure Tfr_personel.tablo_personelBeforePost(DataSet: TDataSet);
begin
  if tx_adi.Text = '' then
  begin
    tablo_veli.Cancel;
    tablo_personel.Cancel;
    exit;
  end;
  if tablo_veli.State in [dsEdit] then tablo_veli.Post;
  if tablo_veli.State in [dsInsert] then
  begin
    tablo_veli.Post;
    tablo_personel.FieldByName('personel_kodu').AsInteger := tablo_veli.fieldbyname('veli_kodu').AsInteger;
  end;
end;

procedure Tfr_personel.tablo_personelAfterDelete(DataSet: TDataSet);
begin
  bt_personel_bulClick(bt_personel_bul);
end;

procedure Tfr_personel.tablo_personelAfterInsert(DataSet: TDataSet);
begin
  tablo_veli.Insert;
  tx_adi.SetFocus;
end;

procedure Tfr_personel.bt_veli_secClick(Sender: TObject);
begin
 if tablo_personel.state in [dsEdit,dsInsert] then
 Begin
  application.CreateForm(Tfr_veli_sec,fr_veli_sec);
  fr_veli_sec.ShowModal;
  if SVeli.Iptal = true then Exit;
  tablo_personel.Edit;
  if tablo_veli.State in [dsInsert, dsEdit] then tablo_veli.Cancel;
  tablo_personel.FieldByName('personel_kodu').AsInteger := SVeli.VeliKodu;
  tablo_veli.Close;
  tablo_veli.Params[0].AsInteger := SVeli.VeliKodu;
  tablo_veli.Open;
 end
 else
  messagedlg('Þu anda kayýt ekleme yada düzeltme iþlemi yapmýyorsunuz!', mtError ,[mbOK], 0);
end;

procedure Tfr_personel.personel_sayfalarChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if tx_personel_kodu.Text = '' then
  begin
    AllowChange := False;
    exit;
  end;
end;

procedure Tfr_personel.tx_tarihKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tx_miktari.SetFocus;
end;

procedure Tfr_personel.tx_miktariKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #44 then exit;
     if Key = #8 then exit;
     if Key = #13 then bt_ekle.SetFocus;
     if (Key < #48) or (Key > #57) then
     begin
       Key := chr(256);
       Exit;
     end;
end;

procedure Tfr_personel.tx_miktariKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   i,u: integer;
begin
  if Key = VK_ADD then tx_miktari.EditingText := tx_miktari.EditingText + '000';
  if Key in [96..105,8,46,VK_ADD] then
  begin
    if length(tx_miktari.EditingText) < 4 then exit;
    if copy(tx_miktari.EditingText,length(tx_miktari.EditingText),1)=',' then exit;
    if copy(tx_miktari.EditingText,length(tx_miktari.EditingText)-1,2)=',0' then exit;
    i := tx_miktari.SelStart;
    u := length(tx_miktari.Text);
    tx_miktari.EditingText := formatfloat('0,.##',strtofloat(metindensil('.',tx_miktari.EditingText)));
    if i<>u then
    begin
    if u > length(tx_miktari.EditingText) then i:=i-1;
    if u < length(tx_miktari.EditingText) then i:=i+1;
    tx_miktari.SelStart := i;
    end
    else
      tx_miktari.SelStart := length(tx_miktari.EditingText);
  end;
end;

procedure Tfr_personel.bt_ekleClick(Sender: TObject);
var
  gun, ay,yil: word;
begin
  if (tx_tarih.Text = '') or (strtofloat(metindensil('.',tx_miktari.Text))<=0) then
  begin
    messagedlg('Maaþ tarihi yada miktarý yanlýþ!',mtError, [mbOk], 0);
    tx_tarih.SetFocus;
    Exit;
  end;
  tablo_maas.AppendRecord([tx_personel_kodu.Text,strtodate(tx_tarih.text),strtofloat(metindensil('.',tx_miktari.Text))]);
  decodedate(strtodate(tx_tarih.Text), yil, ay, gun);
  if ay = 12 then
  begin
    yil := yil + 1;
    ay := 1;
  end
  else
    ay := ay + 1;
  tx_tarih.date := encodedate(yil, ay, gun);
  tx_tarih.SetFocus;
//  tablo_taksitlerAfterscroll(tablo_taksitler);
end;

procedure Tfr_personel.bt_silClick(Sender: TObject);
begin
  if maas.Controller.SelectedRecordCount < 1 then
  begin
    messagedlg('Kayýt seçilmemiþ. Silicenek kayýt yok!',mtError, [mbOk], 0);
    exit;
  end;
  if messagedlg('Bu maaþ kaydýný silmek istiyor musunuz?',mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then
  begin
    maas.Controller.DeleteSelection;
//    tablo_taksitlerAfterscroll(tablo_taksitler);
  end;
end;

procedure Tfr_personel.rb_maasClick(Sender: TObject);
begin
  tablo_maas.Close;
  case rb_maas.ItemIndex of
    0:tablo_maas.Params[1].AsInteger := 12;
    1:tablo_maas.Params[1].AsInteger := 6;
    2:tablo_maas.Params[1].AsInteger := 999;
  end;
  tablo_maas.Open;
end;

procedure Tfr_personel.tx_alinanKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #44 then exit;
     if Key = #8 then exit;
     if Key = '+' then tx_alinan.Text := tx_alinan.Text + '000';
     if Key = #13 then tx_ilgili_hesap.SetFocus;
     if (Key < #48) or (Key > #57) then
     begin
       Key := chr(256);
       Exit;
     end;

end;

procedure Tfr_personel.tx_alinanKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
i,u:integer;
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

procedure Tfr_personel.tx_verilenKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #44 then exit;
 if Key = #8 then exit;
 if Key = '+' then tx_verilen.Text := tx_verilen.Text + '000';
 if (Key = #13) and (tx_verilen.Text = '') then tx_alinan.SetFocus;
 if Key = #13 then tx_alinan.SetFocus;
 if (Key < #48) or (Key > #57) then
 begin
  Key := chr(256);
  Exit;
 end;
end;

procedure Tfr_personel.tx_verilenKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
i,u:integer;
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

procedure Tfr_personel.tx_ilgili_hesapKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_aciklama.SetFocus;
end;

procedure Tfr_personel.tx_avans_tarihKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then tx_verilen.SetFocus;
end;

procedure Tfr_personel.tx_aciklamaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then bt_avans_ekle.SetFocus;
  with Sender as TcxMemo do
  if SelStart = 0 then
  begin
   Key := bkharf(Key,true);
   if Key='A' then tx_aciklama.Text := 'VANS';
   if Key='M' then tx_aciklama.Text := 'AAÞ';
  end;
end;

procedure Tfr_personel.tablo_veliAfterInsert(DataSet: TDataSet);
begin
  tablo_veli.FieldByName('ev_telefonu').Text := '454';
  tablo_veli.FieldByName('is_telefonu').Text := '454';
end;

procedure Tfr_personel.tablo_veliAfterEdit(DataSet: TDataSet);
begin
  if tablo_veliev_telefonu.Text = '' then
    tablo_veliev_telefonu.Text := '454';
  if tablo_veliis_telefonu.Text = '' then
    tablo_veliis_telefonu.Text := '454';
end;

procedure Tfr_personel.ts_avansShow(Sender: TObject);
var
alinan, verilen, odenmesi_gereken,toplam_maas: Extended;
begin
 tablo_paraakisi.Close;
 tablo_paraakisi.SQL.Clear;
 tablo_paraakisi.SQL.Add('select * from paraakisi where donemi=''PERSONEL'' and ilgili_no=:par0 and tarih>DATE_SUB(now(), INTERVAL :par1 month) order by tarih desc');
 tablo_paraakisi.Params[0].asinteger := strtoint(tx_personel_kodu.Text);
 case rb_para_secenek.ItemIndex of
  0:tablo_paraakisi.Params[1].asinteger := 2;
  1:tablo_paraakisi.Params[1].asinteger := 6;
  2:tablo_paraakisi.Params[1].asinteger := 12;
  3:
  begin
   tablo_paraakisi.SQL.Clear;
   tablo_paraakisi.SQL.Add('select * from paraakisi where donemi=''PERSONEL'' and ilgili_no=:par0 order by tarih desc');
   tablo_paraakisi.Params[0].asinteger := strtoint(tx_personel_kodu.Text);
  end;
 end;
 tablo_paraakisi.Open;
 tablo_oku.Close;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('select sum(miktar) as toplammaas from maas where tarih <= now() and personel_kodu ='+tx_personel_kodu.Text);
 tablo_oku.Open;
 toplam_maas := tablo_oku.fieldbyname('toplammaas').AsFloat;
 tablo_oku.Close;
 lb_almasi.Caption := formatfloat('0.,00',toplam_maas);
 lb_almasi.Hint := sayiyazi(toplam_maas);
 lb_almasi_y.Hint := sayiyazi(toplam_maas);
 lb_almasi_y.Caption := sayiyazi(toplam_maas);
 cxLabel7.Hint := lb_almasi.Hint;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('select sum(alinan) as alinan,sum(verilen) as verilen from paraakisi where donemi=''PERSONEL'' and ilgili_no ='+tx_personel_kodu.Text);
 tablo_oku.Open;
 alinan := tablo_oku.fieldbyname('alinan').AsFloat;
 verilen := tablo_oku.fieldbyname('verilen').AsFloat;
 tablo_oku.Close;
 lb_aldigi.Caption := formatfloat('0.,00',verilen-alinan);
 lb_aldigi.hint := sayiyazi(verilen-alinan);
 lb_aldigi_y.hint := sayiyazi(verilen-alinan);
 lb_aldigi_y.caption := sayiyazi(verilen-alinan);
 cxLabel8.hint := lb_aldigi.hint;
 odenmesi_gereken := toplam_maas - verilen + alinan;
 if odenmesi_gereken < 0 then
 begin
  cxLabel9.Caption := 'Maaþý Aþan Avans Toplamý';
  odenmesi_gereken := odenmesi_gereken*(-1);
 end
 else
  cxLabel9.Caption := 'Ödenmesi Gereken Para Miktarý';
 lb_odenmesi.Caption := formatfloat('0.,00',odenmesi_gereken);
 lb_odenmesi.hint := sayiyazi(odenmesi_gereken);
 lb_odenmesi_y.hint := sayiyazi(odenmesi_gereken);
 lb_odenmesi_y.caption := sayiyazi(odenmesi_gereken);
 cxLabel9.hint := lb_odenmesi.hint;
 paraakisi.ApplyBestFit();
end;

procedure Tfr_personel.ts_maasShow(Sender: TObject);
begin
 tablo_maas.Close;
 tablo_maas.Params[0].Text := tx_personel_kodu.Text;
 case rb_maas.ItemIndex of
  0:tablo_maas.Params[1].AsInteger := 12;
  1:tablo_maas.Params[1].AsInteger := 6;
  2:tablo_maas.Params[1].AsInteger := 999;
 end;
 tablo_maas.Open;
end;

procedure Tfr_personel.bt_avans_ekleClick(Sender: TObject);
var
alinan, verilen, odenmesi_gereken: Extended;
begin
 if (tx_alinan.Text='') and (tx_verilen.Text='') then
 begin
  messagedlg('Gider-Avans-Maaþ yada Gelir-Alýnan bilgilerinden biri dolu olmalýdýr!', mtError ,[mbOK], 0);
  tx_verilen.SetFocus;
  exit;
 end;
 tablo_paraakisi.Insert;
 tablo_paraakisi.FieldByName('donemi').Text := 'PERSONEL';
 tablo_paraakisi.FieldByName('ilgili_no').Text := tx_personel_kodu.Text;
 tablo_paraakisi.FieldByName('tarih').AsDateTime := tx_avans_tarih.Date;
 tablo_paraakisi.FieldByName('ilgilihesap').Text := tx_ilgili_hesap.Text;
 tablo_paraakisi.FieldByName('alinan').AsFloat := strtofloat(metindensil('.',tx_alinan.Text));
 tablo_paraakisi.FieldByName('verilen').AsFloat := strtofloat(metindensil('.',tx_verilen.Text));
 tablo_paraakisi.FieldByName('aciklama').Text := tx_aciklama.Text;
 tablo_paraakisi.FieldByName('adi_soyadi').Text := tx_adi.Text+' '+tx_soyadi.Text;
 tablo_paraakisi.Post;
 paraakisi.ApplyBestFit();
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('select sum(alinan) as alinan,sum(verilen) as verilen from paraakisi where donemi=''PERSONEL'' and ilgili_no ='+tx_personel_kodu.Text);
 tablo_oku.Open;
 alinan := tablo_oku.fieldbyname('alinan').AsFloat;
 verilen := tablo_oku.fieldbyname('verilen').AsFloat;
 tablo_oku.Close;
// verilen := strtofloat(metindensil('.',lb_aldigi.Caption));
 lb_aldigi.Caption := formatfloat('0.,00',verilen-alinan);
 lb_aldigi.hint := sayiyazi(verilen-alinan);
 lb_aldigi_y.hint := sayiyazi(verilen-alinan);
 lb_aldigi_y.caption := sayiyazi(verilen-alinan);
 cxLabel8.hint := lb_aldigi.hint;
 odenmesi_gereken := strtofloat(metindensil('.',lb_almasi.Caption)) - verilen + alinan;
 if odenmesi_gereken < 0 then
 begin
  cxLabel9.Caption := 'Maaþý Aþan Avans Toplamý';
  odenmesi_gereken := odenmesi_gereken*(-1);
 end
 else
  cxLabel9.Caption := 'Ödenmesi Gereken Para Miktarý';
 lb_odenmesi.Caption := formatfloat('0.,00',odenmesi_gereken);
 lb_odenmesi.hint := sayiyazi(odenmesi_gereken);
 lb_odenmesi_y.hint := sayiyazi(odenmesi_gereken);
 lb_odenmesi_y.caption := sayiyazi(odenmesi_gereken);
 cxLabel9.hint := lb_odenmesi.hint;
 tx_verilen.SetFocus;
end;

procedure Tfr_personel.tx_ders_1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_ders_2.setfocus;
  Key := bkharf(Key,true);
end;

procedure Tfr_personel.tx_ders_2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_ders_3.setfocus;
  Key := bkharf(Key,true);
end;

procedure Tfr_personel.tx_ders_3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if tablo_personel.State in [dsInsert,dsEdit] then tablo_personel.Post;
  Key := bkharf(Key,true);
end;

procedure Tfr_personel.tx_ise_giris_tarihiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then tx_tc_kimlik_no.SetFocus;
end;

procedure Tfr_personel.tx_suKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_adresi.setfocus;
end;

procedure Tfr_personel.tx_sigorta_noKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_nema_no.setfocus;
end;

procedure Tfr_personel.tx_nema_noKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_elektrik.setfocus;
end;

procedure Tfr_personel.rb_para_secenekClick(Sender: TObject);
begin
 tablo_paraakisi.Close;
 tablo_paraakisi.SQL.Clear;
 tablo_paraakisi.SQL.Add('select * from paraakisi where donemi=''PERSONEL'' and ilgili_no=:par0 and tarih>DATE_SUB(now(), INTERVAL :par1 month) order by tarih desc');
 tablo_paraakisi.Params[0].asinteger := strtoint(tx_personel_kodu.Text);
 case rb_para_secenek.ItemIndex of
  0:tablo_paraakisi.Params[1].asinteger := 2;
  1:tablo_paraakisi.Params[1].asinteger := 6;
  2:tablo_paraakisi.Params[1].asinteger := 12;
  3:
  begin
   tablo_paraakisi.SQL.Clear;
   tablo_paraakisi.SQL.Add('select * from paraakisi where donemi=''PERSONEL'' and ilgili_no=:par0 order by tarih desc');
   tablo_paraakisi.Params[0].asinteger := strtoint(tx_personel_kodu.Text);
  end;
 end;
 tablo_paraakisi.Open;
 paraakisi.ApplyBestFit();
end;

procedure Tfr_personel.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_para_akisi,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_personel.bt_yazdirClick(Sender: TObject);
begin
  pr_paraakisi.Preview(True,nil);
end;

procedure Tfr_personel.bt_exceleaktarClick(Sender: TObject);
begin
  dosya.Execute;
end;

procedure Tfr_personel.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_personel.paraakisiDataControllerDataChanged(Sender: TObject);
var
alinan,verilen:Extended;
begin
 if tablo_personel.state <> dsBrowse then exit; 
 if tablo_personel.RecordCount < 0 then exit;
  alinan := strtofloat(metindensil('.',paraakisi.DataController.Summary.FooterSummaryTexts[0]));
  verilen := strtofloat(metindensil('.',paraakisi.DataController.Summary.FooterSummaryTexts[1]));
  paraakisi.DataController.Summary.FooterSummaryItems.Items[2].Format := '''Fark '+formatfloat('0.,00',verilen-alinan)+'''';
end;

procedure Tfr_personel.tablo_personelBeforeDelete(DataSet: TDataSet);
begin
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from paraakisi where donemi=''PERSONEL'' and ilgili_no='+tx_personel_kodu.text);
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from maas where personel_kodu='+tx_personel_kodu.text);
  tablo_oku.ExecSQL;
end;

procedure Tfr_personel.ts_ders_programiShow(Sender: TObject);
const
gunler:array[1..7] of string=('Pazertesi','Salý','Çarþamba','Perþembe','Cuma','Cumartesi','Pazar');
var
sql:string;
i,j,k,max,bos:integer;
begin
 gr_ders_programi.RowCount := 2;
 gr_ders_programi.Cols[0].Text := '';
 for i := 10 downto 1 do
  gr_ders_programi.cols[i].Text := ' '+inttostr(i)+'. Ders ';
 tablo_oku.close;
 tablo_oku.SQL.Clear;
 sql:='SELECT personel_kodu,sinif,gun,p.ders_1 AS ders1,p.ders_2 AS ders2,p.ders_3 AS ders3,d.ders_1,d.ders_2,d.ders_3,ders_4,ders_5,ders_6,ders_7,ders_8,ders_9,ders_10 ';
 sql:= sql+'FROM ders_programlari d inner join personel p on ';
 sql:=sql+'d.ders_1=p.ders_1 OR d.ders_1=p.ders_2 OR d.ders_1=p.ders_3 ';
 sql:=sql+'or d.ders_2=p.ders_1 OR d.ders_2=p.ders_2 OR d.ders_2=p.ders_3 ';
 sql:=sql+'or d.ders_3=p.ders_1 OR d.ders_3=p.ders_2 OR d.ders_3=p.ders_3 ';
 sql:=sql+'or d.ders_4=p.ders_1 OR d.ders_4=p.ders_2 OR d.ders_4=p.ders_3 ';
 sql:=sql+'or d.ders_5=p.ders_1 OR d.ders_5=p.ders_2 OR d.ders_5=p.ders_3 ';
 sql:=sql+'or d.ders_6=p.ders_1 OR d.ders_6=p.ders_2 OR d.ders_6=p.ders_3 ';
 sql:=sql+'or d.ders_7=p.ders_1 OR d.ders_7=p.ders_2 OR d.ders_7=p.ders_3 ';
 sql:=sql+'or d.ders_8=p.ders_1 OR d.ders_8=p.ders_2 OR d.ders_8=p.ders_3 ';
 sql:=sql+'or d.ders_9=p.ders_1 OR d.ders_9=p.ders_2 OR d.ders_9=p.ders_3 ';
 sql:=sql+'or d.ders_10=p.ders_1 OR d.ders_10=p.ders_2 OR d.ders_10=p.ders_3 ';
 sql:=sql+'where personel_kodu='+tx_personel_kodu.Text;
 tablo_oku.SQL.Add(sql);
 tablo_oku.Open;
 bos:=0;
 if tablo_oku.RecordCount > 0 then
 bos:=0;
 for i:=1 to 7 do
 begin
  tablo_oku.Filtered := false;
  tablo_oku.Filter := 'gun='''+gunler[i]+'''';
  tablo_oku.Filtered := true;
  if tablo_oku.RecordCount > 0 then
  begin
   if gr_ders_programi.RowCount - 1+bos < i then
    gr_ders_programi.RowCount := gr_ders_programi.RowCount+1;
   gr_ders_programi.Rows[gr_ders_programi.RowCount-1].Text := ' '+gunler[i]+' ';
   while tablo_oku.eof = false do
   begin
    for j:= 1 to 3 do
     for k:= 1 to 10 do
     if tablo_oku.FieldByName('ders'+inttostr(j)).Text = tablo_oku.FieldByName('ders_'+inttostr(k)).Text then
      gr_ders_programi.Cells[k,gr_ders_programi.RowCount-1]:=' '+tablo_oku.FieldByName('sinif').Text+'*'+tablo_oku.FieldByName('ders_'+inttostr(k)).Text+' ';
    tablo_oku.Next;
   end;
  end
  else
   bos:=bos+1;
 end;
//autosize
 for i := 0 to gr_ders_programi.colcount-1 do
 begin
  gr_ders_programi.cols[gr_ders_programi.colCount-1].Text := ' '+inttostr(i)+'. Ders ';
  max := 0;
 for j := 0 to gr_ders_programi.rowcount-1 do begin
  k := gr_ders_programi.canvas.textWidth (gr_ders_programi.cells[i,j]);
  if k > max then max := k;
  end;
   gr_ders_programi.colWidths[i] := max + gr_ders_programi.gridLineWidth +1;
 end;
 tablo_oku.Close;
 tablo_oku.Filtered := false;
end;

procedure Tfr_personel.bt_program_yazdirClick(Sender: TObject);
begin
  pr_program.Preview(True,nil);
end;

procedure Tfr_personel.bt_program_excel_aktarClick(Sender: TObject);
begin
 dosya_program.Execute;
end;

procedure Tfr_personel.dosya_programCanClose(Sender: TObject;
  var CanClose: Boolean);
const
 {$J+}
 CXlsLabel: array[0..5] of Word = ($204, 0, 0, 0, 0, 0);
 {$J-}
 {$J+} CXlsBof: array[0..5] of Word = ($809, 8, 00, $10, 0, 0); {$J-}
 CXlsEof: array[0..1] of Word = ($0A, 00);
var
 FStream: TFileStream;
 I, J: Integer;
 L: Word;
begin
  FStream := TFileStream.Create(PChar(dosya_program.FileName+'.xls'), fmCreate or fmOpenWrite);
  try
    CXlsBof[4] := 0;
    FStream.WriteBuffer(CXlsBof, SizeOf(CXlsBof));
    for i := 0 to gr_ders_programi.ColCount - 1 do
      for j := 0 to gr_ders_programi.RowCount - 1 do
      begin
       L := Length(gr_ders_programi.cells[i, j]);
       CXlsLabel[1] := 8 + L;
       CXlsLabel[2] := J;
       CXlsLabel[3] := I;
       CXlsLabel[5] := L;
       FStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
       FStream.WriteBuffer(Pointer(gr_ders_programi.cells[i, j])^, L);
      end;
    FStream.WriteBuffer(CXlsEof, SizeOf(CXlsEof));
  finally
    FStream.Free;
  end;
  t_zaman_program.Enabled := true;
end;

procedure Tfr_personel.t_zaman_programTimer(Sender: TObject);
begin
 if fileexists(dosya_program.FileName) = true then
 begin
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya_program.FileName), nil, nil, SW_SHOWMINIMIZED);
  t_zaman_program.Enabled := false;
 end;
end;

end.
