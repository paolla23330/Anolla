--create schema loja

create table loja.Cliente
(
	IdCliente int primary key not null,
    Nome varchar (20) not null,
    RG char (10) not null,
    CEP char (8) not null, 
    Telefone char (11) not null,
    Endereco varchar (20) not null,
    Email varchar (20) not null,
    CPF char (11) not null
);
ALTER TABLE loja.Cliente
ADD DataNascimento DATE NOT NULL


create table loja.Pedido
(
    CodPedido int PRIMARY KEY not null,
    IdCliente int not null,
    foreign key (IdCliente) references loja.Cliente (IdCliente),
    CodFuncionario int not null,
    foreign key (CodFuncionario) references loja.Funcionario (CodFuncionario),
    DataRealizacao date not null
);

create table loja.Produto 
(
    CodProduto int PRIMARY KEY not null,
    NomeProduto varchar (30) not null,
    Preco int  not null,
    QntdEstoque int 
);

create table loja.Funcionario
(
    CodFuncionario INT primary key not null,
    NomeFuncionario varchar (30) not null,
    Cargo VARCHAR (20) not null,
    Salario int  not null,
    Vendas int  not null
);