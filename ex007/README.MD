

## 🧑‍💻 Buscar Produtos com Nome Começando com "Violão"

### 🧱 Script da Base

```sql
CREATE DATABASE IF NOT EXISTS loja_viola;
USE loja_viola;

DROP TABLE IF EXISTS produtos;
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL
);

INSERT INTO produtos (nome, preco) VALUES
('Violão Acústico', 499.90),
('Violão Elétrico', 1299.90),
('Cabo de Áudio', 49.90),
('Amplificador', 899.00),
('Teclado', 129.90);
```

### 📊 Dados Iniciais

| id | nome            | preco   |
| -- | --------------- | ------- |
| 1  | Violão Acústico | 499.90  |
| 2  | Violão Elétrico | 1299.90 |
| 3  | Cabo de Áudio   | 49.90   |
| 4  | Amplificador    | 899.00  |
| 5  | Teclado         | 129.90  |

### 🎯 Tarefa

Use `LIKE` para selecionar todos os produtos cujo nome comece com "Violão".

### ✅ Saída Esperada

| nome            | preco   |
| --------------- | ------- |
| Violão Acústico | 499.90  |
| Violão Elétrico | 1299.90 |

---