USE db_Biblioteca

--Concatena��o de Strings
--� poss�vel concatenar Strings usando-se o operador de concatena��o "+"
--Sintaxe:
--     string1 | xoluna + string2 | coluna
--Exemplos:

SELECT nome + ' '+ sobrenome AS 'Nome Completo' FROM tbl_autores

SELECT 'Eu gosto do livro' + NomeLivro AS 'Meu Livro' FROM tbl_Livro WHERE idAutor = 2