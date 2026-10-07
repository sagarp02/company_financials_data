CREATE DATABASE it_financials;

select * from company_financials;

drop table athlete_events;

 select company,
    MAX(CASE WHEN year = 2022 THEN net_profit END) AS profit_2022,
    MAX(CASE WHEN year = 2026 THEN net_profit END) AS profit_2026,
    ROUND(
        (MAX(CASE WHEN year = 2026 THEN net_profit END) - MAX(CASE WHEN year = 2022 THEN net_profit END))
        / MAX(CASE WHEN year = 2022 THEN net_profit END) * 100, 1
    ) AS profit_growth_pct
FROM company_financials
GROUP BY company
ORDER BY profit_growth_pct DESC;


SELECT
    company,
    ROUND(AVG(profit_margin) * 100, 2) AS avg_profit_margin_pct,
    RANK() OVER (ORDER BY AVG(profit_margin) DESC) AS margin_rank
FROM company_financials
WHERE profit_margin IS NOT NULL
GROUP BY company
ORDER BY margin_rank;



SELECT
    company,
    year,
    revenue,
    LAG(revenue) OVER (PARTITION BY company ORDER BY year) AS prev_year_revenue,
    ROUND(
        (revenue - LAG(revenue) OVER (PARTITION BY company ORDER BY year))
        / LAG(revenue) OVER (PARTITION BY company ORDER BY year) * 100, 1
    ) AS yoy_revenue_growth_pct
FROM company_financials
ORDER BY company, year;


SELECT company, year, total_debt
FROM company_financials
WHERE total_debt IS NOT NULL
ORDER BY company, year;



SELECT
    company,
    year,
    yoy_revenue_growth,
    avg_stock_price,
    LAG(avg_stock_price) OVER (PARTITION BY company ORDER BY year) AS prev_year_price,
    ROUND(
        (avg_stock_price - LAG(avg_stock_price) OVER (PARTITION BY company ORDER BY year))
        / LAG(avg_stock_price) OVER (PARTITION BY company ORDER BY year) * 100, 1
    ) AS stock_price_growth_pct
FROM company_financials
ORDER BY company, year;