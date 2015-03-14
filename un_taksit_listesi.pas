unit un_taksit_listesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, ExtCtrls, dxPSCore, dxPScxGridLnk,
  cxGridCustomPopupMenu, cxGridPopupMenu, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxCalendar, StdCtrls, Buttons,
  cxExportGrid4Link, ShellAPI, cxCheckBox, dxPScxCommon;

type
  Tfr_taksit_listesi = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    bt_goster: TBitBtn;
    cm_don_kis: TcxComboBox;
    GroupBox2: TGroupBox;
    bt_exceleaktar: TBitBtn;
    bt_yazdir: TBitBtn;
    gr_taksit: TcxGrid;
    taksit_liste: TcxGridDBTableView;
    Level1: TcxGridLevel;
    tablo_taksit_liste: TZReadOnlyQuery;
    ara_taksit_liste: TDataSource;
    mn_odeme_takibi: TcxGridPopupMenu;
    pr_taksit: TdxComponentPrinter;
    dosya: TSaveDialog;
    t_zaman: TTimer;
    tablo_taksit_listeogr_no: TIntegerField;
    tablo_taksit_listevadesi: TDateField;
    tablo_taksit_listemiktari: TFloatField;
    tablo_taksit_listedonemi: TStringField;
    tablo_taksit_listeay: TLargeintField;
    tablo_taksit_listeayadi: TStringField;
    tablo_taksit_listeadsoyad: TStringField;
    cm_tar_kis: TcxComboBox;
    tx_tar_bas: TcxDateEdit;
    tx_tar_bit: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    taksit_listetaksit_id: TcxGridDBColumn;
    taksit_listeogr_no: TcxGridDBColumn;
    taksit_listevadesi: TcxGridDBColumn;
    taksit_listemiktari: TcxGridDBColumn;
    taksit_listedonemi: TcxGridDBColumn;
    taksit_listeay: TcxGridDBColumn;
    taksit_listeayadi: TcxGridDBColumn;
    taksit_listeadsoyad: TcxGridDBColumn;
    pr_taksitLink1: TdxGridReportLink;
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure t_zamanTimer(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cm_tar_kisPropertiesChange(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure tablo_taksit_listeFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_taksit_listesi: Tfr_taksit_listesi;

implementation

uses veritabani,AnaForm,functionlar, ogrenci;

{$R *.dfm}

procedure Tfr_taksit_listesi.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_taksit,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_taksit_listesi.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
   t_zaman.Enabled := false;
   ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_taksit_listesi.bt_yazdirClick(Sender: TObject);
begin
 level1.Caption := 'Taksit Listesi. ';
 level1.Caption := level1.Caption+'Dönemi: '+cm_don_kis.text;
 if cm_tar_kis.Text ='Tümü' then
  level1.Caption := level1.Caption+'Tarih: '+cm_tar_kis.text
 else if cm_tar_kis.Text ='Eþit' then
  level1.Caption := level1.Caption+'Tarih: '+tx_tar_bas.Text
 else
  level1.Caption := level1.Caption+'Tarih: '+tx_tar_bas.Text+' - '+tx_tar_bit.Text;
 pr_taksit.Preview(True,nil);
end;

procedure Tfr_taksit_listesi.bt_exceleaktarClick(Sender: TObject);
begin
  dosya.Execute;
end;

procedure Tfr_taksit_listesi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure Tfr_taksit_listesi.FormCreate(Sender: TObject);
begin
  cm_don_kis.Properties.Items := Donemler;
  tx_tar_bas.Date := now();
  tablo_taksit_liste.Filtered := gizli;
end;

procedure Tfr_taksit_listesi.cm_tar_kisPropertiesChange(Sender: TObject);
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

procedure Tfr_taksit_listesi.bt_gosterClick(Sender: TObject);
var
sql:string;
begin
 tablo_taksit_liste.close;
 sql:='select *,month(vadesi) as ay,case month(vadesi) ';
 sql:=sql+'when 1 then "Ocak" ';
 sql:=sql+'when 2 then "Þubat" ';
 sql:=sql+'when 3 then "Mart" ';
 sql:=sql+'when 4 then "Nisan" ';
 sql:=sql+'when 5 then "Mayýs" ';
 sql:=sql+'when 6 then "Haziran" ';
 sql:=sql+'when 7 then "Temmuz" ';
 sql:=sql+'when 8 then "Aðustos" ';
 sql:=sql+'when 9 then "Eylül" ';
 sql:=sql+'when 10 then "Ekim" ';
 sql:=sql+'when 11 then "Kasým" ';
 sql:=sql+'when 12 then "Aralýk" end as ayadi, ';
 sql:=sql+'(select concat(adi," ",soyadi) from ogrenciler o where o.donemi=t.donemi and o.ogr_no=t.ogr_no) as adsoyad ';
 sql:=sql+'from taksitler t ';
 if cm_tar_kis.Text <> 'Tümü' then
 begin
   if cm_tar_kis.Text = 'Eþit' then
     sql := sql+'where vadesi = "'+ mtarih(tx_tar_bas.date)+'" '
   else if cm_tar_kis.Text = 'Büyük' then
     sql := sql+'where vadesi > "'+ mtarih(tx_tar_bas.date)+'" '
   else if cm_tar_kis.Text = 'Küçük' then
     sql := sql+'where vadesi < "'+ mtarih(tx_tar_bas.date)+'" '
   else if cm_tar_kis.Text = 'Arasýnda' then
     sql := sql+'where vadesi between "'+ mtarih(tx_tar_bas.date)+'" and "'+mtarih(tx_tar_bit.date)+'" ';
 end;
 if cm_don_kis.Text <> 'Tümü' then
  if cm_tar_kis.Text <> 'Tümü' then
   sql:=sql+' and donemi='''+cm_don_kis.text+''' '
  else
   sql:=sql+'where donemi='''+cm_don_kis.text+''' ';
 sql:=sql+'order by vadesi,donemi,ogr_no';
 tablo_taksit_liste.SQL.Clear;
 tablo_taksit_liste.SQL.Add(sql);
 tablo_taksit_liste.Open;
end;

procedure Tfr_taksit_listesi.tablo_taksit_listeFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_taksit_liste.fieldbyname('donemi').AsString,tablo_taksit_liste.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_taksit_listesi.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F3 then
  begin
  if tablo_taksit_liste.RecordCount <1 then exit;
  SOgr.donem:= tablo_taksit_liste.fieldbyname('donemi').Text;
  SOgr.ogrno:= tablo_taksit_liste.fieldbyname('ogr_no').AsInteger;
  SOgr.kayitgoster := true;
  application.CreateForm(Tfr_ogrenci,fr_ogrenci);
  fr_ogrenci.sayfalar_taksit.Show;
  end;
end;

end.

