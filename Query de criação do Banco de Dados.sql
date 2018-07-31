--CRIAÇÃO DO BANCO DE DADOS

create database db_Biblioteca on primary
(
name= db_Biblioteca,
--CAMINHO ONDE SERÁ SALVO O ARQUIVO DE BANCO DE DADOS
filename='C:\Users\adailsonacj\GitHub\db_Biblioteca.MDF',
--TAMANHO DE CRIAÇÃO
size=6MB,
--TAMANHO MÁXIMO
maxsize=15MB,
--TAXA DE CRESCIMENTO
filegrowth=10%
)

--INFORMAÇÕES SOBRE BANCOS DE DADOS

SP_HELPDB

--CRIAÇÃO DE TABELAS

USE db_Biblioteca 

create table tbl_Livro( 
idLivro smallint primary key identity(100,1),
NomeLivro varchar (50) not null,
ISBN varchar (30) not null unique,
idAutor smallint not null,
DataPub datetime not null,
PrecoLivro money not null
) 

create table  tbl_autores(
idAutor smallint primary key,
nome varchar(50),
sobrenome varchar(60)
)

create table tbl_editoras(
id smallint primary key identity,
nome varchar(50) not null
)

--iNFORMA OS ÍNDICES, CHAVES E CAMPOS, ATRIBUTOS TIPOS DE ATRIBUTOS DE UMA TABELA

SP_HELP tbl_Livro

create table tbl_teste_identidade(
id smallint primary key identity,
valor smallint not null
)

insert into tbl_teste_identidade (valor) values (344)

select * from tbl_teste_identidade