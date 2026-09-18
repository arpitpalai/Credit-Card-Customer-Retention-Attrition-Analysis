CREATE DATABASE credit_card_analysis;

CREATE TABLE bank_churners (
    clientnum INT PRIMARY KEY,
    attrition_flag VARCHAR(30),
    customer_age INT,
    gender VARCHAR(10),
    dependent_count INT,
    education_level VARCHAR(50),
    marital_status VARCHAR(30),
    income_category VARCHAR(50),
    card_category VARCHAR(30),
    months_on_book INT,
    total_relationship_count INT,
    months_inactive_12_mon INT,
    contacts_count_12_mon INT,
    credit_limit DECIMAL(12,2),
    total_revolving_bal DECIMAL(12,2),
    avg_open_to_buy DECIMAL(12,2),
    total_amt_chng_q4_q1 DECIMAL(10,4),
    total_trans_amt DECIMAL(12,2),
    total_trans_ct INT,
    total_ct_chng_q4_q1 DECIMAL(10,4),
    avg_utilization_ratio DECIMAL(10,4)
);

-- Number of customers 
SELECT COUNT(*)
FROM bank_churners;

-- Duplicate Customers
SELECT 
	clientnum,
    COUNT(*)
FROM bank_churners
GROUP BY clientnum
HAVING COUNT(*) >1;

-- Business Question                                                                                              
SELECT * FROM bank_churners;
-- Q1. What is the overall customer attrition rate?
SELECT 
	ROUND(
    COUNT(
		CASE
        WHEN attrition_flag = 'Attrited Customer'
        THEN clientnum
        END)* 100 /
        COUNT(clientnum),2) AS attrition_rate
FROM bank_churners;

-- Q2. How many customers are there in each card category, and what is the attrition rate for each?
SELECT 
	card_category,
    COUNT(clientnum) AS total_customer,
    COUNT( CASE
			WHEN attrition_flag = 'Attrited Customer'
            THEN clientnum
			END) AS attrited_customer,
	ROUND(COUNT( CASE
			WHEN attrition_flag = 'Attrited Customer'
            THEN clientnum
			END) *100/
            COUNT(clientnum),2) AS attrition_rate
FROM bank_churners
GROUP BY card_category;

-- Q3. What is the attrition rate for each income category?
SELECT 
	income_category,
	COUNT(clientnum) AS total_customer,
    COUNT( CASE
			WHEN attrition_flag = 'Attrited Customer'
            THEN clientnum
			END) AS attrited_customer,
	ROUND(COUNT( CASE
			WHEN attrition_flag = 'Attrited Customer'
            THEN clientnum
			END) *100/
            COUNT(clientnum),2) AS attrition_rate
FROM bank_churners
GROUP BY income_category;

-- Q4. How does attrition vary across different age groups?
SELECT 
	CASE
		WHEN customer_age BETWEEN 20 AND 29 THEN '20-29'
		WHEN customer_age BETWEEN 30 AND 39 THEN '30-39'
		WHEN customer_age BETWEEN 40 AND 49 THEN '40-49'
		WHEN customer_age BETWEEN 50 AND 59 THEN '50-59'
		WHEN customer_age BETWEEN 60 AND 69 THEN '60-69'
		ELSE '70+'
	END AS age_group,
	COUNT(clientnum) AS total_customer,
    COUNT( CASE
			WHEN attrition_flag = 'Attrited Customer'
            THEN clientnum
			END) AS attrited_customer,
	ROUND(COUNT( CASE
			WHEN attrition_flag = 'Attrited Customer'
            THEN clientnum
			END) *100/
            COUNT(clientnum),2) AS attrition_rate
FROM bank_churners
GROUP BY age_group;

-- Q5. How does customer inactivity relate to attrition?
SELECT 
	months_inactive_12_mon,
    COUNT(clientnum) AS total_customers,
    COUNT(
		CASE
        WHEN attrition_flag = 'Attrited Customer' 
        THEN clientnum
        END
    ) AS attrited_customers,
	ROUND(COUNT( CASE
			WHEN attrition_flag = 'Attrited Customer'
            THEN clientnum
			END) *100/
            COUNT(clientnum),2) AS attrition_rate    
FROM bank_churners
GROUP BY months_inactive_12_mon;

-- Q6. How does transaction activity differ between existing and attrited customers?
SELECT 
	attrition_flag,
    ROUND(AVG(total_trans_amt),2)AS avg_total_trans,
    ROUND(AVG(total_trans_ct),2) AS avg_trans
FROM bank_churners
GROUP BY attrition_flag;

-- Q7. Does the number of customer contacts relate to attrition?
SELECT 
	contacts_count_12_mon,
	ROUND(COUNT( CASE
				WHEN attrition_flag = 'Attrited Customer'
				THEN clientnum
				END) *100/
				COUNT(clientnum),2) AS attrition_rate  
FROM bank_churners
GROUP BY contacts_count_12_mon
ORDER BY contacts_count_12_mon DESC
;

-- Q8. Does the number of relationships/products a customer has relate to attrition?
SELECT 
	total_relationship_count,
	ROUND(COUNT( CASE
				WHEN attrition_flag = 'Attrited Customer'
				THEN clientnum
				END) *100/
				COUNT(clientnum),2) AS attrition_rate 
FROM bank_churners
GROUP BY total_relationship_count;
    
-- Q9. How does transaction activity change differ between existing and attrited customers?
SELECT 
	attrition_flag,
    ROUND(AVG(total_ct_chng_q4_q1),2) avg_chng_transaction
FROM bank_churners
GROUP BY attrition_flag;
-- Q10. Which customer segments have the highest attrition rate?
SELECT 
	income_category,
    card_category,
    COUNT(clientnum) AS total_customers,
    COUNT(
		CASE
        WHEN attrition_flag = 'Attrited Customer'
        THEN clientnum
        END) AS attritted_customers,
	ROUND(COUNT( CASE
				WHEN attrition_flag = 'Attrited Customer'
				THEN clientnum
				END) *100/
				COUNT(clientnum),2) AS attrition_rate 
FROM bank_churners
GROUP BY income_category, card_category
ORDER BY attrition_rate DESC;
	

