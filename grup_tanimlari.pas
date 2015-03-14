unit grup_tanimlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, Buttons, cxContainer,
  cxLabel, ExtCtrls;

type
  Tfr_grup_tanimlari = class(TForm)
    tablo_grup1: TZQuery;
    tablo_grup2: TZQuery;
    tablo_grup3: TZQuery;
    grup1: TcxGridDBTableView;
    gr_grup1Level1: TcxGridLevel;
    gr_grup1: TcxGrid;
    tablo_grup1id: TLargeintField;
    tablo_grup1seviye: TIntegerField;
    tablo_grup1adi: TStringField;
    tablo_grup1ustgrup: TLargeintField;
    tablo_grup2id: TLargeintField;
    tablo_grup2seviye: TIntegerField;
    tablo_grup2adi: TStringField;
    tablo_grup2ustgrup: TLargeintField;
    tablo_grup3id: TLargeintField;
    tablo_grup3seviye: TIntegerField;
    tablo_grup3adi: TStringField;
    tablo_grup3ustgrup: TLargeintField;
    ara_grup1: TDataSource;
    ara_grup2: TDataSource;
    ara_grup3: TDataSource;
    grup1adi: TcxGridDBColumn;
    gr_grup3: TcxGrid;
    grup3: TcxGridDBTableView;
    gr_grup3Level1: TcxGridLevel;
    gr_grup2: TcxGrid;
    grup2: TcxGridDBTableView;
    gr_grup2Level1: TcxGridLevel;
    grup2adi: TcxGridDBColumn;
    grup3adi: TcxGridDBColumn;
    tablo_oku: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tablo_grup1BeforePost(DataSet: TDataSet);
    procedure tablo_grup2BeforePost(DataSet: TDataSet);
    procedure tablo_grup3BeforePost(DataSet: TDataSet);
    procedure gr_grup1Exit(Sender: TObject);
    procedure gr_grup2Exit(Sender: TObject);
    procedure gr_grup3Exit(Sender: TObject);
    procedure tablo_grup1BeforeDelete(DataSet: TDataSet);
    procedure tablo_grup2BeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_grup_tanimlari: Tfr_grup_tanimlari;

implementation
uses veritabani,functionlar;
{$R *.dfm}

procedure Tfr_grup_tanimlari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure Tfr_grup_tanimlari.FormCreate(Sender: TObject);
begin
  tablo_grup1.open;
  tablo_grup2.open;
  tablo_grup3.open;
end;

procedure Tfr_grup_tanimlari.tablo_grup1BeforePost(DataSet: TDataSet);
begin
  tablo_grup1seviye.AsInteger:=1;
  tablo_grup1adi.Text:= bkmetin(tablo_grup1adi.Text,1)
end;

procedure Tfr_grup_tanimlari.tablo_grup2BeforePost(DataSet: TDataSet);
begin
  tablo_grup2seviye.AsInteger:=2;
  tablo_grup2ustgrup.AsInteger:=tablo_grup1id.AsInteger;
  tablo_grup2adi.Text:= bkmetin(tablo_grup2adi.Text,1)
end;

procedure Tfr_grup_tanimlari.tablo_grup3BeforePost(DataSet: TDataSet);
begin
  tablo_grup3seviye.AsInteger:=3;
  tablo_grup3ustgrup.AsInteger:=tablo_grup2id.AsInteger;
  tablo_grup3adi.Text:= bkmetin(tablo_grup3adi.Text,1)
end;

procedure Tfr_grup_tanimlari.gr_grup1Exit(Sender: TObject);
begin
  if tablo_grup1.State in [dsinsert,dsedit] then tablo_grup1.Post;
end;

procedure Tfr_grup_tanimlari.gr_grup2Exit(Sender: TObject);
begin
  if tablo_grup2.State in [dsinsert,dsedit] then tablo_grup2.Post;
end;

procedure Tfr_grup_tanimlari.gr_grup3Exit(Sender: TObject);
begin
  if tablo_grup3.State in [dsinsert,dsedit] then tablo_grup3.Post;
end;

procedure Tfr_grup_tanimlari.tablo_grup1BeforeDelete(DataSet: TDataSet);
begin
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from gruplar where ustgrup='+tablo_grup1id.Text);
  tablo_oku.ExecSQL;
end;

procedure Tfr_grup_tanimlari.tablo_grup2BeforeDelete(DataSet: TDataSet);
begin
  tablo_oku.SQL.Clear;
  tablo_oku.SQL.Add('delete from gruplar where ustgrup='+tablo_grup2id.Text);
  tablo_oku.ExecSQL;
end;

end.
