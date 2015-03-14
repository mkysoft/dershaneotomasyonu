unit un_devamsizlik_girisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, Buttons, DB,
  ZAbstractRODataset, ZDataset, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractDataset, ExtCtrls, cxDBEdit;

type
  Tfr_devamsizlik_girisi = class(TForm)
    tablo_oku: TZReadOnlyQuery;
    ara_devamsizlik: TDataSource;
    tablo_devamsizlik: TZQuery;
    gr_devamsizliklar: TcxGrid;
    devamsizliklar: TcxGridDBTableView;
    gr_devamsizliklarLevel1: TcxGridLevel;
    GroupBox1: TGroupBox;
    cxLabel1: TcxLabel;
    tx_tarih: TcxDateEdit;
    cxLabel2: TcxLabel;
    tx_ders_no: TcxTextEdit;
    tx_ogr_no: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    tx_dersin_adi: TcxTextEdit;
    tx_sinifi: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel4: TcxLabel;
    tx_adi: TcxTextEdit;
    tx_soyadi: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    tx_donemi: TcxComboBox;
    tablo_ogrenci: TZReadOnlyQuery;
    tablo_ogrencidonemi: TStringField;
    tablo_ogrenciogr_no: TIntegerField;
    tablo_ogrenciadi: TStringField;
    tablo_ogrencisoyadi: TStringField;
    tablo_ogrencisinifi: TStringField;
    bt_ekle: TBitBtn;
    tablo_devamsizlikdonemi: TStringField;
    tablo_devamsizlikogr_no: TIntegerField;
    tablo_devamsizliktarih: TDateField;
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
    devamsizliklardonemi: TcxGridDBColumn;
    devamsizliklarogr_no: TcxGridDBColumn;
    devamsizliklartarih: TcxGridDBColumn;
    devamsizliklarders_1: TcxGridDBColumn;
    devamsizliklarders_2: TcxGridDBColumn;
    devamsizliklarders_3: TcxGridDBColumn;
    devamsizliklarders_4: TcxGridDBColumn;
    devamsizliklarders_5: TcxGridDBColumn;
    devamsizliklarders_6: TcxGridDBColumn;
    devamsizliklarders_7: TcxGridDBColumn;
    devamsizliklarders_8: TcxGridDBColumn;
    devamsizliklarders_9: TcxGridDBColumn;
    devamsizliklarders_10: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure kaydet;
    procedure tx_ogr_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ders_noKeyPress(Sender: TObject; var Key: Char);
    procedure tx_tarihKeyPress(Sender: TObject; var Key: Char);
    procedure tx_tarihPropertiesEditValueChanged(Sender: TObject);
    procedure tablo_devamsizlikFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_ogrenciFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure bt_ekleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tx_ogr_noKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_devamsizlik_girisi: Tfr_devamsizlik_girisi;

implementation

uses functionlar, veritabani;

{$R *.dfm}
procedure Tfr_devamsizlik_girisi.kaydet;
var
  sql : string;
begin
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  sql := 'select donemi,ogr_no,sinifi,adi,soyadi,'
      +'(select ders_'+tx_ders_no.Text+' from ders_programlari where sinif=sinifi'
      +'  and donem=donemi and gun='+ QuotedStr(longdaynames[dayofweek(tx_tarih.Date)])+') as'
      +' ders_'+tx_ders_no.Text+' from ogrenciler'
      +' where donemi='+QuotedStr(tx_donemi.Text)+' and ogr_no='+tx_ogr_no.Text;
  tablo_oku.SQL.Add(sql);
  tablo_oku.Open;
  if tablo_oku.RecordCount < 1 then
  begin
    messagedlg('Öðrenci numarasý geçersiz!',mtError, [mbOk], 0);
    tx_ogr_no.SetFocus;
    tx_ogr_no.SelectAll;
    tx_adi.Clear;
    tx_soyadi.clear;
    tx_sinifi.Clear;
    tablo_oku.Close;
    exit;
  end;
  if tablo_oku.fieldbyname('sinifi').Text = '' then
  begin
    messagedlg('Bu öðrencinin sýnýfý yok!',mtError, [mbOk], 0);
    tx_ogr_no.SetFocus;
    tx_ogr_no.SelectAll;
    tablo_oku.Close;
    exit;
  end;
  tx_adi.Text := tablo_oku.fieldbyname('adi').Text;
  tx_soyadi.Text := tablo_oku.fieldbyname('soyadi').Text;
  tx_sinifi.Text := tablo_oku.fieldbyname('sinifi').text;
  if tablo_oku.FieldByName('ders_'+tx_ders_no.Text).Text = '' then
  begin
    messagedlg(tx_sinifi.Text+' sýnýfýnýn '+longdaynames[dayofweek(tx_tarih.Date)]+' günü '+tx_ders_no.Text+'. dersi yok!',mtError, [mbOk], 0);
    tx_ogr_no.SetFocus;
    tx_ogr_no.SelectAll;
    tablo_oku.Close;
    exit;
  end;
  tx_dersin_adi.Text := tablo_oku.fieldbyname('ders_' + tx_ders_no.Text).Text;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select id,ders_'+tx_ders_no.Text+' from devamsizliklar where donemi='+QuotedStr(tx_donemi.Text)+' and ogr_no='+tx_ogr_no.Text+' and tarih='+QuotedStr(mtarih(tx_tarih.Date)));
  tablo_oku.Open;
  if tablo_oku.RecordCount > 0 then
  begin
    if tablo_oku.FieldByName('ders_'+tx_ders_no.Text).Text <> '' then
    begin
      messagedlg('Bu devamsýzlýk zaten girilmiþ!',mtError, [mbOk], 0);
      tablo_oku.close;
      tx_ogr_no.SetFocus;
      tx_ogr_no.SelectAll;
      exit;
    end
    else
    begin
      sql:='update devamsizliklar set ders_'+tx_ders_no.Text+'='+QuotedStr(tx_dersin_adi.Text)+' where id='+tablo_oku.fieldbyname('id').Text;
      tablo_oku.Close;
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add(sql);
      tablo_oku.ExecSQL;
      tablo_devamsizlik.Refresh;
    end;
  end
  else
  begin
    tablo_devamsizlik.Append;
    tablo_devamsizlik.FieldByName('donemi').Text := tx_donemi.Text;
    tablo_devamsizlik.FieldByName('ogr_no').Text := tx_ogr_no.Text;
    tablo_devamsizlik.FieldByName('tarih').AsDateTime := tx_tarih.Date;
    tablo_devamsizlik.FieldByName('ders_'+tx_ders_no.Text).Text := tx_dersin_adi.Text;
    tablo_devamsizlik.Post;
  end;
  tx_ogr_no.Clear;
  tx_dersin_adi.Clear;
  tx_sinifi.Clear;
  tx_adi.Clear;
  tx_soyadi.clear;
  tx_sinifi.Clear;
  devamsizliklar.ApplyBestFit();
end;

procedure Tfr_devamsizlik_girisi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_devamsizlik_girisi.FormCreate(Sender: TObject);
begin
  tx_tarih.Date := now();
  tx_ders_no.Text := '1';
  tx_donemi.Properties.Items := Donemler;
  tx_donemi.Text := AktifDonem;
  tablo_devamsizlik.close;
  ara_devamsizlik.Enabled := false;
  tablo_devamsizlik.Filtered := gizli;
  tablo_devamsizlik.Open;
  ara_devamsizlik.Enabled := true;
  tablo_ogrenci.Filtered := gizli;
  tablo_ogrenci.Open;
end;

procedure Tfr_devamsizlik_girisi.tx_ogr_noKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
 if tx_ogr_no.text = '' then
 begin
   tx_ders_no.Text := inttostr(strtoint(tx_ders_no.Text)+1);
   if not (strtoint(tx_ders_no.Text) in [1..10]) then tx_ders_no.Text := '1';
 end
 else if tx_ogr_no.text <> '' then kaydet;
end;

procedure Tfr_devamsizlik_girisi.tx_ders_noKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    tx_ogr_no.SetFocus;
    tx_ogr_no.SelectAll;
  end;
end;

procedure Tfr_devamsizlik_girisi.tx_tarihKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    tablo_devamsizlik.Close;
    ara_devamsizlik.Enabled := false;
    tablo_devamsizlik.SQL.Clear;
    tablo_devamsizlik.SQL.Add('select * from devamsizliklar where tarih ='+QuotedStr(mtarih(tx_tarih.Date)));
    tablo_devamsizlik.Filtered := gizli;
    tablo_devamsizlik.Open;
    ara_devamsizlik.Enabled := true;
    tx_ogr_no.SetFocus;
    tx_ogr_no.SelectAll;
  end;
end;

procedure Tfr_devamsizlik_girisi.tx_tarihPropertiesEditValueChanged(
  Sender: TObject);
begin
  tablo_devamsizlik.Close;
  ara_devamsizlik.Enabled := false;
  tablo_devamsizlik.SQL.Clear;
  tablo_devamsizlik.SQL.Add('select * from devamsizliklar where tarih ="'+mtarih(tx_tarih.Date)+'"');
  tablo_devamsizlik.Filtered := gizli;
  tablo_devamsizlik.Open;
  ara_devamsizlik.Enabled := true;
end;

procedure Tfr_devamsizlik_girisi.tablo_devamsizlikFilterRecord(
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

procedure Tfr_devamsizlik_girisi.tablo_ogrenciFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_ogrenci.fieldbyname('donemi').AsString,tablo_ogrenci.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_devamsizlik_girisi.bt_ekleClick(Sender: TObject);
begin
  kaydet;
end;

procedure Tfr_devamsizlik_girisi.FormShow(Sender: TObject);
begin
  devamsizliklar.ApplyBestFit();
end;

procedure Tfr_devamsizlik_girisi.tx_ogr_noKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key= VK_UP then
  begin
   tx_ders_no.Text := inttostr(strtoint(tx_ders_no.Text)+1);
   if tx_ders_no.Text = '11' then tx_ders_no.Text := '1';
  end;
  if Key= VK_DOWN then
  begin
   tx_ders_no.Text := inttostr(strtoint(tx_ders_no.Text)-1);
   if tx_ders_no.Text = '0' then tx_ders_no.Text := '10';
  end;
end;

end.

