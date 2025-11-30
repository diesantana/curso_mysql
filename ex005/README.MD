

## 🧑‍💻 Encontrar a Quantidade Total de Produtos Vendidos por Categoria

### 🧱 Script da Base

```sql
CREATE DATABASE IF NOT EXISTS categoria_vendas;
USE categoria_vendas;

DROP TABLE IF EXISTS vendas_produtos;
CREATE TABLE vendas_produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produto VARCHAR(100) NOT NULL,
  categoria VARCHAR(50) NOT NULL,
  quantidade INT NOT NULL
);

INSERT INTO vendas_produtos (produto, categoria, quantidade) VALUES
('Fone de Ouvido', 'Áudio', 20),
('Violão', 'Instrumentos', 15),
('Cabo de Áudio', 'Áudio', 50),
('Amplificador', 'Áudio', 30),
('Teclado', 'Informática', 25);
```

### 📊 Dados Iniciais

| id | produto        | categoria    | quantidade |
| -- | -------------- | ------------ | ---------- |
| 1  | Fone de Ouvido | Áudio        | 20         |
| 2  | Violão         | Instrumentos | 15         |
| 3  | Cabo de Áudio  | Áudio        | 50         |
| 4  | Amplificador   | Áudio        | 30         |
| 5  | Teclado        | Informática  | 25         |

### 🎯 Tarefa

Use `GROUP BY` para encontrar a **quantidade total de produtos vendidos** por categoria.

### ✅ Saída Esperada

| categoria    | quantidade\_total |
| ------------ | ----------------- |
| Áudio        | 100               |
| Instrumentos | 15                |
| Informática  | 25                |

---