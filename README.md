# 🏏 ODI Cricket Player Performance Analysis | SQL

## 📌 Project Overview

This project focuses on analyzing **One Day International (ODI) cricket player performance** using **Microsoft SQL Server**.

The objective is to transform raw cricket performance data into meaningful analytical insights by evaluating player statistics such as **runs, strike rate, wickets, matches, wins, losses, Player of the Match awards, batting participation, and bowling participation**.

The project demonstrates how SQL can be used to perform structured **exploratory data analysis (EDA)** and answer practical sports-performance questions.

---

## 🎯 Business Objective

The primary objective is to analyze ODI cricket players and identify patterns in:

* 🏏 Batting performance
* ⚡ Batting strike rate
* 🎯 Bowling performance
* 🏆 Match-winning contribution
* 👤 Player roles
* 📊 Player experience
* 🥇 Player of the Match performance
* 🌍 Team representation
* 📈 Overall player performance

The analysis is structured to help answer questions such as:

> **Who are the most impactful ODI players, and what statistical patterns differentiate players based on their batting, bowling, experience, and match-winning contribution?**

---

## 📂 Dataset

**Dataset:** ODI Cricket Player Performance Dataset

**Records:** 1,540 players

**Database:** Microsoft SQL Server

**Table:** `cricsheet`

** Dataset Link: ** https://www.kaggle.com/datasets/decentralized/cricsheet-odi-cricket-data?utm_source=chatgpt.com

### Dataset Columns

| Column                     | Description                       |
| -------------------------- | --------------------------------- |
| `player_name`              | Name of the cricket player        |
| `role`                     | Player's primary role             |
| `team`                     | Cricket team represented          |
| `total_runs`               | Total ODI runs scored             |
| `strike_rate`              | Batting strike rate               |
| `total_balls_faced`        | Total balls faced                 |
| `total_wickets_taken`      | Total wickets taken               |
| `total_runs_conceded`      | Total runs conceded while bowling |
| `total_overs_bowled`       | Total overs bowled                |
| `total_matches_played`     | Total ODI matches played          |
| `matches_played_as_batter` | Matches played as a batter        |
| `matches_played_as_bowler` | Matches played as a bowler        |
| `matches_won`              | Matches won                       |
| `matches_lost`             | Matches lost                      |
| `player_of_match_awards`   | Player of the Match awards        |
| `average`                  | Player performance average metric |

---

# 🛠️ Tools & Technologies

* **Microsoft SQL Server**
* **SQL Server Management Studio (SSMS)**
* SQL
* CTEs
* Aggregate Functions
* `GROUP BY`
* `ORDER BY`
* `CASE WHEN`
* Window/Analytical Functions
* Subqueries
* Conditional Aggregation
* Exploratory Data Analysis

---

# 🔍 Analytical Framework

The project is divided into **four analytical phases**.

```text
                    ODI CRICKET DATA
                           │
                           ▼
                  DATA EXPLORATION
                           │
          ┌────────────────┼────────────────┐
          ▼                ▼                ▼
       KPIs           UNIVARIATE         BIVARIATE
          │                │                │
          └────────────────┼────────────────┘
                           ▼
                    MULTIVARIATE
                           │
                           ▼
                  PLAYER INSIGHTS
```

---

# 📊 Phase 1 — KPI Analysis

The first phase establishes the overall performance of the dataset through **15 KPIs**.

### Key KPIs

1. Total Unique Players
2. Total Matches Played
3. Total Runs Scored
4. Average Runs per Player
5. Highest Run Scorer
6. Overall Average Strike Rate
7. Highest Strike Rate
8. Total Wickets Taken
9. Highest Wicket Taker
10. Total Matches Won
11. Overall Win Percentage
12. Total Player of the Match Awards
13. Highest Player of the Match Awards
14. Average Matches per Player
15. Overall Average Player Performance

### Example SQL

```sql
-- Highest Run Scorer

SELECT TOP 1
    player_name,
    total_runs AS Highest_Total_Runs
FROM cricsheet
ORDER BY total_runs DESC;
```

This type of analysis helps establish the **overall scale and performance profile** of the dataset before deeper analysis.

---

# 📈 Phase 2 — Univariate Analysis

The second phase analyzes individual variables independently.

A total of **15 univariate analyses** are performed.

### Areas Covered

* Player Role Distribution
* Team-wise Player Distribution
* Total Runs Distribution
* Strike Rate Distribution
* Wicket Distribution
* Match Experience Distribution
* Player of the Match Distribution
* Balls Faced Distribution
* Overs Bowled Distribution
* Matches Won Distribution
* Matches Lost Distribution
* Player Performance Average
* Runs Conceded Distribution
* Batting Participation
* Bowling Participation

### Example

Players are categorized into meaningful performance groups using `CASE WHEN`.

```sql
SELECT
    CASE
        WHEN total_wickets_taken = 0 THEN 'No Wickets'
        WHEN total_wickets_taken BETWEEN 1 AND 49 THEN '1 - 49 Wickets'
        WHEN total_wickets_taken BETWEEN 50 AND 99 THEN '50 - 99 Wickets'
        WHEN total_wickets_taken BETWEEN 100 AND 199 THEN '100 - 199 Wickets'
        ELSE '200+ Wickets'
    END AS Wicket_Category,

    COUNT(*) AS Players_Count

FROM cricsheet

GROUP BY
    CASE
        WHEN total_wickets_taken = 0 THEN 'No Wickets'
        WHEN total_wickets_taken BETWEEN 1 AND 49 THEN '1 - 49 Wickets'
        WHEN total_wickets_taken BETWEEN 50 AND 99 THEN '50 - 99 Wickets'
        WHEN total_wickets_taken BETWEEN 100 AND 199 THEN '100 - 199 Wickets'
        ELSE '200+ Wickets'
    END

ORDER BY Players_Count DESC;
```

This approach converts raw numerical values into **business-friendly performance segments**.

---

# 🔗 Phase 3 — Bivariate Analysis

The third phase studies relationships between **two variables** to identify correlations and performance patterns.

Examples include:

* Runs vs Strike Rate
* Runs vs Matches Played
* Runs vs Balls Faced
* Wickets vs Overs Bowled
* Wickets vs Runs Conceded
* Matches Played vs Matches Won
* Matches Played vs Matches Lost
* Matches Won vs Player of the Match Awards
* Runs vs Player of the Match Awards
* Strike Rate vs Average
* Batting Participation vs Total Runs
* Bowling Participation vs Total Wickets
* Team vs Player Performance
* Role vs Batting Performance
* Role vs Bowling Performance

### Analytical Objective

The purpose of bivariate analysis is to understand questions such as:

> Does greater match experience generally correspond to higher run production?

> Do players with more Player of the Match awards also contribute to more match wins?

> How does bowling workload relate to wickets taken?

---

# 🧠 Phase 4 — Multivariate Analysis

The final phase examines multiple variables simultaneously to understand more complex player-performance relationships.

Examples of analytical dimensions include:

```text
Player
  │
  ├── Role
  ├── Team
  ├── Runs
  ├── Strike Rate
  ├── Wickets
  ├── Matches
  ├── Wins
  ├── Losses
  ├── Player of Match Awards
  └── Performance Average
```

This phase helps move the project beyond simple descriptive statistics and toward **multi-dimensional player profiling**.

---

# 💡 Key Analytical Questions

The project attempts to answer practical questions such as:

### Batting

* Who are the highest run scorers?
* Which players have the highest strike rates?
* How does batting experience relate to run production?
* How are players distributed across different run categories?

### Bowling

* Who are the leading wicket takers?
* Which players have the highest bowling workload?
* How are players distributed according to wickets taken?
* What is the relationship between overs bowled and wickets?

### Experience

* How many players have extensive ODI experience?
* How does match experience differ across players?
* Does greater experience correspond to greater match-winning contribution?

### Team Performance

* Which teams have the highest player representation?
* How does player performance vary across teams?
* Which player roles are most common?

### Match Impact

* Which players have received the most Player of the Match awards?
* Is there a relationship between wins and Player of the Match awards?
* Which players demonstrate strong overall match impact?

---

# 🧮 SQL Concepts Demonstrated

This project demonstrates practical use of the following SQL concepts:

| SQL Concept             | Application                     |
| ----------------------- | ------------------------------- |
| `SELECT`                | Extracting analytical data      |
| `DISTINCT`              | Counting unique players         |
| `SUM()`                 | Calculating totals              |
| `AVG()`                 | Calculating averages            |
| `MIN()` / `MAX()`       | Finding performance ranges      |
| `COUNT()`               | Counting players and records    |
| `GROUP BY`              | Segment-level analysis          |
| `ORDER BY`              | Ranking results                 |
| `TOP`                   | Identifying top performers      |
| `CASE WHEN`             | Creating performance categories |
| CTEs                    | Structuring complex analysis    |
| Conditional Logic       | Creating analytical segments    |
| Aggregation             | KPI calculations                |
| Percentage Calculations | Win-rate analysis               |

---

# 📁 Repository Structure

```text
ODI-Cricket-Player-Performance-Analysis/
│
├── README.md
│
├── Dataset/
│   └── Cricsheet.csv
│
├── SQL/
│   └── SQL_QUERY.sql
│
└── Screenshots/
    └── SQL_Analysis_Results.png
```

---

# 🚀 Project Workflow

```text
1. Collect ODI Cricket Dataset
             ↓
2. Import Dataset into SQL Server
             ↓
3. Create Database & Table
             ↓
4. Load and Validate Data
             ↓
5. Perform KPI Analysis
             ↓
6. Perform Univariate Analysis
             ↓
7. Perform Bivariate Analysis
             ↓
8. Perform Multivariate Analysis
             ↓
9. Identify Player Performance Patterns
             ↓
10. Generate Business/Sports Insights
```

---

# 📌 Sample Insights

The analysis can be used to identify:

* High-performing ODI run scorers
* Elite strike-rate players
* Leading wicket takers
* Highly experienced players
* Players with significant match-winning contributions
* Players with high Player of the Match recognition
* Differences between batting and bowling roles
* Distribution of players across performance categories

> **Note:** The SQL scripts are designed to generate the actual analytical results directly from the dataset.

---

# 🎓 What This Project Demonstrates

This project demonstrates my ability to:

* Work with a real-world structured dataset
* Import and analyze data using SQL Server
* Translate analytical requirements into SQL queries
* Build meaningful KPIs
* Perform exploratory data analysis
* Segment numerical data using `CASE WHEN`
* Analyze relationships between variables
* Use CTEs to simplify complex queries
* Extract actionable insights from raw data
* Structure an end-to-end SQL analytics project

---

# 👨‍💻 Skills Demonstrated

**Data Analysis**

`Exploratory Data Analysis` `KPI Development` `Data Segmentation` `Performance Analysis`

**SQL**

`Microsoft SQL Server` `SSMS` `CTEs` `Aggregations` `CASE WHEN` `GROUP BY` `Subqueries` `Analytical Queries`

**Domain**

`Sports Analytics` `Cricket Analytics` `Player Performance Analysis`

---

# 📈 Future Enhancements

Potential improvements for the project include:

* Build an interactive Power BI dashboard
* Create player-performance rankings
* Develop player segmentation using performance metrics
* Add advanced window-function analysis
* Create team-level performance dashboards
* Calculate additional batting and bowling metrics
* Perform correlation analysis
* Develop an automated SQL reporting layer

---

# 🏆 Project Outcome

The project transforms raw ODI cricket statistics into a structured analytical framework covering:

**KPIs → Univariate Analysis → Bivariate Analysis → Multivariate Analysis**

This demonstrates how SQL can be used not only for querying databases, but also for **exploratory analysis, performance measurement, segmentation, and insight generation**.

---
