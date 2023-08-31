
# Data-Driven Insights for Eniac's Expansion into Brazil

![Logo](https://assets.entrepreneur.com/content/3x2/2000/1691770256-marketing-campaigns-g-1127305026.jpg)

## Introduction

This project represents one of the accomplishments during my 6-month data science bootcamp, condensed into a focused week of intensive exploration.

#### Problem Statement

Eniac, a regional Apple accessories marketplace in Spain, emphasizes customer satisfaction through competitive pricing, expert tech support, and fast delivery. Eniac envisions the Brazilian market, contemplating collaboration with Magist, a Brazilian Software as a Service firm. Magist's order system links small businesses to major Brazilian marketplaces, which could help Eniac grow efficiently and at lower costs.


The two main business concern :

+ Product Fit - Do Eniac's tech products align effectively with the marketplaces Magist operates?

+ Delivery Speed - Do Magist offers fast delivery?

With access to Magist's database, I delved deep into analysis and formulated data-driven solutions. My primary goal? To decipher Magist's dataset, address the business concerns, and provide insights that guide Eniac's decision on whether to sign a deal with Magist. This process culminated in a PowerPoint presentation where I presented my findings.

**Disclaimer**: The companies mentioned here are fictional and used for illustrative purposes only.
## Skills and tools utilized

+ SQL 
+ Tableau
+ MySQL Workbench
## Schema

Using MySQL Workbench, automatically derived relationships are modified by eliminating and substituting undesired connections with the required ones.






## Analysis
In alignment with Eniac's strategic concerns, a comprehensive exploration of Magist's database is undertaken to address pivotal questions. The main focus revolves around evaluating the compatibility of Magist's offerings with Eniac's high-end tech products, as well as assessing the timeliness of order deliveries. In addition to these core concerns, more specific queries have emerged, requiring the integration of different tables and data manipulation. To facilitate the execution of computationally intensive tasks, adjustments are recommended to MySQL Workbench's read timeout interval, thereby ensuring a smoother query execution process. 

**Products Analysis:**

+ Tech Product Categories: Investigating the tech product categories within Magist's offerings to ascertain compatibility with Eniac's high-end tech items. 
+ Sales of Tech Products: Quantifying the sales of tech products within the database snapshot timeframe, calculating the percentage in relation to overall product sales. 
+ Average Product Price: Calculating the average price of products sold through Magist's platform. 
+ Popularity of Expensive Tech Products: Employing the CASE WHEN function to determine if expensive tech products exhibit popularity. 

**Sellers Analysis:** 

+ Data Duration: Determining the number of months covered by the data in the Magist database. 
+ Seller Counts: Calculating the total number of sellers and identifying the count of tech sellers, along with the percentage they represent of all sellers. 
+ Total Earnings: Evaluating the overall earnings of all sellers and specifically tech sellers. 
+ Average Monthly Income: Deriving the average monthly income for all sellers and tech-oriented ones. 

**Delivery Time Analysis:** 

+ Average Delivery Time: Computing the average time interval between order placement and product delivery. 
+ Timeliness of Deliveries: Distinguishing between on-time deliveries and those with delays. 


Here's the [presentation](https://docs.google.com/presentation/d/1uDPXu_g8EoMk1Zz6S-CqLGh3-JrqcofP6eN_qW4pKWY/edit?usp=sharing)   with my findings including analysis , charts, visualization using Tableau and conclusion.  

## Key Insights

+ Magist offers a diverse product range across 74 categories, totaling 32,951 items.
+ Notable performance metrics: 99,441 orders handled (2016-2018), 96.5% delivery success.
+ Analysis covers 25 months, spanning products priced 0.85 to 6735.
+ Growth trend observed till 2018, followed by decline.
+ Top 15 products (review-based) feature 2 tech items: Computer Accessories and Electronics.
+ Dominance of non-tech sellers (85.9%) over tech (15.9%).
+ Non-tech products outperform tech in sales and monthly income.
+ More customers annually purchase Non-Tech Products.
+ Non-tech sellers enjoy higher monthly income compared to tech sellers.
+ Average delivery time for all products is 12.6 days.
+ Average delivery time for Tech Products slightly longer at 12.8 days.


## Conclusion

Given Magist's lack of specialization in Tech products and prolonged delivery times, it would be unwise for Enaic to enter into a deal with them. The absence of expertise in the tech sector raises concerns about meeting Enaic's specific needs, while extended delivery times may lead to customer dissatisfaction. Exploring alternative marketplaces with a more suitable focus on tech products would be a more prudent approach to ensure successful partnerships. 
