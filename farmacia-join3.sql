CREATE DATABASE db_farmacia_do_bem;

CREATE TABLE tb_produto (
    id_produto INT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR (20) NOT NULL,
    preco DOUBLE NOT NULL,
    promocao BOOLEAN NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    categoria VARCHAR (20),
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
	CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`fk_categoria`)
    REFERENCES `db_farmacia_do_bem`.`tb_categoria` (`id_categoria`)
);

CREATE TABLE tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    perfumaria BOOLEAN NOT NULL,
    generico BOOLEAN NOT NULL,
    controlado BOOLEAN NOT NULL,
    PRIMARY KEY (id_categoria)

);
INSERT INTO tb_categoria (perfumaria, generico, controlado)
VALUES (false, true, false),
(true, false, false),
(false, false, true);

SELECT * FROM tb_categoria;

SELECT * FROM tb_produto;

INSERT INTO tb_produto (nome, preco, promocao, disponibilidade, categoria, fk_categoria)
VALUES ( "Dipirona", 2 , true , true, "Generico", 1),
("Novex tratamento",15, false, true, "Perfumaria", 2 ),
("Rivotrill", 25, true ,true , "Controlado", 3);

SELECT * FROM db_farmacia_do_bem.tb_produto WHERE preco > 50;

SELECT * FROM db_farmacia_do_bem.tb_produto WHERE preco  BETWEEN 3 AND 60;

SELECT * FROM db_farmacia_do_bem.tb_produto WHERE nome LIKE "%b%";

SELECT * FROM db_farmacia_do_bem.tb_produto INNER JOIN db_farmacia_do_bem.tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;


