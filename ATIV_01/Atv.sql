-- 1) Criar a tabela funcionarios
CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  departamento VARCHAR(100),
  salario DECIMAL(10,2)
);

-- Inserir registros na tabela funcionarios
INSERT INTO funcionarios (id, nome, departamento, salario)
VALUES 
(1, 'Heitor Vieira', 'Financeiro', 4959.22),  
(2, 'Daniel Campos', 'Vendas', 3884.44),  
(3, 'Luiza Dias', 'TI', 8205.78),
(4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),  
(5, 'Pietro Cavalcanti', 'TI', 4946.88),
(6, 'Evelyn da Mata', 'Vendas', 5278.88),
(7, 'Isabella Rocha', 'Marketing', 4006.03),
(8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),  
(9, 'Brenda Cardoso', 'TI', 8853.34),  
(10, 'Danilo Souza', 'TI', 8242.14);

-- 2) Selecionar todos os registros
SELECT * FROM funcionarios;

-- 3) Selecionar nomes dos funcionários do departamento de "Vendas"
SELECT nome FROM funcionarios WHERE departamento = 'Vendas';

-- 4) Selecionar funcionários cujo salário seja maior que 5000
SELECT * FROM funcionarios WHERE salario > 5000;

-- 5) Selecionar todos os departamentos distintos
SELECT DISTINCT departamento FROM funcionarios;

-- 6) Atualizar o salário dos funcionários do departamento de "TI" para 7500
UPDATE funcionarios SET salario = 7500 WHERE departamento = 'TI';

-- 7) Deletar funcionários que ganham menos de 4000
DELETE FROM funcionarios WHERE salario < 4000;

-- 8) Selecionar nomes e salários dos funcionários do departamento "Vendas" cujo salário seja >= 6000
SELECT nome, salario FROM funcionarios WHERE departamento = 'Vendas' AND salario >= 6000;

-- 9) Criar a tabela projetos
CREATE TABLE projetos (
  id_projeto INT PRIMARY KEY,
  nome_projeto VARCHAR(100),
  id_gerente INT,
  FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);

-- Inserir registros na tabela projetos
INSERT INTO projetos (id_projeto, nome_projeto, id_gerente)
VALUES 
(1, 'Projeto A', 2),
(2, 'Projeto B', 3),
(3, 'Projeto C', 4);

-- Selecionar projetos cujo id_gerente seja igual a 2
SELECT * FROM projetos WHERE id_gerente = 2;

-- 10) Remover a tabela funcionarios
DROP TABLE funcionarios;