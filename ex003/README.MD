

## 🧑‍💻 Encontrar o Preço Médio por Categoria

### 🧱 Script da Base

```sql
CREATE DATABASE IF NOT EXISTS loja_preco;
USE loja_preco;

DROP TABLE IF EXISTS produtos;
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  categoria VARCHAR(50) NOT NULL,
  preco DECIMAL(10,2) NOT NULL
);

INSERT INTO produtos (nome, categoria, preco) VALUES
('Fone de Ouvido', 'Áudio', 199.90),
('Violão Acústico', 'Instrumentos', 499.90),
('Cabo de Áudio', 'Áudio', 49.90),
('Amplificador', 'Áudio', 899.00),
('Teclado', 'Informática', 129.90),
('Mouse', 'Informática', 79.90);
```

### 📊 Dados Iniciais

| id | nome            | categoria    | preco  |
| -- | --------------- | ------------ | ------ |
| 1  | Fone de Ouvido  | Áudio        | 199.90 |
| 2  | Violão Acústico | Instrumentos | 499.90 |
| 3  | Cabo de Áudio   | Áudio        | 49.90  |
| 4  | Amplificador    | Áudio        | 899.00 |
| 5  | Teclado         | Informática  | 129.90 |
| 6  | Mouse           | Informática  | 79.90  |

### 🎯 Tarefa

Use `GROUP BY` para calcular o **preço médio** de cada categoria de produto.

### ✅ Saída Esperada

| categoria    | preco\_medio |
| ------------ | ------------ |
| Áudio        | 382.93       |
| Instrumentos | 499.90       |
| Informática  | 104.90       |

---