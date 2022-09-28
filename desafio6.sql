SELECT MIN(price) AS faturamento_minimo, MAX(price) AS faturamento_maximo, ROUND(AVG(price), 2) AS faturamento_medio, SUM(price) AS faturamento_total
FROM SpotifyClone.plans p
INNER JOIN users u ON u.id_plan = p.id_plan;