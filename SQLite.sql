SELECT
customer_id as MUSTERI_NO,
price/quantity AS URUN_BASINA_DUSEN_FIYAT 
FROM sales_data


SELECT 
customer_id AS musteri_no,
(quantity*price) AS carpma_islemi,
(quantity+price) AS toplama_islemi,
(quantity-price) AS cıkartma_islemi,
(quantity/price) AS bolme_islemi
FROM sales_data






SELECT * from sales_data
where shopping_mall = 'Kanyon' and quantity >= 3 and price <= 20 



SELECT * from sales_data
where shopping_mall != 'Kanyon' and quantity!= 3 and price > 20 







SELECT * from sales_data
WHERE invoice_date >= '2022-05-25' 











SELECT * FROM sales_data
WHERE category IN ('Books', 'Clothing', 'Technology' )



SELECT * FROM sales_data
WHERE category not IN ('Books', 'Clothing', 'Technology' )



SELECT * FROM sales_data
where category LIKE '%TECH%'



SELECT * FROM sales_data
where category NOT LIKE  '%C%'







SELECT * FROM sales_data
where 
invoice_date BETWEEN '2021-10-08' and '2022-02-16'
AND quantity >= 3
or shopping_mall = 'Kanyon'







SELECT  SUM(price) from sales_data



SELECT  SUM(price/quantity) AS toplam_urun_basına_dusen_fıyat from sales_data




SELECT AVG(price) from sales_data 


SELECT AVG(price/quantity) AS ortalama_urun_basına_dusen_fıyat FROM sales_data





SELECT COUNT(*) FROM sales_data


SELECT COUNT(customer_id) from sales_data


SELECT DISTINCT ( shopping_mall ) FROM sales_data



SELECT COUNT ( DISTINCT category ) from sales_data



SELECT category, COUNT (*) FROM sales_data
GROUP BY category



SELECT shopping_mall , COUNT ( quantity ) from sales_data
GROUP BY shopping_mall



SELECT category, COUNT (*) FROM sales_data
WHERE shopping_mall = 'Kanyon' group by category




SELECT category, COUNT (*) FROM sales_data
WHERE shopping_mall = 'Kanyon'
and invoice_date >= '2022-01-01'
group by category



select customer_id, invoice_date, category, price
from sales_data
order by invoice_date









