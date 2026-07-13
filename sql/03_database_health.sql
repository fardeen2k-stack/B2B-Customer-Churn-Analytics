SELECT
    'sales_reps' AS table_name,
    COUNT(*) AS total_records
FROM sales_reps

UNION ALL

SELECT
    'products',
    COUNT(*)
FROM products

UNION ALL

SELECT
    'customers',
    COUNT(*)
FROM customers

UNION ALL

SELECT
    'subscriptions',
    COUNT(*)
FROM subscriptions

UNION ALL

SELECT
    'contracts',
    COUNT(*)
FROM contracts

UNION ALL

SELECT
    'invoices',
    COUNT(*)
FROM invoices

UNION ALL

SELECT
    'payments',
    COUNT(*)
FROM payments

UNION ALL

SELECT
    'usage_logs',
    COUNT(*)
FROM usage_logs

UNION ALL

SELECT
    'support_tickets',
    COUNT(*)
FROM support_tickets

UNION ALL

SELECT
    'customer_health',
    COUNT(*)
FROM customer_health;


SELECT
    customer_id,
    COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT
    COUNT(*) AS missing_company_name
FROM customers
WHERE company_name IS NULL;

SELECT
    c.customer_id
FROM customers c
LEFT JOIN sales_reps s
ON c.sales_rep_id = s.sales_rep_id
WHERE s.sales_rep_id IS NULL;