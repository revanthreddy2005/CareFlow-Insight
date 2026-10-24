# CareFlow Insight — Healthcare Operations Analytics

## Overview
CareFlow Insight is a portfolio project that analyzes a **simulated dataset of 500 healthcare claims** to investigate processing delays, documentation bottlenecks, rework, and denial patterns.

The project demonstrates data validation, SQL-based analysis, interactive dashboard development, and actionable process-improvement recommendations.

## Tools Used
- **Microsoft Excel:** Data validation and quality checks
- **MySQL:** SQL queries, aggregations, and operational analysis
- **Power BI:** Interactive dashboard and KPI visualization

## Business Objectives
- Identify teams with longer claim turnaround times.
- Compare processing times across workflow stages.
- Investigate the relationship between rework and turnaround time.
- Identify the most frequent denial reasons.
- Recommend measurable process improvements.

## Dataset
The dataset contains 500 synthetic claims with fields including:
- Claim ID and received date
- Eligibility, documentation, and adjudication hours
- Rework count and claim amount
- Claim type, processing team, and final status
- Denial reason and total turnaround time

## Analysis Performed
- Validated claim IDs, required fields, and turnaround-time calculations.
- Compared average turnaround time and stage durations by team.
- Investigated turnaround time by rework count.
- Compared inpatient and outpatient claims.
- Analyzed denial reasons and checked for missing reasons on denied claims.
- Created Power BI KPI cards, charts, and interactive filters.

## Key Findings
The simulated dataset indicated:
- Team B had the highest average turnaround time in the team comparison.
- Documentation review was an important area for further investigation.
- Missing documentation was the most frequent recorded denial reason.
- Inpatient claims had a higher average turnaround time than outpatient claims.
- Claims with rework generally showed longer turnaround times, although some high-rework groups were small.

## Recommendations
- Introduce a documentation completeness checklist before claim submission.
- Review Team B's workflow to identify potential bottlenecks.
- Investigate common rework triggers and recurring documentation issues.
- Track turnaround time, rework frequency, and documentation-related denials before and after process changes.

## Project Files
- `CareFlow_Insight.xlsx` — Dataset, validation checks, and findings template
- `CareFlow_Insight_Analysis.sql` — SQL analysis queries
- `CareFlow_Insight.pbix` — Power BI dashboard

## Limitations
All records are **synthetic and intended for portfolio practice**. The findings are illustrative, do not establish causation, and do not represent actual Optum data or operational performance.

## Author
Revanth Reddy Bommala
saireddybommala2005@gmail.com

**Note on Data:** 
This project uses a synthetically generated dataset of 500 healthcare claims for demonstration and analytical practice. It contains no real patient information and is not affiliated with or based on actual operational data. All findings and recommendations are illustrative.
