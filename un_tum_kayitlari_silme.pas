unit un_tum_kayitlari_silme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxControls, cxContainer,
  cxCheckListBox, cxCheckBox, cxEdit, cxLabel, DB, ZAbstractRODataset,
  ZDataset;

type
  Tfr_tum_kayitlari_silme = class(TForm)
    GroupBox1: TGroupBox;
    lst_tablolar: TcxCheckListBox;
    Panel1: TPanel;
    bt_sil: TBitBtn;
    cxLabel8: TcxLabel;
    Panel2: TPanel;
    chk_tumunu_sec: TcxCheckBox;
    tablo_oku: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk_tumunu_secClick(Sender: TObject);
    procedure bt_silClick(Sender: TObject);
    procedure lst_tablolarClickCheck(Sender: TObject;
      const AIndex: Integer; const OldState, NewState: TcxCheckBoxState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_tum_kayitlari_silme: Tfr_tum_kayitlari_silme;

implementation
uses veritabani;
{$R *.dfm}

procedure Tfr_tum_kayitlari_silme.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfr_tum_kayitlari_silme.chk_tumunu_secClick(Sender: TObject);
var
i: integer;
begin
  for i:= 0 to lst_tablolar.Count-1 do
    lst_tablolar.Items.Items[i].Checked := chk_tumunu_sec.Checked;
end;

procedure Tfr_tum_kayitlari_silme.bt_silClick(Sender: TObject);
var
i: integer;
silinenler:string;
begin
 for i:= 0 to lst_tablolar.Count-1 do
 begin
   if lst_tablolar.Items.Items[i].Checked = true then
   begin
     tablo_oku.SQL.Clear;
     tablo_oku.SQL.Add('TRUNCATE TABLE '+lst_tablolar.Items.Items[i].Text);
     tablo_oku.ExecSQL;
     silinenler:=silinenler+lst_tablolar.Items.Items[i].Text+', ';
     if i=4 then
     begin
       tablo_oku.SQL.Clear;
       tablo_oku.SQL.Add('insert into gizli set donemi=''GIZLI'',ogr_no=9');
       tablo_oku.ExecSQL;
     end;
     if i=8 then
     begin
       tablo_oku.SQL.Clear;
       tablo_oku.SQL.Add('update ayarlar set makbuz_sira_no=1');
       tablo_oku.ExecSQL;
     end;
   end;
 end;
    messagedlg(silinenler +'tablolarý baþarýyla silindi.', mtInformation ,[mbOK], 0);
end;

procedure Tfr_tum_kayitlari_silme.lst_tablolarClickCheck(Sender: TObject;
  const AIndex: Integer; const OldState, NewState: TcxCheckBoxState);
begin
 if AIndex = 10 then
  lst_tablolar.Items.Items[11].State := NewState;
 if AIndex = 11 then
  lst_tablolar.Items.Items[10].state := NewState;
end;

end.
