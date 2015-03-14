unit BosNumaralar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxControls, cxContainer, cxListBox, DB, ZAbstractRODataset, ZDataset,
  StdCtrls, Buttons, ExtCtrls;

type
  TFrBosNumaralar = class(TForm)
    lb_ogrno: TcxListBox;
    cb_donemi: TcxComboBox;
    cxLabel1: TcxLabel;
    tablo_ogrno: TZReadOnlyQuery;
    tablo_ogrnoogr_no: TIntegerField;
    bt_sec: TBitBtn;
    bt_iptal: TBitBtn;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    tx_alt_sinir: TcxTextEdit;
    tx_ust_sinir: TcxTextEdit;
    bt_goster: TBitBtn;
    Panel1: TPanel;
    bt_sonraki_donem: TBitBtn;
    bt_onceki_donem: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cb_donemiClick(Sender: TObject);
    procedure cb_donemiKeyPress(Sender: TObject; var Key: Char);
    procedure bt_iptalClick(Sender: TObject);
    procedure bt_secClick(Sender: TObject);
    procedure lb_ogrnoDblClick(Sender: TObject);
    procedure bt_gosterClick(Sender: TObject);
    procedure tx_alt_sinirKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ust_sinirKeyPress(Sender: TObject; var Key: Char);
    procedure bt_onceki_donemClick(Sender: TObject);
    procedure bt_sonraki_donemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBosNumaralar: TFrBosNumaralar;

implementation

uses
veritabani, functionlar;
{$R *.dfm}

procedure TFrBosNumaralar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  reg_yaz('Boþ Numaralar Alt Sýnýr', tx_alt_sinir.Text);
  reg_yaz('Boþ Numaralar Üst Sýnýr', tx_ust_sinir.Text);
  Action:=caFree;
end;

procedure TFrBosNumaralar.FormCreate(Sender: TObject);
begin
  cb_donemi.Properties.Items := Donemler;
  cb_donemi.Text := AktifDonem;
  tx_alt_sinir.Text := reg_oku('Boþ Numaralar Alt Sýnýr');
  tx_ust_sinir.Text := reg_oku('Boþ Numaralar Üst Sýnýr');
  if (tx_alt_sinir.Text = '') or (tx_ust_sinir.Text = '') then
  begin
  tx_alt_sinir.Text := '10';
  tx_ust_sinir.Text := '400';
  end;
  cb_donemiClick(cb_donemi);
end;

procedure TFrBosNumaralar.cb_donemiClick(Sender: TObject);
var
  i: integer;
begin
  if strtoint(tx_alt_sinir.Text) < 10 then
  begin
    messagedlg('Alt Sýnýr yanlýþ girilmiþ. 10 dan küçük olamaz!', mtError ,[mbOK], 0);
    exit;
  end;
  if strtoint(tx_alt_sinir.Text) >  strtoint(tx_ust_sinir.Text) then
  begin
    messagedlg('Alt Sýnýr Üst Sýnýrdan büyük olmaz!', mtError ,[mbOK], 0);
    exit;
  end;
  tablo_ogrno.Close;
  tablo_ogrno.Params[0].Text := cb_donemi.Text;
  tablo_ogrno.Params[1].AsInteger := strtoint(tx_alt_sinir.Text);
  tablo_ogrno.Params[2].AsInteger := strtoint(tx_ust_sinir.Text);
  tablo_ogrno.Open;
  lb_ogrno.Clear;
  for i := strtoint(tx_alt_sinir.Text) to strtoint(tx_ust_sinir.Text) do
    if (tablo_ogrno.Eof = false) then
      if (i <> tablo_ogrno.Fields[0].AsInteger) then
        lb_ogrno.Items.Add(inttostr(i))
      else
        tablo_ogrno.next
    else
      lb_ogrno.Items.Add(inttostr(i));
end;

procedure TFrBosNumaralar.cb_donemiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then cb_donemiClick(cb_donemi);
end;

procedure TFrBosNumaralar.bt_iptalClick(Sender: TObject);
begin
  SOgr.Iptal := true;
  Close;
end;

procedure TFrBosNumaralar.bt_secClick(Sender: TObject);
begin
  if lb_ogrno.ItemIndex=lb_ogrno.Count-1 then
  begin
    messagedlg('Geçersiz öðrenci numarasý!',mtError, [mbOk], 0);
    SOgr.Iptal := true;
    exit;
  end;
  SOgr.OgrNo := strtoint(lb_ogrno.Items[lb_ogrno.itemindex]);
  SOgr.Donem := cb_donemi.Text;
  SOgr.KayitVar := true;
  SOgr.Iptal := false;
  Close;
end;

procedure TFrBosNumaralar.lb_ogrnoDblClick(Sender: TObject);
begin
  bt_secClick(bt_sec);
end;

procedure TFrBosNumaralar.bt_gosterClick(Sender: TObject);
begin
  cb_donemiClick(cb_donemi);
end;

procedure TFrBosNumaralar.tx_alt_sinirKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tx_ust_sinir.SetFocus;
end;

procedure TFrBosNumaralar.tx_ust_sinirKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then cb_donemiClick(cb_donemi);
end;

procedure TFrBosNumaralar.bt_onceki_donemClick(Sender: TObject);
begin
 cb_donemi.ItemIndex := cb_donemi.ItemIndex-1;
end;

procedure TFrBosNumaralar.bt_sonraki_donemClick(Sender: TObject);
begin
 cb_donemi.ItemIndex := cb_donemi.ItemIndex+1;
end;

end.
