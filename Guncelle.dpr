program Guncelle;

uses
  Forms,
  Guncelleme in 'Guncelleme.pas' {FrGuncelle};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrGuncelle, FrGuncelle);
  Application.Run;
end.
