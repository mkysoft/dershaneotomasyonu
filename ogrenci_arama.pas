unit ogrenci_arama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCurrencyEdit, cxCheckBox,
  ExtCtrls, cxContainer, cxLabel, cxMemo, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookAndFeelPainters, cxButtons;

type
  Tfr_ogrenci_arama = class(TForm)
    gr_veli: TcxGrid;
    arama: TcxGridDBTableView;
    gr_veliLevel1: TcxGridLevel;
    aramaadi: TcxGridDBColumn;
    aramasoyadi: TcxGridDBColumn;
    aramaogr_no: TcxGridDBColumn;
    aramadonemi: TcxGridDBColumn;
    Panel1: TPanel;
    aramaveli_adi: TcxGridDBColumn;
    aramaveli_soyadi: TcxGridDBColumn;
    aramaana_adi: TcxGridDBColumn;
    aramababa_adi: TcxGridDBColumn;
    tablo_arama: TZReadOnlyQuery;
    tablo_aramadonemi: TStringField;
    tablo_aramaogr_no: TIntegerField;
    tablo_aramaadi: TStringField;
    tablo_aramasoyadi: TStringField;
    tablo_aramaveli_adi: TStringField;
    tablo_aramaveli_soyadi: TStringField;
    tablo_aramaana_adi: TStringField;
    tablo_aramababa_adi: TStringField;
    tablo_aramaveli_kodu: TIntegerField;
    ara_arama: TDataSource;
    tablo_aramasinifi: TStringField;
    aramasinifi: TcxGridDBColumn;
    ogr_say: TcxLabel;
    tablo_aramaadsoyad: TStringField;
    aramaadsoyad: TcxGridDBColumn;
    Panel2: TPanel;
    cb_ad: TCheckBox;
    cb_soyad: TCheckBox;
    cm_don_kis: TcxComboBox;
    Label2: TLabel;
    Label1: TLabel;
    bt_goster: TBitBtn;
    bt_onceki_donem: TBitBtn;
    bt_sonraki_donem: TBitBtn;
    bt_vazgec: TcxButton;
    bt_sec: TcxButton;
    tablo_aramasaat: TStringField;
    aramasaat: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure bt_secClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aramaKeyPress(Sender: TObject; var Key: Char);
    procedure aramaDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tablo_aramaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_aramaAfterOpen(DataSet: TDataSet);
    procedure cb_adClick(Sender: TObject);
    procedure cb_soyadClick(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure cm_don_kisKeyPress(Sender: TObject; var Key: Char);
    procedure cm_don_kisClick(Sender: TObject);
    procedure bt_onceki_donemClick(Sender: TObject);
    procedure bt_sonraki_donemClick(Sender: TObject);
    procedure bt_vazgecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_ogrenci_arama: Tfr_ogrenci_arama;

implementation

uses functionlar, ogrenci, veritabani;
{$R *.dfm}

procedure Tfr_ogrenci_arama.FormCreate(Sender: TObject);
begin
  SOgr.Iptal := true;
  cm_don_kis.Properties.Items := Donemler;
  cm_don_kis.Text:=aktifdonem;
  tablo_arama.Params[0].Text := cm_don_kis.Text;
  tablo_arama.Filtered := gizli;
  tablo_arama.Open;
  ara_arama.Enabled := true;
  fr_ogrenci_arama.ShowModal;
end;

procedure Tfr_ogrenci_arama.bt_secClick(Sender: TObject);
begin
  if tablo_arama.RecordCount = 0 then
  begin
    SOgr.KayitVar := false;
    SOgr.Iptal := false;
    Sogr.Donem := cm_don_kis.Text;
  end
  else
  begin
    SOgr.KayitVar := true;
    SOgr.Iptal := false;
    SOgr.OgrNo := tablo_arama.FieldByName('ogr_no').AsInteger;
    SOgr.Donem := tablo_arama.FieldByName('donemi').AsString;
    SOgr.Adi := tablo_arama.FieldByName('adi').AsString;
    SOgr.Soyadi := tablo_arama.FieldByName('soyadi').AsString;
    SOgr.VeliKodu := tablo_arama.FieldByName('veli_kodu').AsInteger;
  end;
  Close;
end;

procedure Tfr_ogrenci_arama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_ogrenci_arama.aramaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then bt_secClick(bt_sec);
   if (Key in ['0'..'9']) and (aramaadsoyad.Focused=true) then
     aramaogr_no.Focused:=true;
   if (bkharf(Key,true) in ['A'..'Z','Ç','Ý','Ö','Ü','Þ','Ð']) and (aramaogr_no.Focused=true) then
     aramaadsoyad.Focused:=true;
end;

procedure Tfr_ogrenci_arama.aramaDblClick(Sender: TObject);
begin
  bt_secClick(bt_sec);
end;

procedure Tfr_ogrenci_arama.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then bt_vazgecClick(bt_vazgec);
end;

procedure Tfr_ogrenci_arama.tablo_aramaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_arama.fieldbyname('donemi').AsString,tablo_arama.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_ogrenci_arama.tablo_aramaAfterOpen(DataSet: TDataSet);
begin
  ogr_say.Caption := inttostr(tablo_arama.RecordCount)+' Öðrenci';
  if tablo_arama.RecordCount = 0 then
    bt_sec.Caption := 'Yeni Kayýt'
  else
    bt_sec.Caption := 'Seç';
end;

procedure Tfr_ogrenci_arama.cb_adClick(Sender: TObject);
begin
  aramaadi.Visible := cb_ad.Checked;
end;

procedure Tfr_ogrenci_arama.cb_soyadClick(Sender: TObject);
begin
  aramasoyadi.Visible := cb_soyad.Checked;
end;

procedure Tfr_ogrenci_arama.bt_gosterClick(Sender: TObject);
var
sql:string;
begin
  ara_arama.Enabled := false;
  tablo_arama.close;
  tablo_arama.SQL.Clear;
  sql:='select ogrenciler.donemi, ogrenciler.ogr_no, concat(adi," ",soyadi) AS adsoyad,adi,soyadi , veli_adi, veli_soyadi,ana_adi,baba_adi,ogrenciler.veli_kodu,sinifi';
  sql:=sql+',(select ders_1 from ders_programlari where sinif= sinifi and donem=donemi and gun=''Giriþ'') as saat ';
  sql:=sql+'from ogrenciler left join veliler using(veli_kodu) ';
  if cm_don_kis.text<>'Tümü' then
  sql:=sql+'where donemi='''+cm_don_kis.Text+''' ';
  sql:=sql+'order by adsoyad';
  tablo_arama.Sql.Add(sql);
  tablo_arama.Open;
  ara_arama.Enabled := true;
  AktifDonem:=cm_don_kis.Text;
end;

procedure Tfr_ogrenci_arama.cm_don_kisKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then bt_gosterClick(bt_goster);
end;

procedure Tfr_ogrenci_arama.cm_don_kisClick(Sender: TObject);
begin
 if tablo_arama.State = dsBrowse then bt_gosterClick(bt_goster);
end;

procedure Tfr_ogrenci_arama.bt_onceki_donemClick(Sender: TObject);
begin
 cm_don_kis.ItemIndex:=cm_don_kis.ItemIndex-1;
end;

procedure Tfr_ogrenci_arama.bt_sonraki_donemClick(Sender: TObject);
begin
 cm_don_kis.ItemIndex:=cm_don_kis.ItemIndex+1;
end;

procedure Tfr_ogrenci_arama.bt_vazgecClick(Sender: TObject);
begin
  SOgr.Iptal := true;
  Close;
end;

end.
