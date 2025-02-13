--Consulta 1
SELECT id_disciplina, AVG(nota) AS nota_historia
FROM Notas
WHERE id_disciplina = 2;

--Consulta 2
SELECT * 
From Alunos
WHERE nome_aluno LIKE 'a%'

--Consulta 3
SELECT *
FROM Alunos
WHERE STRFTIME ('%m', data_nascimento) = '02'

--Consulta 4
SELECT id_aluno, nome_aluno, JULIANDAY(STRFTIME('%Y-%m-%d', 'now') - STRFTIME(Data_Nascimento)) AS idade
FROM Alunos

--Consulta 5
SELECT id_aluno, id_disciplina, 
CASE
WHEN nota > 6 THEN 'Aprovado'
ELSE 'Reprovado'
END AS resultado
FROM Notas