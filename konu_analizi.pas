unit konu_analizi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ComCtrls, cxPC, cxContainer, cxGroupBox,
  cxLookAndFeelPainters, StdCtrls, cxButtons, Menus, ExtCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGridLnk,
  cxExportGrid4Link,ShellAPI, cxGridBandedTableView,
  cxGridDBBandedTableView, dxmdaset, Math, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  Tfr_konu_analizi = class(TForm)
    tablo_sinavtanim: TZReadOnlyQuery;
    tablo_sinavtanimsinav_no: TIntegerField;
    tablo_sinavtanimturu: TStringField;
    tablo_sinavtanimsinav_tarihi: TDateField;
    tablo_sinavtanimsinav_adi: TStringField;
    ara_sinavtanim: TDataSource;
    GrSinavTanim: TcxGrid;
    VwSinavlar: TcxGridDBTableView;
    VwSinavlarsinav_no: TcxGridDBColumn;
    VwSinavlarturu: TcxGridDBColumn;
    VwSinavlarsinav_tarihi: TcxGridDBColumn;
    VwSinavlarsinav_adi: TcxGridDBColumn;
    LvSinavTanim: TcxGridLevel;
    sayfalar: TcxPageControl;
    sayfa_sinavlar: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    bt_analiz: TcxButton;
    mn_analiz: TPopupMenu;
    mn_genel_konu_analizi: TMenuItem;
    mn_sinif_konu_analizi: TMenuItem;
    sayfa_analiz_sonuclari: TcxTabSheet;
    tablo_konu_analiz: TZReadOnlyQuery;
    tablo_konu_analizders: TStringField;
    tablo_konu_analizkonu: TStringField;
    tablo_konu_analizdurum: TStringField;
    tablo_konu_analizadet: TLargeintField;
    ara_konu_analiz: TDataSource;
    Panel1: TPanel;
    VwAnaliz: TcxGridDBTableView;
    LvAnaliz: TcxGridLevel;
    GrAnaliz: TcxGrid;
    VwAnalizders: TcxGridDBColumn;
    VwAnalizkonu: TcxGridDBColumn;
    VwAnalizdurum: TcxGridDBColumn;
    VwAnalizadet: TcxGridDBColumn;
    bt_yazdir: TcxButton;
    rp_analiz: TdxComponentPrinter;
    rp_analizLink1: TdxGridReportLink;
    tablo_konu_analizsinifi: TStringField;
    VwAnalizsinifi: TcxGridDBColumn;
    MnSoruNumarasiIleKonuAnalizi: TMenuItem;
    VwAnalizsoru_no: TcxGridDBColumn;
    tablo_konu_analizsoru_no: TIntegerField;
    t_zaman: TTimer;
    dosya: TSaveDialog;
    bt_exceleaktar: TcxButton;
    mnSinifBazindaSoruNumarasiIleKonuAnalizi: TMenuItem;
    TabloSinifBazindaSoruNoIle: TZReadOnlyQuery;
    VwSinifSoru: TcxGridDBBandedTableView;
    MemSinifSoru: TdxMemData;
    AraSinifSoru: TDataSource;
    MnGrAnaliz: TcxGridPopupMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mn_analizClick(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure t_zamanTimer(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure mnSinifBazindaSoruNumarasiIleKonuAnaliziClick(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_konu_analizi: Tfr_konu_analizi;

implementation

{$R *.dfm}
uses veritabani;

procedure Tfr_konu_analizi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfr_konu_analizi.FormShow(Sender: TObject);
begin
  tablo_sinavtanim.Open;
end;

procedure Tfr_konu_analizi.mn_analizClick(Sender: TObject);
var
  sql,sinavlar:string;
  i:integer;
begin
  if VwSinavlar.Controller.SelectedRowCount<1 then
  begin
    MessageDlg('En az bir sýnav seçmeniz gerekir!', mtError, [mbOK], 0);
    exit;
  end;
  tablo_konu_analiz.Close;
  ara_konu_analiz.Enabled:=false;
  sql:='';
  for i:=0 to VwSinavlar.Controller.SelectedRowCount-1 do
    sql:=sql+vartostr(VwSinavlar.Controller.SelectedRecords[i].Values[0]) +',';
  sinavlar:=copy(sql,1,length(sql)-1);
  sql:='select soru_no_a as soru_no,';
  sql:= sql+'sinifi,sinavkonu.ders,konu,'
    +'cevapkontrol(sinav_no,sinavkonu.ders,soru_no_a,donemi,ogr_no) as durum,'
    +'count(cevapkontrol(sinav_no,sinavkonu.ders,soru_no_a,donemi,ogr_no)) as adet'
    +' from sinavsonuc join sinavkonu using(sinav_no) join sinavkonutanim on konu_no=sinavkonutanim.id where ogr_no<>3 and sinav_no in ('
    +sinavlar+') group by ';
  if (Sender as TMenuItem).Name= mn_genel_konu_analizi.Name then
  begin
    sql:=sql+'konu,durum order by dersno(sinavkonu.ders),durum';
    VwAnalizsinifi.Hidden:=true;
    VwAnalizsinifi.Visible:=false;
    VwAnalizsoru_no.Hidden:=true;
    VwAnalizsoru_no.Visible:=false;
  end
  else if (Sender as TMenuItem).Name= mn_sinif_konu_analizi.Name then
  begin
    sql:=sql+'sinifi,konu,durum order by dersno(sinavkonu.ders),durum,sinifi';
    VwAnalizsinifi.Hidden:=false;
    VwAnalizsinifi.Visible:=true;
    VwAnalizsoru_no.Hidden:=true;
    VwAnalizsoru_no.Visible:=false;
  end
  else if (Sender as TMenuItem).Name= MnSoruNumarasiIleKonuAnalizi.Name then
  begin
    sql:=sql+'dersno(sinavkonu.ders),soru_no_a,durum order by dersno(sinavkonu.ders),soru_no,durum';
    VwAnalizsinifi.Hidden:=true;
    VwAnalizsinifi.Visible:=false;
    VwAnalizsoru_no.Hidden:=false;
    VwAnalizsoru_no.Visible:=true;
  end;
  Tablo_konu_analiz.SQL.Clear;
  tablo_konu_analiz.SQL.Add(sql);
  tablo_konu_analiz.Open;
  LvAnaliz.GridView := VwAnaliz;
  ara_konu_analiz.Enabled:=true;
  VwAnaliz.ApplyBestFit();
  sayfa_analiz_sonuclari.Enabled:=true;
  sayfa_analiz_sonuclari.Show;
end;

procedure Tfr_konu_analizi.bt_yazdirClick(Sender: TObject);
begin
  rp_analiz.Preview(true);
end;

procedure Tfr_konu_analizi.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,GrSinavTanim,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_konu_analizi.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
    t_zaman.Enabled := false;
    ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_konu_analizi.bt_exceleaktarClick(Sender: TObject);
begin
  dosya.Execute;
end;

procedure Tfr_konu_analizi.mnSinifBazindaSoruNumarasiIleKonuAnaliziClick(
  Sender: TObject);
var
  sql,sinavlar:string;
  i,mevcut:integer;
  siniflar: array of string[10];
  AField : TField;
begin
  AraSinifSoru.Enabled:=false;
  TabloSinifBazindaSoruNoIle.Close;
  TabloSinifBazindaSoruNoIle.SQL.Clear;
  if VwSinavlar.Controller.SelectedRowCount>1 then
  begin
    MessageDlg('Bu analiz sadece bir sýnav üzerine uygulanabilir.'+#13+#10+'Lütfen sadece bir sýnav seçiniz.', mtError, [mbOK], 0);
    Exit;
  end;
  sinavlar:='';
  for i:=0 to VwSinavlar.Controller.SelectedRowCount-1 do
    sinavlar:=sinavlar+vartostr(VwSinavlar.Controller.SelectedRecords[i].Values[0]) +',';
  sinavlar:=copy(sinavlar,1,length(sinavlar)-1);
  sql:='select distinct sinifi from sinavsonuc where sinav_no in ('+sinavlar+') order by sinifi';
  TabloSinifBazindaSoruNoIle.SQL.Add(sql);
  TabloSinifBazindaSoruNoIle.Open;
  setlength(siniflar,TabloSinifBazindaSoruNoIle.RecordCount);
  VwSinifSoru.ClearItems;
  VwSinifSoru.Bands.Clear;
  VwSinifSoru.DataController.DataSource := nil;
  LvAnaliz.GridView := VwSinifSoru;
  MemSinifSoru.Close;
  MemSinifSoru.FieldDefs.Clear;
  while MemSinifSoru.FieldCount > 0 do
    MemSinifSoru.Fields[MemSinifSoru.FieldCount - 1].Free;

  AField := TIntegerField.Create(self);
  AField.Name := 'MemSinifSoruDersNo';
  AField.DisplayLabel := 'Ders No';
  AField.FieldName := 'dersno';
  AField.SetFieldType(ftInteger);
  AField.Visible:=false;
  AField.DataSet := MemSinifSoru;

  AField := TIntegerField.Create(self);
  AField.Name := 'MemSinifSoruSoruNo';
  AField.DisplayLabel := 'Soru No';
  AField.FieldName := 'soru_no';
  AField.SetFieldType(ftInteger);
  AField.DataSet := MemSinifSoru;

  AField := TStringField.Create(self);
  AField.Name := 'MemSinifSoruDers';
  AField.DisplayLabel := 'Ders Adý';
  AField.FieldName := 'ders';
  AField.Size:=20;
  AField.SetFieldType(ftString);
  AField.DataSet := MemSinifSoru;

  AField := TStringField.Create(self);
  AField.Name := 'MemSinifSoruKonu';
  AField.DisplayLabel := 'Konu';
  AField.FieldName := 'konu';
  AField.Size:=255;
  AField.SetFieldType(ftString);
  AField.DataSet := MemSinifSoru;

//sýnýftaki öðrenci sayýlarý ile iliþkilendirmek lazým
  i:=0;
  while TabloSinifBazindaSoruNoIle.Eof=false do
  begin
    siniflar[i]:=TabloSinifBazindaSoruNoIle.FieldByName('sinifi').Text;

    AField := TIntegerField.Create(self);
    AField.Name := 'MemSinifSoruSinif'+inttostr(i)+'D';
    AField.DisplayLabel := 'D%';
    AField.FieldName := 'sinif'+inttostr(i)+'d';
    AField.SetFieldType(ftInteger);
    AField.DataSet := MemSinifSoru;

    AField := TIntegerField.Create(self);
    AField.Name := 'MemSinifSoruSinif'+inttostr(i)+'Y';
    AField.DisplayLabel := 'Y%';
    AField.FieldName := 'sinif'+inttostr(i)+'y';
    AField.SetFieldType(ftInteger);
    AField.DataSet := MemSinifSoru;

    inc(i);
    TabloSinifBazindaSoruNoIle.Next;
  end;
  MemSinifSoru.FieldDefs.Update;
  MemSinifSoru.Open;
  sayfa_analiz_sonuclari.Enabled:=true;
  sayfa_analiz_sonuclari.Show;
  VwSinifSoru.DataController.DataSource := AraSinifSoru;
  VwSinifSoru.DataController.CreateAllItems;
  sayfa_analiz_sonuclari.Enabled:=true;
  sayfa_analiz_sonuclari.Show;
  VwSinifSoru.Bands.Add;
  VwSinifSoru.Bands.Items[0].Caption:='Soru Bilgileri';
  for i:=0 to 3 do
  begin
    VwSinifSoru.Columns[i].Position.BandIndex:=0;
//    VwSinifSoru.Columns[i].Position.RowIndex:=i;
  end;
  for i:=4 to length(siniflar)+3 do
  begin
    VwSinifSoru.Bands.Add;
    VwSinifSoru.Bands.Items[i-3].Caption:=siniflar[i-4];
    VwSinifSoru.Columns[(i-2)*2].Position.BandIndex:=i-3;
    VwSinifSoru.Columns[(i-2)*2+1].Position.BandIndex:=i-3;
    VwSinifSoru.Columns[(i-2)*2].Options.Filtering:=false;
    VwSinifSoru.Columns[(i-2)*2+1].Options.Filtering:=false;
  end;
  sql:='select dersno(sinavkonu.ders) as dersno,soru_no_a as soru_no,sinavkonu.ders,konu '
       +'from sinavsonuc join sinavkonu using(sinav_no) join sinavkonutanim on konu_no=sinavkonutanim.id '
       +'where sinav_no in ('+sinavlar+')  group by dersno,soru_no order by dersno,soru_no';
  TabloSinifBazindaSoruNoIle.Close;
  TabloSinifBazindaSoruNoIle.SQL.Clear;
  TabloSinifBazindaSoruNoIle.SQL.Add(sql);
  TabloSinifBazindaSoruNoIle.Open;
  while TabloSinifBazindaSoruNoIle.Eof=false do
  begin
    MemSinifSoru.Append;
    MemSinifSoru.FieldByName('dersno').AsInteger := TabloSinifBazindaSoruNoIle.FieldByName('dersno').AsInteger;
    MemSinifSoru.FieldByName('soru_no').AsInteger := TabloSinifBazindaSoruNoIle.FieldByName('soru_no').AsInteger;
    MemSinifSoru.FieldByName('ders').Text := TabloSinifBazindaSoruNoIle.FieldByName('ders').Text;
    MemSinifSoru.FieldByName('konu').Text := TabloSinifBazindaSoruNoIle.FieldByName('konu').Text;
    MemSinifSoru.Post;
    TabloSinifBazindaSoruNoIle.Next;
  end;
  for i := 0 to length(siniflar)-1 do
  begin
    sql := 'select count(sinifi) from sinavsonuc where sinifi='+QuotedStr(siniflar[i])+' group by sinifi';
    TabloSinifBazindaSoruNoIle.Close;
    TabloSinifBazindaSoruNoIle.SQL.Clear;
    TabloSinifBazindaSoruNoIle.SQL.Add(sql);
    TabloSinifBazindaSoruNoIle.Open;
    mevcut := TabloSinifBazindaSoruNoIle.Fields.Fields[0].AsInteger;
    sql:='select dersno(sinavkonu.ders) as dersno,soru_no_a as soru_no,'
         +'cevapkontrol(sinav_no,sinavkonu.ders,soru_no_a,donemi,ogr_no) as durum,'
         +'count(cevapkontrol(sinav_no,sinavkonu.ders,soru_no_a,donemi,ogr_no)) as adet '
         +'from sinavsonuc join sinavkonu using(sinav_no) join sinavkonutanim on konu_no=sinavkonutanim.id '
         +'where ogr_no<>3 and sinav_no in ('+sinavlar+') and sinifi='+QuotedStr(siniflar[i])
         +' group by sinifi,dersno(sinavkonu.ders),soru_no,durum '
         +'order by dersno,soru_no,durum';
    TabloSinifBazindaSoruNoIle.SQL.Clear;
    TabloSinifBazindaSoruNoIle.SQL.Add(sql);
    TabloSinifBazindaSoruNoIle.Open;
    while TabloSinifBazindaSoruNoIle.Eof=false do
    begin
      MemSinifSoru.Locate('dersno;soru_no',vararrayof([TabloSinifBazindaSoruNoIle.FieldByName('dersno').AsInteger,TabloSinifBazindaSoruNoIle.FieldByName('soru_no').AsInteger]),[loCaseInsensitive]);
      MemSinifSoru.Edit;
      if TabloSinifBazindaSoruNoIle.FieldByName('durum').Text='D' then
        MemSinifSoru.FieldByName('sinif'+inttostr(i)+'d').AsFloat := roundto((TabloSinifBazindaSoruNoIle.FieldByName('adet').AsInteger/mevcut)*100,-2)
      else if TabloSinifBazindaSoruNoIle.FieldByName('durum').Text='Y' then
        MemSinifSoru.FieldByName('sinif'+inttostr(i)+'y').AsFloat := roundto((TabloSinifBazindaSoruNoIle.FieldByName('adet').AsInteger/mevcut)*100,-2);
      MemSinifSoru.Post;
      TabloSinifBazindaSoruNoIle.Next;
    end;
  end;
  AraSinifSoru.Enabled:=true;
  TabloSinifBazindaSoruNoIle.Close;
  VwSinifSoru .ApplyBestFit();
end;

end.
