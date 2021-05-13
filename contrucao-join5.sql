CREATE DATABASE db_contruindo_a_nossa_vida;

CREATE TABLE tb_produto (
    id_produto INT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR (20) NOT NULL,
    preco DOUBLE NOT NULL,
    quantidade INT NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    categoria VARCHAR (20),
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
	CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`fk_categoria`)
    REFERENCES `db_contruindo_a_nossa_vida`.`tb_categoria` (`id_categoria`)
);

CREATE TABLE tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    estrutural BOOLEAN NOT NULL,
    eletrica BOOLEAN NOT NULL,
    hidraulica BOOLEAN NOT NULL,
    PRIMARY KEY (id_categoria)

);
INSERT INTO tb_categoria (estrutural, eletrica, hidraulica)
VALUES (false, true, false),
(true, false, false),
(false, false, true);

SELECT * FROM tb_categoria;

SELECT * FROM tb_produto;

INSERT INTO tb_produto (nome, preco, quantidade, disponibilidade, categoria, fk_categoria)
VALUES ( "cimento", 50 , 1000 , true, "estrutural", 2),
("fio de 50mm",30, 50000, true, "eletrica", 1 ),
("conduinte T", 25, 100000 ,true , "hidraulica", 3);

SELECT * FROM db_contruindo_a_nossa_vida.tb_produto WHERE preco > 50;

SELECT * FROM db_contruindo_a_nossa_vida.tb_produto WHERE preco  BETWEEN 3 AND 60;

SELECT * FROM db_contruindo_a_nossa_vida.tb_produto WHERE nome LIKE "%c%";

SELECT * FROM db_contruindo_a_nossa_vida.tb_produto INNER JOIN db_contruindo_a_nossa_vida.tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;


