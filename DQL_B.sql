USE db_biblioteca;

-- MEDIA DO ANO DE PUBLICACAO DOS LIVROS
 SELECT AVG (ano_publicacao) FROM tb_livros;
 
 -- PUXAR OS LIVROS ACIMA DESSA MEDIA
 SELECT id, titulo FROM tb_livros WHERE ano_pub
 
 -- RESULTADO
 SELECT nome FROM tb_livros
 WHERE id in (SELECT id_autor FROM 
 
-- AGRUPAR O NUMERO DE EMPRESTIMO REALIZADAS POR MENBRO

SELECT * FROM tb_emprestimos;

SELECT id_membro FROM tb_emprestimos GROUP BY id HAVING COUNT(id) > 1;

-- RESULTADO
SELECT nome FROM tb_emprestimos WHERE id IN (SELECT id_membros FROM tb_emprestimos
											GROUP BY id_menbros HAVING COUNT(id_menbros)> 1);
                                            
-- LISTE OS LIVROS QUE FORAM EMPRESTASO AO MENOS UMA VEZ 
-- OS LIVROS QUE TIVERAM EMPRESTIMO

SELECT id_livro FROM tb_emprestado;

-- RESULTADO que so estar dentro  
SELECT titulo FROM tb_livros
WHERE id IN (SELECT id_livros FROM tb_emprestimo;

-- RESULTADO que so estar dentro  e fora
SELECT titulo FROM tb_livros 
WHERE id NOT IN (SELECT id_livro FROM tb_emprestimo);

 