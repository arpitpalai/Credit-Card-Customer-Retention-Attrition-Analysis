# 💳 Credit Card Customer Retention & Attrition Analysis

## 🎯 Business Problem

The bank was experiencing customer attrition and needed a clearer understanding
of which customer segments and behavioral patterns were associated with customer
attrition.

The objective was to analyze customer demographics, card categories, income
segments, customer engagement, inactivity, transaction activity and relationship
depth to identify patterns that could support customer retention efforts.

## 🔍 What I Did

- Explored and reviewed 10,127 credit-card customer records using Excel
- Performed basic data cleaning and data-quality checks in Excel
- Checked customer identifiers, duplicates, missing values and categorical values
- Reviewed categorical fields containing "Unknown" values
- Prepared the dataset for SQL-based analysis
- Analyzed customer attrition across income categories, card categories and
  age groups using MySQL
- Analyzed customer inactivity and its relationship with attrition
- Compared transaction activity between existing and attrited customers
- Analyzed customer contacts and relationship depth
- Analyzed changes in transaction count between existing and attrited customers
- Combined income category and card category to identify customer segments
- Answered 10 business questions using SQL
- Built an interactive 3-page Power BI dashboard
- Developed business insights and retention-focused suggestions based on
  the analysis

## 💡 Key Findings

- 10,127 customer records were analyzed.
- 1,627 customers were classified as attrited.
- The overall customer attrition rate was 16.07%.
- Customers in the $120K+ income category recorded the highest overall
  attrition rate at 17.33%, while the $60K–$80K category had the lowest
  attrition rate at 13.48%.
- Platinum cardholders recorded the highest overall attrition rate at 25.00%,
  while Silver cardholders recorded the lowest at 14.77%.
- Customers aged 40–49 recorded the highest attrition rate at 16.93%,
  while customers aged 20–29 had the lowest at 8.72%.
- Existing customers had an average transaction count of 69 compared with
  45 among attrited customers.
- Attrition rates varied across customer inactivity levels, reaching 29.89%
  among customers inactive for 4 months.
- Customers with fewer than 4 bank relationships showed relatively higher
  attrition rates, with the highest observed rate of 27.84% among customers
  with 2 relationships.
- Attrition varied across combined income and card-category segments.
- The $40K–$60K Platinum segment recorded a 100% attrition rate; however,
  this segment has a very small customer base and the result should therefore
  be interpreted cautiously.

## 💡 Business Suggestions

- Monitor declining transaction activity as a potential customer-engagement
  signal and investigate customers showing meaningful reductions in activity.
- Investigate customers with fewer bank relationships to understand whether
  lower relationship depth is associated with reduced customer engagement.
- Evaluate high-attrition customer segments using both attrition rate and
  customer volume before prioritizing retention efforts.
- Investigate the factors associated with the relatively high attrition rate
  among Platinum cardholders.
- Monitor customer inactivity levels as a potential indicator of declining
  engagement.
- Validate high attrition rates in small customer segments before making
  business decisions based on them.
- Combine customer segment, engagement and transaction metrics to support
  more targeted retention analysis.

## ⚠️ Analytical Considerations

- The analysis identifies patterns and associations in the available data;
  it does not establish causation.
- The dataset does not provide direct information about why customers
  discontinued their relationship with the bank.
- Very small customer segments can produce unusually high attrition rates
  and should therefore be interpreted cautiously.
- Additional information such as customer satisfaction, complaints, pricing,
  competitor activity and reasons for attrition would be useful for deeper
  retention analysis.

## 🧠 Analytical Approach

The project followed a business-focused analytical workflow:

**Business Problem → Excel Exploration & Cleaning → SQL Analysis → Power BI
Dashboard → Key Findings → Business Suggestions**

### Business Questions

1. What is the overall customer attrition rate?
2. How many customers are there in each card category, and what is the
   attrition rate for each?
3. What is the attrition rate for each income category?
4. How does attrition vary across different age groups?
5. How does customer inactivity relate to attrition?
6. How does transaction activity differ between existing and attrited customers?
7. Does the number of customer contacts relate to attrition?
8. Does the number of relationships/products a customer has relate to attrition?
9. How does transaction activity change differ between existing and attrited
   customers?
10. Which customer segments have the highest attrition rate?

## 🛠️ Skills Used

Excel | MySQL | SQL | Power BI | DAX | Data Cleaning |
Data Exploration | EDA | Data Analysis | Data Visualization | Business Analysis

## 📂 Project Files

- [Dataset](data/BankChurners.csv)
- [SQL Business Analysis](bank_churners.sql)
- [Power BI Dashboard](Attrition_analysis_dashboard.pbix)

## 📊 Dashboard

### Page 1 — Customer Attrition Overview

![Customer Attrition Overview](image/Page%201.png)

This page provides an executive-level view of overall customer attrition
and compares attrition rates across income categories, card categories and
age groups.

### Page 2 — Customer Behavior & Attrition

![Customer Behavior & Attrition](image/Page%202.png)

This page analyzes customer behavior associated with attrition, including
relationship depth, transaction activity and customer inactivity.

### Page 3 — Customer Segment Analysis

![Customer Segment Analysis](image/Page%203.png)

This page combines income and card categories to examine customer segment
size, attrition rates and the number of attrited customers.

## 📌 Project Outcome

The analysis provides a structured view of customer attrition across
customer demographics, engagement behavior and customer segments.

The findings can be used as a starting point for further investigation into
customer retention opportunities and the development of targeted retention
strategies.
