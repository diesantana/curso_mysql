USE tarefas;

SELECT id, descricao, data_inicio
FROM tarefas
WHERE data_inicio BETWEEN '2025-09-01' AND '2025-09-30';