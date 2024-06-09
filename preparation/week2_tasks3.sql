SELECT 
    m.menuname
FROM 
    menu m
WHERE 
    m.menu_id = ANY (
        SELECT 
            o.menu_id
        FROM 
            orders o
        WHERE 
            o.quantity > 2
    );
