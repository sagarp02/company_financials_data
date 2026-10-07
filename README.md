Company Financial Health Analysis

A project analyzing the financial health of 10 Indian IT companies over the last 5 years (FY2022-FY2026), to see which company is financially strongest and how that connects to stock price performance.

Companies: TCS, Infosys, Wipro, HCL Technologies, Tech Mahindra, LTIMindtree, Persistent Systems, Coforge, Mphasis, L&T Technology Services.

What I did

1. Collected 5 years of financial data (revenue, net profit, operating profit, debt, EPS) from screener.in
2. Pulled daily stock prices for all 10 companies using Python (yfinance)
3. Cleaned and merged everything into one table using Pandas
4. Loaded the data into SQL Server and wrote queries to find profit growth, margin ranking, year-over-year growth, and debt trends
5. Built a Power BI dashboard to visualize the results

 Tools used

- Python (Pandas, yfinance)
- SQL Server
- Power BI

 Files

- `Company_Financial_Analysis.ipynb` - data collection and cleaning code
- `company_financials_combined.csv` - final merged dataset
- `it_financials_sql_queries.sql` - SQL analysis queries
- `it_financials_dashboard.pbix` - Power BI dashboard
Key findings

- Sector-wide revenue grew steadily from 2022 to 2026, but total net profit stayed almost flat over the same period — margins are getting squeezed across the board.
- TCS and Infosys lead the group on profit margin, consistent with their reputation as the most efficient operators in Indian IT.
- TCS carries by far the largest debt load among the companies with available debt data, and it has grown every year.
