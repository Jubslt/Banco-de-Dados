CREATE TABLE curso (
	id_curso SERIAL PRIMARY KEY,
	prof_responsavel varchar(50)

)

SELECT * FROM curso

INSERT INTO curso (prof_responsavel) 
VALUES
    ('Prof. Moura'),
    ('Prof. Santos'),
    ('Prof. Oliveira'),
    ('Prof. Lima'),
    ('Prof. Torres'),
    ('Prof. Nucci'),
    ('Prof. Fernandes'),
    ('Prof. Ribeiro'),
    ('Prof. Martins'),
    ('Prof. Galvão');

SELECT * FROM curso

CREATE TABLE aluno (
	id_aluno SERIAL PRIMARY KEY,
	cpf bigint,
	nome_aluno varchar(200),
	data_nascimento DATE

)

SELECT * FROM ALUNO

INSERT INTO aluno (cpf, nome_aluno, data_nascimento) 
VALUES
    (12345678901, 'Vania da Silva', '2000-05-15'),
    (23456789012, 'Valentina Oliveira', '1999-11-10'),
    (34567890123, 'ViniciusSouza', '2001-02-20'),
    (45678901234, 'Marcos Santos', '2002-09-05'),
    (56789012345, 'Luke Ferreira', '2003-01-30'),
    (67890123456, 'Guinho Costa', '2000-07-18'),
    (78901234567, 'Julia Lima', '2004-08-25'),
    (89012345678, 'José Oliveira', '2003-03-10'),
    (90123456789, 'Nilza Pereira', '2002-04-02'),
    (11223344556, 'Tereza Fernandes', '2001-12-12');


CREATE TABLE turma (
	id_curso int,
	FOREIGN KEY (id_curso) REFERENCES curso (id_curso),
	id_aluno int,
	FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
	id_turma SERIAL PRIMARY KEY
	
)