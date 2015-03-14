unit DershaneTanimlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, StdCtrls,
  DB, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxImage, cxMemo;

type
  TFrDershaneTanimlari = class(TForm)
    TbDershaneAyarlari: TZQuery;
    sc_text: TcxEditStyleController;
    dn_sms_ayarlari: TDBNavigator;
    DsDershaneAyarlari: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    TbDershaneAyarlaridershane_adi_kisa: TStringField;
    TbDershaneAyarlaridershane_adi_resmi: TStringField;
    TbDershaneAyarlaridershane_adresi: TStringField;
    TbDershaneAyarlaridershane_tel: TStringField;
    TbDershaneAyarlaridershane_faks: TStringField;
    TbDershaneAyarlaridershane_web: TStringField;
    TbDershaneAyarlaridershane_mail: TStringField;
    TbDershaneAyarlaridershane_logo: TBlobField;
    TbDershaneAyarlaridershane_mudur: TStringField;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBImage1: TcxDBImage;
    Label9: TLabel;
    Label10: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label11: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    TbDershaneAyarlaridershane_il: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure TbDershaneAyarlariAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrDershaneTanimlari: TFrDershaneTanimlari;

implementation

uses veritabani, functionlar;
{$R *.dfm}

procedure TFrDershaneTanimlari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrDershaneTanimlari.FormCreate(Sender: TObject);
begin
  TbDershaneAyarlari.Open;
end;

procedure TFrDershaneTanimlari.cxDBTextEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := bkharf(Key, true);
end;

procedure TFrDershaneTanimlari.TbDershaneAyarlariAfterPost(
  DataSet: TDataSet);
begin
  Dershane.AdiKisa := TbDershaneAyarlari.fieldbyname('dershane_adi_kisa').text;
  Dershane.AdiResmi := TbDershaneAyarlari.fieldbyname('dershane_adi_resmi').text;
  Dershane.Adresi := TbDershaneAyarlari.fieldbyname('dershane_adresi').text;
  Dershane.Il := TbDershaneAyarlari.fieldbyname('dershane_il').text;
  Dershane.Tel := TbDershaneAyarlari.fieldbyname('dershane_tel').text;
  Dershane.Faks := TbDershaneAyarlari.fieldbyname('dershane_faks').text;
  Dershane.Logo := TBitmap.Create;
  try
    Dershane.Logo.Assign(TbDershaneAyarlari.fieldbyname('dershane_logo'));
  finally
    Dershane.Logo.FreeImage;
  end;
  Dershane.Mudur := TbDershaneAyarlari.fieldbyname('dershane_mudur').text;
end;

end.
