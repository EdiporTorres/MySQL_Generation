CREATE DATABASE IF NOT EXISTS db_curso_da_minha_vida;
USE db_curso_da_minha_vida;
CREATE TABLE IF NOT EXISTS tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    carga_horaria INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias (nome, descricao) VALUES
('Desenvolvimento Web', 'Cursos de programação para web'),
('Marketing Digital', 'Cursos sobre estratégias de marketing online'),
('Gestão de Negócios', 'Cursos de administração e gestão empresarial'),
('Design Gráfico', 'Cursos de criação e edição de imagens e layouts'),
('Data Science', 'Cursos sobre análise de dados e machine learning');
INSERT INTO tb_cursos (nome, preco, descricao, carga_horaria, id_categoria) VALUES
('Curso de JavaScript Avançado', 799.00, 'Aprenda JavaScript avançado para desenvolvimento web', 40, 1),
('Curso de Marketing Digital Completo', 899.00, 'Curso abrangente sobre estratégias de marketing digital', 60, 2),
('Curso de Gestão de Projetos', 699.00, 'Aprenda técnicas e práticas de gestão de projetos', 50, 3),
('Curso de Adobe Photoshop', 599.00, 'Domine as técnicas avançadas de edição de imagens', 30, 4),
('Curso de Python para Data Science', 999.00, 'Introdução ao Python aplicado à ciência de dados', 45, 5),
('Curso de Java Básico', 499.00, 'Fundamentos básicos de programação em Java', 35, 1),
('Curso de SEO e Analytics', 799.00, 'Otimização de sites e análise de dados de tráfego', 40, 2),
('Curso de Machine Learning', 1099.00, 'Aprenda conceitos avançados de machine learning', 55, 5);
SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';
SELECT c.nome AS curso, c.preco, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;
SELECT c.nome AS curso, c.preco, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome = 'Desenvolvimento Web';
