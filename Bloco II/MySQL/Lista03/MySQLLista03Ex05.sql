CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
id_categorias BIGINT AUTO_INCREMENT,
marca VARCHAR (255),
categoria VARCHAR (255),

PRIMARY KEY (id_categorias)
);

INSERT INTO tb_categorias (marca, categoria) VALUES ("Amanco", "Hidráulica");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Deca", "Acabamento");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Docol", "Acabamento");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Portinari", "Acabamento");
INSERT INTO tb_categorias (marca, categoria) VALUES ("Marca Própria", "Minério");

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

INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Porcelanato", 5, 100, 250, 4);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Cano PVC 25mm", 2, 98, 48, 1);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Cuba de Apoio Crámica", 1, 13, 560, 2);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Torneira Lavatório Mesa", 1, 10, 456, 3);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Areia Média", 1, 47, 5, 5);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Brita N1", 1, 56, 4, 5);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Piso Cerâmica", 5, 100, 150, 4);
INSERT INTO tb_produtos (produto, quantidade, estoque, valor, categorias_id) VALUES ("Cano PVC 100mm", 3, 100, 77, 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor>100;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id_categorias;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id_categorias WHERE categoria LIKE "%Acabamento%";
