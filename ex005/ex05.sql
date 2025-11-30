USE categoria_vendas;

SELECT categoria, SUM(quantidade) AS 'quantidade_total'
FROM vendas_produtos
GROUP BY  categoria;