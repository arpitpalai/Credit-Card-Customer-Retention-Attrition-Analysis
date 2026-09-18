# 💳 Credit Card Customer Retention & Attrition Analysis

## 🎯 Business Problem

The bank was experiencing customer attrition and needed a clearer understanding
of which customer segments and behavioral patterns were associated with customer
attrition.

The objective was to analyze customer demographics, card categories, income
segments, customer engagement, inactivity and transaction activity to identify
patterns that could support customer retention efforts.

## 🔍 What I Did

- Cleaned and prepared 10,127 credit-card customer records
- Checked customer identifiers, missing values, data types and data quality
- Reviewed categorical fields containing "Unknown" values
- Removed pre-generated Naive Bayes classifier output columns from the main
  business analysis to avoid using model-generated variables as business
  attributes
- Created age groups for customer segmentation
- Analyzed customer attrition across income categories, card categories and
  age groups using MySQL
- Analyzed customer inactivity, transaction activity, customer contacts and
  relationship depth
- Compared transaction activity between existing and attrited customers
- Analyzed combined income and card-category customer segments
- Answered 10 business questions using SQL
- Built an interactive 3-page Power BI dashboard
- Developed business insights and retention-focused recommendations based
  on the analysis

## 💡 Key Findings

- 10,127 customer records were analyzed.
- 1,627 customers were classified as attrited.
- The overall customer attrition rate was 16.07%.
- Customers in the $120K+ income category recorded the highest overall
  attrition rate at 17.33%, while the $60K–$80K category had the lowest
  attrition rate at 13.48%.
- Platinum cardholders recorded the highest overall attrition rate at 25.00%,
  compared with 14.77% for Silver cardholders.
- Customers aged 40–49 recorded the highest attrition rate at 16.93%,
  while customers aged 20–29 had the lowest rate at 8.72%.
- Attrited customers had an average transaction count of 45 compared with
  69 for existing customers, indicating substantially lower transaction
  activity among customers who had attrited.
- Attrition rates varied across customer inactivity levels, reaching 29.89%
  among customers inactive for 4 months.
- Customers with fewer than 4 bank relationships showed higher attrition
  rates, with the highest observed rate of 27.84% among customers with
  2 relationships.
- Attrition varied across combined income and card-category segments.
- The $40K–$60K Platinum segment recorded a 100% attrition rate, but this
  result should be interpreted cautiously because the segment has a very
  small customer base.
- The analysis identified differences in attrition across customer
  demographics, engagement levels, transaction activity and relationship
  depth.

## 💡 Business Suggestions

- Monitor declining transaction activity as a potential customer-engagement
  signal and investigate customers showing meaningful reductions in activity.
- Investigate customers with fewer bank relationships to understand whether
  lower relationship depth is associated with reduced engagement.
- Conduct deeper analysis of customer segments with relatively high attrition
  rates, considering both attrition rate and customer volume before
  prioritizing retention efforts.
- Investigate the reasons behind higher attrition among Platinum cardholders
  and determine whether specific customer needs or service factors are
  associated with the observed pattern.
- Use customer inactivity and transaction behavior as areas for further
  investigation when developing customer retention strategies.
- Validate high attrition rates in small customer segments before making
  business decisions based on them.
- Combine attrition rate, customer volume and engagement indicators when
  evaluating potential retention opportunities.

## ⚠️ Analytical Considerations

- The analysis identifies relationships and patterns in the available data;
  it does not establish causation.
- The dataset does not provide direct information about why customers
  discontinued their relationship with the bank.
- Very small customer segments can produce unusually high attrition rates
  and should therefore be interpreted cautiously.
- Additional information such as customer satisfaction, complaints, pricing,
  competitor activity and reasons for attrition would be useful for deeper
  retention analysis.

## 🛠️ Skills Used

Python | Pandas | NumPy | MySQL | SQL | Power BI | DAX | Data Cleaning |
EDA | Data Analysis | Data Visualization | Business Analysis

## 📂 Project Files

- [Python Data Cleaning & Analysis](Credit_Card_Customer_Retention/python/credit_card_attrition_analysis.ipynb)
- [SQL Business Analysis](Credit_Card_Customer_Retention/sql/customer_attrition_analysis.sql)
- [Power BI Dashboard](Credit_Card_Customer_Retention/powerbi/Customer_Retention_Attrition_Dashboard.pbix)

## 📊 Dashboard

### Customer Attrition Overview

![Customer Attrition Overview](Credit_Card_Customer_Retention/image/page1.png)

### Customer Behavior & Attrition

![Customer Behavior & Attrition](Credit_Card_Customer_Retention/image/page2.png)

### Customer Segment Analysis

![Customer Segment Analysis](Credit_Card_Customer_Retention/image/page3.png)
