unit un_gorunum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxContainer, cxTextEdit, StdCtrls, Buttons, ExtCtrls;

type
  Tfr_gorunum = class(TForm)
    tablo_gorunum: TZQuery;
    tablo_gorunumid: TIntegerField;
    tablo_gorunumaciklama: TStringField;
    tablo_gorunumgorunum: TBlobField;
    gr_gorunum: TcxGridDBTableView;
    gr_gorunumlerLevel1: TcxGridLevel;
    gr_gorunumler: TcxGrid;
    ara_gorunum: TDataSource;
    gr_gorunumid: TcxGridDBColumn;
    gr_gorunumaciklama: TcxGridDBColumn;
    Panel1: TPanel;
    bt_yukle: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure gr_gorunumDblClick(Sender: TObject);
    procedure bt_yukleClick(Sender: TObject);

  private
    { Private declarations }
    tabloyukle: TcxGridTableView;

  public
    { Public declarations }
    procedure gorunum_kaydet(tablogorunum: TcxGridTableView);
    procedure gorunum_yukle(tablogorunum: TcxGridTableView);
    procedure sutun_basliklari(tablo: TcxGridTableView);

  end;

var
  fr_gorunum: Tfr_gorunum;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_gorunum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfr_gorunum.gorunum_kaydet(tablogorunum: TcxGridTableView);
var
  blob,fs: TStream;
  aciklm: string;
label cik;
begin
  aciklm := inputbox('Görünüm Ýçin Açýklama Giriniz', 'Açýklama','');
  if aciklm = '' then goto cik;
  TcxGridTableView(tablogorunum).StoreToIniFile(extractfilepath(application.exename)+'\temp.ini',true,[gsoUseFilter, gsoUseSummary]);
  tablo_gorunum.Insert;
  blob := tablo_gorunum.CreateBlobStream(tablo_gorunum.FieldByName('gorunum'), bmWrite);
  try
    blob.Seek(0, soFromBeginning);
    fs := TFileStream.Create(extractfilepath(application.exename)+'\temp.ini', fmOpenRead or fmShareDenyWrite);
    try
      blob.CopyFrom(fs, fs.Size)
    finally
      fs.Free;
      deletefile(extractfilepath(application.exename)+'\temp.ini');
    end;
  finally
    blob.Free
  end;
  tablo_gorunum.FieldByName('aciklama').Text := aciklm;
  tablo_gorunum.Post;
cik:
  close;
end;

procedure Tfr_gorunum.sutun_basliklari(tablo: TcxGridTableView);
var
i: integer;
begin;
  if veriler.tablo_sutun.Active = false then veriler.tablo_sutun.open;
  for i:=0 to TcxGridTableView(tablo).ColumnCount-1 do
    if veriler.tablo_sutun.Locate('sutun_adi', varArrayof([TcxGridTableView(tablo).Columns[i].DataBinding.DefaultCaption]), [])=true then
      TcxGridTableView(tablo).Columns[i].Caption := veriler.tablo_sutun.fieldbyname('baslik').Text;
  veriler.tablo_sutun.Close;
end;

procedure Tfr_gorunum.FormCreate(Sender: TObject);
begin
  tablo_gorunum.Open;
end;

procedure Tfr_gorunum.gr_gorunumDblClick(Sender: TObject);
begin
  bt_yukleClick(bt_yukle);
end;

procedure Tfr_gorunum.bt_yukleClick(Sender: TObject);
var
  blob: TStream;
begin
  blob := tablo_gorunum.CreateBlobStream(tablo_gorunum.FieldByName('gorunum'), bmRead);
  try
    blob.Seek(0, soFromBeginning);
    with TFileStream.Create(extractfilepath(application.exename)+'\temp.ini', fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
  finally
    blob.Free
  end;
  tabloyukle.RestoreFromIniFile(extractfilepath(application.exename)+'\temp.ini',true,true,[gsoUseFilter, gsoUseSummary]);
  deletefile(extractfilepath(application.exename)+'\temp.ini');
  tabloyukle.ViewData.Expand(true);
  close;
end;

procedure Tfr_gorunum.gorunum_yukle(tablogorunum: TcxGridTableView);
begin
  tabloyukle := tablogorunum;
end;

end.





