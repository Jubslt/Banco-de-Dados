CREATE TABLE livro (
	isbn SERIAL PRIMARY KEY,
	titulo varchar(250),
	editora varchar(250),
	ano DATE
)

INSERT INTO livro (titulo, editora, ano) VALUES
('Orgulho e Preconceito', 'Martin Claret', '1813-01-01'),
('Os lusiadas', 'Editora Concreta', '1572-03-12'),
('Romeu e Julieta','Companhia das Letras', '1595-11-29'),
('Memórias Póstumas de Brás Cubas', 'Companhia das Letras', '1881-01-01'),
('1984', 'Companhia das Letras', '1949-01-01'),
('O Sítio do Picapau Amarelo','Rio Gráfica Editora', '1947-03-19'),
('Laços de Família','Editora Francisco Alves','1960-02-21'),
('Harry Potter e a Pedra Filosofal', 'Rocco', '1997-01-01'),
('Crepúsculo', 'Little, Brown and Company', '2005-09-27'),
('verity','Grupo Editorial Record','2018-12-07');
SELECT * FROM livro

CREATE TABLE autores (
	id_autor SERIAL PRIMARY KEY,
	nome_autor varchar(100)
)

INSERT INTO autores (nome_autor) VALUES

    ('Colleen hoover'),
    ('George Orwell'),
    ('Clarice Lispector'),
    ('Luís de Camões'),
    ('Jane Austen'),
    ('Monteiro Lobato'),
    ('Machado de Assis'),
    ('Stephenie Meyer'),
    ('J.K. Rowling'),
    ('William Shakespeare');


SELECT * FROM autores

CREATE TABLE livros_autores (
	isbn SERIAL,
	FOREIGN KEY (isbn) REFERENCES livro (isbn),
	id_autor SERIAL,
	FOREIGN KEY (id_autor) REFERENCES autores (id_autor)
)

DROP TABLE livro

SELECT * FROM livros_autores

-- 1.a) Listar todos os livros e seus autores

SELECT titulo, nome_autor FROM livro INNER JOIN autores
ON livro.isbn = autores.id_autor

--1.b) encontrar todos os livros de um autor específico

SELECT nome_autor, titulo FROM autores INNER JOIN livro
ON autores.id_autor = livro.isbn
WHERE nome_autor = 'Colleen hoover' OR nome_autor = 'colleen hoover'

-- 1.c) Encontrar todos os autores que escreveram um livro específico

SELECT titulo, nome_autor FROM livro INNER JOIN autores
ON livro.isbn = autores.id_autor
WHERE titulo = 'Crepúsculo'