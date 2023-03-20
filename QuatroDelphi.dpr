program QuatroDelphi;

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

var
listaNumeros: array[1..5] of integer;
I: integer;

begin

for I := 1 to 5 do // iteração pelo array
begin
  listaNumeros[I] := StrToInt(InputBox('Número', 'Informe o ' + IntToStr(I) + '° número ', 'Número'));
end;

showMessage('O valor apresentado na posição três é: ' + IntToStr(listaNumeros[3]));

end.
