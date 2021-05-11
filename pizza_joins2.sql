CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_pizza (
    id_pizza INT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR (20) NOT NULL,
    preco DOUBLE NOT NULL,
    tamanho VARCHAR (15),
    disponibilidade BOOLEAN NOT NULL,
    categoria VARCHAR (20),
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_pizza),
	CONSTRAINT `fk_tb_pizza_tb_categoria`
    FOREIGN KEY (`fk_categoria`)
    REFERENCES `db_pizzaria_legal`.`tb_categoria` (`id_categoria`)
);

CREATE TABLE tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR (20) NOT NULL,
    sabor VARCHAR (20),
    promocao BOOLEAN,
    PRIMARY KEY (id_categoria)

);
INSERT INTO tb_categoria (nome, sabor, promocao)
VALUES ("Frango e queijo", "salgada", true),
("Carne seca e queijo", "salgada", true),
("Banana com canela"," doce", true);

SELECT * FROM tb_categoria;

SELECT * FROM tb_pizza;

INSERT INTO tb_pizza (nome, preco, tamanho, disponibilidade, categoria, fk_categoria)
VALUES ( "Fangro Padrão", 20,"grande", true, "frango e queijo", 1),
("ImprovavelPoremBom",36, "media", false, "Carne seca e queijo", 2 ),
("Sobremesa", 15, "pequena",true, "Banana com calena", 3);

SELECT * FROM db_pizzaria_legal.tb_pizza WHERE preco > 45;

SELECT * FROM db_pizzaria_legal.tb_pizza WHERE preco  BETWEEN 29 AND 60;

SELECT * FROM db_pizzaria_legal.tb_pizza WHERE nome LIKE "%c%";

SELECT * FROM db_pizzaria_legal.tb_pizza INNER JOIN db_pizzaria_legal.tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria;


