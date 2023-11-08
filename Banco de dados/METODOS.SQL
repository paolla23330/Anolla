--VIEW; para facilitar consultas

CREATE or ALTER VIEW loja.quantidadeProdutos
AS
	SELECT
   Produto.NomeProduto, Produto.QntdEstoque
    FROM
        loja.Produto;
select * from quantidadeProdutos


--INDICE; seria como um "sumário"; leitura de menos registros; facilita buscas
CREATE INDEX idDoCliente
on loja.Cliente (IdCliente)

--Storage procedure
CREATE OR ALTER PROCEDURE loja.spContaPedidos
    @CodPedido int,
   @quantos int OUTPUT
AS  BEGIN
    SELECT @quantos = COUNT(*) from loja.Pedido
    WHERE CodPedido = @CodPedido
   END


--TRIGGER; gatilho que é disparado automaticamente quando acontecer um evento no BD

--CREATE TRIGGER 
CREATE TRIGGER loja.idadeMinima
ON loja.Cliente
FOR INSERT, UPDATE AS
BEGIN
    DECLARE @idadeEmAnos INT, @dataAtual DATE, @dataNascimento date;
    SET @idadeEmAnos = DATEDIFF ( year,@dataAtual,@dataNascimento)
    IF @idadeEmAnos < 18 
        RAISERROR('Idade insuficiente, peça para um responsável realizar a compra', 15, 1);
END;     



--    declare @dataNascimento DATE, @dataAtual DATE
--    SET @dataAtual =  GETDATE()
--    SELECT @dataNascimento = dataNascimento FROM include 
--    DATEDIFF ( year,@dataAtual,@dataNascimento)
--    if YEAR() < 18
--    begin
--print 'Você não tem idade suficiente para realizar a compra, peça a um responsável';
--RAISERROR('Idade insuficiente', 15, 1);
--END
--else
--print 'Compra feita'
-- END;

   
    