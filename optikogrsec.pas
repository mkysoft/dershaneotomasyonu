unit optikogrsec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, Buttons,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls;

type
  Tfr_optikogrsec = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lb_ogrno: TLabel;
    lb_adi: TLabel;
    lb_soyadi: TLabel;
    GroupBox2: TGroupBox;
    ogrenciler: TcxGridDBTableView;
    gr_ogrLevel1: TcxGridLevel;
    gr_ogr: TcxGrid;
    ara_ogr: TDataSource;
    ogrencilerdonemi: TcxGridDBColumn;
    ogrencilerogr_no: TcxGridDBColumn;
    ogrencileradsoyad: TcxGridDBColumn;
    ogrencilersinifi: TcxGridDBColumn;
    bt_disardan: TBitBtn;
    bt_secili: TBitBtn;
    bt_iptal: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bt_disardanClick(Sender: TObject);
    procedure bt_seciliClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ogrencilerDblClick(Sender: TObject);
    procedure ogrencilerKeyPress(Sender: TObject; var Key: Char);
    procedure bt_iptalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_optikogrsec: Tfr_optikogrsec;

var
kapat:boolean;
implementation

uses optikaktarim;
{$R *.dfm}

procedure Tfr_optikogrsec.FormCreate(Sender: TObject);
begin
 lb_ogrno.caption := inttostr(ogrno);
 lb_adi.caption := adi;
 lb_soyadi.caption := soyadi;
 fr_optikogrsec.showmodal;
end;

procedure Tfr_optikogrsec.bt_disardanClick(Sender: TObject);
begin
 ogrno:=3;
 sinifi:='Dýþarýdan';
 kapat:=true;
 close;
end;

procedure Tfr_optikogrsec.bt_seciliClick(Sender: TObject);
begin
 if ogrenciler.Controller.SelectedRowCount < 1 then
  begin
   messagedlg('Bir öðrenci seçin!',mtError, [mbOk], 0);
   Exit;
  end;
 ogrno :=fr_optikaktarim.t_ogr.fieldbyname('ogr_no').AsInteger;
 adi:= fr_optikaktarim.t_ogr.fieldbyname('adi').text;
 soyadi:= fr_optikaktarim.t_ogr.fieldbyname('soyadi').text;
 sinifi:= fr_optikaktarim.t_ogr.fieldbyname('sinifi').text;
 kapat:=true;
 close;
end;

procedure Tfr_optikogrsec.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 canclose:=kapat;
end;

procedure Tfr_optikogrsec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=cafree;
end;

procedure Tfr_optikogrsec.ogrencilerDblClick(Sender: TObject);
begin
 bt_seciliClick(bt_secili);
end;

procedure Tfr_optikogrsec.ogrencilerKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then bt_seciliClick(bt_secili);
end;

procedure Tfr_optikogrsec.bt_iptalClick(Sender: TObject);
begin
  ogrno:=0;
  sinifi:='0';
  kapat:=true;
  close;
end;

end.
