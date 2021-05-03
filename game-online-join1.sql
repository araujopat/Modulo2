SELECT * FROM db_generation_game_online.tb_classe;

INSERT INTO tb_classe (elemento,Orixá,nome_aldeia)
VALUES
("Água","Iemanja","Ongunte"),
("Àgua", "Oxum", "Iobara"),
("Fogo", "Xango", "Justiça");

SELECT * FROM db_generation_game_online.tb_personagem;

INSERT INTO tb_personagem (nome, arma, aldeia, ataque, defesa, fk_aldeia )
VALUES (" Ian", "palavra", "Ongunte", 3000 ,6000 , 1),
("Patrick", "Pexeira", "Justiça", 7000, 3000, 3),
("Patricia", "Paciencia","Ongunte", 2500, 6000, 1),
("Yasmin", "Manipulação","Iobara", 10000, 10000,2);

SELECT * FROM db_generation_game_online.tb_personagem WHERE ataque > 2000;

SELECT * FROM db_generation_game_online.tb_personagem WHERE defesa  BETWEEN 1000 AND 2000;

SELECT * FROM db_generation_game_online.tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM db_generation_game_online.tb_personagem INNER JOIN db_generation_game_online.tb_classe ON tb_classe.id_aldeia = tb_personagem.fk_aldeia;
SELECT * FROM db_generation_game_online.tb_personagem INNER JOIN db_generation_game_online.tb_classe ON tb_classe.id_aldeia = tb_personagem.fk_aldeia WHERE fk_aldeia = 1;