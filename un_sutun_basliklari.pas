unit un_sutun_basliklari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  Tfr_sutun_basliklari = class(TForm)
    tablo_sutun_basliklari: TZQuery;
    tablo_sutun_basliklarisutun_adi: TStringField;
    tablo_sutun_basliklaribaslik: TStringField;
    ara_sutun_basliklari: TDataSource;
    gr_sutun_baslik: TcxGridDBTableView;
    gr_sutun_bsslik: TcxGridLevel;
    gr_sutun_bssliklari: TcxGrid;
    gr_sutun_basliksutun_adi: TcxGridDBColumn;
    gr_sutun_baslikbaslik: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sutun_basliklari: Tfr_sutun_basliklari;

implementation
uses veritabani;
{$R *.dfm}

procedure Tfr_sutun_basliklari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfr_sutun_basliklari.FormCreate(Sender: TObject);
begin
  tablo_sutun_basliklari.Open;
end;

end.
