unit eposta_ayarlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  DB, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfr_eposta_ayarlari = class(TForm)
    tablo_eposta_ayarlari: TZQuery;
    tablo_eposta_ayarlariusername: TStringField;
    tablo_eposta_ayarlarisifre: TStringField;
    tablo_eposta_ayarlarikanal: TStringField;
    sc_text: TcxEditStyleController;
    dn_sms_ayarlari: TDBNavigator;
    ara_eposta_ayarlari: TDataSource;
    tx_username: TcxDBTextEdit;
    tx_sifre: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    tx_smtp: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_eposta_ayarlari: Tfr_eposta_ayarlari;

implementation
uses veritabani;
{$R *.dfm}

procedure Tfr_eposta_ayarlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfr_eposta_ayarlari.FormShow(Sender: TObject);
begin
  tablo_eposta_ayarlari.Open;
end;

end.
