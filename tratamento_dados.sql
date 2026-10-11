
-- Projeto: Crédito e Inadimplência no Brasil
-- Fonte: Banco Central do Brasil - SGS 21112
-- Etapa: Transformação dos dados brutos
--
-- O CSV original contém:
-- data: DD/MM/AAAA
-- valor: número com vírgula decimal
--
-- Esta consulta demonstra o tratamento dos dados.
-- Não modifica as tabelas existentes.

SELECT
    TO_DATE(data, 'DD/MM/YYYY') AS data_referencia,
    REPLACE(valor, ',', '.')::NUMERIC(10,2)
        AS taxa_inadimplencia
FROM staging_inadimplencia
ORDER BY data_referencia;
