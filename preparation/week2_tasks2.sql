SELECT 
    c.customer_id,
    c.name,
    o.orders_id,
    o.total_cost,
    m.menu_id,
    mi.coursename,
    mi.StarterName
FROM 
    customer c
JOIN 
    orders o ON c.Customer_id = o.customer_customer_id
JOIN 
    menu m ON o.menu_id = m.menu_id
JOIN 
    menuitems mi ON m.menu_id = mi.menuitemsid
WHERE 
    o.total_cost > 150
ORDER BY 
    o.total_cost ASC;