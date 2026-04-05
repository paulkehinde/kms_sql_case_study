SELECT * 
FROM dbo.Orderstatus;
SELECT * FROM dbo.kmscasestudy;
SELECT * FROM dbo.orderstatus;

SELECT 
    k.[Customer_Name],
    k.[Sales],
    k.[Order_ID],
    o.[Status]
FROM dbo.[kmscasestudy] k
LEFT JOIN dbo.[orderstatus] o
    ON k.[Order_ID] = o.[Order_ID];


    SELECT TOP 10 *
FROM [dbo].[kmscasestudy] AS k
LEFT JOIN [dbo].[orderstatus] AS o
    ON k.[Order_ID] = o.[Order_ID];
    
    ALTER TABLE [dbo].[kmscasestudy]
ADD [Oder_Status] VARCHAR(50);

UPDATE k
SET k.[Order_Status] = o.[Status]
FROM [dbo].[kmscasestudy] AS k
LEFT JOIN [dbo].[orderstatus] AS o
    ON k.[Order_ID] = o.[Order_ID];

    SELECT TOP 10 *
FROM dbo.kmscasestudy;