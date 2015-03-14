unit un_makbuz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, StdCtrls, Buttons;

type
  Tfr_makbuz = class(TForm)
    rp_makbuz: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    lb_tahsil_eden: TQRLabel;
    QRLabel12: TQRLabel;
    lb_tarih_saat: TQRLabel;
    lb_islem_no: TQRLabel;
    lb_ogr_no: TQRLabel;
    lb_adi: TQRLabel;
    lb_soyadi: TQRLabel;
    lb_tarih: TQRLabel;
    lb_miktari: TQRLabel;
    lb_toplma_borcu: TQRLabel;
    lb_odenen: TQRLabel;
    lb_kalan: TQRLabel;
    QRLabel13: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_makbuz: Tfr_makbuz;

implementation

{$R *.dfm}

procedure Tfr_makbuz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
