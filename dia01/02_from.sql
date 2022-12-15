-- Databricks notebook source
-- DBTITLE 1,FROM
SELECT * FROM silver_olist.pedido

-- leia-se: selecione tudo da tabale silver_olist.pedido

-- COMMAND ----------

SELECT idpedido
FROM silver_olist.pedido

-- leia-se: selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao

FROM silver_olist.pedido

-- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao

FROM silver_olist.pedido

LIMIT 5

-- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT *,
       DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

LIMIT 5
