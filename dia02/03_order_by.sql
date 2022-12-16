-- Databricks notebook source
-- Comando de order valores, string e valores
SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

-- ordenar segunda coluna - modo 1
SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY (2)

-- COMMAND ----------



-- COMMAND ----------

-- ordenar segunda coluna - modo 2
SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------


-- ordenar segunda coluna - modo 3

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- ordenar de forma descrecente 
SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

-- COMMAND ----------

--ordenar e limitar
SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC
LIMIT 1
