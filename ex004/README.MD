## 🧑‍💻 Selecionar Vendas em um Intervalo de Quantidade

### 🧱 Script da Base

```sql
CREATE DATABASE IF NOT EXISTS loja_vendas;
USE loja_vendas;

DROP TABLE IF EXISTS vendas;
CREATE TABLE vendas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produto VARCHAR(100) NOT NULL,
  quantidade INT NOT NULL
);

INSERT INTO vendas (produto, quantidade) VALUES
('Fone de Ouvido', 20),
('Violão', 5),
('Cabo HDMI', 50),
('Teclado', 15),
('Mouse', 10);
```

### 📊 Dados Iniciais

| id | produto        | quantidade |
| -- | -------------- | ---------- |
| 1  | Fone de Ouvido | 20         |
| 2  | Violão         | 5          |
| 3  | Cabo HDMI      | 50         |
| 4  | Teclado        | 15         |
| 5  | Mouse          | 10         |

### 🎯 Tarefa

Use `BETWEEN` para selecionar todas as vendas com quantidade entre 10 e 30.

### ✅ Saída Esperada

| id | produto        | quantidade |
| -- | -------------- | ---------- |
| 1  | Fone de Ouvido | 20         |
| 4  | Teclado        | 15         |
| 5  | Mouse          | 10         |

---