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

## 📁  5.  Project Structure

- [`1_data/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/tree/main/01_data)  
  Contains all datasets used in the analysis, separated into raw and cleaned versions.

  - [`1.1_clean_data/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/01_data/1.1_last_mile_delivery_cleaned.csv)  
    Includes cleaned and pre-processed data files ready for analysis.

  - [`1.2_raw_data/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/01_data/1.2_last_mile_delivery_raw.csv)  
    Holds original unprocessed delivery, agent, and location data (for transparency and reproducibility).


- [`2_sql_analysis/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/tree/main/02_sql_analysis)  
  All query logic and documentation used to derive insights from the dataset.

  - [`2.1_business_questions/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/02_sql_analysis/2.1_Last_Mile_Delivery_Optimization_Quections.pdf.pdf)  
    PDF  file outlining business problems related to delivery delays, agent performance, traffic impact, etc.

  - [`2.2_sql_queries/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/02_sql_analysis/2.2_last_mile_delivery_optimization_case_study.sql)  
    SQL files solving each business question through joins, aggregations, filters, and time-based analysis.


- [`3_executive_report/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/tree/main/03_executive_report)  
  Final outputs and reporting files to communicate findings and business recommendations.

  - [`3.1_dashboard/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/03_executive_report/3.1_last_mile_dashboard.pbix)  
    Includes Power BI  dashboards created for stakeholder presentation.

  - [`3.2_dashboard_overview_screenshots/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/03_executive_report/3.2_dashboard_full_view.png)  
    Contains static screenshots or preview images from the dashboard for GitHub visibility.

  - [`3.3_insights_and_recommendations/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/03_executive_report/3.3_Insights_Recommendations_LastMileOptimization.pdf%20(1).pdf)  
    Final PDF report containing executive summary, data-backed insights, and actionable recommendations.


 ## 🛠️ 6.  Implementation Approach

1. **Data Collection & Preparation**
   - Imported initial delivery dataset from [Kaggle](Kaggle Link: Last-Mile Delivery Dataset](https://www.kaggle.com/datasets/sujalsuthar/amazon-delivery-dataset)  
   - Addressed missing values, standardized zone naming, and synchronized timestamps  
   - Cleaned files are archived in `/1_data/1.1_clean_data/`
2. **Business Problem Framing**  
   - Articulated eight high‑value questions focusing on delay sources, agent dynamics, and environmental effects  
   - Documentation of each question resides in `/2_sql_analysis/2.1_business_questions/`

3. **SQL Analysis**  
   - Developed and optimized SQL scripts to answer all business questions, handling nulls and complex joins  
   - Stored final queries in `/2_sql_analysis/2.2_sql_queries/`

4. **Prioritization & Visualization**  
   - Selected four questions with the greatest business impact and stakeholder relevance (e.g., semi‑urban delays, traffic + weather effects, idle‑time peaks)  
   - Generated supporting charts and tables for delivery duration, idle‑time trends, and zone‑level comparisons  
   - Dashboard source files and exported visuals are available in `/3_executive_report/3.1_dashboard/`
    
5. **Insights & Recommendations Documentation**  
   - Synthesized key findings into concise insights and strategic recommendations  
   - Compiled and formatted the final report in `/3_executive_report/3.3_insights_and_recommendations/`  
   - Ensured alignment with stakeholder objectives and clarity for decision‑making
  
  ## 📊 7.  Dashboard Highlights

- **Key Performance Metrics**  
  - **Average Delivery Speed:** 8.23 km/h  
  - **Average Delivery Distance:** 14.76 km  
  - **Average Idle Time Before Pickup:** 9.93 mins  
  - **Average Delivery Time:** 142.12 mins  

- **Traffic & Weather Impact**  
  Under **Jam** traffic with **cloudy** or **stormy** conditions, median delivery times spike to **180 mins**, while even **High** traffic in poor weather sustains durations above **135 mins**—underscoring the need for dynamic routing and weather‑aware scheduling.

- **Area‑Level Delivery Efficiency**  
  **Semi‑Urban** zones trail other regions significantly, with average delivery times nearing **230 mins**, compared to **120 mins** in metropolitan and **110 mins** in urban areas—highlighting prime candidates for hub relocation or micro‑fulfillment centers.

- **Idle‑Time Trends**  
  Driver wait times peak at **10.5 mins** around **10 AM** and **2 PM**, suggesting bottlenecks in order batching and pickup coordination that could be alleviated with staggered dispatch windows.

- **Category Consistency**  
  Delivery durations by product category remain tightly clustered (131–134 mins), with **Cosmetics** at the high end (133.7 mins) and **Electronics** at the low end (131.9 mins), indicating that category‑specific handling times have minimal variance.
