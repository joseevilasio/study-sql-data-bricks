-- Databricks notebook source
-- DBTITLE 1,Case
SELECT *,
      -- Nova coluna na query com a informação da descNacionalidade, utilizando CASE
      CASE 
        WHEN descUF = 'SP' THEN 'paulista'
        WHEN descUF = 'RJ' THEN 'fluminense'
        WHEN descUF = 'PR' THEN 'paranaense'
        ELSE 'outros'
      END AS descNacionalidade,
      
      -- Nova coluna na query com a informação de se tem ou não são no nome, utilizando LIKE e coringa % para
      CASE
        WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
        ELSE 'Não tem são no nome'
      END AS descCidadeSao
      
FROM silver_olist.cliente
