unit gizli_ogrenciler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  ZAbstractDataset, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, Buttons, ExtCtrls, cxContainer, cxLabel, cxCheckBox,
  cxGridCustomPopupMenu, cxGridPopupMenu, ZSqlUpdate, cxCalendar;

type
  Tfr_gizli_ogrenciler = class(TForm)
    tablo_ogrenciler: TZReadOnlyQuery;
    ara_ogrenciler: TDataSource;
    GroupBox1: TGroupBox;
    view_ogrenciler: TcxGridDBTableView;
    gr_ogrencilerLevel1: TcxGridLevel;
    gr_ogrenciler: TcxGrid;
    tablo_ogrencilerdonemi: TStringField;
    tablo_ogrencilerogr_no: TIntegerField;
    tablo_ogrencileradi: TStringField;
    tablo_ogrencilersoyadi: TStringField;
    view_ogrencilerdonemi: TcxGridDBColumn;
    view_ogrencilerogr_no: TcxGridDBColumn;
    view_ogrencileradi: TcxGridDBColumn;
    view_ogrencilersoyadi: TcxGridDBColumn;
    GroupBox2: TGroupBox;
    gr_gizli_ogr: TcxGrid;
    view_gizli: TcxGridDBTableView;
    gr_gizli: TcxGridLevel;
    ara_gizli: TDataSource;
    tablo_gizli: TZQuery;
    tablo_gizliogr_no: TIntegerField;
    tablo_gizlidonemi: TStringField;
    view_gizliogr_no: TcxGridDBColumn;
    view_gizlidonemi: TcxGridDBColumn;
    Panel1: TPanel;
    bt_durum: TBitBtn;
    cxLabel8: TcxLabel;
    TabloGizliUpdate: TZReadOnlyQuery;
    tablo_ogrencilersinifi: TStringField;
    view_ogrencilersinifi: TcxGridDBColumn;
    tablo_gizlisinifi: TStringField;
    view_gizlisinifi: TcxGridDBColumn;
    mn_ogrenciler: TcxGridPopupMenu;
    mn_gizle: TcxGridPopupMenu;
    up_gizli: TZUpdateSQL;
    TabloOku: TZQuery;
    Panel2: TPanel;
    BtAktar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure view_ogrencilerDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_durumClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure view_gizliDblClick(Sender: TObject);
    procedure tablo_gizliAfterDelete(DataSet: TDataSet);
    procedure BtAktarClick(Sender: TObject);
  private
  degisme: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_gizli_ogrenciler: Tfr_gizli_ogrenciler;

implementation
uses veritabani,functionlar, ogrenci, AnaForm;
{$R *.dfm}

procedure Tfr_gizli_ogrenciler.FormCreate(Sender: TObject);
begin
 tablo_ogrenciler.Open;
 if yetki < 51 then
  tablo_gizli.Open;
end;

procedure Tfr_gizli_ogrenciler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if gizli = true then
  begin
    veriler.tablo_gizli.Close;
    veriler.tablo_gizli.Open;
  end;
  Action:= caFree;
end;

procedure Tfr_gizli_ogrenciler.view_ogrencilerDblClick(Sender: TObject);
begin
  BtAktarClick(BtAktar);
end;

procedure Tfr_gizli_ogrenciler.FormShow(Sender: TObject);
begin
  if gizli = true then
    bt_durum.Caption := 'Öðrenciler gizli. Þimdi Göster!'
  else
    bt_durum.Caption := 'Öðrenciler açýk. Þimdi Gizle!';
end;

procedure Tfr_gizli_ogrenciler.bt_durumClick(Sender: TObject);
var
  metin : string;
  idler:array of integer;
  i:integer;
begin
  if gizli = true then
  begin
    gizli:=false;
    metin := 'Hayýr';
  end
  else
  begin
    gizli := true;
    metin := 'Evet';
  end;
  TabloGizliUpdate.Params[0].Text := metin;
  TabloGizliUpdate.ExecSQL;
  veriler.data_kok.HostName := ana_bilgisayar;
  veriler.data_kok.Connect;
  TabloOku.SQL.Clear;
  TabloOku.SQL.Add('SHOW PROCESSLIST');
  TabloOku.Open;
  while TabloOku.Eof=false do
  begin
    if (TabloOku.fieldbyname('User').Text <> kullanici_adi) and (TabloOku.fieldbyname('User').Text <> 'kök') then
    begin
      setlength(idler,length(idler)+1);
      idler[length(idler)-1]:=TabloOku.fieldbyname('Id').AsInteger;
    end;
    TabloOku.Next;
  end;
  TabloOku.Close;
  tablo_gizli.Close;
  tablo_ogrenciler.Close;
  for i:=0 to length(idler)-1 do
  begin
    TabloOku.SQL.Clear;
    TabloOku.SQL.Add('KILL '+inttostr(idler[i]));
    TabloOku.ExecSQL;
  end;
  TabloOku.SQL.Clear;
  if gizli=false then
  begin
    TabloOku.SQL.Add('rename table taksitler to ytaksitler,etaksitler to taksitler');
    TabloOku.SQL.Add(',paraakisi to yparaakisi,eparaakisi to paraakisi');
    TabloOku.SQL.Add(',kayitbedeli to ykayitbedeli,ekayitbedeli to kayitbedeli');
    TabloOku.SQL.Add(',geciken_borc_bildirimi to ygeciken_borc_bildirimi,egeciken_borc_bildirimi to geciken_borc_bildirimi');
  end
  else
  begin
    TabloOku.SQL.Add('rename table taksitler to etaksitler,ytaksitler to taksitler');
    TabloOku.SQL.Add(',paraakisi to eparaakisi,yparaakisi to paraakisi');
    TabloOku.SQL.Add(',kayitbedeli to ekayitbedeli,ykayitbedeli to kayitbedeli');
    TabloOku.SQL.Add(',geciken_borc_bildirimi to egeciken_borc_bildirimi,ygeciken_borc_bildirimi to geciken_borc_bildirimi');
  end;
  TabloOku.ExecSQL;
  veriler.data_kok.Disconnect;
  veriler.data_dershane.Disconnect;
  veriler.data_dershane.Connect;
  if gizli=true then
    veriler.tablo_gizli.Open
  else
    veriler.data_dershane.Connect;
  FrAnaForm.GizliVeYetkiKontrolleri;
  fr_gizli_ogrenciler.FormShow(fr_gizli_ogrenciler);
  fr_gizli_ogrenciler.FormCreate(fr_gizli_ogrenciler);
  for i:= 0 to FrAnaForm.MDIChildCount-1 do
    if FrAnaForm.MDIChildren[i]<>Self then FrAnaForm.MDIChildren[i].Close;
end;

procedure Tfr_gizli_ogrenciler.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
  begin
    if tablo_ogrenciler.RecordCount < 1 then exit;
    SOgr.donem:= tablo_ogrenciler.fieldbyname('donemi').Text;
    SOgr.OgrNo:= tablo_ogrenciler.fieldbyname('ogr_no').AsInteger;
    SOgr.KayitGoster := true;
    application.CreateForm(Tfr_ogrenci,fr_ogrenci);
  end;
end;

procedure Tfr_gizli_ogrenciler.view_gizliDblClick(Sender: TObject);
begin
  tablo_gizli.Delete;
end;

procedure Tfr_gizli_ogrenciler.tablo_gizliAfterDelete(DataSet: TDataSet);
begin
degisme:=true;
end;

procedure Tfr_gizli_ogrenciler.BtAktarClick(Sender: TObject);
var
  i: integer;
begin
  if view_ogrenciler.Controller.SelectedRecordCount < 1 then
  begin
    messagedlg('Öðrenci(ler) seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  if tablo_gizli.State <> dsBrowse then exit;
  BtAktar.Enabled := false;
  for i := 0 to view_ogrenciler.Controller.SelectedRecordCount-1 do
    try
    begin
     tablo_gizli.AppendRecord([view_ogrenciler.Controller.SelectedRecords[i].Values[1], view_ogrenciler.Controller.SelectedRecords[i].Values[0]]);
     tablo_gizli.Refresh;
     tablo_gizli.Locate('donemi;ogr_no',vararrayof([view_ogrenciler.Controller.SelectedRecords[i].Values[1], view_ogrenciler.Controller.SelectedRecords[i].Values[0]]),[loCaseInsensitive]);
    end;
    except
      messagedlg('Bu öðrenci zaten var!', mtError ,[mbYes], 0)
    end;
  BtAktar.Enabled := true;
end;

end.

