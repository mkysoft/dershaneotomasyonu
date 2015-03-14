unit sms_ayarlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxLabel,
  StdCtrls, Buttons;

type
  Tfr_sms_ayarlari = class(TForm)
    tablo_sms_ayarlari: TZQuery;
    dn_sms_ayarlari: TDBNavigator;
    tx_username: TcxDBTextEdit;
    ara_sms_ayarlari: TDataSource;
    tablo_sms_ayarlarigateway: TStringField;
    tablo_sms_ayarlariusername: TStringField;
    tablo_sms_ayarlarisifre: TStringField;
    tablo_sms_ayarlarikanal: TStringField;
    tablo_sms_ayarlarioriginator: TStringField;
    tx_sifre: TcxDBTextEdit;
    tx_kanal: TcxDBTextEdit;
    tx_originator: TcxDBTextEdit;
    tx_gateway: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    sc_text: TcxEditStyleController;
    BitBtn1: TBitBtn;
    tablo_oku: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sms_ayarlari: Tfr_sms_ayarlari;

implementation

uses veritabani, SMSFonksiyonlari;
{$R *.dfm}

procedure Tfr_sms_ayarlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfr_sms_ayarlari.FormShow(Sender: TObject);
begin
  tablo_sms_ayarlari.Open;
end;

procedure Tfr_sms_ayarlari.BitBtn1Click(Sender: TObject);
var
  originator, username, sifre:string;
begin
  tablo_oku.Close;
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('select username,sifre from ayarlar');
  tablo_oku.Open;
  username:= tablo_oku.fieldbyname('username').Text;
  username := StringReplace(username,' ','%20',[rfReplaceAll]);
  sifre:= tablo_oku.fieldbyname('sifre').Text;
  tablo_oku.Close;
  originator := HTTPGet('http://www.biotekno.biz:8080/SMS-Web/examine?username=' + username + '&password=' + sifre + '&type=titles');
  if originator <> '' then
    MessageDlg('Kullanabileceðiniz baþlýklar'+#13+#10+ originator, mtInformation, [mbOK], 0);
end;

end.
