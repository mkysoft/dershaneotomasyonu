unit un_pratik_puan_hesabi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, CalcExpress, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, cxLabel, cxContainer, cxTextEdit,
  ExtCtrls, cxMemo;

type
  Tfr_pratik_puan_hesabi = class(TForm)
    ara_formul: TDataSource;
    GroupBox1: TGroupBox;
    gr_formul: TcxGrid;
    formuller: TcxGridDBTableView;
    level2: TcxGridLevel;
    Panel1: TPanel;
    bt_hesapla: TBitBtn;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tx_turkce_dogru: TcxTextEdit;
    tx_sosyal1_dogru: TcxTextEdit;
    tx_matematik1_dogru: TcxTextEdit;
    tx_fen1_dogru: TcxTextEdit;
    tx_turkce_yanlis: TcxTextEdit;
    tx_sosyal1_yanlis: TcxTextEdit;
    tx_matematik1_yanlis: TcxTextEdit;
    tx_fen1_yanlis: TcxTextEdit;
    tx_fen1_net: TcxTextEdit;
    tx_matematik1_net: TcxTextEdit;
    tx_sosyal1_net: TcxTextEdit;
    tx_turkce_net: TcxTextEdit;
    GroupBox3: TGroupBox;
    lb_puan_3: TcxLabel;
    lb_puan_2: TcxLabel;
    lb_puan_1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    lb_formul: TcxLabel;
    hesap1: TCalcExpress;
    hesap2: TCalcExpress;
    hesap3: TCalcExpress;
    hesap6: TCalcExpress;
    hesap5: TCalcExpress;
    hesap4: TCalcExpress;
    formullerid: TcxGridDBColumn;
    formullerformul_6: TcxGridDBColumn;
    formullerformul_5: TcxGridDBColumn;
    formullerformul_4: TcxGridDBColumn;
    formullerformul_3: TcxGridDBColumn;
    formullerformul_2: TcxGridDBColumn;
    formullerformul_1: TcxGridDBColumn;
    formulleryanlis_dogru_orani: TcxGridDBColumn;
    formulleraciklama: TcxGridDBColumn;
    tablo_formul: TZQuery;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    tx_fen2_dogru: TcxTextEdit;
    tx_matematik2_dogru: TcxTextEdit;
    tx_sosyal2_dogru: TcxTextEdit;
    tx_edsos_dogru: TcxTextEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    tx_fen2_yanlis: TcxTextEdit;
    tx_matematik2_yanlis: TcxTextEdit;
    tx_sosyal2_yanlis: TcxTextEdit;
    tx_edsos_yanlis: TcxTextEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    tx_edsos_net: TcxTextEdit;
    tx_sosyal2_net: TcxTextEdit;
    tx_matematik2_net: TcxTextEdit;
    tx_fen2_net: TcxTextEdit;
    tablo_formulid: TIntegerField;
    tablo_formulformul_6: TStringField;
    tablo_formulformul_5: TStringField;
    tablo_formulformul_4: TStringField;
    tablo_formulformul_3: TStringField;
    tablo_formulformul_2: TStringField;
    tablo_formulformul_1: TStringField;
    tablo_formulyanlis_dogru_orani: TIntegerField;
    tablo_formulaciklama: TStringField;
    cxLabel1: TcxLabel;
    lb_puan_4: TcxLabel;
    lb_puan_5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    lb_puan_6: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_hesaplaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tx_turkce_dogruEnter(Sender: TObject);
    procedure tx_turkce_dogruKeyPress(Sender: TObject; var Key: Char);
    procedure tx_fen2_yanlisKeyPress(Sender: TObject; var Key: Char);
    procedure tx_fen2_netKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_pratik_puan_hesabi: Tfr_pratik_puan_hesabi;

implementation
uses AnaForm,veritabani;
{$R *.dfm}

procedure Tfr_pratik_puan_hesabi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfr_pratik_puan_hesabi.bt_hesaplaClick(Sender: TObject);
var
TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2 : double;
metin:string;
begin
  TUR:= strtofloat(tx_turkce_net.text);
  SOS1:= strtofloat(tx_sosyal1_net.text);
  MAT1:= strtofloat(tx_matematik1_net.text);
  FEN1:= strtofloat(tx_fen1_net.text);
  EDSOS:= strtofloat(tx_edsos_net.text);
  SOS2:= strtofloat(tx_sosyal2_net.text);
  MAT2:= strtofloat(tx_matematik2_net.text);
  FEN2:= strtofloat(tx_fen2_net.text);
  hesap1.Formula := tablo_formul.fieldbyname('formul_1').Text;
  hesap2.Formula := tablo_formul.fieldbyname('formul_2').Text;
  hesap3.Formula := tablo_formul.fieldbyname('formul_3').Text;
  hesap4.Formula := tablo_formul.fieldbyname('formul_4').Text;
  hesap5.Formula := tablo_formul.fieldbyname('formul_5').Text;
  hesap6.Formula := tablo_formul.fieldbyname('formul_6').Text;
  lb_puan_1.Caption := floattostrf(hesap1.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2]),ffFixed,12,3);
  lb_puan_2.Caption := floattostrf(hesap2.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2]),ffFixed,12,3);
  lb_puan_3.Caption := floattostrf(hesap3.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2]),ffFixed	,12,3);
  lb_puan_4.Caption := floattostrf(hesap4.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2]),ffFixed,12,3);
  lb_puan_5.Caption := floattostrf(hesap5.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2]),ffFixed,12,3);
  lb_puan_6.Caption := floattostrf(hesap6.calc([TUR,SOS1,MAT1,FEN1,EDSOS,SOS2,MAT2,FEN2]),ffFixed	,12,3);
  metin := tx_turkce_dogru.Text;
  lb_formul.caption := tablo_formul.fieldbyname('aciklama').Text+' formülüne göre;';
  tx_turkce_dogru.SetFocus;
  tx_turkce_dogru.Text:= metin;
  tx_turkce_dogru.SelectAll;
end;

procedure Tfr_pratik_puan_hesabi.FormCreate(Sender: TObject);
begin
  tablo_formul.Open;
end;

procedure Tfr_pratik_puan_hesabi.tx_turkce_dogruEnter(Sender: TObject);
begin
  TcxTextEdit(Sender).Text := '0';
end;

procedure Tfr_pratik_puan_hesabi.tx_turkce_dogruKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    if tcxtextedit(sender).Name='tx_turkce_yanlis' then
      tx_turkce_net.Text:=floattostr(strtoint(tx_turkce_dogru.Text)-(strtoint(tx_turkce_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    if tcxtextedit(sender).Name='tx_sosyal1_yanlis' then
      tx_sosyal1_net.Text:=floattostr(strtoint(tx_sosyal1_dogru.Text)-(strtoint(tx_sosyal1_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    if tcxtextedit(sender).Name='tx_matematik1_yanlis' then
      tx_matematik1_net.Text:=floattostr(strtoint(tx_matematik1_dogru.Text)-(strtoint(tx_matematik1_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    if tcxtextedit(sender).Name='tx_fen1_yanlis' then
      tx_fen1_net.Text:=floattostr(strtoint(tx_fen1_dogru.Text)-(strtoint(tx_fen1_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    if tcxtextedit(sender).Name='tx_edsos_yanlis' then
      tx_edsos_net.Text:=floattostr(strtoint(tx_edsos_dogru.Text)-(strtoint(tx_edsos_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    if tcxtextedit(sender).Name='tx_sosyal2_yanlis' then
      tx_sosyal2_net.Text:=floattostr(strtoint(tx_sosyal2_dogru.Text)-(strtoint(tx_sosyal2_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    if tcxtextedit(sender).Name='tx_matematik2_yanlis' then
      tx_matematik2_net.Text:=floattostr(strtoint(tx_matematik2_dogru.Text)-(strtoint(tx_matematik2_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    SelectNext(ActiveControl,true,true);
  end;
end;

procedure Tfr_pratik_puan_hesabi.tx_fen2_yanlisKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    tx_fen2_net.Text:=floattostr(strtoint(tx_fen2_dogru.Text)-(strtoint(tx_fen2_yanlis.Text)/tablo_formulyanlis_dogru_orani.AsInteger));
    bt_hesapla.Click;
  end;
end;

procedure Tfr_pratik_puan_hesabi.tx_fen2_netKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then bt_hesapla.Click;
end;

end.
