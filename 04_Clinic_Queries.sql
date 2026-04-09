SELECT sales_channel, SUM(amount) AS revenue
FROM clinic_sales
WHERE YEAR(datetime) = 2021
GROUP BY sales_channel;

SELECT uid, SUM(amount) AS total_spent
FROM clinic_sales
WHERE YEAR(datetime) = 2021
GROUP BY uid
ORDER BY total_spent DESC
LIMIT 10;

SELECT 
    MONTH(cs.datetime) AS month,
    SUM(cs.amount) AS revenue,
    SUM(e.amount) AS expense,
    (SUM(cs.amount) - SUM(e.amount)) AS profit,
    CASE 
        WHEN (SUM(cs.amount) - SUM(e.amount)) > 0 THEN 'Profit'
        ELSE 'Loss'
    END AS status
FROM clinic_sales cs
JOIN expenses e ON cs.cid = e.cid
GROUP BY month;

SELECT *
FROM (
    SELECT c.city, cs.cid,
           SUM(cs.amount) - SUM(e.amount) AS profit,
           RANK() OVER (PARTITION BY c.city ORDER BY (SUM(cs.amount) - SUM(e.amount)) DESC) AS rnk
    FROM clinic_sales cs
    JOIN expenses e ON cs.cid = e.cid
    JOIN clinics c ON cs.cid = c.cid
    GROUP BY c.city, cs.cid
) t
WHERE rnk = 1;

SELECT *
FROM (
    SELECT c.state, cs.cid,
           SUM(cs.amount) - SUM(e.amount) AS profit,
           RANK() OVER (PARTITION BY c.state ORDER BY (SUM(cs.amount) - SUM(e.amount)) ASC) AS rnk
    FROM clinic_sales cs
    JOIN expenses e ON cs.cid = e.cid
    JOIN clinics c ON cs.cid = c.cid
    GROUP BY c.state, cs.cid
) t
WHERE rnk = 2;