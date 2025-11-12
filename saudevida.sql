CREATE DATABASE saude_vida;
USE saude_vida;

CREATE TABLE Farmacia (
    id_farmacia INT AUTO_INCREMENT PRIMARY KEY,
    nome_fantasia VARCHAR(100),
    razao_social VARCHAR(150),
    cnpj VARCHAR(18),
    endereco VARCHAR(150),
    municipio VARCHAR(80),
    uf CHAR(2)
);

CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(150),
    fabricante VARCHAR(100),
    preco_venda DECIMAL(10,2),
    preco_custo DECIMAL(10,2),
    unidade_medida VARCHAR(20)
);

CREATE TABLE Estoque (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    id_farmacia INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia(id_farmacia),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_farmacia INT,
    id_produto INT,
    fornecedor VARCHAR(100),
    data_compra DATE,
    quantidade INT,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia(id_farmacia),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_farmacia INT,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    valor_total DECIMAL(10,2),
    cliente VARCHAR(100),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia(id_farmacia),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE ContaPagar (
    id_conta_pagar INT AUTO_INCREMENT PRIMARY KEY,
    id_farmacia INT,
    descricao VARCHAR(150),
    valor DECIMAL(10,2),
    data_vencimento DATE,
    data_pagamento DATE,
    status ENUM('Aberta','Paga','Atrasada'),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia(id_farmacia)
);

CREATE TABLE ContaReceber (
    id_conta_receber INT AUTO_INCREMENT PRIMARY KEY,
    id_farmacia INT,
    descricao VARCHAR(150),
    valor DECIMAL(10,2),
    data_vencimento DATE,
    data_recebimento DATE,
    status ENUM('Aberta','Recebida','Atrasada'),
    FOREIGN KEY (id_farmacia) REFERENCES Farmacia(id_farmacia)
);