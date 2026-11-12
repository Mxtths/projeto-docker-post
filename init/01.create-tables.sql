
-- TABELA USUARIO
CREATE TABLE usuario (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    username VARCHAR(100) NOT NULL UNIQUE
);

-- TABELA CLIENTE
CREATE TABLE cliente (
    id VARCHAR(20) PRIMARY KEY,
    nome_fantasia VARCHAR(255),
    razao_social VARCHAR(255),
    cpf_cnpj VARCHAR(14) NOT NULL UNIQUE,
    tipo VARCHAR(10) NOT NULL
        CHECK (tipo IN ('juridico', 'fisico')),
    email VARCHAR(255) NOT NULL
);

-- TABELA PRODUTO
CREATE TABLE produto (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao TEXT NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    codigo_barra VARCHAR(13) NOT NULL UNIQUE
        CHECK (codigo_barra ~ '^[0-9]{13}$'),
    preco NUMERIC(12,2) NOT NULL
        CHECK (preco >= 0)
); 