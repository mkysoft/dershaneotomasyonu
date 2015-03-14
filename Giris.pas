unit Giris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZConnection, DB, ZAbstractRODataset, ZDataset,
  cxControls, cxContainer, cxEdit, cxCheckBox, ExtCtrls, ZAbstractDataset, ZDbcIntfs,
  cxLookAndFeelPainters, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  Tfr_giris = class(TForm)
    chk_yedek: TcxCheckBox;
    tablo_oku: TZQuery;
    bt_giris: TcxButton;
    tx_kullanici_adi: TcxComboBox;
    tx_sifre: TcxTextEdit;
    sc_text: TcxEditStyleController;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PnlAnaBilgisayar: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_girisClick(Sender: TObject);
    procedure tx_sifreKeyPress(Sender: TObject; var Key: Char);
    procedure tx_kullanici_adiKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure PnlAnaBilgisayarClick(Sender: TObject);
  private
    { Private declarations }
    CikisIptal:Boolean;

  public
    { Public declarations }

end;

var
  fr_giris: Tfr_giris;

implementation

uses functionlar, veritabani;
{$R *.dfm}

procedure Tfr_giris.FormShow(Sender: TObject);
var
  i:integer;
  metin:string;
begin
  ana_bilgisayar := reg_oku('Ana Bilgisayar');
  PnlAnaBilgisayar.Caption := ana_bilgisayar;
  if ana_bilgisayar = '' then
    PnlAnaBilgisayarClick(PnlAnaBilgisayar);
  while FileExists(extractfilepath(Application.ExeName)+'temp')=true do
  begin
    deletefile(extractfilepath(Application.ExeName)+'temp');
    sleep(100);
  end;
  for i:=1 to 5 do
  begin
    metin := reg_oku('Son Kullanýcý'+inttostr(i));
    if metin <> '' then
      tx_kullanici_adi.Properties.Items.Add(metin);
  end;
  tx_kullanici_adi.text:=reg_oku('Son Kullanýcý');
end;

procedure Tfr_giris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if veriler.data_dershane.Connected = True then
    Action := caFree
  else
    application.Terminate;
end;

procedure Tfr_giris.bt_girisClick(Sender: TObject);
var
  veri,dosya:tstream;
  i: integer;
  yil, ay, gun:word;
begin
  kullanici_adi := tx_kullanici_adi.Text;
  kullanici_sifre := tx_sifre.Text;
  tablo_oku.close;
  veriler.data_dershane.Database:= 'dershane';
  veriler.data_dershane.User := kullanici_adi;
  veriler.data_dershane.Password := kullanici_sifre;
  veriler.data_dershane.HostName := ana_bilgisayar;
  fr_giris.SendToBack;
  try
    veriler.data_dershane.Connect;
  except
    on E:EZSQLThrowable do
    begin
      fr_giris.SendToBack;
      CikisIptal:=True;
      if pos('Access denied for user',E.Message) > 0 then
        raise Exception.Create('Kullanýcý adýnýz yada þifreniz yanlýþ!');
      if pos('Unknown MySQL server host',E.Message) > 0 then
        raise Exception.Create(ana_bilgisayar + ' isimli ana bilgisayara ulaþýlamýyor!');
      if pos('Can''t connect to MySQL server on',E.Message) > 0 then
        raise Exception.Create(ana_bilgisayar + ' isimli ana bilgisayarda verilere ulaþýlamýyor!');
    end;
  end;
  if kullanici_adi='mkysoft' then
    yetki := 0
  else
  begin
    tablo_oku.Connection := veriler.data_dershane;
    tablo_oku.sql.Clear;
    tablo_oku.SQL.Add('Select yetki from personel where user='+QuotedStr(kullanici_adi));
    tablo_oku.Open;
    yetki:= tablo_oku.Fieldbyname('yetki').AsInteger;
    tablo_oku.Close;
  end;
  if chk_yedek.Checked = true then
    if yetki < 51 then
    begin
      veriler.data_dershane.Disconnect;
      veriler.data_dershane.Database:= 'yedek';
      veriler.data_dershane.Connect;
    end
    else
    begin
      veriler.data_dershane.Disconnect;
      veriler.data_kok.Disconnect;            
      fr_giris.SendToBack;
      tablo_oku.Close;
      veriler.data_kok.Disconnect;
      CikisIptal:=True;      
      raise Exception.Create('Yedeði kullanmaya yetkili deðilsiniz!');
    end;
  fr_giris.SendToBack;
  reg_yaz('Son Kullanýcý',kullanici_adi);
  if tx_kullanici_adi.Properties.Items.IndexOf(kullanici_adi)=-1 then
  begin
    for i:= 5 downto 2 do
      reg_yaz('Son Kullanýcý'+inttostr(i),reg_oku('Son Kullanýcý'+inttostr(i-1)));
    reg_yaz('Son Kullanýcý1',kullanici_adi);
  end;
  tablo_oku.Close;
  tablo_oku.Connection:=veriler.data_dershane;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct donemi from ogrenciler');
  tablo_oku.Open;
  Donemler := TStringList.Create;
  Donemler.Clear;
  decodedate(now(), yil, ay, gun);
  Donemler.Add(inttostr(yil-2) + '-' + inttostr(yil-1));
  Donemler.Add(inttostr(yil-1) + '-' + inttostr(yil));
  Donemler.Add(inttostr(yil) + '-' + inttostr(yil+1));
  Donemler.Add(inttostr(yil+1) + '-' + inttostr(yil+2));
  Donemler.Add(inttostr(yil+2) + '-' + inttostr(yil+3));
  Donemler.Add(inttostr(yil+3) + '-' + inttostr(yil+4));
  while tablo_oku.Eof = false do
  begin
    Donemler.Add(tablo_oku.Fields.Fields[0].Text);
    tablo_oku.next;
  end;
  tablo_oku.Close;
  Donemler.Sort;
  for i := Donemler.Count-1 downto 1 do
    if Donemler.Strings[i] = Donemler.Strings[i-1] then
      Donemler.Delete(i-1);
//Aktif Dönem
  if ay > 6 then
    i := yil
  else
    i := yil-1 ;
  aktifdonem := inttostr(i) + '-' + inttostr(i + 1);
//
  tablo_oku.SQL.Clear;
  tablo_oku.sql.Add('select gizli,versiyon,now() as tarih,yedek_tarih,dershane_mudur,dershane_adi_kisa, dershane_adi_resmi,dershane_adresi,dershane_il,dershane_tel,dershane_faks,dershane_logo from ayarlar');
  tablo_oku.Open;
  yedek_tarih := tablo_oku.fieldbyname('yedek_tarih').AsDateTime;
  Dershane.AdiKisa := tablo_oku.fieldbyname('dershane_adi_kisa').text;
  Dershane.AdiResmi := tablo_oku.fieldbyname('dershane_adi_resmi').text;
  Dershane.Adresi := tablo_oku.fieldbyname('dershane_adresi').text;
  Dershane.Il := tablo_oku.fieldbyname('dershane_il').text;
  Dershane.Tel := tablo_oku.fieldbyname('dershane_tel').text;
  Dershane.Faks := tablo_oku.fieldbyname('dershane_faks').text;
  Dershane.Logo := TBitmap.Create;
  try
    Dershane.Logo.Assign(tablo_oku.fieldbyname('dershane_logo'));
  finally
    Dershane.Logo.FreeImage;
  end;
  Dershane.Mudur := tablo_oku.fieldbyname('dershane_mudur').text;
  if tablo_oku.Fieldbyname('gizli').Text = 'Evet' then
  begin
    gizli := true;
    veriler.tablo_gizli.Open;
  end
  else
    gizli := false;
  if (copy(tablo_oku.Fieldbyname('tarih').Text,1,10)+copy(tablo_oku.Fieldbyname('tarih').Text,12,5)) <> (copy(datetimetostr(now),1,10)+copy(datetimetostr(now),12,5)) then
  begin
    setdatetime(tablo_oku.Fieldbyname('tarih').AsDateTime);
  end;
  if length(versiyon) <> 7 then
    MessageDlg('Programýn versiyon bilgisi okunamýyor. Sisteminizde virus olabilir!', mtError, [mbOK], 0);
  veriler.data_kok.Disconnect;
  veriler.data_kok.HostName:=ana_bilgisayar;
  veriler.data_kok.Connect;
  if (tablo_oku.Fieldbyname('versiyon').Text = '') or (tablo_oku.Fieldbyname('versiyon').Text < versiyon) then
  begin
    tablo_oku.Close;
    tablo_oku.Connection:=veriler.data_kok;
    tablo_oku.sql.Clear;
    tablo_oku.SQL.add('update ayarlar set versiyon='+QuotedStr(versiyon));
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('drop database IF EXISTS program');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('create database program');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('create table program.program(`program` mediumblob, `hlp` mediumblob, `cnt` mediumblob, `tckimlik` mediumblob)');
    tablo_oku.ExecSQL;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select * from program.program');
    tablo_oku.Open;
    CopyFile(pchar(Application.exename),'temp',true);
    tablo_oku.Insert;
    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('program'),bmwrite);
    veri.Seek(0,soFromBeginning);
    dosya:= TFileStream.Create('temp', fmOpenRead);
    veri.CopyFrom(dosya,dosya.Size);
    dosya.free;
    veri.Free;
    deletefile('temp');
//hlp dosyasý
    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('hlp'),bmwrite);
    veri.Seek(0,soFromBeginning);
    dosya:= TFileStream.Create(ExtractFilePath(Application.ExeName)+'DershaneOtomasyonu.hlp', fmOpenRead);
    veri.CopyFrom(dosya,dosya.Size);
    dosya.free;
    veri.Free;
//cnt dosyasý
    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('cnt'),bmwrite);
    veri.Seek(0,soFromBeginning);
    dosya:= TFileStream.Create(ExtractFilePath(Application.ExeName)+'DershaneOtomasyonu.cnt', fmOpenRead);
    veri.CopyFrom(dosya,dosya.Size);
    dosya.free;
    veri.Free;
//tckimlik.dll dosyasý
//    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('tckimlik'),bmwrite);
//    veri.Seek(0,soFromBeginning);
//    dosya:= TFileStream.Create(ExtractFilePath(Application.ExeName)+'TCKimlik.dll', fmOpenRead);
//    veri.CopyFrom(dosya,dosya.Size);
//    dosya.free;
//    veri.Free;
    tablo_oku.Post;
    tablo_oku.Close;
  end
  else if tablo_oku.Fieldbyname('versiyon').Text > versiyon then
  begin
    tablo_oku.close;
    tablo_oku.Connection:=veriler.data_kok;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select * from program.program');
    tablo_oku.Open;
    messagedlg('Programýn eski bir versiyonunu kullanýyordunuz.'#13#10'Programýnýz en son versiyona güncellenecek.'#13#10'Bu iþlem bir kaç dakika sürebilir.'#13#10'Güncelleme iþlemini baþlatmak için Tamam''a basýnýz.', mtInformation ,[mbOK], 0);
    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('program'),bmRead);
    veri.Seek(0,soFromBeginning);
    dosya:= TFileStream.Create(ExtractFilePath(Application.ExeName)+'DershaneOtomasyonuYeni.exe', fmCreate);
    dosya.CopyFrom(veri,veri.Size);
    veri.Free;
    dosya.free;
//hlp dosyasý
    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('hlp'),bmRead);
    veri.Seek(0,soFromBeginning);
    dosya:= TFileStream.Create(ExtractFilePath(Application.ExeName)+'DershaneOtomasyonu.hlp', fmCreate);
    dosya.CopyFrom(veri,veri.Size);
    veri.Free;
    dosya.free;
//cnt dosyasý
    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('cnt'),bmRead);
    veri.Seek(0,soFromBeginning);
    dosya:= TFileStream.Create(ExtractFilePath(Application.ExeName)+'DershaneOtomasyonu.cnt', fmCreate);
    dosya.CopyFrom(veri,veri.Size);
    veri.Free;
    dosya.free;
//TCKimlik.dll dosyasý
//    veri:=tablo_oku.CreateBlobStream(tablo_oku.FieldByName('tckimlik'),bmRead);
//    veri.Seek(0,soFromBeginning);
//    dosya:= TFileStream.Create(ExtractFilePath(Application.ExeName)+'TCKimlik.dll', fmCreate);
//    dosya.CopyFrom(veri,veri.Size);
//    veri.Free;
//    dosya.free;
    tablo_oku.close;
    veriler.data_kok.Disconnect;
    veriler.data_dershane.Disconnect;
    WinExec(pchar(ExtractFilePath(Application.ExeName)+'DershaneOtomasyonuYeni.exe'),0);
    Application.Terminate;
  end;
  tablo_oku.close;
  tablo_oku.Connection := veriler.data_dershane;
  veriler.data_kok.Disconnect;
  fr_giris.Close;
end;

procedure Tfr_giris.tx_sifreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    bt_giris.SetFocus;
    bt_giris.Click;
  end;
end;

procedure Tfr_giris.tx_kullanici_adiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key:=#0;
    tx_sifre.setfocus;
  end;
end;

procedure Tfr_giris.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if CikisIptal=True then
  begin
    CanClose:=false;
    CikisIptal:=False;
    fr_giris.BringToFront;
  end;
end;

procedure Tfr_giris.PnlAnaBilgisayarClick(Sender: TObject);
begin
  fr_giris.SendToBack;
  if InputQuery('Dershane Otomasyonu','Dershane Otomasyonu''nun baðlancaðý ana bilgisayarýn adýný yada IP adresini giriniz:',ana_bilgisayar)= false then
    exit;
  if bkmetin(ana_bilgisayar,0)=bkmetin(bilgisayaradi,0) then
    ana_bilgisayar:='localhost';
  reg_yaz('Ana Bilgisayar', ana_bilgisayar);
  PnlAnaBilgisayar.Caption := ana_bilgisayar;
  fr_giris.FormShow(fr_giris);
end;

end.


