unit SiniflarArasiAtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxControls, cxContainer,
  cxEdit, cxRadioGroup, StdCtrls, cxListBox, cxDBEdit, DBCtrls, cxLabel,
  Buttons,StrUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFrSiniflarArasiAtama = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    tablo_oku: TZReadOnlyQuery;
    ls_kaynak_siniflar: TcxListBox;
    ls_hedef_siniflar: TcxListBox;
    cxLabel8: TcxLabel;
    bt_ata: TBitBtn;
    tablo_guncelle: TZReadOnlyQuery;
    Label15: TLabel;
    tx_donemi: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_ataClick(Sender: TObject);
    procedure tx_donemiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSiniflarArasiAtama: TFrSiniflarArasiAtama;

implementation
uses veritabani, functionlar;
{$R *.dfm}

procedure TFrSiniflarArasiAtama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrSiniflarArasiAtama.FormCreate(Sender: TObject);
begin
  tx_donemi.Properties.Items := Donemler;
  tx_donemi.Text := AktifDonem;
end;

procedure TFrSiniflarArasiAtama.bt_ataClick(Sender: TObject);
var
i,j,k,l,m: integer;
sql: string;
label cikis;
begin
  if ls_kaynak_siniflar.SelCount < 1 then
  begin
    messagedlg('Kaynak sýnýflar seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  if ls_hedef_siniflar.SelCount < 1 then
  begin
    messagedlg('Hedef sýnýflar seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  if messagedlg('Sýnýf atamalarý gerçekleþtirilecek. Devam etmek istiyor musunuz!',mtConfirmation,[mbYes,mbNo],0)<>mrYes then Exit;;
  sql := 'SELECT donemi,ogr_no FROM ogrenciler WHERE sinifi in (';
  for i:= 0 to ls_kaynak_siniflar.Items.Count-1 do
    if ls_kaynak_siniflar.Selected[i] = true then sql:= sql+ ''''+ls_kaynak_siniflar.Items.Strings[i]+''',';
  sql := LeftStr(sql,length(sql)-1);
  sql := sql+') and donemi='''+tx_donemi.Text+''' order by ogr_no';
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add(sql);
  tablo_oku.Open;
  m:=0;
  l:=0;
  for i := 0 to ls_hedef_siniflar.Items.Count-1 do
    if ls_hedef_siniflar.Selected[i] = true then
    begin
      if int((tablo_oku.RecordCount-m)/(ls_hedef_siniflar.SelCount-l))=(tablo_oku.RecordCount-m)/(ls_hedef_siniflar.SelCount-l) then
        k := trunc((tablo_oku.RecordCount-m)/(ls_hedef_siniflar.SelCount-l))
      else
        k := trunc((tablo_oku.RecordCount-m)/(ls_hedef_siniflar.SelCount-l))+1;
      for j:=1 to k do
      begin
        tablo_guncelle.SQL.Clear;
        tablo_guncelle.SQL.Add('update ogrenciler set sinifi='''+ls_hedef_siniflar.Items.Strings[i]+''' where donemi='''+tablo_oku.fieldbyname('donemi').Text+''' and ogr_no='+tablo_oku.fieldbyname('ogr_no').Text);
        tablo_guncelle.ExecSQL;
        tablo_oku.Next;
        if tablo_oku.Eof = true then goto cikis;
        m:=m+1;
      end;
      l := l+1;
    end;
cikis:
  messagedlg('Atama iþlemi baþarýyla tamamlandý.',mtInformation,[mbOK],0);
end;

procedure TFrSiniflarArasiAtama.tx_donemiClick(Sender: TObject);
begin
  FormShow(FrSiniflarArasiAtama);
end;

procedure TFrSiniflarArasiAtama.FormShow(Sender: TObject);
begin
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SELECT distinct sinifi FROM ogrenciler where donemi='''+tx_donemi.Text+''' ORDER BY sinifi');
  tablo_oku.Open;
  ls_kaynak_siniflar.Items.Clear;
  while tablo_oku.Eof = false do
  begin
    ls_kaynak_siniflar.Items.Add(tablo_oku.fieldbyname('sinifi').Text);
    tablo_oku.Next;
  end;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('SELECT sinif FROM siniflar WHERE donem=''' + tx_donemi.Text + ''' ORDER BY sinif');
  tablo_oku.Open;
  ls_hedef_siniflar.Items.Clear;
  while tablo_oku.Eof = false do
  begin
    ls_hedef_siniflar.Items.Add(tablo_oku.fieldbyname('sinif').Text);
    tablo_oku.Next;
  end;
  tablo_oku.Close;
end;

end.
