CREATE VIEW employees_at_location AS
    SELECT 
        locations_id, COUNT(id) people
    FROM
        employees
    GROUP BY locations_id
    ORDER BY people DESC;
    
CREATE VIEW products_at_location AS
    SELECT 
        locations_id, COUNT(id) people
    FROM
        products
    GROUP BY locations_id
    ORDER BY people DESC;
    
CREATE VIEW equipment_at_location AS
    SELECT 
        locations_id, COUNT(id) people
    FROM
        equipment
    GROUP BY locations_id
    ORDER BY people DESC;