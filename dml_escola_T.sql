--Usar um banco j� criado
USE db_escola_T;


--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola(nome, endereco)
VALUES('Escola Estadual Maria Trujilo Torloni', 'Estrada das L�grimas, 579 - S�o Jos�, SP');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA TURMA
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Manh�', 4, '2 Ano A D.S'), 
(2, 'Manh�', 5, '2 Ano B M.M'),
(2, 'Manh�', 6, '2 Ano C');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, nota, data_prova)
VALUES 
('Ivan', 'Reda��o e Leitura', '13:15:00', 9.7, '2025-09-15'),
('Rog�ria', 'Matem�tica', '14:20:00', 10, '2025-09-26'),
('Ana Cl�udia', 'Educa��o F�sica', '15:40:00', 7.5, '2025-09-29');

SELECT * FROM tb_prova;