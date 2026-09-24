-- View para relatórios de vendas e administração
CREATE OR REPLACE VIEW vw_resumo_pedidos AS
SELECT 
    p.id_pedido,
    c.nome AS cliente,
    p.data_pedido,
    p.status AS status_pedido,
    pg.metodo AS metodo_pagamento,
    pg.valor AS valor_total
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
LEFT JOIN Pagamentos pg ON p.id_pedido = pg.id_pedido;