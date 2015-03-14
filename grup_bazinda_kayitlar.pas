unit grup_bazinda_kayitlar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ZAbstractRODataset, ZDataset, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxGridLnk,cxExportGrid4Link,ShellAPI, dxPScxCommon,
  dxmdaset;

type
  Tfr_grup_bazinda_kayitlar = class(TForm)
    tablo_oku: TZReadOnlyQuery;
    gr_genel: TcxGrid;
    gr_genel1: TcxGridDBTableView;
    gr_genelLevel1: TcxGridLevel;
    ara_kayitsay: TDataSource;
    mn_genel: TcxGridPopupMenu;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    bt_hesapla: TBitBtn;
    bt_yazdir: TBitBtn;
    bt_exceleaktar: TBitBtn;
    t_zaman: TTimer;
    dosya: TSaveDialog;
    pr_genel_rapor: TdxComponentPrinter;
    tx_tarih: TcxDateEdit;
    tx_donemi: TcxComboBox;
    Label2: TLabel;
    pr_genel_raporLink1: TdxGridReportLink;
    mem_kayitsay: TdxMemData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_hesaplaClick(Sender: TObject);
    procedure t_zamanTimer(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure bt_yazdirClick(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_grup_bazinda_kayitlar: Tfr_grup_bazinda_kayitlar;

implementation
uses veritabani, un_gorunum;
{$R *.dfm}

procedure Tfr_grup_bazinda_kayitlar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfr_grup_bazinda_kayitlar.bt_hesaplaClick(Sender: TObject);
var
  i,duzeltme:integer;
  sql:string;
  AField : TField;
begin
  if (copy(tx_tarih.Text,7,4) < copy(tx_donemi.text,1,4)) or
     (copy(tx_tarih.Text,7,4) > copy(tx_donemi.text,6,4)) then
  begin
    MessageDlg('Seçtiðiniz tarih içinde bulunduðunuz dönemde deðil!', mtError, [mbOK], 0);
    tx_tarih.SetFocus;
    Exit;
  end;
  if copy(tx_tarih.Text,7,4) = copy(tx_donemi.text,1,4) then
    duzeltme := 0
  else
    duzeltme := 1;
// düzeltme deðiþkeni donemin ikinci yýlýnda mý yoksa birinci yýlýndamý olduðumuzu
// anlamamýza yarayacaktýr.
  tablo_oku.close;
  mem_kayitsay.Close;
  while mem_kayitsay.FieldCount > 1 do
    mem_kayitsay.Fields[mem_kayitsay.FieldCount - 1].Free;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct donemi from ogrenciler order by donemi asc');
  tablo_oku.Open;
  AField := TStringField.Create(self);
  AField.Name := 'mem_kayitsaygrup1';
  AField.DisplayLabel := 'Grup 1';
  AField.FieldName := 'grup1';
  AField.Size:=12;
  AField.SetFieldType(ftString);
  AField.DataSet := mem_kayitsay;
  AField := TStringField.Create(self);
  AField.Name := 'mem_kayitsaygrup2';
  AField.DisplayLabel := 'Grup 2';
  AField.FieldName := 'grup2';
  AField.Size:=12;
  AField.SetFieldType(ftString);
  AField.DataSet := mem_kayitsay;
  AField := TStringField.Create(self);
  AField.Name := 'mem_kayitsaygrup3';
  AField.DisplayLabel := 'Grup 3';
  AField.FieldName := 'grup3';
  AField.Size:=12;
  AField.SetFieldType(ftString);
  AField.DataSet := mem_kayitsay;
  while tablo_oku.Eof = false do
  begin
    if tablo_oku.Fields.Fields[0].Text <> '' then
    begin
      AField := TIntegerField.Create(self);
      AField.Name := 'mem_kayitsay'+StringReplace(tablo_oku.Fields.Fields[0].Text,'-','_',[rfReplaceAll]);
      AField.DisplayLabel := tablo_oku.Fields.Fields[0].Text;
      AField.FieldName := StringReplace(tablo_oku.Fields.Fields[0].Text,'-','_',[rfReplaceAll]);
      AField.SetFieldType(ftInteger);
      AField.DataSet := mem_kayitsay;
      AField := TFloatField.Create(self);
      AField.Name := 'mem_kayitsay'+StringReplace(tablo_oku.Fields.Fields[0].Text,'-','_',[rfReplaceAll])+'_kayit_bedeli';
      AField.DisplayLabel := tablo_oku.Fields.Fields[0].Text+' Kayýt Bedeli';
      AField.FieldName := StringReplace(tablo_oku.Fields.Fields[0].Text,'-','_',[rfReplaceAll])+'_kayit_bedeli';
      AField.SetFieldType(ftFloat);
      AField.DataSet := mem_kayitsay;
   end;
    tablo_oku.Next;
  end;
  tablo_oku.Close;
  mem_kayitsay.FieldDefs.Update;
  mem_kayitsay.Open;
  i := 3;
  while i < mem_kayitsay.FieldCount-1 do
  begin
    tablo_oku.close;
    tablo_oku.SQL.Clear;
    sql:='select donemi,grup1,grup2,grup3,count(ogr_no) as sayi,sum(borc(donemi,ogr_no)) as kayit_bedeli'
      +' from ogrenciler where '
      +'donemi='+QuotedStr(StringReplace(mem_kayitsay.FieldDefList.FieldDefs[i].Name,'_','-',[rfReplaceAll]))
      +' and kayit_tarihi<='
      +QuotedStr(inttostr(strtoint(copy(mem_kayitsay.FieldDefList.FieldDefs[i].Name,1,4))+duzeltme)+'-'+copy(tx_tarih.text,4,2)+'-'+copy(tx_tarih.text,1,2))
      +' group by donemi,grup1,grup2,grup3';
    tablo_oku.SQL.Add(sql);
    tablo_oku.Open;
    while tablo_oku.Eof=false do
    begin
      if mem_kayitsay.Locate('grup1;grup2;grup3',varArrayof([tablo_oku.FieldByName('grup1').Text,tablo_oku.FieldByName('grup2').Text,tablo_oku.FieldByName('grup3').Text]), [])=false then
      begin
        mem_kayitsay.Append;
        mem_kayitsay.FieldByName('grup1').Text:=tablo_oku.FieldByName('grup1').Text;
        mem_kayitsay.FieldByName('grup2').Text:=tablo_oku.FieldByName('grup2').Text;
        mem_kayitsay.FieldByName('grup3').Text:=tablo_oku.FieldByName('grup3').Text;
      end
      else
        mem_kayitsay.Edit;
      mem_kayitsay.FieldByName(StringReplace(tablo_oku.fieldbyname('donemi').text,'-','_',[rfReplaceAll])).AsInteger:=tablo_oku.FieldByName('sayi').AsInteger;
      mem_kayitsay.FieldByName(StringReplace(tablo_oku.fieldbyname('donemi').text,'-','_',[rfReplaceAll])+'_kayit_bedeli').Asfloat:=tablo_oku.FieldByName('kayit_bedeli').Asfloat;
      mem_kayitsay.Post;
      tablo_oku.Next;
    end;
    i := i + 2;
  end;
//grid ayarlama
  gr_genel1.ClearItems;
  gr_genel1.DataController.DataSource := nil;
  gr_genel1.DataController.DataSource := ara_kayitsay;
  gr_genel1.DataController.CreateAllItems;
  for i := 1 to gr_genel1.ColumnCount -1 do
    gr_genel1.Columns[i].Name := 'gr_genel1'+gr_genel1.Columns[i].DataBinding.FieldName ;
// summary summery ekleme
  for i:= 5 TO gr_genel1.ColumnCount do
  begin
    with gr_genel1.DataController.Summary do
    begin
      BeginUpdate;
      try
        with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
        begin
          Column := gr_genel1.Columns[i-1];
          Kind := skSum;
          if pos('_kayit_bedeli',gr_genel1.Columns[i-1].Name) > 0 then
            Format := '0,.## YTL'
          else
            Format := '# Kiþi';
        end;
      finally
        EndUpdate;
      end;
      gr_genel1.DataController.ClearDetails;
    end;
  end;
  gr_genel1.ApplyBestFit();
  gr_genel1.Columns[1].SortOrder:=soAscending;
end;

procedure Tfr_grup_bazinda_kayitlar.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_grup_bazinda_kayitlar.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_genel,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_grup_bazinda_kayitlar.bt_yazdirClick(Sender: TObject);
begin
  pr_genel_rapor.Preview(True,nil);
end;

procedure Tfr_grup_bazinda_kayitlar.bt_exceleaktarClick(Sender: TObject);
begin
  dosya.Execute;
end;

procedure Tfr_grup_bazinda_kayitlar.FormCreate(Sender: TObject);
begin
  tx_tarih.Date:=now();
  tablo_oku.close;
  mem_kayitsay.FieldDefs.Clear;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select distinct donemi from ogrenciler order by donemi desc');
  tablo_oku.Open;
  while tablo_oku.Eof=false do
  begin
    tx_donemi.Properties.Items.Add(tablo_oku.fieldbyname('donemi').Text);
    tablo_oku.next;
  end;
  if tx_donemi.Properties.Items.Count > 1 then
    tx_donemi.ItemIndex:=0;
  tablo_oku.Close;  
end;

end.
