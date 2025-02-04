--dados_professores
INSERT INTO professores (
  id_do_professor,
  nome_do_professor,
  data_de_nascimento,
  genero,
  telefone_de_contato,
  email_do_professor
) VALUES
  (1, 'Ana Oliveira', '1980-05-25', 'Feminino', '(11) 1234-5678', 'ana@email.com'),
  (2, 'Carlos Ferreira', '1975-09-12', 'Masculino', '(11) 2345-6789', 'carlos@email.com'),
  (3, 'Mariana Santos', '1982-03-15', 'Feminino', '(11) 3456-7890', 'mariana@email.com'),
  (4, 'Ricardo Silva', '1978-08-20', 'Masculino', '(11) 7890-1234', 'ricardo@email.com'),
  (5, 'Fernanda Lima', '1985-01-30', 'Feminino', '(11) 4567-8901', 'fernanda@email.com');

--dados_alunos
INSERT INTO alunos (
  id_do_aluno,
  nome_do_aluno,
  data_de_nascimento,
  genero,
  endereco,
  telefone_de_contato,
  email_do_aluno
) VALUES
  (1, 'João Silva', '2005-03-15', 'Masculino', 'Rua das Flores, 123', '(11) 9876-5432', 'joao@email.com'),
  (2, 'Maria Santos', '2006-06-20', 'Feminino', 'Avenida Principal, 456', '(11) 8765-4321', 'maria@email.com'),
  (3, 'Pedro Soares', '2004-01-10', 'Masculino', 'Rua Central, 789', '(11) 7654-3210', 'pedro@email.com'),
  (4, 'Ana Lima', '2005-04-02', 'Feminino', 'Rua da Escola, 56', '(11) 8765-4321', 'ana@email.com'),
  (5, 'Mariana Fernandes', '2005-08-12', 'Feminino', 'Avenida da Paz, 789', '(11) 5678-1234', 'mariana@email.com');

--dados_disciplinas
INSERT INTO disciplinas (
  id_da_disciplina,
  nome_da_disciplina,
  descricao,
  carga_horaria,
  id_do_professor
) VALUES
  (1, 'Matemática', 'Estudo de conceitos matemáticos avançados', 60, 1),
  (2, 'História', 'História mundial e local', 45, 2),
  (3, 'Física', 'Princípios fundamentais da física', 60, 1),
  (4, 'Química', 'Estudo da química e suas aplicações', 45, 3),
  (5, 'Inglês', 'Aulas de inglês para iniciantes', 45, 4),
  (6, 'Artes', 'Exploração da criatividade artística', 30, 5);

--dados_turmas
INSERT INTO turmas (
  id_turma,
  nome_turma,
  ano_letivo,
  id_professor_orientador
) VALUES
  (1, 'Turma A', 2023, 1),
  (2, 'Turma B', 2023, 2),
  (3, 'Turma C', 2023, 3),
  (4, 'Turma D', 2023, 4),
  (5, 'Turma E', 2023, 5);

--dados_turmas_disciplinas
INSERT INTO turmas_disciplinas (
  id_turma,
  id_da_disciplina
) VALUES
  (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (1, 3), (2, 1), (3, 2);

--dados_turma_alunos
INSERT INTO turma_alunos (
  id_turma,
  id_do_aluno
) VALUES
  (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (1, 6), (2, 7), (3, 8), (4, 9), (5, 10);

--dados_notas
INSERT INTO notas (
  id_notas,
  id_do_aluno,
  id_da_disciplina,
  valor_da_nota,
  data_da_avaliacao
) VALUES
  (2, 1, 1, 6.19, '2023-07-07'),
  (3, 1, 2, 7.18, '2023-07-07'),
  (4, 1, 3, 7.47, '2023-07-07'),
  (5, 1, 4, 7.46, '2023-07-07'),
  (6, 1, 5, 4.35, '2023-07-07'),
  (7, 1, 6, 4.43, '2023-07-07'),
  (8, 1, 7, 0.76, '2023-07-07'),
  (9, 1, 8, 9.22, '2023-07-07'),
  (10, 1, 9, 9.04, '2023-07-07'),
  (11, 1, 10, 3.28, '2023-07-07'),
  (12, 2, 1, 1.34, '2023-07-09'),
  (13, 2, 2, 3.10, '2023-07-09'),
  (14, 2, 3, 1.66, '2023-07-09'),
  (15, 2, 4, 0.03, '2023-07-09'),
  (16, 2, 5, 4.34, '2023-07-09'),
  (17, 2, 6, 4.02, '2023-07-09'),
  (18, 2, 7, 8.79, '2023-07-09'),
  (19, 2, 8, 1.17, '2023-07-09'),
  (20, 2, 9, 8.26, '2023-07-09'),
  (21, 2, 10, 3.41, '2023-07-09');