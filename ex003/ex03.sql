USE loja_preco;

SELECT categoria, ROUND(AVG(preco), 2) AS 'preco_medio' 
FROM produtos
GROUP BY categoria;

