# 📦 Last-Mile Delivery Optimization – Business Cost Reduction Project

### A data-driven initiative to reduce last-mile delivery costs and delays by improving routing, rider utilization, and zone performance using real-world delivery data.

---

## ❓ 1. Problem Statement

Last-mile delivery is the most expensive and operationally complex segment of the logistics chain. This project addresses:

- Rising delivery costs and inconsistent efficiency across zones and riders  
- Unclear business impact, though initial indicators suggest high cost leakage and potential for optimization

---

## 🎯 2. Business Objectives

This analysis aims to deliver actionable improvements in last-mile operations. The core goals are:

- Reduce average delivery time across all orders  
- Decrease delivery cost per order through operational efficiency  
- Improve rider and zone-level productivity and workload balance  

---

## 📂 3. Dataset Overview

### Primary Dataset:

This project uses a structured delivery operations dataset that captures real-time delivery metadata and rider logistics.

**Key Columns:**

- `Order_ID`  
- `Agent_age`, `Agent_rating`  
- `Store_latitude`, `Store_longitude`  
- `Drop_latitude`, `Drop_longitude`  
- `Order_date`, `Order_time`, `Pickup_time`  
- `Idle_time_before_pickup`  
- `Weather`, `Traffic`, `Vehicle`  
- `Area`, `Category`  
- `Distance`, `Speed`, `Delivery_Duration_mins`  

### Data Source:

- Publicly available dataset from **Kaggle**  
- [Kaggle Link: Last-Mile Delivery Dataset](https://www.kaggle.com/datasets/sujalsuthar/amazon-delivery-dataset)

---

## 🛠️ 4. Tools and Skills Used

This project integrates a mix of analytical tools and business techniques to uncover insights:

- **Excel** – Data cleaning and creation of derived metrics through calculated fields  
- **SQL** – Data analysis and performance aggregation  
- **Power BI** – Visualization, filtering, and interactive dashboards  
- **Microsoft Word** – Recommendation report and business documentation  
- **Business Thinking** – Strategic diagnosis of cost drivers and operational inefficiencies

- ## 📁 Project Structure

- [`1_data/`](./1_data)  
  Contains all datasets used in the analysis, separated into raw and cleaned versions.

  - [`1.1_clean_data/`](./1_data/1.1_clean_data)  
    Includes cleaned and pre-processed data files ready for analysis.

  - [`1.2_raw_data/`](./1_data/1.2_raw_data)  
    Holds original unprocessed delivery, agent, and location data (for transparency and reproducibility).


- [`2_sql_analysis/`](./2_sql_analysis)  
  All query logic and documentation used to derive insights from the dataset.

  - [`2.1_business_questions/`](./2_sql_analysis/2.1_business_questions)  
    PDF  file outlining business problems related to delivery delays, agent performance, traffic impact, etc.

  - [`2.2_sql_queries/`](./2_sql_analysis/2.2_sql_queries)  
    SQL files solving each business question through joins, aggregations, filters, and time-based analysis.


- [`3_executive_report/`](./3_executive_report)  
  Final outputs and reporting files to communicate findings and business recommendations.

  - [`3.1_dashboard/`](./3_executive_report/3.1_dashboard)  
    Includes Power BI  dashboards created for stakeholder presentation.

  - [`3.2_dashboard_overview_screenshots/`](./3_executive_report/3.2_dashboard_overview_screenshots)  
    Contains static screenshots or preview images from the dashboard for GitHub visibility.

  - [`3.3_insights_and_recommendations/`](./3_executive_report/3.3_insights_and_recommendations)  
    Final PDF report containing executive summary, data-backed insights, and actionable recommendations.
