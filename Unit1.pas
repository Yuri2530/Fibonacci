unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFSerieFibonacci = class(TForm)
    pPrincipal: TPanel;
    mResultado: TMemo;
    lCantidad: TLabel;
    eCantidad: TEdit;
    bCalcular: TButton;
    procedure bCalcularClick(Sender: TObject);
    procedure eCantidadKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSerieFibonacci: TFSerieFibonacci;

implementation

{$R *.DFM}




procedure TFSerieFibonacci.bCalcularClick(Sender: TObject);
var
n,a,b,c,I :integer;
begin
mResultado.Clear;
n:= StrToInt (eCantidad.Text);
a:=1;
b:=1;
c:=0;
     for i:= 1 to n do
     begin
     a:=b;
     b:=c;
     c:=a+b;
     mResultado.Lines.Add(InttoStr(c));
     end;
end;

procedure TFSerieFibonacci.eCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
if ( StrScan('0123456789'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

end.
