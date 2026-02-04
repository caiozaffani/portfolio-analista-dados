# 📊 Portfólio – Analista de Dados

> Portfólio focado em **Análise de Dados e BI**, simulando um cenário real de uso corporativo. A solução cobre desde a **extração de dados em PostgreSQL**, passando pela **modelagem analítica**, até a **entrega de dashboards executivos no Power BI**, com foco em métricas de negócio e apoio à tomada de decisão.

---

## 👋 Sobre mim

Sou **Analista de Dados** com experiência prática na construção de dashboards no Power BI a partir de dados extraídos via SQL (PostgreSQL). Atuo transformando dados transacionais em **informações claras, acionáveis e orientadas ao negócio**, apoiando áreas como comercial e gestão.

**Principais competências:**

* SQL para análise e camada analítica
* Power BI (modelagem, DAX e visualização)
* Métricas de negócio
* Storytelling com dados

---

## 🧰 Stack de Tecnologias

* **Banco de dados:** PostgreSQL
* **Linguagem:** SQL
* **BI & Visualização:** Power BI
* **Versionamento:** Git & GitHub
* **Outros:** Excel, modelagem dimensional

---

## 📂 Projeto Principal — Performance de Vendas e Clientes

### 📌 Contexto

Este projeto simula um ambiente real de BI corporativo, no qual dados transacionais de vendas são armazenados em um banco PostgreSQL e consumidos pelo Power BI para geração de indicadores estratégicos.

### 🎯 Objetivo

Fornecer uma visão clara da performance comercial, permitindo que gestores acompanhem:

* Evolução de receita
* Crescimento ao longo do tempo
* Comportamento de clientes

---

### 🗄️ Modelo de Dados

O modelo segue o padrão **fato + dimensões**:

* **Fato:** vendas
* **Dimensões:** clientes, lojas, tempo

---

### 🧠 Camada Analítica (PostgreSQL)

A camada analítica é construída por meio de *views*, responsáveis por organizar e consolidar os dados para consumo no Power BI.

**Exemplo de view analítica:**

```sql
CREATE VIEW vw_vendas_analiticas AS
SELECT
    v.data_venda,
    l.nome_loja,
    p.categoria,
    c.segmento_cliente,
    COUNT(DISTINCT v.id_venda) AS quantidade_vendas,
    SUM(iv.valor_total) AS receita
FROM vendas v
JOIN itens_venda iv ON v.id_venda = iv.id_venda
JOIN produtos p ON iv.id_produto = p.id_produto
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN lojas l ON v.id_loja = l.id_loja
GROUP BY
    v.data_venda,
    l.nome_loja,
    p.categoria,
    c.segmento_cliente;
```

Essa abordagem facilita manutenção, melhora performance e separa responsabilidades entre banco e BI.

---

### 📊 Métricas de Negócio

As principais métricas disponibilizadas no dashboard incluem:

* **Receita total**
* **Crescimento mês a mês (MoM)**
* **Ticket médio**
* **Clientes ativos**

Todas as métricas foram definidas com foco em apoiar decisões estratégicas da liderança.

---

### 📈 Dashboard no Power BI

#### 🔹 Visão Executiva

* Receita total
* Crescimento MoM
* Ticket médio
* Clientes ativos

## 📂 Estrutura do Repositório

```
portfolio-analista-dados/
│
├── sql/
│   ├── 01_metricas.sql
│
├── powerbi/
│   └── screenshots/
│
└── README.md
```

---

## 📬 Contato

* LinkedIn: [https://linkedin.com/in/seu-perfil](https://www.linkedin.com/in/caiozaffani)
* GitHub: [https://github.com/seu-usuario](https://github.com/caiozaffani)

---

⭐ Este portfólio demonstra uma solução de BI ponta a ponta, com foco em análise de dados, métricas de negócio e suporte à tomada de decisão.
