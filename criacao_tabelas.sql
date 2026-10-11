
-- Estrutura do banco de dados
-- Projeto: Análise de Crédito e Inadimplência
-- Fonte: Banco Central do Brasil

CREATE TABLE staging_inadimplencia (
    data TEXT,
    valor TEXT
);

CREATE TABLE inadimplencia_pessoa_fisica (
    id SERIAL PRIMARY KEY,
    data_referencia DATE NOT NULL UNIQUE,
    taxa_inadimplencia NUMERIC(10,2)
);
