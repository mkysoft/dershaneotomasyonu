unit un_veli_sec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, Buttons, cxCurrencyEdit, cxCheckBox, cxCalendar;

type
  Tfr_veli_sec = class(TForm)
    tablo_veli: TZQuery;
    ara_veli: TDataSource;
    veliler: TcxGridDBTableView;
    gr_veliLevel1: TcxGridLevel;
    gr_veli: TcxGrid;
    tablo_velimeslegi: TStringField;
    tablo_veliveli_kodu: TIntegerField;
    velilerveli_kodu: TcxGridDBColumn;
    velileradi: TcxGridDBColumn;
    velilersoyadi: TcxGridDBColumn;
    velilermeslegi: TcxGridDBColumn;
    br_vazgec: TBitBtn;
    bt_sec: TBitBtn;
    tablo_veliveli_adi: TStringField;
    tablo_veliveli_soyadi: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure br_vazgecClick(Sender: TObject);
    procedure velilerKeyPress(Sender: TObject; var Key: Char);
    procedure velilerDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_secClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_veli_sec: Tfr_veli_sec;

implementation

uses functionlar, ogrenci, veritabani;
{$R *.dfm}

procedure Tfr_veli_sec.FormCreate(Sender: TObject);
begin
  tablo_veli.Open;
  SVeli.Iptal := true;
end;

procedure Tfr_veli_sec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_veli_sec.br_vazgecClick(Sender: TObject);
begin
   Close;
end;

procedure Tfr_veli_sec.velilerKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = 13 then bt_secClick(bt_sec);
end;

procedure Tfr_veli_sec.velilerDblClick(Sender: TObject);
begin
  bt_secClick(bt_sec);
end;

procedure Tfr_veli_sec.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = 27 then Close;
end;

procedure Tfr_veli_sec.bt_secClick(Sender: TObject);
begin
  SVeli.KayitVar := True;
  SVeli.KayitGoster := True;
  SVeli.VeliKodu := tablo_veli.FieldByName('veli_kodu').AsInteger;
  Close;
end;

end.
