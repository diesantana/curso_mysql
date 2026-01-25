## 🧑‍💻 Selecionar Produtos por Faixa de Preço

### 🧱 Script da Base

```sql
CREATE DATABASE IF NOT EXISTS loja;
USE loja;

DROP TABLE IF EXISTS produtos;
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL
);

INSERT INTO produtos (nome, preco) VALUES
('Fone de Ouvido', 199.90),
('Violão Acústico', 499.90),
('Cabo de Áudio', 49.90),
('Amplificador', 899.00),
('Teclado', 129.90);
```

### 📊 Dados Iniciais

| id | nome            | preco  |
| -- | --------------- | ------ |
| 1  | Fone de Ouvido  | 199.90 |
| 2  | Violão Acústico | 499.90 |
| 3  | Cabo de Áudio   | 49.90  |
| 4  | Amplificador    | 899.00 |
| 5  | Teclado         | 129.90 |

### 🎯 Tarefa

Use `BETWEEN` para selecionar todos os produtos com preço entre 100 e 500.

### ✅ Saída Esperada

| nome            | preco  |
| --------------- | ------ |
| Fone de Ouvido  | 199.90 |
| Teclado         | 129.90 |
| Violão Acústico | 499.90 |

---