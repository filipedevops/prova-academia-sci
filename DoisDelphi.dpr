program DoisDelphi;

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

var
  listaTodos: array[1..5] of integer;
  maior, menor, I: integer;

begin

  for I := 1 to 5 do  // itera��o pela lista de n�meros
  begin

    listaTodos[I] := StrToInt(InputBox('N�mero', 'Informe o ' + IntToStr(I) + '� n�mero ', 'N�mero'));

    if I = 1 then // se for a primeira itera��o, atribuir o valor de menor e maior para ela
      begin
        maior := listaTodos[I];
        menor := listaTodos[I];
      end;

    if listaTodos[I] > maior then   // checagem de menor e maior
      maior := listaTodos[I];

    if listaTodos[I] < menor then
      menor := listaTodos[I];

  end;

  showMessage('O maior n�mero informado foi: ' + IntToStr(maior)
              + sLineBreak +
              'O menor n�mero informado foi: ' + IntToStr(menor));

end.
