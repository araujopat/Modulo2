CREATE DATABASE db_registro;

CREATE TABLE tb_alunes (
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR (20) NOT NULL, 
matricula INT (4),
turma VARCHAR (2),
turno VARCHAR (5),
media INT (2),
PRIMARY KEY (id)
);

SELECT*FROM tb_alunes;

INSERT INTO tb_alunes (nome,matricula,turma,turno,media)
VALUES
('Mel', '1234','A', 'manha', 8),
('Akita', '4321','B', 'tarde', 7),
('Lipe', '5678','A', 'manha', 5),
('Luke', '8765','B', 'tarde', 6),
('Layla', '2324','A', 'manha', 9),
('Ororo', '2423','B', 'tarde', 10),
('Kitty', '1223','A', 'manha', 4),
('Peter', '4567','B', 'tarde', 6);

SELECT*FROM tb_alunes WHERE media >7;
SELECT*FROM tb_alunes WHERE media < 7;

UPDATE tb_alunes
SET media = 8 WHERE id=7;

SELECT * FROM tb_alunes;