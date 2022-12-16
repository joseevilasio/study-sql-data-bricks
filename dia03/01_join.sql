-- Databricks notebook source
SELECT *

FROM silver_olist.pedido AS pedido

LEFT JOIN silver_olist.cliente AS cliente
ON pedido.idCliente = cliente.idCliente

-- COMMAND ----------

SELECT pedido.*,
       cliente.descUF

FROM silver_olist.pedido AS pedido

LEFT JOIN silver_olist.cliente AS cliente
ON pedido.idCliente = cliente.idCliente
