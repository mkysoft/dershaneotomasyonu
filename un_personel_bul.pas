unit un_personel_bul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxContainer, cxLabel, StdCtrls, Buttons;

type
  Tfr_personel_bul = class(TForm)
    tablo_personel: TZReadOnlyQuery;
    ara_personel: TDataSource;
    gr_veli: TcxGrid;
    arama: TcxGridDBTableView;
    gr_veliLevel1: TcxGridLevel;
    tablo_personelpersonel_kodu: TIntegerField;
    tablo_personelveli_adi: TStringField;
    tablo_personelveli_soyadi: TStringField;
    aramapersonel_kodu: TcxGridDBColumn;
    aramaveli_adi: TcxGridDBColumn;
    aramaveli_soyadi: TcxGridDBColumn;
    Panel1: TPanel;
    bt_sec: TBitBtn;
    personel_say: TcxLabel;
    br_vazgec: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure tablo_personelAfterOpen(DataSet: TDataSet);
    procedure br_vazgecClick(Sender: TObject);
    procedure bt_secClick(Sender: TObject);
    procedure aramaDblClick(Sender: TObject);
    procedure aramaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_personel_bul: Tfr_personel_bul;

implementation
uses veritabani, functionlar, un_personel;
{$R *.dfm}

procedure Tfr_personel_bul.FormCreate(Sender: TObject);
begin
  tablo_personel.Open;
  if tablo_personel.RecordCount < 1 then
    bt_sec.Caption := 'Yeni Personel';
  fr_personel_bul.ShowModal;
end;

procedure Tfr_personel_bul.tablo_personelAfterOpen(DataSet: TDataSet);
begin
  personel_say.Caption := inttostr(tablo_personel.recordcount)+' Personel';
end;

procedure Tfr_personel_bul.br_vazgecClick(Sender: TObject);
begin
  close;
end;

procedure Tfr_personel_bul.bt_secClick(Sender: TObject);
begin
  SVeli.KayitVar := true;
  SVeli.Iptal := false;
  SVeli.VeliKodu := tablo_personel.fieldbyname('personel_kodu').asinteger;
  SVeli.AdiSoyadi := tablo_personel.fieldbyname('veli_adi').text + ' ' + tablo_personel.fieldbyname('veli_soyadi').text;
  close;
end;

procedure Tfr_personel_bul.aramaDblClick(Sender: TObject);
begin
 bt_secClick(bt_sec);
end;

procedure Tfr_personel_bul.aramaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then  bt_secClick(bt_sec);
end;

end.
