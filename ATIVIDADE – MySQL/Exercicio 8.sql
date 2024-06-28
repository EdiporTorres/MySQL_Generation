CREATE DATABASE IF NOT EXISTS db_construindo_vidas;
USE db_construindo_vidas;
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
('Ferramentas', 'Ferramentas diversas para construção'),
('Elétrica', 'Materiais elétricos para instalações'),
('Hidráulica', 'Tubos, conexões e materiais hidráulicos'),
('Revestimentos', 'Revestimentos para pisos e paredes'),
('Ferragens', 'Ferragens e acessórios para construção');
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES
('Furadeira Bosch', 299.90, 'Furadeira elétrica de alto desempenho', 1),
('Lâmpada LED 12W', 18.50, 'Lâmpada LED econômica', 2),
('Torneira Deca', 120.00, 'Torneira de cozinha com design moderno', 3),
('Porcelanato 60x60', 89.99, 'Porcelanato acetinado para pisos', 4),
('Parafuso Zincado 3/8', 1.25, 'Parafuso zincado para uso geral', 5),
('Serra Circular Makita', 599.00, 'Serra circular profissional', 1),
('Tinta Acrílica Suvinil 18L', 189.90, 'Tinta acrílica para pintura interna', 4),
('Registro de Pressão Tigre', 68.75, 'Registro de pressão para água quente e fria', 3);
SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;
SELECT p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Hidráulica';
