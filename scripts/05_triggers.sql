-- Trigger para impedir inserção de itens sem estoque
CREATE OR REPLACE FUNCTION fn_valida_estoque()
RETURNS TRIGGER AS $$
DECLARE
    estoque_atual INT;
BEGIN
    SELECT estoque INTO estoque_atual FROM Produtos WHERE id_produto = NEW.id_produto;
    
    IF estoque_atual < NEW.quantidade THEN
        RAISE EXCEPTION 'Estoque insuficiente para o produto %', NEW.id_produto;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_valida_estoque
BEFORE INSERT ON ItensPedido
FOR EACH ROW
EXECUTE FUNCTION fn_valida_estoque();