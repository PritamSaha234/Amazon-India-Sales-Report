# Amazon India Sales Report (SQL Project)

I built this project to practice SQL on a real-looking e-commerce dataset. The idea was simple: pretend I'm working for Amazon India and they've asked me to put together a sales report — something that tells them what's selling, where it's selling, and how well orders are getting fulfilled.

## What this project is about

Amazon India (or really, any company selling clothes and accessories online) needs to know things like: which categories make the most money, which cities are buying the most, how many orders get cancelled, and which fulfillment method actually performs better. This project answers all of that using plain SQL queries on a sales dataset.

## The Data

The dataset is an Amazon sales export with about 79,000 rows and 16 columns — order ID, date, status, fulfilment type, category, size, quantity, amount, shipping city/state, whether it's a B2B order, and who fulfilled it (Ekart or Easy Ship). It covers two months, April and May 2022.

Dataset file: <a href="https://github.com/PritamSaha234/Amazon-India-Sales-Report/blob/main/Amazon%20-Sales.xlsx">Amazon - Sales.xlsx</a>

A couple of things I noticed while going through the data (worth knowing if you're using this yourself):
- Some rows share the same Order ID — that's normal here; it just means one order had more than one item in it.
- The state names are not consistent at all. The same state shows up written differently, like "Bihar" and "BIHAR", or "Chandigarh" and "CHANDIGARH". I left this as-is in the queries below, but if you're doing a cleaner analysis, you'll want to standardize these first.

## Questions I Wanted to Answer

1. What's the total sales amount and total quantity sold overall?
2. Which 5 categories bring in the most money?
3. How many orders fall under each status (Shipped, Cancelled, etc.)?
4. Is the average order value different between Amazon-fulfilled and Merchant-fulfilled orders?
5. Which states are generating the most sales (top 10)?
6. For T-shirts specifically, which sizes sell the most?
7. How do B2B orders compare to regular (non-B2B) orders?
8. How do daily sales look over time?
9. Which courier (Ekart or Easy Ship) handles more orders, and what's their average order value?
10. Which cities have the most shipped orders?

## How I Did It

**Setting up:** Created a database called `amazon` and loaded the sales data into a table named `amazon_sales`.

**Getting familiar with the data:** Before writing any real queries, I just looked around — checked column names, spot-checked a few rows, made sure numbers looked right, and nothing was obviously broken.

**Writing the queries:** Each question above got its own SQL query, and I saved each one as a VIEW so it's reusable later without having to rewrite the logic. All of these are in the `amazon.sql` file in this repo.

**What I'd do next:** These views are basically ready to plug into Power BI or Tableau if someone wanted to turn this into an actual dashboard instead of just query outputs.

## What I Found

Going through the results, a few things stood out:

- **T-shirts and shirts dominate.** These two categories alone account for the large majority of sales — T-shirts bring in roughly ₹2.2 crore and shirts around ₹1.15 crore from shipped orders, way ahead of Blazers, Trousers, and everything else combined.
- **Maharashtra and Karnataka lead by state**, followed by Uttar Pradesh, Telangana, and Tamil Nadu. The other states trail quite a bit behind these five.
- **Bengaluru ships the most orders** by city, ahead of Hyderabad, Mumbai, and New Delhi.
- **Cancellations are real but not huge** — around 14% of all orders end up cancelled. Not alarming, but not nothing either.
- **Amazon-fulfilled orders have a slightly higher average order value** (around ₹575) compared to Merchant-fulfilled orders (around ₹502).
- **Ekart handles roughly double the orders that Easy Ship does** (about 53,000 vs 26,000), and also comes with a somewhat higher average order value.
- **For T-shirts, size M sells the most**, followed closely by L, S, and XL. The really large sizes (4XL, 5XL, 6XL) barely sell at all in comparison.
- **B2B orders are a tiny slice of the business** — only about 567 orders out of nearly 79,000 — but interestingly, their average order value (~₹632) is a bit higher than regular retail orders (~₹550). So B2B isn't big in volume, but each order tends to be worth a little more.

## Conclusion

Sales aren't spread evenly at all — a couple of categories, a handful of states, and a small number of cities are doing most of the work here. Most orders do get shipped successfully, but cancellations are still happening often enough that it's worth digging into why. Amazon's own fulfillment setup seems to edge out merchant fulfillment slightly in order value, and one courier is carrying a lot more of the load than the other.

## What I'd Recommend (if this were a real business)

- Double down on T-shirts and Shirts since that's clearly where the demand is, but also look into why other categories are so far behind — is it lack of demand, or lack of visibility?
- Look into the 14% cancellation rate and see if there's a pattern (specific cities, specific fulfillment types, specific couriers) causing it.
- Since Ekart is handling most of the volume, it'd be worth checking if that's by design or if Easy Ship has room to take on more.
- The top 5 states are clearly outperforming the rest — worth figuring out if that's just population/demand, or if there's an opportunity to grow the weaker states with better marketing or faster delivery.
- Clean up the state name inconsistencies before doing any serious state-level reporting; otherwise the same state ends up counted as two different ones.
- B2B orders are small in number but slightly higher value — might be worth testing whether more B2B-focused offers could grow that side of things.

## Files in this Repo

- `amazon.sql` — all the SQL queries and views used for this analysis
- `Amazon - Sales.xlsx` — the raw dataset
- `README.md` — this file

## Tools Used

MySQL for all the querying. Excel for a first look at the raw data before loading it in.
