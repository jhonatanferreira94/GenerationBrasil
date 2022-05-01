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
