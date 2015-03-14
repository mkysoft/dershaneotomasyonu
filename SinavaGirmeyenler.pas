unit SinavaGirmeyenler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxControls, cxContainer,
  cxListBox, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, ZAbstractDataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, Buttons,StrUtils,
  ComCtrls, ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxGridLnk,cxExportGrid4Link,ShellApi, cxLabel,
  dxPScxCommon, dxPSContainerLnk, dxmdaset, cxSplitter, cxTreeView, ImgList;

type
  Tfr_sinava_girmeyenler = class(TForm)
    tablo_oku: TZReadOnlyQuery;
    ara_sinav: TDataSource;
    tablo_sinavlar: TZReadOnlyQuery;
    tablo_sinavlarsinav_adi: TStringField;
    tablo_sinavlarsinav_tarihi: TDateField;
    tablo_ogr: TZReadOnlyQuery;
    ara_girmemesi_gerekenler: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gr_girmeyenler: TcxGrid;
    girmeyenler: TcxGridDBTableView;
    girmeyenlerdonemi: TcxGridDBColumn;
    girmeyenlerogr_no: TcxGridDBColumn;
    girmeyenleradi: TcxGridDBColumn;
    girmeyenlersoyadi: TcxGridDBColumn;
    girmeyenlersinifi: TcxGridDBColumn;
    gr_girmeyenlerLevel1: TcxGridLevel;
    gr_girmemesi_gerekenler: TcxGrid;
    girmemesi_gerekenler: TcxGridDBTableView;
    gr_girmemesi_gerekenlerLevel1: TcxGridLevel;
    girmemesi_gerekenlerdonemi: TcxGridDBColumn;
    girmemesi_gerekenlerogr_no: TcxGridDBColumn;
    girmemesi_gerekenleradi: TcxGridDBColumn;
    girmemesi_gerekenlersoyadi: TcxGridDBColumn;
    girmemesi_gerekenlersinifi: TcxGridDBColumn;
    girmemesi_gerekenlersinav_adi: TcxGridDBColumn;
    girmemesi_gerekenlersinav_tarihi: TcxGridDBColumn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxGroupBox1: TcxGroupBox;
    gr_sinavlar: TcxGrid;
    sinavlar: TcxGridDBTableView;
    sinavlarsinav_adi: TcxGridDBColumn;
    sinavlarsinav_tarihi: TcxGridDBColumn;
    level1: TcxGridLevel;
    Panel2: TPanel;
    bt_kontrol_et: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    bt_yazdir: TBitBtn;
    bt_exceleaktar: TBitBtn;
    dosya: TSaveDialog;
    pr_sinava_girmeyenler: TdxComponentPrinter;
    t_zaman: TTimer;
    dosya2: TSaveDialog;
    pr_sinava_girmemesi_gerekenler: TdxComponentPrinter;
    t_zaman2: TTimer;
    Panel5: TPanel;
    Panel6: TPanel;
    bt_yazdir2: TBitBtn;
    bt_excele_aktar2: TBitBtn;
    cxLabel8: TcxLabel;
    bt_devamsizlik_isler: TBitBtn;
    tablo_isle: TZReadOnlyQuery;
    sinavlarsinav_no: TcxGridDBColumn;
    tablo_sinavlarsinav_no: TIntegerField;
    pr_sinava_girmeyenlerLink1: TdxGridReportLink;
    pr_sinava_girmemesi_gerekenlerLink1: TdxCustomContainerReportLink;
    tablo_girmeyenler: TdxMemData;
    tablo_girmeyenlerdonemi: TStringField;
    tablo_girmeyenlerogr_no: TIntegerField;
    tablo_girmeyenleradi: TStringField;
    tablo_girmeyenlersoyadi: TStringField;
    tablo_girmeyenlersinifi: TStringField;
    ara_girmeyenler: TDataSource;
    tablo_girmemesi_gerekenler: TdxMemData;
    tablo_girmemesi_gerekenlerdonemi: TStringField;
    tablo_girmemesi_gerekenlerogr_no: TIntegerField;
    tablo_girmemesi_gerekenleradi: TStringField;
    tablo_girmemesi_gerekenlersoyadi: TStringField;
    tablo_girmemesi_gerekenlersinifi: TStringField;
    tablo_girmemesi_gerekenlersinav_adi: TStringField;
    tablo_girmemesi_gerekenlersinav_tarihi: TDateField;
    cxSplitter1: TcxSplitter;
    TVGruplar: TcxTreeView;
    ImageList1: TImageList;
    tablo_sinavlarkonu: TStringField;
    sinavlarturu: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_kontrol_etClick(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure t_zamanTimer(Sender: TObject);
    procedure bt_excele_aktar2Click(Sender: TObject);
    procedure bt_yazdir2Click(Sender: TObject);
    procedure dosya2CanClose(Sender: TObject; var CanClose: Boolean);
    procedure t_zaman2Timer(Sender: TObject);
    procedure tablo_okuFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tablo_ogrFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure bt_devamsizlik_islerClick(Sender: TObject);
    procedure TVGruplarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sinava_girmeyenler: Tfr_sinava_girmeyenler;

implementation
uses veritabani,functionlar,AnaForm;
{$R *.dfm}

procedure Tfr_sinava_girmeyenler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfr_sinava_girmeyenler.FormCreate(Sender: TObject);
type
  TNode = record
  Id: int64;
  Adi: string[12];
  Ustgrup: int64;
  Seviye: shortint;
end;

var
  i,k,l: integer;
  MyNodeS1,MyNodeS2 : TTreeNode;
  Node: array of TNode;

begin
  tablo_oku.sql.clear;
  tablo_oku.SQL.Add('SELECT ADI,USTGRUP,SEVIYE,ID FROM GRUPLAR ORDER BY SEVIYE,USTGRUP');
  tablo_oku.Open;
  setlength(Node,tablo_oku.RecordCount);
  i:=0;
  while tablo_oku.eof = false do
  begin
    Node[i].Id := tablo_oku.fieldbyname('ID').AsInteger;
    Node[i].Ustgrup := tablo_oku.fieldbyname('USTGRUP').AsInteger;
    Node[i].Seviye := tablo_oku.fieldbyname('SEVIYE').AsInteger;
    Node[i].Adi := tablo_oku.fieldbyname('ADI').Text;
    inc(i);
    tablo_oku.Next;
  end;
  tablo_oku.Close;
  i:=0;
  while Node[i].Seviye = 1 do
  begin
    MyNodeS1 := TVGruplar.Items.Add(Nil,Node[i].Adi);
    for k:=0 to length(Node) - 1 do
      if Node[k].Ustgrup = Node[i].Id then
      begin
        MyNodeS2 := TVGruplar.Items.AddChild(MyNodeS1,Node[k].Adi);
        for l:=0 to length(Node) - 1 do
          if Node[l].Ustgrup = Node[k].Id then
             TVGruplar.Items.AddChild(MyNodeS2,Node[l].Adi);
      end;
    inc(i);
  end;
  Setlength(Node,0);
  tablo_sinavlar.Open;
  sinavlar.ApplyBestFit();
end;

procedure Tfr_sinava_girmeyenler.bt_kontrol_etClick(Sender: TObject);
var
  sql,donem,grup1,grup2,grup3 : string;
  i : integer;
  MyNode1,MyNode2,MyNode3: TTreeNode;
label oku_gec,ogr_gec,gec;
begin
  if sinavlar.Controller.SelectedRecordCount < 1 then
  begin
    messagedlg('Sýnav seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  tablo_oku.Close;
  sql:='select count(donemi) as say,donemi from sinavsonuc where sinav_no in (';
  for i:= 0 to sinavlar.Controller.SelectedRecordCount-1 do
    sql:= sql+ inttostr(sinavlar.Controller.SelectedRecords[i].Values[0])+',';
  sql := LeftStr(sql,length(sql)-1);
  sql:=sql+') GROUP BY donemi ORDER BY say desc';
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add(sql);
  tablo_oku.open;
  donem := '';
  while tablo_oku.Eof = false do
  begin
    donem := donem+''''+tablo_oku.fieldbyname('donemi').Text+''',';
    tablo_oku.Next;
  end;
  donem := LeftStr(donem,length(donem)-1);
  if donem='' then donem:='''''';
  tablo_oku.Close;
  sql:='SELECT donemi,ogr_no,adi,soyadi,sinifi,sinav_adi,sinav_tarihi from sinavsonuc join sinavtanim using (sinav_no) where sinavsonuc.sinav_no in (';
  for i:= 0 to sinavlar.Controller.SelectedRecordCount-1 do
    sql:= sql+ inttostr(sinavlar.Controller.SelectedRecords[i].Values[0])+',';
  sql := LeftStr(sql,length(sql)-1);
  sql := sql+') order by donemi,ogr_no';
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add(sql);
  tablo_oku.Filtered := gizli;
  tablo_oku.Open;
  grup1 := '';
  grup2 := '';
  grup3 := '';
  sql := '';
  MyNode1 := TVGruplar.Items.GetFirstNode;
  While Assigned(MyNode1) do
  begin
    MyNode2 := MyNode1.getFirstChild;
    While Assigned(MyNode2) do
    begin
      MyNode3 := MyNode2.getFirstChild;
      While Assigned(MyNode3) do
      begin
        if MyNode3.ImageIndex = 1 then
          sql := sql + '(grup1='+QuotedStr(MyNode1.Text)
                     + ' and grup2='+QuotedStr(MyNode2.Text)
                     + ' and grup3='+QuotedStr(MyNode3.Text)
                     + ') or ';
        MyNode3 := MyNode3.getNextSibling;
      end;
      if (MyNode2.ImageIndex = 1) and (MyNode2.HasChildren = false) then
        sql := sql + '(grup1='+QuotedStr(MyNode1.Text)
                   + ' and grup2='+QuotedStr(MyNode2.Text)
                   + ') or ';
      MyNode2 := MyNode2.getNextSibling;
    end;
    if (MyNode1.ImageIndex = 1) and (MyNode1.HasChildren = false) then
      sql := sql + '(grup1='+QuotedStr(MyNode1.Text)
                 + ') or ';
    MyNode1 := MyNode1.getNextSibling;
  end;
  sql := LeftStr(sql,length(sql)-3);
  if sql = '' then
  begin
    messagedlg('Grup seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  sql := 'SELECT donemi,ogr_no,adi,soyadi,sinifi FROM ogrenciler WHERE ('+sql
         +') and donemi in ('+donem+') order by donemi,ogr_no';
  tablo_ogr.SQL.Clear;
  tablo_ogr.SQL.Add(sql);
  tablo_ogr.Filtered := gizli;
  tablo_ogr.Open;
//kontrol baþladý
  tablo_girmeyenler.Close;
  tablo_girmeyenler.Open;
  tablo_girmemesi_gerekenler.Close;
  tablo_girmemesi_gerekenler.Open;
  while (tablo_ogr.Eof = false) or (tablo_oku.Eof=false) do
  begin
  if tablo_ogr.Eof = true then goto oku_gec;
  if tablo_oku.Eof = true then goto ogr_gec;
  if tablo_ogr.FieldByName('donemi').text > tablo_oku.FieldByName('donemi').text then goto ogr_gec;
  if tablo_ogr.FieldByName('donemi').text < tablo_oku.FieldByName('donemi').text then goto oku_gec;
  if tablo_ogr.FieldByName('donemi').text = tablo_oku.FieldByName('donemi').text then
  begin
   if tablo_ogr.FieldByName('ogr_no').AsInteger > tablo_oku.FieldByName('ogr_no').AsInteger then goto oku_gec;
   if tablo_ogr.FieldByName('ogr_no').AsInteger < tablo_oku.FieldByName('ogr_no').AsInteger then goto ogr_gec;
   if tablo_ogr.FieldByName('ogr_no').AsInteger = tablo_oku.FieldByName('ogr_no').AsInteger then
   begin
    tablo_ogr.Next;
    tablo_oku.Next;
    goto gec;
   end;
  end;
ogr_gec:
    tablo_girmeyenler.Append;
    tablo_girmeyenlerdonemi.AsString:=tablo_ogr.FieldByName('donemi').AsString;
    tablo_girmeyenlerogr_no.AsInteger:=tablo_ogr.FieldByName('ogr_no').AsInteger;
    tablo_girmeyenleradi.AsString:=tablo_ogr.FieldByName('adi').AsString;
    tablo_girmeyenlersoyadi.AsString:=tablo_ogr.FieldByName('soyadi').AsString;
    tablo_girmeyenlersinifi.AsString:=tablo_ogr.FieldByName('sinifi').AsString;
    tablo_girmeyenler.Post;
    tablo_ogr.Next;
goto gec;
oku_gec:
    tablo_girmemesi_gerekenler.Append;
    tablo_girmemesi_gerekenlerdonemi.AsString:=tablo_oku.FieldByName('donemi').AsString;
    tablo_girmemesi_gerekenlerogr_no.AsInteger:=tablo_oku.FieldByName('ogr_no').AsInteger;
    tablo_girmemesi_gerekenleradi.AsString:=tablo_oku.FieldByName('adi').AsString;
    tablo_girmemesi_gerekenlersoyadi.AsString:=tablo_oku.FieldByName('soyadi').AsString;
    tablo_girmemesi_gerekenlersinifi.AsString:=tablo_oku.FieldByName('sinifi').AsString;
    tablo_girmemesi_gerekenlersinav_adi.AsString:=tablo_oku.FieldByName('sinav_adi').AsString;
    tablo_girmemesi_gerekenlersinav_tarihi.AsDateTime:=tablo_oku.FieldByName('sinav_tarihi').AsDateTime;
    tablo_girmemesi_gerekenler.Post;
    tablo_oku.Next;
gec:
  end;
  tablo_oku.Close;
  tablo_ogr.Close;
  girmeyenler.ApplyBestFit();
  girmemesi_gerekenler.ApplyBestFit();
end;

procedure Tfr_sinava_girmeyenler.bt_exceleaktarClick(Sender: TObject);
begin
 dosya.Execute;
end;

procedure Tfr_sinava_girmeyenler.bt_yazdirClick(Sender: TObject);
var
i:integer;
metin:string;
begin
  for i:= 0 to sinavlar.Controller.SelectedRecordCount-1 do
    metin:= metin+ sinavlar.Controller.SelectedRecords[i].Values[0]+',';
  metin := LeftStr(metin,length(metin)-1);
  gr_girmeyenlerLevel1.Caption := metin+' Sýnav(lar)ýna Girmeyenlerin Listesi';
  pr_sinava_girmeyenler.Preview(True,nil);
end;

procedure Tfr_sinava_girmeyenler.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_girmeyenler,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_sinava_girmeyenler.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
  t_zaman.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_sinava_girmeyenler.bt_excele_aktar2Click(Sender: TObject);
begin
 dosya2.Execute;
end;

procedure Tfr_sinava_girmeyenler.bt_yazdir2Click(Sender: TObject);
var
i:integer;
metin:string;
begin
  for i:= 0 to sinavlar.Controller.SelectedRecordCount-1 do
    metin:= metin+ sinavlar.Controller.SelectedRecords[i].Values[0]+',';
  metin := LeftStr(metin,length(metin)-1);
  gr_girmemesi_gerekenlerLevel1.Caption := metin+' Sýnav(lar)ýna Girmemesi Gerekenlerin Listesi';
  pr_sinava_girmemesi_gerekenler.Preview(True,nil);
end;

procedure Tfr_sinava_girmeyenler.dosya2CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya2.FileName,gr_girmemesi_gerekenler,True,True,True);
  t_zaman2.Enabled := true;
end;

procedure Tfr_sinava_girmeyenler.t_zaman2Timer(Sender: TObject);
begin
  if fileexists(dosya2.FileName) = true then
  begin
  t_zaman2.Enabled := false;
  ShellExecute(Handle, PChar('OPEN'), PChar(dosya2.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_sinava_girmeyenler.tablo_okuFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_oku.fieldbyname('donemi').AsString,tablo_oku.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_sinava_girmeyenler.tablo_ogrFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  gizlimi: boolean;
begin
  gizlimi := veriler.tablo_gizli.Locate('donemi;ogr_no',vararrayof([tablo_ogr.fieldbyname('donemi').AsString,tablo_ogr.fieldbyname('ogr_no').AsInteger]),[loCaseInsensitive]);
  if gizlimi = true then
    accept := false
  else
    accept := true;
end;

procedure Tfr_sinava_girmeyenler.bt_devamsizlik_islerClick(
  Sender: TObject);
var
i:integer;
sql,mesaj:string;
begin
 if girmeyenler.Controller.SelectedRecordCount<1 then
 begin
  messagedlg('Hiç bir kayýt seçilmemiþ!', mtError ,[mbOK], 0);
  exit;
 end;
 tablo_isle.Close;
 for i:= 0 to girmeyenler.Controller.SelectedRecordCount-1 do
 begin
  tablo_isle.SQL.Clear;
  sql:= 'select ogr_no from devamsizliklar where donemi='''+girmeyenler.Controller.SelectedRows[i].DisplayTexts[0]+
   ''' and ogr_no='+girmeyenler.Controller.SelectedRows[i].DisplayTexts[1]+
   ' and ders_1=''SINAV'' and tarih="'+mtarih(tablo_sinavlar.fieldbyname('sinav_tarihi').AsDateTime)+'"';
  tablo_isle.SQL.Add(sql);
  tablo_isle.Open;
  if tablo_isle.RecordCount < 1 then
  begin
   tablo_isle.Close;
   tablo_isle.SQL.Clear;
   sql:= 'insert into devamsizliklar set donemi='''+girmeyenler.Controller.SelectedRows[i].DisplayTexts[0]+
    ''' ,ogr_no='+girmeyenler.Controller.SelectedRows[i].DisplayTexts[1]+
    ' ,ders_1=''SINAV'' ,tarih="'+mtarih(tablo_sinavlar.fieldbyname('sinav_tarihi').AsDateTime)+'"';
   tablo_isle.SQL.Add(sql);
   tablo_isle.ExecSQL;
  end
  else
  begin
   tablo_isle.Close;
   mesaj:= mesaj+girmeyenler.Controller.SelectedRows[i].DisplayTexts[0]+' '+girmeyenler.Controller.SelectedRows[i].DisplayTexts[1]+#13;
  end;
 end;
 messagedlg(mesaj+'bu öðrencilerin devamsizliklari zaten girilmiþ. Diðer(ler)i baþarýyla kaydedildi', mtInformation ,[mbOK], 0);
end;

procedure Tfr_sinava_girmeyenler.TVGruplarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  MyNode,MyNodeY,MyNodeA1,MyNodeA2,MyNodeA3:TTreeNode;
  IsVar: boolean;
begin
  if htOnItem in TVGruplar.GetHitTestInfoAt(X, Y) then
  begin
    MyNode := TVGruplar.GetNodeAt(X,Y);
    if MyNode.ImageIndex = 0 then
      MyNode.ImageIndex := 1
    else
      MyNode.ImageIndex := 0;
//atalar
    IsVar := false;
    if MyNode.ImageIndex = 0 then
      IsVar := true;
    MyNodeY := MyNode.getPrevSibling;
    while Assigned(MyNodeY) = true do
    begin
      if MyNodeY.ImageIndex = 1 then
        IsVar := true;
      MyNodeY := MyNodeY.getPrevSibling;
    end;
    MyNodeY := MyNode.getNextSibling;
    while Assigned(MyNodeY) = true do
    begin
      if MyNodeY.ImageIndex = 1 then
        IsVar := true;
      MyNodeY := MyNodeY.getNextSibling;
    end;
    if IsVar = false then
    begin
      MyNodeY := MyNode.Parent;
      while Assigned(MyNodeY) = true do
      begin
        MyNodeY.ImageIndex := MyNode.ImageIndex;
        TVGruplar.Selected := MyNodeY;
        MyNodeY := MyNodeY.Parent;
      end;
    end;
//çocuklar
    MyNodeA1 := MyNode.getFirstChild;
    while Assigned(MyNodeA1) = true do
    begin
      MyNodeA1.ImageIndex := MyNode.ImageIndex;
      TVGruplar.Selected := MyNodeA1;
      MyNodeA2 := MyNodeA1.getFirstChild;
      while Assigned(MyNodeA2) = true do
      begin
        MyNodeA2.ImageIndex := MyNode.ImageIndex;
        TVGruplar.Selected := MyNodeA2;
        MyNodeA3 := MyNodeA2.getFirstChild;
        while Assigned(MyNodeA3) = true do
        begin
          MyNodeA3.ImageIndex := MyNode.ImageIndex;
          TVGruplar.Selected := MyNodeA3;
          MyNodeA3 := MyNodeA2.GetNextChild(MyNodeA3);
        end;
        MyNodeA2 := MyNodeA1.GetNextChild(MyNodeA2);
      end;
      MyNodeA1 := MyNode.GetNextChild(MyNodeA1);
    end;
    TVGruplar.Selected := nil;
  end;
end;

end.

