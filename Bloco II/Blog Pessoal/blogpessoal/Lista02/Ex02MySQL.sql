CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_quitanda (

id BIGINT AUTO_INCREMENT,
categoria VARCHAR (200) NOT NULL,
marca VARCHAR (200) NOT NULL,

PRIMARY KEY (id)

);

INSERT tb_quitanda (categoria, marca) VALUES ("Laticínios", "Nestlé");
INSERT tb_quitanda (categoria, marca) VALUES ("Bebidas", "Sprite"); 
INSERT tb_quitanda (categoria, marca) VALUES ("Produtos Quitanda", "Marca Própria");
INSERT tb_quitanda (categoria, marca) VALUES ("Congelados", "Marca Própria");
INSERT tb_quitanda (categoria, marca) VALUES ("Vegetarianos e Veganos", "Fazenda Futuro");

SELECT * FROM tb_quitanda;

CREATE TABLE  tb_produtos (
id BIGINT AUTO_INCREMENT,
produto VARCHAR (200) NOT NULL,
quantidade BIGINT NOT NULL,
valor INT NOT NULL,
categoria_id BIGINT NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_quitanda (id) 
);

INSERT tb_produtos (produto, quantidade, valor, categoria_id) VALUES ("Iogurte Ninho", 30, 240, 1);
INSERT tb_produtos (produto, quantidade, valor, categoria_id) VALUES ("Refrigerante", 3, 15, 2);
INSERT tb_produtos (produto, quantidade, valor, categoria_id) VALUES ("Pão de queijo", 3, 30, 3);
INSERT tb_produtos (produto, quantidade, valor, categoria_id) VALUES ("Pão de queijo", 6, 60,  4);
INSERT tb_produtos (produto, quantidade, valor, categoria_id) VALUES ("Almôndega", 1, 20, 5);

SELECT * FROM tb_produtos;

select * from tb_produtos inner join tb_quitanda on tb_quitanda.id = tb_produtos.categoria_id;

select * from tb_produtos
where valor > 50;

select * from tb_produtos
where produto like '%a%';
