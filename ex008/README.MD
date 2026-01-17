## 🧑‍💻 Delivery: Cancelados Antigos e Cascade

### 🧠 Cenário

O app de delivery precisa remover pedidos **cancelados** e **antigos**, garantindo que os itens desses pedidos sejam removidos automaticamente.

### 🧱 Regras de Negócio

1. **Criação do esquema e tabelas (com CASCADE)**

```sql
CREATE DATABASE IF NOT EXISTS delivery;
USE delivery;

CREATE TABLE IF NOT EXISTS clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT NOT NULL,
  status ENUM('ABERTO','PAGO','CANCELADO') NOT NULL DEFAULT 'ABERTO',
  criado_em DATE NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE IF NOT EXISTS itens_pedido (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pedido_id INT NOT NULL,
  produto VARCHAR(100) NOT NULL,
  qtd INT NOT NULL,
  preco_unit DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id) ON DELETE CASCADE
);
```

> Observação: se seu MySQL não estiver com `ON DELETE CASCADE` ativado em `itens_pedido`, ajuste a FK conforme acima.

2. **Dados iniciais a inserir (você escreve os INSERTs)**

* **Clientes**

  * Cliente 1

    * **Nome:** Ana Souza
  * Cliente 2

    * **Nome:** Bruno Lima

* **Pedidos**

  * Pedido 1

    * **Cliente:** Ana Souza
    * **Status:** CANCELADO
    * **Criado em (DATE):** 2023-08-10
  * Pedido 2

    * **Cliente:** Bruno Lima
    * **Status:** ABERTO
    * **Criado em (DATE):** 2024-06-15
  * Pedido 3

    * **Cliente:** Ana Souza
    * **Status:** PAGO
    * **Criado em (DATE):** 2025-01-05

* **Itens por pedido**

  * Pedido 1 (CANCELADO 2023-08-10)

    * Item A

      * **Produto:** Hambúrguer
      * **Qtd:** 1
      * **Preço Unit:** 20.00
  * Pedido 2 (ABERTO 2024-06-15)

    * Item A

      * **Produto:** Pizza Média
      * **Qtd:** 1
      * **Preço Unit:** 49.90
  * Pedido 3 (PAGO 2025-01-05)

    * Item A

      * **Produto:** Refrigerante
      * **Qtd:** 2
      * **Preço Unit:** 6.00

### 🧩 Desafios

* Deletar **todos os pedidos** com **status = 'CANCELADO'** e **criado\_em < '2024-01-01'**.
* Confirmar que os **itens** desses pedidos foram removidos via **`ON DELETE CASCADE`**.

### ✅ Saída Esperada (exemplo)

* `pedidos`: permanece **Pedido 2** e **Pedido 3**.
* `itens_pedido`: itens apenas dos pedidos restantes.

```
+----+-----------+----------+------------+
| id | cliente   | status   | criado_em  |
+----+-----------+----------+------------+
| .. | Bruno Lima| ABERTO   | 2024-06-15 |
| .. | Ana Souza | PAGO     | 2025-01-05 |
+----+-----------+----------+------------+
```