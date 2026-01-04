## 🧑‍💻  Catálogo de Músicas
Um serviço de streaming encontrou erros nos cadastros de músicas e precisa corrigi-los.

### 🧱 Criação do esquema e tabelas

```sql
CREATE DATABASE IF NOT EXISTS musica;
USE musica;

CREATE TABLE IF NOT EXISTS faixas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  album VARCHAR(150) NOT NULL,
  duracao_seg INT NOT NULL CHECK (duracao_seg > 0)
);
```
  
### 🧱 Desafio
1. **Inserindo registros**
Seu desafio é inserir os seguintes registros na base de dados: 

* Faixa 1

  * **Título:** Primeira Luz
  * **Álbum:** Amanhecer
  * **Duração (seg):** 200
* Faixa 2

  * **Título:** Vento do Leste
  * **Álbum:** Amanhecer
  * **Duração (seg):** 184
* Faixa 3

  * **Título:** City Drive
  * **Álbum:** Neon Nights
  * **Duração (seg):** 198

2. **Atualização**
Após inserir os registros vamos realizar as atualizações.

* Corrigir a duração da faixa *Primeira Luz* para **210 segundos**.
* Alterar o álbum da faixa *City Drive* para **City Vibes**.


### ✅ Saída Esperada (exemplo)

```
+----+---------------+-------------+-------------+
| id | titulo        | album       | duracao_seg |
+----+---------------+-------------+-------------+
| .. | Primeira Luz  | Amanhecer   | 210         |
| .. | Vento do Leste| Amanhecer   | 184         |
| .. | City Drive    | City Vibes  | 198         |
+----+---------------+-------------+-------------+
```