
-- Consulta para listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço) para cada produto. Ordene o resultado pelo valor total de vendas em ordem decrescente.

SELECT 
    produto,
    categoria,
    SUM(quantidade * preco) AS total_vendas -- Estou calculando o total de vendas utilizando quantidade de produtos vendidos multiplicado pelo seu respectivo preço
FROM 
    vendas
GROUP BY 
    produto, categoria -- Estou agrupando os resultados para depois calcular a soma total
ORDER BY 
    total_vendas DESC; -- Ordem decrescente para visualizar a maior venda no topo

-- Consulta para identificar os produtos que venderam menos no mês de junho de 2023.

SELECT 
    produto,
    categoria,
    SUM(quantidade * preco) AS total_vendas_junho
FROM 
    vendas
WHERE -- Limitar para o mês de junho
    DATEPART(MONTH, Data) = 6
    AND DATEPART(YEAR, Data) = 2023
GROUP BY 
    produto, categoria
ORDER BY 
    total_vendas_junho ASC; -- Ordem crescente para visualizar a maior venda no topo

