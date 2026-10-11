
-- Projeto: Crédito e Inadimplência no Brasil
-- Fonte: Banco Central do Brasil - Série SGS 21112
-- Análise: Média anual da inadimplência
-- Considera apenas anos com 12 meses de dados

SELECT
    EXTRACT(YEAR FROM data_referencia)::INTEGER AS ano,
    ROUND(AVG(taxa_inadimplencia), 2) AS taxa_media,
    MIN(taxa_inadimplencia) AS menor_taxa,
    MAX(taxa_inadimplencia) AS maior_taxa,
    COUNT(*) AS meses_analisados
FROM inadimplencia_pessoa_fisica
GROUP BY EXTRACT(YEAR FROM data_referencia)
HAVING COUNT(*) = 12
ORDER BY ano;
