/*
Permite que as aplica��es de bancos de dados encontrem os dados mais rapidamente, sem ter de ler a tabela toda.
*Apenas crie �ndices em tabelas que recebam muitas consultas; tabelas indexadas levam mais tempo para serem
atualizadas.
*/

CREATE INDEX nome_indice ON nome_tabela (nome_coluna)

USE db_Biblioteca

SELECT * FROM tbl_Livro

CREATE INDEX indice_nome_livro ON tbl_Livro (NomeLivro)

