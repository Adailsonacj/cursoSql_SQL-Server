--Comando Distinct seleciona um registro se este estiver duplicado

SELECT DISTINCT NomeLivro from tbl_Livro ORDER BY NomeLivro 

--Comando top traz os 'Ns' registros por número ou por porcentagem adicionando a palavra 'PERCENT'

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

--MAX <-- Tras o valor máximo da tabela entre parênteses

SELECT MAX(PrecoLivro) from tbl_Livro

--MIN <-- Trás o valor mais baixo

--AVG <-- Trás o valor médio da tabela entre parênteses

--SUM <-- soma o valor dos registros em determinada coluna

--BTWEEN

SELECT colunas FROM tabela WHERE coluna BETWEEN valor1 AND valor2

--LIKE <-- Determina se uma cadeia de caracteres específica corresponde a um padrã especificado.

--FULL JOIN

SELECT Li.NomeLivro, Li.idAutor, AU.nome
FROM tbl_Livro AS Li
FULL JOIN tbl_autores AS AU
ON Li.idAutor = AU.idAutor
--Para trazer todos os dados nulos acrescente a cláusula WHERE "nome_dado IS NULL"

--IN

SELECT * FROM tbl_Livro WHERE idAutor IN (1,2)