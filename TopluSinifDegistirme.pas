unit TopluSinifDegistirme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDropDownEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu, cxDBLookupComboBox,
  cxEditRepositoryItems, StdCtrls, cxContainer, cxTextEdit, cxMaskEdit,
  ExtCtrls;

type
  Tfr_toplu_sinif_degistirme = class(TForm)
    tablo_ogrenciler: TZQuery;
    tablo_ogrencilerdonemi: TStringField;
    tablo_ogrencilerogr_no: TIntegerField;
    tablo_ogrencileradi: TStringField;
    tablo_ogrencilersoyadi: TStringField;
    tablo_ogrencilersinifi: TStringField;
    ara_ogrenciler: TDataSource;
    gr_ogrenciler: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gr_ogrencilerdonemi: TcxGridDBColumn;
    gr_ogrencilerogr_no: TcxGridDBColumn;
    gr_ogrencileradi: TcxGridDBColumn;
    gr_ogrencilersoyadi: TcxGridDBColumn;
    gr_ogrencilersinifi: TcxGridDBColumn;
    mn_ogrenciler: TcxGridPopupMenu;
    tablo_siniflar: TZReadOnlyQuery;
    tablo_siniflarsinif: TStringField;
    cxEditRepository1: TcxEditRepository;
    cb_siniflar: TcxEditRepositoryComboBoxItem;
    tablo_siniflardonem: TStringField;
    Panel1: TPanel;
    cm_don_kis: TcxComboBox;
    Label2: TLabel;
    tablo_ogrencilergrup1: TStringField;
    tablo_ogrencilergrup2: TStringField;
    tablo_ogrencilergrup3: TStringField;
    gr_ogrencilergrup1: TcxGridDBColumn;
    gr_ogrencilergrup2: TcxGridDBColumn;
    gr_ogrencilergrup3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tablo_ogrencilerFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cm_don_kisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_toplu_sinif_degistirme: Tfr_toplu_sinif_degistirme;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_toplu_sinif_degistirme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_toplu_sinif_degistirme.FormCreate(Sender: TObject);
begin
  cm_don_kis.Properties.Items := Donemler;
  cm_don_kis.Text := aktifdonem;
  tablo_siniflar.Close;
  tablo_siniflar.SQL.Clear;
  tablo_siniflar.SQL.Add('SELECT donem,sinif FROM siniflar WHERE donem=''' + cm_don_kis.Text + ''' order by donem,sinif');
  tablo_siniflar.Open;
  cb_siniflar.Properties.Items.Clear;
  while tablo_siniflar.Eof = false do
  begin
    cb_siniflar.Properties.Items.Add(tablo_siniflar.fieldbyname('sinif').Text);
    tablo_siniflar.Next;
  end;
  gr_ogrencilersinifi.GetProperties;
  tablo_ogrenciler.Close;
  tablo_ogrenciler.SQL.Clear;
  tablo_ogrenciler.SQL.Add('select donemi,ogr_no,adi,soyadi,sinifi,grup1,grup2,grup3 from ogrenciler WHERE donemi=''' + cm_don_kis.Text + '''');
  tablo_ogrenciler.Filtered := gizli;
  tablo_ogrenciler.Open;
  ara_ogrenciler.Enabled := true;
end;

procedure Tfr_toplu_sinif_degistirme.tablo_ogrencilerFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_ogrenciler.fieldbyname('donemi').AsString,tablo_ogrenciler.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_toplu_sinif_degistirme.cm_don_kisClick(Sender: TObject);
begin
  tablo_ogrenciler.Close;
  tablo_siniflar.Close;
  tablo_siniflar.SQL.Clear;
  tablo_siniflar.SQL.Add('SELECT donem,sinif FROM siniflar WHERE donem=''' + cm_don_kis.Text + ''' order by donem,sinif');
  tablo_siniflar.Open;
  cb_siniflar.Properties.Items.Clear;
  while tablo_siniflar.Eof = false do
  begin
    cb_siniflar.Properties.Items.Add(tablo_siniflar.fieldbyname('sinif').Text);
    tablo_siniflar.Next;
  end;
  gr_ogrencilersinifi.GetProperties;
  tablo_ogrenciler.Close;
  tablo_ogrenciler.SQL.Clear;
  tablo_ogrenciler.SQL.Add('select donemi,ogr_no,adi,soyadi,sinifi,grup1,grup2,grup3 from ogrenciler WHERE donemi=''' + cm_don_kis.Text + '''');
  tablo_ogrenciler.Filtered := gizli;
  tablo_ogrenciler.Open;
  ara_ogrenciler.Enabled := true;
end;

end.

