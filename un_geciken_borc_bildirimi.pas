unit un_geciken_borc_bildirimi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxDropDownEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxGroupBox, cxTimeEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ExtCtrls, ComCtrls, dxPSCore,
  cxDBLabel, cxContainer, cxLabel, StdCtrls, Buttons, cxTextEdit,
  cxMaskEdit, cxExportGrid4Link,ShellAPI, dxPScxGridLnk, cxCheckBox, cxMemo,
  ZSqlMonitor, dxPScxCommon, Menus;

type
  Tfr_geciken_borc_bildirimi = class(TForm)
    mn_geciken_borc_bildirimi: TcxGridPopupMenu;
    ara_geciken_borc_bildirimi: TDataSource;
    ogr_veli_bilgileri: TZReadOnlyQuery;
    tablo_geciken_borc_bildirimi: TZQuery;
    ogr_veli_bilgileriogr_no: TIntegerField;
    ogr_veli_bilgileriadi: TStringField;
    ogr_veli_bilgilerisoyadi: TStringField;
    ogr_veli_bilgileriis_telefonu: TStringField;
    ogr_veli_bilgileriev_telefonu: TStringField;
    ogr_veli_bilgilerigsm: TStringField;
    tablo_geciken_borc_bildirimidonemi: TStringField;
    tablo_geciken_borc_bildirimiogr_no: TIntegerField;
    tablo_geciken_borc_bildirimikullanici: TStringField;
    tablo_geciken_borc_bildirimibildirim_tarihi: TDateTimeField;
    tablo_geciken_borc_bildirimiaciklama: TStringField;
    Panel1: TPanel;
    dosya: TSaveDialog;
    t_zaman: TTimer;
    pr_geciken_borc_bildirimi: TdxComponentPrinter;
    tablo_geciken_borc_bildirimiid: TLargeintField;
    tablo_geciken_borc_bildirimikiminle_gorusuldu: TStringField;
    tablo_geciken_borc_bildirimigeciken_borc_miktari: TFloatField;
    tablo_geciken_borc_bildirimikontrol_tarihi: TDateTimeField;
    tablo_oku: TZReadOnlyQuery;
    tablo_geciken_borc_ekle: TZReadOnlyQuery;
    tablo_ogrenciler: TZReadOnlyQuery;
    tablo_taksit: TZReadOnlyQuery;
    ogr_veli_bilgileriveli_adi: TStringField;
    ogr_veli_bilgileriveli_soyadi: TStringField;
    ogr_veli_bilgileridonemi: TStringField;
    ogr_veli_bilgilerisinifi: TStringField;
    ara_ogr_veli_bilgileri: TDataSource;
    tablo_geciken_borc_bildirimiadi: TStringField;
    tablo_geciken_borc_bildirimisoyadi: TStringField;
    tablo_geciken_borc_bildirimiveli_adi: TStringField;
    tablo_geciken_borc_bildirimiveli_soyadi: TStringField;
    tablo_geciken_borc_bildirimiev_telefonu: TStringField;
    tablo_geciken_borc_bildirimiis_telefonu: TStringField;
    tablo_geciken_borc_bildirimigsm: TStringField;
    tablo_geciken_borc_bildirimisinifi: TStringField;
    cxGroupBox1: TcxGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    cm_don_kis: TcxComboBox;
    cm_ogr_kis: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    tx_ogr_bit: TcxTextEdit;
    tx_ogr_bas: TcxTextEdit;
    bt_bas_bul: TBitBtn;
    bt_bit_bul: TBitBtn;
    cm_tar_kis: TcxComboBox;
    cm_aci_kis: TcxComboBox;
    tx_aci_bas: TcxTextEdit;
    bt_goster: TBitBtn;
    bt_Sifirla: TBitBtn;
    cm_bil_kis: TcxComboBox;
    tx_bil_bas: TcxDateEdit;
    tx_bil_bit: TcxDateEdit;
    cm_kul_kis: TcxComboBox;
    tx_kul_bas: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    gr_geciken_borc: TcxGrid;
    geciken_borc_bildirimi: TcxGridDBTableView;
    geciken_borc_bildirimiid: TcxGridDBColumn;
    geciken_borc_bildirimisinifi: TcxGridDBColumn;
    geciken_borc_bildirimidonemi: TcxGridDBColumn;
    geciken_borc_bildirimiogr_no: TcxGridDBColumn;
    geciken_borc_bildirimiadi: TcxGridDBColumn;
    geciken_borc_bildirimisoyadi: TcxGridDBColumn;
    geciken_borc_bildirimiveli_adi: TcxGridDBColumn;
    geciken_borc_bildirimiveli_soyadi: TcxGridDBColumn;
    geciken_borc_bildirimiev_telefonu: TcxGridDBColumn;
    geciken_borc_bildirimigsm: TcxGridDBColumn;
    geciken_borc_bildirimiis_telefonu: TcxGridDBColumn;
    geciken_borc_bildirimikontrol_tarihi: TcxGridDBColumn;
    geciken_borc_bildirimigeciken_borc_miktari: TcxGridDBColumn;
    geciken_borc_bildirimiaciklama: TcxGridDBColumn;
    geciken_borc_bildirimikiminle_gorusuldu: TcxGridDBColumn;
    geciken_borc_bildirimibildirim_tarihi: TcxGridDBColumn;
    geciken_borc_bildirimikullanici: TcxGridDBColumn;
    level1: TcxGridLevel;
    tx_kontrol_tarihleri: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    Label2: TLabel;
    tx_kontol_tarih: TcxDateEdit;
    bt_hesapla: TBitBtn;
    tablo_geciken_borc_bildirimiaktif: TIntegerField;
    level2: TcxGridLevel;
    tablo_geciken_detay: TZReadOnlyQuery;
    geciken_borc_detay: TcxGridDBTableView;
    ara_geciken_detay: TDataSource;
    tablo_geciken_detayid: TLargeintField;
    tablo_geciken_detaydonemi: TStringField;
    tablo_geciken_detayogr_no: TIntegerField;
    tablo_geciken_detaykontrol_tarihi: TDateField;
    tablo_geciken_detaygeciken_borc_miktari: TFloatField;
    tablo_geciken_detaybildirim_tarihi: TDateTimeField;
    tablo_geciken_detaykiminle_gorusuldu: TStringField;
    tablo_geciken_detayaciklama: TStringField;
    tablo_geciken_detaykullanici: TStringField;
    tablo_geciken_detayaktif: TIntegerField;
    geciken_borc_detaykontrol_tarihi: TcxGridDBColumn;
    geciken_borc_detaybildirim_tarihi: TcxGridDBColumn;
    geciken_borc_detaykiminle_gorusuldu: TcxGridDBColumn;
    geciken_borc_detayaciklama: TcxGridDBColumn;
    geciken_borc_detaykullanici: TcxGridDBColumn;
    pr_geciken_borc_bildirimiLink1: TdxGridReportLink;
    bt_tablo: TBitBtn;
    mn_tablo: TPopupMenu;
    mn_yazdir: TMenuItem;
    mn_excel: TMenuItem;
    bt_bildirim: TBitBtn;
    mn_bildirim: TPopupMenu;
    mn_sms: TMenuItem;
    mn_eposta: TMenuItem;
    mn_faks: TMenuItem;
    ogr_veli_bilgilerisms_bildirim: TStringField;
    ogr_veli_bilgilerifax_bildirim: TStringField;
    ogr_veli_bilgileriemail_bildirim: TStringField;
    tablo_geciken_borc_bildirimisms_bildirim: TStringField;
    tablo_geciken_borc_bildirimifax_bildirim: TStringField;
    tablo_geciken_borc_bildirimiemail_bildirim: TStringField;
    geciken_borc_bildirimisms_bildirim: TcxGridDBColumn;
    geciken_borc_bildirimifax_bildirim: TcxGridDBColumn;
    geciken_borc_bildirimiemail_bildirim: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tablo_geciken_borc_bildirimiAfterEdit(DataSet: TDataSet);
    procedure cm_ogr_kisPropertiesChange(Sender: TObject);
    procedure cm_tar_kisPropertiesChange(Sender: TObject);
    procedure cm_aci_kisPropertiesChange(Sender: TObject);
    procedure bt_SifirlaClick(Sender: TObject);
    procedure bt_bas_bulClick(Sender: TObject);
    procedure cm_bil_kisPropertiesChange(Sender: TObject);
    procedure cm_kul_kisPropertiesChange(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_zamanTimer(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tablo_geciken_borc_bildirimiFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_geciken_borc_bildirimiCalcFields(DataSet: TDataSet);
    procedure bt_hesaplaClick(Sender: TObject);
    procedure bt_tabloClick(Sender: TObject);
    procedure bt_bildirimClick(Sender: TObject);
    procedure mn_yazdirClick(Sender: TObject);
    procedure mn_excelClick(Sender: TObject);
    procedure mn_smsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_geciken_borc_bildirimi: Tfr_geciken_borc_bildirimi;

implementation

uses veritabani, ogrenci_arama, functionlar,ogrenci, MesajGonder;
{$R *.dfm}

procedure Tfr_geciken_borc_bildirimi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_geciken_borc_bildirimi.tablo_geciken_borc_bildirimiAfterEdit(
  DataSet: TDataSet);
begin
 geciken_borc_bildirimibildirim_tarihi.EditValue := now;
 geciken_borc_bildirimikullanici.EditValue := kullanici_adi;
end;

procedure Tfr_geciken_borc_bildirimi.cm_ogr_kisPropertiesChange(
  Sender: TObject);
begin
  tx_ogr_bas.Enabled := False;
  tx_ogr_bit.Enabled := False;
  if cm_ogr_kis.Text = 'Tümü' then
  begin
    tx_ogr_bas.Clear;
    tx_ogr_bit.Clear;
  end;
  if cm_ogr_kis.Text <> 'Tümü' then tx_ogr_bas.Enabled := True;
  if cm_ogr_kis.Text = 'Arasýnda' then tx_ogr_bit.Enabled := True;

end;

procedure Tfr_geciken_borc_bildirimi.cm_tar_kisPropertiesChange(
  Sender: TObject);
begin
  tx_kontrol_tarihleri.Enabled := False;
  tx_kontrol_tarihleri.Properties.Items.Clear;
  if cm_tar_kis.Text = 'Eþit' then
  begin
   tablo_oku.Close;
   tablo_oku.SQL.Clear;
   tablo_oku.SQL.Add('select distinct kontrol_tarihi from geciken_borc_bildirimi order by kontrol_tarihi desc');
   tablo_oku.Open;
   while tablo_oku.Eof = false do
   begin
   tx_kontrol_tarihleri.Properties.Items.Add(tablo_oku.fieldbyname('kontrol_tarihi').Text);
   tablo_oku.Next;
   end;
   tablo_oku.Close;
   tx_kontrol_tarihleri.Enabled := True;
  end;
end;

procedure Tfr_geciken_borc_bildirimi.cm_aci_kisPropertiesChange(
  Sender: TObject);
begin
  tx_aci_bas.Enabled := False;
  if cm_aci_kis.Text = 'Tümü' then
  begin
    tx_aci_bas.Clear;
  end;
  if cm_aci_kis.Text <> 'Tümü' then tx_aci_bas.Enabled := True;
end;

procedure Tfr_geciken_borc_bildirimi.bt_SifirlaClick(Sender: TObject);
begin
  tablo_geciken_borc_bildirimi.Close;
  tablo_geciken_borc_bildirimi.SQL.Clear;
  cm_don_kis.Text := AktifDonem;
  cm_ogr_kis.Text := 'Tümü';
  tx_ogr_bas.Enabled := False;
  tx_ogr_bit.Enabled := False;
  tx_ogr_bas.Clear;
  tx_ogr_bit.Clear;
{  cm_isl_kis.Text := 'Tümü';
  tx_isl_bas.Enabled := False;
  tx_isl_bit.Enabled := False;
  tx_isl_bas.Clear;
  tx_isl_bit.Clear;
}  cm_tar_kis.Text := 'Tümü';
  tx_kontrol_tarihleri.Enabled := False;
  tx_kontrol_tarihleri.Clear;
  cm_aci_kis.Text := 'Tümü';
  tx_aci_bas.Enabled := False;
  tx_aci_bas.Clear;
 { cm_ist_kis.Text := 'Tümü';
  tx_ist_bas.Enabled := False;
  tx_ist_bit.Enabled := False;
  tx_ist_bas.Clear;
  tx_ist_bit.Clear;
  cm_hes_kis.Text := 'Tümü';}

end;

procedure Tfr_geciken_borc_bildirimi.bt_bas_bulClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  if sender = bt_bas_bul then
    tx_ogr_bas.Text := inttostr(SOgr.OgrNo)
  else
    tx_ogr_bit.Text := inttostr(SOgr.OgrNo);
end;

procedure Tfr_geciken_borc_bildirimi.cm_bil_kisPropertiesChange(
  Sender: TObject);
begin
  tx_bil_bas.Enabled := False;
  tx_bil_bit.Enabled := False;
  if cm_bil_kis.Text = 'Tümü' then
  begin
    tx_bil_bas.Clear;
    tx_bil_bit.Clear;
  end;
  if cm_bil_kis.Text <> 'Tümü' then tx_bil_bas.Enabled := True;
  if cm_bil_kis.Text = 'Arasýnda' then tx_bil_bit.Enabled := True;

end;

procedure Tfr_geciken_borc_bildirimi.cm_kul_kisPropertiesChange(
  Sender: TObject);
begin
  tx_kul_bas.Enabled := False;
  if cm_kul_kis.Text = 'Tümü' then
  begin
    tx_kul_bas.Clear;
  end;
  if cm_kul_kis.Text <> 'Tümü' then tx_kul_bas.Enabled := True;

end;

procedure Tfr_geciken_borc_bildirimi.bt_gosterClick(Sender: TObject);
var
wheredurum,sql:string;
begin
    wheredurum := ' where ';
    tablo_geciken_borc_bildirimi.Close;
    ara_geciken_borc_bildirimi.Enabled := false;
    ogr_veli_bilgileri.Close;
    tablo_geciken_borc_bildirimi.SQL.Clear;
    sql:='select * from geciken_borc_bildirimi';
  if cm_ogr_kis.Text <> 'Tümü' then
  begin
    if cm_ogr_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'ogr_no = '+ tx_ogr_bas.text
    else if cm_ogr_kis.Text = 'Büyük' then
      sql := sql + wheredurum + 'ogr_no > '+ tx_ogr_bas.text
    else if cm_ogr_kis.Text = 'Küçük' then
      sql := sql + wheredurum + 'ogr_no < '+ tx_ogr_bas.text
    else if cm_ogr_kis.Text = 'Arasýnda' then
      sql := sql + wheredurum + 'ogr_no between '+ tx_ogr_bas.text+' and '+tx_ogr_bit.text;
    wheredurum := ' and ';
  end;
  if cm_don_kis.Text <> 'Tümü' then
  begin
    sql := sql + wheredurum + 'donemi = "'+ cm_don_kis.Text+'"';
    wheredurum := ' and ';
  end;
  if cm_tar_kis.Text = 'Eþit' then
  begin
    sql := sql + wheredurum + 'kontrol_tarihi = "'+ mtarih(strtodate(tx_kontrol_tarihleri.text))+'"';
    wheredurum := ' and ';
  end;
  if cm_aci_kis.Text <> 'Tümü' then
  begin
    if cm_aci_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'aciklama = '+ '"'+tx_aci_bas.text+'"'
    else if cm_aci_kis.Text = 'Ýçeren' then
      sql := sql + wheredurum + 'aciklama like '+'"%'+ tx_aci_bas.text+'%"';
    wheredurum := ' and ';
  end;
  if cm_bil_kis.Text <> 'Tümü' then
  begin
    if cm_bil_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'bildirim_tarihi = "'+ mtarih(tx_bil_bas.date)+'"'
    else if cm_bil_kis.Text = 'Büyük' then
      sql := sql + wheredurum + 'bildirim_tarihi > "'+ mtarih(tx_bil_bas.date)+'"'
    else if cm_bil_kis.Text = 'Küçük' then
      sql := sql + wheredurum + 'bildirim_tarihi < "'+ mtarih(tx_bil_bas.date)+'"'
    else if cm_bil_kis.Text = 'Arasýnda' then
      sql := sql + wheredurum + 'bildirim_tarihi between "'+ mtarih(tx_bil_bas.date)+'" and "'+mtarih(tx_bil_bit.date)+'"';
    wheredurum := ' and ';
  end;
  if cm_kul_kis.Text <> 'Tümü' then
  begin
    if cm_kul_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'kullanici = '+ '"'+tx_kul_bas.text+'"'
    else if cm_kul_kis.Text = 'Ýçeren' then
      sql := sql + wheredurum + 'kullanici like '+'"%'+ tx_kul_bas.text+'%"';
    wheredurum := ' and ';
  end;
 sql:= sql+wheredurum+' geciken_borc_miktari<>0 order by donemi,ogr_no';
    tablo_geciken_borc_bildirimi.SQL.Add(sql);
    ogr_veli_bilgileri.Open;
    tablo_geciken_borc_bildirimi.Filtered := gizli;
    tablo_geciken_detay.Open;
    tablo_geciken_borc_bildirimi.Open;
    ara_geciken_borc_bildirimi.Enabled := true;
    geciken_borc_bildirimi.DataController.Groups.FullExpand;
    geciken_borc_bildirimi.ApplyBestFit();
end;

procedure Tfr_geciken_borc_bildirimi.FormCreate(Sender: TObject);
begin
  cm_don_kis.Properties.Items := Donemler;
  cm_don_kis.Text := AktifDonem;
  tx_kontol_tarih.Date := now;
end;

procedure Tfr_geciken_borc_bildirimi.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_geciken_borc_bildirimi.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_geciken_borc,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_geciken_borc_bildirimi.FormKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
  if tablo_geciken_borc_bildirimi.RecordCount <1 then exit;
  SOgr.Donem := tablo_geciken_borc_bildirimi.fieldbyname('donemi').Text;
  SOgr.OgrNo := tablo_geciken_borc_bildirimi.fieldbyname('ogr_no').AsInteger;
  SOgr.KayitGoster := true;
  application.CreateForm(Tfr_ogrenci,fr_ogrenci);
  fr_ogrenci.sayfalar_taksit.Show;
  end;
end;

procedure Tfr_geciken_borc_bildirimi.tablo_geciken_borc_bildirimiFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_geciken_borc_bildirimi.fieldbyname('donemi').AsString,tablo_geciken_borc_bildirimi.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_geciken_borc_bildirimi.tablo_geciken_borc_bildirimiCalcFields(
  DataSet: TDataSet);
begin
  if ogr_veli_bilgileri.Locate('donemi;ogr_no',vararrayof([tablo_geciken_borc_bildirimi.FieldByName('donemi').Text,tablo_geciken_borc_bildirimi.FieldByName('ogr_no').AsInteger]),[loCaseInsensitive]) then
  begin
    tablo_geciken_borc_bildirimi.FieldByName('sinifi').Text := ogr_veli_bilgileri.fieldbyname('sinifi').Text;
    tablo_geciken_borc_bildirimi.FieldByName('adi').Text := ogr_veli_bilgileri.fieldbyname('adi').Text;
    tablo_geciken_borc_bildirimi.FieldByName('soyadi').Text := ogr_veli_bilgileri.fieldbyname('soyadi').Text;
    tablo_geciken_borc_bildirimi.FieldByName('veli_adi').Text := ogr_veli_bilgileri.fieldbyname('veli_adi').Text;
    tablo_geciken_borc_bildirimi.FieldByName('veli_soyadi').Text := ogr_veli_bilgileri.fieldbyname('veli_soyadi').Text;
    tablo_geciken_borc_bildirimi.FieldByName('ev_telefonu').Text := ogr_veli_bilgileri.fieldbyname('ev_telefonu').Text;
    tablo_geciken_borc_bildirimi.FieldByName('is_telefonu').Text := ogr_veli_bilgileri.fieldbyname('is_telefonu').Text;
    tablo_geciken_borc_bildirimi.FieldByName('gsm').Text := ogr_veli_bilgileri.fieldbyname('gsm').Text;
    tablo_geciken_borc_bildirimi.FieldByName('sms_bildirim').Text := ogr_veli_bilgileri.fieldbyname('sms_bildirim').Text;
    tablo_geciken_borc_bildirimi.FieldByName('fax_bildirim').Text := ogr_veli_bilgileri.fieldbyname('fax_bildirim').Text;
    tablo_geciken_borc_bildirimi.FieldByName('email_bildirim').Text := ogr_veli_bilgileri.fieldbyname('email_bildirim').Text;
  end;
end;

procedure Tfr_geciken_borc_bildirimi.bt_hesaplaClick(Sender: TObject);
Begin
   tablo_ogrenciler.Close;
   tablo_ogrenciler.SQL.Clear;
   tablo_ogrenciler.SQL.Add('select donemi,ogr_no from ogrenciler order by donemi,ogr_no');
   tablo_ogrenciler.Open;
   tablo_oku.Close;
   tablo_oku.SQL.Clear;
   tablo_oku.SQL.Add('select sum(alinan-verilen) as alinanpara from paraakisi where ilgili_no =:par1 and donemi =:par2');
   tablo_geciken_borc_ekle.Close;
   tablo_geciken_borc_ekle.SQL.Clear;
   tablo_geciken_borc_ekle.sql.Add('insert into geciken_borc_bildirimi set kontrol_tarihi=now(),ogr_no =:par1,donemi =:par2,geciken_borc_miktari =:par3,aktif=:par4');
   tablo_taksit.Close;
   tablo_taksit.SQL.Clear;
   tablo_taksit.sql.Add('select sum(miktari) as taksittutari from taksitler where vadesi < now() and ogr_no =:par1 and donemi =:par2');
   while tablo_ogrenciler.Eof = false do
   begin
     tablo_oku.close;
     tablo_oku.Params[0].AsInteger := tablo_ogrenciler.fieldbyname('ogr_no').AsInteger;
     tablo_oku.Params[1].text := tablo_ogrenciler.fieldbyname('donemi').text;
     tablo_oku.open;
     tablo_taksit.close;
     tablo_taksit.Params[0].AsInteger := tablo_ogrenciler.fieldbyname('ogr_no').AsInteger;
     tablo_taksit.Params[1].text := tablo_ogrenciler.fieldbyname('donemi').text;
     tablo_taksit.open;
     if tablo_taksit.FieldByName('taksittutari').AsFloat-tablo_oku.FieldByName('alinanpara').AsFloat> 0 then
     begin
       tablo_geciken_borc_ekle.Params[0].AsInteger := tablo_ogrenciler.fieldbyname('ogr_no').AsInteger;
       tablo_geciken_borc_ekle.Params[1].text := tablo_ogrenciler.fieldbyname('donemi').text;
       tablo_geciken_borc_ekle.Params[2].AsFloat := tablo_taksit.FieldByName('taksittutari').AsFloat-tablo_oku.FieldByName('alinanpara').AsFloat;
       tablo_geciken_borc_ekle.Params[3].asinteger := 0;
       tablo_geciken_borc_ekle.ExecSQL;
     end;
     tablo_ogrenciler.Next;
   end;
   tx_kontrol_tarihleri.Enabled := true;
   tx_kontrol_tarihleri.Properties.Items.Add(tx_kontol_tarih.Text);
   cm_tar_kis.Text := 'Eþit';
   tx_kontrol_tarihleri.Text:= tx_kontol_tarih.Text;
   bt_gosterClick(bt_goster);
end;

procedure Tfr_geciken_borc_bildirimi.bt_tabloClick(Sender: TObject);
begin
  if geciken_borc_bildirimi.ViewData.RecordCount < 1 then
  begin
    MessageDlg('Tabloda hiç bir kayýt yok!', mtWarning, [mbOK], 0);
    exit;
  end;
  mn_tablo.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure Tfr_geciken_borc_bildirimi.bt_bildirimClick(Sender: TObject);
begin
  mn_bildirim.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure Tfr_geciken_borc_bildirimi.mn_yazdirClick(Sender: TObject);
begin
  pr_geciken_borc_bildirimi.Preview(True,nil);
end;

procedure Tfr_geciken_borc_bildirimi.mn_excelClick(Sender: TObject);
begin
  dosya.Execute;
end;

procedure Tfr_geciken_borc_bildirimi.mn_smsClick(Sender: TObject);
var
  idler:WideString;
  i: integer;
begin
  idler:='';
  for i:=0 to geciken_borc_bildirimi.ViewData.RecordCount-1 do
  begin
    if geciken_borc_bildirimi.ViewData.Rows[i].DisplayTexts[geciken_borc_bildirimi.GetColumnByFieldName('sms_bildirim').Index]='Evet' then
      idler:=idler+geciken_borc_bildirimi.ViewData.Rows[i].DisplayTexts[geciken_borc_bildirimi.GetColumnByFieldName('id').Index]+',';
  end;
  if idler='' then
  begin
    MessageDlg('SMS göndermek için uygun kayýt bulunamadý.', mtWarning, [mbOK], 0);
    exit;
  end;
  idler:=copy(idler,1,length(idler)-1);
  idler:='('+idler+')';
  application.CreateForm(TFrMesajGonder,FrMesajGonder);
  with FrMesajGonder do
  begin
    tablo_alicilar.Close;
    tablo_alicilar.SQL.Clear;
    tablo_alicilar.SQL.Add('select adi,soyadi,veli_adi,veli_soyadi,gsm,sms_bildirim,'
                          +'aciklama,kontrol_tarihi,geciken_borc_miktari'
                          +' from geciken_borc_bildirimi'
                          +' left join ogrenciler using(donemi,ogr_no)'
                          +' left join veliler using (veli_kodu)'
                          +' where id in '+idler);
    gr_alicilar.Visible:=true;
    sp_bol.CloseSplitter;
    alicilari_hazirla;
  end;
  MessageDlg('Alýcýlar ayarlandý. Hazýr Mesajlar düðmesinden mesaj seçerek gönderebilirsiniz.', mtInformation, [mbOK], 0);
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('update geciken_borc_bildirimi set kiminle_gorusuldu=''SMS'',aciklama=''Bilgilendirildi.'' where id in '+idler);
  tablo_oku.ExecSQL;
  tablo_geciken_borc_bildirimi.Refresh;
end;

end.

