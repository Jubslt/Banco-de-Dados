CREATE TABLE livro (
	isbn varchar (13) PRIMARY KEY,
	titulo varchar(250),
	editora varchar(250),
	ano DATE
)


INSERT INTO livro (isbn, titulo, editora, ano) VALUES
('9781402894626', 'A Arte da Guerra', 'Editora Estratégia', '2005-08-15'),
('9780446603591', 'O Senhor dos Anéis', 'Editora da Terra Média', '2001-03-30'),
('9780064400558', 'Orgulho e Preconceito', 'Editora Clássica', '1813-01-28'),
('9780385733487', 'O Código Da Vinci', 'Editora Criptex', '2003-04-01'),
('9780307340718', 'Cem Anos de Solidão', 'Editora Mágica', '1967-05-30'),
('9780374156424', 'Harry Potter e a Pedra Filosofal', 'Editora das Varinhas', '1997-06-26'),
('9780545010221', 'O Pequeno Príncipe', 'Editora dos Sonhos', '1943-04-06'),
('9780316083654', 'Dom Quixote', 'Editora dos Gigantes', '1605-01-16'),
('9780743231651', 'O Código Bro', 'Editora de Programação', '2004-09-08'),
('9780143106159', 'O Hobbit', 'Editora das Jornadas', '1937-09-21')

SELECT * FROM livro

CREATE TABLE autores (
	id_autor SERIAL PRIMARY KEY,
	nome_autor varchar(100)
)

INSERT INTO autores (nome_autor) 
VALUES
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
	isbn varchar(15),
	FOREIGN KEY (isbn) REFERENCES livros (isbn),
	id_autor int,
	FOREIGN KEY (id_autor) REFERENCES autores (id_autor)
)

SELECT * FROM livros_autores