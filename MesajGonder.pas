unit MesajGonder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit,
  cxDBRichEdit, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  StdCtrls, Buttons, ExtCtrls,ZDbcIntfs, cxPC, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxLookAndFeelPainters, cxButtons, cxFilterControl,
  cxDBFilterControl, cxExportGrid4Link, ShellAPI;

type
  TFrMesajGonder = class(TForm)
    tablo_mesaj: TZQuery;
    mn_hazir_mesajlar: TPopupMenu;
    tablo_mesajaciklama: TStringField;
    tablo_mesajmesaj: TStringField;
    sayfalar: TcxPageControl;
    sayfa_MesajGonder: TcxTabSheet;
    tx_mesaj: TcxRichEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bt_kaydet: TBitBtn;
    bt_farkli_kaydet: TBitBtn;
    bt_sil: TBitBtn;
    bt_temizle: TBitBtn;
    bt_hazir_mesajlar: TBitBtn;
    sayfa_alicilar: TcxTabSheet;
    bt_gonder: TBitBtn;
    mn_gonder: TPopupMenu;
    mn_gonder_sms: TMenuItem;
    mn_gonder_eposta: TMenuItem;
    mn_gonder_faks: TMenuItem;       
    bt_degiskenler: TBitBtn;
    tablo_alicilar: TZQuery;
    tablo_komutlar: TZQuery;
    tablo_komutlarid: TAutoIncField;
    tablo_komutlaraciklama: TStringField;
    tablo_komutlarkomut: TMemoField;
    ara_komutlar: TDataSource;
    gr_alicilarview: TcxGridDBTableView;
    gr_alicilarLevel1: TcxGridLevel;
    gr_alicilar: TcxGrid;
    ara_alicilar: TDataSource;
    mn_degiskenler: TPopupMenu;
    sp_bol: TcxSplitter;
    pn_dugmeler: TPanel;
    tablo_oku: TZQuery;
    tablo_iletisim: TZQuery;
    bt_kontor_bilgisi: TBitBtn;
    cxLabel1: TcxLabel;
    lb_uzunluk: TcxLabel;
    mn_grid: TcxGridPopupMenu;
    Label1: TLabel;
    pn_komut_filtre: TPanel;
    gr_komutlar: TcxGrid;
    gr_komutlar1: TcxGridDBTableView;
    gr_komutlar1id: TcxGridDBColumn;
    gr_komutlar1aciklama: TcxGridDBColumn;
    gr_komutlar1komut: TcxGridDBColumn;
    gr_komutlarLevel1: TcxGridLevel;
    filtre_genel: TcxDBFilterControl;
    bt_hazirla: TcxButton;
    bt_iptal: TcxButton;
    bt_raporla: TcxButton;
    StilDeposu: TcxStyleRepository;
    StilGSMYok: TcxStyle;
    StilYok: TcxStyle;
    bt_exceleaktar: TcxButton;
    dosya: TSaveDialog;
    t_zaman: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_hazir_mesajlarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mn_hazir_mesajlarClick(Sender: TObject);
    procedure mn_degiskenlerClick(Sender: TObject);
    procedure bt_kaydetClick(Sender: TObject);
    procedure bt_farkli_kaydetClick(Sender: TObject);
    procedure tx_mesajEditing(Sender: TObject; var CanEdit: Boolean);
    procedure bt_silClick(Sender: TObject);
    procedure bt_temizleClick(Sender: TObject);
    procedure bt_gonderClick(Sender: TObject);
    procedure bt_degiskenlerClick(Sender: TObject);
    procedure mn_gonder_smsClick(Sender: TObject);
    procedure bt_kontor_bilgisiClick(Sender: TObject);
    procedure alicilari_hazirla;
    procedure tx_mesajPropertiesChange(Sender: TObject);
    procedure bt_hazirlaClick(Sender: TObject);
    procedure bt_iptalClick(Sender: TObject);
    procedure bt_raporlaClick(Sender: TObject);
    procedure sayfa_alicilarShow(Sender: TObject);
    procedure gr_alicilarviewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure t_zamanTimer(Sender: TObject);
  private
    mesajyuklu: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMesajGonder: TFrMesajGonder;
const
  VK_CRLF: string = Chr(13) + Chr(10);//Enter karakteri
  VK_LF: Char = Chr(10);//LineFeed karakteri
  VK_SP: Char = Chr(32);//Space karakteri

  procedure gonder(id: array of integer);
  function SMSDonustur(mesaj:string):string;

implementation
uses veritabani, un_gorunum,SMSFonksiyonlari, genel_rapor_ekrani;
{$R *.dfm}

procedure TFrMesajGonder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (tx_mesaj.EditModified=true) and
    (MessageDlg('Yeni bir mesaj girdiniz yada mevcut bir mesajý deðiþtirdiniz.'+#13+#10+'Bu mesajý daha sonra kullanabilmek için kaydetmek ister misiniz?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    Action:= caNone;
    bt_kaydet.Click;
  end
  else
  begin
    Action:=caFree;
    tablo_alicilar.CancelUpdates;
  end;
end;

procedure TFrMesajGonder.bt_hazir_mesajlarClick(Sender: TObject);
begin
  mn_hazir_mesajlar.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TFrMesajGonder.FormShow(Sender: TObject);
var
  yeni:TMenuItem;
begin
  tablo_mesaj.Open;
  if tablo_mesaj.RecordCount>0 then bt_hazir_mesajlar.Enabled:=true;
  while tablo_mesaj.Eof=false do
  begin
    yeni:=TMenuItem.Create(mn_hazir_mesajlar);
    yeni.Caption:=tablo_mesajaciklama.Text;
    yeni.OnClick:= mn_hazir_mesajlarClick;
    mn_hazir_mesajlar.Items.Add(yeni);
    tablo_mesaj.Next;
  end;
  tablo_komutlar.Open;
end;

procedure TFrMesajGonder.mn_hazir_mesajlarClick(Sender: TObject);
var
  mesaj: string;
begin
  if (tx_mesaj.EditModified=true) then
  case MessageDlg('Yeni bir mesaj girdiniz yada deðiþiklik yaptýnýz. Mesajý kaydetmek istiyor musunuz?', mtWarning, [mbYes, mbNo, mbCancel], 0) of
  mrYes:
    bt_kaydet.Click;
  mrCancel:
    exit;
  end;
  mesaj:= TMenuItem(Sender).Caption;
  delete(mesaj,pos('&',mesaj),1);
  if tablo_mesaj.Locate('aciklama',VarArrayOf([mesaj]),[])=true then
  begin
    tx_mesaj.Lines.Clear;
    tx_mesaj.Lines.Add(tablo_mesajmesaj.Text);
    mesajyuklu:=true;
    bt_kaydet.Enabled:=false;
    bt_farkli_kaydet.Enabled:=true;
    bt_sil.Enabled:=true;
  end;
end;

procedure TFrMesajGonder.bt_kaydetClick(Sender: TObject);
begin
  if mesajyuklu=true then
  begin
    tablo_mesaj.Edit;
    tablo_mesajmesaj.Text:=tx_mesaj.Text;
    tablo_mesaj.Post;
    tx_mesaj.EditModified:=false;
    bt_farkli_kaydet.Enabled:=false;
    bt_kaydet.Enabled:=false;
  end
  else
    bt_farkli_kaydet.Click;
end;

procedure TFrMesajGonder.bt_farkli_kaydetClick(Sender: TObject);
var
  yeni:TMenuItem;
  aciklama:string;
begin
  aciklama:=InputBox('Açýklama','Mesaj için bir açýklama giriniz:','');
  if aciklama=''  then exit;
  tablo_mesaj.append;
  tablo_mesajaciklama.Text:= aciklama;
  tablo_mesajmesaj.Text:=tx_mesaj.text;
  try
    tablo_mesaj.Post;
  except
    on EZSQLException do MessageDlg('Bu isimde bir mesaj zaten mevcut!', mtWarning, [mbOK], 0);
  end;
  yeni:=TMenuItem.Create(mn_hazir_mesajlar);
  yeni.Caption:=tablo_mesajaciklama.Text;
  yeni.OnClick:= mn_hazir_mesajlarClick;
  mn_hazir_mesajlar.Items.Add(yeni);
  tx_mesaj.EditModified:=false;
  bt_kaydet.Enabled:=false;
  bt_sil.enabled:=true;
  mesajyuklu:=true;
end;

procedure TFrMesajGonder.tx_mesajEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  bt_kaydet.Enabled:=true;
  bt_farkli_kaydet.Enabled:=true;
end;

procedure TFrMesajGonder.bt_silClick(Sender: TObject);
var
 i:integer;
 degisken:string;
begin
  if mesajyuklu=false then exit;
  if (pos(tablo_mesajaciklama.text,'ÖSS Deneme Sýnavý,OKS Deneme Sýnavý,Devamsýzlýk Bildirimi,Geciken Borç Bildirimi')>0) and
    (MessageDlg(tablo_mesajaciklama.text+' isimli mesaj Dershane Otomasyonu''nun farklý bölümlerinden kullanýlmaktadýr.'+#13+#10+'Bu mesajý silmeniz ilgili bölümleri kullanmanýzý aksatabilir.'+#13+#10+'Yinede silmek ister misiniz?', mtWarning, [mbYes, mbNo], 0) = mrNo) then
    exit
  else
    if (MessageDlg(tablo_mesajaciklama.text+' isimli mesajý silmek istediðinizden emin misiniz?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
      exit;
  bt_sil.Enabled:=false;
  for i:=0 to mn_hazir_mesajlar.Items.Count-1 do
  begin
    degisken:= mn_hazir_mesajlar.Items.Items[i].Caption;
    delete(degisken,pos('&',degisken),1);
    if degisken=tablo_mesajaciklama.Text then
    begin
      mn_hazir_mesajlar.Items.Delete(i);
      break;
    end;
  end;
  tablo_mesaj.Delete;
  tx_mesaj.Lines.Clear;
  mesajyuklu:=false;
  bt_kaydet.Enabled:=false;
end;

procedure TFrMesajGonder.bt_temizleClick(Sender: TObject);
begin
  tx_mesaj.Lines.Clear;
  bt_kaydet.Enabled:=false;
  bt_farkli_kaydet.Enabled:=false;
end;

procedure TFrMesajGonder.bt_gonderClick(Sender: TObject);
begin
  mn_gonder.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TFrMesajGonder.alicilari_hazirla;
var
  i:integer;
  yeni:TMenuItem;
begin
  gr_alicilarview.ClearItems;
  gr_alicilarview.DataController.DataSource := nil;
//devamsýzlýktan ve borçdan çaðýrýrken tablo açýlmýyor.
  if tablo_alicilar.State = dsInactive then
    tablo_alicilar.Open;
  if (tablo_alicilar.FindField('gsm')=nil)
    and (tablo_alicilar.FindField('fax')=nil)
    and (tablo_alicilar.FindField('email')=nil) then
  begin
    MessageDlg('Çalýþtýrmýþ olduðunuz sorgu Eposta adresi, GSM veya Faks numarasý içermemektedir.', mtWarning, [mbOK], 0);
    tablo_alicilar.Close;
    bt_iptal.Click;
    exit;
  end;
  gr_alicilarview.DataController.DataSource := ara_alicilar;
  gr_alicilarview.DataController.CreateAllItems;
  bt_degiskenler.Enabled:=true;
  mn_degiskenler.Items.Clear;
  for i := 0 to gr_alicilarview.ColumnCount -1 do
  begin
    gr_alicilarview.Columns[i].Name := 'gr_alicilarDBTableView1'+gr_alicilarview.Columns[i].DataBinding.FieldName ;
// deðiþkenler popup'menuye
    yeni:=TMenuItem.Create(mn_degiskenler);
    yeni.Caption:=gr_alicilarview.Columns[i].DataBinding.FieldName;
    yeni.OnClick:= mn_degiskenlerClick;
    mn_degiskenler.Items.Add(yeni);
  end;
  fr_gorunum.sutun_basliklari(gr_alicilarview);
  gr_alicilarview.ApplyBestFit();
end;

procedure TFrMesajGonder.bt_degiskenlerClick(Sender: TObject);
begin
  mn_degiskenler.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TFrMesajGonder.mn_degiskenlerClick(Sender: TObject);
var
  mesaj,degisken:string;
  uzunluk,yer:integer;
begin
  degisken:= TMenuItem(Sender).Caption;
  delete(degisken,pos('&',degisken),1);
  mesaj:=tx_mesaj.Text;
  degisken:='{'+degisken+'}';
  uzunluk:=length(mesaj);
  if uzunluk=0 then
  begin
    mesaj:=degisken;
    yer:=0;
  end
  else
  begin
    if (tx_mesaj.SelStart<>1) and (mesaj[tx_mesaj.SelStart]<>' ') then
      degisken:=' '+degisken;
    yer:=tx_mesaj.SelStart;
    uzunluk:=uzunluk-(tx_mesaj.Lines.Count-1)*2;
    if (uzunluk+1<>tx_mesaj.SelStart) and (mesaj[tx_mesaj.SelStart+1]<>' ') then
      degisken:=degisken+' ';
    insert(degisken,mesaj,tx_mesaj.SelStart+1+(tx_mesaj.Lines.Count-1)*2);
  end;
  tx_mesaj.Text:= mesaj;
  bt_kaydet.Enabled:=true;
  tx_mesaj.SetFocus;
  tx_mesaj.SelStart:=yer+length(degisken);
end;

procedure Gonder(id: array of integer);
var
  gateway,username,sifre,originator,sql,lar:string;
  idler: WideString;
  xmlmesaj: WideString;
  i:integer;
begin
// mesaj ayarlarý
  if length(id)<1 then
  begin
    MessageDlg('Gönderecek mesaj yok!', mtError, [mbOK], 0);
    exit;
  end;
  FrMesajGonder.tablo_oku.Close;
  FrMesajGonder.tablo_oku.SQL.Clear;
  FrMesajGonder.tablo_oku.SQL.Add('select gateway,username,sifre,originator from ayarlar');
  FrMesajGonder.tablo_oku.Open;
  gateway:= FrMesajGonder.tablo_oku.fieldbyname('gateway').Text;
  username:= FrMesajGonder.tablo_oku.fieldbyname('username').Text;
  sifre:= FrMesajGonder.tablo_oku.fieldbyname('sifre').Text;
  originator:= FrMesajGonder.tablo_oku.fieldbyname('originator').Text;
  FrMesajGonder.tablo_oku.Close;
  FrMesajGonder.tablo_oku.SQL.Clear;
  for i:=0 to length(id)-1 do
    idler:=idler+inttostr(id[i])+',';
  idler:=copy(idler,1,length(idler)-1);
  idler:='('+idler+')';
  sql:='select konum,mesaj from iletisim where id in '+idler;
  FrMesajGonder.tablo_oku.SQL.Add(sql);
  FrMesajGonder.tablo_oku.Open;
  xmlmesaj:=         '<?xml version="1.0" encoding="iso-8859-9" ?>'+
                     '<message-context type="mmmgsd">'+
                     '<username>'+username+'</username>'+
                     '<password>'+sifre+'</password>'+
                     '<outbox-name>'+originator+'</outbox-name>';
  while FrMesajGonder.tablo_oku.Eof=false do
  begin
    xmlmesaj:=xmlmesaj+'<message>' +
                       '<gsmno>90' + FrMesajGonder.tablo_oku.fieldbyname('konum').Text+'</gsmno>'+
                       '<message-type>0</message-type>'+
                       '<text>' + FrMesajGonder.tablo_oku.fieldbyname('mesaj').Text+'</text>'+
                       '</message>';
    FrMesajGonder.tablo_oku.Next;
  end;
  xmlmesaj:=xmlmesaj+'</message-context>';
// artýk gönder
  sql := HTTPPost(gateway,xmlmesaj);
  while (sql='20') do
  begin
    if (MessageDlg('Mesaj'+lar+' iletilemedi. Tekrar denemek ister misiniz?', mtError, [mbYes, mbNo], 0) = mrNo) then break;
    sql:=HTTPPost(gateway,xmlmesaj); //05 xlm eksik, 10 mesaj gönderilemedi
  end;
  FrMesajGonder.tablo_oku.Close;
  if (copy(sql,1,2) = '00') then
  begin
    FrMesajGonder.tablo_oku.sql.Clear;
    FrMesajGonder.tablo_oku.SQL.Add('update iletisim set durumu=''Beklemede'',msgid='+QuotedStr(trim(copy(sql,4,length(sql)-3)))+' where id in '+idler);
    FrMesajGonder.tablo_oku.ExecSQL;
    MessageDlg('Mesaj'+lar+'ýnýz baþarýyla gönderildi.', mtInformation, [mbOK], 0);
  end
  else
    Raise Exception.Create('Gönderim onay raporu alýnamadý, tekrar göndermeyi deneyiniz.');
end;

procedure TFrMesajGonder.mn_gonder_smsClick(Sender: TObject);
var
  id: array of integer;
  gsmno,lar,mesaj,degisken,omesaj:string;
  i,j:integer;
begin
  gsmno:='';
  lar:='';
  if gr_alicilarview.ViewData.RecordCount<1 then
  begin
    gsmno:=inputbox('GSM No','Alýcýnýn GSM numarasýný 5XXXXXXXXX formatýnda giriniz','5');
    gsmno:=stringreplace(gsmno,' ','',[rfReplaceAll]);
    gsmno:=stringreplace(gsmno,'(','',[rfReplaceAll]);
    gsmno:=stringreplace(gsmno,')','',[rfReplaceAll]);
    if length(gsmno)<>10 then
    begin
      MessageDlg('Girdiðiniz GSM numarasý hatalý iþleminiz iptal edildi!', mtError, [mbOK], 0);
      exit;
    end;
  end
  else if gr_alicilarview.ViewData.RecordCount>1 then
    lar:='lar';
//mesajlar veri tabanýna
  tablo_iletisim.Close;
  tablo_iletisim.SQL.Clear;
  tablo_iletisim.SQL.Add('select id,msgid,tur,konum,mesaj,durumu from iletisim limit 1');
  tablo_iletisim.Open;
  setlength(id,0);
  omesaj := tx_mesaj.Text;
  omesaj := StringReplace(omesaj, VK_CRLF, VK_SP, [rfReplaceAll]);
  omesaj := StringReplace(omesaj, VK_LF, VK_SP, [rfReplaceAll]);
  if length(gsmno) = 10 then
  begin
    tablo_iletisim.append;
    tablo_iletisim.FieldByName('tur').Text:='SMS';
    tablo_iletisim.FieldByName('konum').Text:=gsmno;
    tablo_iletisim.FieldByName('mesaj').Text:=smsdonustur(omesaj);
    tablo_iletisim.FieldByName('durumu').Text:='Gönderilmedi';
    tablo_iletisim.Post;
    setlength(id,1);
    id[0]:=tablo_iletisim.fieldbyname('id').AsInteger;
  end
  else
  begin
    if (tablo_alicilar.FindField('gsm')=nil) then
    begin
      MessageDlg('Alýcýlar listesi GSM numarasý içermemektedir.', mtWarning, [mbOK], 0);
      exit;
    end;
    for i:=0 to gr_alicilarview.ViewData.RecordCount-1 do
    begin
      if gr_alicilarview.ViewData.Rows[i].DisplayTexts[gr_alicilarview.GetColumnByFieldName('sms_bildirim').Index]='Evet' then
      begin
        tablo_iletisim.append;
        gsmno:= gr_alicilarview.ViewData.Rows[i].DisplayTexts[gr_alicilarview.GetColumnByFieldName('gsm').Index];
        gsmno:=stringreplace(gsmno,' ','',[rfReplaceAll]);
        gsmno:=stringreplace(gsmno,'(','',[rfReplaceAll]);
        gsmno:=stringreplace(gsmno,')','',[rfReplaceAll]);
        if length(gsmno) <> 10 then
          Raise Exception.Create('Hatalý telefon numrasý '+gsmno);
        tablo_iletisim.FieldByName('tur').Text:='SMS';
        tablo_iletisim.FieldByName('konum').Text:=gsmno;
        mesaj:=omesaj;
        for j:=0 to mn_degiskenler.Items.Count-1 do
        begin
          degisken:=  mn_degiskenler.Items.Items[j].Caption;
          delete(degisken,pos('&',degisken),1);
          mesaj:=stringreplace(mesaj,'{'+degisken+'}',gr_alicilarview.ViewData.Rows[i].DisplayTexts[gr_alicilarview.GetColumnByFieldName(degisken).Index],[rfReplaceAll]);
        end;
        tablo_iletisim.FieldByName('mesaj').Text := smsdonustur(mesaj);
        tablo_iletisim.FieldByName('durumu').Text := 'Gönderilmedi';
        tablo_iletisim.Post;
        setlength(id,length(id)+1);
        id[length(id)-1] := tablo_iletisim.fieldbyname('id').AsInteger;
      end;
    end;
  end;
  if length(id)<1 then
  begin
    MessageDlg('Girdiðiniz GSM numarasý hatalý iþleminiz iptal edildi!', mtError, [mbOK], 0);
    exit;
  end;
  if length(id)>1 then
    lar:='lar'
  else
    lar:='';
//mesajlar gidecek
  if (MessageDlg('Mesaj'+lar+'ýnýz kaydedildi. Bu mesaj'+lar+'ý þimdi göndermek istiyor musunuz?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
    gonder(id);
end;

function SMSDonustur(Mesaj:string):string;
begin
  mesaj:=stringreplace(mesaj,'  ',' ',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'ý','i',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'ð','g',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'ü','u',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'þ','s',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'ö','o',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'ç','c',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'Ý','I',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'Ð','G',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'Ü','U',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'Þ','S',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'Ö','O',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'Ç','C',[rfReplaceAll]);
  mesaj:=trim(mesaj);
  if length(mesaj)>160 then
  begin
    mesaj:=copy(mesaj,1,160);
    MessageDlg('Mesajýnýz 160 karakterden uzun olduðu için kýsaltýldý.', mtWarning, [mbOK], 0);
  end;
  mesaj:=stringreplace(mesaj,'<','&lt;',[rfReplaceAll]);
  mesaj:=stringreplace(mesaj,'>','&gt;',[rfReplaceAll]);
  result:=mesaj;
end;

procedure TFrMesajGonder.bt_kontor_bilgisiClick(Sender: TObject);
var
  gateway,username,sifre,sql:string;
begin
// mesaj ayarlarý
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select username,sifre from ayarlar');
  tablo_oku.Open;
  username := tablo_oku.fieldbyname('username').Text;
  username := StringReplace(username,' ','%20',[rfReplaceAll]);
  sifre := tablo_oku.fieldbyname('sifre').Text;
  gateway := 'http://www.biotekno.biz:8080/SMS-Web/examine?username=' + username + '&password=' + sifre + '&type=charge';
  tablo_oku.Close;
  sql:=HTTPGet(gateway);

  while (copy(sql,1,2)='03') or (copy(sql,1,2)='20') or (copy(sql,1,2)='90') or (copy(sql,1,2)='13') do
  begin
    if (MessageDlg('Kontör bilgisi alýnamadý. Tekrar denemek ister misiniz?', mtError, [mbYes, mbNo], 0) = mrNo) then Exit;
    sql := HTTPGet(gateway); //05 xlm eksik, 10 mesaj gönderilemedi
  end;
  MessageDlg('Kalan kontör miktarýnýz: '+ sql, mtInformation, [mbOK], 0);
end;

procedure TFrMesajGonder.tx_mesajPropertiesChange(Sender: TObject);
var
  uzunluk:integer;
begin
  uzunluk:=length(tx_mesaj.text)-(tx_mesaj.Lines.Count-1)*2;
  if uzunluk>160 then
    lb_uzunluk.Style.TextColor:=clMaroon
  else
    lb_uzunluk.Style.TextColor:= clGreen;
  lb_uzunluk.Caption:= inttostr(uzunluk);
end;

procedure TFrMesajGonder.bt_hazirlaClick(Sender: TObject);
begin
  gr_komutlar.Visible:=false;
  filtre_genel.Visible:=true;
  gr_alicilarview.ClearItems;
  gr_alicilarview.DataController.DataSource := nil;
  tablo_alicilar.Close;
  tablo_alicilar.SQL.Clear;
  tablo_alicilar.SQL.Add(tablo_komutlar.FieldByName('komut').asString+' limit 0');
  filtre_genel.DataSet:=tablo_alicilar;
  filtre_genel.Visible:=true;
  tablo_alicilar.Open;
  bt_iptal.Enabled:=true;
  bt_raporla.Enabled:=true;
  bt_hazirla.Enabled:=false;
end;

procedure TFrMesajGonder.bt_iptalClick(Sender: TObject);
begin
  bt_raporla.Enabled:=false;
  bt_hazirla.Enabled:=true;
  gr_alicilar.Visible:=false;
  gr_komutlar.Visible:=true;
  filtre_genel.Visible:=false;
  sp_bol.OpenSplitter;
  bt_iptal.Enabled:=false;
end;

procedure TFrMesajGonder.bt_raporlaClick(Sender: TObject);
var
  filtre, sql,OrgSQL:string;
  HavingYeri:integer;
begin
  sp_bol.CloseSplitter;
  gr_alicilarview.ClearItems;
  gr_alicilarview.DataController.DataSource := nil;
  filtre := filtre_genel.FilterText;
  tablo_alicilar.Close;
  tablo_alicilar.SQL.Clear;
  sql:= tablo_komutlar.FieldByName('komut').asString;
  if filtre<>'' then
  begin
    OrgSQL:=sql;
    HavingYeri:=pos('HAVING',sql);
    if HavingYeri=0 then
      HavingYeri:=pos('having',sql);
    if HavingYeri>0 then
      insert(' '+filtre+' and',sql,HavingYeri+6)
    else
      sql:=sql+' HAVING '+filtre;
  end;
  tablo_alicilar.SQL.Add(sql);
  try
    tablo_alicilar.Open;
  except
    on E:EZSQLThrowable do
      if (pos('Duplicate column name',E.Message) > 0)
        or (pos('having clause is ambiguous',E.Message) > 0) then
      begin
        tablo_alicilar.Close;
        tablo_alicilar.SQL.Clear;
        case MessageDlg('Girmiþ olduðunuz kurallarý sorgulamam baþarýsýz oldu.'+#13+#10+'Kuralsýz olarak sorguyu çalýþtýrmak istiyormusunuz.', mtWarning, [mbYes, mbNo], 0) of
          mrYes:
          begin
            tablo_alicilar.SQL.Add(OrgSQL);
            tablo_alicilar.Open;
          end;
          mrNo:
          begin
            bt_iptal.Click;
            exit;
          end;
        end;
      end;
  end;
  gr_alicilar.Visible:=true;
  alicilari_hazirla;
end;

procedure TFrMesajGonder.sayfa_alicilarShow(Sender: TObject);
begin
  if tablo_alicilar.State = dsInactive then
    pn_komut_filtre.Height:=sayfa_alicilar.Height - pn_dugmeler.Height-sp_bol.Height;
end;

procedure TFrMesajGonder.gr_alicilarviewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  kontrol:string;
  istek:string;
begin
  if gr_alicilarview.ColumnCount < 1 then exit;
  kontrol := ARecord.DisplayTexts[gr_alicilarview.GetColumnByFieldName('gsm').Index];
  kontrol := stringreplace(kontrol,' ','',[rfReplaceAll]);
  kontrol := stringreplace(kontrol,'(','',[rfReplaceAll]);
  kontrol := stringreplace(kontrol,')','',[rfReplaceAll]);
  if length(kontrol) <> 10 then
    istek := 'Hayýr'
  else
    istek := ARecord.DisplayTexts[gr_alicilarview.GetColumnByFieldName('sms_bildirim').Index];
  if istek = 'Evet' then
    AStyle := StilYok
  else if (istek = 'Evet') and (length(kontrol)=13) and (kontrol[1]='5') then
    AStyle := StilYok
  else
    AStyle := StilGSMYok;
end;

procedure TFrMesajGonder.bt_exceleaktarClick(Sender: TObject);
begin
 dosya.Execute;
end;

procedure TFrMesajGonder.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_alicilar,True,True,True);
  t_zaman.Enabled := true;
end;

procedure TFrMesajGonder.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

end.
