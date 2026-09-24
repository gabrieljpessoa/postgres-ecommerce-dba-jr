-- Carga inicial de dados para testes

INSERT INTO Clientes (nome, email, telefone) VALUES 
('João Silva', 'joao@email.com', '11999999999'),
('Maria Souza', 'maria@email.com', '21988888888');

INSERT INTO Usuarios (login, senha_hash, role) VALUES 
('admin', 'hash_ficticia_123', 'admin'),
('vendedor1', 'hash_ficticia_456', 'vendas');

INSERT INTO Produtos (nome, categoria, preco, estoque) VALUES 
('Notebook Pro', 'Eletrônicos', 4500.00, 10),
('Mouse Sem Fio', 'Acessórios', 150.00, 50);

INSERT INTO Pedidos (id_cliente, id_usuario, status) VALUES 
(1, 2, 'Processando');

INSERT INTO ItensPedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES 
(1, 1, 1, 4500.00),
(1, 2, 1, 150.00);

INSERT INTO Pagamentos (id_pedido, valor, metodo, status_pagamento) VALUES 
(1, 4650.00, 'Cartão de Crédito', 'Aprovado');