SELECT 
    c.id AS cliente_id,
    c.nombre AS cliente,
    c.correo AS email,
    COUNT(p.id) AS total_pedidos,
    SUM(dp.cantidad) AS total_productos_comprados,
    SUM(dp.cantidad * dp.precio_unitario) AS total_gastado
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
JOIN detalle_pedido dp ON p.id = dp.pedido_id
GROUP BY c.id, c.nombre, c.correo
ORDER BY total_gastado DESC
LIMIT 3;
