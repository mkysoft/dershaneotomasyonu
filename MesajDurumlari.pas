unit MesajDurumlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxPC, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxFilterControl, cxDBFilterControl, ExtCtrls, StdCtrls, Buttons,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxContainer, cxMaskEdit,
  cxRadioGroup, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxLookAndFeelPainters, cxButtons, cxExportGrid4Link, ShellAPI;

type
  TFrMesajDurumlari = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    gr_iletisimview: TcxGridDBTableView;
    gr_iletisimLevel1: TcxGridLevel;
    gr_iletisim: TcxGrid;
    fl_iletisim: TcxDBFilterControl;
    tablo_iletisim: TZQuery;
    ara_iletisim: TDataSource;
    Panel1: TPanel;
    bt_uygula: TBitBtn;
    bt_iptal: TBitBtn;
    Label3: TLabel;
    cm_tar_kis: TcxComboBox;
    tx_tar_bas: TcxDateEdit;
    tx_tar_bit: TcxDateEdit;
    Label6: TLabel;
    cm_kul_kis: TcxComboBox;
    tx_kul_bas: TcxTextEdit;
    bt_goster: TBitBtn;
    bt_Sifirla: TBitBtn;
    Label1: TLabel;
    cm_alc_kis: TcxComboBox;
    tx_alc_bas: TcxTextEdit;
    cm_drm_kis: TcxComboBox;
    Label2: TLabel;
    sc_text: TcxEditStyleController;
    tablo_iletisimid: TIntegerField;
    tablo_iletisimmsgid: TStringField;
    tablo_iletisimtur: TStringField;
    tablo_iletisimkonum: TStringField;
    tablo_iletisimmesaj: TStringField;
    tablo_iletisimolusturulma: TDateTimeField;
    tablo_iletisimdurumu: TStringField;
    tablo_iletisimgonderilme: TDateTimeField;
    tablo_iletisimkullanici: TStringField;
    gr_iletisimviewid: TcxGridDBColumn;
    gr_iletisimviewmsgid: TcxGridDBColumn;
    gr_iletisimviewtur: TcxGridDBColumn;
    gr_iletisimviewkonum: TcxGridDBColumn;
    gr_iletisimviewmesaj: TcxGridDBColumn;
    gr_iletisimviewolusturulma: TcxGridDBColumn;
    gr_iletisimviewdurumu: TcxGridDBColumn;
    gr_iletisimviewgonderilme: TcxGridDBColumn;
    gr_iletisimviewkullanici: TcxGridDBColumn;
    Panel2: TPanel;
    rb_tumu: TcxRadioButton;
    rb_ekran: TcxRadioButton;
    bt_raporlari_al: TBitBtn;
    mn_mesajlari_gonder: TBitBtn;
    tablo_oku: TZReadOnlyQuery;
    mn_iletisim: TcxGridPopupMenu;
    t_zaman: TTimer;
    dosya: TSaveDialog;
    bt_exceleaktar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_uygulaClick(Sender: TObject);
    procedure bt_iptalClick(Sender: TObject);
    procedure cm_tar_kisPropertiesChange(Sender: TObject);
    procedure cm_kul_kisPropertiesChange(Sender: TObject);
    procedure cm_alc_kisPropertiesChange(Sender: TObject);
    procedure bt_SifirlaClick(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mn_mesajlari_gonderClick(Sender: TObject);
    procedure bt_raporlari_alClick(Sender: TObject);
    function msgidayarla: Tstringlist;
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure t_zamanTimer(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMesajDurumlari: TFrMesajDurumlari;

implementation
uses veritabani,SMSFonksiyonlari,MesajGonder, sms_ayarlari, functionlar;
{$R *.dfm}

procedure TFrMesajDurumlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrMesajDurumlari.bt_uygulaClick(Sender: TObject);
begin
  tablo_iletisim.Close;
  tablo_iletisim.SQL.Clear;
  tablo_iletisim.SQL.Add('select * from iletisim');
  if fl_iletisim.FilterText <> '' then
  begin
    tablo_iletisim.SQL.Add('where');
    tablo_iletisim.SQL.Add(fl_iletisim.FilterText);
  end;
  tablo_iletisim.Open;
  gr_iletisimview.ApplyBestFit();
end;

procedure TFrMesajDurumlari.bt_iptalClick(Sender: TObject);
begin
  tablo_iletisim.Close;
  fl_iletisim.Clear;
  bt_uygula.Click;
end;

procedure TFrMesajDurumlari.cm_tar_kisPropertiesChange(Sender: TObject);
begin
  tx_tar_bas.Enabled := False;
  tx_tar_bit.Enabled := False;
  if cm_tar_kis.Text = 'Tümü' then
  begin
    tx_tar_bas.Clear;
    tx_tar_bit.Clear;
  end;
  if cm_tar_kis.Text <> 'Tümü' then tx_tar_bas.Enabled := True;
  if cm_tar_kis.Text = 'Arasýnda' then tx_tar_bit.Enabled := True;
end;

procedure TFrMesajDurumlari.cm_kul_kisPropertiesChange(Sender: TObject);
begin
  tx_kul_bas.Enabled := False;
  if cm_kul_kis.Text = 'Tümü' then
  begin
    tx_kul_bas.Clear;
  end;
  if cm_kul_kis.Text <> 'Tümü' then tx_kul_bas.Enabled := True;
end;

procedure TFrMesajDurumlari.cm_alc_kisPropertiesChange(Sender: TObject);
begin
  tx_alc_bas.Enabled := False;
  if cm_alc_kis.Text = 'Tümü' then
  begin
    tx_alc_bas.Clear;
  end;
  if cm_alc_kis.Text <> 'Tümü' then tx_alc_bas.Enabled := True;
end;

procedure TFrMesajDurumlari.bt_SifirlaClick(Sender: TObject);
begin
  tablo_iletisim.Close;
  tablo_iletisim.SQL.Clear;
  cm_drm_kis.Text := 'Tümü';
  cm_tar_kis.Text := 'Tümü';
  cm_tar_kisPropertiesChange(cm_tar_kis);
  cm_alc_kis.Text := 'Tümü';
  cm_alc_kisPropertiesChange(cm_alc_kis);
  cm_drm_kis.Text := 'Tümü';
  tx_tar_bas.Date := Date;
  tx_tar_bit.Date := Date;
end;

procedure TFrMesajDurumlari.bt_gosterClick(Sender: TObject);
var
wheredurum,sql:string;
begin
  wheredurum := ' where ';
  tablo_iletisim.Close;
  tablo_iletisim.SQL.Clear;
  sql:='select * from iletisim';
  if cm_drm_kis.Text <> 'Tümü' then
  begin
    sql := sql + wheredurum + 'durumu = '+ QuotedStr(cm_drm_kis.Text);
    wheredurum := ' and ';
  end;
  if cm_tar_kis.Text <> 'Tümü' then
  begin
    if cm_tar_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'olusturulma like '+QuotedStr('%'+mtarih(tx_tar_bas.date)+'%')
    else if cm_tar_kis.Text = 'Büyük' then
      sql := sql + wheredurum + 'olusturulma > '+ QuotedStr(mtarih(tx_tar_bas.date))
    else if cm_tar_kis.Text = 'Küçük' then
      sql := sql + wheredurum + 'olusturulma < '+ QuotedStr(mtarih(tx_tar_bas.date))
    else if cm_tar_kis.Text = 'Arasýnda' then
      sql := sql + wheredurum + 'olusturulma between '+ QuotedStr(mtarih(tx_tar_bas.date))+' and '+QuotedStr(mtarih(tx_tar_bit.date));
    wheredurum := ' and ';
  end;
  if cm_alc_kis.Text <> 'Tümü' then
  begin
    sql := sql + wheredurum + 'kullanici = '+ QuotedStr(tx_alc_bas.text);
    wheredurum := ' and ';
  end;
  if cm_kul_kis.Text <> 'Tümü' then
  begin
    if cm_kul_kis.Text = 'Eþit' then
      sql := sql + wheredurum + 'kullanici like '+QuotedStr(tx_kul_bas.text+'@%')
    else if cm_kul_kis.Text = 'Ýçeren' then
      sql := sql + wheredurum + 'kullanici like '+QuotedStr('%'+ tx_kul_bas.text+'%');
    wheredurum := ' and ';
  end;
    tablo_iletisim.SQL.Add(sql);
    tablo_iletisim.Open;
    gr_iletisimview.ApplyBestFit();
end;

procedure TFrMesajDurumlari.FormShow(Sender: TObject);
begin
  tx_tar_bas.Date := Date;
  tx_tar_bit.Date := Date;
end;

procedure TFrMesajDurumlari.mn_mesajlari_gonderClick(Sender: TObject);
var
 id:array of integer;
 i:integer;
begin
//sms mesajlari için
  if rb_tumu.Checked=true then
  begin
    tablo_oku.Close;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select id from iletisim where tur=''SMS'' and durumu=''Gönderilmedi''');
    tablo_oku.Open;
    SetLength(id,0);
    while tablo_oku.Eof=false do
    begin
      SetLength(id,length(id)+1);
      id[length(id)-1]:=tablo_oku.fieldbyname('id').AsInteger;
      tablo_oku.Next;
    end;
    tablo_oku.Close;
  end
  else
  begin
    for i:=0 to gr_iletisimview.ViewData.RecordCount-1 do
      if gr_iletisimview.ViewData.Rows[i].DisplayTexts[gr_iletisimview.GetColumnByFieldName('tur').ID]='SMS' then
        if gr_iletisimview.ViewData.Rows[i].DisplayTexts[gr_iletisimview.GetColumnByFieldName('durumu').ID]='Gönderilmedi' then
        begin
          SetLength(id,length(id)+1);
          id[length(id)-1]:= strtoint(gr_iletisimview.ViewData.Rows[i].DisplayTexts[gr_iletisimview.GetColumnByFieldName('id').ID]);
        end;
  end;
  if length(id)<1 then
  begin
    MessageDlg('Gönderecek mesaj yok!', mtError, [mbOK], 0);
    exit;
  end;
  application.CreateForm(TFrMesajGonder,FrMesajGonder);
  gonder(id);
  FrMesajGonder.Close;
  tablo_iletisim.Close;
  tablo_iletisim.Open;
  FrMesajGonder.Close;
//emailler için
end;

procedure TFrMesajDurumlari.bt_raporlari_alClick(Sender: TObject);
var
  username,sifre,sql,konum,msgid,zaman:string;
  degerler, GeriDonen: TStringList;
  i, j, durum :integer;
const
  durumu:array[1..4] of string=('Ýletildi','Beklemede','Hatalý Alýcý','Ulaþýlamadý');
begin
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select username,sifre from ayarlar');
  tablo_oku.Open;
  username := tablo_oku.fieldbyname('username').Text;
  sifre := tablo_oku.fieldbyname('sifre').Text;
  tablo_oku.Close;
  degerler := msgidayarla;
  if degerler.Count<1 then
  begin
    MessageDlg('Rapor alýnacak mesaj yok!', mtWarning, [mbOK], 0);
    exit;
  end;
  for i:=0 to degerler.Count-1 do
  begin
    sql := HTTPGet('http://www.biotekno.biz:8080/SMS-Web/xmlreport?username='+username+'&password='+sifre+'&groupid='+degerler[i]+'&status=5');
    if (copy(sql,1,3)<>'99 ') then
    begin
      GeriDonen := TStringList.Create;
      GeriDonen.Delimiter := Chr(13);
      GeriDonen.Text := sql;
      for j := 0 to GeriDonen.Count - 1 do
      begin
//        satir := copy(sql, son, pos(VK_CRLF, sql) - son);
        msgid := copy(GeriDonen.Strings[j], 1, 15);
        konum := copy(GeriDonen.Strings[j], 19, 10);
        durum := strtoint(GeriDonen.Strings[j][30]);
        if durum = 1 then
          zaman := ''''+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-9]+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-8]+
                   GeriDonen.Strings[j][length(GeriDonen.Strings[j])-7]+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-6]+
                   '-'+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-11]+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-10]+
                   '-'+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-13]+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-12]+
                   ' '+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-5]+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-4]+
                   ':'+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-3]+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-2]+
                   ':'+GeriDonen.Strings[j][length(GeriDonen.Strings[j])-1]+GeriDonen.Strings[j][length(GeriDonen.Strings[j])]+'''' //'2008-01-02 13:36:14' ddmmyyyyhhMMss
        else
          zaman := 'now()';



//      son:=1;
//      while pos(VK_CRLF,sql)>0 do
//      begin
//        satir := copy(sql, son, pos(VK_CRLF,sql)-son);
//        msgid := copy(sql, 1,15);
//        konum := copy(sql, 19,10);
//        durum := strtoint(sql[30]);
//        if durum=1 then
//          zaman := ''''+satir[length(satir)-9]+satir[length(satir)-8]+
//                   satir[length(satir)-7]+satir[length(satir)-6]+
//                   '-'+satir[length(satir)-11]+satir[length(satir)-10]+
//                   '-'+satir[length(satir)-13]+satir[length(satir)-12]+
//                   ' '+satir[length(satir)-5]+satir[length(satir)-4]+
//                   ':'+satir[length(satir)-3]+satir[length(satir)-2]+
//                   ':'+satir[length(satir)-1]+satir[length(satir)]+'''' //'2008-01-02 13:36:14' ddmmyyyyhhMMss
//        else
//          zaman := 'now()';
//        son := pos(VK_CRLF,sql);
//        sql[son]:=';';
//        inc(son);
//        sql[son]:=';';
//        inc(son);
        tablo_oku.sql.Clear;
        tablo_oku.SQL.Add('update iletisim set durumu='+QuotedStr(durumu[durum])+',gonderilme='+zaman+' where msgid='+QuotedStr(degerler[i])+' and durumu<>'+QuotedStr(durumu[durum])+' and konum='+QuotedStr(konum));
        tablo_oku.ExecSQL;
      end;
      GeriDonen.Free;
    end;
  end;
  tablo_iletisim.close;
  tablo_iletisim.open;
  MessageDlg('Raporlarýn alýmý baþarýyla tamamlandý.', mtInformation, [mbOK], 0);
end;

function TFrMesajDurumlari.msgidayarla: TStringList;
var
  i:Integer;
begin
//sms mesajlari için
  result:=TStringList.Create;
  if rb_tumu.Checked=true then
  begin
    tablo_oku.Close;
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('select distinct msgid from iletisim where tur=''SMS'' and durumu=''Beklemede''');
    tablo_oku.Open;
    while tablo_oku.Eof=false do
    begin
      msgidayarla.Add(tablo_oku.fieldbyname('msgid').Text);
      tablo_oku.Next;
    end;
    tablo_oku.Close;
  end
  else
  begin
    for i:=0 to gr_iletisimview.ViewData.RecordCount-1 do
      if (gr_iletisimview.ViewData.Rows[i].DisplayTexts[gr_iletisimview.GetColumnByFieldName('tur').ID]='SMS')
       then if (gr_iletisimview.ViewData.Rows[i].DisplayTexts[gr_iletisimview.GetColumnByFieldName('durumu').ID]='Beklemede')
         then if (result.IndexOf(gr_iletisimview.ViewData.Rows[i].DisplayTexts[gr_iletisimview.GetColumnByFieldName('msgid').ID]) < 0) then
           result.Add(gr_iletisimview.ViewData.Rows[i].DisplayTexts[gr_iletisimview.GetColumnByFieldName('msgid').ID]);
  end;
end;
procedure TFrMesajDurumlari.bt_exceleaktarClick(Sender: TObject);
begin
 dosya.Execute;
end;

procedure TFrMesajDurumlari.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure TFrMesajDurumlari.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_iletisim,True,True,True);
  t_zaman.Enabled := true;
end;

end.
