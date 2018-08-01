--Criação da RULE
CREATE RULE rl_preco AS @VALOR > 10.00

--Vinculação da RULE a tabela Livros (Coluna PrecoLivro)

EXECUTE SP_BINDRULE /*Executando uma Stored Procedure (Vincula uma regra)*/ rl_preco , 'tbl_Livro.PrecoLivro' 

--Teste da RULE

UPDATE tbl_Livro SET PrecoLivro = 11 WHERE idLivro = 101

SELECT * FROM tbl_Livro

INSERT INTO tbl_Livro VALUES ('Meu primeiro Livro', 33320923439, '20091212', 10.01, 2,2)
