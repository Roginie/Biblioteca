-- BANCO DE DADOS BIBLIOTECA
-- 1. INNER JOIN
-- Exercício 1: Liste os nomes dos membros que pegaram livros emprestados e o título dos livros que eles emprestaram.

SET @@autocommit = ON; -- ATIVAR o salvar automaticamente
USE db_biblioteca;

SELECT nome, data_emprestimo, data_devolucao, titulo FROM tb_membros AS M
INNER JOIN tb_emprestimos AS E ON M.id = E.id_membro
INNER JOIN tb_livros AS L ON E.id_livro = L.id;

-- Exercício 2: Liste os autores e os livros que foram emprestados.
SELECT nome, titulo, ano_publicacao, data_emprestimo
FROM tb_autores AS A 
INNER JOIN tb_livros AS L ON A.id = L.id_autor
INNER JOIN tb_emprestimos AS E ON L.id = E.id_livro;

-- 2. RIGHT / LEFT JOIN
-- Exercício 1: Liste todos os membros, incluindo aqueles que não realizaram nenhum empréstimo.
SELECT nome FROM tb_emprestimos AS E
RIGHT JOIN tb_membros AS M
ON M.id = E.id_membro
WHERE E.id IS NULL;

-- LEFT JOIN
SELECT * FROM tb_membros AS M
LEFT JOIN tb_emprestimos AS E
ON M.id = E.id_membro
WHERE E.id IS NULL;

-- Exercício 2: Liste todos os autores e seus livros, incluindo livros que não foram emprestados.
SELECT titulo, nome, data_emprestimo 
FROM tb_livros AS L
LEFT JOIN tb_emprestimos AS E ON L.id = E.id_livro
INNER JOIN tb_autores AS A
ON L.id_autor = A.id
WHERE E.id IS NULL;


SELECT nome AS autor, L.titulo AS livro, E.id AS id_emprestimo
FROM tb_livros AS L
LEFT JOIN tb_emprestimos AS E
ON L.id = E.id_livro
JOIN tb_autores AS A
ON L.id_autor = A.id;

-- 3. UNION
-- Exercício 1: Liste todos os livros e seus autores, incluindo livros que não têm
-- autores associados e autores que não têm livros cadastrados.
-- Exercício 2: Liste todos os membros e livros emprestados, incluindo membros
-- que não pegaram livros e livros que não foram emprestados.

-- BANCO DE DADOS VETERINARIA
-- 1. INNER JOIN
-- Exercício 1: Liste os nomes dos clientes e os nomes dos pets que pertencem
-- a eles.
-- Exercício 2: Liste os veterinários e os atendimentos realizados.
-- Exercício 3: Liste todos os pets e os detalhes de seus atendimentos (incluindo
-- o nome do veterinário).
-- Exercício 4: Liste o nome dos pets, seus donos e o veterinário responsável por
-- seus últimos atendimentos.
-- 2. RIGHT JOIN
-- Exercício 1: Liste todos os veterinários e os atendimentos que realizaram,
-- incluindo aqueles que ainda não realizaram nenhum atendimento.
-- Exercício 2: Liste todos os clientes e os pets que possuem, incluindo clientes
-- que ainda não têm pets cadastrados.
-- Exercício 3: Liste todos os veterinários e os atendimentos que realizaram,
-- incluindo aqueles que ainda não realizaram nenhum atendimento.
-- Exercício 4: Liste todos os clientes e os pets que possuem, incluindo clientes
-- que ainda não têm pets cadastrados.

-- 3. OUTER JOIN (FULL OUTER JOIN)
-- Exercício 1: Liste todos os pets e seus clientes, incluindo pets que não têm
-- clientes associados e clientes que não têm pets cadastrados.

-- Exercício 2: Liste todos os atendimentos e os pets, incluindo atendimentos que
-- não têm pets associados e pets que não têm atendimentos registrados.
-- Exercício 3: Liste todos os veterinários e atendimentos, incluindo veterinários
-- que ainda não realizaram atendimentos e atendimentos que não têm
-- veterinários associados.
-- Exercício 4: Liste todos os pets e atendimentos realizados, incluindo pets que
-- não foram atendidos e atendimentos sem pets associados.
