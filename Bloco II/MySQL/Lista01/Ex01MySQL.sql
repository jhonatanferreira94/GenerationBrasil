-- EX01

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh(

id BIGINT AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
setor VARCHAR (50) NOT NULL,
cargo VARCHAR (50) NOT NULL,
salario INT,

PRIMARY KEY (id)
);

SELECT * FROM tb_rh;

INSERT INTO tb_rh(nome, setor, cargo, salario)
VALUES ("Jhonatan Ferreira", "Engenheiro de Sotfware", "Desenvolvedor Java", 5000);

INSERT INTO tb_rh(nome, setor, cargo, salario)
VALUES ("Camila Lima", "Engenheiro de Sotfware", "Desenvolvedor Python", 5000);

INSERT INTO tb_rh(nome, setor, cargo, salario)
VALUES ("Luiza Lima", "Engenheiro de Sotfware", "Desenvolvedor RPA", 2000);

INSERT INTO tb_rh(nome, setor, cargo, salario)
VALUES ("Ana Paula Lima", "Engenheiro de Sotfware", "Cientista de Dados", 2500);

INSERT INTO tb_rh(nome, setor, cargo, salario)
VALUES ("Pedro Lima", "Engenheiro de Sotfware", "Cientista de Dados", 2500);

 DELETE FROM tb_rh
 WHERE id = 2; 

DESC tb_rh;

SELECT *
FROM tb_rh 
WHERE salario < 2000;

SELECT nome, salario 
FROM tb_rh 
WHERE salario <= 2000;

SELECT nome, salario FROM tb_rh
WHERE salario > 2000;

-- EX02

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT,
produto VARCHAR (50),
categoria VARCHAR (50),
marca VARCHAR (50),
estoque INT,
valor INT,

PRIMARY KEY (id));

SELECT * FROM tb_ecommerce;

INSERT INTO tb_ecommerce(produto, categoria, marca, estoque, valor)
VALUES ("Tênis", "Corrida", "Nike", 57, 550);

INSERT INTO tb_ecommerce(produto, categoria, marca, estoque, valor)
VALUES ("Tênis", "Tennis", "Adidas", 73, 220);

INSERT INTO tb_ecommerce(produto, categoria, marca, estoque, valor)
VALUES ("Maiô", "Natação", "Adidas", 23, 120);

INSERT INTO tb_ecommerce(produto, categoria, marca, estoque, valor)
VALUES ("Capacete", "Motociclismo", "Peels", 23, 502);

INSERT INTO tb_ecommerce(produto, categoria, marca, estoque, valor)
VALUES ("Molinete", "Pesca", "Arena", 23, 380);

INSERT INTO tb_ecommerce(produto, categoria, marca, estoque, valor)
VALUES ("Bermuda", "Fitness", "Adidas", 45, 85);

INSERT INTO tb_ecommerce(produto, categoria, marca, estoque, valor)
VALUES ("Bolsa", "Fitness", "Nike", 91, 200);

DESC tb_ecommerce;

SELECT *
FROM tb_ecommerce
WHERE valor < 500;

SELECT produto, categoria, marca, valor
FROM tb_ecommerce
WHERE valor < 500;

SELECT produto, categoria, marca, valor FROM tb_ecommerce
WHERE valor > 500;

-- EX03

CREATE DATABASE db_secretaria;

USE db_secretaria;

CREATE TABLE tb_secretaria(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR (50),
nota INT,
disciplina VARCHAR (50),
professor VARCHAR (100),
ano INT,

PRIMARY KEY (id)
);

SELECT * FROM  tb_secretaria;

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Jhonatan Ferreira", 8, "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Camila Lima", 5, "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Luiza Lima", 9, "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Pedro Lima", 6, "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Luciana Silva", 6,  "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Amaury Souza", 7, "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Vinicius Antenor", 9, "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Guilherme Ferreira", 6, "História", "Sânia Aparecida", 7);

INSERT INTO tb_secretaria(nome, nota, disciplina, professor, ano)
VALUES ("Victor Pereira", 9, "História", "Sânia Aparecida", 7);

DESC tb_secretaria;

SELECT *
FROM tb_secretaria
WHERE nota < 7;

SELECT *
FROM tb_secretaria
WHERE nota < 7;

SELECT * FROM tb_secretaria
WHERE nota > 7;

