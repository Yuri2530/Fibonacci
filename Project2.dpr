program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FSerieFibonacci};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFSerieFibonacci, FSerieFibonacci);
  Application.Run;
end.
