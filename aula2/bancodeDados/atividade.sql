USE senai_bnc;

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

INSERT INTO CLIENTE (nome_cliente, email, telefone) (
VALUES ('Ygona', 'ygona@email.com', '(11) 99999-1111');

INSERT INTO CLIENTE (nome_cliente, email, telefone)
VALUES ('Aghata Nunes', 'aghata@email.com', '(11) 99999-2222');

INSERT INTO CLIENTE (nome_cliente, email, telefone)
VALUES ('Pri', 'pri@email.com', '(11) 99999-3333');

SELECT * FROM cliente;

);


CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    qtd INT NOT NULL
);


INSERT INTO produto (nome_produto, preco, qtd) VALUES
('Base Virgínia', 79.90, 10),
('Gloss Franciny', 49.90, 15),
('Blush Mari Maria', 54.90, 8),

SELECT * FROM produto;


CREATE TABLE compra (
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_produto INT,
    quantidade_vendida INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);



INSERT INTO compra (id_cliente, id_produto, quantidade_vendida) 
VALUES (10, 1, 2);


INSERT INTO compra (id_cliente, id_produto, quantidade_vendida) 
VALUES (11, 2, 1);


INSERT INTO compra (id_cliente, id_produto, quantidade_vendida) 
VALUES (12, 3, 3);