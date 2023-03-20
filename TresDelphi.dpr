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

while encerrar = false do // laço para o usuário decidir quando parar
begin

  nome := InputBox('Nome', 'Informe o nome do aluno', 'Nome');
  media := 0;

  for I := 1 to 4 do  // iteração pelas notas do aluno
  begin

    validador := false; // reset da variável de validação de nota

    while validador = false do  // loop para garantir que a nota seja válida
    begin
    notas[I] := StrToInt(InputBox('Simulador de aprovação', 'Informe a ' + FloatToStr(I) + 'a nota ', 'Nota'));

    if (notas[I] < 0) or (notas[I] > 10) then  // validação
      showMessage('Informe uma nota válida (maior que 0 e menor que 10).')
    else
      media := media + notas[I]; // acúmulo da média em contador
      validador := true;
    end;
  end;

  media := media / 4;  // cálculo da média

  if media >= 6 then
    situacao := 'Aprovado'
  else
    situacao := 'Reprovado';

  showMessage('Resultados do aluno:'     // geração do relatório
              +sLineBreak+'Nome: ' + nome
              +sLineBreak+'Média: ' + FloatToStr(media)
              +sLineBreak+'Situação: ' + situacao);

  while 1 = 1 do
  begin
  opcao := InputBox('Continuar', 'Deseja continuar a simular aprovações?'
                              +sLineBreak+ 'S para sim'
                              +sLineBreak+ 'N para não'
                              , 'Opção');

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
