program CincoDelphi;

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

var
listaAlunosNotas: array[1..3, 1..5] of string;
contAluno, contNota, contGeral: integer;
medias: array [1..3] of integer;
alunoMenor, alunoMaior: string;
nota, maiorMedia, menorMedia: real;
media: array[1..3] of real;

begin

  for contAluno := 1 to 3 do  // iteração por cada aluno
  begin

    listaAlunosNotas[contAluno, 1] := InputBox('Nome','Informe o nome do aluno: ','Nome');
    media[contAluno] := 0;

    for contNota := 2 to 5 do   // iteração por cada nota
    begin
      while 1 = 1 do // loop para solicitar a nota
      begin
        nota := StrToFloat(InputBox('Notas', 'Informe a nota', 'Nota'));

        if (nota < 0) or (nota > 10) then
          showMessage('Informe uma nota válida (maior que 0 e menor que 10).')  // validação de nota
        else
        begin
          listaAlunosNotas[contAluno, contNota] := FloatToStr(nota);
          media[contAluno] := media[contAluno] + StrToFloat(listaAlunosNotas[contAluno, contNota]); // acúmulo das notas no contador
          break;
        end;

      end;
    end;

    media[contAluno] := media[contAluno] / 4;  // cálculo de média a partir do contador de cada aluno

    if contAluno = 1 then   // checagem de maior média e menor média por nome de aluno
    begin
      maiorMedia := media[contAluno];
      menorMedia := media[contAluno];
    end;

    if media[contAluno] >= maiorMedia then
    begin
      maiorMedia := media[contAluno];
      alunoMaior := listaAlunosNotas[contAluno, 1]
    end;

    if media[contAluno] <= menorMedia then
    begin
      menorMedia := media[contAluno];
      alunoMenor := listaAlunosNotas[contAluno, 1]
    end;

  end;

  for contGeral := 1 to 3 do // impressão do relatório
  begin
      showMessage('Relatório de resultados ref. ao aluno ' + IntToStr(contGeral)
                  +sLineBreak+'Aluno: ' + listaAlunosNotas[contGeral, 1]
                  +sLineBreak+'Média: ' + FloatToStr(media[contGeral]));
  end;

  showMessage('Aluno com maior média: '+alunoMaior
              +sLineBreak+'Aluno com menor média: '+alunoMenor);

end.
