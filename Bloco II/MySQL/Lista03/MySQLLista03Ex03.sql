CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id_categorias BIGINT AUTO_INCREMENT,
categoria VARCHAR (255),
receita BOOLEAN,

PRIMARY KEY (id_categorias)
);

INSERT INTO tb_categorias (categoria, receita) VALUES (False, "Medicamentos");
INSERT INTO tb_categorias (categoria, receita) VALUES (False, "Beleza e Higiene");
INSERT INTO tb_categorias (categoria, receita) VALUES (False, "Beleza e Higiene");
INSERT INTO tb_categorias (categoria, receita) VALUES (True, "Medicamentos");
INSERT INTO tb_categorias (categoria, receita) VALUES (True, "Medicamentos");

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

INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Venvanse", "Neo Química", 100, 58, 4);
INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Alprazolam", "Medley", 78, 51, 4);
INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Máscara de Hidratação", "Keune", 21, 160, 3);
INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Fio Dental", "Johnson's", 45, 12, 3);
INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Protetor Solar Facial", "Vichy", 8, 60, 2);
INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Escova", "Sensodyne", 19, 24, 3);
INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Enxaguante Bucal", "Sensodyne", 46, 24, 2);
INSERT INTO tb_produtos (nome, marca_laboratorio, estoque, valor, categorias_id) VALUES ("Loratodina", "Neo Química", 17, 40, 1);

SELECT * FROM tb_produtos WHERE valor>50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id_categorias WHERE categoria LIKE "%Medicamentos%";









