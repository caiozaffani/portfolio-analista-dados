# 📊 Portfólio – Analista de Dados

> Projeto de BI corporativo focado em **Análise de Dados e tomada de decisão**, utilizando **PostgreSQL como fonte de dados** e **Power BI para visualização**. O cenário representa um ambiente real de uso em produção, com dados anonimizados para fins de portfólio.

---

## 👋 Sobre mim

Sou **Analista de Dados** com experiência prática na construção de dashboards no Power BI a partir de dados extraídos diretamente via **SQL (PostgreSQL)**. Atuo transformando dados transacionais em **métricas claras e acionáveis**, apoiando áreas de negócio na tomada de decisão.

Tenho atuação sólida em:

* Escrita de SQL para extração e transformação de dados
* Regras de negócio aplicadas diretamente na camada de dados
* Modelagem e consumo de dados no Power BI
* Construção de KPIs e dashboards executivos

---

## 🧰 Tecnologias Utilizadas

* **Banco de Dados:** PostgreSQL
* **Linguagem:** SQL
* **BI & Visualização:** Power BI
* **Versionamento:** Git & GitHub

---

## 📂 Projeto Principal — Análise de Vendas, Clientes e Frequência

### 📌 Contexto do Projeto

Este projeto representa um **dashboard real de BI corporativo**, no qual dados de **clientes, vendas, frequência de compra e lojas** são extraídos de um banco PostgreSQL e utilizados no Power BI para acompanhamento da performance do negócio.

Os dados foram **anonimizados**, mantendo toda a lógica de extração, regras de negócio e modelagem utilizadas em ambiente produtivo.

---

### 🎯 Objetivo

Disponibilizar indicadores que permitam responder perguntas como:

* Quantos clientes estão ativos e com que frequência compram?
* Como evoluem as vendas ao longo do tempo?
* Qual o volume de vendas e itens por transação?
* Qual o desempenho por loja?

---

### 🗄️ Camada de Dados (PostgreSQL)

A extração dos dados é realizada exclusivamente via **queries SQL**, organizadas por contexto de negócio e consumidas diretamente pelo Power BI.

As consultas contemplam:

* Base cadastral de clientes
* Frequência de compra (apenas vendas válidas, conforme regra de negócio)
* Vendas consolidadas por período
* Quantidade de itens por venda, com **tratamento específico para produtos pesáveis**
* Cadastro de lojas

📁 Todas as queries utilizadas estão disponíveis na pasta `/sql`.

---

### 🧠 Regras de Negócio Aplicadas em SQL

Algumas regras relevantes implementadas diretamente na camada de dados:

* Consideração apenas de frequências associadas a vendas (`idtipofrequencia = 3`)
* Recorte temporal dinâmico (dados desde janeiro do ano anterior)
* Cálculo de quantidade de itens por venda considerando:
  * Produtos pesáveis abaixo de 1kg contabilizados como 1 item
  * Quantidades fracionadas tratadas como 1 item
  * Demais casos utilizando a quantidade inteira
* Uso de parâmetros `@RangeStart` e `@RangeEnd` para **atualização incremental no Power BI**

Essas regras garantem maior aderência dos indicadores à realidade do negócio.

---

### 📊 Métricas Disponibilizadas

* **Receita total de vendas**
* **Evolução de vendas ao longo do tempo**
* **Clientes ativos**
* **Frequência de compra**
* **Quantidade média de itens por venda**
* **Performance por loja**

As métricas foram definidas com foco em **monitoramento operacional e análise gerencial**.

---

### 📈 Dashboard no Power BI

O dashboard foi desenvolvido com foco em **clareza, simplicidade e uso executivo**, priorizando KPIs essenciais e análises que facilitem a leitura dos dados.

Estrutura do dashboard:

* **Visão Geral:** vendas, clientes e frequência
* **Análise por Loja:** comparativos e rankings
* **Análise Temporal:** evolução mensal das métricas

📁 As imagens do dashboard estão disponíveis na pasta `/powerbi`.

---

### 💡 Principais Insights (exemplos)

* Clientes com maior frequência concentram a maior parte do faturamento
* Existem variações significativas de desempenho entre lojas
* O volume médio de itens por venda varia conforme o período

---

## 📂 Estrutura do Repositório

```
portfolio-analista-dados/
│
├── sql/
│   └── selects_extracao.sql
│
├── powerbi/
│   └── screenshots/
│
└── README.md
```

---

## 📬 Contato

* LinkedIn: [https://linkedin.com/in/seu-perfil](https://www.linkedin.com/in/caiozaffani/)
* GitHub: [https://github.com/seu-usuario](https://github.com/caiozaffani)

---

⭐ Este portfólio demonstra a aplicação prática de SQL e Power BI em um cenário real de análise de dados, com foco em regras de negócio e suporte à tomada de decisão.
