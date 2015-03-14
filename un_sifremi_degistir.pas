unit un_sifremi_degistir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, StdCtrls, Buttons, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit;

type
  Tfr_sifremi_degistir = class(TForm)
    tx_sifre: TcxTextEdit;
    cxLabel1: TcxLabel;
    bt_degistir: TBitBtn;
    bt_iptal: TBitBtn;
    tablo_sifre_degistir: TZReadOnlyQuery;
    tx_sifre_tekrar: TcxTextEdit;
    cxLabel2: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_iptalClick(Sender: TObject);
    procedure bt_degistirClick(Sender: TObject);
    procedure tx_sifreKeyPress(Sender: TObject; var Key: Char);
    procedure tx_sifre_tekrarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sifremi_degistir: Tfr_sifremi_degistir;

implementation
uses veritabani,functionlar,AnaForm;
{$R *.dfm}

procedure Tfr_sifremi_degistir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_sifremi_degistir.bt_iptalClick(Sender: TObject);
begin
 fr_sifremi_degistir.Close;
end;

procedure Tfr_sifremi_degistir.bt_degistirClick(Sender: TObject);
begin
  if tx_sifre.Text <> tx_sifre_tekrar.Text then
  begin
    messagedlg('Yeni þifreniz ile tekrarý uyuþmuyor!',mtError, [mbOk], 0);
    tx_sifre.SetFocus;
    exit;
  end;
  veriler.data_kok.HostName:=ana_bilgisayar;
  veriler.data_kok.Connect;
  tablo_sifre_degistir.Connection:= veriler.data_kok;
  tablo_sifre_degistir.SQL.Clear;
  tablo_sifre_degistir.SQL.Add('SET password for '''+kullanici_adi+'''@''%''=password('''+tx_sifre.Text+''')');
  tablo_sifre_degistir.ExecSQL;
  tablo_sifre_degistir.SQL.Clear;
  tablo_sifre_degistir.SQL.Add('flush privileges');
  tablo_sifre_degistir.ExecSQL;
  veriler.data_kok.Disconnect;
  messagedlg('Þifreniz baþarýyla deðiþtirildi.',mtInformation, [mbOk], 0);
  FrAnaForm.mn_kullanici_degistirClick(FrAnaForm.mn_kullanici_degistir);
end;

procedure Tfr_sifremi_degistir.tx_sifreKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then tx_sifre_tekrar.setfocus;
end;

procedure Tfr_sifremi_degistir.tx_sifre_tekrarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then bt_degistir.setfocus;
end;

end.
