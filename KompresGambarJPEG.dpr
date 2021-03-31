program KompresGambarJPEG;

uses
  Forms,
  UKompress in 'UKompress.pas' {FKompress};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFKompress, FKompress);
  Application.Run;
end.
