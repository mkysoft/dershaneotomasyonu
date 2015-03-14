unit SinavSonucundanSinifAtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxControls, cxContainer,
  cxEdit, cxRadioGroup, StdCtrls, cxListBox, cxDBEdit, DBCtrls, cxLabel,
  Buttons,StrUtils, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFrSinavSonucundanSinifAtama = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    rb_puan_turu: TcxRadioGroup;
    tablo_oku: TZReadOnlyQuery;
    cxLabel8: TcxLabel;
    bt_ata: TBitBtn;
    tablo_guncelle: TZReadOnlyQuery;
    Panel1: TPanel;
    Label2: TLabel;
    cm_don_kis: TcxComboBox;
    TbSiniflar: TZReadOnlyQuery;
    TbSiniflarsinif: TStringField;
    DsSiniflar: TDataSource;
    TbSinavlar: TZReadOnlyQuery;
    DsSinavlar: TDataSource;
    gr_sinavlar: TcxGrid;
    sinavlar: TcxGridDBTableView;
    sinavlarsinav_no: TcxGridDBColumn;
    sinavlarturu: TcxGridDBColumn;
    sinavlarsinav_tarihi: TcxGridDBColumn;
    sinavlarsinav_adi: TcxGridDBColumn;
    level1: TcxGridLevel;
    LsHedefSiniflar: TcxListBox;
    BtAsagi: TButton;
    BtYukari: TButton;
    TbSinavlarsinav_no: TIntegerField;
    TbSinavlarturu: TStringField;
    TbSinavlarsinav_tarihi: TDateField;
    TbSinavlarsinav_adi: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_ataClick(Sender: TObject);
    procedure cm_don_kisClick(Sender: TObject);
    procedure BtYukariClick(Sender: TObject);
    procedure BtAsagiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSinavSonucundanSinifAtama: TFrSinavSonucundanSinifAtama;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure TFrSinavSonucundanSinifAtama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrSinavSonucundanSinifAtama.FormCreate(Sender: TObject);
begin
  cm_don_kis.Properties.Items := Donemler;
  cm_don_kis.Text := aktifdonem;
  TbSinavlar.Open;
  cm_don_kisClick(cm_don_kis);
end;

procedure TFrSinavSonucundanSinifAtama.bt_ataClick(Sender: TObject);
var
i,j,k,l,m: integer;
sql: string;
begin
  if sinavlar.Controller.SelectedRowCount < 1 then
  begin
    messagedlg('Sýnav seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  if rb_puan_turu.ItemIndex < 0 then
  begin
    messagedlg('Puan türü seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  if LsHedefSiniflar.SelCount < 1 then
  begin
    messagedlg('Hedef sýnýflar seçilmemiþ!',mtError,[mbOK],0);
    Exit;
  end;
  if messagedlg('Sýnýf atamalarý gerçekleþtirilecek. Devam etmek istiyor musunuz!',mtConfirmation,[mbYes,mbNo],0)<>mrYes then Exit;;
  sql := 'SELECT donemi,ogr_no FROM sinavsonuc where ogr_no > 9';
  sql := sql+' and sinav_no='''+TbSinavlar.fieldbyname('sinav_no').Text+'''';
  sql := sql+' order by puan_'+inttostr(rb_puan_turu.itemindex+1)+' desc';
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add(sql);
  tablo_oku.Open;
  m:=0;
  l:=0;
  for i := 0 to LsHedefSiniflar.Items.Count-1 do
  begin
    if LsHedefSiniflar.Selected[i] = true then
    begin
      if int((tablo_oku.RecordCount-m)/(LsHedefSiniflar.SelCount-l))=(tablo_oku.RecordCount-m)/(LsHedefSiniflar.SelCount-l) then
        k := trunc((tablo_oku.RecordCount-m)/(LsHedefSiniflar.SelCount-l))
      else
        k := trunc((tablo_oku.RecordCount-m)/(LsHedefSiniflar.SelCount-l))+1;
      for j:=1 to k do
      begin
        tablo_guncelle.SQL.Clear;
        tablo_guncelle.SQL.Add('update ogrenciler set sinifi='''+LsHedefSiniflar.Items.Strings[i]+''' where donemi='''+tablo_oku.fieldbyname('donemi').Text+''' and ogr_no='+tablo_oku.fieldbyname('ogr_no').Text);
        tablo_guncelle.ExecSQL;
        tablo_oku.Next;
        if tablo_oku.Eof = true then break;
        inc(m);
      end;
      inc(l);
    end;
    if tablo_oku.Eof = true then break;
  end;
  messagedlg('Atama iþlemi baþarýyla tamamlandý.',mtInformation,[mbOK],0);
end;

procedure TFrSinavSonucundanSinifAtama.cm_don_kisClick(Sender: TObject);
begin
  TbSiniflar.Close;
  TbSiniflar.Params[0].Text := cm_don_kis.Text;
  TbSiniflar.Open;
  LsHedefSiniflar.Items.Clear;
  while TbSiniflar.Eof = false do
  begin
    LsHedefSiniflar.Items.Add(TbSiniflar.fieldbyname('sinif').Text);
    TbSiniflar.Next;
  end;
end;

procedure TFrSinavSonucundanSinifAtama.BtYukariClick(Sender: TObject);
var
 sec: integer;
begin
  if LsHedefSiniflar.ItemIndex <= 0 then exit;
  sec := LsHedefSiniflar.ItemIndex;
  LsHedefSiniflar.Items.Move(LsHedefSiniflar.ItemIndex,LsHedefSiniflar.ItemIndex-1);
  LsHedefSiniflar.Selected[Sec-1] := true;
end;

procedure TFrSinavSonucundanSinifAtama.BtAsagiClick(Sender: TObject);
var
 sec: integer;
begin
  if (LsHedefSiniflar.ItemIndex = -1) or (LsHedefSiniflar.ItemIndex = LsHedefSiniflar.Items.Count -1) then exit;
  sec := LsHedefSiniflar.ItemIndex;
  LsHedefSiniflar.Items.Move(LsHedefSiniflar.ItemIndex,LsHedefSiniflar.ItemIndex+1);
  LsHedefSiniflar.Selected[Sec+1] := true;
end;

end.
