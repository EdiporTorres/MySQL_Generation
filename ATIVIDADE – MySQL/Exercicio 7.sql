CREATE DATABASE IF NOT EXISTS db_cidade_das_carnes;
USE db_cidade_das_carnes;
CREATE TABLE IF NOT EXISTS tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes Bovinas', 'Produtos de carne de bovina'),
('Carnes Suínas', 'Produtos de carne de suína'),
('Carnes de Aves', 'Produtos de carne de aves'),
('Frutas', 'Diversas frutas frescas'),
('Verduras', 'Diversas verduras frescas');
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES
('Picanha Angus', 89.90, 'Picanha Angus selecionada', 1),
('Costela de Porco', 65.50, 'Costela suína temperada', 2),
('Peito de Frango', 35.00, 'Peito de frango desossado', 3),
('Maçã Gala', 4.99, 'Maçã gala fresca', 4),
('Alface Crespa', 2.50, 'Alface crespa orgânica', 5),
('Filé Mignon', 120.00, 'Filé mignon bovino', 1),
('Pêssego', 6.75, 'Pêssego fresco', 4),
('Brócolis', 3.80, 'Brócolis fresco', 5);
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;
SELECT p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome IN ('Carnes de Aves', 'Frutas');
