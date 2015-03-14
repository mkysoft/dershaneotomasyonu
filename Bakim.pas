unit Bakim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxControls, cxContainer,
  cxCheckListBox, cxCheckBox, cxEdit, cxLabel, DB, ZAbstractRODataset,
  ZDataset,Strutils;

type
  TFrBakim = class(TForm)
    cxLabel8: TcxLabel;
    tablo_oku: TZReadOnlyQuery;
    bt_bakim: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_bakimClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBakim: TFrBakim;

implementation
uses veritabani, Yedek, functionlar;
{$R *.dfm}

procedure TFrBakim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  veriler.data_kok.Disconnect;
  action := cafree;
end;

procedure TFrBakim.bt_bakimClick(Sender: TObject);
var
tablolar:string;
begin
 tablo_oku.close;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('show tables');
 tablo_oku.open;
 while tablo_oku.eof = false do
 begin
  tablolar:=tablolar+','+tablo_oku.Fields.Fields[0].Text;
  tablo_oku.Next
 end;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('REPAIR TABLE '+rightstr(tablolar,length(tablolar)-1)+' EXTENDED');
 tablo_oku.ExecSQL;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('OPTIMIZE TABLE '+rightstr(tablolar,length(tablolar)-1));
 tablo_oku.ExecSQL;
 tablo_oku.SQL.Clear;
 tablo_oku.SQL.Add('RESET MASTER');
 tablo_oku.ExecSQL;
 messagedlg('Bakým iþlemi baþarýyla tamamlandý.', mtInformation ,[mbOK], 0);
 tablo_oku.close;
end;

procedure TFrBakim.FormCreate(Sender: TObject);
begin
  if ana_bilgisayar='localhost' then
  begin
   veriler.data_kok.HostName:=ana_bilgisayar;
   veriler.data_kok.Connect;
   exit;
  end;
  if bilgisayaradi<>ana_bilgisayar then
  begin
    messagedlg('Bakým iþlemi sadece ana makineden yapýlabilir!', mtError ,[mbOK], 0);
    FrYedek.Close;
  end;
end;

end.

