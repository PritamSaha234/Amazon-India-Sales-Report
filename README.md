# Amazon-India-Sales-Report (Analyzing the Data using SQL)

## Project Objective
Amazon India wants to create its sales report. Using this report, Amazon intends to analyze the sales trends, top categories, order status, fulfillment performance, and customer buying patterns. The goal is to make sales trends easy to understand and provide a clear view to the stakeholders.

## Dataset
<a href = "https://github.com/PritamSaha234/Amazon-India-Sales-Report/blob/main/Amazon%20-Sales-Report.xlsx">Dataset</a>

## Questions (KPIs)
### SQL Questions:
- What is the total sales amount and quantity sold across all orders?
- What are the top 5 categories by total successful sales amount?
- How many orders are there for each status (e.g., Shipped, Cancelled)?
- What is the average order amount per fulfillment method (Amazon vs Merchant)?
- Which ship states have the highest total sales, showing the top 10?
- What is the distribution of sizes sold for the 'T-shirt' category?
- How many B2B orders are there compared to non-B2B, and their total sales?
- What is the total sales amount per date, ordered chronologically? (Assuming Date is converted to a proper date format)
- Which courier fulfilled the most orders, and what is their average amount?
- What are the top 10 ship cities by number of shipped orders?

## Process (SQL)

### Start the Database
- Create a new database called 'amazon'.
- Imported the dataset into a table named 'amazon_sales'.

### Look at the Data
- Checked what kind of details are there like order amount, quantity, status, courier, city, state, etc.
- Ensured all data appeared correctly for analysis.

### Ask and Answer Questions with SQL
- Found total sales and total quantity of products.
- Found the top 5 categories with the highest sales.
- Counted how many orders were Shipped, Cancelled, etc.
- Compared the average order value between Amazon-fulfilled and Merchant-fulfilled orders.
- Found the top 10 states and cities with the highest sales and shipped orders.
- Checked which T-shirt sizes sell more.
- Compared sales and orders of B2B vs non-B2B customers.
- Saw how sales change day by day.
- Found which courier delivered the most orders and their average order value.

### Save the Results
- Saved every query as a View so they can be used again easily.
- These results can also be shown in dashboards using Power BI or Tableau.

## Attachment
<a href = "https://github.com/PritamSaha234/Amazon-India-Sales-Report/blob/main/amazon.sql">SQL File</a>

## Project Insights
- Sales are mostly coming from a few top categories (T-shirt, Shirt, Blazer).
- Some cities and states buy a lot more than others.
- Most orders get shipped, but a few still get cancelled.
- Amazon-fulfilled orders are usually more reliable.
- B2B orders are fewer but give higher sales.
- A few couriers handle most of the orders.

## Conclusion
The sales are not the same everywhere. Some products, places, and couriers do much better than others. Cancellations are still happening, but overall, most orders get shipped.

## Recommendations
- Focus more on top-performing categories and states to grow sales.
- Work with merchants to improve fulfilment quality and reduce cancellations.
- Build stronger partnerships with the couriers who deliver the most successfully.
- Track day-to-day sales patterns to plan promotions on high-demand days.
- Explore new ways to increase sales in low-performing categories and locations.
