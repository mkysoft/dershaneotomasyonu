unit Yedek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbZBrows, AbZipper, AbBase, AbBrowse, AbUnzper, StdCtrls,
  Buttons, cxControls, cxContainer, cxEdit, cxLabel, DB,
  ZAbstractRODataset, ZDataset, AbMeter;

type
  TFrYedek = class(TForm)
    zip_ac: TAbUnZipper;
    zip_kapa: TAbZipper;
    dg_ac: TOpenDialog;
    dg_kapa: TSaveDialog;
    cxLabel8: TcxLabel;
    GroupBox1: TGroupBox;
    bt_yedekle_dershane: TBitBtn;
    bt_yedekle_mysql: TBitBtn;
    GroupBox2: TGroupBox;
    bt_geri_dershane: TBitBtn;
    GroupBox3: TGroupBox;
    bt_geri_mysql: TBitBtn;
    bt_yedek_geri_dershane: TBitBtn;
    tablo_oku: TZReadOnlyQuery;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    AMSikistirma: TAbMeter;
    Label3: TLabel;
    AMTablo: TAbMeter;
    AMLTablo: TAbVCLMeterLink;
    AMLSikistirma: TAbVCLMeterLink;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_geri_dershaneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_yedekle_mysqlClick(Sender: TObject);
    procedure bt_yedekle_dershaneClick(Sender: TObject);
    procedure dg_kapaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure bt_geri_mysqlClick(Sender: TObject);
    procedure bt_yedek_geri_dershaneClick(Sender: TObject);
    procedure zip_kapaArchiveItemProgress(Sender: TObject;
      Item: TAbArchiveItem; Progress: Byte; var Abort: Boolean);
  private
    dosyasec:boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrYedek: TFrYedek;

implementation
uses functionlar,veritabani;
{$R *.dfm}

procedure TFrYedek.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  veriler.data_kok.Disconnect;
  Action := caFree;
end;

procedure TFrYedek.bt_geri_dershaneClick(Sender: TObject);
var
dosyasay: integer;
sonuc : TSearchRec;
tablolar: string;
begin
  if yetki > 50 then
  begin
    messagedlg(kullanici_adi+' kullanýcýsý bu iþlemi yapamaz.', mtInformation ,[mbOK], 0);
    exit;
  end;
  dosyasec:=false;
  dg_ac.Filter:='Sýkýþtýrýlmýþ dershane yedekleri (*dershane.zip)|*dershane.zip|Sýkýþtýrýlýlmýþ dosyalar (*.zip)|*.zip';
  dg_ac.Execute;
  if dosyasec=false then exit;
  try
    mkdir(extractfilepath(application.exename)+'\Yedek');
  except
    dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
    while dosyasay = 0 do
    begin
      deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
      dosyasay := FindNext(sonuc);
    end;
    FindClose(sonuc);
  end;
  zip_ac.FileName := dg_ac.FileName;
  zip_ac.BaseDirectory := extractfilepath(application.exename)+'\Yedek';
  zip_ac.ExtractFiles( '*.*' );
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.MYD', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    tablolar:= tablolar+copy(extractFileName(sonuc.Name),1,length(extractFileName(sonuc.Name))-4)+',';
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  tablolar := copy(tablolar,1,length(tablolar)-1);
  tablo_oku.close;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('DROP DATABASE IF EXISTS dershane');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('create database dershane');
  tablo_oku.ExecSQL;
  tablo_oku.close;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('use dershane');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('restore table '+tablolar+' from '''+stringreplace(extractfilepath(application.exename),'\','/',[rfReplaceAll])+'/Yedek''');
  tablo_oku.ExecSQL;
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  rmdir(extractfilepath(application.exename)+'\Yedek');
  messagedlg('dershane için geri yükleme iþlemi baþarýyla tamamlandý.', mtInformation ,[mbOK], 0);
end;

procedure TFrYedek.FormCreate(Sender: TObject);
begin
  if ana_bilgisayar='localhost' then
  begin
   veriler.data_kok.HostName:=ana_bilgisayar;
   veriler.data_kok.Connect;
   exit;
  end;
  if bilgisayaradi<>ana_bilgisayar then
  begin
    messagedlg('Yedek alma ve geri yükleme iþlemi sadece ana makineden yapýlabilir!', mtError ,[mbOK], 0);
    FrYedek.Close;
  end;
end;

procedure TFrYedek.bt_yedekle_mysqlClick(Sender: TObject);
var
  dosyasay: integer;
  sonuc : TSearchRec;
  tablolar: string;
begin
  dg_kapa.FileName := copy(DateToStr(now),1,2)+'-'+copy(DateToStr(now),4,2)+'-'+copy(DateToStr(now),7,4)+'_'+copy(timeToStr(now),1,2)+'-'+copy(timeToStr(now),4,2)+'-'+copy(timeToStr(now),7,4)+'_mysql';
  dosyasec:=false;
  dg_kapa.Execute;
  if dosyasec=false then exit;
  try
    mkdir(extractfilepath(application.exename)+'\Yedek');
  except
    dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
    while dosyasay = 0 do
    begin
      deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
      dosyasay := FindNext(sonuc);
    end;
    FindClose(sonuc);
  end;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('show tables FROM mysql');
  tablo_oku.Open;
  tablolar:=  'mysql.'+tablo_oku.Fields[0].Text;
  tablo_oku.Next;
  while tablo_oku.Eof = false do
  begin
    tablolar:=tablolar+',mysql.'+tablo_oku.Fields[0].Text;
    tablo_oku.Next;
  end;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('backup table '+tablolar+' to '''+stringreplace(extractfilepath(application.exename),'\','/',[rfReplaceAll])+'/Yedek''');
  tablo_oku.ExecSQL;
  zip_kapa.FileName := dg_kapa.FileName;
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    zip_kapa.AddFiles(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name,0);
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  rmdir(extractfilepath(application.exename)+'\Yedek');
  messagedlg('mysql için yedek alma iþlemi baþarýyla tamamlandý.', mtInformation ,[mbOK], 0);
end;

procedure TFrYedek.bt_yedekle_dershaneClick(Sender: TObject);
var
  dosyasay: integer;
  sonuc : TSearchRec;
  tablolar: string;
begin
  dg_kapa.FileName := copy(DateToStr(now),1,2)+'-'+copy(DateToStr(now),4,2)+'-'+copy(DateToStr(now),7,4)+'_'+copy(timeToStr(now),1,2)+'-'+copy(timeToStr(now),4,2)+'-'+copy(timeToStr(now),7,4)+'_dershane';
  dosyasec := false;
  dg_kapa.Execute;
  if dosyasec=false then exit;
  try
    mkdir(extractfilepath(application.exename)+'\Yedek');
  except
    dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
    while dosyasay = 0 do
    begin
      deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
      dosyasay := FindNext(sonuc);
    end;
    FindClose(sonuc);
  end;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('show tables FROM dershane');
  tablo_oku.Open;
  tablolar:=  tablo_oku.Fields[0].Text;
  tablo_oku.Next;
  while tablo_oku.Eof = false do
  begin
    tablolar:=tablolar+','+tablo_oku.Fields[0].Text;
    tablo_oku.Next;
  end;
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('backup table '+tablolar+' to '''+stringreplace(extractfilepath(application.exename),'\','/',[rfReplaceAll])+'/Yedek''');
  tablo_oku.ExecSQL;
  zip_kapa.FileName := dg_kapa.FileName;
//  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
//  while dosyasay = 0 do
//  begin
//    zip_kapa.AddFiles(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name,0);
//    dosyasay := FindNext(sonuc);
//  end;
//  FindClose(sonuc);
  zip_kapa.AddFiles(extractfilepath(application.exename)+'\Yedek\*.*',0);
//Geçici dosyalarý sil
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  rmdir(extractfilepath(application.exename)+'\Yedek');
//--
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('update ayarlar set yedek_tarih="'+mtarih(now())+'"');
  tablo_oku.ExecSQL;
  zip_kapa.CloseArchive;
  messagedlg('Dershane için yedek alma iþlemi baþarýyla tamamlandý.', mtInformation ,[mbOK], 0);
end;

procedure TFrYedek.dg_kapaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  dosyasec:=true;
end;

procedure TFrYedek.bt_geri_mysqlClick(Sender: TObject);
var
dosyasay: integer;
sonuc : TSearchRec;
tablolar: string;
begin
  if yetki > 50 then
  begin
    messagedlg(kullanici_adi+' kullanýcýsý bu iþlemi yapamaz.', mtInformation ,[mbOK], 0);
    exit;
  end;
  dosyasec:=false;
  dg_ac.Filter:='Sýkýþtýrýlmýþ mysql yedekleri (*mysql.zip)|*mysql.zip|Sýkýþtýrýlýlmýþ dosyalar (*.zip)|*.zip';
  dg_ac.Execute;
  if dosyasec=false then exit;
  try
    mkdir(extractfilepath(application.exename)+'\Yedek');
  except
    dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
    while dosyasay = 0 do
    begin
      deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
      dosyasay := FindNext(sonuc);
    end;
    FindClose(sonuc);
  end;
  zip_ac.FileName := dg_ac.FileName;
  zip_ac.BaseDirectory := extractfilepath(application.exename)+'\Yedek';
  zip_ac.ExtractFiles( '*.*' );
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.MYD', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    tablolar:= tablolar+copy(extractFileName(sonuc.Name),1,length(extractFileName(sonuc.Name))-4)+',';
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  tablolar := copy(tablolar,1,length(tablolar)-1);
  tablo_oku.close;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('DROP DATABASE IF EXISTS mysql');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('create database mysql');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('use mysql');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('restore table '+tablolar+' from '''+stringreplace(extractfilepath(application.exename),'\','/',[rfReplaceAll])+'/Yedek''');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('use dershane');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('flush privileges');
  tablo_oku.ExecSQL;
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  rmdir(extractfilepath(application.exename)+'\Yedek');
  messagedlg('mysql için geri yükleme iþlemi baþarýyla tamamlandý.', mtInformation ,[mbOK], 0);
end;

procedure TFrYedek.bt_yedek_geri_dershaneClick(Sender: TObject);
var
dosyasay: integer;
sonuc : TSearchRec;
tablolar: widestring;
begin
  if yetki > 50 then
  begin
    messagedlg(kullanici_adi+' kullanýcýsý bu iþlemi yapamaz.', mtInformation ,[mbOK], 0);
    exit;
  end;
  dosyasec:=false;
  dg_ac.Filter:='Sýkýþtýrýlmýþ dershane yedekleri (*dershane.zip)|*dershane.zip|Sýkýþtýrýlýlmýþ dosyalar (*.zip)|*.zip';
  dg_ac.Execute;
  if dosyasec=false then exit;
  try
    mkdir(extractfilepath(application.exename)+'\Yedek');
  except
    dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
    while dosyasay = 0 do
    begin
      deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
      dosyasay := FindNext(sonuc);
    end;
    FindClose(sonuc);
  end;
  zip_ac.FileName := dg_ac.FileName;
  zip_ac.BaseDirectory := extractfilepath(application.exename)+'\Yedek';
  zip_ac.ExtractFiles( '*.*' );
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.MYD', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    tablolar:= tablolar+'yedek.'+copy(extractFileName(sonuc.Name),1,length(extractFileName(sonuc.Name))-4)+',';
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  tablolar := copy(tablolar,1,length(tablolar)-1);
  tablo_oku.close;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('DROP DATABASE IF EXISTS yedek');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('create database yedek');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('use yedek');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('restore table '+tablolar+' from '''+stringreplace(extractfilepath(application.exename),'\','/',[rfReplaceAll])+'/Yedek''');
  tablo_oku.ExecSQL;
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('use dershane');
  tablo_oku.ExecSQL;
  dosyasay := FindFirst(extractfilepath(application.exename)+'\Yedek\*.*', faAnyFile - faDirectory, sonuc);
  while dosyasay = 0 do
  begin
    deletefile(extractfilepath(application.exename)+'\Yedek\'+sonuc.Name);
    dosyasay := FindNext(sonuc);
  end;
  FindClose(sonuc);
  rmdir(extractfilepath(application.exename)+'\Yedek');
  messagedlg('dershane yedeðinin yedek olarak yüklenmesi iþlemi baþarýyla tamamlandý.', mtInformation ,[mbOK], 0);
end;

end.



