SELECT p.id AS pedido_id, c.nombre AS cliente, pr.nombre AS producto, dp.cantidad, dp.precio_unitario 
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
JOIN detalle_pedido dp ON p.id = dp.pedido_id
JOIN productos pr ON dp.producto_id = pr.id;