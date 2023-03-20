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

  for I := 1 to 5 do // itera��o pelos n�meros informados
  begin

    listaTodos[I] := StrToInt(InputBox('N�mero', 'Informe o ' + IntToStr(I) + '� n�mero ', 'N�mero'));

    if ((listaTodos[I] mod 2) = 0) then  // verifica��o de par ou impar
        listaPares[I] := IntToStr(listaTodos[I])
    else
        listaImpares[I] := IntToStr(listaTodos[I]);

    media := media + listaTodos[I];

  end;

  media := media / 5;

  for I := 1 to 5 do // filtragem de n�meros pares informados
  begin
    if listaPares[I] <> '' then
      resultados := Concat(resultados, ' ', (listaPares[I]));
  end;

  showMessage('Os n�meros pares informados foram: ' + resultados);

  resultados := '';

  for I := 1 to 5 do  // filtragem de n�meros �mpares informados
  begin
    if listaImpares[I] <> '' then
      resultados := Concat(resultados, ' ', (listaImpares[I]));
  end;

  showMessage('Os n�meros �mpares informados foram: ' + resultados);

  showMessage('A m�dia dos n�meros informados foi: ' + FloatToStr(media));

end.
