program QuatroDelphi;

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

var
listaNumeros: array[1..5] of integer;
I: integer;

begin

for I := 1 to 5 do // itera��o pelo array
begin
  listaNumeros[I] := StrToInt(InputBox('N�mero', 'Informe o ' + IntToStr(I) + '� n�mero ', 'N�mero'));
end;

showMessage('O valor apresentado na posi��o tr�s �: ' + IntToStr(listaNumeros[3]));

end.
