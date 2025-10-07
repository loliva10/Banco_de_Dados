--Este comando cria um novo banco de dados
--CREATE DATABASE db_escola_T;

--Esse comando usa o BD 
USE db_escola_T;

--Este comando cria uma nova tabela
CREATE TABLE tb_escola(
	id	INT	IDENTITY(1,	1) PRIMARY KEY,
	nome NVARCHAR(255) NOT NULL,
	endereco NVARCHAR(255) NOT NULL
);
GO

--DQL realiza consultas nas tabelas de um respectivo banco 
SELECT * FROM tb_escola;

--TABELA TURMA
CREATE TABLE tb_turma(
	id INT IDENTITY(1, 1) PRIMARY KEY,
	serie INT NOT NULL,
	periodo NCHAR(5) NOT NULL, 
	numero_sala TINYINT	NOT NULL,
	nome_turma NVARCHAR(100) NOT NULL
);
GO

SELECT * FROM tb_turma;

--TABELA PROVA
CREATE TABLE tb_prova(
	id INT IDENTITY(1, 1) PRIMARY KEY,
	nome_professor NVARCHAR(100) NOT NULL,
	materia NVARCHAR(100) NOT NULL,
	horario TIME NOT NULL,
	nota DECIMAL(3, 1) NOT NULL,
	data_prova DATE NOT NULL
);
GO

SELECT * FROM tb_prova;

--TABELA ALUNO
CREATE TABLE tb_aluno(
	id INT IDENTITY(1, 1) PRIMARY KEY,
	nome NVARCHAR(100) NOT NULL,
	nascimento DATE NOT NULL,
	matr�cula NVARCHAR(10) UNIQUE NOT NULL,
	cpf NCHAR(11) UNIQUE NOT NULL,
	endereco NVARCHAR(255) NOT NULL,
		
	id_escola INT FOREIGN KEY REFERENCES tb_escola(id)
);
GO

SELECT * FROM tb_aluno;

--TABELA INTERMEDIARIA TURMAPROVA
CREATE TABLE tb_turma_prova(
	id_turma INT NOT NULL,
	id_prova INT NOT NULL,

	PRIMARY KEY(id_turma, id_prova)
);
GO

SELECT * FROM tb_turma_prova;

----ADICIONAR UMA NOVA COLUNA A UMA RESPECTIVA TABELA
--ALTER TABLE tb_aluno
--ADD id_escola INT NOT NULL FOREIGN KEY REFERENCES tb_escola(id);