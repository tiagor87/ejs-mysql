CREATE TABLE livros (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao VARCHAR(255),
    preco FLOAT,
    PRIMARY KEY (id)
);

INSERT INTO livros (
    titulo, descricao, preco
) VALUES
(
    'Título 1', 'Descrição 1', 100
),
(
    'Título 2', 'Descrição 2', 200
),
(
    'Título 3', 'Descrição 3', 300
);
