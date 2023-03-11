CREATE TABLE Clientes (codcliente integer NOT null PRIMARY KEY, nome varchar(50), email varchar(40), telefone integer(20));

DROP TABLE Clientes;

insert into clientes values (1,'Elvis','elvis@gmail.com','32332334', NULL), (2,'Cristiano','cristiano@gmail.com','32332334', NULL),  (3,'Eduardo','eduardo@gmail.com','32332334', NULL), (4,'Carlos','carlos@gmail.com','32332334', NULL);

INSERT INTO Clientes values ((SELECT MAX(codcliente)+1 from Clientes),'Carlos','carlos@gmail.com','32332334', NULL);

SELECT * FROM Clientes c ;

ALTER TABLE Clientes ADD COLUMN renda_mensal REAL;

ALTER TABLE Clientes DROP COLUMN renda_mensal;

ALTER TABLE Clientes ADD COLUMN renda_mensal REAL DEFAULT 0.0;

UPDATE Clientes SET renda_mensal = 3500.20 WHERE  nome = "Elvis";

UPDATE Clientes SET renda_mensal = 2500.0 WHERE  codcliente = 3;