# 💊 Sistema de Banco de Dados - Saúde & Vida

Este projeto foi desenvolvido como parte de um estudo prático em **modelagem e implementação de bancos de dados relacionais**.  
O objetivo é simular o controle de operações de uma **rede de farmácias** — abrangendo produtos, estoque, compras, vendas e finanças (contas a pagar e a receber).

---

## 🧱 Estrutura do Banco de Dados

O banco foi implementado em **MySQL** e contém as seguintes tabelas principais:

| Tabela | Descrição |
|--------|------------|
| 🏥 **Farmacia** | Armazena dados das unidades (nome, CNPJ, endereço, etc.) |
| 💊 **Produto** | Catálogo de medicamentos (descrição, fabricante, preços) |
| 📦 **Estoque** | Quantidade de cada produto em cada farmácia |
| 🧾 **Compra** | Registra as compras de produtos e fornecedores |
| 💰 **Venda** | Armazena as vendas realizadas e clientes |
| 📉 **ContaPagar** | Controle de despesas e contas pendentes |
| 📈 **ContaReceber** | Controle de receitas e valores a receber |

---

## 💾 Tecnologias Utilizadas

- 🗄️ **MySQL 8.0+**
- 💻 **Workbench / DBeaver**
- 🔤 **SQL Puro (DDL + DML + DQL)**
