
-- Projeto: Análise de Crédito e Inadimplência
-- Fonte: Banco Central do Brasil - SGS 21112
-- Carregamento dos dados tratados na tabela final
--
-- Executar apenas uma vez em um banco novo,
-- depois de importar o CSV na tabela staging.

INSERT INTO inadimplencia_pessoa_fisica (
    data_referencia,
    taxa_inadimplencia
)
SELECT
    TO_DATE(data, 'DD/MM/YYYY'),
    REPLACE(valor, ',', '.')::NUMERIC(10,2)
FROM staging_inadimplencia;
