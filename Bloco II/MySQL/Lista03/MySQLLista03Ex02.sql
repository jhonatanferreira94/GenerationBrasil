CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id_categorias BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
categoria VARCHAR (255),

PRIMARY KEY (id_categorias)
);

INSERT INTO tb_categorias (nome, categoria) VALUES ("4 Queijos", "Salgada");
INSERT INTO tb_categorias (nome, categoria) VALUES ("Lombinho", "Salgada");
INSERT INTO tb_categorias (nome, categoria) VALUES ("Banana", "Doce");
INSERT INTO tb_categorias (nome, categoria) VALUES ("Brócolis", "Salgada");
INSERT INTO tb_categorias (nome, categoria) VALUES ("Brigadeiro", "Doce");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
id_pizza BIGINT AUTO_INCREMENT,
tamanho INT,
borda BOOLEAN,
valor BIGINT,
entrega BOOLEAN,

categorias_id BIGINT,
PRIMARY KEY (id_pizza),

FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id_categorias)
);

INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (40, true, 100, true, 1);
INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (20, true, 45, true, 3);
INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (40, true, 80, false, 2);
INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (40, false, 80, true, 4);
INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (20, false, 45, false, 5);
INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (40, true, 100, false, 1);
INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (40, true, 100, true, 3);
INSERT INTO tb_pizzas (tamanho, borda, valor, entrega, categorias_id) VALUES (40, true, 100, false, 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id=tb_categorias.id_categorias;

SELECT * FROM tb_pizzas WHERE valor>45;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 5 AND 100;
SELECT * FROM tb_categorias WHERE nome LIKE "%M%";
