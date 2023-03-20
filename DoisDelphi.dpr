program DoisDelphi;

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

var
  listaTodos: array[1..5] of integer;
  maior, menor, I: integer;

begin

  for I := 1 to 5 do  // iteração pela lista de números
  begin

    listaTodos[I] := StrToInt(InputBox('Número', 'Informe o ' + IntToStr(I) + '° número ', 'Número'));

    if I = 1 then // se for a primeira iteração, atribuir o valor de menor e maior para ela
      begin
        maior := listaTodos[I];
        menor := listaTodos[I];
      end;

    if listaTodos[I] > maior then   // checagem de menor e maior
      maior := listaTodos[I];

    if listaTodos[I] < menor then
      menor := listaTodos[I];

  end;

  showMessage('O maior número informado foi: ' + IntToStr(maior)
              + sLineBreak +
              'O menor número informado foi: ' + IntToStr(menor));

end.
