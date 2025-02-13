--Consulta 1
SELECT P.nome_professor, T.Nome_Turma
FROM Professores p
JOIN Turmas T ON T.ID_Professor_Orientador =  P.ID_Professor

--Consulta 2
SELECT A.Nome_Aluno, MAX(N.Nota) AS maior_nota
FROM Alunos A
JOIN notas N ON N.ID_Aluno = A.ID_Aluno
JOIN Disciplinas D ON D.ID_Disciplina = N.ID_Disciplina
WHERE D.ID_Disciplina = 1

--Consulta 3
SELECT T.Nome_Turma, COUNT(T.ID_Turma) AS alunos_por_turma
FROM Turmas T
JOIN Turma_Alunos TA ON TA.ID_Turma = T.ID_Turma
GROUP BY T.Nome_Turma

--Consulta 4
SELECT A.Nome_Aluno, D.Nome_Disciplina 
FROM Alunos A
JOIN Turma_Alunos TA ON A.ID_Aluno =  TA.ID_Aluno
JOIN Turma_Disciplinas TD ON TD.ID_Turma = TA.ID_Turma
JOIN Disciplinas D ON D.ID_Disciplina = TD.ID_Disciplina

--Consulta 5
CREATE VIEW HistoricoEscolarAlunos as 
SELECT A.Nome_Aluno, D.Nome_Disciplina, N.Nota
FROM Alunos A
JOIN Notas N ON N.ID_Aluno = A.ID_Aluno
JOIN Disciplinas D ON D.ID_Disciplina = N.ID_Disciplina

SELECT * from HistoricoEscolarAlunos