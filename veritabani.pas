unit veritabani;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset,variants, ImgList, Controls, ExtCtrls;

type
  Tveriler = class(TDataModule)
    data_dershane: TZConnection;
    tablo_sutun: TZReadOnlyQuery;
    tablo_sutunsutun_adi: TStringField;
    tablo_sutunbaslik: TStringField;
    tablo_gizli: TZReadOnlyQuery;
    tablo_gizliogr_no: TIntegerField;
    tablo_gizlidonemi: TStringField;
    data_kok: TZConnection;
    il_genel: TImageList;
    Kontrol: TTimer;
    TabloKontrol: TZReadOnlyQuery;
    procedure data_dershaneAfterConnect(Sender: TObject);
    procedure data_dershaneAfterDisconnect(Sender: TObject);
    procedure KontrolTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  veriler: Tveriler;

implementation
uses AnaForm;
{$R *.dfm}

procedure Tveriler.data_dershaneAfterConnect(Sender: TObject);
begin
  Kontrol.Enabled := true;
end;

procedure Tveriler.data_dershaneAfterDisconnect(Sender: TObject);
begin
  Kontrol.Enabled := false;
end;

procedure Tveriler.KontrolTimer(Sender: TObject);
begin
  try
    TabloKontrol.ExecSQL
  except
    FrAnaForm.mn_kullanici_degistir.Click;
  end;
end;

end.

