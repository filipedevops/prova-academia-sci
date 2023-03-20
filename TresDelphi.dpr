program TresDelphi;

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

var
  nome, situacao, opcao: string;
  notas: array [1..4] of real;
  validador, encerrar: boolean;
  I: integer;
  media: real;

begin

encerrar := false;

while encerrar = false do // la�o para o usu�rio decidir quando parar
begin

  nome := InputBox('Nome', 'Informe o nome do aluno', 'Nome');
  media := 0;

  for I := 1 to 4 do  // itera��o pelas notas do aluno
  begin

    validador := false; // reset da vari�vel de valida��o de nota

    while validador = false do  // loop para garantir que a nota seja v�lida
    begin
    notas[I] := StrToInt(InputBox('Simulador de aprova��o', 'Informe a ' + FloatToStr(I) + 'a nota ', 'Nota'));

    if (notas[I] < 0) or (notas[I] > 10) then  // valida��o
      showMessage('Informe uma nota v�lida (maior que 0 e menor que 10).')
    else
      media := media + notas[I]; // ac�mulo da m�dia em contador
      validador := true;
    end;
  end;

  media := media / 4;  // c�lculo da m�dia

  if media >= 6 then
    situacao := 'Aprovado'
  else
    situacao := 'Reprovado';

  showMessage('Resultados do aluno:'     // gera��o do relat�rio
              +sLineBreak+'Nome: ' + nome
              +sLineBreak+'M�dia: ' + FloatToStr(media)
              +sLineBreak+'Situa��o: ' + situacao);

  while 1 = 1 do
  begin
  opcao := InputBox('Continuar', 'Deseja continuar a simular aprova��es?'
                              +sLineBreak+ 'S para sim'
                              +sLineBreak+ 'N para n�o'
                              , 'Op��o');

  if (UpperCase(opcao) = 'N') then
  begin
    encerrar := true;
    break;
  end;

  if (UpperCase(opcao) = 'S') then
    break
  else
    showMessage('Informe apenas S ou N');
  end;

end;

end.
