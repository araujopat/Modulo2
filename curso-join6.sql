CREATE DATABASE db_cursoDaMinhaVida;

CREATE TABLE tb_curso (
    id_produto INT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR (20) NOT NULL,
    preco DOUBLE NOT NULL,
    nivel VARCHAR (20) NOT NULL,
    vagas INT NOT NULL,
    categoria VARCHAR (20),
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
	CONSTRAINT `fk_tb_curso_tb_categoria`
    FOREIGN KEY (`fk_categoria`)
    REFERENCES `db_cursoDaMinhaVida`.`tb_categoria` (`id_categoria`)
);

CREATE TABLE tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    idioma VARCHAR (20) NOT NULL,
    turno VARCHAR (20) NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    PRIMARY KEY (id_categoria)

);
INSERT INTO tb_categoria (idioma, turno, disponibilidade)
VALUES ("ingles", "manha", true),
("alemao", "tarde", true),
("italiano", "manha", true);

SELECT * FROM tb_categoria;

SELECT * FROM tb_produto;

INSERT INTO tb_curso (nome, preco, nivel, vagas, categoria, fk_categoria)
VALUES ( "Ingles infantil", 500 , "basico" , 50, "ingles", 1),
("Alemao Adulto",650, "basico", 20, "alemao", 2 ),
("Italiano jovem", 350, "intermediario" ,25 , "italiano", 3);

SELECT * FROM db_cursodaminhavida.tb_curso WHERE preco > 50;

SELECT * FROM db_cursodaminhavida.tb_curso WHERE preco  BETWEEN 3 AND 60;

SELECT * FROM db_cursodaminhavida.tb_curso WHERE nome LIKE "%j%";

SELECT * FROM db_cursodaminhavida.tb_curso INNER JOIN db_cursodaminhavida.tb_categoria ON tb_categoria.id_categoria = tb_curso.fk_categoria;


