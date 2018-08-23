USE db_Loja

CREATE TABLE [dbo].Compras(
	idCompra [smallint] primary key identity NOT NULL,
	codCliente smallint not null,
	codProduto int not NULL
	CONSTRAINT fk_id_cliente FOREIGN KEY (codCliente)
	REFERENCES Clientes,
	CONSTRAINT fk_id_produdo FOREIGN KEY (codProduto)
	REFERENCES produto
) 

alter table Compras
alter column Quantidade smallint not null

select * from Clientes
select * from produto
select * from Compras

alter table produto
add Quantidade smallint

insert into produto values('Tênis ADIDAs Running', 350, 'da ADIDAS', 1)
insert into produto values('Tênis Olimpikus rush', 420, 'da olimpikus', 1)
insert into produto values('Sapatênis OLK', 220, 'da OLK', 1)
insert into produto values('Sandália Havaiana', 35, 'da Habaianas', 1)
insert into produto values('Sapatênis Kildare', 350, 'da KILDARE', 1)

insert into Compras values (1, 3, 3)
insert into Compras values (2,1,1)
insert into Compras values (3,5,2)

SELECT resultado.Cliente, SUM(resultado.Total) AS Total
FROM
(SELECT cl.nome AS Cliente, pr.valor * cp.Quantidade AS Total
FROM Clientes AS cl 
INNER JOIN Compras AS cp
ON  cl.idCliente = cp.codCliente
left join produto AS pr
ON pr.id = cp.codProduto) AS resultado
GROUP BY resultado.Cliente

