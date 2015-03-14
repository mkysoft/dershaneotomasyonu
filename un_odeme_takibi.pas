unit un_odeme_takibi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, Buttons, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCheckBox,dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxGridLnk,ShellAPI,cxExportGrid4Link,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxMemo, dxPScxCommon;

type
  Tfr_odeme_takibi = class(TForm)
    odeme_takibi: TcxGridDBTableView;
    Level1: TcxGridLevel;
    gr_takip: TcxGrid;
    ara_odeme_takibi: TDataSource;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    bt_hesapla: TBitBtn;
    tablo_odeme_takibi: TZReadOnlyQuery;
    tx_tarih: TcxDateEdit;
    Label1: TLabel;
    bt_temizle: TBitBtn;
    bt_exceleaktar: TBitBtn;
    bt_yazdir: TBitBtn;
    dosya: TSaveDialog;
    t_zaman: TTimer;
    pr_takip: TdxComponentPrinter;
    Label2: TLabel;
    cm_don_kis: TcxComboBox;
    mn_odeme_takibi: TcxGridPopupMenu;
    tablo_odeme_takibidonemi: TStringField;
    tablo_odeme_takibiogr_no: TIntegerField;
    tablo_odeme_takibiadsoyad: TStringField;
    tablo_odeme_takibikayit_bedeli: TFloatField;
    tablo_odeme_takibiogerek: TFloatField;
    tablo_odeme_takibialinan: TFloatField;
    tablo_odeme_takibigeri_kalan: TFloatField;
    tablo_odeme_takibigeciken: TFloatField;
    odeme_takibidonemi: TcxGridDBColumn;
    odeme_takibiogr_no: TcxGridDBColumn;
    odeme_takibiadsoyad: TcxGridDBColumn;
    odeme_takibikayit_bedeli: TcxGridDBColumn;
    odeme_takibialinan: TcxGridDBColumn;
    odeme_takibigeri_kalan: TcxGridDBColumn;
    odeme_takibigeciken: TcxGridDBColumn;
    pr_takipLink1: TdxGridReportLink;
    tablo_odeme_takibisinifi: TStringField;
    odeme_takibisinifi: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_hesaplaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_temizleClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure t_zamanTimer(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure tx_tarihKeyPress(Sender: TObject; var Key: Char);
    procedure tablo_odeme_takibiFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_odeme_takibi: Tfr_odeme_takibi;

implementation

uses ogrenci,functionlar,veritabani;

{$R *.dfm}

procedure Tfr_odeme_takibi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure Tfr_odeme_takibi.bt_hesaplaClick(Sender: TObject);
var
sql:string;
begin
  tablo_odeme_takibi.close;
  ara_odeme_takibi.Enabled:=false;
  sql:='SELECT donemi,ogr_no,adsoyad,sinifi,kayit_bedeli,ogerek,alinan,'
      +'kayit_bedeli-alinan as geri_kalan,ogerek-alinan as geciken'
      +' from (select donemi,ogr_no,concat_ws('' '',adi,soyadi) as adsoyad,'
      +'sinifi,borc(donemi,ogr_no) as kayit_bedeli,'
      +'odenmesigereken(donemi,ogr_no,'+QuotedStr(mtarih(tx_tarih.Date))+') as ogerek,'
      +'odenen(donemi,ogr_no,'+QuotedStr(mtarih(tx_tarih.Date))+') as alinan'
      +' FROM ogrenciler';
  if cm_don_kis.text<>'Tümü' then
    sql:=sql+' WHERE donemi='+QuotedStr(cm_don_kis.text);
  sql:=sql+' having kayit_bedeli <> 0'
          +' order by donemi,ogr_no) bos';
  tablo_odeme_takibi.sql.clear;
  tablo_odeme_takibi.sql.add(sql);
  ara_odeme_takibi.enabled:=false;
  tablo_odeme_takibi.open;
  ara_odeme_takibi.enabled:=true;
  odeme_takibi.ApplyBestFit();
  bt_yazdir.SetFocus;
end;

procedure Tfr_odeme_takibi.FormCreate(Sender: TObject);
begin
  cm_don_kis.Properties.Items := Donemler;
  cm_don_kis.Text := AktifDonem;
  tx_tarih.Date := now();
  tablo_odeme_takibi.Filtered := gizli;
end;

procedure Tfr_odeme_takibi.bt_temizleClick(Sender: TObject);
begin
  tablo_odeme_takibi.close;
  ara_odeme_takibi.Enabled:=false;
  tx_tarih.Date := now();
end;

procedure Tfr_odeme_takibi.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
  begin
    if tablo_odeme_takibi.RecordCount <1 then exit;
    SOgr.donem := tablo_odeme_takibi.fieldbyname('donemi').Text;
    SOgr.ogrno := tablo_odeme_takibi.fieldbyname('ogr_no').AsInteger;
    SOgr.kayitgoster := true;
    application.CreateForm(Tfr_ogrenci,fr_ogrenci);
    fr_ogrenci.sayfalar_taksit.Show;
  end;
end;

procedure Tfr_odeme_takibi.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
    t_zaman.Enabled := false;
    ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_odeme_takibi.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_takip,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_odeme_takibi.bt_exceleaktarClick(Sender: TObject);
begin
  dosya.Execute;
end;

procedure Tfr_odeme_takibi.bt_yazdirClick(Sender: TObject);
begin
 level1.Caption := 'Ödeme Takibi. Hesaplanma Tarihi : '+tx_tarih.Text;
 pr_takip.Preview(True,nil);
end;

procedure Tfr_odeme_takibi.tx_tarihKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then bt_hesapla.SetFocus;
end;

procedure Tfr_odeme_takibi.tablo_odeme_takibiFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_odeme_takibi.fieldbyname('donemi').AsString,tablo_odeme_takibi.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

end.

