# KMS Sales Data Analysis (SQL Project)
A SQL-based data analysis project on the KMS dataset, uncovering insights into sales, customers, and shipping performance to support business decision-making.

## Objective

To identify the product category with the highest total sales.


##  Project Overview

This project is based on a case study from a Data Analysis course, where SQL is used to analyze sales, customers, and shipping performance for KMS.

The objective is to answer key business questions and generate insights that support decision-making.

## Business Objectives
Case Scenario I
1. Which product category had the highest sales?
2. What are the Top 3 and Bottom 3 regions in terms of sales?
3. What were the total sales of appliances in Ontario?
4. Advise the management of KMS on what to do to increase the revenue from the bottom
10 customers
5. KMS incurred the most shipping cost using which shipping method?

Case Scenario II  
6. Who are the most valuable customers, and what products or services do they typically purchase?  
7. Which small business customer had the highest sales?  
8. Which Corporate Customer placed the most number of orders in 2009 - 2012?  
9. Which consumer customer was the most profitable one?  
10. Which customer returned items, and what segment do they belong to?  
11. If the delivery truck is the most economical but the slowest shipping method and Express Air is the fastest but the most expensive one, do you think the company appropriately spent shipping costs based on the Order Priority?   

## Tools & Technologies
- SQL Server Management Studio (SSMS)
-  SQL (T-SQL)
-  Dataset: kmscasestudy

## Dataset Description

The dataset contains:

- Customer information
- Product categories
- Sales and profit data
- Shipping details
- Order priority and returns

 ## Analysis & SQL Queries

 1. Product Category with Highest Sales  
SELECT TOP 1 
Product_Category,     
SUM(Sales) AS Total_Sales   
FROM dbo.kmscasestudy    
GROUP BY Product_Category    
ORDER BY Total_Sales DESC;
   <img width="409" height="148" alt="Screenshot 2026-04-05 212039" src="https://github.com/user-attachments/assets/796a3040-6765-4027-af06-4b4f8903e5f4" />  

The Technology category ranks as the top-performing category, with total sales of 5,984,281,820,000,000. This highlights its strong contribution to overall business revenue.

2. Top 3 and Bottom 3 Regions by Sales

SELECT TOP 3  
Region,  
SUM(Sales) AS Total_Sales  
FROM dbo.kmscasestudy  
GROUP BY Region  
ORDER BY Total_Sales DESC;  
<img width="341" height="154" alt="Screenshot 2026-04-05 213525" src="https://github.com/user-attachments/assets/d34b0250-e5f4-4df6-a641-3ece9a612ef4" />  


Bottom 3 Region by Sales  
SELECT TOP 3  
Region,  
SUM(Sales) AS Total_Sales  
FROM dbo.kmscasestudy  
GROUP BY Region  
ORDER BY Total_Sales ASC;  
<img width="417" height="160" alt="Screenshot 2026-04-05 213935" src="https://github.com/user-attachments/assets/b20ea98b-cc39-4175-8c06-998a01b51374" />
## Insight
- The top 3 regions (East, Ontario, and Prairie) bring in most of the revenue, showing strong sales performances in these areas.

- The bottom 3 regions (Nunavut, Northwest Territories, and Yukon) make the least sales. Suggesting potential opportunities to improve sales in these areas with marketing or promotions.

3. Total Sales of Appliances in Ontario

SELECT   
SUM(Sales) AS Total_Appliance_Sales   
FROM dbo.kmscasestudy  
WHERE Product_Sub_Category = 'Appliances'  
AND Province = 'Ontario';  
<img width="288" height="111" alt="Screenshot 2026-04-05 220423" src="https://github.com/user-attachments/assets/2a0cee46-b2a0-461f-8806-baeec0363b6c" />

The Appliances category has made $202,346.84 in sales, showing how much revenue this type of product has generated from Ontario.

4. Bottom 10 Customers (for Recommendation)

SELECT TOP 10   
Customer_Name,   
SUM(Sales) AS Total_Sales  
FROM dbo.kmscasestudy  
GROUP BY Customer_Name  
ORDER BY Total_Sales ASC;  
<img width="435" height="351" alt="Screenshot 2026-04-05 223445" src="https://github.com/user-attachments/assets/62a6199f-b058-4b51-8945-f07dc8be4966" /> 

## Recommendation:
Give discounts or rewards – Offer special deals or points to keep customers coming back.
Focus on the right customers – Run ads or messages for people who are most likely to buy.
Connect better with customers – Talk to them more and make them feel valued.


5. Shipping Method with Highest Cost
    
SELECT TOP 1   
Ship_Mode,   
SUM(Shipping_Cost) AS Total_Shipping_Cost  
FROM dbo.kmscasestudy  
GROUP BY Ship_Mode  
ORDER BY Total_Shipping_Cost DESC;  

<img width="331" height="88" alt="Screenshot 2026-04-05 225906" src="https://github.com/user-attachments/assets/ebd5c1f9-f5ea-4812-973f-5831b26a3418" />

Delivery Truck has the highest shipping cost, totaling $519,719,400,000,000. This shows that it is the most expensive shipping method used by the company and contributes the most to overall shipping expenses.

## Case Scenario II

6. Most Valuable Customers and Product They Purchase  

SELECT  TOP 10   
Customer_Name,  
Product_Category,  
SUM(Sales) AS Total_Sales  
FROM dbo.kmscasestudy  
GROUP BY Customer_Name, Product_Category  
ORDER BY Total_Sales DESC;  
<img width="515" height="311" alt="Screenshot 2026-04-05 231114" src="https://github.com/user-attachments/assets/6d71a537-c3a5-4ea9-9f3d-736da859b3d4" />  

## Insight 
- The most valuable customers are those who generate the highest sales and purchase frequently. They mainly buy top-selling products, which drive most of the company’s revenue.
= Customer buying patterns reveal the products that perform best. By targeting these high-value customers and maintaining the availability of their preferred products, the company can boost revenue, strengthen customer loyalty, and support business growth.

7. Small Business Customer with Highest Sales  

SELECT TOP 1  
Customer_Name,  
SUM(Sales) AS Total_Sales  
FROM dbo.kmscasestudy  
WHERE Customer_Segment = 'Small Business'  
GROUP BY Customer_Name   
ORDER BY Total_Sales DESC;  
<img width="352" height="93" alt="Screenshot 2026-04-05 234148" src="https://github.com/user-attachments/assets/c8e7c5f9-fd96-4cf2-886c-686c23039b79" />

Dennis Kane ranks as the highest-performing small business customer, generating total sales of $759,675,905,000,000. This highlights his significant contribution to the company revenue.

8. Top Corporate Customer (2009–2012)

SELECT TOP 1  
Customer_Name,   
COUNT(Order_ID) AS Total_Orders  
FROM dbo.kmscasestudy  
WHERE Customer_Segment = 'Corporate'  
AND YEAR(Order_Date) BETWEEN 2009 AND 2012  
GROUP BY Customer_Name  
ORDER BY Total_Orders DESC;   

<img width="300" height="88" alt="Screenshot 2026-04-05 235917" src="https://github.com/user-attachments/assets/35b5a09d-f4ca-4aac-8f29-5b04b102bbf4" />

Adam Hart ranks as the top corporate customer from 2009 to 2012, with 27 orders.
This indicates that he was a highly engaged customer during this period, contributing significantly to the company’s corporate sales.

9. Most Profitable Consumer Customer

SELECT TOP 1  
Customer_Name,  
SUM(Profit) AS Total_Profit  
FROM dbo.kmscasestudy  
WHERE Customer_Segment = 'Consumer'  
GROUP BY Customer_Name  
ORDER BY Total_Profit DESC;  
<img width="360" height="94" alt="Screenshot 2026-04-06 005718" src="https://github.com/user-attachments/assets/dc1f3ffb-140e-4bec-ad33-34f9045ee6f2" />

Emily Phan is the top consumer customer, with total sales of $340,054,400,000,000, making her a key contributor to the company’s revenue.

10. Customers Who Returned Items  

SELECT Top 10  
Customer_Name,  
Customer_Segment  
FROM dbo.kmscasestudy  
WHERE  Order_Status = 'Returned';   

<img width="356" height="308" alt="Screenshot 2026-04-06 010753" src="https://github.com/user-attachments/assets/45ea2fad-5fa4-4bfd-bcbc-dfaa9cbc3a62" />
 ## Insight
Some customers returned items, which may indicate issues with product quality, delivery, or customer satisfaction. Analyzing these returns helps the company identify patterns, such as:   

- Products frequently returned – shows which items may need quality checks or better descriptions.
- Customer behavior – identifies customers who return products often, which may require special attention or communication.
- Shipping or handling issues – frequent returns could highlight problems in delivery or packaging.  

By reviewing returned items, the company can improve product quality, enhance customer satisfaction, and reduce future returns, ultimately protecting revenue and maintaining trust with customers.

11. Shipping Cost vs Order Priority (Analysis Query)

SELECT  
Order_Priority,  
Ship_Mode,  
COUNT(*) AS Total_Orders,  
SUM(Shipping_Cost) AS Total_Shipping_Cost  
FROM dbo.kmscasestudy  
GROUP BY Order_Priority, Ship_Mode  
ORDER BY Order_Priority, Total_Shipping_Cost DESC;   
<img width="537" height="326" alt="Screenshot 2026-04-06 011739" src="https://github.com/user-attachments/assets/d83edfd7-026a-480a-8140-7981ca3c2cf8" />
<img width="549" height="122" alt="Screenshot 2026-04-06 011818" src="https://github.com/user-attachments/assets/190e2c53-9036-4cfe-8c2a-c2dc1e23094c" />

Shipping costs vary with order priority. High-priority orders require faster delivery and higher costs, while standard orders are cheaper but slower. 

Studying this helps the company

- Optimize shipping methods – ensure costs are reasonable for the delivery speed.
- Manage expenses – avoid overspending on shipping for low-priority orders.
- Improve customer satisfaction – balance cost with delivery time based on customer needs.

By understanding shipping cost patterns relative to order priority, the company can control logistics expenses while meeting customer expectations efficiently.




