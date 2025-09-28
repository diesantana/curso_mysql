## 🧑‍💻 Produtos cujo nome contém "Cabo"

### 🧱 Script da Base

```sql
CREATE DATABASE IF NOT EXISTS loja_cabo;
USE loja_cabo;

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
('Cabo HDMI', 129.90),
('Teclado', 129.90);
```

### 📊 Dados Iniciais

| id | nome            | preco  |
| -- | --------------- | ------ |
| 1  | Fone de Ouvido  | 199.90 |
| 2  | Violão Acústico | 499.90 |
| 3  | Cabo de Áudio   | 49.90  |
| 4  | Cabo HDMI       | 129.90 |
| 5  | Teclado         | 129.90 |

### 🎯 Tarefa

Use `LIKE` para selecionar todos os produtos cujo nome contém "Cabo"

### ✅ Saída Esperada

| nome          | preco  |
| ------------- | ------ |
| Cabo de Áudio | 49.90  |
| Cabo HDMI     | 129.90 |

---