unit un_devamsizlik_listesi;

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
  cxMaskEdit, cxExportGrid4Link,ShellAPI, dxPScxGridLnk, cxCheckBox,
  dxPScxCommon, Menus;

type
  Tfr_devamsizlik_listesi = class(TForm)
    mn_devamsizlik: TcxGridPopupMenu;
    ara_devamsizlik: TDataSource;
    gr_devamsizlik: TcxGrid;
    devamsizlik: TcxGridDBTableView;
    level1: TcxGridLevel;
    ogr_veli_bilgileri: TZReadOnlyQuery;
    tablo_devamsizlik: TZQuery;
    ogr_veli_bilgileriogr_no: TIntegerField;
    ogr_veli_bilgileriadi: TStringField;
    ogr_veli_bilgilerisoyadi: TStringField;
    ogr_veli_bilgileriis_telefonu: TStringField;
    ogr_veli_bilgileriev_telefonu: TStringField;
    ogr_veli_bilgilerigsm: TStringField;
    tablo_devamsizlikdonemi: TStringField;
    tablo_devamsizlikogr_no: TIntegerField;
    tablo_devamsizliktarih: TDateField;
    tablo_devamsizlikkullanici: TStringField;
    tablo_devamsizlikbildirim_tarihi: TDateTimeField;
    tablo_devamsizlikaciklama: TStringField;
    devamsizlikid: TcxGridDBColumn;
    devamsizlikdonemi: TcxGridDBColumn;
    devamsizlikogr_no: TcxGridDBColumn;
    devamsizliktarih: TcxGridDBColumn;
    devamsizlikkullanici: TcxGridDBColumn;
    devamsizlikbildirim_tarihi: TcxGridDBColumn;
    devamsizlikaciklama: TcxGridDBColumn;
    devamsizlikadi: TcxGridDBColumn;
    devamsizliksoyadi: TcxGridDBColumn;
    devamsizlikveli_adi: TcxGridDBColumn;
    devamsizlikgsm: TcxGridDBColumn;
    devamsizlikis_telefonu: TcxGridDBColumn;
    devamsizlikev_telefonu: TcxGridDBColumn;
    devamsizlikveli_soyadi: TcxGridDBColumn;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
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
    tx_tar_bas: TcxDateEdit;
    tx_tar_bit: TcxDateEdit;
    cm_aci_kis: TcxComboBox;
    tx_aci_bas: TcxTextEdit;
    bt_goster: TBitBtn;
    bt_Sifirla: TBitBtn;
    cm_ders_kis: TcxComboBox;
    tx_ders_bas: TcxTextEdit;
    cm_bil_kis: TcxComboBox;
    tx_bil_bas: TcxDateEdit;
    tx_bil_bit: TcxDateEdit;
    cm_kul_kis: TcxComboBox;
    tx_kul_bas: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    bt_tablo: TBitBtn;
    bt_bildirim: TBitBtn;
    dosya: TSaveDialog;
    t_zaman: TTimer;
    pr_devamsizlik: TdxComponentPrinter;
    tablo_devamsizlikid: TLargeintField;
    tablo_devamsizlikkiminle_gorusuldu: TStringField;
    devamsizlikkiminle_gorusuldu: TcxGridDBColumn;
    ogr_veli_bilgileriveli_adi: TStringField;
    ogr_veli_bilgileriveli_soyadi: TStringField;
    ogr_veli_bilgilerisinifi: TStringField;
    ogr_veli_bilgileridonemi: TStringField;
    devamsizliksinifi: TcxGridDBColumn;
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
    devamsizlikders_1: TcxGridDBColumn;
    tablo_devamsizliksinifi: TStringField;
    tablo_devamsizlikadi: TStringField;
    tablo_devamsizliksoyadi: TStringField;
    tablo_devamsizlikveli_adi: TStringField;
    tablo_devamsizlikveli_soyadi: TStringField;
    tablo_devamsizlikev_telefonu: TStringField;
    tablo_devamsizlikis_telefonu: TStringField;
    tablo_devamsizlikgsm: TStringField;
    tablo_devamsizliksms_bildirim: TStringField;
    tablo_devamsizlikemail_bildirim: TStringField;
    tablo_devamsizlikfax_bildirim: TStringField;
    pr_devamsizlikLink1: TdxGridReportLink;
    mn_tablo: TPopupMenu;
    mn_yazdir: TMenuItem;
    mn_excel: TMenuItem;
    mn_bildirim: TPopupMenu;
    mn_sms: TMenuItem;
    mn_eposta: TMenuItem;
    mn_faks: TMenuItem;
    ogr_veli_bilgilerisms_bildirim: TStringField;
    ogr_veli_bilgileriemail_bildirim: TStringField;
    ogr_veli_bilgilerifax_bildirim: TStringField;
    tablo_oku: TZQuery;
    devamsizliksms_bildirim: TcxGridDBColumn;
    devamsizlikemail_bildirim: TcxGridDBColumn;
    devamsizlikfax_bildirim: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tablo_devamsizlikAfterEdit(DataSet: TDataSet);
    procedure cm_ogr_kisPropertiesChange(Sender: TObject);
    procedure cm_tar_kisPropertiesChange(Sender: TObject);
    procedure cm_aci_kisPropertiesChange(Sender: TObject);
    procedure bt_SifirlaClick(Sender: TObject);
    procedure bt_bas_bulClick(Sender: TObject);
    procedure cm_bil_kisPropertiesChange(Sender: TObject);
    procedure cm_kul_kisPropertiesChange(Sender: TObject);
    procedure cm_ders_kisPropertiesChange(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_zamanTimer(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tablo_devamsizlikFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_devamsizlikCalcFields(DataSet: TDataSet);
    procedure mn_yazdirClick(Sender: TObject);
    procedure mn_excelClick(Sender: TObject);
    procedure bt_tabloClick(Sender: TObject);
    procedure bt_bildirimClick(Sender: TObject);
    procedure mn_smsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_devamsizlik_listesi: Tfr_devamsizlik_listesi;

implementation

uses veritabani, ogrenci_arama, functionlar, ogrenci,AnaForm,
  MesajGonder;
{$R *.dfm}

procedure Tfr_devamsizlik_listesi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_devamsizlik_listesi.tablo_devamsizlikAfterEdit(
  DataSet: TDataSet);
begin
 devamsizlikbildirim_tarihi.EditValue := now;
 devamsizlikkullanici.EditValue := kullanici_adi;
end;

procedure Tfr_devamsizlik_listesi.cm_ogr_kisPropertiesChange(
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

procedure Tfr_devamsizlik_listesi.cm_tar_kisPropertiesChange(
  Sender: TObject);
begin
  tx_tar_bas.Enabled := False;
  tx_tar_bit.Enabled := False;
  if cm_tar_kis.Text = 'Tümü' then
  begin
    tx_tar_bas.Clear;
    tx_tar_bit.Clear;
  end;
  if cm_tar_kis.Text <> 'Tümü' then tx_tar_bas.Enabled := True;
  if cm_tar_kis.Text = 'Arasýnda' then tx_tar_bit.Enabled := True;

end;

procedure Tfr_devamsizlik_listesi.cm_aci_kisPropertiesChange(
  Sender: TObject);
begin
  tx_aci_bas.Enabled := False;
  if cm_aci_kis.Text = 'Tümü' then
  begin
    tx_aci_bas.Clear;
  end;
  if cm_aci_kis.Text <> 'Tümü' then tx_aci_bas.Enabled := True;
end;

procedure Tfr_devamsizlik_listesi.bt_SifirlaClick(Sender: TObject);
begin
  tablo_devamsizlik.Close;
  tablo_devamsizlik.SQL.Clear;
  cm_don_kis.Text := AktifDonem;
  cm_ogr_kis.Text := 'Tümü';
  tx_ogr_bas.Enabled := False;
  tx_ogr_bit.Enabled := False;
  tx_ogr_bas.Clear;
  tx_ogr_bit.Clear;
  cm_tar_kis.Text := 'Tümü';
  tx_tar_bas.Enabled := False;
  tx_tar_bit.Enabled := False;
  tx_tar_bas.Clear;
  tx_tar_bit.Clear;
  cm_aci_kis.Text := 'Tümü';
  tx_aci_bas.Enabled := False;
  tx_aci_bas.Clear;
  cm_kul_kis.Text:='Tümü';
  cm_kul_kisPropertiesChange(cm_kul_kis);
end;

procedure Tfr_devamsizlik_listesi.bt_bas_bulClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  if sender = bt_bas_bul then
    tx_ogr_bas.Text := inttostr(SOgr.OgrNo)
  else
    tx_ogr_bit.Text := inttostr(SOgr.OgrNo);
end;

procedure Tfr_devamsizlik_listesi.cm_bil_kisPropertiesChange(
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

procedure Tfr_devamsizlik_listesi.cm_kul_kisPropertiesChange(
  Sender: TObject);
begin
  tx_kul_bas.Enabled := False;
  if cm_kul_kis.Text = 'Tümü' then
  begin
    tx_kul_bas.Clear;
  end;
  if cm_kul_kis.Text <> 'Tümü' then tx_kul_bas.Enabled := True;

end;

procedure Tfr_devamsizlik_listesi.cm_ders_kisPropertiesChange(
  Sender: TObject);
begin
  tx_ders_bas.Enabled := False;
  if cm_ders_kis.Text = 'Tümü' then
  begin
    tx_ders_bas.Clear;
  end;
  if cm_ders_kis.Text <> 'Tümü' then tx_ders_bas.Enabled := True;

end;

procedure Tfr_devamsizlik_listesi.bt_gosterClick(Sender: TObject);
var
wheredurum,sql:string;
begin
    wheredurum := ' where ';
    tablo_devamsizlik.Close;
    ogr_veli_bilgileri.Close;
    tablo_devamsizlik.SQL.Clear;
    sql:='select * from devamsizliklar';
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
  if cm_tar_kis.Text <> 'Tümü' then
  begin
    if cm_tar_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'tarih = "'+ mtarih(tx_tar_bas.date)+'"'
    else if cm_tar_kis.Text = 'Büyük' then
      sql := sql + wheredurum + 'tarih > "'+ mtarih(tx_tar_bas.date)+'"'
    else if cm_tar_kis.Text = 'Küçük' then
      sql := sql + wheredurum + 'tarih < "'+ mtarih(tx_tar_bas.date)+'"'
    else if cm_tar_kis.Text = 'Arasýnda' then
      sql := sql + wheredurum + 'tarih between "'+ mtarih(tx_tar_bas.date)+'" and "'+mtarih(tx_tar_bit.date)+'"';
    wheredurum := ' and ';
  end;
  if cm_ders_kis.Text <> 'Tümü' then
  begin
    if cm_ders_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'dersler = '+ '"'+tx_ders_bas.text+'"'
    else if cm_ders_kis.Text = 'Ýçeren' then
      sql := sql + wheredurum + 'dersler like '+'"%'+ tx_ders_bas.text+'%"';
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
    tablo_devamsizlik.Close;
    ara_devamsizlik.Enabled := false;
    tablo_devamsizlik.SQL.Add(sql);
    ogr_veli_bilgileri.Open;
    tablo_devamsizlik.Filtered := gizli;
    tablo_devamsizlik.Open;
    ara_devamsizlik.Enabled := true;
    devamsizlik.ApplyBestFit();
end;

procedure Tfr_devamsizlik_listesi.FormCreate(Sender: TObject);
begin
  cm_don_kis.Properties.Items := Donemler;
  cm_don_kis.Text := AktifDonem;
end;

procedure Tfr_devamsizlik_listesi.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_devamsizlik_listesi.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_devamsizlik,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_devamsizlik_listesi.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
  if tablo_devamsizlik.State <> dsBrowse then exit;
  if tablo_devamsizlik.RecordCount <1 then exit;
  SOgr.donem := tablo_devamsizlik.fieldbyname('donemi').Text;
  SOgr.ogrno := tablo_devamsizlik.fieldbyname('ogr_no').AsInteger;
  SOgr.kayitgoster := true;
  application.CreateForm(Tfr_ogrenci,fr_ogrenci);
  end;
end;

procedure Tfr_devamsizlik_listesi.tablo_devamsizlikFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_devamsizlik.fieldbyname('donemi').AsString,tablo_devamsizlik.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_devamsizlik_listesi.tablo_devamsizlikCalcFields(
  DataSet: TDataSet);
begin
 if ogr_veli_bilgileri.Locate('donemi;ogr_no',vararrayof([tablo_devamsizlik.FieldByName('donemi').Text,tablo_devamsizlik.FieldByName('ogr_no').AsInteger]),[loCaseInsensitive]) then
 begin
  tablo_devamsizlik.FieldByName('sinifi').Text := ogr_veli_bilgileri.fieldbyname('sinifi').Text;
  tablo_devamsizlik.FieldByName('adi').Text := ogr_veli_bilgileri.fieldbyname('adi').Text;
  tablo_devamsizlik.FieldByName('soyadi').Text := ogr_veli_bilgileri.fieldbyname('soyadi').Text;
  tablo_devamsizlik.FieldByName('veli_adi').Text := ogr_veli_bilgileri.fieldbyname('veli_adi').Text;
  tablo_devamsizlik.FieldByName('veli_soyadi').Text := ogr_veli_bilgileri.fieldbyname('veli_soyadi').Text;
  tablo_devamsizlik.FieldByName('ev_telefonu').Text := ogr_veli_bilgileri.fieldbyname('ev_telefonu').Text;
  tablo_devamsizlik.FieldByName('is_telefonu').Text := ogr_veli_bilgileri.fieldbyname('is_telefonu').Text;
  tablo_devamsizlik.FieldByName('gsm').Text := ogr_veli_bilgileri.fieldbyname('gsm').Text;
  tablo_devamsizlik.FieldByName('sms_bildirim').Text := ogr_veli_bilgileri.fieldbyname('sms_bildirim').Text;
  tablo_devamsizlik.FieldByName('email_bildirim').Text := ogr_veli_bilgileri.fieldbyname('email_bildirim').Text;
  tablo_devamsizlik.FieldByName('fax_bildirim').Text := ogr_veli_bilgileri.fieldbyname('fax_bildirim').Text;
 end;
end;

procedure Tfr_devamsizlik_listesi.mn_yazdirClick(Sender: TObject);
begin
  pr_devamsizlik.Preview(True,nil);
end;

procedure Tfr_devamsizlik_listesi.mn_excelClick(Sender: TObject);
begin
 dosya.Execute;
end;

procedure Tfr_devamsizlik_listesi.bt_tabloClick(Sender: TObject);
begin
  if devamsizlik.ViewData.RecordCount < 1 then
  begin
    MessageDlg('Tabloda hiç bir kayýt yok!', mtWarning, [mbOK], 0);
    exit;
  end;
  mn_tablo.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure Tfr_devamsizlik_listesi.bt_bildirimClick(Sender: TObject);
begin
  mn_bildirim.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure Tfr_devamsizlik_listesi.mn_smsClick(Sender: TObject);
var
  idler:WideString;
  i: integer;
begin
  idler:='';
  for i:=0 to devamsizlik.ViewData.RecordCount-1 do
  begin
    if (devamsizlik.ViewData.Rows[i].DisplayTexts[devamsizlik.GetColumnByFieldName('sms_bildirim').Index]='Evet')
      and (devamsizlik.ViewData.Rows[i].DisplayTexts[devamsizlik.GetColumnByFieldName('aciklama').Index]<>'Bilgilendirildi.') then
      idler:=idler+devamsizlik.ViewData.Rows[i].DisplayTexts[devamsizlik.GetColumnByFieldName('id').Index]+',';
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
                          +'concat_ws('' '',ders_1,ders_2,ders_3,ders_4,ders_5,'
                          +'ders_6,ders_7,ders_8,ders_9,ders_10) as dersler,tarih'
                          +' from devamsizliklar'
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
  tablo_oku.SQL.Add('update devamsizliklar set kiminle_gorusuldu=''SMS'',aciklama=''Bilgilendirildi.'' where id in '+idler);
  tablo_oku.ExecSQL;
  tablo_devamsizlik.Refresh;
end;

end.

