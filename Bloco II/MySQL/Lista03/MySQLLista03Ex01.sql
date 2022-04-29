CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id_classes BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
categoria VARCHAR (255),

PRIMARY KEY (id_classes)
);

INSERT INTO tb_classes (nome, categoria) VALUES ("Sierra", "Cavaleiro");
INSERT INTO tb_classes (nome, categoria) VALUES ("Kiog", "Arqueiro");
INSERT INTO tb_classes (nome, categoria) VALUES ("Aqinn", "Mago");
INSERT INTO tb_classes (nome, categoria) VALUES ("Cecile Lilytwill", "Clérigo");
INSERT INTO tb_classes (nome, categoria) VALUES ("Gelippe", "Druida");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(

id_personagens BIGINT AUTO_INCREMENT,

resistencia VARCHAR (255),
dano VARCHAR (255),
combate VARCHAR (255),
vestimenta VARCHAR (255),
forca BIGINT,

categoria_id BIGINT,

PRIMARY KEY (id_personagens),
FOREIGN KEY (categoria_id) REFERENCES tb_classes (id_classes)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (resistencia, dano, combate, vestimenta, forca, categoria_id) 
VALUES ("Alta resistência", "Alto dano", "Combate corporal com armas", "Armaduras pesadas", 90, 1);

INSERT INTO tb_personagens (resistencia, dano, combate, vestimenta, forca, categoria_id) 
VALUES ("Baixa resistência", "Alto dano", "Combate a distância com arco e flecha", "Armaduras médias", 70, 2);

INSERT INTO tb_personagens (resistencia, dano, combate, vestimenta, forca, categoria_id) 
VALUES ("Baixa resistência", "Altíssimo dano", "Combate com magias de variados elementos", "Armaduras leves", 80, 3);

INSERT INTO tb_personagens (resistencia, dano, combate, vestimenta, forca, categoria_id) 
VALUES ("Alta resistência", "Baixo dano", "Foco em dar suporte", "Armaduras leves", 60, 4);

INSERT INTO tb_personagens (resistencia, dano, combate, vestimenta, forca, categoria_id) 
VALUES ("Média resistência", "Médio dano", "Combate corporal com suas formas de animais", "Armaduras médias", 70, 5);

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.categoria_id = tb_classes.id_classes;
SELECT * FROM tb_personagens WHERE forca>=80;
SELECT * FROM tb_personagens WHERE resistencia = "Média resistência";
SELECT * FROM tb_personagens WHERE resistencia = "Alta resistência";
SELECT * FROM tb_personagens WHERE resistencia = "Baixa resistência";
SELECT * FROM tb_classes WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.categoria_id = tb_classes.id_classes;



