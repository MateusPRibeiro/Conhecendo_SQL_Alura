--Consulta 1
SELECT * FROM Alunos;
SELECT * FROM Disciplinas;
SELECT * FROM Notas;
SELECT * FROM Professores;
SELECT * FROM Turmas;
SELECT * FROM Turma_Alunos;
SELECT * FROM Turma_Disciplina;

--Consulta 2
SELECT * FROM Alunos ORDER BY nome_aluno;

--Consulta 3
SELECT * FROM Disciplinas 
WHERE carga_horaria > 40;

--Consulta 4
SELECT * FROM Notas 
WHERE nota > 6 AND nota < 8;