unit un_hesap_kapatma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxLabel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset;

type
  Tfr_hesap_kapatma = class(TForm)
    cxLabel8: TcxLabel;
    Label31: TLabel;
    Label1: TLabel;
    bt_hesabi_kapat: TBitBtn;
    tx_tarih_bas: TcxDateEdit;
    tx_tarih_bit: TcxDateEdit;
    tablo_oku1: TZReadOnlyQuery;
    tablo_oku2: TZReadOnlyQuery;
    tablo_oku3: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bt_hesabi_kapatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_hesap_kapatma: Tfr_hesap_kapatma;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_hesap_kapatma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_hesap_kapatma.FormShow(Sender: TObject);
begin
  tx_tarih_bas.Date := now();
  tx_tarih_bit.Date := now();
end;

procedure Tfr_hesap_kapatma.bt_hesabi_kapatClick(Sender: TObject);
label tablo1ekle,tablo2ekle,gec1;
begin
  if tx_tarih_bit.date < tx_tarih_bas.Date then
  begin
     messagedlg('Tarih aralýðý yanlýþ. Kontrol ediniz!',mtError, [mbOk], 0);
     Exit;
  end;
  // ilgili hesap dikkate alýnacak
//'SELECT * FROM paraakisi WHERE tarih between '2003-12-03' AND '2003-12-03''
  tablo_oku1.Close;
  tablo_oku1.SQL.Clear;
  tablo_oku1.SQL.Add('SELECT sum(alinan) AS toplam_alinan,sum(verilen) AS toplam_verilen,ilgilihesap FROM paraakisi where tarih between "'+mtarih(tx_tarih_bas.Date)+'" and "'+mtarih(tx_tarih_bit.date)+'" GROUP BY ilgilihesap');
  tablo_oku1.Open;
  tablo_oku2.Close;
  tablo_oku2.SQL.Clear;
  tablo_oku2.SQL.Add('SELECT sum(alinan) AS toplam_alinan,sum(verilen) AS toplam_verilen,ilgilihesap FROM gizli inner join paraakisi on ogr_no=ilgili_no AND gizli.donemi=paraakisi.donemi where tarih between "'+mtarih(tx_tarih_bas.date)+'" and "'+mtarih(tx_tarih_bit.date)+'" GROUP BY ilgilihesap');
  tablo_oku2.Open;
  tablo_oku3.Close;
  tablo_oku3.SQL.Clear;
  tablo_oku3.SQL.Add('delete from paraakisi where tarih between "'+mtarih(tx_tarih_bas.date)+'" and "'+mtarih(tx_tarih_bit.date)+'"');
  tablo_oku3.ExecSQL;
  while (tablo_oku1.Eof=false) or (tablo_oku2.Eof=false) do
  begin
    if tablo_oku1.Eof =true then goto tablo2ekle;
    if tablo_oku2.Eof =true then goto tablo1ekle;
    if tablo_oku1.FieldByName('ilgilihesap').Text = tablo_oku2.FieldByName('ilgilihesap').Text then
    begin
      tablo_oku3.SQL.Clear;
      tablo_oku3.SQL.Add('insert into paraakisi set donemi=''GIZLI'',ilgili_no=9,tarih=now(),islem_tarihi=now(),ilgilihesap='''
      +tablo_oku1.FieldByName('ilgilihesap').Text+''',alinan='''
      +tablo_oku2.FieldByName('toplam_alinan').text
      +''',verilen='''+tablo_oku2.FieldByName('toplam_verilen').text
      +''',aciklama=''Hesap kapatma '+tx_tarih_bas.Text+'-'+tx_tarih_bit.text+'''');
      tablo_oku3.ExecSQL;
      if (tablo_oku1.FieldByName('toplam_alinan').AsFloat-tablo_oku2.FieldByName('toplam_alinan').AsFloat=0) and
         (tablo_oku1.FieldByName('toplam_verilen').AsFloat-tablo_oku2.FieldByName('toplam_verilen').AsFloat= 0) then goto gec1;
      tablo_oku3.SQL.Clear;
      tablo_oku3.SQL.Add('insert into paraakisi set donemi=''HESAPKAPA'',tarih=now(),islem_tarihi=now(),ilgilihesap='''
      +tablo_oku1.FieldByName('ilgilihesap').Text+''',alinan='''
      +floattostr(tablo_oku1.FieldByName('toplam_alinan').AsFloat-tablo_oku2.FieldByName('toplam_alinan').AsFloat)
      +''',verilen='''+floattostr(tablo_oku1.FieldByName('toplam_verilen').AsFloat-tablo_oku2.FieldByName('toplam_verilen').AsFloat)
      +''',aciklama=''Hesap kapatma '+tx_tarih_bas.Text+'-'+tx_tarih_bit.text+'''');
      tablo_oku3.ExecSQL;
      gec1:
      tablo_oku1.Next;
      tablo_oku2.Next;
    end
    else if tablo_oku1.FieldByName('ilgilihesap').Text > tablo_oku2.FieldByName('ilgilihesap').Text then
    begin
      tablo2ekle:
      tablo_oku3.SQL.Clear;
      tablo_oku3.SQL.Add('insert into paraakisi set donemi=''GIZLI'',ilgili_no=9,tarih=now(),islem_tarihi=now(),ilgilihesap='''
      +tablo_oku2.FieldByName('ilgilihesap').Text+''',alinan='
      +tablo_oku2.FieldByName('toplam_alinan').text
      +',verilen='+tablo_oku2.FieldByName('toplam_verilen').Text
      +',aciklama=''Hesap kapatma '+tx_tarih_bas.Text+'-'+tx_tarih_bit.text+'''');
      tablo_oku3.ExecSQL;
      tablo_oku2.Next;
    end
    else if tablo_oku1.FieldByName('ilgilihesap').Text < tablo_oku2.FieldByName('ilgilihesap').Text then
    begin
      tablo1ekle:
      tablo_oku3.SQL.Clear;
      tablo_oku3.SQL.Add('insert into paraakisi set donemi=''HESAPKAPA'',tarih=now(),islem_tarihi=now(),ilgilihesap='''
      +tablo_oku1.FieldByName('ilgilihesap').Text+''',alinan='''
      +tablo_oku1.FieldByName('toplam_alinan').text
      +''',verilen='''+tablo_oku1.FieldByName('toplam_verilen').Text
      +''',aciklama=''Hesap kapatma '+tx_tarih_bas.Text+'-'+tx_tarih_bit.text+'''');
      tablo_oku3.ExecSQL;
      tablo_oku1.Next;
    end;
  end;
  messagedlg(tx_tarih_bas.text + '-'+tx_tarih_bit.text+' tarihleri arasý baþarýyla kapatýldý.',mtInformation, [mbOk], 0);
end;

end.
