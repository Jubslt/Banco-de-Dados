CREATE TABLE pacientes (
	id_paciente SERIAL PRIMARY KEY,
	nome_paciente varchar(100),
	data_nasc DATE
)

INSERT INTO pacientes (nome_paciente, data_nasc) 
VALUES
    ('Marcos Silva', '1990-05-15'),
    ('Valentina Oliveira', '1985-11-10'),
    ('Vania Souza', '1992-02-20'),
    ('Vinicius Santos', '1988-09-05'),
    ('Luke Ferreira', '1995-01-30'),
    ('Guinho Costa', '1994-07-18'),
    ('Julia Lima', '1998-08-25'),
    ('Mateus Oliveira', '1993-03-10'),
    ('Laura Pereira', '1992-04-02'),
    ('Gabriel Fernandes', '1991-12-12');

SELECT * FROM pacientes

CREATE TABLE medicos (
	id_medico SERIAL PRIMARY KEY,
	nome_med varchar(100),
	especialidade varchar(50)
)

INSERT INTO medicos (nome_med, especialidade) 
VALUES
    ('Dr. José Silva', 'Clínica Geral'),
    ('Dra. Ana Oliveira', 'Cardiologia'),
    ('Dr. Carlos Souza', 'Ortopedia'),
    ('Dra. Juliana Santos', 'Pediatria'),
    ('Dr. André Ferreira', 'Dermatologia'),
    ('Dra. Laura Costa', 'Ginecologia'),
    ('Dr. Marcos Lima', 'Oncologia'),
    ('Dra. Patrícia Oliveira', 'Neurologia'),
    ('Dr. Renato Pereira', 'Psiquiatria'),
    ('Dra. Fernanda Fernandes', 'Endocrinologia');

SELECT * FROM medicos

CREATE TABLE registros (
	id_registro SERIAL PRIMARY KEY,
	id_paciente int,
	FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente),
	id_medico int,
	FOREIGN KEY (id_medico) REFERENCES medicos (id_medico),
	data_reg DATE
)

INSERT INTO registros (id_paciente, id_medico, data_reg) 
VALUES
    (1, 1, '2023-05-15'),
    (2, 2, '2022-11-10'),
    (3, 3, '2024-02-20'),
    (4, 4, '2023-09-05'),
    (5, 5, '2024-01-30'),
    (6, 6, '2023-07-18'),
    (7, 7, '2022-08-25'),
    (8, 8, '2024-03-10'),
    (9, 9, '2023-04-02'),
    (10, 10, '2022-12-12');

SELECT * FROM registros