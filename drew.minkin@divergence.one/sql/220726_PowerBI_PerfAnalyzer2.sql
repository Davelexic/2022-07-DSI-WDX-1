SELECT 
TOP (1000001) *
FROM 
(

SELECT [t0].[CountryRegionCode] AS [c1],SUM([t1].[TotalDue])
 AS [a0]
FROM 
((
select [$Outer].[SalesOrderID] as [SalesOrderID],
    [$Outer].[RevisionNumber] as [RevisionNumber],
    [$Outer].[OrderDate] as [OrderDate],
    [$Outer].[DueDate] as [DueDate],
    [$Outer].[ShipDate] as [ShipDate],
    [$Outer].[Status] as [Status],
    [$Outer].[OnlineOrderFlag] as [OnlineOrderFlag],
    [$Outer].[SalesOrderNumber] as [SalesOrderNumber],
    [$Outer].[PurchaseOrderNumber] as [PurchaseOrderNumber],
    [$Outer].[AccountNumber] as [AccountNumber],
    [$Outer].[CustomerID] as [CustomerID],
    [$Outer].[SalesPersonID] as [SalesPersonID],
    [$Outer].[TerritoryID2] as [TerritoryID],
    [$Outer].[BillToAddressID] as [BillToAddressID],
    [$Outer].[ShipToAddressID] as [ShipToAddressID],
    [$Outer].[ShipMethodID] as [ShipMethodID],
    [$Outer].[CreditCardID] as [CreditCardID],
    [$Outer].[CreditCardApprovalCode] as [CreditCardApprovalCode],
    [$Outer].[CurrencyRateID] as [CurrencyRateID],
    [$Outer].[SubTotal] as [SubTotal],
    [$Outer].[TaxAmt] as [TaxAmt],
    [$Outer].[Freight] as [Freight],
    [$Outer].[TotalDue] as [TotalDue],
    [$Outer].[Comment] as [Comment],
    [$Outer].[rowguid2] as [rowguid],
    [$Outer].[ModifiedDate2] as [ModifiedDate],
    [$Inner].[CountryRegionCode] as [Sales.SalesTerritory.CountryRegionCode]
from 
(
    select [_].[SalesOrderID] as [SalesOrderID],
        [_].[RevisionNumber] as [RevisionNumber],
        [_].[OrderDate] as [OrderDate],
        [_].[DueDate] as [DueDate],
        [_].[ShipDate] as [ShipDate],
        [_].[Status] as [Status],
        [_].[OnlineOrderFlag] as [OnlineOrderFlag],
        [_].[SalesOrderNumber] as [SalesOrderNumber],
        [_].[PurchaseOrderNumber] as [PurchaseOrderNumber],
        [_].[AccountNumber] as [AccountNumber],
        [_].[CustomerID] as [CustomerID],
        [_].[SalesPersonID] as [SalesPersonID],
        [_].[TerritoryID] as [TerritoryID2],
        [_].[BillToAddressID] as [BillToAddressID],
        [_].[ShipToAddressID] as [ShipToAddressID],
        [_].[ShipMethodID] as [ShipMethodID],
        [_].[CreditCardID] as [CreditCardID],
        [_].[CreditCardApprovalCode] as [CreditCardApprovalCode],
        [_].[CurrencyRateID] as [CurrencyRateID],
        [_].[SubTotal] as [SubTotal],
        [_].[TaxAmt] as [TaxAmt],
        [_].[Freight] as [Freight],
        [_].[TotalDue] as [TotalDue],
        [_].[Comment] as [Comment],
        [_].[rowguid] as [rowguid2],
        [_].[ModifiedDate] as [ModifiedDate2]
    from [Sales].[SalesOrderHeader] as [_]
) as [$Outer]
left outer join 
(
    select [TerritoryID],
        [CountryRegionCode]
    from [Sales].[SalesTerritory] as [$Table]
) as [$Inner] on ([$Outer].[TerritoryID2] = [$Inner].[TerritoryID])
) AS [t1]

 LEFT OUTER JOIN 

(
select [$Table].[CountryRegionCode] as [CountryRegionCode],
    [$Table].[Name] as [Name],
    [$Table].[ModifiedDate] as [ModifiedDate]
from [Person].[CountryRegion] as [$Table]
) AS [t0] on 
(
[t1].[Sales.SalesTerritory.CountryRegionCode] = [t0].[CountryRegionCode]
)
)

GROUP BY [t0].[CountryRegionCode]
)
 AS [MainTable]
WHERE 
(

NOT(
(
[a0] IS NULL 
)
)

)
 
