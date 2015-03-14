unit yapilan_islemler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxListBox, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxFilterControl, cxDBFilterControl, ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  Tfr_yapilan_islemler = class(TForm)
    cxGroupBox1: TcxGroupBox;
    lb_tablolar: TcxListBox;
    Panel1: TPanel;
    fl_log: TcxDBFilterControl;
    vi_log: TcxGridDBTableView;
    lv_log: TcxGridLevel;
    gr_log: TcxGrid;
    tablo_log: TZQuery;
    bt_goster: TcxButton;
    ara_log: TDataSource;
    mn_log: TcxGridPopupMenu;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lb_tablolarDblClick(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure lb_tablolarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_yapilan_islemler: Tfr_yapilan_islemler;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_yapilan_islemler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_yapilan_islemler.FormShow(Sender: TObject);
begin
  if yetki < 11 then
    vi_log.OptionsData.Deleting:=true
  else
    vi_log.OptionsData.Deleting:=false;
  lb_tablolar.Items.Clear;
  tablo_log.Close;
  tablo_log.SQL.Clear;
  tablo_log.SQL.Add('show tables like ''log_%''');
  tablo_log.Open;
  while tablo_log.Eof=false do
  begin
    lb_tablolar.Items.Add(copy(tablo_log.Fields.Fields[0].text,5,length(tablo_log.Fields.Fields[0].text)-4));
    tablo_log.Next;
  end;
  tablo_log.Close;
end;

procedure Tfr_yapilan_islemler.lb_tablolarDblClick(Sender: TObject);
begin
  tablo_log.Close;
  vi_log.DataController.DataSource := nil;
  vi_log.ClearItems;
  tablo_log.SQL.Clear;
  tablo_log.SQL.Add('select * from log_'+lb_tablolar.Items.Strings[lb_tablolar.itemindex]+' limit 0');
  tablo_log.Open;
  bt_goster.Enabled:=true;
end;

procedure Tfr_yapilan_islemler.bt_gosterClick(Sender: TObject);
var
  filtre:string;
begin
  if lb_tablolar.Itemindex = -1 then
  begin
    MessageDlg('Tablolar listesinden bir tablo ismine çift týklatarak'+#13+#10+'yada Enter''a basarak seçmelisiniz.', mtError, [mbOK], 0);
    exit;
  end;
  filtre := fl_log.filtertext;
  tablo_log.Close;
  vi_log.ClearItems;
  tablo_log.SQL.Clear;
  if filtre <> ''  then
    tablo_log.SQL.Add('select * from log_'
                      +lb_tablolar.Items.Strings[lb_tablolar.itemindex]
                      +' where ' + filtre)
  else
    tablo_log.SQL.Add('select * from log_'
                      +lb_tablolar.Items.Strings[lb_tablolar.itemindex]);
  tablo_log.Open;
  vi_log.DataController.DataSource := ara_log;
  vi_log.DataController.CreateAllItems;
  vi_log.ApplyBestFit();
end;

procedure Tfr_yapilan_islemler.lb_tablolarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then lb_tablolarDblClick(lb_tablolar);
end;

end.
