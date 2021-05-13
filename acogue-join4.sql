CREATE DATABASE db_cidade_das_carnes;

CREATE TABLE tb_produto (
    id_produto INT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR (20) NOT NULL,
    preco DOUBLE NOT NULL,
    bandeja BOOLEAN NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    categoria VARCHAR (20),
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
	CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`fk_categoria`)
    REFERENCES `db_cidade_das_carnes`.`tb_categoria` (`id_categoria`)
);

CREATE TABLE tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    ave BOOLEAN NOT NULL,
    suino BOOLEAN NOT NULL,
    bovino BOOLEAN NOT NULL,
    PRIMARY KEY (id_categoria)

);
INSERT INTO tb_categoria (ave, suino, bovino)
VALUES (false, true, false),
(true, false, false),
(false, false, true);

SELECT * FROM tb_categoria;

SELECT * FROM tb_produto;

INSERT INTO tb_produto (nome, preco, bandeja, disponibilidade, categoria, fk_categoria)
VALUES ( "Drumett", 30 , true , true, "ave", 2),
("Carre",25, true, true, "suino", 1 ),
("Contra file", 45, false ,true , "bovino", 3);

SELECT * FROM db_cidade_das_carnes.tb_produto WHERE preco > 50;

SELECT * FROM db_cidade_das_carnes.tb_produto WHERE preco  BETWEEN 3 AND 60;

SELECT * FROM db_cidade_das_carnes.tb_produto WHERE nome LIKE "%c%";

SELECT * FROM db_cidade_das_carnes.tb_produto INNER JOIN db_cidade_das_carnes.tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;


