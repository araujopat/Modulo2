CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos (
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR (20) NOT NULL, 
setor VARCHAR (20),
tamanho VARCHAR (20),
preco INT (5),
disponibilidade BOOLEAN,
PRIMARY KEY (id)
);

SELECT*FROM tb_produtos;

INSERT INTO tb_produtos (nome,setor,tamanho,preco,disponibilidade)
VALUES
('PlaySation', 'Games','medio', '4000', true),
('LOL_Surprise', 'Bonecos','pequeno', '550', false),
('XBOB', 'Games','medio', '2000', true),
('Patinete', 'Locomocao','grande', '400', true),
('Bicicleta', 'Locomocao','grande', '1500', true),
('Triciclo', 'Locomocao','grande', '2500', true),
('Banco imobiliário', 'Jogos de Mesa','pequeno', '50', true),
('War', 'Jogos de Mesa','pequeno', '80', true);

SELECT*FROM tb_produtos WHERE preco >500;
SELECT*FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET disponibilidade = true WHERE id=2;

SELECT * FROM tb_produtos;