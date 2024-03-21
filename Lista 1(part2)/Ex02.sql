CREATE TABLE curso (
	id_curso SERIAL PRIMARY KEY,
	prof_responsavel varchar(50)

)

INSERT INTO curso (prof_responsavel) 
VALUES
    ('Prof. Galvão'),
    ('Prof. Leite'),
    ('Prof. Oliveira'),
    ('Prof. Lima'),
    ('Prof. Ribeiro'),
    ('Prof. Moura'),
    ('Prof. Torres'),
    ('Prof. Rodrigues'),
    ('Prof. Martins'),
    ('Prof. Nucci');
	
CREATE TABLE aluno (
	id_aluno SERIAL PRIMARY KEY,
	cpf bigint,
	nome_aluno varchar(200),
	data_nascimento DATE

)

INSERT INTO aluno (cpf, nome_aluno, data_nascimento) 
VALUES
    (12345678901, 'Vinicius da Silva', '2000-03-19'),
    (23456789012, 'Valentina Oliveira', '1999-11-29'),
    (34567890123, 'Vania Souza', '2001-01-19'),
    (45678901234, 'Marcos Santos', '2002-07-05'),
    (56789012345, 'Carla Ferreira', '2003-01-30'),
    (67890123456, 'Lucas Costa', '2000-07-18'),
    (78901234567, 'Julia Lima', '2004-02-21'),
    (89012345678, 'Luke Oliveira', '2003-03-10'),
    (90123456789, 'Laura Pereira', '2002-04-02'),
    (11223344556, 'José Fernandes', '2001-12-12');
	

CREATE TABLE turma (
	id_curso int,
	FOREIGN KEY (id_curso) REFERENCES curso (id_curso),
	id_aluno int,
	FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
	id_turma SERIAL PRIMARY KEY
	
)
SELECT * FROM turma
