unit veliler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, cxCheckBox, cxDBEdit, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxMemo, cxContainer, cxTextEdit, ExtCtrls, DBCtrls;

type
  Tfr_veliler = class(TForm)
    tablo_veliler: TZQuery;
    GroupBox1: TGroupBox;
    veliler: TcxGridDBTableView;
    gr_velilerLevel1: TcxGridLevel;
    gr_veliler: TcxGrid;
    ara_veliler: TDataSource;
    tablo_velilerveli_kodu: TIntegerField;
    tablo_velilerveli_adi: TStringField;
    tablo_velilerveli_soyadi: TStringField;
    tablo_velileradresi: TStringField;
    tablo_velileradres_ili: TStringField;
    tablo_velileradres_ilcesi: TStringField;
    tablo_velilerposta_kodu: TStringField;
    tablo_velilerev_telefonu: TStringField;
    tablo_velilergsm: TStringField;
    tablo_velileris_telefonu: TStringField;
    tablo_velilerfax: TStringField;
    tablo_velileremail: TStringField;
    tablo_velilermeslegi: TStringField;
    tablo_velilercalistigi_yer: TStringField;
    tablo_velilervgrup1: TStringField;
    tablo_velilervgrup2: TStringField;
    tablo_velilervgrup3: TStringField;
    velilerveli_kodu: TcxGridDBColumn;
    velilerveli_adi: TcxGridDBColumn;
    velilerveli_soyadi: TcxGridDBColumn;
    velilervgrup1: TcxGridDBColumn;
    velilervgrup2: TcxGridDBColumn;
    velilervgrup3: TcxGridDBColumn;
    tablo_oku: TZReadOnlyQuery;
    tx_veli_soyadi: TcxDBTextEdit;
    tx_adresi: TcxDBMemo;
    tx_veli_ilcesi: TcxDBTextEdit;
    tx_veli_ili: TcxDBTextEdit;
    tx_posta_kodu: TcxDBTextEdit;
    tx_email: TcxDBTextEdit;
    tx_meslegi: TcxDBComboBox;
    tx_calistigi_yer: TcxDBTextEdit;
    tx_gsm: TcxDBMaskEdit;
    tx_fax: TcxDBMaskEdit;
    Label27: TcxLabel;
    Label25: TcxLabel;
    Label30: TcxLabel;
    Label29: TcxLabel;
    Label23: TcxLabel;
    Label28: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label20: TcxLabel;
    Label19: TcxLabel;
    Label18: TcxLabel;
    GroupBox9: TGroupBox;
    ck_bsms: TcxDBCheckBox;
    ck_bemail: TcxDBCheckBox;
    ck_bfax: TcxDBCheckBox;
    Label24: TcxLabel;
    tx_ev_telefonu: TcxDBMaskEdit;
    tx_is_telefonu: TcxDBMaskEdit;
    Label26: TcxLabel;
    tx_veli_adi: TcxDBTextEdit;
    GroupBox2: TGroupBox;
    tx_vgrup1: TcxDBComboBox;
    tx_vgrup2: TcxDBComboBox;
    tx_vgrup3: TcxDBComboBox;
    DBNavigator1: TDBNavigator;
    sc_text: TcxEditStyleController;
    tablo_velilersms_bildirim: TStringField;
    tablo_velilerfax_bildirim: TStringField;
    tablo_velileremail_bildirim: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tx_ev_telefonuKeyPress(Sender: TObject; var Key: Char);
    procedure tx_faxKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure tablo_velilerBeforeDelete(DataSet: TDataSet);
    procedure tx_veli_adiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_veli_soyadiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_adresiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_veli_iliKeyPress(Sender: TObject; var Key: Char);
    procedure tx_posta_koduKeyPress(Sender: TObject; var Key: Char);
    procedure tx_emailKeyPress(Sender: TObject; var Key: Char);
    procedure tx_meslegiKeyPress(Sender: TObject; var Key: Char);
    procedure tx_is_telefonuKeyPress(Sender: TObject; var Key: Char);
    procedure tx_gsmKeyPress(Sender: TObject; var Key: Char);
    procedure tx_vgrup1KeyPress(Sender: TObject; var Key: Char);
    procedure tx_vgrup2KeyPress(Sender: TObject; var Key: Char);
    procedure tablo_velilerAfterInsert(DataSet: TDataSet);
    procedure tablo_velilerAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_veliler: Tfr_veliler;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_veliler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure Tfr_veliler.FormShow(Sender: TObject);
begin
  tablo_veliler.Open;
  veliler.ApplyBestFit();
end;

procedure Tfr_veliler.tx_ev_telefonuKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    tx_is_telefonu.SetFocus;
    tx_is_telefonu.SelStart := 6;
  end;
end;

procedure Tfr_veliler.tx_faxKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if length(trim(tx_fax.Text))>10 then ck_bfax.Checked:=true;
    tx_vgrup1.SetFocus;
  end;
end;

procedure Tfr_veliler.FormCreate(Sender: TObject);
begin
{ mesleði }
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct meslegi from veliler');
  tablo_oku.open;
  while tablo_oku.Eof = false do
  begin
    tx_meslegi.Properties.Items.Add(tablo_oku.Fields[0].text);
    tablo_oku.Next;
  end;
{ vgruplar }
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct vgrup1 as grup from veliler union select distinct vgrup2 as grup from veliler union select distinct vgrup3 as grup from veliler');
  tablo_oku.open;
  while tablo_oku.Eof = false do
  begin
    tx_vgrup1.Properties.Items.Add(tablo_oku.Fields[0].text);
    tx_vgrup2.Properties.Items.Add(tablo_oku.Fields[0].text);
    tx_vgrup3.Properties.Items.Add(tablo_oku.Fields[0].text);
    tablo_oku.Next;
  end;end;

procedure Tfr_veliler.tablo_velilerBeforeDelete(DataSet: TDataSet);
var
  sql:string;
begin
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select donemi,ogr_no,adi,soyadi from ogrenciler where veli_kodu='+tablo_velilerveli_kodu.Text);
  tablo_oku.Open;
  if tablo_oku.RecordCount<1 then exit;
  sql:='';
  while tablo_oku.Eof=false do
  begin
    sql:=sql+tablo_oku.fieldbyname('donemi').Text+' '
            +tablo_oku.fieldbyname('ogr_no').Text+' '
            +tablo_oku.fieldbyname('adi').Text+' '
            +tablo_oku.fieldbyname('soyadi').Text+#13;
    tablo_oku.Next;
  end;
  if (MessageDlg('Silmek istediðiniz kiþi'+#13+sql+'öðrenci(si)/(leri)nin velisidir. Yinede silmek istiyor musunuz?', mtInformation, [mbYes, mbNo], 0) = mrNo) then
  begin
    tablo_oku.Close;
    Abort;
    exit;
  end;
  sql:='';
  tablo_oku.First;
  while tablo_oku.Eof=false do
  begin
    sql:=sql+''''+tablo_oku.fieldbyname('donemi').Text+tablo_oku.fieldbyname('ogr_no').Text+''',';
    tablo_oku.Next;
  end;
  sql:=copy(sql,1,length(sql)-1);
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('update ogrenciler set veli_kodu=0 where concat(donemi,ogr_no) in ('+sql+')');
  tablo_oku.ExecSQL;
end;

procedure Tfr_veliler.tx_veli_adiKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (TcxDBTextEdit(Sender).Name='tx_veli_adi') then tx_veli_soyadi.SetFocus;
  if (Key = #13) and (TcxDBTextEdit(Sender).Name='tx_veli_ilcesi') then tx_veli_ili.SetFocus;
  if (Key = #13) and (TcxDBTextEdit(Sender).Name='tx_calistigi_yer') then tx_ev_telefonu.SetFocus;
  with Sender as TcxDBTextEdit do
  if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
   Key := bkharf(Key, true)
  else
   Key := bkharf(Key,false);
end;

procedure Tfr_veliler.tx_veli_soyadiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_adresi.SetFocus;
Key := bkharf(Key,true);
end;

procedure Tfr_veliler.tx_adresiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_veli_ilcesi.SetFocus;
  with Sender as TcxDBMemo do
  if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] = '.') then
    Key := bkharf(Key,true)
  else
    Key := bkharf(Key,false);
end;

procedure Tfr_veliler.tx_veli_iliKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_posta_kodu.SetFocus;
  key := bkharf(key,true);
end;

procedure Tfr_veliler.tx_posta_koduKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then tx_email.SetFocus;
end;

procedure Tfr_veliler.tx_emailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    if tx_email.Text <>'' then ck_bemail.Checked:=true;
    tx_meslegi.SetFocus;
  end;
end;

procedure Tfr_veliler.tx_meslegiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then tx_calistigi_yer.SetFocus;
end;

procedure Tfr_veliler.tx_is_telefonuKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_gsm.SetFocus;
end;

procedure Tfr_veliler.tx_gsmKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if length(trim(tx_gsm.Text))>10 then ck_bsms.Checked:=true;
    tx_fax.SetFocus;
  end;
end;

procedure Tfr_veliler.tx_vgrup1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_vgrup2.SetFocus;
end;

procedure Tfr_veliler.tx_vgrup2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tx_vgrup3.SetFocus;
end;

procedure Tfr_veliler.tablo_velilerAfterInsert(DataSet: TDataSet);
begin
  tablo_velilerev_telefonu.Text := '(454)';
  tablo_velileris_telefonu.Text := '(454)';
end;

procedure Tfr_veliler.tablo_velilerAfterEdit(DataSet: TDataSet);
begin
  if tablo_velilerev_telefonu.Text = '' then
    tablo_velilerev_telefonu.Text := '(454)';
  if tablo_velileris_telefonu.Text = '' then
    tablo_velileris_telefonu.Text := '(454)';
end;

end.
