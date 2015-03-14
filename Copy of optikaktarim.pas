unit optikaktarim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection,Registry, DB, ADODB, StdCtrls, Buttons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, ExtCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,strutils,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBCtrls, cxCheckBox,
  cxLookAndFeelPainters, cxButtons;

type
  Tfr_optikaktarim = class(TForm)
    data_mdb: TADOConnection;
    dosya: TOpenDialog;
    t_sinavtanim: TZQuery;
    t_sinavsonuc: TZQuery;
    t_ogr: TZReadOnlyQuery;
    t_ogrdonemi: TStringField;
    t_ogrogr_no: TIntegerField;
    t_ogrsinifi: TStringField;
    t_ogradi: TStringField;
    t_ogrsoyadi: TStringField;
    t_ogradsoyad: TStringField;
    t_oku: TZReadOnlyQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    t_sinavsonucsinav_no: TIntegerField;
    t_sinavsonucsinifi: TStringField;
    t_sinavsonucdonemi: TStringField;
    t_sinavsonucogr_no: TIntegerField;
    t_sinavsonucadi: TStringField;
    t_sinavsonucsoyadi: TStringField;
    t_sinavsonucturkce_dogru: TIntegerField;
    t_sinavsonucturkce_yanlis: TIntegerField;
    t_sinavsonuctarih1_dogru: TSmallintField;
    t_sinavsonuctarih1_yanlis: TSmallintField;
    t_sinavsonuccografya_dogru: TSmallintField;
    t_sinavsonuccografya_yanlis: TSmallintField;
    t_sinavsonucfelsefe_dogru: TSmallintField;
    t_sinavsonucfelsefe_yanlis: TSmallintField;
    t_sinavsonucsosyal1_dogru: TIntegerField;
    t_sinavsonucsosyal1_yanlis: TIntegerField;
    t_sinavsonuccebir1_dogru: TSmallintField;
    t_sinavsonuccebir1_yanlis: TSmallintField;
    t_sinavsonucgeometri1_dogru: TSmallintField;
    t_sinavsonucgeometri1_yanlis: TSmallintField;
    t_sinavsonucmatematik1_dogru: TIntegerField;
    t_sinavsonucmatematik1_yanlis: TIntegerField;
    t_sinavsonucfizik1_dogru: TSmallintField;
    t_sinavsonucfizik1_yanlis: TSmallintField;
    t_sinavsonuckimya1_dogru: TSmallintField;
    t_sinavsonuckimya1_yanlis: TSmallintField;
    t_sinavsonucbiyoloji1_dogru: TSmallintField;
    t_sinavsonucbiyoloji1_yanlis: TSmallintField;
    t_sinavsonucfen1_dogru: TIntegerField;
    t_sinavsonucfen1_yanlis: TIntegerField;
    t_sinavsonucedebiyat_dogru: TIntegerField;
    t_sinavsonucedebiyat_yanlis: TIntegerField;
    t_sinavsonucturkiyecografyasi_dogru: TIntegerField;
    t_sinavsonucturkiyecografyasi_yanlis: TIntegerField;
    t_sinavsonucpsikoloji_dogru: TIntegerField;
    t_sinavsonucpsikoloji_yanlis: TIntegerField;
    t_sinavsonucedebiyatsosyal_dogru: TIntegerField;
    t_sinavsonucedebiyatsosyal_yanlis: TIntegerField;
    t_sinavsonuctarih2_dogru: TIntegerField;
    t_sinavsonuctarih2_yanlis: TIntegerField;
    t_sinavsonuculkelercografyasi_dogru: TIntegerField;
    t_sinavsonuculkelercografyasi_yanlis: TIntegerField;
    t_sinavsonucsosyoloji_dogru: TIntegerField;
    t_sinavsonucsosyoloji_yanlis: TIntegerField;
    t_sinavsonucmantik_dogru: TIntegerField;
    t_sinavsonucmantik_yanlis: TIntegerField;
    t_sinavsonucsosyal2_dogru: TIntegerField;
    t_sinavsonucsosyal2_yanlis: TIntegerField;
    t_sinavsonuccebir2_dogru: TIntegerField;
    t_sinavsonuccebir2_yanlis: TIntegerField;
    t_sinavsonucgeometri2_dogru: TIntegerField;
    t_sinavsonucgeometri2_yanlis: TIntegerField;
    t_sinavsonucmatematik2_dogru: TIntegerField;
    t_sinavsonucmatematik2_yanlis: TIntegerField;
    t_sinavsonucfizik2_dogru: TIntegerField;
    t_sinavsonucfizik2_yanlis: TIntegerField;
    t_sinavsonuckimya2_dogru: TIntegerField;
    t_sinavsonuckimya2_yanlis: TIntegerField;
    t_sinavsonucbiyoloji2_dogru: TIntegerField;
    t_sinavsonucbiyoloji2_yanlis: TIntegerField;
    t_sinavsonucfen2_dogru: TIntegerField;
    t_sinavsonucfen2_yanlis: TIntegerField;
    t_sinavsonuctoplam_dogru: TIntegerField;
    t_sinavsonuctoplam_yanlis: TIntegerField;
    t_sinavsonuckitapcik: TStringField;
    tablo_formtur: TADOTable;
    tablo_formturform_no: TAutoIncField;
    tablo_formturform_name: TWideStringField;
    tablo_formturform_desc: TMemoField;
    ara_formtur: TDataSource;
    tablo_alanlar: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    tx_cpadet: TcxTextEdit;
    t_sinavsonuccevapturkce: TStringField;
    t_sinavsonuccevapsos1: TStringField;
    t_sinavsonuccevapmat1: TStringField;
    t_sinavsonuccevapfen1: TStringField;
    t_sinavsonuccevapedsos: TStringField;
    t_sinavsonuccevapsos2: TStringField;
    t_sinavsonuccevapmat2: TStringField;
    t_sinavsonuccevapfen2: TStringField;
    Label7: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    tx_matsay: TcxTextEdit;
    tx_turkcesay: TcxTextEdit;
    Label9: TLabel;
    cb_formtur: TcxComboBox;
    ck_soru_sayilari: TcxCheckBox;
    bt_sinav_sec: TcxButton;
    GroupBox2: TGroupBox;
    lb_baslik: TLabel;
    lb_icerik: TLabel;
    t_sinavtanimsinav_no: TIntegerField;
    t_sinavtanimturu: TStringField;
    t_sinavtanimsinav_tarihi: TDateField;
    t_sinavtanimsinav_adi: TStringField;
    t_sinavtanimturkce_soru_sayisi: TSmallintField;
    t_sinavtanimtarih1_soru_sayisi: TSmallintField;
    t_sinavtanimcografya_soru_sayisi: TSmallintField;
    t_sinavtanimfelsefe_soru_sayisi: TSmallintField;
    t_sinavtanimsosyal1_soru_sayisi: TSmallintField;
    t_sinavtanimcebir1_soru_sayisi: TSmallintField;
    t_sinavtanimgeometri1_soru_sayisi: TSmallintField;
    t_sinavtanimmatematik1_soru_sayisi: TSmallintField;
    t_sinavtanimmatematik2_soru_sayisi: TSmallintField;
    t_sinavtanimfizik1_soru_sayisi: TSmallintField;
    t_sinavtanimkimya1_soru_sayisi: TSmallintField;
    t_sinavtanimbiyoloji1_soru_sayisi: TSmallintField;
    t_sinavtanimfen1_soru_sayisi: TSmallintField;
    t_sinavtanimedebiyat_soru_sayisi: TSmallintField;
    t_sinavtanimturkiyecografyasi_soru_sayisi: TSmallintField;
    t_sinavtanimpsikoloji_soru_sayisi: TSmallintField;
    t_sinavtanimedebiyatsosyal_soru_sayisi: TSmallintField;
    t_sinavtanimtarih2_soru_sayisi: TSmallintField;
    t_sinavtanimulkelercografyasi_soru_sayisi: TSmallintField;
    t_sinavtanimsosyoloji_soru_sayisi: TSmallintField;
    t_sinavtanimmantik_soru_sayisi: TSmallintField;
    t_sinavtanimsosyal2_soru_sayisi: TSmallintField;
    t_sinavtanimcebir2_soru_sayisi: TSmallintField;
    t_sinavtanimgeometri2_soru_sayisi: TSmallintField;
    t_sinavtanimfizik2_soru_sayisi: TSmallintField;
    t_sinavtanimkimya2_soru_sayisi: TSmallintField;
    t_sinavtanimbiyoloji2_soru_sayisi: TSmallintField;
    t_sinavtanimfen2_soru_sayisi: TSmallintField;
    t_sinavtanimAturkce: TStringField;
    t_sinavtanimAsos1: TStringField;
    t_sinavtanimAmat1: TStringField;
    t_sinavtanimAfen1: TStringField;
    t_sinavtanimAedsos: TStringField;
    t_sinavtanimAsos2: TStringField;
    t_sinavtanimAmat2: TStringField;
    t_sinavtanimAfen2: TStringField;
    t_sinavtanimBturkce: TStringField;
    t_sinavtanimBsos1: TStringField;
    t_sinavtanimBmat1: TStringField;
    t_sinavtanimBfen1: TStringField;
    t_sinavtanimBedsos: TStringField;
    t_sinavtanimBsos2: TStringField;
    t_sinavtanimBmat2: TStringField;
    t_sinavtanimBfen2: TStringField;
    tx_donemi: TcxComboBox;
    bt_sonucac: TcxButton;
    t_sinavtanimingilizce_soru_sayisi: TSmallintField;
    t_sinavtanimAing: TStringField;
    t_sinavtanimBing: TStringField;
    t_sinavsonucingilizce_dogru: TIntegerField;
    t_sinavsonucingilizce_yanlis: TIntegerField;
    t_sinavsonuccevaping: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tx_donemiClick(Sender: TObject);
    procedure tx_donemiKeyPress(Sender: TObject; var Key: Char);
    procedure bt_sonucacClick(Sender: TObject);
    procedure cb_formturPropertiesChange(Sender: TObject);
    procedure ck_soru_sayilariClick(Sender: TObject);
    procedure bt_sinav_secClick(Sender: TObject);
    procedure tx_cpadetExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure adsoyadayir;
var
  fr_optikaktarim: Tfr_optikaktarim;
var
 ogrno,oogrno,ogrno2, SinavNo:integer;
 AD,SOYAD,adi,soyadi,sinifi,oadi,osoyadi,adi2,soyadi2,sinifi2:string;

implementation
uses functionlar, optikogrsec, optikogrvar,veritabani,AnaForm, sinav_arama;
{$R *.dfm}

procedure adsoyadayir;
var
i:integer;
begin
 if (AD='') and (SOYAD='') then
 begin
  adi:='';
  soyadi:='';
  exit;
 end;
 if SOYAD = '' then
 begin
  if pos(' ',AD)=0 then
  begin
   adi:= AD;
   soyadi:='';
  end;
  for i:= 1 to length(AD)-1 do
  begin
   if AD[i]= ' ' then
   begin
    adi := bkmetin(rightstr(AD,length(AD)-i),3);
    soyadi := bkmetin(leftstr(AD,i-1),1);
    break;
   end;
  end;
 end
 else
 begin
  adi := bkmetin(AD,3);
  soyadi := SOYAD;
 end;
end;

procedure Tfr_optikaktarim.FormCreate(Sender: TObject);
begin
  bt_sinav_secClick(bt_sinav_sec);
  tx_donemi.properties.Items := Donemler;
  tx_donemi.Text := AktifDonem;
  data_mdb.Open;
  tablo_formtur.Open;
  cb_formtur.Properties.Items.Clear;
  while tablo_formtur.Eof=false do
  begin
    cb_formtur.Properties.Items.Add(tablo_formturform_name.Text);
    tablo_formtur.Next;
  end;
end;

procedure Tfr_optikaktarim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tablo_alanlar.Close;
  tablo_formtur.Close;
  data_mdb.Close;
  action := caFree;
end;

procedure Tfr_optikaktarim.tx_donemiClick(Sender: TObject);
begin
 t_ogr.Close;
 t_ogr.SQL.Clear;
 t_ogr.SQL.Add('select donemi,ogr_no,sinifi,adi,soyadi,concat(adi,'' '',soyadi) as adsoyad from ogrenciler where donemi='''+tx_donemi.Text+''' order by adsoyad');
 t_ogr.Open;
end;

procedure Tfr_optikaktarim.tx_donemiKeyPress(Sender: TObject;
  var Key: Char);
begin
  tx_donemiClick(tx_donemi);
end;

procedure Tfr_optikaktarim.bt_sonucacClick(Sender: TObject);
var
  sonuc: TextFile;
  satir:string;
  sabas,sauz,nobas,nouz,kt:integer;
  cpturkcebas,cpturkceuz: integer;
  cpsos1bas,cpsos1uz: integer;
  cpmat1bas,cpmat1uz: integer;
  cpfen1bas,cpfen1uz: integer;
  cpedsosbas,cpedsosuz: integer;
  cpsos2bas,cpsos2uz: integer;
  cpmat2bas,cpmat2uz: integer;
  cpfen2bas,cpfen2uz: integer;
  cpingbas,cpinguz: integer;
  kayitvar:boolean;
  ara:variant;
  i:integer;
  label sildim,tekrar,uzerineekle;
begin
  if cb_formtur.Text='' then
  begin
    MessageDlg('Form tipini seçmelisiniz.', mtWarning, [mbOK], 0);
    exit;
  end;
  if strtoint(tx_cpadet.Text)>2 then
  begin
    MessageDlg('Bu program þimdilik en fazla 2 kitapçýklý sistemi desteklemektedir.', mtWarning, [mbOK], 0);
    exit;
  end;
  if dosya.Execute = true then
  begin
    tablo_alanlar.Close;
    tablo_alanlar.SQL.Clear;
    tablo_alanlar.SQL.Add('select group_name,group_order,col_count,row_count from Groups where form_no='+tablo_formturform_no.Text+' order by group_order');
    tablo_alanlar.Open;
//soyadý
    tablo_alanlar.Locate('group_name','SOYADIADI',[loCaseInsensitive]);
    sauz:=tablo_alanlar.fieldbyname('col_count').AsInteger;
    sabas:=0;
    tablo_alanlar.Prior;
    while tablo_alanlar.Bof=false do
    begin
      sabas:=sabas+tablo_alanlar.fieldbyname('col_count').AsInteger;
      tablo_alanlar.Prior;
    end;
    inc(sabas);
//kitapçýk
    tablo_alanlar.Locate('group_name','KITAPCIK',[loCaseInsensitive]);
    kt:=0;
    tablo_alanlar.Prior;
    while tablo_alanlar.Bof=false do
    begin
      kt:=kt+tablo_alanlar.fieldbyname('col_count').AsInteger;
      tablo_alanlar.Prior;
    end;
    inc(kt);
//ogrno
    tablo_alanlar.Locate('group_name','DERSHANENO',[loCaseInsensitive]);
    nouz:=tablo_alanlar.fieldbyname('col_count').AsInteger;
    nobas:=0;
    tablo_alanlar.Prior;
    while tablo_alanlar.Bof=false do
    begin
      nobas:=nobas+tablo_alanlar.fieldbyname('col_count').AsInteger;
      tablo_alanlar.Prior;
    end;
    inc(nobas);
//cevap
    cpedsosbas:=0;
    cpsos2bas:=0;
    cpmat2bas:=0;
    cpfen2bas:=0;
    cpingbas:=0;
    if Panel1.Visible=true then
    begin
      cpturkceuz:=strtoint(tx_turkcesay.Text);
      cpsos1uz:=90-cpturkceuz;
      cpmat1uz:=strtoint(tx_matsay.Text);
      cpfen1uz:=90-cpmat1uz;
      cpedsosuz:=0;
      cpsos2uz:=0;
      cpmat2uz:=0;
      cpfen2uz:=0;
      cpinguz:=0;
      tablo_alanlar.Locate('group_name','SOZ1',[loCaseInsensitive]);
      cpturkcebas:=0;
      tablo_alanlar.Prior;
      while tablo_alanlar.Bof=false do
      begin
        cpturkcebas:=cpturkcebas+tablo_alanlar.fieldbyname('col_count').AsInteger;
        tablo_alanlar.Prior;
      end;
      inc(cpturkcebas);
      cpsos1bas:=cpturkcebas+cpturkceuz;
      cpmat1bas:=cpsos1bas+cpsos1uz;
      cpfen1bas:=cpmat1bas+cpmat1uz;
    end
    else
    begin
      cpturkceuz:=0;
      cpsos1uz:=0;
      cpmat1uz:=0;
      cpfen1uz:=0;
      cpedsosuz:=0;
      cpsos2uz:=0;
      cpmat2uz:=0;
      cpfen2uz:=0;
      cpinguz:=0;
      tablo_alanlar.Locate('group_name','TURKCE',[loCaseInsensitive]);
      while tablo_alanlar.Eof=false do
      begin
        if tablo_alanlar.fieldbyname('group_name').Text='TURKCE' then
          cpturkceuz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='SOS1' then
          cpsos1uz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='MAT1' then
          cpmat1uz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='FEN1' then
          cpfen1uz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='EDSOS' then
          cpedsosuz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='SOS2' then
          cpsos2uz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='MAT2' then
          cpmat2uz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='FEN2' then
          cpfen2uz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        if tablo_alanlar.fieldbyname('group_name').Text='ING' then
          cpinguz:=tablo_alanlar.fieldbyname('row_count').AsInteger;
        tablo_alanlar.Next;
      end;
      tablo_alanlar.Locate('group_name','TURKCE',[loCaseInsensitive]);
      cpturkcebas:=0;
      tablo_alanlar.Prior;
      while tablo_alanlar.Bof=false do
      begin
        cpturkcebas:=cpturkcebas+tablo_alanlar.fieldbyname('col_count').AsInteger;
        tablo_alanlar.Prior;
      end;
     inc(cpturkcebas);
     cpsos1bas:=cpturkcebas+cpturkceuz;
     cpmat1bas:=cpsos1bas+cpsos1uz;
     cpfen1bas:=cpmat1bas+cpmat1uz;
     cpedsosbas:=cpfen1bas+cpfen1uz;
     cpsos2bas:=cpedsosbas+cpedsosuz;
     cpmat2bas:=cpsos2bas+cpsos2uz;
     cpfen2bas:=cpmat2bas+cpmat2uz;
     cpingbas:=cpfen1bas+cpfen1uz;

    end;
//kontrol
    if (MessageDlg(t_sinavtanimsinav_adi.Text+' isimli sýnavý aktarmak istediðize emin misiniz?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
      Exit;
    case MessageDlg('Aktarým iþlemine baþlanmadan önce, bu sýnava daha önce aktarýlmýþ öðrenciler silinsin mi?', mtWarning, [mbYes, mbNo, mbCancel], 0) of
      mrYes:
      begin
       t_oku.SQL.Clear;
       t_oku.SQL.Add('delete from sinavsonuc where sinav_no='+t_sinavtanimsinav_no.Text);
       t_oku.ExecSQL;
      end;
      mrCancel:
       Exit;
    end;
//kitapçýk doðru cevaplarý
    AssignFile(sonuc,dosya.FileName);
    Reset(sonuc);
    if strtoint(tx_cpadet.Text)>0 then
      t_sinavtanim.Edit;
    for i:=1 to strtoint(tx_cpadet.Text) do
    begin
      if EOF(sonuc) then
      begin
        MessageDlg('Sonuç dosyasýnda belirtmiþ olduðunuz kitapçýk adedi kadar kayýt bulunamadý!', mtError, [mbOK], 0);
        Exit;
      end;
      Readln(sonuc,satir);
// kitapçýk kontrolü
      while not (satir[kt] in ['A','B']) do
      begin
        satir[kt]:=upcase(inputbox('Kitapçýk Türü',inttostr(ogrno)+' numaralý '+adi+' '+soyadi+' kitapçýk türünü girmemiþ.'#13'Kitapçýk türünü giriniz.','A')[1]);
      end;
      t_sinavtanim.FieldByName(satir[kt]+'turkce').Text:=copy(satir,cpturkcebas,cpturkceuz);
      t_sinavtanim.FieldByName(satir[kt]+'sos1').Text:=copy(satir,cpsos1bas,cpsos1uz);
      t_sinavtanim.FieldByName(satir[kt]+'mat1').Text:=copy(satir,cpmat1bas,cpmat1uz);
      t_sinavtanim.FieldByName(satir[kt]+'fen1').Text:=copy(satir,cpfen1bas,cpfen1uz);
      t_sinavtanim.FieldByName(satir[kt]+'edsos').Text:=copy(satir,cpedsosbas,cpedsosuz);
      t_sinavtanim.FieldByName(satir[kt]+'sos2').Text:=copy(satir,cpsos2bas,cpsos2uz);
      t_sinavtanim.FieldByName(satir[kt]+'mat2').Text:=copy(satir,cpmat2bas,cpmat2uz);
      t_sinavtanim.FieldByName(satir[kt]+'fen2').Text:=copy(satir,cpfen2bas,cpfen2uz);
      t_sinavtanim.FieldByName(satir[kt]+'ing').Text:=copy(satir,cpingbas,cpinguz);
    end;
    if t_sinavtanim.State in [dsEdit, dsInsert] then t_sinavtanim.Post;
    t_sinavsonuc.Params[0].AsInteger := SinavNo;
    t_sinavsonuc.Open;
    t_ogr.Close;
    t_ogr.SQL.Clear;
    t_ogr.SQL.Add('select donemi,ogr_no,sinifi,adi,soyadi,concat(adi,'' '',soyadi) as adsoyad from ogrenciler where donemi='''+tx_donemi.Text+''' order by adsoyad');
    t_ogr.Open;
    while eof(sonuc)=false do
    begin
      Readln(sonuc,satir);
      AD:= trim(copy(satir,sabas,sauz));
      try
        ogrno:=strtoint(trim(copy(satir,nobas,nouz)));
      except
        ogrno:=0;
      end;
      oogrno:=ogrno;
      adsoyadayir;
      oadi:=adi;
      osoyadi:=soyadi;
      if ogrno = 3 then
      begin
        ogrno := 3;
        sinifi :='Dýþarýdan';
      end
      else
      begin
        ara:=t_ogr.Lookup('donemi;ogr_no',vararrayof([tx_donemi.Text,ogrno]),'adi;sinifi');
        if ((adi='') and (soyadi='')) or (varisnull(ara)=true) then
        begin
          application.CreateForm(Tfr_optikogrsec,fr_optikogrsec);
          if (ogrno=0) and (sinifi='0') then exit;
// öðrenci dýþardan deðil kodlama hatasý olabilir
        end
        else
        try
          adi := ara[0];
          sinifi := ara[1];
        except
        end;
      end;
// kitapçýk kontrolü
      while not (satir[kt] in ['A','B']) do
      begin
        satir[kt]:=upcase(inputbox('Kitapçýk Türü',inttostr(ogrno)+' numaralý '+adi+' '+soyadi+' kitapçýk türünü girmemiþ.'#13'Kitapçýk türünü giriniz.','A')[1]);
      end;
      t_sinavsonuc.insert;
      t_sinavsonucogr_no.asinteger := ogrno;
      t_sinavsonucadi.text := adi;
      t_sinavsonucsoyadi.text := soyadi;
      t_sinavsonucsinifi.text := sinifi;
      t_sinavsonucsinav_no.AsInteger := t_sinavtanimsinav_no.AsInteger;
      t_sinavsonucdonemi.Text := tx_donemi.text;
      t_sinavsonuckitapcik.Text:=satir[kt];
      t_sinavsonuccevapturkce.Text:= copy(satir,cpturkcebas,cpturkceuz);
      t_sinavsonuccevapsos1.Text:= copy(satir,cpsos1bas,cpsos1uz);
      t_sinavsonuccevapmat1.Text:= copy(satir,cpmat1bas,cpmat1uz);
      t_sinavsonuccevapfen1.Text:= copy(satir,cpfen1bas,cpfen1uz);
      t_sinavsonuccevapedsos.Text:= copy(satir,cpedsosbas,cpedsosuz);
      t_sinavsonuccevapsos2.Text:= copy(satir,cpsos2bas,cpsos2uz);
      t_sinavsonuccevapmat2.Text:= copy(satir,cpmat2bas,cpmat2uz);
      t_sinavsonuccevapfen2.Text:= copy(satir,cpfen2bas,cpfen2uz);
      t_sinavsonuccevaping.Text:= copy(satir,cpingbas,cpinguz);
tekrar:
      try
       t_sinavsonuc.Post;
      except
      begin
// bu kayýt daha önce kaydedilmiþmi?
       ogrno2:=t_sinavsonucogr_no.asinteger;
       adi2:=t_sinavsonucadi.text;
       soyadi2:=t_sinavsonucsoyadi.text;
       sinifi2:=t_sinavsonucsinifi.text;
       application.CreateForm(Tfr_optikogrvar,fr_optikogrvar);
       t_sinavsonucogr_no.asinteger := ogrno;
       t_sinavsonucadi.text := adi;
       t_sinavsonucsoyadi.text := soyadi;
       t_sinavsonucsinifi.text := sinifi;
      end;
      end;
      if t_sinavsonuc.State = dsinsert then goto tekrar;
    end;
    CloseFile(sonuc);
    tablo_alanlar.Close;
//    t_ogr.close;
//    t_sinavtanim.Close;
    t_sinavsonuc.Close;
    messagedlg('Aktarým iþlemi baþarýyla tamamlandý.', mtInformation, [mbOk], 0);
  end;
end;

procedure Tfr_optikaktarim.cb_formturPropertiesChange(Sender: TObject);
begin
  tablo_formtur.RecNo:= cb_formtur.ItemIndex+1;
end;

procedure Tfr_optikaktarim.ck_soru_sayilariClick(Sender: TObject);
begin
  if ck_soru_sayilari.Checked=true then
    Panel1.Visible:=true
  else
    Panel1.Visible:=false;
end;

procedure Tfr_optikaktarim.bt_sinav_secClick(Sender: TObject);
begin
  SecilenSinav := 0;
  application.CreateForm(Tfr_sinav_arama,fr_sinav_arama);
  if SecilenSinav = 0 then
  begin
    MessageDlg('Aktarým yapabilmek için bir sýnav seçmelisiniz.'+#13+#10+'Yeni sýnavlar tanýmlamak için Sýnavlar menüsü altýnda yer alan Sýnav Tanýmlarý ''ný kullanabilirsiniz.', mtError, [mbOK], 0);
    Close;
    Exit;
  end;
  SinavNo:=SecilenSinav;
  t_sinavtanim.close;
  t_sinavtanim.ParamByName('SinavNo').AsInteger:=SinavNo;
  t_sinavtanim.Open;
  lb_baslik.Caption:='Sýnav No:'#13#10'Sýnav Türü:'#13#10'Sýnav Tarihi:'#13#10'Sýnav Adý:';
  lb_icerik.Caption:=t_sinavtanimsinav_no.Text+#13+#10
                     +t_sinavtanimturu.Text+#13+#10
                     +t_sinavtanimsinav_tarihi.Text+#13+#10
                     +t_sinavtanimsinav_adi.Text+#13+#10;
end;

procedure Tfr_optikaktarim.tx_cpadetExit(Sender: TObject);
begin
 if trim(tx_cpadet.Text) = '' then tx_cpadet.Text := '0';
end;

end.
