unit ogrenci_kopyala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, DB, ZAbstractRODataset, ZDataset;

type
  Tfr_ogrenci_kopyala = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    cm_don_kaynak: TcxComboBox;
    tx_ogr_no_kaynak: TcxTextEdit;
    bt_ogrenci_bul: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cm_don_hedef: TcxComboBox;
    tx_ogr_no_hedef: TcxTextEdit;
    bt_bos_numaralar: TBitBtn;
    tablo_oku: TZReadOnlyQuery;
    bt_kopyala: TBitBtn;
    procedure bt_ogrenci_bulClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_bos_numaralarClick(Sender: TObject);
    procedure bt_kopyalaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_ogrenci_kopyala: Tfr_ogrenci_kopyala;

implementation
uses functionlar, ogrenci_arama, BosNumaralar,veritabani;
{$R *.dfm}

procedure Tfr_ogrenci_kopyala.bt_ogrenci_bulClick(Sender: TObject);
begin
  application.CreateForm(Tfr_ogrenci_arama,fr_ogrenci_arama);
  if SOgr.Iptal = true then Exit;
  cm_don_kaynak.Text := SOgr.donem;
  tx_ogr_no_kaynak.text := inttostr(SOgr.ogrno);
end;

procedure Tfr_ogrenci_kopyala.FormCreate(Sender: TObject);
begin
  cm_don_kaynak.Properties.Items := Donemler;
  cm_don_hedef.Properties.Items := Donemler;
  cm_don_kaynak.Text := AktifDonem;
  cm_don_hedef.Text := AktifDonem;
end;

procedure Tfr_ogrenci_kopyala.bt_bos_numaralarClick(Sender: TObject);
begin
  application.CreateForm(TFrBosNumaralar,FrBosNumaralar);
  FrBosNumaralar.ShowModal;
  if SOgr.Iptal = true then Exit;
  cm_don_hedef.Text := SOgr.donem;
  tx_ogr_no_hedef.text := inttostr(SOgr.ogrno);
end;

procedure Tfr_ogrenci_kopyala.bt_kopyalaClick(Sender: TObject);
begin
  if (tx_ogr_no_kaynak.Text = '') or (tx_ogr_no_hedef.Text = '')
     or (cm_don_kaynak.Text = '')or (cm_don_hedef.Text = '') then
  begin
    messagedlg('Bilgiler eksik. Kutulara bilgi giriniz.',mtError, [mbOk], 0);
    exit;
  end;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('INSERT ogrenciler (ogr_no,donemi,adi,soyadi,cinsiyeti,resmi,'
  +'tc_kimlik_no,kayit_tarihi,okulu,sinifi,durumu,baba_adi,ana_adi,dogum_yeri,'
  +'dogum_tarihi,ili,ilcesi,mahallesi_koyu,cilt_no,aile_sira_no,sira_no,verildigi_yer,'
  +'verilis_nedeni,kayit_no,verilis_tarihi,veli_kodu,yakinligi) SELECT '
  +tx_ogr_no_hedef.text+' AS ogrno,'''+cm_don_hedef.Text+''' AS donem,adi,soyadi,cinsiyeti,'
  +'resmi,tc_kimlik_no,kayit_tarihi,okulu,sinifi,durumu,baba_adi,ana_adi,'
  +'dogum_yeri,dogum_tarihi,ili,ilcesi,mahallesi_koyu,cilt_no,aile_sira_no,sira_no,'
  +'verildigi_yer,verilis_nedeni,kayit_no,verilis_tarihi,veli_kodu,yakinligi FROM ogrenciler WHERE ogr_no='
  +tx_ogr_no_kaynak.Text+' AND donemi='''+cm_don_kaynak.Text+'''');
  tablo_oku.ExecSQL;
  messagedlg(cm_don_kaynak.text+'  '+tx_ogr_no_kaynak.text+' numaralý öðrenci '+ cm_don_hedef.Text+'  '+tx_ogr_no_hedef.Text+' numaraya kopyalandý.',mtInformation, [mbOk], 0);
end;

procedure Tfr_ogrenci_kopyala.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
