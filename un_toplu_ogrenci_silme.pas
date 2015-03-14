unit un_toplu_ogrenci_silme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Buttons, cxLabel, DB, ZAbstractRODataset,
  ZDataset;

type
  Tfr_toplu_ogrenci_silme = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    cm_don_bas_ara: TcxComboBox;
    cm_don_bit_ara: TcxComboBox;
    tx_ogr_no_bas_ara: TcxTextEdit;
    tx_ogr_no_bit_ara: TcxTextEdit;
    bt_ogrenci_bul_bas: TBitBtn;
    bt_ogrenci_bul_bas_bit: TBitBtn;
    bt_sil: TBitBtn;
    tablo_oku: TZReadOnlyQuery;
    cxLabel8: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_ogrenci_bul_basClick(Sender: TObject);
    procedure bt_ogrenci_bul_bas_bitClick(Sender: TObject);
    procedure bt_silClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_toplu_ogrenci_silme: Tfr_toplu_ogrenci_silme;

implementation

uses functionlar,ogrenci_arama, BosNumaralar,veritabani;
{$R *.dfm}

procedure Tfr_toplu_ogrenci_silme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_toplu_ogrenci_silme.FormCreate(Sender: TObject);
begin
  cm_don_bas_ara.Properties.Items := Donemler;
  cm_don_bit_ara.Properties.Items := Donemler;
  cm_don_bas_ara.Text := AktifDonem;
  cm_don_bit_ara.Text := AktifDonem;
end;

procedure Tfr_toplu_ogrenci_silme.bt_ogrenci_bul_basClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  cm_don_bas_ara.Text := SOgr.donem;
  cm_don_bit_ara.Text := SOgr.donem;
  tx_ogr_no_bas_ara.text := inttostr(SOgr.ogrno);
  tx_ogr_no_bit_ara.Text := inttostr(SOgr.ogrno);
end;

procedure Tfr_toplu_ogrenci_silme.bt_ogrenci_bul_bas_bitClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  cm_don_bit_ara.Text := SOgr.donem;
  tx_ogr_no_bit_ara.Text := inttostr(SOgr.ogrno);
end;

procedure Tfr_toplu_ogrenci_silme.bt_silClick(Sender: TObject);
var
i:integer;
gun,ay,yil: word;
kod,mesaj: string;
label atla;
begin
  if cm_don_bas_ara.text <> cm_don_bit_ara.text then
  begin
    messagedlg('Kayýt aralýðýnda dönemler farklý!',mtError, [mbOk], 0);
    exit;
  end;
  if (tx_ogr_no_bas_ara.Text = '') or (tx_ogr_no_bit_ara.Text = '')
     or (cm_don_bas_ara.Text = '')or (cm_don_bit_ara.Text = '') then
  begin
    messagedlg('Bilgiler eksik. Kutulara bilgi giriniz.',mtError, [mbOk], 0);
    exit;
  end;
  mesaj:='';
  for i := strtoint(tx_ogr_no_bas_ara.text) to strtoint(tx_ogr_no_bit_ara.text) do
  begin
    tablo_oku.Close;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select donemi,ogr_no from ogrenciler where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.Open;
    if tablo_oku.RecordCount <1 then goto atla;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from kayitbedeli where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from devamsizliklar where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from evrak_durumu where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from geciken_borc_bildirimi where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from ogrenciler where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from rehberlik_notlari where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from sinavsonuc where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('delete from taksitler where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
//paraakisi için
    decodedate(now,yil,ay,gun);
    kod:= inttostr(gun)+inttostr(ay)+copy(inttostr(yil),3,2);
    decodetime(time,ay,gun,yil,ay);
    kod:=kod+inttostr(yil)+copy(inttostr(gun),2,1);
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('update paraakisi set donemi='''+kod+''' where ilgili_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('update gizli set donemi='''+kod+''' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.ExecSQL;
    mesaj:= mesaj+ cm_don_bas_ara.Text+' dönemi '+inttostr(i) +' numaralý'+#13;
    atla:
  end;
  messagedlg(mesaj+'öðreci(ler) silinmiþtir.',mtInformation, [mbOk], 0);
end;

end.
