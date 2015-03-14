unit Guncelleme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TFrGuncelle = class(TForm)
    IdHTTP1: TIdHTTP;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrGuncelle: TFrGuncelle;

implementation

{$R *.dfm}

end.
