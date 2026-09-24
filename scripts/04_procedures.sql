-- Procedure para atualizar estoque após aprovação de pedido
CREATE OR REPLACE PROCEDURE sp_baixar_estoque(p_id_pedido INT)
LANGUAGE plpgsql
AS $$
DECLARE
    item RECORD;
BEGIN
    FOR item IN SELECT id_produto, quantidade FROM ItensPedido WHERE id_pedido = p_id_pedido
    LOOP
        UPDATE Produtos 
        SET estoque = estoque - item.quantidade
        WHERE id_produto = item.id_produto;
    END LOOP;
    
    UPDATE Pedidos SET status = 'Enviado' WHERE id_pedido = p_id_pedido;
END;
$$;