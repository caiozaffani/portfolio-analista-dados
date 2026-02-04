-- =====================================================
-- BASE DE CLIENTES
-- =====================================================

SELECT
  id AS id_cliente,
  cpfcliente,
  datacadastro,
  dataprecadastro,
  datacadastroincompleto,
  CASE
    WHEN datacadastro IS NOT NULL THEN 'Cadastrado'
    WHEN dataprecadastro IS NOT NULL THEN 'Pré-cadastro'
    ELSE 'Cadastro incompleto'
  END AS status_cadastro
FROM cliente;

-- =====================================================
-- FREQUÊNCIA DE COMPRA (APENAS VENDAS)
-- =====================================================

SELECT
  f.datafrequencia,
  f.idcliente,
  l.nome AS nome_loja,
  f.valor AS valor_venda
FROM frequencia f
JOIN loja l ON f.idloja = l.id
WHERE f.idtipofrequencia = 3
  AND f.datafrequencia >= date_trunc('year', CURRENT_DATE - INTERVAL '1 year');

-- =====================================================
-- ITENS DE VENDA
-- =====================================================

SELECT
  iv.idvenda,
  SUM(
    CASE
      WHEN iv.quantidade < 1 THEN 1
      WHEN iv.quantidade <> FLOOR(iv.quantidade) THEN 1
      ELSE FLOOR(iv.quantidade)
    END
  ) AS quantidade_itens,
  v.datagravacao
FROM itemvenda iv
JOIN venda v ON iv.idvenda = v.id
WHERE v.datagravacao >= @RangeStart
  AND v.datagravacao < @RangeEnd
GROUP BY iv.idvenda, v.datagravacao;

-- =====================================================
-- BASE DE LOJAS
-- =====================================================

SELECT
  id AS id_loja,
  nome AS nome_loja,
  datagravacao
FROM loja;

-- =====================================================
-- BASE DE VENDAS
-- =====================================================

SELECT
  v.id AS id_venda,
  v.idloja AS id_loja,
  l.nome AS nome_loja,
  v.cpf AS cpf_cliente,
  v.data AS data_venda,
  v.valor AS valor_venda,
  v.idtipovenda
FROM venda v
JOIN loja l ON v.idloja = l.id
WHERE v.data >= date_trunc('year', CURRENT_DATE - INTERVAL '1 year');
