USE loja_vendas;

SELECT id, produto, quantidade
FROM vendas
WHERE quantidade BETWEEN 10 AND 30;