CREATE DATABASE db_rh;

CREATE TABLE tb_funcionaries (
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR (20) NOT NULL, 
nascimento DATE,
setor VARCHAR (20),
cargo VARCHAR (20),
salario INT (5),
PRIMARY KEY (id)
);

SELECT*FROM tb_funcionaries;

INSERT INTO tb_funcionaries (nome, nascimento,setor,cargo,salario)
VALUES
('Patricia', '1993-08-07','TI', 'Desenvolvedora', 5500),
('Patríck', '1994-09-02','TI', 'Desenvolvedor', 9500),
('Tainana', '1990-08-07','Suplay', 'auxiliar', 2000),
('Junior', '1999-12-12','Suplay', 'estagiario', 1500),
('Tulio', '1989-03-07','Suplay', 'auxiliar 2', 2500);

SELECT*FROM tb_funcionaries WHERE salario >2000;
SELECT*FROM tb_funcionaries WHERE salario < 2000;

UPDATE tb_funcionaries
SET salario = 1800 WHERE id=3;

SELECT * FROM tb_funcionaries;