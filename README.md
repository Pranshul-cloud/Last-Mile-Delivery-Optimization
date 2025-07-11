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

---

## 📁 5. Project Structure

Organized into three main components: datasets, SQL analysis, and final executive reporting.

📁 [`1_data/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/tree/main/01_data)  
Contains all datasets used in the analysis. Cleaned and raw data are stored separately.  
Includes 100-row sample files for preview. Full datasets are stored but may not preview on GitHub due to size.

- `last_mile_delivery_cleaned.csv`: Full cleaned dataset (not previewable on GitHub)  
- [`1.1_sample_cleaned.csv`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/01_data/1.1_last_mile_delivery_cleaned_sample.csv): Sample of cleaned data  
- `last_mile_delivery_raw.csv`: Full raw dataset (not previewable on GitHub)  
- [`1.2_sample_raw.csv`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/01_data/1.2_last_mile_delivery_raw_sample.csv): Sample of raw data  

📁 [`2_sql_analysis/`](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/tree/main/02_sql_analysis)  
Contains business question definitions and all SQL queries used to explore the data.

- [`2.1_business_questions/`](./2_sql_analysis/2.1_business_questions/): PDF listing key business problems (e.g., traffic, agent delays, zone inefficiencies)  
- [`2.2_sql_queries/`](./2_sql_analysis/2.2_sql_queries/): Final SQL queries used to generate insights via joins, filters, and aggregations

📁 [`3_executive_report/`](./3_executive_report/)  
Includes all reporting deliverables and visuals created for stakeholders.

- [`3.1_dashboard/`](./3_executive_report/3.1_dashboard/): Power BI files used to build key delivery and performance visuals  
- [`3.2_dashboard_overview_screenshots/`](./3_executive_report/3.2_dashboard_overview_screenshots/): Static dashboard screenshots for quick GitHub preview  
- [`3.3_insights_and_recommendations/`](./3_executive_report/3.3_insights_and_recommendations/): Final PDF report with executive summary, insights, and business recommendations
    
---

 ## 🛠️ 6.  Implementation Approach

1. **Data Collection & Preparation**
   - Imported initial delivery dataset from [Kaggle]
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

---
  
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

---

## 🔍 8. Insights & Recommendations 

### 🔑 Key Insights

- **Semi‑Urban Delays:** Deliveries in semi‑urban areas average over **200 mins**, vs. 110 mins in urban and 130 mins in metro regions, indicating significant route and hub inefficiencies.  
- **Weather & Traffic Impact:** Under **cloudy or stormy** conditions combined with heavy traffic, delivery times spike to **180 mins**, highlighting the need for adaptive routing.  
- **Idle‑Time Peaks:** Agent wait times exceed **10.5 mins** around **10 AM** and **2 PM**, revealing scheduling and pickup coordination gaps.  

### 💡 High‑Level Recommendations (with Estimated Impact)

- **Optimize Semi‑Urban Routing**  
  Perform detailed route and hub placement analysis; deploy micro‑fulfillment hubs in delay-heavy zones and re-cluster delivery areas.  
  → _Estimated Impact_: Reduce delivery time in semi-urban zones by **25–35%** (~50–70 mins saved per order), potentially increasing same-day fulfillment rate by **18–22%**.

- **Implement Weather‑Aware Dispatch**  
  Integrate live weather and traffic feeds into routing algorithms; define fallback routes and buffer times in ETA models.  
  → _Estimated Impact_: Reduce weather-related delays by **15–20%**, improving ETA accuracy by **10–12%** and enhancing customer trust.

- **Stagger Pickup Scheduling**  
  Introduce dynamic driver assignment based on order surge trends and staggered pickup slots to flatten idle-time spikes.  
  → _Estimated Impact_: Lower peak idle time by **30–40%**, increasing fleet utilization efficiency and reducing cost-per-delivery by **8–10%**.

_For full details, see [Insights & Recommendations](https://github.com/Pranshul-cloud/Last-Mile-Delivery-Optimization/blob/main/03_executive_report/3.3_Insights_Recommendations_LastMileOptimization.pdf%20(1).pdf)_
