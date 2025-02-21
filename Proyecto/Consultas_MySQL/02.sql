SELECT pr.nombre, SUM(dp.cantidad) AS total_vendido 
FROM detalle_pedido dp
JOIN productos pr ON dp.producto_id = pr.id
GROUP BY pr.nombre
ORDER BY total_vendido DESC;