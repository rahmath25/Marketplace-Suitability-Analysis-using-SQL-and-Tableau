USE magist;

/* What categories of tech products does Magist have? */
select product_category_name_english, product_category_name
from product_category_name_translation;

/* how many distint product_category */
select count(distinct product_category_name)
from products;

/* how many tech_product_category */
select count(distinct product_category_name) as count_tech_product_category
from products
where product_category_name IN ( "audio", "automotivo", "cds_dvds_musicals", "climatizacao", "electronics", "informatica_accessoire", "dvds_blu_ray", "eletrodomesticos", "eletrodomesticos_2", "eletroportaties", "pc_gamer", "pcs", "portateis_casa_forno_e_cafe", "portateis_cozinha_e_preparadores_de_alimentos");


/* How many products of these tech categories have been sold (within the time window of the database snapshot)? What percentage does that represent from the overall number of products sold? */
select count(product_id) as total_no_products_sold
from order_items;

select count(a.product_id) as no_tech_products_sold
from order_items a left join products b on a.product_id = b.product_id where b.product_category_name 
IN ( "audio", "automotivo", "cds_dvds_musicals", "climatizacao", "electronics", "informatica_accessoire", 
"dvds_blu_ray", "eletrodomesticos", "eletrodomesticos_2", "eletroportaties", "pc_gamer", "pcs", "portateis_casa_forno_e_cafe", 
"portateis_cozinha_e_preparadores_de_alimentos");

/* What’s the average price of the products being sold? */
select avg(price) as avg_price_product_sold
from order_items;

/*Are expensive tech products popular? */
select b.review_score as score, a.price from order_items a left join order_reviews b 
on a.order_id=b.order_id order by a.price desc limit 20 ;




select * from order_reviews;
select count(seller_id) from sellers;




/*how many months of data are included in this magist table? */
select year(order_purchase_timestamp) as years,
       month(order_purchase_timestamp) as months
from orders
group by years, months
order by years, months;

/*How many sellers are there? How many Tech sellers are there? What percentage of overall sellers are Tech sellers? */
select count(distinct(a.seller_id)) 
from order_items a
left join products b
on a.product_id = b.product_id
where b.product_category_name IN ( "audio", "automotivo", "cds_dvds_musicals", "climatizacao", "electronics", "informatica_accessoire", "dvds_blu_ray", "eletrodomesticos", "eletrodomesticos_2", "eletroportaties", "pc_gamer", "pcs", "portateis_casa_forno_e_cafe", "portateis_cozinha_e_preparadores_de_alimentos");

select count(seller_id)
from sellers;

/* What is the total amount earned by all sellers? What is the total amount earned by all Tech sellers? */
select sum(price) as amount_earn_all_sellers
from order_items;

select sum(a.price) as amount_earn_tech_sellers
from order_items a
left join products b
on a.product_id = b.product_id
where b.product_category_name IN ( "audio", "automotivo", "cds_dvds_musicals", "climatizacao", "electronics", "informatica_accessoire", "dvds_blu_ray", "eletrodomesticos", "eletrodomesticos_2", "eletroportaties", "pc_gamer", "pcs", "portateis_casa_forno_e_cafe", "portateis_cozinha_e_preparadores_de_alimentos");


/* What’s the average time between the order being placed and the product being delivered? */
select avg(datediff(order_purchase_timestamp ,order_delivered_customer_date))
from orders;

select * from orders;

/*How many orders are delivered on time vs orders delivered with a delay? */

SELECT ABS(DATEDIFF(o.order_estimated_delivery_date, o.order_delivered_customer_date)) as diff 
FROM orders as o;