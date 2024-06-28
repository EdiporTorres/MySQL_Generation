CREATE DATABASE IF NOT EXISTS db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
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
('Medicamentos', 'Produtos relacionados a medicamentos e saúde'),
('Cosméticos', 'Produtos de cuidados pessoais e estéticos'),
('Higiene', 'Produtos de higiene pessoal'),
('Dermocosméticos', 'Produtos que combinam propriedades terapêuticas e cosméticas'),
('Nutrição', 'Suplementos e produtos nutricionais');
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES
('Dipirona 500mg', 8.50, 'Analgésico e antitérmico', 1),
('Shampoo Anticaspa', 15.90, 'Limpeza profunda e combate à caspa', 3),
('Creme Facial Hidratante', 32.00, 'Hidratação intensa para todos os tipos de pele', 2),
('Sabonete Líquido Neutro', 9.99, 'Limpeza suave para a pele', 3),
('Vitamina C 1000mg', 45.50, 'Suplemento antioxidante', 5),
('Protetor Solar FPS 50', 55.00, 'Proteção solar contra raios UVA e UVB', 4),
('Colírio Lubrificante', 12.75, 'Alívio para olhos secos e irritados', 1),
('Loção Hidratante Corporal', 28.50, 'Hidratação duradoura para o corpo', 2);
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;
SELECT p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Cosméticos';
