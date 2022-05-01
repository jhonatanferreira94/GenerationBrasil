-- EX01

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

-- EX02

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

-- EX03

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

-- EX04

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor>50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id_categorias;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id=tb_categorias.id_categorias WHERE categoria LIKE "%Embutidos%";

-- EX05

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

-- EX06

CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id_categorias BIGINT AUTO_INCREMENT,
categoria VARCHAR (255),
duracao VARCHAR (255),

PRIMARY KEY (id_categorias)
);

INSERT INTO tb_categorias (categoria, duracao) VALUES ("Ciências Exatas", "10 semestres");
INSERT INTO tb_categorias (categoria, duracao) VALUES ("Ciências Humanas", "5 semestres");
INSERT INTO tb_categorias (categoria, duracao) VALUES ("Informática e internet", "4 semestres");
INSERT INTO tb_categorias (categoria, duracao) VALUES ("Meio Ambiente", "4 semestres");
INSERT INTO tb_categorias (categoria, duracao) VALUES ("Arquitetura e decoração", "10 semestres");

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(

id_cursos BIGINT AUTO_INCREMENT PRIMARY KEY,
curso VARCHAR (255),
ingresso VARCHAR (255),
valor BIGINT (255),
beneficio VARCHAR (255),
categorias_id BIGINT,

PRIMARY KEY (id_cursos),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id_categorias)
);

SELECT * FROM  tb_cursos;

INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Arquitetura e Urbanismo", "ENEM", 1500, "Bolsa 50%", 5);
INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Matemática", "Vestibular", 1000, "Bolsa 30%", 1);
INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Letras e Literatura", "Vestibular", 900, "Bolsa 25%", 2);
INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Linguagens de Programação", "ENEM", 1200, "Bolsa 40%", 3);
INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Serviçoes Ambientais", "Vestibular", 800, "Bolsa 10%", 4);
INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Física", "ENEM", 1500, "Bolsa 70%", 1);
INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Design de interiores", "Vestibular", 900, "Bolsa 30%", 5);
INSERT INTO tb_cursos (curso, ingresso, valor, beneficio, categorias_id) VALUES ("Gestão Ambiental", "Enem", 900, "Bolsa 30%", 4);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor>500;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE curso LIKE "%G%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id=tb_categorias.id_categorias;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id=tb_categorias.id_categorias WHERE categoria LIKE "%Arquitetura e decoração%";
