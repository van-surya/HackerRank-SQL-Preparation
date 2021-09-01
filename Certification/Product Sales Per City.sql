SELECT ci.city_name, pr.product_name, ROUND(sum(it.line_total_price), 2) AS tot 
FROM city ci, customer cu, invoice i ,invoice_item it, product pr
WHERE ci.id = cu.city_id AND cu.id = i.customer_id AND i.id = it.invoice_id AND it.product_id AND it.product_id = pr.id
GROUP BY ci.city_name, pr.product_name
ORDER BY tot DESC, ci.city_name, pr.product_name