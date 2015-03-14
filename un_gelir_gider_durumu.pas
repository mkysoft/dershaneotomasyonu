unit un_gelir_gider_durumu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxCalendar, cxCurrencyEdit, cxDropDownEdit, StdCtrls, Buttons, cxExportGrid4Link,
  cxContainer, cxTextEdit, cxMaskEdit, cxGroupBox, cxLabel, Menus, ShellAPI,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxGridLnk, cxGridCustomPopupMenu, cxGridPopupMenu, ExtCtrls,
  cxCheckBox, cxCheckComboBox, cxMemo, dxPScxCommon;

type
  Tfr_gelir_gider_durumu = class(TForm)
    tablo_paraakisi: TZQuery;
    gr_paraakisi: TcxGrid;
    paraakisi: TcxGridDBTableView;
    level1: TcxGridLevel;
    ara_paraakisi: TDataSource;
    dosya: TSaveDialog;
    tablo_paraakisiislem_no: TIntegerField;
    tablo_paraakisiilgili_no: TIntegerField;
    tablo_paraakisitarih: TDateField;
    tablo_paraakisiilgilihesap: TStringField;
    tablo_paraakisiaciklama: TStringField;
    tablo_paraakisiislem_tarihi: TDateTimeField;
    paraakisiislem_no: TcxGridDBColumn;
    paraakisiilgili_no: TcxGridDBColumn;
    paraakisitarih: TcxGridDBColumn;
    paraakisiilgilihesap: TcxGridDBColumn;
    paraakisialinan: TcxGridDBColumn;
    paraakisiverilen: TcxGridDBColumn;
    paraakisiaciklama: TcxGridDBColumn;
    paraakisiislem_tarihi: TcxGridDBColumn;
    pr_paraakisi: TdxComponentPrinter;
    mn_para_akisi: TcxGridPopupMenu;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
    cxGroupBox2: TcxGroupBox;
    bt_exceleaktar: TBitBtn;
    bt_yazdir: TBitBtn;
    t_zaman: TTimer;
    tablo_paraakisidonemi: TStringField;
    paraakisidonemi: TcxGridDBColumn;
    Label7: TLabel;
    tx_aci_bas: TcxTextEdit;
    tablo_paraakisiadi_soyadi: TStringField;
    paraakisiadi_soyadi: TcxGridDBColumn;
    tablo_paraakisialinan: TFloatField;
    tablo_paraakisiverilen: TFloatField;
    cmk_don_kis: TcxCheckComboBox;
    pr_paraakisiLink1: TdxGridReportLink;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    Procedure MyPopUpClick(Sender :Tobject);
    procedure Kes1Click(Sender: TObject);
    procedure cm_ilg_kisPropertiesChange(Sender: TObject);
    procedure cm_isl_kisPropertiesChange(Sender: TObject);
    procedure cm_tar_kisPropertiesChange(Sender: TObject);
    procedure cm_aci_kisPropertiesChange(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure bt_SifirlaClick(Sender: TObject);
    procedure cm_ist_kisPropertiesChange(Sender: TObject);
    procedure bt_bas_bulClick(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure t_zamanTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tablo_paraakisiFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure paraakisiDataControllerDataChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_gelir_gider_durumu: Tfr_gelir_gider_durumu;

implementation

uses veritabani, functionlar,ogrenci_arama, ogrenci;
{$R *.dfm}

procedure Tfr_gelir_gider_durumu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_gelir_gider_durumu.bt_exceleaktarClick(Sender: TObject);
begin
  dosya.Execute;
end;

procedure Tfr_gelir_gider_durumu.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_paraakisi,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_gelir_gider_durumu.MyPopUpClick;
begin
     with (Sender as TMenuItem) do
     begin
        checked := not checked;
        ParaAkisi.Columns[Tag].Visible:=Checked;
     End;
end;

procedure Tfr_gelir_gider_durumu.Kes1Click(Sender: TObject);
begin
  paraakisi.CopyToClipboard(True);
end;

procedure Tfr_gelir_gider_durumu.cm_ilg_kisPropertiesChange(
  Sender: TObject);
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

procedure Tfr_gelir_gider_durumu.cm_isl_kisPropertiesChange(
  Sender: TObject);
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

procedure Tfr_gelir_gider_durumu.cm_tar_kisPropertiesChange(
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

procedure Tfr_gelir_gider_durumu.cm_aci_kisPropertiesChange(
  Sender: TObject);
begin
  tx_aci_bas.Enabled := False;
  if cm_aci_kis.Text = 'Tümü' then
  begin
    tx_aci_bas.Clear;
  end;
  if cm_aci_kis.Text <> 'Tümü' then tx_aci_bas.Enabled := True;
end;

procedure Tfr_gelir_gider_durumu.bt_gosterClick(Sender: TObject);
var
wheredurum,sql :string;
i:integer;
begin
 if (pos(bkmetin(tx_aci_bas.text,0),'maaþ')>0) and (yetki > 50) then
 begin
  messagedlg(kullanici_adi+' kullanýcýsýnýn maaþ ile ilgili kayýtlarý görme yetkisi yok!',mtError, [mbOk], 0);
  Exit;
 end;
    wheredurum := ' where ';
    tablo_paraakisi.Close;
    tablo_paraakisi.SQL.Clear;
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
  if (cmk_don_kis.GetItemState(0)<> cbsChecked) and (cmk_don_kis.Text <> 'Seçiniz ...') then
  begin
   sql := sql + wheredurum + 'donemi in (''';
   for i := cmk_don_kis.Properties.Items.Count-1 downto 0 do
   if cmk_don_kis.GetItemState(i)= cbsChecked then
    sql := sql+cmk_don_kis.Properties.Items.Items[i].Description+''',''';
   sql := copy(sql,1,length(sql)-2)+')';
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
   if yetki > 50 then
    sql := sql + ' and aciklama not like ''MAAÞ%''';
   wheredurum := ' and ';
  end
  else
   if yetki > 50 then
   begin
    sql := sql + wheredurum + 'aciklama not like ''MAAÞ%''';
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
    tablo_paraakisi.Close;
    ara_paraakisi.Enabled := false;
    tablo_paraakisi.SQL.Add(sql);
    tablo_paraakisi.Filtered := gizli;
    tablo_paraakisi.Open;
    ara_paraakisi.Enabled := true;
    paraakisi.ViewData.Expand(true);
    paraakisi.ApplyBestFit();
end;

procedure Tfr_gelir_gider_durumu.bt_SifirlaClick(Sender: TObject);
begin
  tablo_paraakisi.Close;
  tablo_paraakisi.SQL.Clear;
  cmk_don_kis.ClearSelection;
  cmk_don_kis.SetItemState(0,cbsChecked);
  cmk_don_kis.SetItemState(0,cbsChecked);
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

procedure Tfr_gelir_gider_durumu.cm_ist_kisPropertiesChange(
  Sender: TObject);
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

procedure Tfr_gelir_gider_durumu.bt_bas_bulClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  if sender = bt_bas_bul then
    tx_ilg_bas.Text := inttostr(SOgr.OgrNo)
  else
    tx_ilg_bit.Text := inttostr(SOgr.OgrNo);
//  tx_tarih.SetFocus;
end;

procedure Tfr_gelir_gider_durumu.bt_yazdirClick(Sender: TObject);
begin
  if cm_tar_kis.Text = 'Eþit' then
   level1.Caption := 'Günlük Rapor. Tarih : '+tx_tar_bas.Text
  else
   level1.Caption := 'Para Akýþý Raporu';
  pr_paraakisi.Preview(True,nil);
end;

procedure Tfr_gelir_gider_durumu.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;

end;

procedure Tfr_gelir_gider_durumu.FormCreate(Sender: TObject);
var
  yil, ay, gun:word;
  i: integer;
begin
  decodedate(now(), yil, ay, gun);
  cmk_don_kis.Properties.Items.AddCheckItem('Tümü');
  cmk_don_kis.Properties.Items.AddCheckItem('PERSONEL');
  for i := yil - 2 to yil + 2 do
   cmk_don_kis.Properties.Items.AddCheckItem(inttostr(i) + '-' + inttostr(i + 1));
  cmk_don_kis.SetItemState(0,cbsChecked);
  tx_tar_bas.Date := now();
end;

procedure Tfr_gelir_gider_durumu.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
  if tablo_paraakisi.RecordCount < 1 then exit;
    if (tablo_paraakisi.FieldByName('ilgili_no').AsInteger > 100) and (tablo_paraakisi.FieldByName('ilgili_no').AsInteger < 9999) and (tablo_paraakisi.FieldByName('donemi').Text <> '') then
    begin
      SOgr.Donem:= tablo_paraakisi.fieldbyname('donemi').Text;
      SOgr.OgrNo:= tablo_paraakisi.fieldbyname('ilgili_no').AsInteger;
      SOgr.KayitGoster := true;
      application.CreateForm(Tfr_ogrenci,fr_ogrenci);
    end;
  end;
end;

procedure Tfr_gelir_gider_durumu.tablo_paraakisiFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_paraakisi.fieldbyname('donemi').AsString,tablo_paraakisi.fieldbyname('ilgili_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_gelir_gider_durumu.paraakisiDataControllerDataChanged(
  Sender: TObject);
var
alinan,verilen:Extended;
begin
  alinan := strtofloat(metindensil('.',paraakisi.DataController.Summary.FooterSummaryTexts[1]));
  verilen := strtofloat(metindensil('.',paraakisi.DataController.Summary.FooterSummaryTexts[2]));
  paraakisi.DataController.Summary.FooterSummaryItems.Items[3].Format := '''Fark '+formatfloat('0.,00',alinan - verilen)+'''';
end;

end.

