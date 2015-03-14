unit un_rehberlik_notlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, DBCtrls, Grids, StdCtrls,
  Buttons, cxControls, cxContainer, cxCheckListBox, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractDataset, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ComCtrls, cxGridCustomPopupMenu, cxGridPopupMenu, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, cxMemo,
  dxmdaset;


type
  Tfr_rehberlik_notlari = class(TForm)
    tablo_oku: TZReadOnlyQuery;
    notlar: TPageControl;
    notlar_toplu: TTabSheet;
    notlar_tekil: TTabSheet;
    GroupBox2: TGroupBox;
    ara_ogrenciler: TDataSource;
    tablo_ogrenciler: TZReadOnlyQuery;
    tablo_ogrencilerdonemi: TStringField;
    tablo_ogrencileradi: TStringField;
    tablo_ogrencilersoyadi: TStringField;
    tablo_ogrencilersinifi: TStringField;
    mn_gr_ogreciler: TcxGridPopupMenu;
    tablo_ogrencilerogr_no: TIntegerField;
    vi_notlar: TcxGridDBTableView;
    gr_notlarLevel1: TcxGridLevel;
    gr_notlar: TcxGrid;
    tablo_notlar: TZQuery;
    ara_notlar: TDataSource;
    vi_notlarid: TcxGridDBColumn;
    vi_notlardonemi: TcxGridDBColumn;
    vi_notlarogr_no: TcxGridDBColumn;
    vi_notlartarih: TcxGridDBColumn;
    vi_notlarnotu: TcxGridDBColumn;
    Splitter1: TSplitter;
    GroupBox3: TGroupBox;
    gr_ogrenciler: TcxGrid;
    ogrenciler: TcxGridDBTableView;
    ogrencilerdonemi: TcxGridDBColumn;
    ogrencilerogr_no: TcxGridDBColumn;
    ogrencileradi: TcxGridDBColumn;
    ogrencilersoyadi: TcxGridDBColumn;
    ogrencilersinifi: TcxGridDBColumn;
    ogrencilerveli_adi: TcxGridDBColumn;
    ogrencilerveli_soyadi: TcxGridDBColumn;
    gr_ogrencilerLevel1: TcxGridLevel;
    GroupBox4: TGroupBox;
    ara_memtablo: TDataSource;
    gr_ogrenci_coklu: TcxGrid;
    ogrenci_coklu: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ogrenci_cokludonemi: TcxGridDBColumn;
    ogrenci_cokluogr_no: TcxGridDBColumn;
    ogrenci_cokluadi: TcxGridDBColumn;
    ogrenci_coklusoyadi: TcxGridDBColumn;
    ogrenci_coklusinifi: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Bevel2: TBevel;
    bt_tum_sec: TBitBtn;
    ls_siniflar: TcxCheckListBox;
    bt_sinif_ekle: TBitBtn;
    bt_tek_ekle: TBitBtn;
    bt_tabloyu_temizle: TBitBtn;
    Panel1: TPanel;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    tx_tarih: TcxDateEdit;
    bt_ekle: TBitBtn;
    tx_not: TcxMemo;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    check_tumunu_sil: TcxCheckBox;
    tx_sil_tarih: TcxDateEdit;
    BitBtn1: TBitBtn;
    tablo_notlarid: TLargeintField;
    tablo_notlardonemi: TStringField;
    tablo_notlarogr_no: TIntegerField;
    tablo_notlartarih: TDateField;
    tablo_notlarnotu: TStringField;
    tablo_ogrencilerveli_adi: TStringField;
    tablo_ogrencilerveli_soyadi: TStringField;
    tablo_ogrencilerbaba_adi: TStringField;
    tablo_ogrencilerana_adi: TStringField;
    ogrencilerbaba_adi: TcxGridDBColumn;
    ogrencilerana_adi: TcxGridDBColumn;
    tablo_memtablo: TdxMemData;
    tablo_memtablodonemi: TStringField;
    tablo_memtabloogr_no: TIntegerField;
    tablo_memtablosinifi: TStringField;
    tablo_memtabloadi: TStringField;
    tablo_memtablosoyadi: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_sinif_ekleClick(Sender: TObject);
    procedure bt_tum_secClick(Sender: TObject);
    procedure notlarChange(Sender: TObject);
    procedure bt_tabloyu_temizleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_tek_ekleClick(Sender: TObject);
    procedure bt_ekleClick(Sender: TObject);
    procedure check_tumunu_silPropertiesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tablo_ogrencilerFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_memtabloFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_rehberlik_notlari: Tfr_rehberlik_notlari;

implementation

uses functionlar, ogrenci_arama, veritabani;

{$R *.dfm}

procedure Tfr_rehberlik_notlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Tfr_rehberlik_notlari.bt_sinif_ekleClick(Sender: TObject);
var
i:integer;
begin
  for i := 0 to ls_siniflar.Count-1 do
  if ls_siniflar.Items.Items[i].Checked = true then
  begin
    tablo_oku.close;
    tablo_oku.SQL.Clear;
    if ls_siniflar.Items[i].Text = '' then
      tablo_oku.sql.Add('select donemi,ogr_no,adi,soyadi,sinifi from ogrenciler where sinifi is null order by donemi,ogr_no')
    else
      tablo_oku.sql.Add('select donemi,ogr_no,adi,soyadi,sinifi from ogrenciler where sinifi="'+ ls_siniflar.Items[i].Text +'" order by donemi,ogr_no');
    tablo_oku.Open;
    tablo_memtablo.LoadFromDataSet(tablo_oku);
//    tablo_memtablo.loa UpdateToDataSet(tablo_oku,'donemi;ogr_no',[mtufAppend]);
  end;

end;

procedure Tfr_rehberlik_notlari.bt_tum_secClick(Sender: TObject);
begin
    tablo_oku.close;
    tablo_oku.SQL.Clear;
    tablo_oku.sql.Add('select donemi,ogr_no,adi,soyadi,sinifi from ogrenciler order by donemi,ogr_no');
    tablo_oku.Open;
  while tablo_oku.Eof = False do
  begin
    if tablo_memtablo.Lookup('donemi;ogr_no',vararrayof([
      tablo_oku.FieldByName('donemi').AsString,
      tablo_oku.FieldByName('ogr_no').AsString]),'ogr_no')= null then
    begin
      tablo_memtablo.Append;
      tablo_memtablodonemi.AsString:=tablo_oku.FieldByName('donemi').AsString;
      tablo_memtabloogr_no.AsInteger:=tablo_oku.FieldByName('ogr_no').AsInteger;
      tablo_memtabloadi.AsString:=tablo_oku.FieldByName('adi').AsString;
      tablo_memtablosoyadi.AsString:=tablo_oku.FieldByName('soyadi').AsString;
      tablo_memtablosinifi.AsString:=tablo_oku.FieldByName('sinifi').AsString;
      tablo_memtablo.Post;
    end;
      tablo_oku.Next;
  end;
  tablo_oku.Close;
end;

procedure Tfr_rehberlik_notlari.notlarChange(Sender: TObject);
begin
 if notlar.ActivePageIndex = 0 then
 begin
   ls_siniflar.Items.Clear;
   tablo_oku.SQL.Clear;
   tablo_oku.SQL.Add('select distinct sinifi from ogrenciler order by sinifi');
   tablo_oku.Open;
   while tablo_oku.Eof = false do
   begin
    ls_siniflar.AddItem(tablo_oku.fieldbyname('sinifi').asstring);
    tablo_oku.Next;
   end;
   tablo_oku.Close;
   tablo_memtablo.Filtered := gizli;
   tablo_memtablo.Open;
   ara_memtablo.Enabled:= true;
 end
 else
 begin
   tablo_ogrenciler.Filtered := gizli;
   tablo_ogrenciler.Close;
   ara_ogrenciler.Enabled := false;
   tablo_ogrenciler.Open;
   ara_ogrenciler.Enabled := true;
   tablo_notlar.Open;
 end;
end;

procedure Tfr_rehberlik_notlari.bt_tabloyu_temizleClick(Sender: TObject);
begin
  tablo_memtablo.close;
  tablo_memtablo.open;
end;

procedure Tfr_rehberlik_notlari.FormShow(Sender: TObject);
begin
    notlarChange(notlar);
    tx_tarih.date := now;
    tx_sil_tarih.date := now;

end;

procedure Tfr_rehberlik_notlari.bt_tek_ekleClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  tablo_oku.close;
  tablo_oku.SQL.Clear;
  tablo_oku.sql.Add('select donemi,ogr_no,adi,soyadi,sinifi from ogrenciler where donemi="'+ SOgr.donem +'" and ogr_no='+inttostr(SOgr.OgrNo));
  tablo_oku.Open;
  if tablo_memtablo.Lookup('donemi;ogr_no',vararrayof([
    tablo_oku.FieldByName('donemi').AsString,
    tablo_oku.FieldByName('ogr_no').AsString]),'ogr_no')= null then
  begin
    tablo_memtablo.Append;
      tablo_memtablodonemi.AsString:=tablo_oku.FieldByName('donemi').AsString;
      tablo_memtabloogr_no.AsInteger:=tablo_oku.FieldByName('ogr_no').AsInteger;
      tablo_memtabloadi.AsString:=tablo_oku.FieldByName('adi').AsString;
      tablo_memtablosoyadi.AsString:=tablo_oku.FieldByName('soyadi').AsString;
      tablo_memtablosinifi.AsString:=tablo_oku.FieldByName('sinifi').AsString;
    tablo_memtablo.Post;
  end;
end;

procedure Tfr_rehberlik_notlari.bt_ekleClick(Sender: TObject);
begin
  if tablo_memtablo.RecordCount < 1 then
  begin
    messagedlg('Not eklenecek öðrenci bulunamadý!'#13#10'Öncelikle istediðiniz öðrencileri "Eklenen Öðrenciler" tablosuna ekleyin.',mtError, [mbOk], 0);
    Exit;
  end;
  fr_rehberlik_notlari.Enabled := false;
  fr_rehberlik_notlari.Cursor := crHourGlass;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('insert into rehberlik_notlari set donemi=:p1,ogr_no=:p2,tarih=:p3,notu=:p4');
  tablo_memtablo.First;
  while tablo_memtablo.Eof = false do
  begin
    tablo_oku.Params[0].AsString := tablo_memtablo.fieldbyname('donemi').AsString;
    tablo_oku.Params[1].AsString := tablo_memtablo.fieldbyname('ogr_no').AsString;
    tablo_oku.Params[2].AsDate := tx_tarih.Date;
    tablo_oku.Params[3].AsString := tx_not.Text;
    tablo_oku.ExecSQL;
    tablo_memtablo.Next;
  end;
  fr_rehberlik_notlari.Cursor := crDefault;
  fr_rehberlik_notlari.Enabled := true;
end;

procedure Tfr_rehberlik_notlari.check_tumunu_silPropertiesChange(
  Sender: TObject);
begin
  tx_sil_tarih.Enabled := not check_tumunu_sil.Checked;
end;

procedure Tfr_rehberlik_notlari.BitBtn1Click(Sender: TObject);
begin
  if tablo_memtablo.RecordCount < 1 then
  begin
    messagedlg('Notlarý silinecek öðrenci bulunamadý!'#13#10'Notlarýný silmek istediðiniz öðrencileri "Eklenen Öðrenciler" tablosuna ekleyin.',mtError, [mbOk], 0);
    Exit;
  end;
  fr_rehberlik_notlari.Enabled := false;
  fr_rehberlik_notlari.Cursor := crHourGlass;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  if check_tumunu_sil.Checked = true then
    tablo_oku.SQL.Add('delete from rehberlik_notlari where donemi=:p1 and ogr_no=:p2')
  else
  begin
    tablo_oku.SQL.Add('delete from rehberlik_notlari where donemi=:p1 and ogr_no=:p2 and tarih <:p3');
    tablo_oku.Params[2].AsDate := tx_sil_tarih.Date;
  end;
  tablo_memtablo.First;
  while tablo_memtablo.Eof = false do
  begin
    tablo_oku.Params[0].AsString := tablo_memtablo.fieldbyname('donemi').AsString;
    tablo_oku.Params[1].AsString := tablo_memtablo.fieldbyname('ogr_no').AsString;
    tablo_oku.ExecSQL;
    tablo_memtablo.Next;
  end;
  fr_rehberlik_notlari.Cursor := crDefault;
  fr_rehberlik_notlari.Enabled := true;
end;

procedure Tfr_rehberlik_notlari.tablo_ogrencilerFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_ogrenciler.fieldbyname('donemi').AsString,tablo_ogrenciler.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_rehberlik_notlari.tablo_memtabloFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_memtablo.fieldbyname('donemi').AsString,tablo_memtablo.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

end.

