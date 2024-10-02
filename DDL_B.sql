CREATE DATABASE db_biblioteca;

USE db_biblioteca;

CREATE TABLE tb_autores(
id INT (10) NOT NULL,
nome VARCHAR(100) NOT NULL,
data_nascimento DATE,
PRIMARY KEY (id)
);

CREATE TABLE tb_livros(
id INT (10) NOT NULL,
titulo VARCHAR (100) NOT NULL,
ano_publicacao INT(4) NOT NULL,
id_autor INT (10) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_autor) REFERENCES tb_autores(id)
);

CREATE TABLE tb_membros(
id INT (10) NOT NULL,
nome VARCHAR (100) NOT NULL,
data_adesao DATE,
PRIMARY KEY (id)
);

CREATE TABLE tb_emprestimos(
id INT (10) NOT NULL,
id_membro INT (10) NOT NULL,
id_livro INT (10) NOT NULL,
data_emprestimo DATE,
data_devolucao DATE,
FOREIGN KEY (id_membro) REFERENCES  tb_membros(id),
FOREIGN KEY (id_livro) REFERENCES tb_livros(id)
);


