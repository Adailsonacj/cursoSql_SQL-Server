--Comando Distinct seleciona um registro se este estiver duplicado

SELECT DISTINCT NomeLivro from tbl_Livro ORDER BY NomeLivro 

--Comando top traz os 'Ns' registros por n�mero ou por porcentagem adicionando a palavra 'PERCENT'

SELECT TOP 50 PERCENT NomeLivro from tbl_Livro ORDER BY NomeLivro

--Alias AS

SELECT NomeLivro AS Livro FROM tbl_Livro

--Operador UNION

SELECT NomeLivro FROM tbl_Livro
UNION ALL
SELECT nome FROM tbl_autores

--SELECT INTO

SELECT * INTO tbl_log_autores FROM tbl_autores

--COUNT

SELECT COUNT(nome) From tbl_autores

--MAX <-- Tras o valor m�ximo da tabela entre par�nteses

SELECT MAX(PrecoLivro) from tbl_Livro

--MIN <-- Tr�s o valor mais baixo

--AVG <-- Tr�s o valor m�dio da tabela entre par�nteses

--SUM <-- soma o valor dos registros em determinada coluna

--BTWEEN

SELECT colunas FROM tabela WHERE coluna BETWEEN valor1 AND valor2

--LIKE <-- Determina se uma cadeia de caracteres espec�fica corresponde a um padr� especificado.

--FULL JOIN

SELECT Li.NomeLivro, Li.idAutor, AU.nome
FROM tbl_Livro AS Li
FULL JOIN tbl_autores AS AU
ON Li.idAutor = AU.idAutor
--Para trazer todos os dados nulos acrescente a cl�usula WHERE "nome_dado IS NULL"

--IN

SELECT * FROM tbl_Livro WHERE idAutor IN (1,2)