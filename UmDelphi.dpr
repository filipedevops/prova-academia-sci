program UmDelphi;

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

var
  listaTodos: array[1..5] of integer;
  listaPares, listaImpares: array[1..5] of string;
  resultados: string;
  media: real;
  I: Integer;
begin

  media := 0;

  for I := 1 to 5 do // iteração pelos números informados
  begin

    listaTodos[I] := StrToInt(InputBox('Número', 'Informe o ' + IntToStr(I) + '° número ', 'Número'));

    if ((listaTodos[I] mod 2) = 0) then  // verificação de par ou impar
        listaPares[I] := IntToStr(listaTodos[I])
    else
        listaImpares[I] := IntToStr(listaTodos[I]);

    media := media + listaTodos[I];

  end;

  media := media / 5;

  for I := 1 to 5 do // filtragem de números pares informados
  begin
    if listaPares[I] <> '' then
      resultados := Concat(resultados, ' ', (listaPares[I]));
  end;

  showMessage('Os números pares informados foram: ' + resultados);

  resultados := '';

  for I := 1 to 5 do  // filtragem de números ímpares informados
  begin
    if listaImpares[I] <> '' then
      resultados := Concat(resultados, ' ', (listaImpares[I]));
  end;

  showMessage('Os números ímpares informados foram: ' + resultados);

  showMessage('A média dos números informados foi: ' + FloatToStr(media));

end.
