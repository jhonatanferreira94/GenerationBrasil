CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
id_categorias BIGINT AUTO_INCREMENT,
marca VARCHAR (255),
categoria VARCHAR (255),

PRIMARY KEY (id_categorias)
);

INSERT INTO tb_categorias (marca, categoria) VALUES ("Friboi", "Corte");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Sadia", "Embutidos");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Seara", "Embutidos");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Sadia", "Congelado");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Big Frango", "Congelado");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(

id_produtos BIGINT AUTO_INCREMENT,
produto VARCHAR (255),
quantidade VARCHAR (255),
estoque VARCHAR (255),
valor BIGINT,
categorias_id BIGINT,

PRIMARY KEY (id_produtos),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id_categorias)
);

INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Linguiça de Lombo", 3, 100, 60, 3);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Picanha", 1, 70, 70, 1);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Hambúrguer de Wagyu", 2, 59, 70, 2);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Frango", 2, 58, 48, 5);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Peito de Frango", 2, 45, 20, 4);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Fraldinha", 1, 47, 60, 1);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Presunto", 1, 32, 16, 4);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Salsicha", 1, 23, 14, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor>50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id_categorias;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id_categorias WHERE categoria LIKE "%Embutidos%";




