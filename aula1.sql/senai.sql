CREATE DATABASE db_senai;

USE db_senai;

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dt_nascimento DATE NOT NULL
);

CREATE TABLE produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    dt_entrega VARCHAR(100) NOT NULL,
    dt_nascimento DATE NOT NULL,
    preco DECIMAL(19, 2) NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE vendas(
    id_vendas INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    data_entrada DATE NOT NULL
);

INSERT INTO CLIENTE (nome_cliente, email, dt_nascimento)
VALUES ("Michel Jackson", "m.Jackson@gmail.com", "1920-03-22");

INSERT INTO CLIENTE (nome_cliente, email, dt_nascimento)
VALUES ("Julião", "Htinho@gmail.com", "1967-03-22");

INSERT INTO CLIENTE (nome_cliente, email, dt_nascimento)
VALUES ("Joardson", "Joardsonsouza@gmail.com", "2009-06-05");

SELECT * FROM cliente


INSERT INTO PRODUTO (produto, dt_entrega, preco, quantidade)
VALUES ("noteBook Dell", "2026-10-05", 500.45, 5);

INSERT INTO PRODUTO (produto, dt_entrega, preco, quantidade)
VALUES ("Sabão em pedra", "2026-10-23", 5.39, 100);

INSERT INTO PRODUTO (produto, dt_entrega, preco, quantidade)
VALUES ("Bicicleta Gamer", "2026-09-01", 6.80, 500);

SELECT * FROM produto


INSERT INTO VENDA (id_cliente, id_produto, dt_entrega)
VALUES (1, 1, "2026-09-25");

INSERT INTO VENDA (id_cliente, id_produto, dt_entrega)
VALUES (3, 2, "2022-07-24");

INSERT INTO VENDA (id_cliente, id_produto, dt_entrega)
VALUES (2, 3, "2002-11-23");

SELECT * FROM vendas

DELETE FROM vendas WHERE id_vendas = 4;

ALTER TABLE venda
ADD CONSTRAINT fk_venda_cliente
FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente);

ALTER TABLE produto
ADD CONSTRAINT fk_venda_produto
FOREIGN KEY (id_produto)
REFERENCES produto (id_produto);

/*exclui o item registrado*/
DELETE FROM produto WHERE id_produto = 4;

/*selecionar todos os produtos da tabela*/
USE db_senai;
SELECT * FROM produto;

/*muda/atualiza o nome de um item especifico da tabela*/
UPDATE produto SET produto = "Bicicleta gamer" WHERE id_produto = 3;

PK = Chave Primaria
FK = Chave Estrangeira
UK = Chave Unica


ALTER TABLE produto
ADD CONSTRAINT uk_produto_unico UNIQUE (produto);