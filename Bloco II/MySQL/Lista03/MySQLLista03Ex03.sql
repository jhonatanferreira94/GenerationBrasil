CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id_categorias BIGINT AUTO_INCREMENT,
categoria VARCHAR (255),
receita BOOLEAN,

PRIMARY KEY (id_categorias)
);

INSERT INTO tb_categorias (nome, receita) VALUES (False, "Medicamentos");
INSERT INTO tb_categorias (nome, receita) VALUES (False, "Beleza e Higiene");
INSERT INTO tb_categorias (nome, receita) VALUES (False, "Beleza e Higiene");
INSERT INTO tb_categorias (nome, receita) VALUES (True, "Medicamentos");
INSERT INTO tb_categorias (nome, receita) VALUES (True, "Medicamentos");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(

id_produtos BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
marca_laboratorio VARCHAR (255),
estoque VARCHAR (255),
valor BIGINT,
categorias_id BIGINT,

PRIMARY KEY (id_produtos),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id_categorias)
);

INSERT INTO tb_pizzas (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Venvanse", "Neo Química", 100, 58, 4);
INSERT INTO tb_pizzas (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Alprazolam", "Medley", 78, 51, 4);
INSERT INTO tb_pizzas (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Máscara de Hidratação", "Keune", 21, 160, 5);




