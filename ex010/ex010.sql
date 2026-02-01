USE loja_max;

SELECT categoria, max(preco) as 'preco_maximo' 
FROM produtos 
GROUP BY categoria;