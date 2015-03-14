unit DataAktarim;

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
  cxLookAndFeelPainters, cxButtons, cxSpinEdit;

type
  TFrDataAktarim = class(TForm)
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
    Label1: TLabel;
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
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    TxSaBas: TcxSpinEdit;
    TxSaUz: TcxSpinEdit;
    TxNoBas: TcxSpinEdit;
    TxNoUz: TcxSpinEdit;
    TxTurkceBas: TcxSpinEdit;
    TxTurkceUz: TcxSpinEdit;
    TxSos1Bas: TcxSpinEdit;
    TxSos1Uz: TcxSpinEdit;
    TxMat1Bas: TcxSpinEdit;
    TxMat1Uz: TcxSpinEdit;
    TxFen1Bas: TcxSpinEdit;
    TxFen1Uz: TcxSpinEdit;
    TxKt: TcxSpinEdit;
    TxEdSosBas: TcxSpinEdit;
    TxEdSosUz: TcxSpinEdit;
    TxSos2Bas: TcxSpinEdit;
    TxSos2Uz: TcxSpinEdit;
    TxMat2Bas: TcxSpinEdit;
    TxMat2Uz: TcxSpinEdit;
    TxFen2Bas: TcxSpinEdit;
    TxFen2Uz: TcxSpinEdit;
    TxIngBas: TcxSpinEdit;
    TxIngUz: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tx_donemiClick(Sender: TObject);
    procedure tx_donemiKeyPress(Sender: TObject; var Key: Char);
    procedure bt_sonucacClick(Sender: TObject);
    procedure bt_sinav_secClick(Sender: TObject);
    procedure tx_cpadetExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure adsoyadayir;
var
  FrDataAktarim: TFrDataAktarim;
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

procedure TFrDataAktarim.FormCreate(Sender: TObject);
var
  i: integer;
begin
  bt_sinav_secClick(bt_sinav_sec);
  tx_donemi.properties.Items := Donemler;
  tx_donemi.Text := AktifDonem;
  for i := 0 to ComponentCount-1 do
    if Components[i].Tag = 1 then
      TcxSpinEdit(Components[i]).Value := StrToInt(reg_oku(Components[i].Name));
end;

procedure TFrDataAktarim.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].Tag = 1 then
      reg_yaz(Components[i].Name, TcxSpinEdit(Components[i]).Value);
  end;
  action := caFree;
end;

procedure TFrDataAktarim.tx_donemiClick(Sender: TObject);
begin
 t_ogr.Close;
 t_ogr.SQL.Clear;
 t_ogr.SQL.Add('select donemi,ogr_no,sinifi,adi,soyadi,concat(adi,'' '',soyadi) as adsoyad from ogrenciler where donemi='''+tx_donemi.Text+''' order by adsoyad');
 t_ogr.Open;
end;

procedure TFrDataAktarim.tx_donemiKeyPress(Sender: TObject;
  var Key: Char);
begin
  tx_donemiClick(tx_donemi);
end;

procedure TFrDataAktarim.bt_sonucacClick(Sender: TObject);
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
  if strtoint(tx_cpadet.Text)>2 then
  begin
    MessageDlg('Bu program þimdilik en fazla 2 kitapçýklý sistemi desteklemektedir.', mtWarning, [mbOK], 0);
    exit;
  end;
  if dosya.Execute = true then
  begin
//soyadý
    sabas:= TxSaBas.Value;
    sauz := TxSaUz.Value;
//kitapçýk
    kt := TxKt.Value;
//ogrno
    nobas := TxNoBas.Value;
    nouz := TxNoUz.Value;
//cevap
    cpturkcebas := TxTurkceBas.Value;
    cpturkceuz := TxTurkceUz.Value;
    cpsos1bas := TxSos1Bas.Value;
    cpsos1uz := TxSos1Uz.Value;
    cpmat1bas := TxMat1Bas.Value;
    cpmat1uz := TxMat1Uz.Value;
    cpfen1bas := TxFen1Bas.Value;
    cpfen1uz := TxFen1Uz.Value;
    cpedsosbas := TxEdSosBas.Value;
    cpedsosuz := TxEdSosUz.Value;
    cpsos2bas := TxSos2Bas.Value;
    cpsos2uz := TxSos2Uz.Value;
    cpmat2bas := TxMat2Bas.Value;
    cpmat2uz := TxMat2Uz.Value;
    cpfen2bas := TxFen2Bas.Value;
    cpfen2uz := TxFen2Uz.Value;
    cpingbas := TxIngBas.Value;
    cpinguz := TxIngUz.Value;
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
//    t_ogr.close;
//    t_sinavtanim.Close;
    t_sinavsonuc.Close;
    messagedlg('Aktarým iþlemi baþarýyla tamamlandý.', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrDataAktarim.bt_sinav_secClick(Sender: TObject);
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

procedure TFrDataAktarim.tx_cpadetExit(Sender: TObject);
begin
 if trim(tx_cpadet.Text) = '' then tx_cpadet.Text := '0';
end;

end.
