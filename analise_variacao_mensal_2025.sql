
WITH variacoes AS (
    SELECT
        data_referencia,
        taxa_inadimplencia,
        LAG(taxa_inadimplencia) OVER (
            ORDER BY data_referencia
        ) AS taxa_anterior
    FROM inadimplencia_pessoa_fisica
    WHERE data_referencia BETWEEN '2024-12-01'
                              AND '2025-12-31'
)
SELECT
    data_referencia,
    taxa_inadimplencia,
    taxa_anterior,
    ROUND(
        taxa_inadimplencia - taxa_anterior, 2
    ) AS variacao_pp
FROM variacoes
WHERE data_referencia >= '2025-01-01'
ORDER BY variacao_pp DESC;
