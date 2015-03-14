unit optikogrvar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ZAbstractRODataset, ZDataset;

type
  Tfr_optikogrvar = class(TForm)
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lb_ogrno: TLabel;
    lb_adi: TLabel;
    lb_soyadi: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lb_kogrno: TLabel;
    lb_kadi: TLabel;
    lb_ksoyadi: TLabel;
    bt_degistir: TBitBtn;
    bt_yanlis: TBitBtn;
    tablo_oku: TZReadOnlyQuery;
    Label7: TLabel;
    lb_ksinifi: TLabel;
    bt_adsoyaddegistir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bt_degistirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_yanlisClick(Sender: TObject);
    procedure bt_adsoyaddegistirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_optikogrvar: Tfr_optikogrvar;
var
kapat:boolean;
implementation
uses optikaktarim, optikogrsec,veritabani;
{$R *.dfm}

procedure Tfr_optikogrvar.FormCreate(Sender: TObject);
begin
 lb_ogrno.caption := inttostr(oogrno);
 lb_adi.caption := oadi;
 lb_soyadi.caption := osoyadi;
 lb_kogrno.caption := inttostr(ogrno2);
 lb_kadi.caption := adi2;
 lb_ksoyadi.caption := soyadi2;
 lb_ksinifi.caption := sinifi2;
 fr_optikogrvar.showmodal;
end;

procedure Tfr_optikogrvar.bt_degistirClick(Sender: TObject);
var
adi3,soyadi3,sinifi3,sql: string;
ogrno3:integer;
begin
 ogrno3:=ogrno;
 adi3:=adi;
 soyadi3:=soyadi;
 sinifi3:=sinifi;
 application.CreateForm(Tfr_optikogrsec,fr_optikogrsec);
 tablo_oku.SQL.Clear;
 sql:='update sinavsonuc set ogr_no='+inttostr(ogrno)+',adi='+adi+',soyadi='+soyadi+',sinifi='+sinifi
  +' where sinav_no='+inttostr(SinavNo)+' and ogr_no='+inttostr(ogrno2)+' and adi='+adi2+' and soyadi='+soyadi2+' and sinifi='+sinifi2;
 tablo_oku.sql.add(sql);
 tablo_oku.execsql;
 ogrno:=ogrno3;
 adi:=adi3;
 soyadi:=soyadi3;
 sinifi:=sinifi3;
 kapat:=true;
 close;
end;

procedure Tfr_optikogrvar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 canclose:=kapat;
end;

procedure Tfr_optikogrvar.bt_yanlisClick(Sender: TObject);
begin
 application.CreateForm(Tfr_optikogrsec,fr_optikogrsec);
 if (sinifi='Dýþarýdan') and (ogrno=3) then
 begin
  adi:=oadi;
  soyadi:=osoyadi;
 end;
 kapat:=true;
 close;
end;

procedure Tfr_optikogrvar.bt_adsoyaddegistirClick(Sender: TObject);
begin
 adi:=inputbox('Aktarýlacak Öðrencinin Adý','Aktarýlacak öðrencinin yeni adýný giriniz:',adi);
 soyadi:=inputbox('Aktarýlacak Öðrencinin Soyadý','Aktarýlacak öðrencinin yeni soyadýný giriniz:',soyadi);
 kapat:=true;
 close;
end;

procedure Tfr_optikogrvar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=cafree;
end;

end.
