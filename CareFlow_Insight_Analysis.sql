CREATE DATABASE IF NOT EXISTS careflow_insight;
USE careflow_insight;

USE careflow_insight;


USE careflow_insight;

SHOW TABLES;

SELECT COUNT(*) FROM claims_import;

SELECT * FROM careflow_insight.claims_import LIMIT 5;

SHOW VARIABLES LIKE 'secure_file_priv';

USE careflow_insight;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CareFlow_Claims.csv'
INTO TABLE claims_import
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

USE careflow_insight;

SELECT COUNT(*) AS total_claims
FROM claims_import;

SELECT
    Team,
    COUNT(*) AS Total_Claims,
    ROUND(AVG(Eligibility_Hours), 2) AS Avg_Eligibility_Hours,
    ROUND(AVG(Documentation_Hours), 2) AS Avg_Documentation_Hours,
    ROUND(AVG(Adjudication_Hours), 2) AS Avg_Adjudication_Hours,
    ROUND(AVG(Total_TAT_Hours), 2) AS Avg_TAT_Hours
FROM claims_import
GROUP BY Team
ORDER BY Avg_TAT_Hours DESC;

SELECT
    Rework_Count,
    COUNT(*) AS Total_Claims,
    ROUND(AVG(Total_TAT_Hours), 2) AS Avg_TAT_Hours
FROM claims_import
GROUP BY Rework_Count
ORDER BY Rework_Count;

SELECT
    Denial_Reason,
    COUNT(*) AS Denied_Claims
FROM claims_import
WHERE Final_Status = 'Denied'
GROUP BY Denial_Reason
ORDER BY Denied_Claims DESC;

SELECT
    Claim_Type,
    COUNT(*) AS Total_Claims,
    ROUND(AVG(Total_TAT_Hours), 2) AS Avg_TAT_Hours,
    SUM(CASE WHEN Rework_Count > 0 THEN 1 ELSE 0 END) AS Claims_With_Rework
FROM claims_import
GROUP BY Claim_Type
ORDER BY Avg_TAT_Hours DESC;

SELECT
    COUNT(*) AS Total_Denied,
    SUM(CASE WHEN Denial_Reason IS NULL OR TRIM(Denial_Reason) = ''
        THEN 1 ELSE 0 END) AS Missing_Denial_Reasons
FROM claims_import
WHERE Final_Status = 'Denied';