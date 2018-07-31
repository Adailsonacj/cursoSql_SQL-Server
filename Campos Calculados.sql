--Campos calculados
USE db_Biblioteca

CREATE TABLE Produtos(
codProduto SMALLINT,
NomeProduto VARCHAR(20),
Preco MONEY,
Quant SMALLINT,
Total AS (Preco*Quant)
)

INSERT INTO Produtos VALUES (1, 'Mouse Logitech', 15.40, 2)
INSERT INTO Produtos VALUES (2, 'Teclado', 21.23, 3)
INSERT INTO Produtos VALUES (3, 'Fones', 15.93, 4)
INSERT INTO Produtos VALUES (4, 'Pendrive', 22.60, 56)
INSERT INTO Produtos VALUES (4, 'HDs', 22.60, 222)
INSERT INTO Produtos VALUES (4, 'SD card', 22.60, 12)
INSERT INTO Produtos VALUES (4, 'DVD-r', 22.60, 12)

SELECT * FROM Produtos
SELECT SUM(Total) FROM Produtos