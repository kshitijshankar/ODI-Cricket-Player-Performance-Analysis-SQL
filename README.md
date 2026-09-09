# 🏏 ODI Cricket Player Performance Analysis

> 🧠 **An end-to-end SQL data analytics project that transforms ODI cricket player statistics into meaningful batting, bowling, experience and match-impact insights.**

[SQL Server](https://www.microsoft.com/en-us/sql-server)  
![image](https://img.shields.io/badge/SQL-Analysis-0078D4?logo=microsoftsqlserver&logoColor=white)

[Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server)  
![image](https://img.shields.io/badge/Database-SQL%20Server-CC2927?logo=microsoftsqlserver&logoColor=white)

[Data Analytics](https://github.com/)  
![image](https://img.shields.io/badge/Project-Data%20Analytics-7B61FF)

[GitHub](https://github.com/)  
![image](https://img.shields.io/badge/Portfolio-SQL%20Project-181717?logo=github)

------------------------------------------------------------------------

## 📌 Project at a Glance

| **🧩 Component** | **🔧 Technology / Description** |
|---|---|
| 🏏 Project Type | **SQL Data Analytics / ODI Player Performance Analysis** |
| 📥 Primary Data | **ODI Cricket Player Performance Dataset** |
| 🗄️ Database | **Microsoft SQL Server** |
| 🔎 Query Language | **SQL / T-SQL** |
| 📈 Analysis | **KPI, univariate, bivariate and multivariate analysis** |
| 👤 Records | **1,540 player records** |
| 🏏 Main Table | **dbo.cricsheet** |
| 🧑‍💻 Analysis Tool | **SQL Server Management Studio (SSMS)** |
| 📤 Outputs | **CSV query results, dashboard and project report** |

------------------------------------------------------------------------

## 🎯 Project Goal

**Convert raw ODI cricket player statistics into actionable performance insights through SQL database management, KPI analysis, dimensional analysis, aggregations, CTEs, subqueries, CASE statements and window functions.**

------------------------------------------------------------------------

## ✨ Key Features

- 🏏 **ODI Player Performance KPI Analysis**
- 🏏 **Total Runs & Batting Performance Analysis**
- ⚡ **Strike Rate Analysis**
- 🎯 **Wicket-Taking Performance Analysis**
- 🎳 **Bowling Workload & Runs Conceded Analysis**
- 👤 **Player Role Analysis**
- 🌍 **Team-wise Performance Analysis**
- 🏆 **Top Run Scorer Identification**
- 🎯 **Top Wicket Taker Identification**
- ⚡ **Strike Rate Leader Identification**
- 🏅 **Player of the Match Impact Analysis**
- 📊 **Matches Played & Experience Analysis**
- 🏆 **Wins & Losses Analysis**
- 🔗 **Bivariate Relationship Analysis**
- 🧠 **Multivariate Player Performance Analysis**
- 🪟 **SQL Window Functions for Ranking & Comparison**
- 📤 **Query Results Exported in CSV Format**
- 📊 **Dashboard-oriented Cricket Performance Reporting**

------------------------------------------------------------------------

## 🏗️ Project Architecture

```text
                    ┌──────────────────────────────┐
                    │      ODI Cricket Dataset     │
                    │        Cricsheet.csv         │
                    └──────────────┬───────────────┘
                                   │
                                   ▼
                    ┌──────────────────────────────┐
                    │     SQL Server Database      │
                    │ ODI_Cricket_Performance_DB  │
                    └──────────────┬───────────────┘
                                   │
                                   ▼
                    ┌──────────────────────────────┐
                    │       dbo.cricsheet           │
                    │   Player Performance Table   │
                    └──────────────┬───────────────┘
                                   │
                  ┌────────────────┼────────────────┐
                  │                │                │
                  ▼                ▼                ▼
            KPI Analysis     Univariate        Bivariate
                               Analysis          Analysis
                  │                │                │
                  └────────────────┼────────────────┘
                                   ▼
                         Multivariate Analysis
                                   │
                                   ▼
                         CSV Query Results
                                   │
                                   ▼
                      Dashboard / Project Report
                                   │
                                   ▼
                         Cricket Performance
                              Insights
```

------------------------------------------------------------------------

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| 🗄️ **Microsoft SQL Server** | Database creation and data storage |
| 💻 **SQL Server Management Studio (SSMS)** | SQL development and execution |
| 🔎 **T-SQL** | Data analysis and business logic |
| 📊 **Aggregations** | SUM, AVG, COUNT, MIN, MAX |
| 🧩 **CTEs** | Multi-step analytical queries |
| 🔍 **Subqueries** | Nested analytical calculations |
| 🪟 **Window Functions** | Ranking and comparative analysis |
| 🔀 **CASE WHEN** | Player classification and conditional logic |
| 📤 **CSV** | Query-result export |
| 📝 **GitHub** | Project documentation and portfolio |

------------------------------------------------------------------------

# Table of Contents

1. [📖 Introduction](#1--introduction)
2. [🔎 Project Overview](#2--project-overview)
3. [❗ Problem Statement](#3--problem-statement)
4. [🎯 Objectives](#4--objectives)
5. [📦 Scope of the Project](#5--scope-of-the-project)
6. [📊 Data Source and Data Fields](#6--data-source-and-data-fields)
7. [🧠 Data Understanding](#7--data-understanding)
8. [🏗️ System Architecture](#8--system-architecture)
9. [🧩 Data Model / ER Design](#9--data-model--er-design)
10. [🗄️ Database Design](#10--database-design)
11. [🧹 Data Cleaning and Preparation](#11--data-cleaning-and-preparation)
12. [🏷️ Data Classification](#12--data-classification)
13. [🔎 SQL Analytics](#13--sql-analytics)
14. [📊 Advanced SQL Analysis](#14--advanced-sql-analysis)
15. [⚠️ Performance / Risk Analysis](#15--performance--risk-analysis)
16. [📈 Dashboard Design](#16--dashboard-design)
17. [⚙️ Functional Requirements](#17--functional-requirements)
18. [🛡️ Non-Functional Requirements](#18--non-functional-requirements)
19. [🔄 Project Workflow](#19--project-workflow)
20. [🧪 Testing Strategy](#20--testing-strategy)
21. [⚠️ Limitations](#21--limitations)
22. [🚀 Future Enhancements](#22--future-enhancements)
23. [✅ Conclusion](#23--conclusion)
24. [📁 Suggested Project Folder Structure](#24--suggested-project-folder-structure)
25. [📚 Key Definitions](#25--key-definitions)

------------------------------------------------------------------------

# 1. 📖 Introduction

The **ODI Cricket Player Performance Analysis** project is a SQL-based data analytics solution designed to convert raw One Day International cricket player statistics into structured performance intelligence.

The dataset contains player-level information including **player name, role, team, total runs, strike rate, balls faced, wickets, runs conceded, overs bowled, matches played, wins, losses, Player of the Match awards and average performance**.

The system is designed around a **Microsoft SQL Server database**, with **T-SQL** providing the main analytical layer. The analysis progresses from basic KPIs to univariate, bivariate and multivariate analysis.

The final outputs support **batting analysis, bowling analysis, player rankings, team comparisons, experience analysis, match-impact analysis and portfolio-ready reporting**.

------------------------------------------------------------------------

# 2. 🔎 Project Overview

The project follows an end-to-end SQL analytics pipeline:

1. Load the **ODI Cricket Player Performance Dataset**.
2. Create the **ODI_Cricket_Performance_DB** database.
3. Create the `dbo.cricsheet` player-performance table.
4. Store **1,540 player records** in SQL Server.
5. Run **Phase 1 KPI Analysis**.
6. Run **Phase 2 Univariate Analysis**.
7. Run **Phase 3 Bivariate Analysis**.
8. Run **Phase 4 Multivariate Analysis**.
9. Export analytical query results to **CSV**.
10. Convert analytical outputs into understandable cricket-performance insights.

------------------------------------------------------------------------

# 3. ❗ Problem Statement

Large player-performance datasets contain many statistics, but raw numbers alone do not clearly show who the strongest or most impactful players are.

Important questions include:

- 🏆 Who are the top ODI run scorers?
- ⚡ Which players have the highest strike rates?
- 🎯 Who are the leading wicket takers?
- 🎳 Which players have the highest bowling workload?
- 🏏 Which players show strong overall batting performance?
- 🧑‍🤝‍🧑 How does performance differ by player role?
- 🌍 How does performance vary across teams?
- 📈 Is greater ODI experience associated with stronger performance?
- 🏆 Which players contribute most to winning matches?
- 🥇 Which players receive the most Player of the Match awards?
- 🔗 What relationships exist between runs, strike rate, wickets and matches?
- 🧠 Which players can be identified as elite performers using multiple measures?

The project addresses these questions by using structured **SQL analysis** to convert raw player statistics into clear performance metrics and insights.

------------------------------------------------------------------------

# 4. 🎯 Objectives

- Create a structured **SQL Server database** for ODI player statistics.
- Store and analyze **1,540 player records**.
- Calculate overall player-performance KPIs.
- Analyze batting performance.
- Analyze bowling performance.
- Compare player roles.
- Compare team-level performance.
- Identify top run scorers.
- Identify top wicket takers.
- Identify strike-rate leaders.
- Analyze matches, wins and losses.
- Analyze Player of the Match awards.
- Study relationships between performance variables.
- Use **CTEs, subqueries, CASE and window functions** for advanced analysis.
- Perform multivariate player-performance analysis.
- Generate CSV outputs for reporting and visualization.
- Produce dashboard-ready cricket insights.

------------------------------------------------------------------------

# 5. 📦 Scope of the Project

## **5.1 Included**

- **SQL Server database** creation.
- `cricsheet` player-performance table.
- Player role analysis.
- Team analysis.
- Batting analysis.
- Bowling analysis.
- Runs and strike-rate analysis.
- Wickets and runs-conceded analysis.
- Matches played analysis.
- Wins and losses analysis.
- Player of the Match analysis.
- Player experience analysis.
- Bivariate relationship analysis.
- Multivariate performance analysis.
- Player ranking analysis.
- CSV query-result exports.
- Dashboard-oriented reporting.
- GitHub portfolio documentation.

## **5.2 Optional / Future Extensions**

- Ball-by-ball ODI analysis.
- Match-level database design.
- Venue and opposition analysis.
- Year-wise career analysis.
- Power BI interactive dashboard.
- Automated CSV generation.
- Player comparison dashboard.
- Performance forecasting.
- Predictive analytics / machine learning.
- Cloud SQL deployment.

------------------------------------------------------------------------

# 6. 📊 Data Source and Data Fields

The project uses the **ODI Cricket Player Performance Dataset**, loaded into SQL Server as the `dbo.cricsheet` table.

| Field | Meaning | Analytical Use |
|---|---|---|
| `player_name` | Player name | Player identification and ranking |
| `role` | Player role | Role-based analysis |
| `total_runs` | Total ODI runs | Batting performance |
| `strike_rate` | Batting strike rate | Scoring efficiency |
| `total_balls_faced` | Balls faced | Batting workload |
| `total_wickets_taken` | Total wickets | Bowling performance |
| `total_runs_conceded` | Runs conceded | Bowling efficiency |
| `total_overs_bowled` | Overs bowled | Bowling workload |
| `total_matches_played` | Matches played | Experience |
| `matches_played_as_batter` | Matches as batter | Batting participation |
| `matches_played_as_bowler` | Matches as bowler | Bowling participation |
| `matches_won` | Matches won | Match success |
| `matches_lost` | Matches lost | Match outcome analysis |
| `player_of_match_awards` | Player of Match awards | Player impact |
| `team` | Team | Team comparison |
| `average` | Player average | Batting performance |

------------------------------------------------------------------------

# 7. 🧠 Data Understanding

The dataset is a **player-level cricket performance dataset**.

Each row represents a player's aggregated ODI performance rather than an individual ball or match event.

The main analytical categories are:

```text
🏏 Player Information
        ↓
👤 Player Name
🎭 Role
🌍 Team

        ↓

🏏 Batting Metrics
        ↓
💰 Total Runs
⚡ Strike Rate
🏃 Balls Faced
📊 Average

        ↓

🎳 Bowling Metrics
        ↓
🎯 Wickets
💥 Runs Conceded
📦 Overs Bowled

        ↓

🏆 Match & Impact Metrics
        ↓
📅 Matches Played
✅ Matches Won
❌ Matches Lost
🏅 Player of Match Awards
```

This structure makes the dataset suitable for ranking, aggregation, comparison and performance-score analysis.

------------------------------------------------------------------------

# 8. 🏗️ System Architecture

```text
┌─────────────────────────────┐
│     ODI Cricket Dataset     │
│        Cricsheet.csv        │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│    SQL Server Database      │
│ ODI_Cricket_Performance_DB  │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│       dbo.cricsheet         │
│  Player Performance Data    │
└──────────────┬──────────────┘
               │
       ┌───────┼────────┐
       ▼       ▼        ▼
     KPI   Univariate  Bivariate
       │       │        │
       └───────┼────────┘
               ▼
       Multivariate Analysis
               │
               ▼
        CSV Query Results
               │
               ▼
      Dashboard / PDF Report
               │
               ▼
       Performance Insights
```

------------------------------------------------------------------------

# 9. 🧩 Data Model / ER Design

The current project uses a **single central analytical table** because the supplied dataset is already aggregated at player level.

```text
┌──────────────────────────────────────────────────┐
│                  dbo.cricsheet                    │
├──────────────────────────────────────────────────┤
│ player_name                 NVARCHAR              │
│ role                        NVARCHAR              │
│ team                        NVARCHAR              │
│ total_runs                  INT                   │
│ strike_rate                 DECIMAL              │
│ total_balls_faced           INT                   │
│ total_wickets_taken         INT                   │
│ total_runs_conceded         INT                   │
│ total_overs_bowled          INT                   │
│ total_matches_played        INT                   │
│ matches_played_as_batter    INT                   │
│ matches_played_as_bowler    INT                   │
│ matches_won                 INT                   │
│ matches_lost                INT                   │
│ player_of_match_awards      INT                   │
│ average                     DECIMAL              │
└──────────────────────────────────────────────────┘
                         │
                         ▼
              SQL Analytical Queries
                         │
        ┌────────────────┼────────────────┐
        ▼                ▼                ▼
   Batting Insights  Bowling Insights  Match Impact
```

### 🔑 Model Interpretation

- 👤 **Player attributes** identify the player, role and team.
- 🏏 **Batting measures** represent runs, strike rate, balls faced and average.
- 🎳 **Bowling measures** represent wickets, runs conceded and overs.
- 🏆 **Match measures** represent matches, wins, losses and Player of the Match awards.
- 📊 SQL queries transform these fields into analytical outputs.

------------------------------------------------------------------------

# 10. 🗄️ Database Design

The SQL Server database is:

```text
ODI_Cricket_Performance_DB
```

The primary analysis table is:

```text
dbo.cricsheet
```

The database script creates the database and table and loads the player-performance records.

### Database Layer

```text
ODI_Cricket_Performance_DB
            │
            └── dbo.cricsheet
                    │
                    ├── Player Information
                    ├── Batting Metrics
                    ├── Bowling Metrics
                    └── Match Impact Metrics
```

The database is designed to be simple, reproducible and easy for another user to execute in **SQL Server Management Studio**.

------------------------------------------------------------------------

# 11. 🧹 Data Cleaning and Preparation

Before analysis, the dataset should be validated for:

- 🔎 Correct column names.
- 🔢 Correct numeric data types.
- 👤 Player-name consistency.
- 🌍 Team and role consistency.
- 📊 Missing values in optional metrics.
- 🧮 Valid performance values.
- 📋 Correct record count.
- 🗄️ Successful SQL table creation.
- 🔄 Reproducible database loading.

The database script also handles missing `average` values using SQL `NULL` values where appropriate.

------------------------------------------------------------------------

# 12. 🏷️ Data Classification

| Category | Fields |
|---|---|
| 👤 **Player Dimension** | `player_name` |
| 🎭 **Role Dimension** | `role` |
| 🌍 **Team Dimension** | `team` |
| 🏏 **Batting Metrics** | `total_runs`, `strike_rate`, `total_balls_faced`, `average` |
| 🎳 **Bowling Metrics** | `total_wickets_taken`, `total_runs_conceded`, `total_overs_bowled` |
| 🏆 **Match Metrics** | `total_matches_played`, `matches_won`, `matches_lost` |
| 🥇 **Impact Metrics** | `player_of_match_awards` |

This classification makes it easier to understand which fields are used for grouping, measurement and performance analysis.

------------------------------------------------------------------------

# 13. 🔎 SQL Analytics

The SQL analysis is divided into four major phases:

## 1️⃣ KPI Analysis

Focuses on high-level performance indicators such as:

- 👤 Total unique players
- 🏏 Total runs
- 🎯 Total wickets
- 📅 Total matches
- ⚡ Average strike rate
- 📊 Average performance
- 🏆 Total wins
- 🥇 Player of the Match awards

## 2️⃣ Univariate Analysis

Analyzes one variable at a time:

- 🎭 Player role distribution
- 🌍 Team distribution
- 🏏 Runs distribution
- ⚡ Strike-rate distribution
- 🎯 Wickets distribution
- 📅 Matches played
- 🏆 Wins and losses
- 🥇 Player of the Match awards
- 🎳 Bowling participation

## 3️⃣ Bivariate Analysis

Studies relationships between two variables:

- 🏏 Runs vs Strike Rate
- 🏏 Runs vs Balls Faced
- 🎯 Wickets vs Runs Conceded
- 🎳 Wickets vs Overs Bowled
- 📅 Matches vs Runs
- 📅 Matches vs Wickets
- 🏆 Wins vs Runs
- 🏆 Wins vs Wickets
- 🥇 Awards vs Runs
- 🥇 Awards vs Wickets
- 📈 Experience vs Strike Rate
- 📊 Experience vs Average

## 4️⃣ Multivariate Analysis

Combines multiple variables:

- 🏆 Overall player-performance ranking
- 🏏 Combined batting performance
- 🎳 Combined bowling performance
- 🌍 Team and role comparison
- 🧠 Experience and success analysis
- 🥇 Player impact analysis
- ⭐ Elite-player identification

------------------------------------------------------------------------

# 14. 📊 Advanced SQL Analysis

The project demonstrates practical SQL techniques including:

### 🔹 Aggregations

```sql
SUM()
AVG()
COUNT()
MIN()
MAX()
```

### 🔹 Grouping

```sql
GROUP BY
```

### 🔹 Conditional Logic

```sql
CASE
    WHEN ...
    THEN ...
    ELSE ...
END
```

### 🔹 CTEs

```sql
WITH PlayerStats AS
(
    SELECT ...
)
SELECT *
FROM PlayerStats;
```

### 🔹 Window Functions

```sql
ROW_NUMBER()
RANK()
DENSE_RANK()
PARTITION BY
```

### 🔹 Subqueries

Used when one analytical result is required as an input to another query.

These techniques make the project useful as a practical demonstration of intermediate-to-advanced SQL analytics.

------------------------------------------------------------------------

# 15. ⚠️ Performance / Risk Analysis

The project can also be used to identify performance concentration and risk indicators.

| Indicator | Meaning |
|---|---|
| 🏏 **Run Concentration** | Dependence on a small number of high-scoring players |
| 🎯 **Wicket Concentration** | Dependence on leading wicket takers |
| 👥 **Role Dependency** | Performance concentration within specific player roles |
| 🌍 **Team Dependency** | Differences in performance across teams |
| 📅 **Experience Effect** | Relationship between matches played and performance |
| 🥇 **Match Impact** | Contribution indicated by wins and awards |
| ⚡ **Batting Efficiency** | Relationship between runs, balls faced and strike rate |
| 🎳 **Bowling Efficiency** | Relationship between wickets, overs and runs conceded |

These indicators help move the project beyond simple rankings toward meaningful performance interpretation.

------------------------------------------------------------------------

# 16. 📈 Dashboard Design

The project dashboard/report is designed to communicate cricket-performance insights visually.

Suggested visual components include:

- 🏏 **Top Run Scorers**
- ⚡ **Strike Rate Leaders**
- 🎯 **Top Wicket Takers**
- 🌍 **Team-wise Performance**
- 🎭 **Performance by Player Role**
- 📅 **Matches Played**
- 🏆 **Wins & Losses**
- 🥇 **Player of the Match Awards**
- 🔗 **Runs vs Strike Rate**
- 🎳 **Wickets vs Bowling Workload**
- 📊 **Overall Player Performance**
- 💡 **Key Performance Insights**

### Dashboard Purpose

The dashboard/report converts SQL outputs into:

- KPI cards
- Player rankings
- Comparison charts
- Relationship charts
- Performance summaries
- Cricket insights

> 💡 **Note:** The SQL database and query outputs should be treated as the source of truth for the current repository.

------------------------------------------------------------------------

# 17. ⚙️ Functional Requirements

The system shall:

1. Create the SQL Server database.
2. Create the `cricsheet` table.
3. Store ODI player-performance records.
4. Calculate batting KPIs.
5. Calculate bowling KPIs.
6. Analyze player roles.
7. Analyze team performance.
8. Calculate matches played.
9. Analyze wins and losses.
10. Analyze Player of the Match awards.
11. Identify top performers.
12. Perform bivariate analysis.
13. Perform multivariate analysis.
14. Apply advanced SQL techniques.
15. Export query results to CSV.
16. Provide data for dashboard/reporting.

------------------------------------------------------------------------

# 18. 🛡️ Non-Functional Requirements

### Accuracy

All calculations should be reproducible directly from the stored SQL data.

### Performance

SQL aggregations and analytical queries should remain efficient for the dataset size.

### Usability

Query names, analysis phases and CSV outputs should be easy to understand.

### Maintainability

Database creation and analytical queries are separated into:

```text
Database/
Queries/
```

### Scalability

The design can later be extended with:

- Match data
- Ball-by-ball data
- Venue data
- Opposition data
- Career-period data
- Additional performance metrics

### Reliability

The database script allows the project to be rebuilt from the supplied SQL file and dataset.

------------------------------------------------------------------------

# 19. 🔄 Project Workflow

```text
+------------------------------+
| 1. Source Dataset            |
| ODI Player Performance Data  |
+--------------+---------------+
               |
               v
+------------------------------+
| 2. Database Setup            |
| Create SQL Server Database   |
+--------------+---------------+
               |
               v
+------------------------------+
| 3. Table Creation            |
| dbo.cricsheet                |
+--------------+---------------+
               |
               v
+------------------------------+
| 4. Data Loading              |
| 1,540 Player Records         |
+--------------+---------------+
               |
               v
+------------------------------+
| 5. KPI Analysis              |
| Overall Performance          |
+--------------+---------------+
               |
               v
+------------------------------+
| 6. Univariate Analysis       |
| Single-Variable Analysis     |
+--------------+---------------+
               |
               v
+------------------------------+
| 7. Bivariate Analysis        |
| Variable Relationships       |
+--------------+---------------+
               |
               v
+------------------------------+
| 8. Multivariate Analysis     |
| Combined Performance         |
+--------------+---------------+
               |
               v
+------------------------------+
| 9. CSV Results               |
| Query Output Files           |
+--------------+---------------+
               |
               v
+------------------------------+
| 10. Dashboard / Report       |
| Cricket Performance Insights |
+------------------------------+
```

------------------------------------------------------------------------

# 20. 🧪 Testing Strategy

| Test | Expected Result |
|---|---|
| 🗄️ Database connection | SQL Server database opens successfully |
| 🏗️ Database creation | `ODI_Cricket_Performance_DB` is created |
| 📋 Table creation | `dbo.cricsheet` is created without errors |
| 📥 Data insertion | Player records are stored |
| 🔎 Data retrieval | `SELECT` queries return expected records |
| 🏏 Run calculation | `SUM(total_runs)` returns total runs |
| 🎯 Wicket calculation | `SUM(total_wickets_taken)` returns total wickets |
| ⚡ Strike-rate analysis | Strike-rate calculations execute correctly |
| 👤 Player grouping | Player-level metrics are generated |
| 🌍 Team grouping | Team-level metrics are generated |
| 🎭 Role grouping | Role-level metrics are generated |
| 🏆 Ranking | Top-player queries return ranked results |
| 🪟 Window functions | Ranking/comparison queries execute |
| 📤 CSV export | Query outputs export successfully |
| 📊 Dashboard outputs | Results can be visualized correctly |

------------------------------------------------------------------------

# 21. ⚠️ Limitations

- The current database is based on an **aggregated player-performance dataset**.
- The project does not currently use complete ball-by-ball ODI event data.
- Match-level contextual information is limited.
- Venue and opposition analysis requires additional data.
- The current model is centered around a single analytical table.
- Predictive analytics requires additional historical and contextual data.
- Causal conclusions about match outcomes should not be drawn solely from these aggregated statistics.
- Team, role and player statistics depend on the quality and definitions of the source dataset.

------------------------------------------------------------------------

# 22. 🚀 Future Enhancements

The project can be extended with:

- 🏏 **Ball-by-ball ODI analysis**
- 📅 **Year-wise career performance**
- 🌍 **Opponent-wise analysis**
- 🏟️ **Venue-wise performance**
- ⚡ **Powerplay / middle-over / death-over analysis**
- 🧑‍🤝‍🧑 **Player comparison dashboard**
- 📊 **Power BI interactive dashboard**
- 📈 **Performance forecasting**
- 🤖 **Machine learning / predictive analytics**
- 🔄 **Automated CSV generation**
- ☁️ **Cloud SQL deployment**
- 🗄️ **Normalized multi-table data model**
- 🔴 **Real-time cricket analytics**
- 📧 **Automated performance reports**

------------------------------------------------------------------------

# 23. ✅ Conclusion

The **ODI Cricket Player Performance Analysis** project provides a practical framework for transforming raw cricket player statistics into structured performance intelligence.

The **SQL Server database** provides a reliable foundation for storing the player data, while the **T-SQL analysis** converts those records into KPIs, rankings, relationships, performance classifications and multidimensional cricket insights.

The project demonstrates how SQL can progress from:

> **Raw Cricket Data → Database → KPIs → Univariate Analysis → Bivariate Analysis → Multivariate Analysis → CSV Results → Dashboard / Report → Performance Insights**

The analysis uses practical SQL techniques including **aggregations, `GROUP BY`, `CASE`, CTEs, subqueries, `ROW_NUMBER()`, ranking functions and `PARTITION BY`**.

This makes the project suitable for demonstrating **SQL, data analytics, database management, analytical thinking and problem-solving skills** in a GitHub portfolio.

------------------------------------------------------------------------

# 24. 📁 Suggested Project Folder Structure

```text
ODI-Cricket-Player-Performance-Analysis/
│
├── 📁 Database/
│   └── ODI_Cricket_Performance_Database.sql
│
├── 📁 Queries/
│   └── SQL QUERY.sql
│
├── 📁 Dataset/
│   └── Cricsheet.csv
│
├── 📁 Results/
│   ├── 📁 Phase_1_KPI/
│   │   ├── P01_Q01_Total_Unique_Players.csv
│   │   ├── P01_Q02_Total_Matches_Played.csv
│   │   └── ...
│   │
│   ├── 📁 Phase_2_Univariate/
│   │   ├── P02_Q01_Player_Role_Distribution.csv
│   │   └── ...
│   │
│   ├── 📁 Phase_3_Bivariate/
│   │   ├── P03_Q01_Runs_Vs_Strike_Rate.csv
│   │   └── ...
│   │
│   └── 📁 Phase_4_Multivariate/
│       ├── P04_Q01_Overall_Player_Performance.csv
│       └── ...
│
├── 📁 Dashboard/
│   └── Dashboard.png
│
├── 📁 Reports/
│   └── ODI_Cricket_Player_Performance_SQL_Project_Report.pdf
│
├── 📄 README.md
└── 📄 LICENSE
```

------------------------------------------------------------------------

# 25. 📚 Key Definitions

| Term | Definition |
|---|---|
| 🏏 **ODI** | One Day International cricket format |
| 👤 **Player** | Individual cricket player represented in the dataset |
| 🎭 **Role** | Player classification such as batting/bowling role |
| 🌍 **Team** | Team associated with the player |
| 💰 **Total Runs** | Total ODI runs scored |
| ⚡ **Strike Rate** | Batting scoring-rate measure |
| 🎯 **Wickets** | Total wickets taken by a player |
| 🎳 **Runs Conceded** | Runs conceded while bowling |
| 📦 **Overs Bowled** | Total bowling workload |
| 📅 **Matches Played** | Number of ODI matches represented |
| ✅ **Matches Won** | Matches associated with wins |
| ❌ **Matches Lost** | Matches associated with losses |
| 🥇 **Player of the Match** | Award indicating significant match impact |
| 📊 **KPI** | Key Performance Indicator used to summarize performance |
| 📈 **Univariate Analysis** | Analysis of one variable at a time |
| 🔗 **Bivariate Analysis** | Analysis of the relationship between two variables |
| 🧠 **Multivariate Analysis** | Analysis involving multiple variables |
| 🪟 **Window Function** | SQL function used for ranking and analytical calculations |
| 🧩 **CTE** | Common Table Expression used to structure SQL logic |

------------------------------------------------------------------------

## ⭐ Project Highlights

```text
🏏 Cricket Data
      ↓
🗄️ SQL Server
      ↓
🔎 T-SQL Analysis
      ↓
📊 KPI Analysis
      ↓
📈 Univariate Analysis
      ↓
🔗 Bivariate Analysis
      ↓
🧠 Multivariate Analysis
      ↓
📤 CSV Results
      ↓
📊 Dashboard / Report
      ↓
💡 Cricket Performance Insights
```

### 🚀 Built with SQL • Data Analytics • Cricket Performance Insights

> ⭐ If you find this project useful, consider giving the repository a star!
