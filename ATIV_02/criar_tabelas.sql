CREATE TABLE alunos (
    ID_do_Aluno INT PRIMARY KEY,
    Nome_do_Aluno VARCHAR(100),
    Data_de_Nascimento DATE,
    Genero VARCHAR(50),
    Endereço VARCHAR(100),
    Telefone_de_Contato VARCHAR(20),
    Email_do_Aluno VARCHAR(100)
);

CREATE TABLE professores (
    ID_do_Professor INT PRIMARY KEY,
    Nome_do_Professor VARCHAR(100),
    Data_de_Nascimento DATE,
    Genero VARCHAR(50),
    Telefone_de_Contato VARCHAR(20),
    Email_do_Professor VARCHAR(100)
);

CREATE TABLE disciplinas (
    ID_da_Disciplina INT PRIMARY KEY,
    Nome_da_Disciplina VARCHAR(100),
    Descrição TEXT,
    Carga_Horária INT,
    ID_do_Professor INT,
    FOREIGN KEY (ID_do_Professor) REFERENCES professores(ID_do_Professor)
);

CREATE TABLE Turmas (
    ID_Turma INT PRIMARY KEY,
    Nome_Turma VARCHAR(255),
    Ano_Letivo INT,
    ID_Professor_Orientador INT,
    FOREIGN KEY (ID_Professor_Orientador) REFERENCES Professores(ID_Professor)
);

CREATE TABLE Turmas_Disciplinas (
    ID_Turma INT,
    ID_da_Disciplina INT,
    PRIMARY KEY (ID_Turma, ID_da_Disciplina),
    FOREIGN KEY (ID_Turma) REFERENCES Turmas(ID_Turma),
    FOREIGN KEY (ID_da_Disciplina) REFERENCES disciplinas(ID_da_Disciplina)
);

CREATE TABLE Turma_Alunos (
    ID_Turma INT,
    ID_do_Aluno INT,
    PRIMARY KEY (ID_Turma, ID_do_Aluno),
    FOREIGN KEY (ID_Turma) REFERENCES Turmas(ID_Turma),
    FOREIGN KEY (ID_do_Aluno) REFERENCES alunos(ID_do_Aluno)
);

CREATE TABLE Notas (
    ID_Notas INT PRIMARY KEY,
    ID_do_Aluno INT,
    ID_da_Disciplina INT,
    Valor_da_Nota DECIMAL(5,2),
    Data_da_Avaliação DATE,
    FOREIGN KEY (ID_do_Aluno) REFERENCES alunos(ID_do_Aluno),
    FOREIGN KEY (ID_da_Disciplina) REFERENCES disciplinas(ID_da_Disciplina)
);
