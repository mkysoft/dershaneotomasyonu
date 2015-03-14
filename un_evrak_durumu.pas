unit un_evrak_durumu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxGridLnk, cxExportGrid4Link,ShellAPI,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxPScxCommon, dxmdaset,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeelPainters, cxButtons;

type
  Tfr_evrak_durumu = class(TForm)
    tablo_evrak_durumu: TZReadOnlyQuery;
    tablo_evrak_durumuevrak_adi: TStringField;
    tablo_evrak_durumuevrak_durum: TIntegerField;
    tablo_evrak_durumudonemi: TStringField;
    tablo_evrak_durumuogr_no: TIntegerField;
    tablo_oku: TZReadOnlyQuery;
    tablo_evrak_durumuadi: TStringField;
    tablo_evrak_durumusoyadi: TStringField;
    tablo_evrak_durumusinifi: TStringField;
    gr_evrak_liste: TcxGrid;
    evrak_liste: TcxGridDBTableView;
    gr_evrak_listeLevel1: TcxGridLevel;
    Panel1: TPanel;
    ara_evrak_liste: TDataSource;
    t_zaman: TTimer;
    dosya: TSaveDialog;
    bt_exceleaktar: TBitBtn;
    bt_yazdir: TBitBtn;
    pr_evrak_liste: TdxComponentPrinter;
    mn_evrak_liste: TcxGridPopupMenu;
    pr_evrak_listeLink1: TdxGridReportLink;
    tablo_evrak_liste: TdxMemData;
    tablo_evrak_listeadi: TStringField;
    tablo_evrak_listedonemi: TStringField;
    tablo_evrak_listeogr_no: TIntegerField;
    tablo_evrak_listesoyadi: TStringField;
    tablo_evrak_listesinifi: TStringField;
    Label15: TLabel;
    tx_donemi: TcxComboBox;
    bt_goster: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tablo_evrak_durumuFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure t_zamanTimer(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure bt_gosterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_evrak_durumu: Tfr_evrak_durumu;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_evrak_durumu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfr_evrak_durumu.FormCreate(Sender: TObject);
begin
  tx_donemi.Properties.Items := Donemler;
  tx_donemi.Text := AktifDonem;
end;

procedure Tfr_evrak_durumu.tablo_evrak_durumuFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_evrak_durumu.fieldbyname('donemi').AsString,tablo_evrak_durumu.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_evrak_durumu.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_evrak_durumu.bt_exceleaktarClick(Sender: TObject);
begin
 dosya.Execute;
end;

procedure Tfr_evrak_durumu.bt_yazdirClick(Sender: TObject);
begin
  pr_evrak_liste.Preview(True,nil);
end;

procedure Tfr_evrak_durumu.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_evrak_liste,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_evrak_durumu.bt_gosterClick(Sender: TObject);
var
  kayit : string;
  i: integer;
  AField : TField;
begin
  tablo_evrak_liste.Close;
  while tablo_evrak_liste.FieldCount > 1 do
    tablo_evrak_liste.Fields[tablo_evrak_liste.FieldCount - 1].Free;
  tablo_evrak_durumu.Close;
  tablo_evrak_durumu.SQL.Clear;
  tablo_evrak_durumu.SQL.Add('SELECT e.donemi,e.ogr_no,adi,soyadi,sinifi,evrak_adi,evrak_durum '
    +'FROM evrak_durumu e left join ogrenciler using(donemi,ogr_no) '
    +'where e.donemi='+QuotedStr(tx_donemi.Text)
    +' ORDER BY donemi,ogr_no,evrak_adi');
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select evrak_adi from gerekli_evraklar union select evrak_adi from evrak_durumu order by evrak_adi');
  tablo_oku.Open;
  AField := TStringField.Create(self);
  AField.Name := 'tablo_evrak_listedonemi';
  AField.DisplayLabel := 'Dönemi';
  AField.FieldName := 'donemi';
  AField.Size:=9;
  AField.SetFieldType(ftString);
  AField.DataSet := tablo_evrak_liste;
  AField := TIntegerField.Create(self);
  AField.Name := 'tablo_evrak_listeogr_no';
  AField.DisplayLabel := 'Ö.No';
  AField.FieldName := 'ogr_no';
  AField.SetFieldType(ftInteger);
  AField.DataSet := tablo_evrak_liste;
  AField := TStringField.Create(self);
  AField.Name := 'tablo_evrak_listeadi';
  AField.DisplayLabel := 'Adý';
  AField.FieldName := 'adi';
  AField.Size:=15;
  AField.SetFieldType(ftString);
  AField.DataSet := tablo_evrak_liste;
  AField := TStringField.Create(self);
  AField.Name := 'tablo_evrak_listesoyadi';
  AField.DisplayLabel := 'Soyadý';
  AField.FieldName := 'soyadi';
  AField.Size:=15;
  AField.SetFieldType(ftString);
  AField.DataSet := tablo_evrak_liste;
  AField := TStringField.Create(self);
  AField.Name := 'tablo_evrak_listesinifi';
  AField.DisplayLabel := 'Sýnýfý';
  AField.FieldName := 'sinifi';
  AField.Size:=10;
  AField.SetFieldType(ftString);
  AField.DataSet := tablo_evrak_liste;
  evrak_liste.ClearItems;
  for i:=1 to tablo_oku.RecordCount do
  begin
    AField := TStringField.Create(self);
    AField.Name := 'tablo_evrak_liste'+inttostr(i);
    AField.DisplayLabel := tablo_oku.fieldbyname('evrak_adi').Text;
    AField.FieldName := tablo_oku.fieldbyname('evrak_adi').Text;
    AField.Size:=5;
    AField.SetFieldType(ftString);
    AField.DataSet := tablo_evrak_liste;
    tablo_oku.Next;
  end;
  tablo_evrak_liste.FieldDefs.Update;
  tablo_evrak_liste.Open;
  tablo_evrak_durumu.Filtered := gizli;
  tablo_evrak_durumu.Open;
  kayit := '';
  while tablo_evrak_durumu.Eof = false do
  begin
    if kayit <> tablo_evrak_durumu.fieldbyname('donemi').Text+tablo_evrak_durumu.fieldbyname('ogr_no').Text then
    begin
      if tablo_evrak_liste.State in [dsinsert] then tablo_evrak_liste.Post;
      tablo_evrak_liste.Insert;
      tablo_evrak_liste.FieldByName('donemi').Text := tablo_evrak_durumu.fieldbyname('donemi').Text;
      tablo_evrak_liste.FieldByName('ogr_no').asinteger := tablo_evrak_durumu.fieldbyname('ogr_no').asinteger;
      tablo_evrak_liste.FieldByName('adi').Text := tablo_evrak_durumu.fieldbyname('adi').Text;
      tablo_evrak_liste.FieldByName('soyadi').Text := tablo_evrak_durumu.fieldbyname('soyadi').Text;
      tablo_evrak_liste.FieldByName('sinifi').Text := tablo_evrak_durumu.fieldbyname('sinifi').Text;
    end;
    if tablo_evrak_liste.Fields.FindField(tablo_evrak_durumu.fieldbyname('evrak_adi').Text) <> nil then
      case  tablo_evrak_durumu.fieldbyname('evrak_durum').AsInteger of
        0: tablo_evrak_liste.Fields.FieldByName(tablo_evrak_durumu.fieldbyname('evrak_adi').text).text := 'Hayýr';
        1: tablo_evrak_liste.Fields.FieldByName(tablo_evrak_durumu.fieldbyname('evrak_adi').text).text := 'Evet';
      end;
    kayit := tablo_evrak_durumu.fieldbyname('donemi').Text+tablo_evrak_durumu.fieldbyname('ogr_no').Text;
    tablo_evrak_durumu.Next;
  end;
  if tablo_evrak_liste.State in [dsinsert] then tablo_evrak_liste.Post;
  evrak_liste.DataController.CreateAllItems;
  evrak_liste.ApplyBestFit();
end;

end.

