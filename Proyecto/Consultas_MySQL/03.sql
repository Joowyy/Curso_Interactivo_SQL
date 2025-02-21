SELECT 
    p.id AS pedido_id,
    c.nombre AS cliente,
    c.correo AS email,
    COUNT(dp.producto_id) AS total_productos,
    SUM(dp.cantidad) AS total_cantidad,
    SUM(dp.cantidad * dp.precio_unitario) AS total_pagado,
    GROUP_CONCAT(pr.nombre ORDER BY pr.nombre SEPARATOR ', ') AS productos_comprados,
    p.fecha AS fecha_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
JOIN detalle_pedido dp ON p.id = dp.pedido_id
JOIN productos pr ON dp.producto_id = pr.id
GROUP BY p.id, c.nombre, c.correo, p.fecha
ORDER BY p.fecha DESC;
