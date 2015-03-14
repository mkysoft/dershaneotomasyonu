unit OgrenciNumaraDegistir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Buttons, cxLabel, DB, ZAbstractRODataset,
  ZDataset, cxCheckBox;

type
  TFrOgrenciNumaraDegistir = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    cm_don_bas_ara: TcxComboBox;
    cm_don_bit_ara: TcxComboBox;
    cm_don_hedef: TcxComboBox;
    tx_ogr_no_bas_ara: TcxTextEdit;
    tx_ogr_no_bit_ara: TcxTextEdit;
    tx_ogr_no_hedef: TcxTextEdit;
    bt_ogrenci_bul_bas: TBitBtn;
    bt_ogrenci_bul_bas_bit: TBitBtn;
    bt_bos_ogr_no_numaralar: TBitBtn;
    bt_degistir: TBitBtn;
    tablo_oku: TZReadOnlyQuery;
    cxLabel8: TcxLabel;
    CkbDonemDegistir: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_ogrenci_bul_basClick(Sender: TObject);
    procedure bt_ogrenci_bul_bas_bitClick(Sender: TObject);
    procedure bt_bos_ogr_no_numaralarClick(Sender: TObject);
    procedure bt_degistirClick(Sender: TObject);
    procedure CkbDonemDegistirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrOgrenciNumaraDegistir: TFrOgrenciNumaraDegistir;

implementation

uses functionlar,ogrenci_arama, BosNumaralar,veritabani;
{$R *.dfm}

procedure TFrOgrenciNumaraDegistir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrOgrenciNumaraDegistir.FormCreate(Sender: TObject);
begin
  cm_don_bas_ara.Properties.Items := Donemler;
  cm_don_bit_ara.Properties.Items := Donemler;
  cm_don_hedef.Properties.Items := Donemler;
  cm_don_bas_ara.Text := AktifDonem;
  cm_don_bit_ara.Text := AktifDonem;
  cm_don_hedef.Text := AktifDonem;
end;

procedure TFrOgrenciNumaraDegistir.bt_ogrenci_bul_basClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  cm_don_bas_ara.Text := SOgr.donem;
  cm_don_bit_ara.Text := SOgr.donem;
  tx_ogr_no_bas_ara.text := inttostr(SOgr.ogrno);
  tx_ogr_no_bit_ara.Text := inttostr(SOgr.ogrno);
end;

procedure TFrOgrenciNumaraDegistir.bt_ogrenci_bul_bas_bitClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  cm_don_bit_ara.Text := SOgr.donem;
  tx_ogr_no_bit_ara.Text := inttostr(SOgr.ogrno);
end;

procedure TFrOgrenciNumaraDegistir.bt_bos_ogr_no_numaralarClick(Sender: TObject);
begin
  application.CreateForm(TFrBosNumaralar,FrBosNumaralar);
  FrBosNumaralar.ShowModal;
  if SOgr.Iptal = true then Exit;
  cm_don_hedef.Text := SOgr.donem;
  tx_ogr_no_hedef.Text := inttostr(SOgr.ogrno);
end;

procedure TFrOgrenciNumaraDegistir.bt_degistirClick(Sender: TObject);
var
  i,hedefogr: integer;
  mesaj: string;
  label kontrol,atla;
begin
  if cm_don_bas_ara.text <> cm_don_bit_ara.text then
  begin
    messagedlg('Kayýt aralýðýnda dönemler farklý!',mtError, [mbOk], 0);
    exit;
  end;
  if (tx_ogr_no_bas_ara.Text = '') or (tx_ogr_no_bit_ara.Text = '') or ((tx_ogr_no_hedef.Text = '') and (CkbDonemDegistir.Checked = false))
     or (cm_don_bas_ara.Text = '')or (cm_don_bit_ara.Text = '') or (cm_don_hedef.Text = '') then
  begin
    messagedlg('Bilgiler eksik. Kutulara bilgi giriniz.',mtError, [mbOk], 0);
    exit;
  end;
  mesaj:='';
  hedefogr := 0;
  if CkbDonemDegistir.Checked = false then
    hedefogr := strtoint(tx_ogr_no_hedef.Text);
  for i := strtoint(tx_ogr_no_bas_ara.text) to strtoint(tx_ogr_no_bit_ara.text) do
  begin
    kontrol:
    if CkbDonemDegistir.Checked then hedefogr := i;
    tablo_oku.Close;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select donemi,ogr_no from ogrenciler where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
    tablo_oku.Open;
    if tablo_oku.RecordCount <1 then goto atla;
    tablo_oku.Close;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select donemi,ogr_no from ogrenciler where ogr_no='+inttostr(hedefogr)+' and donemi='''+cm_don_hedef.Text+'''');
    tablo_oku.Open;
    if tablo_oku.RecordCount < 1 then
    begin
// kayitbedeli
      tablo_oku.Close;
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update kayitbedeli set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// ykayitbedeli
      tablo_oku.Close;
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update ykayitbedeli set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// devamsizliklar
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update devamsizliklar set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// evrak_durumu
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update evrak_durumu set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// gizli
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update gizli set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// geciken_borc_bildirimi
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update geciken_borc_bildirimi set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// ygeciken_borc_bildirimi
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update ygeciken_borc_bildirimi set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// ogrenciler
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update ogrenciler set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// paraakisi
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update paraakisi set donemi='''+cm_don_hedef.Text+''', ilgili_no='+inttostr(hedefogr)+' where ilgili_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// rehberlik_notlari
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update rehberlik_notlari set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// sinavlar
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update sinavsonuc set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
// taksitler
      tablo_oku.SQL.Clear;
      tablo_oku.SQL.Add('update taksitler set donemi='''+cm_don_hedef.Text+''', ogr_no='+inttostr(hedefogr)+' where ogr_no='+inttostr(i)+' and donemi='''+cm_don_bas_ara.Text+'''');
      tablo_oku.ExecSQL;
      mesaj:= mesaj+ cm_don_bas_ara.Text+' dönemi '+inttostr(i) +' numaralý öðrenci '+cm_don_hedef.Text+' dönemi '+inttostr(hedefogr)+' numaraya'+#13
    end
    else
    begin
      hedefogr:=hedefogr+1;
      if hedefogr >9999 then
      begin
        messagedlg('Öðrenci aralýðý aþýldý. Öðrenci numarasý 9999'' dan büyük olamaz!',mtError, [mbOk], 0);
        exit;
      end;
      goto kontrol;
    end;
  atla:
  end;
  messagedlg(mesaj+'aktarýldý.',mtInformation, [mbOk], 0);
end;

procedure TFrOgrenciNumaraDegistir.CkbDonemDegistirClick(Sender: TObject);
begin
  if CkbDonemDegistir.Checked then
    tx_ogr_no_hedef.Enabled := false
  else
    tx_ogr_no_hedef.Enabled := true;
end;

end.
