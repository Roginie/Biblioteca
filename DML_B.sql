-- EXERCICIO 3. Inserir ao menos 3 valores em cada tabelA
USE db_biblioteca;

SELECT * FROM tb_autores;
SELECT * FROM tb_livros;
SELECT * FROM tb_membros;
SELECT * FROM tb_emprestimos;


INSERT INTO tb_autores VALUES (
'1',
'Machado de Assis',
'1839/06/21'
);

INSERT INTO tb_autores VALUES (
'2',
'Urariano Mota',
'1950/05/20'
);

INSERT INTO tb_autores VALUES (
'3',
'Alfredo Bosi',
'1936/08/26'
);



INSERT INTO tb_livros VALUES (
'1',
'História Concisa da Literatura Brasileira
Livro por Alfredo Bosi',
'1982',
'3'
);

INSERT INTO tb_livros VALUES (
'2',
'Dialética da colonização',
'1992',
'2'
);

INSERT INTO tb_livros VALUES (
'3',
'O ser e o tempo da poesia',
'1977',
'1'
);



INSERT INTO tb_membros VALUES (
'1',
'Cabra',
'1977/01/02'
);

INSERT INTO tb_membros VALUES (
'2',
'Macho vei',
'1978/02/03'
);

INSERT INTO tb_membros VALUES (
'3',
'Juan Gay',
'1979/03/04'
);


INSERT INTO tb_emprestimos VALUES (
'1',
'1',
'1',
'1977/01/09',
'1977/01/10'
);

INSERT INTO tb_emprestimos VALUES (
'2',
'2',
'2',
'1977/01/07',
'1977/01/08'
);

INSERT INTO tb_emprestimos VALUES (
'3',
'3',
'3',
'1977/01/05',
'1977/01/06'
);



