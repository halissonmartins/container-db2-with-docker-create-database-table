CREATE SCHEMA SCTST;

SET SCHEMA SCTST;

DROP TABLE IF EXISTS client;

CREATE TABLE client (id INT NOT NULL, nome VARCHAR(255) NOT NULL, PRIMARY KEY (id));

INSERT INTO client (id, nome) VALUES (1, 'Maria Silva');
INSERT INTO client (id, nome) VALUES (2, 'João Souza');
INSERT INTO client (id, nome) VALUES (3, 'Ana Oliveira');
