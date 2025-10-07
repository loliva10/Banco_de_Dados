--Usar um banco já criado
USE db_escola_T;


--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola(nome, endereco)
VALUES('Escola Estadual Maria Trujilo Torloni', 'Estrada das Lágrimas, 579 - São José, SP');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA TURMA
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Manhã', 4, '2 Ano A D.S'), 
(2, 'Manhã', 5, '2 Ano B M.M'),
(2, 'Manhã', 6, '2 Ano C');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, nota, data_prova)
VALUES 
('Ivan', 'Redação e Leitura', '13:15:00', 9.7, '2025-09-15'),
('Rogéria', 'Matemática', '14:20:00', 10, '2025-09-26'),
('Ana Cláudia', 'Educação Física', '15:40:00', 7.5, '2025-09-29');

SELECT * FROM tb_prova;