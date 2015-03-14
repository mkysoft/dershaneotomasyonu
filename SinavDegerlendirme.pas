unit SinavDegerlendirme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZConnection, cxControls, cxContainer, cxListBox, cxDBEdit, StdCtrls, DBCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, Buttons, cxTextEdit, cxLabel, cxDBLabel, cxCheckBox,
  cxProgressBar, CalcExpress, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, ExtCtrls, cxCheckListBox, cxMemo, cxSplitter;

type
  Tfr_sinav_degerlendirme = class(TForm)
    tablo_sinav: TZQuery;
    ara_sinav: TDataSource;
    tablo_sinavsinav_adi: TStringField;
    tablo_sinavsinav_tarihi: TDateField;
    cxGroupBox2: TcxGroupBox;
    tablo_formul: TZQuery;
    gr_formul: TcxGrid;
    formuller: TcxGridDBTableView;
    level2: TcxGridLevel;
    ara_formul: TDataSource;
    tablo_sinavlar: TZQuery;
    hesap1: TCalcExpress;
    hesap2: TCalcExpress;
    hesap3: TCalcExpress;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    gr_sinavlar: TcxGrid;
    sinavlar: TcxGridDBTableView;
    sinavlarsinav_adi: TcxGridDBColumn;
    sinavlarsinav_tarihi: TcxGridDBColumn;
    level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    lb_sinav_adi: TcxDBLabel;
    lb_formul_id: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    durum: TcxProgressBar;
    bt_basla: TBitBtn;
    islemler: TListBox;
    tablo_formulid: TIntegerField;
    tablo_formulformul_3: TStringField;
    tablo_formulformul_2: TStringField;
    tablo_formulformul_1: TStringField;
    tablo_formulyanlis_dogru_orani: TIntegerField;
    tablo_formulaciklama: TStringField;
    sinavlarsinav_no: TcxGridDBColumn;
    tablo_sinavsinav_no: TIntegerField;
    tablo_sinavturu: TStringField;
    sinavlarturu: TcxGridDBColumn;
    tablo_formulformul_6: TStringField;
    tablo_formulformul_5: TStringField;
    tablo_formulformul_4: TStringField;
    formullerid: TcxGridDBColumn;
    formullerformul_6: TcxGridDBColumn;
    formullerformul_5: TcxGridDBColumn;
    formullerformul_4: TcxGridDBColumn;
    formullerformul_3: TcxGridDBColumn;
    formullerformul_2: TcxGridDBColumn;
    formullerformul_1: TcxGridDBColumn;
    formulleryanlis_dogru_orani: TcxGridDBColumn;
    formulleraciklama: TcxGridDBColumn;
    hesap4: TCalcExpress;
    hesap5: TCalcExpress;
    hesap6: TCalcExpress;
    cb_dogruyanlis: TCheckBox;
    tablo_sinavAturkce: TStringField;
    tablo_sinavAsos1: TStringField;
    tablo_sinavAmat1: TStringField;
    tablo_sinavAfen1: TStringField;
    tablo_sinavAedsos: TStringField;
    tablo_sinavAsos2: TStringField;
    tablo_sinavAmat2: TStringField;
    tablo_sinavAfen2: TStringField;
    tablo_sinavBturkce: TStringField;
    tablo_sinavBsos1: TStringField;
    tablo_sinavBmat1: TStringField;
    tablo_sinavBfen1: TStringField;
    tablo_sinavBedsos: TStringField;
    tablo_sinavBsos2: TStringField;
    tablo_sinavBmat2: TStringField;
    tablo_sinavBfen2: TStringField;
    cxSplitter1: TcxSplitter;
    tablo_sinavAing: TStringField;
    tablo_sinavBing: TStringField;
    CkbSinifGuncelle: TCheckBox;
    TbSinifBilgisi: TZReadOnlyQuery;
    TbSinifBilgisisinifi: TStringField;
    TbSiralamalar: TZReadOnlyQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_baslaClick(Sender: TObject);
    procedure tablo_sinavBeforeDelete(DataSet: TDataSet);
    procedure tablo_sinavAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sinav_degerlendirme: Tfr_sinav_degerlendirme;

implementation

uses functionlar, veritabani;
{$R *.dfm}

procedure Tfr_sinav_degerlendirme.FormCreate(Sender: TObject);
begin
  tablo_formul.Open;
  tablo_sinav.Open;
end;

procedure Tfr_sinav_degerlendirme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_sinav_degerlendirme.bt_baslaClick(Sender: TObject);
var
  TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2,ING: double;
  i,j,yanlis,dogru: integer;
  temp:string;
  siniflar: TStringList;
const
  cevap:array[1..9] of string=('turkce','sos1','mat1','fen1','edsos','sos2','mat2','fen2','ing');
  ders:array[1..9] of string=('turkce','sosyal1','matematik1','fen1','edebiyatsosyal','sosyal2','matematik2','fen2','ingilizce');
begin
  if tablo_formul.State in [dsEdit,dsInsert] then
   begin
     MessageDlg('Þu anda formül ekliyorsunuz yada düzeltiyorsunuz.'+ #13 +'Lütfen önce bu iþlemi tamamlayýn!',mtError, [mbOk], 0);
     Exit;
   end;
  if tablo_sinav.RecordCount < 1 then
   begin
     messagedlg('Hiç bir sýnav verisi yok yada sýnav seçilmemiþ!',mtError, [mbOk], 0);
     Exit;
   end;
  if tablo_formul.RecordCount < 1 then
   begin
     messagedlg('Hiç bir formül yok yada formül seçilmemiþ!',mtError, [mbOk], 0);
     Exit;
   end;
  islemler.Clear;
  durum.Position := 0;
  durum.Refresh;
  islemler.Items.Add(' ');
  islemler.Items.Add('   - Veri tabanýna baðlanýyor ...');
  islemler.Selected[islemler.Count-1] := true;
  tablo_sinavlar.SQL.Clear;
  tablo_sinavlar.SQL.Add('select * from sinavsonuc where sinav_no=:parmemetre');
  tablo_sinavlar.Params[0].asinteger := tablo_sinav.FieldByName('sinav_no').AsInteger;
  tablo_sinavlar.Open;
  durum.Properties.Max := tablo_sinavlar.RecordCount*13;
//netler ve puanlar hesaplanýyor
  islemler.Items.Add('   - Doðru/Yanlýþ, Netler ve puanlar hesaplanýyor ...');
  islemler.Refresh;
  tablo_sinavlar.First;
  while tablo_sinavlar.Eof = False do
  begin
//doðru yanlýþ
    tablo_sinavlar.Edit;
    if cb_dogruyanlis.Checked=true then
    begin
// kitapçýk kontrolü
      temp:= tablo_sinavlar.fieldbyname('kitapcik').Text;
      temp:=temp+' ';
      if not (temp[1] in ['A','B']) then
      begin
        MessageDlg(tablo_sinavlar.fieldbyname('ogr_no').Text
                   +' numaralý '+tablo_sinavlar.fieldbyname('adi').Text
                   +' '+tablo_sinavlar.fieldbyname('soyadi').Text
                   +' kitapçýk türünü girmemiþ.'#13'Ýþlem durduruldu.', mtError, [mbOK], 0);
        exit;
      end;
      for j:=1 to length(cevap) do
      begin
        dogru:=0;
        yanlis:=0;
        for i:=1 to length(tablo_sinav.fieldbyname(tablo_sinavlar.fieldbyname('kitapcik').Text+cevap[j]).text) do
          if (tablo_sinav.fieldbyname(tablo_sinavlar.fieldbyname('kitapcik').Text+cevap[j]).text[i] in ['A','B','C','D','E'])
            and (i<=length(tablo_sinavlar.fieldbyname('cevap'+cevap[j]).text))
            and (tablo_sinavlar.fieldbyname('cevap'+cevap[j]).text[i] in ['A','B','C','D','E']) then
            if tablo_sinav.fieldbyname(tablo_sinavlar.fieldbyname('kitapcik').Text+cevap[j]).text[i]=tablo_sinavlar.fieldbyname('cevap'+cevap[j]).text[i] then
              inc(dogru)
            else
              inc(yanlis);
        tablo_sinavlar.FieldByName(ders[j]+'_dogru').AsInteger:=dogru;
        tablo_sinavlar.FieldByName(ders[j]+'_yanlis').AsInteger:=yanlis;
      end;
    end;
//doðru yaanlýþ son
//Aslýnda puan hesaplama sonra gelmeli.Ders bazlý hesaplama yokya bundan böyle

//1.bölüm
{
    tablo_sinavlar.FieldByName('sosyal1_dogru').AsInteger := tablo_sinavlar.FieldByName('tarih1_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('cografya_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('felsefe_dogru').AsInteger;
//    tablo_sinavlar.FieldByName('sosyal1_yanlis').AsInteger := tablo_sinavlar.FieldByName('tarih1_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('cografya_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('felsefe_yanlis').AsInteger;
//    tablo_sinavlar.FieldByName('matematik1_dogru').AsInteger := tablo_sinavlar.FieldByName('cebir1_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('geometri1_dogru').AsInteger;
//    tablo_sinavlar.FieldByName('matematik1_yanlis').AsInteger := tablo_sinavlar.FieldByName('cebir1_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('geometri1_yanlis').AsInteger;
//    tablo_sinavlar.FieldByName('fen1_dogru').AsInteger := tablo_sinavlar.FieldByName('fizik1_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('kimya1_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('biyoloji1_dogru').AsInteger;
//    tablo_sinavlar.FieldByName('fen1_yanlis').AsInteger := tablo_sinavlar.FieldByName('fizik1_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('kimya1_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('biyoloji1_yanlis').AsInteger;
}
    tablo_sinavlar.FieldByName('tarih1_net').AsFloat := tablo_sinavlar.fieldbyname('tarih1_dogru').asinteger - (tablo_sinavlar.fieldbyname('tarih1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('cografya_net').AsFloat :=tablo_sinavlar.fieldbyname('cografya_dogru').asinteger - (tablo_sinavlar.fieldbyname('cografya_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('felsefe_net').AsFloat := tablo_sinavlar.fieldbyname('felsefe_dogru').asinteger - (tablo_sinavlar.fieldbyname('felsefe_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('cebir1_net').AsFloat := tablo_sinavlar.fieldbyname('cebir1_dogru').asinteger - (tablo_sinavlar.fieldbyname('cebir1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('geometri1_net').AsFloat := tablo_sinavlar.fieldbyname('geometri1_dogru').asinteger - (tablo_sinavlar.fieldbyname('geometri1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('fizik1_net').AsFloat := tablo_sinavlar.fieldbyname('fizik1_dogru').asinteger - (tablo_sinavlar.fieldbyname('fizik1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('kimya1_net').AsFloat := tablo_sinavlar.fieldbyname('kimya1_dogru').asinteger - (tablo_sinavlar.fieldbyname('kimya1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('biyoloji1_net').AsFloat := tablo_sinavlar.fieldbyname('biyoloji1_dogru').asinteger - (tablo_sinavlar.fieldbyname('biyoloji1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
//2.bölüm
{
    tablo_sinavlar.FieldByName('edebiyatsosyal_dogru').AsInteger := tablo_sinavlar.FieldByName('edebiyat_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('turkiyecografyasi_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('psikoloji_dogru').AsInteger;
//    tablo_sinavlar.FieldByName('edebiyatsosyal_yanlis').AsInteger := tablo_sinavlar.FieldByName('edebiyat_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('turkiyecografyasi_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('psikoloji_yanlis').AsInteger;
//    tablo_sinavlar.FieldByName('sosyal2_dogru').AsInteger := tablo_sinavlar.FieldByName('tarih2_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('ulkelercografyasi_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('sosyoloji_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('mantik_dogru').AsInteger;
//    tablo_sinavlar.FieldByName('sosyal2_yanlis').AsInteger := tablo_sinavlar.FieldByName('tarih2_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('ulkelercografyasi_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('sosyoloji_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('mantik_yanlis').AsInteger;
//    tablo_sinavlar.FieldByName('matematik2_dogru').AsInteger := tablo_sinavlar.FieldByName('cebir2_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('geometri2_dogru').AsInteger;
//    tablo_sinavlar.FieldByName('matematik2_yanlis').AsInteger := tablo_sinavlar.FieldByName('cebir2_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('geometri2_yanlis').AsInteger;
//    tablo_sinavlar.FieldByName('fen2_dogru').AsInteger := tablo_sinavlar.FieldByName('fizik2_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('kimya2_dogru').AsInteger
                                                            +tablo_sinavlar.FieldByName('biyoloji2_dogru').AsInteger;
//    tablo_sinavlar.FieldByName('fen2_yanlis').AsInteger := tablo_sinavlar.FieldByName('fizik2_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('kimya2_yanlis').AsInteger
                                                            +tablo_sinavlar.FieldByName('biyoloji2_yanlis').AsInteger;
}
    tablo_sinavlar.FieldByName('edebiyat_net').AsFloat := tablo_sinavlar.fieldbyname('edebiyat_dogru').asinteger - (tablo_sinavlar.fieldbyname('edebiyat_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('turkiyecografyasi_net').AsFloat := tablo_sinavlar.fieldbyname('turkiyecografyasi_dogru').asinteger - (tablo_sinavlar.fieldbyname('turkiyecografyasi_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('psikoloji_net').AsFloat := tablo_sinavlar.fieldbyname('psikoloji_dogru').asinteger - (tablo_sinavlar.fieldbyname('psikoloji_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('tarih2_net').AsFloat := tablo_sinavlar.fieldbyname('tarih2_dogru').asinteger - (tablo_sinavlar.fieldbyname('tarih2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('ulkelercografyasi_net').AsFloat :=tablo_sinavlar.fieldbyname('ulkelercografyasi_dogru').asinteger - (tablo_sinavlar.fieldbyname('ulkelercografyasi_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('sosyoloji_net').AsFloat := tablo_sinavlar.fieldbyname('sosyoloji_dogru').asinteger - (tablo_sinavlar.fieldbyname('sosyoloji_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('mantik_net').AsFloat := tablo_sinavlar.fieldbyname('mantik_dogru').asinteger - (tablo_sinavlar.fieldbyname('mantik_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('cebir2_net').AsFloat := tablo_sinavlar.fieldbyname('cebir2_dogru').asinteger - (tablo_sinavlar.fieldbyname('cebir2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('geometri2_net').AsFloat := tablo_sinavlar.fieldbyname('geometri2_dogru').asinteger - (tablo_sinavlar.fieldbyname('geometri2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('fizik2_net').AsFloat := tablo_sinavlar.fieldbyname('fizik2_dogru').asinteger - (tablo_sinavlar.fieldbyname('fizik2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('kimya2_net').AsFloat := tablo_sinavlar.fieldbyname('kimya2_dogru').asinteger - (tablo_sinavlar.fieldbyname('kimya2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('biyoloji2_net').AsFloat := tablo_sinavlar.fieldbyname('biyoloji2_dogru').asinteger - (tablo_sinavlar.fieldbyname('biyoloji2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
//toplam doðru ve yanlis.
    tablo_sinavlar.FieldByName('toplam_dogru').AsInteger := tablo_sinavlar.fieldbyname('turkce_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('sosyal1_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('matematik1_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('fen1_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('edebiyatsosyal_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('sosyal2_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('matematik2_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('fen2_dogru').asinteger
                                               +tablo_sinavlar.fieldbyname('ingilizce_dogru').asinteger;
    tablo_sinavlar.FieldByName('toplam_yanlis').AsInteger := tablo_sinavlar.fieldbyname('turkce_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('sosyal1_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('matematik1_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('fen1_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('edebiyatsosyal_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('sosyal2_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('matematik2_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('fen2_yanlis').asinteger
                                               +tablo_sinavlar.fieldbyname('ingilizce_yanlis').asinteger;
    TUR := tablo_sinavlar.fieldbyname('turkce_dogru').asinteger - (tablo_sinavlar.fieldbyname('turkce_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    SOS1 := tablo_sinavlar.fieldbyname('sosyal1_dogru').asinteger-(tablo_sinavlar.fieldbyname('sosyal1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    MAT1 := tablo_sinavlar.fieldbyname('matematik1_dogru').asinteger-(tablo_sinavlar.fieldbyname('matematik1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    FEN1 := tablo_sinavlar.fieldbyname('fen1_dogru').asinteger-(tablo_sinavlar.fieldbyname('fen1_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    EDSOS := tablo_sinavlar.fieldbyname('edebiyatsosyal_dogru').asinteger-(tablo_sinavlar.fieldbyname('edebiyatsosyal_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    SOS2 := tablo_sinavlar.fieldbyname('sosyal2_dogru').asinteger-(tablo_sinavlar.fieldbyname('sosyal2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    MAT2 := tablo_sinavlar.fieldbyname('matematik2_dogru').asinteger-(tablo_sinavlar.fieldbyname('matematik2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    FEN2 :=tablo_sinavlar.fieldbyname('fen2_dogru').asinteger-(tablo_sinavlar.fieldbyname('fen2_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    ING := tablo_sinavlar.fieldbyname('ingilizce_dogru').asinteger-(tablo_sinavlar.fieldbyname('ingilizce_yanlis').asinteger/tablo_formul.fieldbyname('yanlis_dogru_orani').asinteger);
    tablo_sinavlar.FieldByName('turkce_net').AsFloat := TUR;
    tablo_sinavlar.FieldByName('sosyal1_net').AsFloat := SOS1;
    tablo_sinavlar.FieldByName('matematik1_net').AsFloat := MAT1;
    tablo_sinavlar.FieldByName('fen1_net').AsFloat := FEN1;
    tablo_sinavlar.FieldByName('sosyal2_net').AsFloat := SOS2;
    tablo_sinavlar.FieldByName('edebiyatsosyal_net').AsFloat := EDSOS;
    tablo_sinavlar.FieldByName('matematik2_net').AsFloat := MAT2;
    tablo_sinavlar.FieldByName('fen2_net').AsFloat := FEN2;
    tablo_sinavlar.FieldByName('ingilizce_net').AsFloat := ING;
    hesap1.Formula := tablo_formul.fieldbyname('formul_1').Text;
    hesap2.Formula := tablo_formul.fieldbyname('formul_2').Text;
    hesap3.Formula := tablo_formul.fieldbyname('formul_3').Text;
    hesap4.Formula := tablo_formul.fieldbyname('formul_4').Text;
    hesap5.Formula := tablo_formul.fieldbyname('formul_5').Text;
    hesap6.Formula := tablo_formul.fieldbyname('formul_6').Text;
    tablo_sinavlar.FieldByName('toplam_net').AsFloat := TUR+SOS1+MAT1+FEN1+EDSOS+SOS2+MAT2+FEN2+ING;
    tablo_sinavlar.FieldByName('puan_1').AsFloat := hesap1.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2,ING]);
    tablo_sinavlar.FieldByName('puan_2').AsFloat := hesap2.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2,ING]);
    tablo_sinavlar.FieldByName('puan_3').AsFloat := hesap3.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2,ING]);
    tablo_sinavlar.FieldByName('puan_4').AsFloat := hesap4.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2,ING]);
    tablo_sinavlar.FieldByName('puan_5').AsFloat := hesap5.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2,ING]);
    tablo_sinavlar.FieldByName('puan_6').AsFloat := hesap6.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2,ING]);
//Sýnýf bilgisi güncelleme
    if (CkbSinifGuncelle.Checked = true) then
      if (tablo_sinavlar.FieldByName('ogr_no').AsInteger > 9) then
      begin
        TbSinifBilgisi.Close;
        TbSinifBilgisi.Params[0].Text := tablo_sinavlar.fieldbyname('donemi').Text;
        TbSinifBilgisi.Params[1].AsInteger := tablo_sinavlar.fieldbyname('ogr_no').AsInteger;
        TbSinifBilgisi.Open;
        tablo_sinavlar.FieldByName('sinifi').Text := TbSinifBilgisisinifi.Text;
     end
     else
        tablo_sinavlar.FieldByName('sinifi').Text := 'Dýþardan';
    tablo_sinavlar.Post;
    tablo_sinavlar.Next;
    durum.Position := durum.Position+1;
    durum.Refresh;
  end;
//Puanlara göre dereceler bulunuyor
  for j := 1 to 6 do
  begin
    islemler.Items.Add('   - Puan ' + inttostr(j) + ' `e göre dereceler bulunuyor ...');
    islemler.Refresh;
    islemler.Selected[islemler.Count-1] := true;
    TbSiralamalar.Close;
    TbSiralamalar.SQL.Clear;
    TbSiralamalar.SQL.Add('SET @RowId := 0;');
    TbSiralamalar.ExecSQL;
    TbSiralamalar.SQL.Clear;
    TbSiralamalar.SQL.Add('update sinavsonuc set derece_' + inttostr(j) + '=(select @RowId := @RowId + 1)');
    TbSiralamalar.SQL.Add('where sinav_no = '+ tablo_sinavsinav_no.Text +' order by puan_' + inttostr(j) + ' desc;');
    TbSiralamalar.ExecSQL;
    durum.Position := durum.Position + (durum.Properties.Max/13);
    durum.Refresh;
  end;
//Local derece
  tablo_sinavlar.Close;
  tablo_sinavlar.SQL.Clear;
  tablo_sinavlar.SQL.Add('select distinct sinifi from sinavsonuc where sinav_no=:parmemetre');
  tablo_sinavlar.Params[0].Text := tablo_sinav.FieldByName('sinav_no').Text;
  tablo_sinavlar.Open;
  tablo_sinavlar.First;
  siniflar := TStringList.Create;
  while tablo_sinavlar.Eof = False do
  begin
    siniflar.Add(tablo_sinavlar.fieldbyname('sinifi').Text);
    tablo_sinavlar.Next;
  end;
  for j := 1 to 6 do
  begin
    islemler.Items.Add('   - Puan ' + inttostr(j) + ' `e göre lokal dereceler bulunuyor ...');
    islemler.Refresh;
    islemler.Selected[islemler.Count-1] := true;
    for i := 0 to siniflar.Count - 1 do
    begin
      TbSiralamalar.Close;
      TbSiralamalar.SQL.Clear;
      TbSiralamalar.SQL.Add('SET @RowId := 0;');
      TbSiralamalar.ExecSQL;
      TbSiralamalar.SQL.Clear;
      TbSiralamalar.SQL.Add('update sinavsonuc set derece_local_' + inttostr(j) + '=(select @RowId := @RowId + 1)');
      TbSiralamalar.SQL.Add('where sinav_no = '+ tablo_sinavsinav_no.Text + ' and sinifi=' + QuotedStr(siniflar.Strings[i]) + ' order by puan_' + inttostr(j) + ' desc;');
      TbSiralamalar.ExecSQL;
    end;
    durum.Position := durum.Position + (durum.Properties.Max/13);
    durum.Refresh;
  end;
  siniflar.Free;
  islemler.Items.Add('   - Sýralama iþlemleri bitti.');
  islemler.Selected[islemler.Count-1] := true;
end;

procedure Tfr_sinav_degerlendirme.tablo_sinavBeforeDelete(
  DataSet: TDataSet);
begin
  tablo_sinavlar.close;
  tablo_sinavlar.SQL.Clear;
  tablo_sinavlar.SQL.Add('delete from sinavsonuc where sinav_no='+tablo_sinav.fieldbyname('sinav_no').Text);
  tablo_sinavlar.ExecSQL;
end;

procedure Tfr_sinav_degerlendirme.tablo_sinavAfterScroll(
  DataSet: TDataSet);
begin
  tablo_formul.Locate('aciklama',VarArrayOf([tablo_sinavturu.Text]),[loCaseInsensitive]);
end;

end.
