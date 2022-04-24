program Calculadora;

uses
  Vcl.Forms,
  uCalculadora in 'uCalculadora.pas' {FCalculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFCalculadora, FCalculadora);
  Application.Run;
end.
