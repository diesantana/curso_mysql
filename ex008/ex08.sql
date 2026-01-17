USE delivery;

-- 1) cria os clientes
INSERT INTO clientes (nome) 
VALUES ('Ana Souza'), ('Bruno Lima');

-- 2) cria os pedidos pegando o id do cliente pelo nome
INSERT INTO pedidos (cliente_id, status, criado_em)
SELECT clientes.id, 'CANCELADO', '2023-08-10'
FROM clientes 
WHERE nome = 'Ana Souza';

INSERT INTO pedidos (cliente_id, status, criado_em)
SELECT clientes.id, 'ABERTO', '2024-06-15'
FROM clientes 
WHERE nome = 'Bruno Lima';

INSERT INTO pedidos (cliente_id, status, criado_em)
SELECT clientes.id, 'PAGO', '2025-05-01'
FROM clientes 
WHERE nome = 'Ana Souza';

-- 3) Cria os itens do pedido
INSERT INTO itens_pedido (pedido_id, produto, qtd, preco_unit)
VALUES 
	(1, 'Hambúrger', 1, 20.00), 
	(2, 'Pizza Média', 1, 49.90), 
    (3, 'Refrigerante', 2, 6.00);

-- 4) Delentando os clientes com status 'CANCELADO'
-- e data de criação menor que 01/01/2024

DELETE FROM pedidos 
WHERE 
	status = 'CANCELADO' 
    AND criado_em < '2024-01-01';
    
-- Exibindo os dados
SELECT 
	clientes.id, 
    clientes.nome, 
    pedidos.status, 
    pedidos.criado_em 
FROM clientes INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;
