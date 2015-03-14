unit sinav_tanimlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZDataset, DB, ZAbstractRODataset, ZAbstractDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDropDownEdit, cxCalendar, StdCtrls, Buttons, cxMaskEdit,
  cxTextEdit, ExtCtrls, cxContainer, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ComCtrls, cxGroupBox, DBCtrls,
  cxLookAndFeelPainters, cxButtons, cxDBLookupComboBox, cxVariants,
  cxGridDBDataDefinitions,cxLookupDBGrid, cxGridBandedTableView,
  cxGridDBBandedTableView, cxDataUtils;

type
  Tfr_sinav_tanimlari = class(TForm)
    ara_sinavtanim: TDataSource;
    tablo_sinavtanim: TZQuery;
    tablo_sinavtanimsinav_no: TIntegerField;
    tablo_sinavtanimturu: TStringField;
    tablo_sinavtanimsinav_tarihi: TDateField;
    tablo_sinavtanimsinav_adi: TStringField;
    tablo_sinavtanimturkce_soru_sayisi: TSmallintField;
    tablo_sinavtanimtarih1_soru_sayisi: TSmallintField;
    tablo_sinavtanimcografya_soru_sayisi: TSmallintField;
    tablo_sinavtanimfelsefe_soru_sayisi: TSmallintField;
    tablo_sinavtanimsosyal1_soru_sayisi: TSmallintField;
    tablo_sinavtanimcebir1_soru_sayisi: TSmallintField;
    tablo_sinavtanimgeometri1_soru_sayisi: TSmallintField;
    tablo_sinavtanimmatematik1_soru_sayisi: TSmallintField;
    tablo_sinavtanimmatematik2_soru_sayisi: TSmallintField;
    tablo_sinavtanimfizik1_soru_sayisi: TSmallintField;
    tablo_sinavtanimkimya1_soru_sayisi: TSmallintField;
    tablo_sinavtanimbiyoloji1_soru_sayisi: TSmallintField;
    tablo_sinavtanimfen1_soru_sayisi: TSmallintField;
    tablo_sinavtanimedebiyat_soru_sayisi: TSmallintField;
    tablo_sinavtanimturkiyecografyasi_soru_sayisi: TSmallintField;
    tablo_sinavtanimpsikoloji_soru_sayisi: TSmallintField;
    tablo_sinavtanimedebiyatsosyal_soru_sayisi: TSmallintField;
    tablo_sinavtanimtarih2_soru_sayisi: TSmallintField;
    tablo_sinavtanimulkelercografyasi_soru_sayisi: TSmallintField;
    tablo_sinavtanimsosyoloji_soru_sayisi: TSmallintField;
    tablo_sinavtanimmantik_soru_sayisi: TSmallintField;
    tablo_sinavtanimsosyal2_soru_sayisi: TSmallintField;
    tablo_sinavtanimcebir2_soru_sayisi: TSmallintField;
    tablo_sinavtanimgeometri2_soru_sayisi: TSmallintField;
    tablo_sinavtanimfizik2_soru_sayisi: TSmallintField;
    tablo_sinavtanimkimya2_soru_sayisi: TSmallintField;
    tablo_sinavtanimbiyoloji2_soru_sayisi: TSmallintField;
    tablo_sinavtanimfen2_soru_sayisi: TSmallintField;
    tablo_sinavtanimAturkce: TStringField;
    tablo_sinavtanimAsos1: TStringField;
    tablo_sinavtanimAmat1: TStringField;
    tablo_sinavtanimAfen1: TStringField;
    tablo_sinavtanimAedsos: TStringField;
    tablo_sinavtanimAsos2: TStringField;
    tablo_sinavtanimAmat2: TStringField;
    tablo_sinavtanimAfen2: TStringField;
    tablo_sinavtanimBturkce: TStringField;
    tablo_sinavtanimBsos1: TStringField;
    tablo_sinavtanimBmat1: TStringField;
    tablo_sinavtanimBfen1: TStringField;
    tablo_sinavtanimBedsos: TStringField;
    tablo_sinavtanimBsos2: TStringField;
    tablo_sinavtanimBmat2: TStringField;
    tablo_sinavtanimBfen2: TStringField;
    sayfalar: TPageControl;
    sayfa_sinav: TTabSheet;
    gr_sinavtanim: TcxGrid;
    sinavlar: TcxGridDBTableView;
    sinavlarsinav_no: TcxGridDBColumn;
    sinavlarturu: TcxGridDBColumn;
    sinavlarsinav_tarihi: TcxGridDBColumn;
    sinavlarsinav_adi: TcxGridDBColumn;
    gr_sinavtanimLevel1: TcxGridLevel;
    sayfa_soru_sayilari: TTabSheet;
    gb_oks: TcxGroupBox;
    gb_oss: TcxGroupBox;
    sayfa_cevap_anahtarlari: TTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    lb_kona: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    lb_konb: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    tablo_oku: TZReadOnlyQuery;
    Label2: TLabel;
    Label20: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label18: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label19: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label17: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label57: TLabel;
    tx_t_s_s: TcxDBTextEdit;
    tx_ta1_s_s: TcxDBTextEdit;
    tx_co_s_s: TcxDBTextEdit;
    tx_fe_s_s: TcxDBTextEdit;
    tx_ce1_s_s: TcxDBTextEdit;
    tx_ge1_s_s: TcxDBTextEdit;
    tx_fi1_s_s: TcxDBTextEdit;
    tx_ki1_s_s: TcxDBTextEdit;
    tx_bi1_s_s: TcxDBTextEdit;
    tx_s1_s_s: TcxDBTextEdit;
    tx_m1_s_s: TcxDBTextEdit;
    tx_f1_s_s: TcxDBTextEdit;
    tx_m2_s_s: TcxDBTextEdit;
    tx_ce2_s_s: TcxDBTextEdit;
    tx_ge2_s_s: TcxDBTextEdit;
    tx_f2_s_s: TcxDBTextEdit;
    tx_fi2_s_s: TcxDBTextEdit;
    tx_ki2_s_s: TcxDBTextEdit;
    tx_bi2_s_s: TcxDBTextEdit;
    Label3: TLabel;
    Label16: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    tx_oks_t: TcxDBTextEdit;
    tx_oks_s: TcxDBTextEdit;
    tx_oks_m: TcxDBTextEdit;
    tx_oks_f: TcxDBTextEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxGroupBox5: TcxGroupBox;
    Label100: TLabel;
    Label104: TLabel;
    Label103: TLabel;
    Label102: TLabel;
    Label101: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    sc_text: TcxEditStyleController;
    DBNavigator1: TDBNavigator;
    sayfa_soru_konulari: TTabSheet;
    gr_konu_tanim: TcxGrid;
    gr_konu_tanimLevel1: TcxGridLevel;
    ara_sinavkonu: TDataSource;
    cxGroupBox1: TcxGroupBox;
    bt_kaydet: TcxButton;
    bt_iptal: TcxButton;
    bt_konutanim: TcxButton;
    Panel1: TPanel;
    Label44: TLabel;
    Label43: TLabel;
    tx_ed_s_s: TcxDBTextEdit;
    Label50: TLabel;
    tx_tc_s_s: TcxDBTextEdit;
    tx_edsos_s_s: TcxDBTextEdit;
    tx_p_s_s: TcxDBTextEdit;
    Label45: TLabel;
    Panel2: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    tx_ta2_s_s: TcxDBTextEdit;
    tx_uc_s_s: TcxDBTextEdit;
    tx_sy_s_s: TcxDBTextEdit;
    tx_man_s_s: TcxDBTextEdit;
    tx_s2_s_s: TcxDBTextEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    ara_konutanim: TDataSource;
    tablo_sinavkonutanim: TZReadOnlyQuery;
    tablo_sinavkonutanimid: TIntegerField;
    tablo_sinavkonutanimturu: TStringField;
    tablo_sinavkonutanimders: TStringField;
    tablo_sinavkonutanimkonu: TStringField;
    tablo_sinavkonu: TZQuery;
    tablo_sinavkonusinav_no: TIntegerField;
    tablo_sinavkonuders_konu: TStringField;
    tablo_sinavkonusoru_no_a: TIntegerField;
    tablo_sinavkonuders: TStringField;
    tablo_sinavkonukonu_no: TIntegerField;
    tablo_sinavkonukitapcik_b: TIntegerField;
    tablo_sinavkonukitapcik_a: TIntegerField;
    vw_konu_tanim: TcxGridDBBandedTableView;
    tablo_sinavkonusoru_no_b: TIntegerField;
    vw_konu_tanimkitapcik_a: TcxGridDBBandedColumn;
    vw_konu_tanimsoru_no_a: TcxGridDBBandedColumn;
    vw_konu_tanimkitapcik_b: TcxGridDBBandedColumn;
    vw_konu_tanimsoru_no_b: TcxGridDBBandedColumn;
    vw_konu_tanimders_konu: TcxGridDBBandedColumn;
    vw_konu_tanimders: TcxGridDBBandedColumn;
    vw_konu_tanimkonu_no: TcxGridDBBandedColumn;
    lbi: TLabel;
    tx_oks_i: TcxDBTextEdit;
    tablo_sinavtanimingilizce_soru_sayisi: TSmallintField;
    tablo_sinavtanimAing: TStringField;
    tablo_sinavtanimBing: TStringField;
    LbIng: TLabel;
    TxCpAing: TcxDBTextEdit;
    TxCpBing: TcxDBTextEdit;
    gb_kpss: TcxGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    tx_kpss_t: TcxDBTextEdit;
    tx_kpss_s: TcxDBTextEdit;
    tx_kpss_m: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sayfalarChanging(Sender: TObject; var AllowChange: Boolean);
    procedure sayfa_soru_sayilariShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tx_oks_tKeyPress(Sender: TObject; var Key: Char);
    procedure tx_t_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ta1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_co_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_fe_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_s1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ce1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ge1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_m1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_fi1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ki1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_bi1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_f1_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ed_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_tc_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_p_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ta2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_uc_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_sy_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ce2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ge2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_fi2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_ki2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_bi2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_edsos_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_s2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_m2_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oks_sKeyPress(Sender: TObject; var Key: Char);
    procedure tx_oks_mKeyPress(Sender: TObject; var Key: Char);
    procedure tx_man_s_sKeyPress(Sender: TObject; var Key: Char);
    procedure sayfa_soru_konulariShow(Sender: TObject);
    procedure bt_konutanimClick(Sender: TObject);
    procedure bt_kaydetClick(Sender: TObject);
    procedure bt_iptalClick(Sender: TObject);
    procedure sorukonuekle(sorusay:integer; ders,ders_konu:string; devam:boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sayfa_cevap_anahtarlariShow(Sender: TObject);
    procedure vw_konu_tanimEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure vw_konu_tanimInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure vw_konu_tanimkitapcik_bPropertiesEditValueChanged(
      Sender: TObject);
    procedure tablo_sinavtanimBeforePost(DataSet: TDataSet);
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tx_oks_fKeyPress(Sender: TObject; var Key: Char);
    procedure tx_kpss_tKeyPress(Sender: TObject; var Key: Char);
    procedure tx_kpss_sKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_sinav_tanimlari: Tfr_sinav_tanimlari;

implementation
uses veritabani, konu_tanimlari;
var
  SiraNo:integer;
{$R *.dfm}

procedure Tfr_sinav_tanimlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure Tfr_sinav_tanimlari.sayfalarChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
{ if TTabSheet(Sender)=sayfa_sinav then
  if tablo_sinavtanim.State <> dsbrowse then
  begin
   MessageDlg('Önce sýnav bilgilerini kaydedin!', mtError, [mbOK], 0);
   AllowChange:=false;
  end;}
end;

procedure Tfr_sinav_tanimlari.sayfa_soru_sayilariShow(Sender: TObject);
begin
  if tablo_sinavtanimturu.Text = 'ÖSS' then
  begin
    gb_oks.Visible := false;
    gb_kpss.Visible := false;
    gb_oss.Visible := true;
  end
  else if tablo_sinavtanimturu.Text = 'KPSS' then
  begin
    gb_oks.Visible := false;
    gb_kpss.Visible := true;
    gb_oss.Visible := false;
  end
  else
  begin
    gb_oks.Visible:=true;
    gb_kpss.Visible := false;
    gb_oss.Visible:=false;
    if tablo_sinavtanimturu.Text = 'ÝÖ' then
    begin
      tx_oks_i.Visible := true;
      lbi.Visible := true;
      gb_oks.Caption := ' ÝÖ ';
    end
    else
    begin
      tx_oks_i.Visible := false;
      lbi.Visible := false;
      gb_oks.Caption := ' OKS ';
    end;
  end;
end;

procedure Tfr_sinav_tanimlari.FormCreate(Sender: TObject);
begin
  tablo_sinavtanim.Open;
end;

procedure Tfr_sinav_tanimlari.tx_oks_tKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_oks_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_t_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_ta1_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ta1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_co_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_co_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_fe_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_fe_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
 begin
  tx_s1_s_s.Text:= inttostr(strtoint(tx_ta1_s_s.text)+strtoint(tx_co_s_s.text)+strtoint(tx_fe_s_s.text));
  tx_ce1_s_s.SetFocus;
 end;
end;

procedure Tfr_sinav_tanimlari.tx_s1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_m1_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ce1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_ge1_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ge1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
 begin
  tx_m1_s_s.Text:= inttostr(strtoint(tx_ce1_s_s.text)+strtoint(tx_ge1_s_s.text));
  tx_fi1_s_s.SetFocus;
 end;
end;

procedure Tfr_sinav_tanimlari.tx_m1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_f1_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_fi1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_ki1_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ki1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_bi1_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_bi1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
 begin
  tx_f1_s_s.Text:= inttostr(strtoint(tx_fi1_s_s.text)+strtoint(tx_ki1_s_s.text)+strtoint(tx_bi1_s_s.text));
  tx_ed_s_s.SetFocus;
 end;
end;

procedure Tfr_sinav_tanimlari.tx_f1_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_edsos_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ed_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_tc_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_tc_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_p_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_p_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    tx_ta2_s_s.SetFocus;
    tx_edsos_s_s.Text:= inttostr(strtoint(tx_ed_s_s.text)+strtoint(tx_tc_s_s.text)+strtoint(tx_p_s_s.text));
  end;
end;

procedure Tfr_sinav_tanimlari.tx_ta2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_uc_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_uc_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_sy_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_sy_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_man_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ce2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_ge2_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ge2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
 begin
  tx_m2_s_s.Text:= inttostr(strtoint(tx_ce2_s_s.text)+strtoint(tx_ge2_s_s.text));
  tx_fi2_s_s.SetFocus;
 end;
end;

procedure Tfr_sinav_tanimlari.tx_fi2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_ki2_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_ki2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_bi2_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_bi2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
   tx_f2_s_s.Text:= inttostr(strtoint(tx_fi2_s_s.text)+strtoint(tx_ki2_s_s.text)+strtoint(tx_bi2_s_s.text));
end;

procedure Tfr_sinav_tanimlari.tx_edsos_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_s2_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_s2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_m2_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_m2_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then tx_f2_s_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_oks_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_oks_m.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_oks_mKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_oks_f.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_man_s_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    tx_ce2_s_s.SetFocus;
    tx_s2_s_s.Text:= inttostr(strtoint(tx_ta2_s_s.text)+strtoint(tx_uc_s_s.text)+strtoint(tx_sy_s_s.text)+strtoint(tx_man_s_s.Text));
  end;
end;

procedure Tfr_sinav_tanimlari.sorukonuekle(sorusay:integer; ders,ders_konu:string; devam:boolean);
var
  i:integer;
begin
  if devam = false then SiraNo := 0;
  for i := 1 to sorusay do
  begin
    inc(SiraNo);
    tablo_sinavkonu.Append;
    tablo_sinavkonusinav_no.AsInteger:=tablo_sinavtanimsinav_no.AsInteger;
    tablo_sinavkonusoru_no_a.AsInteger:=i;
    tablo_sinavkonukitapcik_a.AsInteger:=SiraNo;
    tablo_sinavkonuders_konu.AsString:=ders_konu;
    tablo_sinavkonuders.AsString:=ders;
    tablo_sinavkonu.Post;
  end;
end;

procedure Tfr_sinav_tanimlari.sayfa_soru_konulariShow(Sender: TObject);
var
  sorsay: integer;
begin
  TcxComboBoxProperties(vw_konu_tanimders_konu.Properties).Items.Clear;
  ara_konutanim.Enabled:=false;
  ara_sinavkonu.Enabled:=false;
  tablo_sinavkonutanim.Close;
  tablo_sinavkonutanim.Params[0].Text := tablo_sinavtanimturu.Text;
  tablo_sinavkonutanim.Open;
  tablo_sinavkonu.close;
  tablo_sinavkonu.Params[0].AsInteger := tablo_sinavtanimsinav_no.AsInteger;
  tablo_sinavkonu.Open;
  if tablo_sinavkonu.RecordCount < 1 then
  begin
    if tablo_sinavtanimturu.Text='OKS' then
    begin
      sorsay:= strtoint(tx_t_s_s.text);
      sorukonuekle(sorsay,'Türkçe','Türkçe',false);
      sorsay:= strtoint(tx_m1_s_s.text);
      sorukonuekle(sorsay,'Matematik','Matematik',false);
      sorsay:= strtoint(tx_f1_s_s.text);
      sorukonuekle(sorsay,'Fen Bilgisi','Fen Bilgisi',false);
      sorsay:= strtoint(tx_s1_s_s.text);
      sorukonuekle(sorsay,'Sosyal Bilgiler','Sosyal Bilgiler',false);
    end
    else if tablo_sinavtanimturu.Text='KPSS' then
    begin
      sorsay:= strtoint(tx_m1_s_s.text);
      sorukonuekle(sorsay,'Genel Kültür','Genel Kültür',false);
      sorsay:= strtoint(tx_f1_s_s.text);
      sorukonuekle(sorsay,'Genel Yetenek','Genel Yetenek',false);
      sorsay:= strtoint(tx_s1_s_s.text);
      sorukonuekle(sorsay,'Eðitim Bilimleri','Eðitim Bilimleri',false);
    end
    else
    begin
      sorsay:= strtoint(tx_t_s_s.text);
      sorukonuekle(sorsay,'Türkçe','Türkçe',false);
//sosyal 1 ayrýntýlarý yoksa
      if tx_ta1_s_s.text='0' then
      begin
        sorsay:= strtoint(tx_s1_s_s.text);
        sorukonuekle(sorsay,'Sosyal','',false)
      end
      else
      begin
        sorsay:= strtoint(tx_ta1_s_s.text);
        sorukonuekle(sorsay,'Tarih 1','Tarih',false);
        sorsay:= strtoint(tx_co_s_s.text);
        sorukonuekle(sorsay,'Coðrafya','Coðrafya',true);
        sorsay:= strtoint(tx_fe_s_s.text);
        sorukonuekle(sorsay,'Felsefe','Felsefe',true);
      end;
  //matematik 1 ayrýntýlarý yoksa
      if tx_ce1_s_s.text='0' then
      begin
        sorsay:= strtoint(tx_m1_s_s.text);
        sorukonuekle(sorsay,'Matematik','',false)
      end
      else
      begin
        sorsay:= strtoint(tx_ce1_s_s.text);
        sorukonuekle(sorsay,'Cebir 1','Cebir',false);
        sorsay:= strtoint(tx_ge1_s_s.text);
        sorukonuekle(sorsay,'Geometri 1','Geometri',true);
      end;
  //fen 1 ayrýntýlarý yoksa
      if tx_fi1_s_s.text='0' then
      begin
        sorsay:= strtoint(tx_f1_s_s.text);
        sorukonuekle(sorsay,'Fen','',false)
      end
      else
      begin
        sorsay:= strtoint(tx_fi1_s_s.text);
        sorukonuekle(sorsay,'Fizik 1','Fizik',false);
        sorsay:= strtoint(tx_ki1_s_s.text);
        sorukonuekle(sorsay,'Kimya 1','Kimya',true);
        sorsay:= strtoint(tx_bi1_s_s.text);
        sorukonuekle(sorsay,'Biyoloji 1','Biyoloji',true);
      end;
//2. bölüm
//Ed-sos ayrýntýlarý yoksa
      if tx_ed_s_s.text='0' then
      begin
        sorsay:= strtoint(tx_edsos_s_s.text);
        sorukonuekle(sorsay,'Edebiyat-Sosyal','',false)
      end
      else
      begin
        sorsay:= strtoint(tx_ed_s_s.text);
        sorukonuekle(sorsay,'Edebiyat','Edebiyat',false);
        sorsay:= strtoint(tx_tc_s_s.text);
        sorukonuekle(sorsay,'Türkiye Coðrafyasý','Türkiye Coðrafyasý',true);
        sorsay:= strtoint(tx_p_s_s.text);
        sorukonuekle(sorsay,'Psikoloji','Psikoloji',true);
      end;
//sosyal 2 ayrýntýlarý yoksa
      if tx_ta2_s_s.text='0' then
      begin
        sorsay:= strtoint(tx_s2_s_s.text);
        sorukonuekle(sorsay,'Edebiyat','',false)
      end
      else
      begin
        sorsay:= strtoint(tx_ta2_s_s.text);
        sorukonuekle(sorsay,'Tarih 2','Tarih',false);
        sorsay:= strtoint(tx_uc_s_s.text);
        sorukonuekle(sorsay,'Ülkeler Coðrafyasý','Ülkeler Coðrafyasý',true);
        sorsay:= strtoint(tx_sy_s_s.text);
        sorukonuekle(sorsay,'Sosyoloji','Sosyoloji',true);
        sorsay:= strtoint(tx_man_s_s.text);
        sorukonuekle(sorsay,'Mantýk','Mantýk',true);
      end;
//matematik 2 ayrýntýlarý yoksa
      if tx_ce2_s_s.text='0' then
      begin
        sorsay:= strtoint(tx_m2_s_s.text);
        sorukonuekle(sorsay,'Matematik 2','',false)
      end
      else
      begin
        sorsay:= strtoint(tx_ce2_s_s.text);
        sorukonuekle(sorsay,'Cebir 2','Cebir',false);
        sorsay:= strtoint(tx_ge2_s_s.text);
        sorukonuekle(sorsay,'Geometri 2','Geometri',true);
      end;
//fen 2 ayrýntýlarý yoksa
      if tx_fi2_s_s.text='0' then
      begin
        sorsay:= strtoint(tx_f2_s_s.text);
        sorukonuekle(sorsay,'Fizik 2','',false)
      end
      else
      begin
        sorsay:= strtoint(tx_fi2_s_s.text);
        sorukonuekle(sorsay,'Fizik 2','Fizik',false);
        sorsay:= strtoint(tx_ki2_s_s.text);
        sorukonuekle(sorsay,'Kimya 2','Kimya',true);
        sorsay:= strtoint(tx_bi2_s_s.text);
        sorukonuekle(sorsay,'Biyoloji 2','Biyoloji',true);
      end;
    end;
  end;
  with TcxComboBoxProperties(vw_konu_tanimders_konu.Properties).Items do
  if tablo_sinavtanimturu.Text='OKS' then
  begin
//vw_konu_tanim'da ders seçme combobox'ý için
    add('Türkçe');
    add('Matematik');
    add('Fen Bilgisi');
    add('Sosyal Bilgiler');
    add('Ýngilizce');
  end
  else if tablo_sinavtanimturu.Text='OKS' then
  begin
//vw_konu_tanim'da ders seçme combobox'ý için
    add('Genel Kültür');
    add('Genel Yetenek');
    add('Eðitim Bilimleri');
  end
  else
  begin
//vw_konu_tanim'da ders_konu seçme combobox'ý için
    add('Türkçe');
    add('Felsefe');
    add('Coðrafya');
    add('Edebiyat');
    add('Türkiye Coðrafyasý');
    add('Psikoloji');
    add('Tarih');
    add('Ülkeler Coðrafyasý');
    add('Sosyoloji');
    add('Mantýk');
    add('Cebir');
    add('Geometri');
    add('Fizik');
    add('Kimya');
    add('Biyoloji');
  end;
  ara_konutanim.Enabled:=true;
  ara_sinavkonu.Enabled:=true;
end;

procedure Tfr_sinav_tanimlari.bt_konutanimClick(Sender: TObject);
begin
  application.CreateForm(Tfr_konu_tanimlari,fr_konu_tanimlari);
end;

procedure Tfr_sinav_tanimlari.bt_kaydetClick(Sender: TObject);
begin
 tablo_sinavkonu.ApplyUpdates;
 tablo_sinavkonu.CommitUpdates;
end;

procedure Tfr_sinav_tanimlari.bt_iptalClick(Sender: TObject);
begin
 tablo_sinavkonu.CancelUpdates;
end;

procedure Tfr_sinav_tanimlari.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (tablo_sinavkonu.State <> dsInactive) and (tablo_sinavkonu.UpdatesPending=true) then
    case MessageDlg('Soru Konularýnda deðiþiklikler yaptýnýz.'+#13+#10+'Bu deðiþiklikleri þimdi kaydetmek ister misiniz?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: bt_kaydetClick(bt_kaydet) ;
      mrNo: bt_iptalClick(bt_iptal);
      mrCancel:CanClose:=false ;
    end;
end;

procedure Tfr_sinav_tanimlari.sayfa_cevap_anahtarlariShow(Sender: TObject);
begin
  cxDBTextEdit1.Properties.MaxLength := tablo_sinavtanimturkce_soru_sayisi.AsInteger;
  cxDBTextEdit9.Properties.MaxLength := tablo_sinavtanimturkce_soru_sayisi.AsInteger;
  cxDBTextEdit2.Properties.MaxLength := tablo_sinavtanimsosyal1_soru_sayisi.AsInteger;
  cxDBTextEdit10.Properties.MaxLength := tablo_sinavtanimsosyal1_soru_sayisi.AsInteger;
  cxDBTextEdit3.Properties.MaxLength := tablo_sinavtanimmatematik1_soru_sayisi.AsInteger;
  cxDBTextEdit11.Properties.MaxLength := tablo_sinavtanimmatematik1_soru_sayisi.AsInteger;
  cxDBTextEdit4.Properties.MaxLength := tablo_sinavtanimfen1_soru_sayisi.AsInteger;
  cxDBTextEdit12.Properties.MaxLength := tablo_sinavtanimfen1_soru_sayisi.AsInteger;
  cxDBTextEdit5.Properties.MaxLength := tablo_sinavtanimedebiyatsosyal_soru_sayisi.AsInteger;
  cxDBTextEdit13.Properties.MaxLength := tablo_sinavtanimedebiyatsosyal_soru_sayisi.AsInteger;
  cxDBTextEdit6.Properties.MaxLength := tablo_sinavtanimsosyal2_soru_sayisi.AsInteger;
  cxDBTextEdit14.Properties.MaxLength := tablo_sinavtanimsosyal2_soru_sayisi.AsInteger;
  cxDBTextEdit7.Properties.MaxLength := tablo_sinavtanimmatematik2_soru_sayisi.AsInteger;
  cxDBTextEdit15.Properties.MaxLength := tablo_sinavtanimmatematik2_soru_sayisi.AsInteger;
  cxDBTextEdit8.Properties.MaxLength := tablo_sinavtanimfen2_soru_sayisi.AsInteger;
  cxDBTextEdit16.Properties.MaxLength := tablo_sinavtanimfen2_soru_sayisi.AsInteger;
  if tablo_sinavtanimturu.Text = 'ÖSS' then
  begin
    label101.caption:='Sosyal 1';
    label102.caption:='Matematik 1';
    label103.caption:='Fen 1';
    label104.Visible:=true;
    label105.Visible:=true;
    label106.Visible:=true;
    label107.Visible:=true;
    cxDBTextEdit5.Visible:=true;
    cxDBTextEdit6.Visible:=true;
    cxDBTextEdit7.Visible:=true;
    cxDBTextEdit8.Visible:=true;
    cxDBTextEdit13.Visible:=true;
    cxDBTextEdit14.Visible:=true;
    cxDBTextEdit15.Visible:=true;
    cxDBTextEdit16.Visible:=true;
    LbIng.Visible := false;
    TxCpAing.Visible := false;
    TxCpBing.Visible := false;
  end
  else if tablo_sinavtanimturu.Text = 'KPSS' then
  begin
    label101.caption:='Sosyal';
    label102.caption:='Matematik';
    label103.caption:='Fen';
    label104.Visible:=false;
    label105.Visible:=false;
    label106.Visible:=false;
    label107.Visible:=false;
    cxDBTextEdit5.Visible:=false;
    cxDBTextEdit6.Visible:=false;
    cxDBTextEdit7.Visible:=false;
    cxDBTextEdit8.Visible:=false;
    cxDBTextEdit13.Visible:=false;
    cxDBTextEdit14.Visible:=false;
    cxDBTextEdit15.Visible:=false;
    cxDBTextEdit16.Visible:=false;
    LbIng.Visible := false;
    TxCpAing.Visible := false;
    TxCpBing.Visible := false;
  end
  else
  begin
    label101.caption:='Sosyal';
    label102.caption:='Matematik';
    label103.caption:='Fen';
    label104.Visible:=false;
    label105.Visible:=false;
    label106.Visible:=false;
    label107.Visible:=false;
    cxDBTextEdit5.Visible:=false;
    cxDBTextEdit6.Visible:=false;
    cxDBTextEdit7.Visible:=false;
    cxDBTextEdit8.Visible:=false;
    cxDBTextEdit13.Visible:=false;
    cxDBTextEdit14.Visible:=false;
    cxDBTextEdit15.Visible:=false;
    cxDBTextEdit16.Visible:=false;
    if tablo_sinavtanimturu.Text = 'ÝÖ' then
    begin
      LbIng.Visible := true;
      TxCpAing.Visible := true;
      TxCpBing.Visible := true;
    end
    else
    begin
      LbIng.Visible := false;
      TxCpAing.Visible := false;
      TxCpBing.Visible := false;
    end;
  end;
end;

procedure Tfr_sinav_tanimlari.vw_konu_tanimEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  DC: TcxGridDBDataController;
  idxClass: Integer;
begin
  DC := TcxGridDBTableView(Sender).DataController;
  if TcxGridDBColumn(AItem).DataBinding.FieldName = 'konu_no' then
  begin
    idxClass := DC.GetItemByFieldName('ders').Index;
    AAllow := not VarIsSoftNull(DC.Values[DC.FocusedRecordIndex, idxClass]);
  end;
end;

procedure Tfr_sinav_tanimlari.vw_konu_tanimInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  MedClassValue: Variant;
  colMedClassIndex: Integer;
  DC: TcxGridDBDataController;
  LGrid: TcxCustomLookupDBGrid;
  colClassID: TcxLookupDBGridColumn;
begin
  DC := TcxGridDBDataController(Sender.DataController);
  colMedClassIndex := DC.GetItemByFieldName('ders_konu').Index;
  MedClassValue := DC.Values[DC.FocusedRecordIndex, colMedClassIndex];
  if AItem = vw_konu_tanimkonu_no then
  begin
    LGrid := TcxLookupComboBox(AEdit).Properties.Grid;
    colClassID := LGrid.Columns.ColumnByFieldName('ders');
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(colClassID, foEqual, MedClassValue, VarToStr(MedClassValue));
      Active := True;
    end;
  end;
end;

procedure Tfr_sinav_tanimlari.vw_konu_tanimkitapcik_bPropertiesEditValueChanged(
  Sender: TObject);
var
  Edit: TcxCustomEdit;
  Value: Double;
  AnotherColumn: TcxGridColumn;
begin
  Edit := Sender as TcxCustomEdit;
    Value := Edit.EditValue;
    Edit.PostEditValue;
    AnotherColumn := vw_konu_tanim.GetColumnByFieldName('soru_no_b');
    Value:=value - vw_konu_tanim.GetColumnByFieldName('kitapcik_a').EditValue + vw_konu_tanim.GetColumnByFieldName('soru_no_a').EditValue;
    vw_konu_tanim.DataController.SetEditValue(AnotherColumn.Index, Value, evsValue);
end;

procedure Tfr_sinav_tanimlari.tablo_sinavtanimBeforePost(
  DataSet: TDataSet);
begin
  if tablo_sinavtanimtarih1_soru_sayisi.AsInteger + tablo_sinavtanimcografya_soru_sayisi.AsInteger + tablo_sinavtanimfelsefe_soru_sayisi.AsInteger <> 0 then
    tablo_sinavtanimsosyal1_soru_sayisi.AsInteger := tablo_sinavtanimtarih1_soru_sayisi.AsInteger + tablo_sinavtanimcografya_soru_sayisi.AsInteger + tablo_sinavtanimfelsefe_soru_sayisi.AsInteger;
  if tablo_sinavtanimcebir1_soru_sayisi.AsInteger + tablo_sinavtanimgeometri1_soru_sayisi.AsInteger <> 0 then
    tablo_sinavtanimmatematik1_soru_sayisi.AsInteger := tablo_sinavtanimcebir1_soru_sayisi.AsInteger + tablo_sinavtanimgeometri1_soru_sayisi.AsInteger;
  if tablo_sinavtanimfizik1_soru_sayisi.AsInteger + tablo_sinavtanimkimya1_soru_sayisi.AsInteger + tablo_sinavtanimbiyoloji1_soru_sayisi.AsInteger <> 0 then
    tablo_sinavtanimfen1_soru_sayisi.AsInteger := tablo_sinavtanimfizik1_soru_sayisi.AsInteger + tablo_sinavtanimkimya1_soru_sayisi.AsInteger + tablo_sinavtanimbiyoloji1_soru_sayisi.AsInteger;
  if tablo_sinavtanimedebiyat_soru_sayisi.AsInteger + tablo_sinavtanimturkiyecografyasi_soru_sayisi.AsInteger + tablo_sinavtanimpsikoloji_soru_sayisi.AsInteger <> 0 then
    tablo_sinavtanimedebiyatsosyal_soru_sayisi.AsInteger := tablo_sinavtanimedebiyat_soru_sayisi.AsInteger + tablo_sinavtanimturkiyecografyasi_soru_sayisi.AsInteger + tablo_sinavtanimpsikoloji_soru_sayisi.AsInteger;
  if tablo_sinavtanimtarih2_soru_sayisi.AsInteger + tablo_sinavtanimulkelercografyasi_soru_sayisi.AsInteger + tablo_sinavtanimsosyoloji_soru_sayisi.AsInteger +  tablo_sinavtanimmantik_soru_sayisi.AsInteger <> 0 then
    tablo_sinavtanimsosyal2_soru_sayisi.AsInteger := tablo_sinavtanimtarih2_soru_sayisi.AsInteger + tablo_sinavtanimulkelercografyasi_soru_sayisi.AsInteger + tablo_sinavtanimsosyoloji_soru_sayisi.AsInteger +  tablo_sinavtanimmantik_soru_sayisi.AsInteger;
  if tablo_sinavtanimcebir2_soru_sayisi.AsInteger + tablo_sinavtanimgeometri2_soru_sayisi.AsInteger <> 0 then
    tablo_sinavtanimmatematik2_soru_sayisi.AsInteger := tablo_sinavtanimcebir2_soru_sayisi.AsInteger + tablo_sinavtanimgeometri2_soru_sayisi.AsInteger;
  if tablo_sinavtanimfizik2_soru_sayisi.AsInteger + tablo_sinavtanimkimya2_soru_sayisi.AsInteger + tablo_sinavtanimbiyoloji2_soru_sayisi.AsInteger <> 0 then
    tablo_sinavtanimfen2_soru_sayisi.AsInteger := tablo_sinavtanimfizik2_soru_sayisi.AsInteger + tablo_sinavtanimkimya2_soru_sayisi.AsInteger + tablo_sinavtanimbiyoloji2_soru_sayisi.AsInteger;
end;

procedure Tfr_sinav_tanimlari.cxDBTextEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  lb_kona.Top:=(sender as TcxDBTextEdit).top;
  lb_kona.Caption:= inttostr((sender as TcxDBTextEdit).SelStart);
end;

procedure Tfr_sinav_tanimlari.cxDBTextEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  lb_konb.Top := (sender as TcxDBTextEdit).top;
  lb_konb.Caption := inttostr((sender as TcxDBTextEdit).SelStart);
end;

procedure Tfr_sinav_tanimlari.tx_oks_fKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (tx_oks_i.Visible = true) and (Key = #13) then tx_oks_i.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_kpss_tKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_kpss_s.SetFocus;
end;

procedure Tfr_sinav_tanimlari.tx_kpss_sKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tx_kpss_m.SetFocus;
end;

end.
