## 🧑‍💻 Selecionar Tarefas com Data de Início no Intervalo Específico

### 🧱 Script da Base

```sql
CREATE DATABASE IF NOT EXISTS tarefas;
USE tarefas;

DROP TABLE IF EXISTS tarefas;
CREATE TABLE tarefas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(100) NOT NULL,
  data_inicio DATE NOT NULL
);

INSERT INTO tarefas (descricao, data_inicio) VALUES
('Tarefa A', '2025-09-01'),
('Tarefa B', '2025-09-05'),
('Tarefa C', '2025-09-10'),
('Tarefa D', '2025-10-01'),
('Tarefa E', '2025-09-15');
```

### 📊 Dados Iniciais

| id | descricao | data\_inicio |
| -- | --------- | ------------ |
| 1  | Tarefa A  | 2025-09-01   |
| 2  | Tarefa B  | 2025-09-05   |
| 3  | Tarefa C  | 2025-09-10   |
| 4  | Tarefa D  | 2025-10-01   |
| 5  | Tarefa E  | 2025-09-15   |

### 🎯 Tarefa

Use `BETWEEN` para selecionar todas as tarefas com data de início entre `2025-09-01` e `2025-09-30`.

### ✅ Saída Esperada

| id | descricao | data\_inicio |
| -- | --------- | ------------ |
| 1  | Tarefa A  | 2025-09-01   |
| 2  | Tarefa B  | 2025-09-05   |
| 3  | Tarefa C  | 2025-09-10   |
| 5  | Tarefa E  | 2025-09-15   |

---