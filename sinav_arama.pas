unit sinav_arama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls, Buttons,
  ExtCtrls, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  Tfr_sinav_arama = class(TForm)
    Panel1: TPanel;
    sinav_say: TcxLabel;
    bt_sec: TcxButton;
    bt_vazgec: TcxButton;
    gr_sinav_arama: TcxGrid;
    vw_sinav_arama: TcxGridDBTableView;
    gr_sinav_aramaLevel1: TcxGridLevel;
    ara_sinav_arama: TDataSource;
    tablo_sinav_arama: TZReadOnlyQuery;
    tablo_sinav_aramasinav_no: TIntegerField;
    tablo_sinav_aramaturu: TStringField;
    tablo_sinav_aramasinav_tarihi: TDateField;
    tablo_sinav_aramasinav_adi: TStringField;
    vw_sinav_aramasinav_no: TcxGridDBColumn;
    vw_sinav_aramaturu: TcxGridDBColumn;
    vw_sinav_aramasinav_tarihi: TcxGridDBColumn;
    vw_sinav_aramasinav_adi: TcxGridDBColumn;
    procedure bt_secClick(Sender: TObject);
    procedure bt_vazgecClick(Sender: TObject);
    procedure vw_sinav_aramaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tablo_sinav_aramaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sinav_arama: Tfr_sinav_arama;

implementation
uses
  functionlar,veritabani;
{$R *.dfm}

procedure Tfr_sinav_arama.bt_secClick(Sender: TObject);
begin
  if tablo_sinav_arama.RecordCount < 1 then
    SecilenSinav := 0
  else
    SecilenSinav := tablo_sinav_aramasinav_no.AsInteger;
  Close;
end;

procedure Tfr_sinav_arama.bt_vazgecClick(Sender: TObject);
begin
  Close;
end;

procedure Tfr_sinav_arama.vw_sinav_aramaDblClick(Sender: TObject);
begin
  bt_secClick(bt_sec);
end;

procedure Tfr_sinav_arama.FormCreate(Sender: TObject);
begin
  tablo_sinav_arama.Open;
  fr_sinav_arama.ShowModal;
end;

procedure Tfr_sinav_arama.tablo_sinav_aramaAfterOpen(DataSet: TDataSet);
begin
  sinav_say.Caption := inttostr(tablo_sinav_arama.RecordCount)+' Sýnav';
end;

end.
