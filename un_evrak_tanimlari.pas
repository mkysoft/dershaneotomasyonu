unit un_evrak_tanimlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  Tfr_evrak_tanimlari = class(TForm)
    tablo_gerekli_evraklar: TZQuery;
    tablo_gerekli_evraklarevrak_adi: TStringField;
    gerekli_evraklar: TcxGridDBTableView;
    gr_gerekli_evraklarLevel1: TcxGridLevel;
    gr_gerekli_evraklar: TcxGrid;
    ara_gerekli_evraklar: TDataSource;
    gerekli_evraklarevrak_adi: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_evrak_tanimlari: Tfr_evrak_tanimlari;

implementation

{$R *.dfm}
uses veritabani;

procedure Tfr_evrak_tanimlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_evrak_tanimlari.FormCreate(Sender: TObject);
begin
  tablo_gerekli_evraklar.open;
end;

end.
