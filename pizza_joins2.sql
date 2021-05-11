CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_pizza (
    id_pizza INT NOT NULL ,
    nome VARCHAR (20) NOT NULL,
    preco DOUBLE NOT NULL,
    tamanho VARCHAR (15),
    disponibilidade BOOLEAN NOT NULL,
    categoria VARCHAR (20),
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_pizza),
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
INSERT INTO tb_categoria (nome, doce, salgada)
VALUES ("casadinho", "goiabada", "queijo"),
("ImprovavelPoremBom", "banana", "queijo"),
("BomDeMais"," brigadeiro", "queijo");

ALTER TABLE tb_pizza
MODIFY COLUMN id_pizza INT NOT NULL AUTO_INCREMENT;

ALTER TABLE tb_categoria
MODIFY COLUMN id_categoria INT NOT NULL AUTO_INCREMENT;
