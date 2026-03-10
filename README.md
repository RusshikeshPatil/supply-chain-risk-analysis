# Global Supply Chain Risk & Logistics Performance Analysis

## Overview
This project analyzes global shipment data to understand **logistics performance, disruption patterns, and operational risks**.  
The analysis was conducted using **SQL for data exploration** and **Power BI for visualization**.

The dashboard helps identify factors affecting **delivery lead time, shipment disruptions, and transport efficiency**.

---

## Tools Used

- SQL (MySQL)
- Power BI
- Power Query
- DAX
- Data Visualization

---

## Dataset

The dataset contains **5000 global shipment records** with logistics and operational attributes.

### Key Columns

| Column | Description |
|------|-------------|
| Shipment_ID | Unique shipment identifier |
| Date | Shipment date |
| Origin_Port | Shipment origin |
| Destination_Port | Shipment destination |
| Transport_Mode | Air, Sea, Rail, Road |
| Product_Category | Product type |
| Distance_km | Shipment distance |
| Weight_MT | Shipment weight |
| Fuel_Price_Index | Fuel price indicator |
| Geopolitical_Risk_Score | Regional risk score |
| Weather_Condition | Weather during shipment |
| Carrier_Reliability_Score | Carrier reliability |
| Lead_Time_Days | Delivery time |
| Disruption_Occurred | Shipment disruption indicator |

---

## Key KPIs

The dashboard tracks the following performance metrics:

- Total Shipments  
- Total Shipment Disruptions  
- Average Delivery Lead Time  
- Shipment Disruption Rate  
- Average Carrier Reliability Score  
- On-Time Delivery Rate  

---

## Dashboard Insights

Key findings from the analysis:

- **Sea transport shows the highest delivery lead times**
- **Weather conditions significantly influence shipment disruptions**
- **High geopolitical risk regions experience longer delivery delays**
- **Air transport provides the fastest delivery even for long distances**

---

## Dashboard Preview




Dashboard_images/Main Dashboard.png
```

Example:

[Dashboard](Dashboard_images/Main Dashboard.png)

---

## SQL Example Queries

```sql
SELECT COUNT(*) 
FROM shipments;

SELECT Transport_Mode, COUNT(*) AS total_shipments
FROM shipments
GROUP BY Transport_Mode;
```

---

## Project Structure

```
supply-chain-risk-analysis
│
├── data
│   global_supply_chain_risk_2026.csv
│
├── sql
│   analysis_queries.sql
│
├── powerbi
│   supply_chain_dashboard.pbix
│
├── dashboard_images
│   dashboard.png
│
└── README.md
```

---

## Skills Demonstrated

- SQL Data Analysis  
- Power BI Dashboard Development  
- Data Cleaning & Transformation  
- Business Intelligence Reporting  
- Data Visualization  
- Insight Generation  

---

## Author

**Rushikesh Patil**

Data Analyst | SQL | Power BI | Data Visualization

---

## Portfolio Purpose

This project was created as part of a **data analytics portfolio to demonstrate SQL analysis and business intelligence dashboard development skills.**
