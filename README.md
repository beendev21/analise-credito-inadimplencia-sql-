# Análise de Crédito e Inadimplência no Brasil | SQL

## Sobre o projeto

Projeto de análise de dados desenvolvido em PostgreSQL, utilizando dados públicos do Banco Central do Brasil para investigar a evolução da inadimplência de pessoas físicas em operações de crédito com recursos livres.

O objetivo é aplicar técnicas de tratamento, organização e análise de dados com SQL, identificando tendências históricas e variações nas taxas de inadimplência.

## Fonte dos dados

- **Instituição:** Banco Central do Brasil (BCB)
- **Série SGS:** 21112
- **Indicador:** Inadimplência da carteira de crédito com recursos livres — Pessoas físicas — Total
- **Periodicidade:** Mensal
- **Período da base utilizada:** Março de 2011 a agosto de 2026
- **Total de registros:** 186

Fonte oficial: https://dadosabertos.bcb.gov.br/dataset/21112-inadimplencia-da-carteira-de-credito-com-recursos-livres---pessoas-fisicas---total

## Ferramentas utilizadas

- PostgreSQL
- pgAdmin 4
- SQL
- GitHub

## Etapas do projeto

1. Obtenção dos dados públicos do Banco Central.
2. Importação do arquivo CSV para uma tabela de preparação (*staging*).
3. Conversão de datas e valores numéricos.
4. Identificação e remoção de registros duplicados.
5. Criação de restrição de unicidade para as datas.
6. Análise de médias anuais e variações mensais.

## Principais resultados

- **2012:** maior média anual entre os anos completos analisados, com 7,07%.
- **2021:** menor média anual, com 4,21%.
- **2024:** média anual de 5,61%.
- **2025:** média anual de 6,50%, aumento de 0,89 ponto percentual em relação a 2024.
- **2025:** a taxa passou de 5,74% em janeiro para 7,06% em dezembro, uma diferença de 1,32 ponto percentual.

As comparações anuais consideram apenas anos com 12 meses disponíveis. Os resultados descrevem a evolução do indicador e não estabelecem relações de causa e efeito.

## Estrutura do projeto

```text
Projeto_SQL_Credito_Inadimplencia/
├── dados/
│   └── arquivo_original.csv
└── sql/
    ├── criacao_tabelas.sql
    ├── carregamento_dados.sql
    ├── tratamento_dados.sql
    ├── analise_anual_inadimplencia.sql
    └── analise_variacao_mensal_2025.sql
```

*O nome `arquivo_original.csv` é ilustrativo e deve ser substituído pelo nome real do arquivo.*

## Competências demonstradas

SQL, PostgreSQL, importação de CSV, limpeza de dados, tratamento de duplicidades, agregações, funções de janela e análise temporal de indicadores financeiros.

## Observações

Os dados representam um indicador específico de inadimplência do crédito com recursos livres para pessoas físicas, não a inadimplência de toda a população brasileira.

Este projeto tem finalidade educacional e de portfólio.