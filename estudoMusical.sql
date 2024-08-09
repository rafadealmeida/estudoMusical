CREATE DATABASE estudoMusical;

use estudoMusical;

CREATE TABLE usuario (
    id INTEGER PRIMARY KEY auto_increment,
    email varchar(255) NOT NULL,
    senha varchar(255) NOT NULL,
    instrumento varchar(80) NOT NULL,
    nivel varchar(80) NOT NULL,
    nome varchar(80) NOT NULL,
    UNIQUE (id, email)
);

CREATE TABLE diarioEstudo (
    id INTEGER PRIMARY KEY UNIQUE auto_increment,
    exercicio varchar(80) NOT NULL,
    nivelExercicio varchar(80) NOT NULL,
    duracao TIME NOT NULL,
    data DATE NOT NULL,
    status varchar(80) NOT NULL,
    instrumento varchar(80) NOT NULL,
    fk_usuario_id INTEGER 
);
 
ALTER TABLE diarioEstudo ADD CONSTRAINT FK_diarioEstudo_2
    FOREIGN KEY (fk_usuario_id)
    REFERENCES usuario (id)
    ON DELETE CASCADE;
    
	select * from usuario;
	select * from diarioEstudo;
    


    
    -- Inserindo usuários na tabela usuario
INSERT INTO usuario (email, senha, instrumento, nivel, nome) VALUES
('joao.silva@example.com', 'ef92b778bafe8d3d52a4c7ef2d7d069458f00d622fc0b5d7c5ea5c8e587572a3', 'Guitarra', 'Intermediário', 'João Silva'),
('maria.santos@example.com', 'b6d81c3f66de2a2a5a0d767f2833b46a3b67b23d0877b1653c6e504a5d437b69', 'Piano', 'Avançado', 'Maria Santos'),
('pedro.alves@example.com', '4d0d2f39c4f2924f4f8dff7e077d673b0d4b1f67349d2d84d57a17fcf4291b38', 'Bateria', 'Iniciante', 'Pedro Alves'),
('ana.pereira@example.com', '4b5c8f2d15a3cbf0470099174a5d99c3e09b79c3d0235f037b2368f9e046457d', 'Violino', 'Intermediário', 'Ana Pereira'),
('lucas.martins@example.com', '8f2dbb1d4340b54d3a59bbca75c76839fa4d8f2f2d2f7b84820e9d35f7074d5e', 'Saxofone', 'Avançado', 'Lucas Martins'),
('juliana.costa@example.com', '1d4c6a9c27b3e4f0b2b8b1d8a9c5ec9c3e5a9f6dbb6d14f1f1c7d849aa8b4a15', 'Cello', 'Iniciante', 'Juliana Costa'),
('roberto.mendes@example.com', 'a12c3d4e56789f0e12d34c56789ab0d2e3f4c5d67890e12f34567890ab1c23d4', 'Trompete', 'Avançado', 'Roberto Mendes'),
('camila.oliveira@example.com', 'bcd6ef8f9a0b1c2d34567890abcdef1234567890abc1234567890def12345678', 'Clarinete', 'Intermediário', 'Camila Oliveira');

-- Inserindo registros na tabela diarioEstudo
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
-- João Silva (id = 1)
('Arpejos', 'Intermediário', '00:45:00', '2024-08-10', 'Completo', 'Guitarra', 1),
('Improvisação Blues', 'Intermediário', '01:00:00', '2024-08-15', 'Em progresso', 'Guitarra', 1),

-- Maria Santos (id = 2)
('Estudo de Técnica', 'Avançado', '01:30:00', '2024-08-11', 'Completo', 'Piano', 2),
('Peças Clássicas', 'Avançado', '02:00:00', '2024-08-20', 'Em progresso', 'Piano', 2),

-- Pedro Alves (id = 3)
('Acompanhamento', 'Iniciante', '00:50:00', '2024-08-12', 'Completo', 'Bateria', 3),
('Ritmo de Samba', 'Iniciante', '00:40:00', '2024-08-17', 'Em progresso', 'Bateria', 3),

-- Ana Pereira (id = 4)
('Escalas de Arco', 'Intermediário', '01:00:00', '2024-08-13', 'Completo', 'Violino', 4),
('Estudo de Pizzicato', 'Intermediário', '01:30:00', '2024-08-18', 'Em progresso', 'Violino', 4),

-- Lucas Martins (id = 5)
('Técnica de Vibrato', 'Avançado', '01:45:00', '2024-08-14', 'Completo', 'Saxofone', 5),
('Estudo de Escalas Avançadas', 'Avançado', '02:15:00', '2024-08-21', 'Em progresso', 'Saxofone', 5),

-- Juliana Costa (id = 6)
('Técnica de Dedos', 'Iniciante', '01:00:00', '2024-08-16', 'Completo', 'Cello', 6),
('Leitura de Notas', 'Iniciante', '00:50:00', '2024-08-22', 'Em progresso', 'Cello', 6),

-- Roberto Mendes (id = 7)
('Aquecimento', 'Avançado', '01:30:00', '2024-08-23', 'Completo', 'Trompete', 7),
('Estudo de Escalas', 'Avançado', '01:45:00', '2024-08-24', 'Em progresso', 'Trompete', 7),

-- Camila Oliveira (id = 8)
('Escalas e Arpejos', 'Intermediário', '01:15:00', '2024-08-25', 'Completo', 'Clarinete', 8),
('Técnica de Respiração', 'Intermediário', '01:30:00', '2024-08-26', 'Em progresso', 'Clarinete', 8);

-- Inserindo novos usuários na tabela usuario
INSERT INTO usuario (email, senha, instrumento, nivel, nome) VALUES
-- Novos usuários para Guitarra
('pedro.silva@example.com', 'd2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2', 'Guitarra', 'Iniciante', 'Pedro Silva'),
('lucas.ribeiro@example.com', 'e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3e3', 'Guitarra', 'Avançado', 'Lucas Ribeiro'),

-- Novos usuários para Piano
('fernanda.lima@example.com', 'a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a4a', 'Piano', 'Intermediário', 'Fernanda Lima'),
('marcos.oliveira@example.com', 'b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b5b', 'Piano', 'Avançado', 'Marcos Oliveira'),

-- Novos usuários para Bateria
('carla.martins@example.com', 'c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6', 'Bateria', 'Iniciante', 'Carla Martins'),
('andre.santos@example.com', 'd7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d7d', 'Bateria', 'Intermediário', 'André Santos'),

-- Novos usuários para Violino
('isabela.costa@example.com', 'e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8e8', 'Violino', 'Intermediário', 'Isabela Costa'),
('rafael.gomes@example.com', 'f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9f9', 'Violino', 'Avançado', 'Rafael Gomes'),

-- Novos usuários para Saxofone
('livia.souza@example.com', '10a10a10a10a10a10a10a10a10a10a10a10a10a10a10a10a10a10a10a10a10a10', 'Saxofone', 'Iniciante', 'Lívia Souza'),
('bruno.almeida@example.com', '11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b11b', 'Saxofone', 'Avançado', 'Bruno Almeida'),

-- Novos usuários para Cello
('natalia.pereira23421@example.com', '12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c12c', 'Cello', 'Intermediário', 'Natália Pereira'),
('paulo.silveira@example.com', '13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d13d', 'Cello', 'Avançado', 'Paulo Silveira'),

-- Novos usuários para Trompete
('camila.martins@example.com', '14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e14e', 'Trompete', 'Iniciante', 'Camila Martins'),
('gustavo.rodrigues@example.com', '15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f15f', 'Trompete', 'Avançado', 'Gustavo Rodrigues'),

-- Novos usuários para Clarinete
('beatriz.rocha@example.com', '16g16g16g16g16g16g16g16g16g16g16g16g16g16g16g16g16g16g16g16g16g', 'Clarinete', 'Iniciante', 'Beatriz Rocha'),
('eduardo.faria@example.com', '17h17h17h17h17h17h17h17h17h17h17h17h17h17h17h17h17h17h17h17h17h', 'Clarinete', 'Avançado', 'Eduardo Faria');

-- Inserindo registros adicionais para novos usuários na tabela diarioEstudo

-- Pedro Silva (id = 9)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Aquecimento de Mãos', 'Iniciante', '00:40:00', '2024-08-30', 'Completo', 'Guitarra', 9),
('Técnica de Solo', 'Iniciante', '00:50:00', '2024-09-05', 'Em progresso', 'Guitarra', 9);

-- Lucas Ribeiro (id = 10)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Escalas Avançadas', 'Avançado', '01:00:00', '2024-08-31', 'Completo', 'Guitarra', 10),
('Improvisação Jazz', 'Avançado', '01:30:00', '2024-09-06', 'Em progresso', 'Guitarra', 10);

-- Fernanda Lima (id = 11)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Estudo de Acordes', 'Intermediário', '01:00:00', '2024-08-30', 'Completo', 'Piano', 11),
('Peças Contemporâneas', 'Intermediário', '01:30:00', '2024-09-07', 'Em progresso', 'Piano', 11);

-- Marcos Oliveira (id = 12)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Sonata em Lá Menor', 'Avançado', '02:00:00', '2024-08-31', 'Completo', 'Piano', 12),
('Estudo de Técnica Avançada', 'Avançado', '02:15:00', '2024-09-08', 'Em progresso', 'Piano', 12);

-- Carla Martins (id = 13)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Ritmos Básicos', 'Iniciante', '00:45:00', '2024-08-30', 'Completo', 'Bateria', 13),
('Prática de Coordenação', 'Iniciante', '00:50:00', '2024-09-06', 'Em progresso', 'Bateria', 13);

-- André Santos (id = 14)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Exercícios de Tempo', 'Intermediário', '01:00:00', '2024-08-31', 'Completo', 'Bateria', 14),
('Estudo de Ritmos Complexos', 'Intermediário', '01:20:00', '2024-09-07', 'Em progresso', 'Bateria', 14);

-- Isabela Costa (id = 15)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Escalas Rápidas', 'Intermediário', '01:10:00', '2024-08-31', 'Completo', 'Violino', 15),
('Estudo de Dinâmicas', 'Intermediário', '01:20:00', '2024-09-08', 'Em progresso', 'Violino', 15);

-- Rafael Gomes (id = 16)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Sonata Complexa', 'Avançado', '02:00:00', '2024-09-01', 'Completo', 'Violino', 16),
('Estudo de Técnica de Arco', 'Avançado', '02:30:00', '2024-09-09', 'Em progresso', 'Violino', 16);

-- Lívia Souza (id = 17)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Estudo de Escalas', 'Iniciante', '01:00:00', '2024-08-31', 'Completo', 'Saxofone', 17),
('Prática de Respiração', 'Iniciante', '01:10:00', '2024-09-06', 'Em progresso', 'Saxofone', 17);

-- Bruno Almeida (id = 18)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Improvisação Avançada', 'Avançado', '01:45:00', '2024-09-01', 'Completo', 'Saxofone', 18),
('Estudo de Técnica de Embocadura', 'Avançado', '02:00:00', '2024-09-10', 'Em progresso', 'Saxofone', 18);

-- Natália Pereira (id = 19)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Estudo de Arcos', 'Intermediário', '01:15:00', '2024-09-02', 'Completo', 'Cello', 19),
('Prática de Escalas', 'Intermediário', '01:30:00', '2024-09-09', 'Em progresso', 'Cello', 19);

-- Paulo Silveira (id = 20)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Sonata em Sol Maior', 'Avançado', '02:00:00', '2024-09-03', 'Completo', 'Cello', 20),
('Estudo de Técnica Avançada', 'Avançado', '02:15:00', '2024-09-10', 'Em progresso', 'Cello', 20);

-- Camila Martins (id = 21)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Exercícios de Técnica', 'Iniciante', '01:00:00', '2024-09-04', 'Completo', 'Trompete', 21),
('Escalas Básicas', 'Iniciante', '01:15:00', '2024-09-11', 'Em progresso', 'Trompete', 21);

-- Gustavo Rodrigues (id = 22)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Estudo de Articulação', 'Avançado', '01:30:00', '2024-09-05', 'Completo', 'Trompete', 22),
('Técnica de Respiração', 'Avançado', '01:45:00', '2024-09-12', 'Em progresso', 'Trompete', 22);

-- Beatriz Rocha (id = 23)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Escalas Simples', 'Iniciante', '00:50:00', '2024-09-06', 'Completo', 'Clarinete', 23),
('Técnica de Dedos', 'Iniciante', '01:00:00', '2024-09-13', 'Em progresso', 'Clarinete', 23);

-- Eduardo Faria (id = 24)
INSERT INTO diarioEstudo (exercicio, nivelExercicio, duracao, data, status, instrumento, fk_usuario_id) VALUES
('Estudo de Escalas Avançadas', 'Avançado', '01:45:00', '2024-09-07', 'Completo', 'Clarinete', 24),
('Improvisação Avançada', 'Avançado', '02:00:00', '2024-09-14', 'Em progresso', 'Clarinete', 24);




select d.exercicio , d.nivelExercicio, d.duracao, d.duracao, d.data ,d.status, d.instrumento ,u.nome , u.email, u.nivel from diarioEstudo as d join usuario as u on d.fk_usuario_id = u.id;

select * from usuario where instrumento = 'Piano';
select * from usuario where instrumento = 'Guitarra';




