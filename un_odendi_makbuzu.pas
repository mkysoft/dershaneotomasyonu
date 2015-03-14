unit un_odendi_makbuzu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppParameter, ppStrtch, ppMemo, ppCtrls, jpeg, ppPrnabl, ppClass,
  ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport, DB,
  ZAbstractRODataset, ZDataset, StdCtrls, Buttons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls, cxCheckBox,
  cxDropDownEdit, cxTextEdit, cxLabel, cxContainer, cxMaskEdit, cxCalendar,
  cxGroupBox, cxMemo;

type
  Tfr_odendi_makbuzu = class(TForm)
    tablo_oku: TZReadOnlyQuery;
    gr_gun: TcxGrid;
    paraakisi: TcxGridDBTableView;
    paraakisiislem_no: TcxGridDBColumn;
    paraakisidonemi: TcxGridDBColumn;
    paraakisiilgili_no: TcxGridDBColumn;
    paraakisiadi_soyadi: TcxGridDBColumn;
    paraakisitarih: TcxGridDBColumn;
    paraakisialinan: TcxGridDBColumn;
    paraakisiverilen: TcxGridDBColumn;
    paraakisiilgilihesap: TcxGridDBColumn;
    paraakisiaciklama: TcxGridDBColumn;
    paraakisiislem_tarihi: TcxGridDBColumn;
    level1: TcxGridLevel;
    ara_para_akisi: TDataSource;
    tablo_para_akisi: TZReadOnlyQuery;
    tablo_para_akisiilgili_no: TIntegerField;
    tablo_para_akisiislem_no: TIntegerField;
    tablo_para_akisitarih: TDateField;
    tablo_para_akisialinan: TFloatField;
    tablo_para_akisiverilen: TFloatField;
    tablo_para_akisiaciklama: TStringField;
    tablo_para_akisiilgilihesap: TStringField;
    tablo_para_akisiislem_tarihi: TDateTimeField;
    tablo_para_akisidonemi: TStringField;
    tablo_para_akisiadi_soyadi: TStringField;
    Panel1: TPanel;
    bt_yazdir: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tx_tar_bas: TcxDateEdit;
    tx_tar_bit: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    tx_ilg_bas: TcxTextEdit;
    tx_ilg_bit: TcxTextEdit;
    cm_ilg_kis: TcxComboBox;
    cm_isl_kis: TcxComboBox;
    tx_isl_bas: TcxTextEdit;
    tx_isl_bit: TcxTextEdit;
    cm_tar_kis: TcxComboBox;
    cm_hes_kis: TcxComboBox;
    cm_aci_kis: TcxComboBox;
    cm_ist_kis: TcxComboBox;
    tx_ist_bas: TcxDateEdit;
    tx_ist_bit: TcxDateEdit;
    bt_goster: TBitBtn;
    bt_Sifirla: TBitBtn;
    bt_bas_bul: TBitBtn;
    bt_bit_bul: TBitBtn;
    cm_don_kis: TcxComboBox;
    tx_aci_bas: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_yazdirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tablo_para_akisiFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure bt_SifirlaClick(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure cm_ilg_kisPropertiesChange(Sender: TObject);
    procedure cm_isl_kisPropertiesChange(Sender: TObject);
    procedure cm_tar_kisPropertiesChange(Sender: TObject);
    procedure cm_aci_kisPropertiesChange(Sender: TObject);
    procedure cm_ist_kisPropertiesChange(Sender: TObject);
    procedure bt_bas_bulClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_odendi_makbuzu: Tfr_odendi_makbuzu;

implementation
uses veritabani,functionlar, AnaForm, ogrenci, ogrenci_arama, gelir_gider_girisi;
{$R *.dfm}

procedure Tfr_odendi_makbuzu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfr_odendi_makbuzu.bt_yazdirClick(Sender: TObject);
begin
  tablo_oku.Close;
  tablo_oku.sql.clear;
  tablo_oku.sql.add('select adi,soyadi from ogrenciler where ogr_no ='
  +tablo_para_akisi.fieldbyname('ilgili_no').Text
  +' and donemi ='''+tablo_para_akisi.fieldbyname('donemi').Text+ '''');
  tablo_oku.Open;
  application.CreateForm(Tfr_gelir_gider_girisi,fr_gelir_gider_girisi);
  fr_gelir_gider_girisi.Enabled := false;
  if tablo_oku.RecordCount < 1 then
    case messagedlg('Öðrencinin kaydý yok yinede yazdýrýlsýn mý?', mtConfirmation ,[mbYes, mbNo], 0) of
    mrNo: Exit;
    end
  else
  begin
    fr_gelir_gider_girisi.lb_adi1.Caption := tablo_oku.fieldbyname('adi').Text;
    fr_gelir_gider_girisi.lb_soyadi1.Caption := tablo_oku.fieldbyname('soyadi').Text;
  end;
  fr_gelir_gider_girisi.lb_islem_no1.Caption := tablo_para_akisi.fieldbyname('islem_no').Text;
  fr_gelir_gider_girisi.lb_tarihi1.Caption := tablo_para_akisi.fieldbyname('tarih').Text;
  fr_gelir_gider_girisi.lb_donemi1.Caption := tablo_para_akisi.fieldbyname('donemi').Text;
  fr_gelir_gider_girisi.lb_numarasi1.Caption := tablo_para_akisi.fieldbyname('ilgili_no').Text;
  fr_gelir_gider_girisi.lb_miktari1.Caption := formatfloat('0,.##',tablo_para_akisi.fieldbyname('alinan').AsFloat)+' YTL';
  fr_gelir_gider_girisi.lb_miktari_yaziyla1.Text := sayiyazi(tablo_para_akisi.fieldbyname('alinan').asfloat);
  tablo_oku.Close;
// Kalan borç hesaplar
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SELECT borc(:donemi,:ogr_no),odenen(:donemi,:ogr_no,:tarih),gecikenborc(:donemi,:ogr_no,:tarih)');
  tablo_oku.ParamByName('donemi').Text := tablo_para_akisi.fieldbyname('donemi').Text;
  tablo_oku.ParamByName('ogr_no').Text := tablo_para_akisi.fieldbyname('ilgili_no').Text;
  tablo_oku.ParamByName('tarih').Text := mtarih(tablo_para_akisitarih.AsDateTime);
  tablo_oku.open;
  fr_gelir_gider_girisi.lb_toplam_borcu1.Caption := formatfloat('0,.##', tablo_oku.Fields.Fields[0].AsFloat)+' YTL';
  fr_gelir_gider_girisi.lb_odenen_borc1.Caption := formatfloat('0,.##', tablo_oku.Fields.Fields[1].AsFloat)+' YTL';
  fr_gelir_gider_girisi.lb_kalan_borc1.Caption := formatfloat('0,.##', (tablo_oku.Fields.Fields[0].AsFloat-tablo_oku.Fields.Fields[1].AsFloat))+' YTL';
  if tablo_oku.Fields.Fields[2].AsFloat <= 0 then
  begin
    fr_gelir_gider_girisi.lb_geciken_borc1.Caption := 'Yok';
  end
  else
  begin
    fr_gelir_gider_girisi.lb_geciken_borc1.Caption := formatfloat('0.,00',tablo_oku.Fields.Fields[2].AsFloat)+' YTL';
 end;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select concat(veli_adi,'' '',veli_soyadi) as personeladisoyadi from veliler where veli_kodu=(select personel_kodu from personel where user='''+kullanici_adi+''')');
  tablo_oku.Open;
  fr_gelir_gider_girisi.lb_tahsil_eden1.Caption := tablo_oku.fieldbyname('personeladisoyadi').Text;
  fr_gelir_gider_girisi.lb_kullanici1.Caption := kullanici_adi;
  tablo_oku.Close;
  fr_gelir_gider_girisi.lb_tarih_saat1.Caption := datetimetostr(now());
  fr_gelir_gider_girisi.ppLbKopya.Visible := true;
  fr_gelir_gider_girisi.Makbuz.OutlineSettings.Visible:=False;
  fr_gelir_gider_girisi.makbuz.Print;
  fr_gelir_gider_girisi.Close;
end;

procedure Tfr_odendi_makbuzu.FormCreate(Sender: TObject);
begin
  cm_don_kis.Properties.Items := Donemler;
  tx_tar_bas.Date := now();
end;

procedure Tfr_odendi_makbuzu.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
  if tablo_para_akisi.RecordCount <1 then exit;
  if tablo_para_akisi.FieldByName('ilgili_no').AsInteger <100 then exit;
  if tablo_para_akisi.FieldByName('donemi').text = '' then exit;
  SOgr.donem := tablo_para_akisi.fieldbyname('donemi').Text;
  SOgr.ogrno := tablo_para_akisi.fieldbyname('ilgili_no').AsInteger;
  SOgr.kayitgoster := true;
  application.CreateForm(Tfr_ogrenci,fr_ogrenci);
  fr_ogrenci.sayfalar_taksit.Show;
  end;
end;

procedure Tfr_odendi_makbuzu.tablo_para_akisiFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_para_akisi.fieldbyname('donemi').AsString,tablo_para_akisi.fieldbyname('ilgili_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_odendi_makbuzu.bt_SifirlaClick(Sender: TObject);
begin
  tablo_para_akisi.Close;
  tablo_para_akisi.SQL.Clear;
  cm_don_kis.Text := AktifDonem;
  cm_ilg_kis.Text := 'Tümü';
  tx_ilg_bas.Enabled := False;
  tx_ilg_bit.Enabled := False;
  tx_ilg_bas.Clear;
  tx_ilg_bit.Clear;
  cm_isl_kis.Text := 'Tümü';
  tx_isl_bas.Enabled := False;
  tx_isl_bit.Enabled := False;
  tx_isl_bas.Clear;
  tx_isl_bit.Clear;
  cm_tar_kis.Text := 'Tümü';
  tx_tar_bas.Enabled := False;
  tx_tar_bit.Enabled := False;
  tx_tar_bas.Clear;
  tx_tar_bit.Clear;
  cm_aci_kis.Text := 'Tümü';
  tx_aci_bas.Enabled := False;
  tx_aci_bas.Clear;
  cm_ist_kis.Text := 'Tümü';
  tx_ist_bas.Enabled := False;
  tx_ist_bit.Enabled := False;
  tx_ist_bas.Clear;
  tx_ist_bit.Clear;
  cm_hes_kis.Text := 'Tümü';
end;

procedure Tfr_odendi_makbuzu.bt_gosterClick(Sender: TObject);
var
wheredurum :string;
sql:string;
begin
    wheredurum := ' where ';
    tablo_para_akisi.Close;
    tablo_para_akisi.SQL.Clear;
    sql:= 'SELECT * from paraakisi';
  if cm_ilg_kis.Text <> 'Tümü' then
  begin
    if cm_ilg_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'ilgili_no = '+ tx_ilg_bas.text
    else if cm_ilg_kis.Text = 'Büyük' then
      sql := sql + wheredurum + 'ilgili_no > '+ tx_ilg_bas.text
    else if cm_ilg_kis.Text = 'Küçük' then
      sql := sql + wheredurum + 'ilgili_no < '+ tx_ilg_bas.text
    else if cm_ilg_kis.Text = 'Arasýnda' then
      sql := sql + wheredurum + 'ilgili_no between '+ tx_ilg_bas.text+' and '+tx_ilg_bit.text;
    wheredurum := ' and ';
  end;
  if cm_don_kis.Text <> 'Tümü' then
  begin
    sql := sql + wheredurum + 'donemi = "'+ cm_don_kis.Text+'"';
    wheredurum := ' and ';
  end;
  if cm_isl_kis.Text <> 'Tümü' then
  begin
    if cm_isl_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'islem_no = '+ tx_isl_bas.text
    else if cm_isl_kis.Text = 'Büyük' then
      sql := sql + wheredurum + 'islem_no > '+ tx_isl_bas.text
    else if cm_isl_kis.Text = 'Küçük' then
      sql := sql + wheredurum + 'islem_no < '+ tx_isl_bas.text
    else if cm_isl_kis.Text = 'Arasýnda' then
      sql := sql + wheredurum + 'islem_no between '+ tx_isl_bas.text+' and '+tx_isl_bit.text;
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
  if cm_hes_kis.Text <> 'Tümü' then
  begin
    sql := sql + wheredurum + 'ilgilihesap = "'+ cm_hes_kis.Text+'"';
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
  if cm_ist_kis.Text <> 'Tümü' then
  begin
    if cm_ist_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'date_format(islem_tarihi,''%Y-%m-%d'') ="'+ mtarih(tx_ist_bas.date)+'"'
    else if cm_ist_kis.Text = 'Büyük' then
      sql := sql + wheredurum + 'islem_tarihi > "'+ mtarih(tx_ist_bas.date)+'"'
    else if cm_ist_kis.Text = 'Küçük' then
      sql := sql + wheredurum + 'islem_tarihi < "'+ mtarih(tx_ist_bas.date)+'"'
    else if cm_ist_kis.Text = 'Arasýnda' then
      sql := sql + wheredurum + 'islem_tarihi between "'+ mtarih(tx_ist_bas.date)+'" and "'+mtarih(tx_ist_bit.date)+'"';
    wheredurum := ' and ';
  end;
    tablo_para_akisi.Close;
    ara_para_akisi.Enabled := false;
    tablo_para_akisi.SQL.Add(sql);
    tablo_para_akisi.Filtered := gizli;
    tablo_para_akisi.Open;
    ara_para_akisi.Enabled := true;
    paraakisi.ViewData.Expand(true);
    paraakisi.ApplyBestFit();
end;

procedure Tfr_odendi_makbuzu.cm_ilg_kisPropertiesChange(Sender: TObject);
begin
  tx_ilg_bas.Enabled := False;
  tx_ilg_bit.Enabled := False;
  if cm_ilg_kis.Text = 'Tümü' then
  begin
    tx_ilg_bas.Clear;
    tx_ilg_bit.Clear;
  end;
  if cm_ilg_kis.Text <> 'Tümü' then tx_ilg_bas.Enabled := True;
  if cm_ilg_kis.Text = 'Arasýnda' then tx_ilg_bit.Enabled := True;
end;

procedure Tfr_odendi_makbuzu.cm_isl_kisPropertiesChange(Sender: TObject);
begin
  tx_isl_bas.Enabled := False;
  tx_isl_bit.Enabled := False;
  if cm_isl_kis.Text = 'Tümü' then
  begin
    tx_isl_bas.Clear;
    tx_isl_bit.Clear;
  end;
  if cm_isl_kis.Text <> 'Tümü' then tx_isl_bas.Enabled := True;
  if cm_isl_kis.Text = 'Arasýnda' then tx_isl_bit.Enabled := True;

end;

procedure Tfr_odendi_makbuzu.cm_tar_kisPropertiesChange(Sender: TObject);
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

procedure Tfr_odendi_makbuzu.cm_aci_kisPropertiesChange(Sender: TObject);
begin
  tx_aci_bas.Enabled := False;
  if cm_aci_kis.Text = 'Tümü' then
  begin
    tx_aci_bas.Clear;
  end;
  if cm_aci_kis.Text <> 'Tümü' then tx_aci_bas.Enabled := True;
end;

procedure Tfr_odendi_makbuzu.cm_ist_kisPropertiesChange(Sender: TObject);
begin
  tx_ist_bas.Enabled := False;
  tx_ist_bit.Enabled := False;
  if cm_ist_kis.Text = 'Tümü' then
  begin
    tx_ist_bas.Clear;
    tx_ist_bit.Clear;
  end;
  if cm_ist_kis.Text <> 'Tümü' then tx_ist_bas.Enabled := True;
  if cm_ist_kis.Text = 'Arasýnda' then tx_ist_bit.Enabled := True;
end;

procedure Tfr_odendi_makbuzu.bt_bas_bulClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  if sender = bt_bas_bul then
    tx_ilg_bas.Text := inttostr(SOgr.ogrno)
  else
    tx_ilg_bit.Text := inttostr(SOgr.ogrno);
end;

end.
