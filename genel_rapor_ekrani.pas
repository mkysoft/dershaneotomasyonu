unit genel_rapor_ekrani;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxSplitter, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractDataset, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu, ExtCtrls, StdCtrls,
  Buttons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxGridLnk,cxExportGrid4Link,ShellAPI, dxPScxCommon, cxFilterControl,
  cxDBFilterControl, cxLookAndFeelPainters, cxButtons, ZDbcIntfs;

type
  Tfr_genel_rapor_ekrani = class(TForm)
    tablo_genel: TZReadOnlyQuery;
    ara_genel: TDataSource;
    gr_komutlar1: TcxGridDBTableView;
    gr_komutlarLevel1: TcxGridLevel;
    gr_komutlar: TcxGrid;
    tablo_komutlar: TZQuery;
    ara_komutlar: TDataSource;
    tablo_komutlarid: TAutoIncField;
    tablo_komutlaraciklama: TStringField;
    tablo_komutlarkomut: TMemoField;
    gr_komutlar1id: TcxGridDBColumn;
    gr_komutlar1aciklama: TcxGridDBColumn;
    gr_komutlar1komut: TcxGridDBColumn;
    gr_genel1: TcxGridDBTableView;
    gr_genelLevel1: TcxGridLevel;
    gr_genel: TcxGrid;
    mn_genel: TcxGridPopupMenu;
    pn_dugmeler: TPanel;
    dosya: TSaveDialog;
    t_zaman: TTimer;
    pr_genel_rapor: TdxComponentPrinter;
    Panel2: TPanel;
    pr_genel_raporLink1: TdxGridReportLink;
    filtre_genel: TcxDBFilterControl;
    bt_raporla: TcxButton;
    pn_komut_filtre: TPanel;
    bt_iptal: TcxButton;
    bt_hazirla: TcxButton;
    sp_bol: TcxSplitter;
    bt_yazdir: TcxButton;
    bt_exceleaktar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dosyaCanClose(Sender: TObject; var CanClose: Boolean);
    procedure t_zamanTimer(Sender: TObject);
    procedure bt_raporlaClick(Sender: TObject);
    procedure bt_hazirlaClick(Sender: TObject);
    procedure bt_iptalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_yazdirClick(Sender: TObject);
    procedure bt_exceleaktarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_genel_rapor_ekrani: Tfr_genel_rapor_ekrani;

implementation
uses veritabani, functionlar, un_gorunum, cxGridDBDataDefinitions;

{$R *.dfm}

procedure Tfr_genel_rapor_ekrani.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_genel_rapor_ekrani.FormCreate(Sender: TObject);
begin
  tablo_komutlar.Open;
end;

procedure Tfr_genel_rapor_ekrani.dosyaCanClose(Sender: TObject;
  var CanClose: Boolean);
begin
  ExportGrid4ToExcel(dosya.FileName,gr_genel,True,True,True);
  t_zaman.Enabled := true;
end;

procedure Tfr_genel_rapor_ekrani.t_zamanTimer(Sender: TObject);
begin
  if fileexists(dosya.FileName) = true then
  begin
    t_zaman.Enabled := false;
    ShellExecute(Handle, PChar('OPEN'), PChar(dosya.FileName), nil, nil, SW_SHOWMINIMIZED);
  end;
end;

procedure Tfr_genel_rapor_ekrani.bt_raporlaClick(Sender: TObject);
var
  filtre, sql,OrgSQL:string;
  HavingYeri,i:integer;
begin
  sp_bol.CloseSplitter;
  gr_genel1.ClearItems;
  gr_genel1.DataController.DataSource := nil;
  filtre := filtre_genel.FilterText;
  tablo_genel.Close;
  tablo_genel.SQL.Clear;
  sql:= tablo_komutlar.FieldByName('komut').asString;
  if filtre<>'' then
  begin
    OrgSQL:=sql;
    HavingYeri:=pos('HAVING',sql);
    if HavingYeri=0 then
      HavingYeri:=pos('having',sql);
    if HavingYeri>0 then
      insert(' '+filtre+' and',sql,HavingYeri+6)
    else
      sql:=sql+' HAVING '+filtre;
  end;
  tablo_genel.SQL.Add(sql);
  try
    tablo_genel.Open;
  except
    on E:EZSQLThrowable do
      if (pos('Duplicate column name',E.Message) > 0)
        or (pos('having clause is ambiguous',E.Message) > 0) then
      begin
        tablo_genel.Close;
        tablo_genel.SQL.Clear;
        case MessageDlg('Girmiþ olduðunuz kurallarý sorgulamam baþarýsýz oldu.'+#13+#10+'Kuralsýz olarak sorguyu çalýþtýrmak istiyormusunuz.', mtWarning, [mbYes, mbNo], 0) of
          mrYes:
          begin
            tablo_genel.SQL.Add(OrgSQL);
            tablo_genel.Open;
          end;
          mrNo:
          begin
            bt_iptal.Click;
            exit;
          end;
        end;
      end;
  end;
  gr_genel.Visible:=true;
  gr_genel1.DataController.DataSource := ara_genel;
  gr_genel1.DataController.CreateAllItems;
  for i := 1 to gr_genel1.ColumnCount -1 do
    gr_genel1.Columns[i].Name := 'gr_genel1'+gr_genel1.Columns[i].DataBinding.FieldName ;
  fr_gorunum.sutun_basliklari(gr_genel1);
  gr_genel1.ApplyBestFit();
end;

procedure Tfr_genel_rapor_ekrani.bt_hazirlaClick(Sender: TObject);
begin
  gr_komutlar.Visible:=false;
  filtre_genel.Visible:=true;
  gr_genel1.ClearItems;
  gr_genel1.DataController.DataSource := nil;
  tablo_genel.Close;
  tablo_genel.SQL.Clear;
  tablo_genel.SQL.Add(tablo_komutlar.FieldByName('komut').asString+' limit 0');
  filtre_genel.DataSet:=tablo_genel;
  filtre_genel.Visible:=true;
  tablo_genel.Open;
  bt_iptal.Enabled:=true;
  bt_raporla.Enabled:=true;
  bt_hazirla.Enabled:=false;
end;

procedure Tfr_genel_rapor_ekrani.bt_iptalClick(Sender: TObject);
begin
  bt_raporla.Enabled:=false;
  bt_hazirla.Enabled:=true;
  gr_genel.Visible:=false;
  gr_komutlar.Visible:=true;
  filtre_genel.Visible:=false;
  sp_bol.OpenSplitter;
  bt_iptal.Enabled:=false;
end;

procedure Tfr_genel_rapor_ekrani.FormShow(Sender: TObject);
begin
  pn_komut_filtre.Height:=fr_genel_rapor_ekrani.Height - pn_dugmeler.Height-sp_bol.Height-35;
end;

procedure Tfr_genel_rapor_ekrani.bt_yazdirClick(Sender: TObject);
begin
  pr_genel_rapor.Preview(True,nil);
end;

procedure Tfr_genel_rapor_ekrani.bt_exceleaktarClick(Sender: TObject);
begin
 dosya.Execute;
end;

end.
