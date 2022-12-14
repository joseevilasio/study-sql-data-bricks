-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao

FROM silver_olist.pedido
LIMIT 5

-- COMMAND ----------

SELECT *,
          datediff(dtEstimativaEntrega, dtEntregue) AS Data_Estimada
FROM silver_olist.pedido
