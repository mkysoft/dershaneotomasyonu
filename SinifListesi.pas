unit SinifListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxStyles, cxCustomData, cxGraphics, ppTypes,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ppParameter,
  ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, jpeg, ppPrnabl,
  ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ZAbstractRODataset,
  ZDataset, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls,
  Buttons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ppVar;
type
  TFrSinifListesi=class(TForm)
    tablo_siniflar: TZReadOnlyQuery;
    rp_data_siniflar: TppDBPipeline;
    ara_siniflar: TDataSource;
    gr_siniflar_siniflar: TcxGridDBTableView;
    gr_siniflarLevel1: TcxGridLevel;
    gr_siniflar: TcxGrid;
    GroupBox1: TGroupBox;
    bt_tumunu_yazidr: TBitBtn;
    bt_secili_olani_yazdir: TBitBtn;
    rp_liste: TppReport;
    tablo_ogrenciler: TZReadOnlyQuery;
    ara_ogrenciler: TDataSource;
    rp_data_ogrenciler: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    rp_ogrenciler: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDetailBand2: TppDetailBand;
    ppShape1: TppShape;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine9: TppLine;
    ppLabel10: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Panel1: TPanel;
    tx_donemi: TcxComboBox;
    Label15: TLabel;
    tablo_danisman_derslik: TZReadOnlyQuery;
    tablo_danisman_dersliksinif: TStringField;
    tablo_danisman_derslikdanisman: TStringField;
    tablo_danisman_derslikderslik: TStringField;
    tablo_ogrencilersinifi: TStringField;
    tablo_ogrencilerdonemi: TStringField;
    tablo_ogrencilerogr_no: TIntegerField;
    tablo_ogrencileradi: TStringField;
    tablo_ogrencilersoyadi: TStringField;
    gr_siniflar_siniflarsinif: TcxGridDBColumn;
    gr_siniflar_siniflardanisman: TcxGridDBColumn;
    gr_siniflar_siniflarderslik: TcxGridDBColumn;
    gr_siniflar_siniflarmevcut: TcxGridDBColumn;
    tablo_siniflarsinif: TStringField;
    tablo_siniflarmevcut: TLargeintField;
    tablo_siniflardanisman: TStringField;
    tablo_siniflarderslik: TStringField;
    tablo_siniflardonem: TStringField;
    ppVariable1: TppVariable;
    procedure FormCreate(Sender : TObject);
    procedure bt_tumunu_yazidrClick(Sender : TObject);
    procedure ppShape1Print(Sender : TObject);
    procedure bt_secili_olani_yazdirClick(Sender : TObject);
    procedure tx_donemiClick(Sender : TObject);
    procedure tx_donemiKeyPress(Sender : TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tablo_ogrencilerFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppImage1Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrSinifListesi: TFrSinifListesi;

implementation
uses AnaForm, Functionlar, veritabani;
{$R *.DFM}

procedure TFrSinifListesi.FormCreate(Sender : TObject);
begin
  tx_donemi.Properties.Items := Donemler;
  tx_donemi.Text:=aktifdonem;
  tablo_siniflar.Params[0].Text := tx_donemi.Text;
  tablo_ogrenciler.Filtered := gizli;
  tablo_siniflar.Open;
  ara_siniflar.Enabled := true;
end;

procedure TFrSinifListesi.bt_tumunu_yazidrClick(Sender : TObject);
begin
  ara_ogrenciler.Enabled := false;
  tablo_ogrenciler.Close;
  tablo_ogrenciler.Open;
  ara_ogrenciler.Enabled := true;
  rp_data_siniflar.RangeBegin := rbFirstRecord;
  rp_data_siniflar.RangeEnd := reLastRecord;
  rp_liste.Print;
end;

procedure TFrSinifListesi.ppShape1Print(Sender : TObject);
begin
  if ppShape1.Visible = false then
    ppShape1.Visible := true
  else
    ppShape1.Visible := false;
end;

procedure TFrSinifListesi.bt_secili_olani_yazdirClick(Sender : TObject);
begin
  ara_ogrenciler.Enabled := false;
  tablo_ogrenciler.Close;
  tablo_ogrenciler.Open;
  ara_ogrenciler.Enabled := true;
  rp_data_siniflar.RangeBegin := rbCurrentRecord;
  rp_data_siniflar.RangeEnd := reCurrentRecord;
  rp_liste.Print;
end;

procedure TFrSinifListesi.tx_donemiClick(Sender : TObject);
begin
  ara_siniflar.Enabled := false;
  tablo_siniflar.Close;
  tablo_siniflar.Params[0].Text := tx_donemi.Text;
  tablo_siniflar.Filtered := gizli;
  tablo_siniflar.Open;
  ara_siniflar.Enabled := true;
end;

procedure TFrSinifListesi.tx_donemiKeyPress(Sender : TObject);
begin
  tx_donemiClick(tx_donemi);
end;

procedure TFrSinifListesi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrSinifListesi.tablo_ogrencilerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_ogrenciler.fieldbyname('donemi').AsString,tablo_ogrenciler.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure TFrSinifListesi.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
 inc(Value)
end;

procedure TFrSinifListesi.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  Text := Dershane.AdiKisa;
end;

procedure TFrSinifListesi.ppImage1Print(Sender: TObject);
begin
  TppImage(Sender).Picture.Assign(Dershane.Logo);
end;

end.