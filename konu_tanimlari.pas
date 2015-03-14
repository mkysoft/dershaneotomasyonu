unit konu_tanimlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  Tfr_konu_tanimlari = class(TForm)
    tablo_sinav_konu_tanim: TZQuery;
    vw_konu_tanim: TcxGridDBTableView;
    gr_konu_tanimLevel1: TcxGridLevel;
    gr_konu_tanim: TcxGrid;
    ara_sinav_konu_tanim: TDataSource;
    tablo_sinav_konu_tanimid: TIntegerField;
    tablo_sinav_konu_tanimturu: TStringField;
    tablo_sinav_konu_tanimders: TStringField;
    vw_konu_tanimid: TcxGridDBColumn;
    vw_konu_tanimturu: TcxGridDBColumn;
    vw_konu_tanimders: TcxGridDBColumn;
    vw_konu_tanimkonu: TcxGridDBColumn;
    tablo_sinav_konu_tanimkonu: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_konu_tanimlari: Tfr_konu_tanimlari;

implementation
uses veritabani;
{$R *.dfm}

procedure Tfr_konu_tanimlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=cafree;
end;

procedure Tfr_konu_tanimlari.FormShow(Sender: TObject);
begin
  tablo_sinav_konu_tanim.Open;
end;

end.
