unit SinifTanimlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxContainer,
  cxListBox, cxDBEdit, cxControls, cxGroupBox, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, StdCtrls, cxSplitter,
  cxLabel, ExtCtrls, cxTextEdit, cxDBLookupComboBox, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxEditRepositoryItems, Menus, cxCalendar;

type
  Tfr_sinif_tanimlari = class(TForm)
    ara_siniflar: TDataSource;
    tablo_siniflar: TZQuery;
    tablo_siniflarsinif: TStringField;
    tablo_siniflarderslik: TStringField;
    tablo_siniflardanisman: TStringField;
    tablo_ders_programi: TZQuery;
    ara_ders_programi: TDataSource;
    tablo_ders_programisinif: TStringField;
    tablo_ders_programigun: TStringField;
    tablo_ders_programiders_1: TStringField;
    tablo_ders_programiders_2: TStringField;
    tablo_ders_programiders_3: TStringField;
    tablo_ders_programiders_4: TStringField;
    tablo_ders_programiders_5: TStringField;
    tablo_ders_programiders_6: TStringField;
    tablo_ders_programiders_7: TStringField;
    tablo_ders_programiders_8: TStringField;
    tablo_ders_programiders_9: TStringField;
    tablo_ders_programiders_10: TStringField;
    tablo_oku: TZReadOnlyQuery;
    Splitter1: TSplitter;
    Panel1: TPanel;
    gr_siniflar: TcxGrid;
    siniflar: TcxGridDBTableView;
    siniflarsinif: TcxGridDBColumn;
    siniflardanisman: TcxGridDBColumn;
    siniflarderslik: TcxGridDBColumn;
    gr_siniflarLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxLabel2: TcxLabel;
    gr_ders_programi: TcxGrid;
    ders_programi: TcxGridDBTableView;
    ders_programisinif: TcxGridDBColumn;
    ders_programigun: TcxGridDBColumn;
    ders_programiders_1: TcxGridDBColumn;
    ders_programiders_2: TcxGridDBColumn;
    ders_programiders_3: TcxGridDBColumn;
    ders_programiders_4: TcxGridDBColumn;
    ders_programiders_5: TcxGridDBColumn;
    ders_programiders_6: TcxGridDBColumn;
    ders_programiders_7: TcxGridDBColumn;
    ders_programiders_8: TcxGridDBColumn;
    ders_programiders_9: TcxGridDBColumn;
    ders_programiders_10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tablo_siniflargrup1: TStringField;
    tablo_siniflargrup2: TStringField;
    tablo_siniflargrup3: TStringField;
    tablo_grup2: TZQuery;
    tablo_grup2id: TLargeintField;
    tablo_grup2seviye: TIntegerField;
    tablo_grup2adi: TStringField;
    tablo_grup2ustgrup: TLargeintField;
    tablo_grup1: TZQuery;
    tablo_grup1id: TLargeintField;
    tablo_grup1seviye: TIntegerField;
    tablo_grup1adi: TStringField;
    tablo_grup1ustgrup: TLargeintField;
    tablo_grup3: TZQuery;
    tablo_grup3id: TLargeintField;
    tablo_grup3seviye: TIntegerField;
    tablo_grup3adi: TStringField;
    tablo_grup3ustgrup: TLargeintField;
    ara_grup1: TDataSource;
    ara_grup2: TDataSource;
    ara_grup3: TDataSource;
    tablo_siniflardonem: TStringField;
    siniflardonem: TcxGridDBColumn;
    tablo_ders_programidonem: TStringField;
    ders_programidonem: TcxGridDBColumn;
    VeriGirisDuzenleyicisi: TcxEditRepository;
    VeriGirisDuzenleyicisiSaat: TcxEditRepositoryMaskItem;
    VeriGirisDuzenleyicisiDers: TcxEditRepositoryComboBoxItem;
    MnDersProgrami: TPopupMenu;
    MnOtomatikDoldur: TMenuItem;
    MnDigerSinifdanAktar: TMenuItem;
    tablo_siniflarders_baslangic: TDateField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tx_grubu1: TcxDBLookupComboBox;
    tx_grubu2: TcxDBLookupComboBox;
    tx_grubu3: TcxDBLookupComboBox;
    tx_ders_baslangic: TcxDBDateEdit;
    Panel3: TPanel;
    Label5: TLabel;
    cm_don_kis: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tablo_siniflarAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure tablo_ders_programiAfterInsert(DataSet: TDataSet);
    procedure tablo_siniflarBeforePost(DataSet: TDataSet);
    procedure gr_ders_programiEnter(Sender: TObject);
    procedure gr_siniflarEnter(Sender: TObject);
    procedure ders_programiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_grubu1PropertiesChange(Sender: TObject);
    procedure tx_grubu2PropertiesChange(Sender: TObject);
    procedure ders_programiders_1GetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure ders_programiCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MnOtomatikDoldurClick(Sender: TObject);
    procedure MnDigerSiniftanAktarClick(Sender: TObject);
    procedure cm_don_kisClick(Sender: TObject);
    procedure tablo_siniflarNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sinif_tanimlari: Tfr_sinif_tanimlari;

implementation
uses functionlar,veritabani;
{$R *.dfm}

procedure Tfr_sinif_tanimlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree
end;

procedure Tfr_sinif_tanimlari.tablo_siniflarAfterScroll(DataSet: TDataSet);
begin
  tablo_ders_programi.Close;
  tablo_ders_programi.Params[0].Text := tablo_siniflar.fieldbyname('donem').Text;
  tablo_ders_programi.Params[1].Text := tablo_siniflar.fieldbyname('sinif').Text;
  tablo_ders_programi.Open;
//  ders_programi.ApplyBestFit();  // yavaþlýyo
end;

procedure Tfr_sinif_tanimlari.FormCreate(Sender: TObject);
var
  item: TcxCustomGridTableItem;
begin
 (siniflardonem.Properties as TcxComboBoxProperties).Items := Donemler;
  cm_don_kis.Properties.Items := Donemler;
  cm_don_kis.Text := aktifdonem;
  cm_don_kisClick(cm_don_kis);
 //filtreleme
// siniflar.DataController.Filter.Clear;
// siniflar.DataController.Filter.Root.BoolOperatorKind := fboOr;
// siniflar.DataController.Filter.Root.AddItem(siniflardonem,foEqual,aktifdonem,QuotedStr(aktifdonem));
// siniflar.DataController.Filter.Active := true;

 tablo_oku.Close;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('SELECT ders_1 FROM personel union SELECT ders_2 FROM personel union SELECT ders_3 FROM personel ORDER BY ders_1');
 tablo_oku.Open;
 item := ders_programiders_1;
 item.PropertiesClass :=  TcxComboBoxProperties;
 while tablo_oku.Eof = false do
 begin
   if tablo_oku.fieldbyname('ders_1').Text <> '' then
     VeriGirisDuzenleyicisiDers.Properties.Items.Add(tablo_oku.fieldbyname('ders_1').Text);
//     for i:= 3 to 12 do
//       (ders_programi.Columns[i].Properties as TcxComboBoxProperties).Items.Add(tablo_oku.fieldbyname('ders_1').Text);
   tablo_oku.Next;
 end;
 tablo_oku.Close;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('SELECT concat(veli_adi,'' '',veli_soyadi) AS ad_soyad FROM personel inner join veliler on personel_kodu=veli_kodu where meslegi not in (''Hizmetli'',''Sekreter'') ORDER BY ad_soyad');
 tablo_oku.Open;
 item := siniflardanisman;
 while tablo_oku.Eof = false do
 begin
  if tablo_oku.fieldbyname('ad_soyad').Text <> '' then
   (item.Properties as TcxComboBoxProperties).Items.Add(tablo_oku.fieldbyname('ad_soyad').Text);
  tablo_oku.Next;
 end;
 tablo_oku.Close;
  tablo_grup1.Open;
  tablo_grup2.Open;
  tablo_grup3.Open;
end;

procedure Tfr_sinif_tanimlari.tablo_ders_programiAfterInsert(
  DataSet: TDataSet);
begin
  tablo_ders_programi.FieldByName('donem').Text := tablo_siniflar.FieldByName('donem').Text;
  tablo_ders_programi.FieldByName('sinif').Text := tablo_siniflar.FieldByName('sinif').Text;
end;

procedure Tfr_sinif_tanimlari.tablo_siniflarBeforePost(DataSet: TDataSet);
begin
  if ((tablo_grup1.RecordCount > 0) and (tx_grubu1.Text=''))
     or ((tablo_grup2.RecordCount > 0) and (tx_grubu2.Text=''))
     or ((tablo_grup3.RecordCount > 0) and (tx_grubu3.Text='')) then
  begin
    MessageDlg('Lütfen sýnýfýn grubunu seçiniz!', mtWarning, [mbOK], 0);
    SysUtils.Abort;
    exit;
  end;
  tablo_siniflar.FieldByName('sinif').Text := bkmetin(tablo_siniflar.FieldByName('sinif').Text,1);
  if tablo_siniflar.State = dsEdit then
  begin
    tablo_oku.SQL.Clear;
    tablo_oku.SQL.Add('update ders_programlari set donem =:p0,sinif =:p1 where donem =:p2 and sinif =:p3');
    tablo_oku.Params[0].Text := tablo_siniflar.FieldByName('donem').Text;
    tablo_oku.Params[1].Text := tablo_siniflar.FieldByName('sinif').Text;
    tablo_oku.Params[2].Text := tablo_ders_programi.FieldByName('donem').Text;
    tablo_oku.Params[3].Text := tablo_ders_programi.FieldByName('sinif').Text;
    tablo_oku.ExecSQL;
  end;
end;

procedure Tfr_sinif_tanimlari.gr_ders_programiEnter(Sender: TObject);
begin
  if tablo_siniflar.State in [dsEdit,dsInsert] then
  begin
    messagedlg('Þu anda bir sýnýf ekliyorsunuz yada düzeltiyorsunuz. Öncelikle bu iþlemi tamamlayýn!',mtError, [mbOk], 0);
    gr_siniflar.SetFocus;
  end;
end;

procedure Tfr_sinif_tanimlari.gr_siniflarEnter(Sender: TObject);
begin
  if tablo_ders_programi.State in [dsEdit,dsInsert] then
  begin
    messagedlg('Þu anda sýnýfa ders programý ekliyorsunuz. Öncelikle bu iþlemi tamamlayýn!',mtError, [mbOk], 0);
    gr_ders_programi.SetFocus;
  end;

end;

procedure Tfr_sinif_tanimlari.ders_programiKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := bkharf(Key,true);
end;

procedure Tfr_sinif_tanimlari.tx_grubu1PropertiesChange(Sender: TObject);
begin
  tablo_grup1.Locate('adi',VarArrayOf([tx_grubu1.Text]),[loCaseInsensitive]);
  if (tablo_grup2.State = dsBrowse) and (tablo_siniflar.State in [dsInsert,dsEdit]) and (tablo_grup2.RecordCount<1) then
  begin
    tablo_siniflargrup2.Clear;
    tablo_siniflargrup3.Clear;
  end;
end;

procedure Tfr_sinif_tanimlari.tx_grubu2PropertiesChange(Sender: TObject);
begin
  tablo_grup2.Locate('adi',VarArrayOf([tx_grubu2.Text]),[loCaseInsensitive]);
  if (tablo_grup3.State = dsBrowse) and (tablo_siniflar.State in [dsInsert,dsEdit]) and (tablo_grup3.RecordCount<1) then tablo_siniflargrup3.Clear;
end;

procedure Tfr_sinif_tanimlari.ders_programiders_1GetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if (ARecord.Values[2] = 'Giriþ') or (ARecord.Values[2]='Çýkýþ') then
    AProperties := VeriGirisDuzenleyicisiSaat.Properties
  else
    AProperties := VeriGirisDuzenleyicisiDers.Properties;
end;

procedure Tfr_sinif_tanimlari.ders_programiCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  temp:string;
  BirMenu: TMenuItem;
  i:integer;
begin
  try
    temp:=Sender.Controller.SelectedRecords[0].Values[2];
  except
  end;
  if (AButton = mbright) and ((temp = 'Giriþ') or (temp='Çýkýþ'))  then
  begin
    MnOtomatikDoldur.Visible:=true;
    while MnDigerSinifdanAktar.Count>0 do
      MnDigerSinifdanAktar.Items[0].Free;
    for i:=0 to siniflar.ViewData.RecordCount-1 do
    begin
      BirMenu := TMenuItem.Create(MnDigerSinifdanAktar);
      BirMenu.Caption := siniflar.ViewData.Rows[i].DisplayTexts[1];
      BirMenu.OnClick := MnDigerSiniftanAktarClick;
      MnDigerSinifdanAktar.Add(BirMenu);
    end;
    MnDersProgrami.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  end
  else if (AButton = mbright) then
  begin
    MnOtomatikDoldur.Visible:=false;
    while MnDigerSinifdanAktar.Count>0 do
      MnDigerSinifdanAktar.Items[0].Free;
    for i:=0 to siniflar.ViewData.RecordCount-1 do
    begin
      BirMenu := TMenuItem.Create(MnDigerSinifdanAktar);
      BirMenu.Caption := siniflar.ViewData.Rows[i].DisplayTexts[1];
      BirMenu.OnClick := MnDigerSiniftanAktarClick;
      MnDigerSinifdanAktar.Add(BirMenu);
    end;
    MnDersProgrami.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  end;
end;

procedure Tfr_sinif_tanimlari.MnOtomatikDoldurClick(Sender: TObject);
var
  i:integer;
  giris,cikis: Boolean;
  saat: TTime;
begin
  giris := false;
  cikis := false;
  for i:=0 to ders_programi.ViewData.RowCount-1 do
    if ders_programi.ViewData.Rows[i].Values[2]='Giriþ' then
      giris:=true
    else if ders_programi.ViewData.Rows[i].Values[2]='Çýkýþ' then
      cikis:=true;
  if (giris=true) and (cikis=false) then
  begin
    tablo_ders_programi.Insert;
    tablo_ders_programigun.Text:='Çýkýþ';
    tablo_ders_programi.Post;
  end
  else if (giris=false) and (cikis=true) then
  begin
    tablo_ders_programi.Insert;
    tablo_ders_programigun.Text:='Giriþ';
    tablo_ders_programi.Post;
  end;
  tablo_ders_programi.Locate('gun',VarArrayOf(['Giriþ']),[]);
  saat:=StrToTime('00:00:00');
  if tablo_ders_programiders_1.Text='' then
  try
    saat := StrToTime(inputbox('Bilgi Giriþi','1. dersin baþlangýç saatini giriniz:','00:00'));
  except
  end
  else
    try
      saat := strtotime(tablo_ders_programiders_1.Text);
    except
    end;  
  if saat=strtotime('00:00:00') then exit;
  tablo_ders_programi.Edit;
  for i:=1 to 10 do
    tablo_ders_programi.FieldByName('ders_'+inttostr(i)).Text := copy(timetostr(saat + strtotime('00:50')*(i-1)),1,5);
  tablo_ders_programi.Post;
  tablo_ders_programi.Locate('gun',VarArrayOf(['Çýkýþ']),[]);
  tablo_ders_programi.Edit;
  for i:=1 to 10 do
    tablo_ders_programi.FieldByName('ders_'+inttostr(i)).Text := copy(timetostr(saat + strtotime('00:50')*(i-1)+strtotime('00:40:00')),1,5);
  tablo_ders_programi.Post;
end;

procedure Tfr_sinif_tanimlari.MnDigerSiniftanAktarClick(Sender: TObject);
var
  sql:string;
begin
  tablo_oku.Close;
  tablo_oku.sql.Clear;
  sql:='delete from ders_programlari where donem='
       +QuotedStr(tablo_ders_programidonem.Text)
       +' and sinif = '+QuotedStr(tablo_ders_programisinif.Text)
       +' and gun in (''Giriþ'',''Çýkýþ'')';
  tablo_oku.SQL.Add(sql);
  tablo_oku.ExecSQL;
  tablo_oku.SQL.Clear;
  sql:='insert into ders_programlari (select donem,'
       +QuotedStr(tablo_ders_programisinif.Text)+' as sinif,'
       +'gun,ders_1,ders_2,ders_3,ders_4,ders_5,ders_6,ders_7,ders_8,ders_9,ders_10'
       +' from ders_programlari where'
       +' donem='+QuotedStr(tablo_ders_programidonem.Text)
       +' and sinif = '+QuotedStr(TMenuItem(Sender).Caption)
       +' and gun in (''Giriþ'',''Çýkýþ''))';
  tablo_oku.SQL.Add(sql);
  tablo_oku.ExecSQL;
  tablo_ders_programi.Close;
  tablo_ders_programi.Open;
end;

procedure Tfr_sinif_tanimlari.cm_don_kisClick(Sender: TObject);
begin
  tablo_siniflar.Close;
  tablo_siniflar.Params[0].Text := cm_don_kis.Text;
  tablo_siniflar.Open;
end;


procedure Tfr_sinif_tanimlari.tablo_siniflarNewRecord(DataSet: TDataSet);
begin
  tablo_siniflardonem.Text := cm_don_kis.Text;
end;

end.
