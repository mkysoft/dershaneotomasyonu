unit un_kullanicilar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxListBox, DBCtrls, StdCtrls, Buttons,
  ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxRadioGroup, ZAbstractDataset, cxGroupBox, cxLookAndFeelPainters,
  cxButtons;

type
  Tfr_kullanicilar = class(TForm)
    ara_kullanicilar: TDataSource;
    GroupBox1: TGroupBox;
    tablo_oku: TZReadOnlyQuery;
    GroupBox2: TGroupBox;
    tx_kullanici_adi: TcxTextEdit;
    tx_sifre: TcxMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    kullanicilar: TcxGridDBTableView;
    gr_kullanici1: TcxGridLevel;
    gr_kullanici: TcxGrid;
    Panel1: TPanel;
    rb_yetki: TcxRadioGroup;
    tablo_kullanicilar: TZQuery;
    tablo_kullanicilaruser: TStringField;
    tablo_kullanicilaryetki: TIntegerField;
    tablo_kullanicilarseviye: TStringField;
    tablo_kullanicilarpersonel_kodu: TIntegerField;
    kullanicilarpersonel_kodu: TcxGridDBColumn;
    kullanicilaruser: TcxGridDBColumn;
    kullanicilarseviye: TcxGridDBColumn;
    tablo_kullanicilaradisoyadi: TStringField;
    kullanicilaradisoyadi: TcxGridDBColumn;
    bt_ekle: TcxButton;
    bt_sil: TcxButton;
    bt_sifresini_degistir: TcxButton;
    bt_yetkileri_ata: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_sifresini_degistirClick(Sender: TObject);
    procedure bt_silClick(Sender: TObject);
    procedure bt_ekleClick(Sender: TObject);
    procedure yetkilendir(kullanici:string; seviye:string);
    procedure bt_yetkileri_ataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_kullanicilar: Tfr_kullanicilar;

implementation
uses veritabani, un_personel_bul,functionlar;
{$R *.dfm}

procedure Tfr_kullanicilar.yetkilendir(kullanici:string; seviye:string);
var
  fonksiyon:array of string;
  i:integer;
begin
  if (seviye = 'Müdür') or (seviye = 'Muhasebe') then
  begin
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant all privileges on *.* to '+kullanici+'@''%'' with grant option');
    tablo_oku.ExecSQL;
    exit;
  end;
//view kullanma yetkisi
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('grant create view,show view,create temporary tables,drop,lock tables on dershane.* to '+kullanici+'@''%''');
  tablo_oku.ExecSQL;
//function yetkileri
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('show function status where db = ''dershane''');
  tablo_oku.open;
  setlength(fonksiyon,tablo_oku.RecordCount);
  for i:=0 to tablo_oku.RecordCount-1 do
  begin
    fonksiyon[i]:=tablo_oku.fieldbyname('Name').Text;
    tablo_oku.Next;
  end;
  tablo_oku.Close;
  for i:=0 to length(fonksiyon)-1 do
  begin
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant execute on function dershane.'+fonksiyon[i]+' to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
  end;
  if seviye='Sekreter' then
  begin
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update on dershane.ayarlar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.ders_programlari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.devamsizliklar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.evrak_durumu to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.iletisim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.mesajlar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.geciken_borc_bildirimi to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.gerekli_evraklar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.gizli to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.gorunum to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.gruplar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,insert on dershane.kayitbedeli to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert on dershane.ogrenciler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,insert on dershane.paraakisi to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert on dershane.personel to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.rehberlik_notlari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.sinavformulleri to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavsonuc to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavtanim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.siniflar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sorgular to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sutun_basliklari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,insert on dershane.taksitler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.veliler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavkonutanim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavkonu to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
  end;
  if seviye='Rehberlik' then
  begin
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.ayarlar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.ders_programlari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.devamsizliklar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.iletisim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.mesajlar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.evrak_durumu to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.gerekli_evraklar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.gizli to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.gorunum to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.gruplar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update on dershane.ogrenciler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.personel to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.rehberlik_notlari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavformulleri to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavsonuc to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavtanim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.siniflar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sorgular to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.sutun_basliklari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.veliler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavkonutanim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavkonu to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
  end;
  if seviye='Öðretmen' then
  begin
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.ayarlar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.ders_programlari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.devamsizliklar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.iletisim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.mesajlar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.evrak_durumu to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.gerekli_evraklar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.gizli to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.gorunum to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.gruplar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.ogrenciler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.personel to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.rehberlik_notlari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.sinavformulleri to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.sinavsonuc to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.sinavtanim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.siniflar to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.sorgular to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select on dershane.sutun_basliklari to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.veliler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert on dershane.veliler to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavkonutanim to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('grant select,update,insert,delete on dershane.sinavkonu to '+kullanici+'@''%''');
    tablo_oku.ExecSQL;
  end;
{
/'ayarlar' /'ders_programlari' /'devamsizliklar' /'iletisim'
/'mesajlar' /'evrak_durumu'
/'geciken_borc_bildirimi' /'gerekli_evraklar' /'gizli' /'gorunum'
/'gruplar' /'kayitbedeli' /'maas' /'ogrenciler' /'paraakisi'
/'personel' /'rehberlik_notlari' /'sinavformulleri'
/'sinavsonuc' /'sinavtanim' /'siniflar' /'sorgular'
/'sutun_basliklari' /'taksitler' /'veliler'
}
end;

procedure Tfr_kullanicilar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfr_kullanicilar.FormCreate(Sender: TObject);
begin
  tablo_kullanicilar.Open;
end;

procedure Tfr_kullanicilar.bt_sifresini_degistirClick(Sender: TObject);
var
sifre: string;
begin
  if kullanicilar.Controller.SelectedRowCount <> 1 then
  begin
    MessageDlg('Bir kullanýcý seçmelisiniz!', mtError, [mbOK], 0);
    exit;
  end;
  sifre := inputbox('Þifresini Deðiþtir',tablo_kullanicilaruser.Text+' kullanýcýsýnýn yeni þifresini giriniz','');
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SET password for '''+ tablo_kullanicilaruser.Text +'''=password('''+sifre+''')');
  tablo_oku.ExecSQL;
  tablo_oku.Close;
end;

procedure Tfr_kullanicilar.bt_silClick(Sender: TObject);
begin
  if kullanicilar.Controller.SelectedRowCount < 1 then
  begin
    messagedlg('Silicenek kullanýcý seçilmemiþ!',mtError, [mbOk], 0);
    exit;
  end;
  if (MessageDlg(tablo_kullanicilaradisoyadi.Text +' kullanýcýsýný silmek istediðinizden emin misiniz?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('drop user '''+ tablo_kullanicilaruser.Text+'''@''%''');
  tablo_oku.ExecSQL;
  tablo_oku.Close;
  tablo_kullanicilar.Edit;
  tablo_kullanicilar.FieldByName('user').Clear;
  tablo_kullanicilar.FieldByName('yetki').Clear;
  tablo_kullanicilar.FieldByName('seviye').Clear;
  tablo_kullanicilar.Post;
  tablo_kullanicilar.Refresh;
end;

procedure Tfr_kullanicilar.bt_ekleClick(Sender: TObject);
var
  i:integer;
begin
//kullancý adý düzgün karakter içermiyor olabilir.
  for i:=1 to length(tx_kullanici_adi.Text) do
  begin
    if pos(tx_kullanici_adi.Text[i],'abcdefghijklmnopqrstuvywzABCDEFGHIJKLMNOPQRSTUVYWZ0123456789')<1 then
    begin
      messagedlg('Kullanýcý adý olmamasý gereken karakterler içeriyor. Latin alfabesini kullanýnýz.',mtError, [mbOk], 0);
      exit;
    end;
  end;
  application.CreateForm(Tfr_personel_bul,fr_personel_bul);
  if SVeli.Iptal = true then Exit;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('create user '+tx_kullanici_adi.Text+'@''%'' identified by '''+tx_sifre.Text+'''');
  tablo_oku.ExecSQL;
  yetkilendir(tx_kullanici_adi.Text,rb_yetki.Properties.Items.Items[rb_yetki.itemindex].Caption);
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('update personel set user='''+tx_kullanici_adi.Text+''',yetki='+inttostr(rb_yetki.Properties.Items.Items[rb_yetki.itemindex].Value)+',seviye='''+rb_yetki.Properties.Items.Items[rb_yetki.itemindex].Caption+''' where personel_kodu='+inttostr(SVeli.VeliKodu));
  tablo_oku.ExecSQL;
  tablo_kullanicilar.Refresh;
end;

procedure Tfr_kullanicilar.bt_yetkileri_ataClick(Sender: TObject);
begin
  if kullanicilar.Controller.SelectedRowCount < 1 then
  begin
    messagedlg('Yetkileri yeniden atanacak kullanýcý seçilmemiþ!',mtError, [mbOk], 0);
    exit;
  end;
//  tablo_oku.SQL.Clear;
//  tablo_oku.SQL.Add('revoke all privileges on *.* from '+tablo_kullanicilar.fieldbyname('user').Text+'@''%''');
//  tablo_oku.ExecSQL;
  yetkilendir(tablo_kullanicilar.fieldbyname('user').Text,tablo_kullanicilar.fieldbyname('seviye').Text);
end;

end.
