CREATE DATABASE supply_chain_analysis;

USE supply_chain_analysis;

CREATE TABLE shipments (
Shipment_ID VARCHAR(20),
Date DATE,
Origin_Port VARCHAR(100),
Destination_Port VARCHAR(100),
Transport_Mode VARCHAR(50),
Product_Category VARCHAR(100),
Distance_km FLOAT,
Weight_MT FLOAT,
Fuel_Price_Index FLOAT,
Geopolitical_Risk_Score FLOAT,
Weather_Condition VARCHAR(50),
Carrier_Reliability_Score FLOAT,
Lead_Time_Days FLOAT,
Disruption_Occurred INT
);
drop table global_supply_chain_risk_2026;
SELECT COUNT(*) 
FROM shipments;
SELECT * FROM shipments;

-- Disruption Rate
SELECT 
COUNT(*) AS total_shipments,
SUM(Disruption_Occurred) AS disrupted,
SUM(Disruption_Occurred)/COUNT(*)*100 AS disruption_rate
FROM shipments;

-- Transport Mode Analysis
SELECT 
Transport_Mode,
COUNT(*) AS shipments,
AVG(Lead_Time_Days) AS avg_delivery_time,
SUM(Disruption_Occurred)/COUNT(*)*100 AS disruption_rate
FROM shipments

-- Weather Impact Analysis
SELECT  Transport_Mode,
    COUNT(*) AS shipments,
    AVG(Lead_Time_Days) AS avg_delivery_time,
    SUM(Disruption_Occurred) / COUNT(*) * 100 AS disruption_rate
FROM shipments
GROUP BY Transport_Mode;

-- Geopolitical Risk Analysis
SELECT 
CASE 
WHEN Geopolitical_Risk_Score < 3 THEN 'Low Risk'
WHEN Geopolitical_Risk_Score < 6 THEN 'Medium Risk'
ELSE 'High Risk'
END AS risk_level,
COUNT(*) AS shipments,
AVG(Lead_Time_Days) AS avg_lead_time,
SUM(Disruption_Occurred)/COUNT(*)*100 AS disruption_rate
FROM shipments
GROUP BY risk_level;

-- Carrier Performance
SELECT 
Carrier_Reliability_Score,
AVG(Lead_Time_Days) AS avg_lead_time,
SUM(Disruption_Occurred)/COUNT(*)*100 AS disruption_rate
FROM shipments
GROUP BY Carrier_Reliability_Score
ORDER BY Carrier_Reliability_Score DESC;

-- Route Analysis
SELECT 
Origin_Port,
Destination_Port,
COUNT(*) AS shipments,
SUM(Disruption_Occurred) AS disruptions
FROM shipments
GROUP BY Origin_Port, Destination_Port
ORDER BY disruptions DESC
LIMIT 10;

-- Lead Time Analysis
SELECT 
Product_Category,
AVG(Lead_Time_Days) AS avg_delivery_time
FROM shipments
GROUP BY Product_Category
ORDER BY avg_delivery_time DESC;

-- Distance Impact
SELECT 
CASE
WHEN Distance_km < 2000 THEN 'Short'
WHEN Distance_km < 8000 THEN 'Medium'
ELSE 'Long'
END AS distance_category,
AVG(Lead_Time_Days) AS avg_lead_time,
SUM(Disruption_Occurred)/COUNT(*)*100 AS disruption_rate
FROM shipments
GROUP BY distance_category;

