CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE IF NOT EXISTS tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    ingredientes TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas com sabores tradicionais salgados'),
('Doce', 'Pizzas com sabores doces');
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES
('Margherita', 42.90, 'Molho de tomate, mussarela e manjericão fresco', 1),
('Calabresa', 39.90, 'Molho de tomate, mussarela, calabresa fatiada e cebola', 1),
('Quatro Queijos', 49.90, 'Molho de tomate, mussarela, provolone, parmesão e gorgonzola', 1),
('Brigadeiro', 35.00, 'Chocolate ao leite, granulado e leite condensado', 2),
('Romeu e Julieta', 38.50, 'Goiabada cascão, queijo mussarela e leite condensado', 2),
('Chocolate com Morango', 45.00, 'Chocolate ao leite, morangos frescos e leite condensado', 2),
('Portuguesa', 42.00, 'Molho de tomate, mussarela, presunto, ovos, ervilha, cebola e azeitonas', 1),
('Frango com Catupiry', 44.90, 'Molho de tomate, mussarela, frango desfiado e catupiry', 1);
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';
SELECT p.nome AS pizza, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;
SELECT p.nome AS pizza, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Doce';



