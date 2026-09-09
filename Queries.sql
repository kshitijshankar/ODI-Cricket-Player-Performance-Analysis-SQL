/* ============================================================
   PROJECT      : ODI CRICKET PLAYER PERFORMANCE ANALYSIS
   DOMAIN       : SPORTS ANALYTICS
   DATASET      : ODI Cricket Data
   TABLE        : cricsheet

   CATEGORICAL COLUMNS — 3
   1. player_name
   2. role
   3. team

   NUMERIC COLUMNS — 13
   1. total_runs
   2. strike_rate
   3. total_balls_faced
   4. total_wickets_taken
   5. total_runs_conceded
   6. total_overs_bowled
   7. total_matches_played
   8. matches_played_as_batter
   9. matches_played_as_bowler
   10. matches_won
   11. matches_lost
   12. player_of_match_awards
   13. average
   ANALYSIS     : KPI ANALYSIS
   DATABASE     : Microsoft SQL Server
   ===========================================================*/
								PROJECT PHASE- 1

/* ============================================================
   KPI 01 — TOTAL UNIQUE PLAYERS
   ------------------------------------------------------------
   Count the distinct player names.
   ============================================================ */

SELECT
    COUNT(DISTINCT player_name) AS Total_Players
FROM cricsheet;


/* ============================================================
   KPI 02 — TOTAL MATCHES PLAYED
   ------------------------------------------------------------
   Calculate the sum of total_matches_played.
   ============================================================ */

SELECT
    SUM(total_matches_played) AS [total_matches_played]
FROM cricsheet;


/* ============================================================
   KPI 03 — TOTAL RUNS SCORED
   ------------------------------------------------------------
   How many total ODI runs have been scored by all players?
   ============================================================ */

SELECT
    SUM(total_runs) AS Total_Runs_Scored
FROM cricsheet;


/* ============================================================
   KPI 04 — AVERAGE RUNS PER PLAYER
   ------------------------------------------------------------
   What is the average number of ODI runs scored per player?
   ============================================================ */

SELECT
    AVG(Total_Runs) AS [AVERAGE RUNS]
FROM Cricsheet;


/* ============================================================
   KPI 05 — HIGHEST RUN SCORER
   ------------------------------------------------------------
   Who has scored the highest number of ODI runs?
   ============================================================ */

SELECT TOP 1
    player_name,
    total_runs AS Highest_Total_Runs
FROM cricsheet
ORDER BY total_runs DESC;


/* ============================================================
   KPI 06 — OVERALL AVERAGE STRIKE RATE
   ------------------------------------------------------------
   What is the overall average ODI batting strike rate
   across all players?
   ============================================================ */

SELECT
    player_name,
    AVG(Strike_Rate) AS [Overall_Strike_Rate]
FROM Cricsheet
GROUP BY player_name
ORDER BY [Overall_Strike_Rate] DESC;


/* ============================================================
   KPI 07 — HIGHEST STRIKE RATE
   ------------------------------------------------------------
   Which player has recorded the highest ODI strike rate?
   ============================================================ */

SELECT TOP 1
    player_name,
    MAX(Strike_Rate) AS [Highest_Strike_Rate]
FROM Cricsheet
GROUP BY player_name
ORDER BY [Highest_Strike_Rate] DESC;


/* ============================================================
   KPI 08 — TOTAL WICKETS TAKEN
   ------------------------------------------------------------
   How many total wickets have been taken by all players?
   ============================================================ */

SELECT
    SUM(total_wickets_taken) AS Total_Wickets_Taken
FROM cricsheet;


/* ============================================================
   KPI 09 — HIGHEST WICKET TAKER
   ------------------------------------------------------------
   Who has taken the highest number of ODI wickets?
   ============================================================ */

SELECT TOP 1
    player_name,
    MAX(total_wickets_taken) AS [Highest_ODI_Wickets]
FROM Cricsheet
GROUP BY player_name
ORDER BY [Highest_ODI_Wickets] DESC;


/* ============================================================
   KPI 10 — TOTAL MATCHES WON
   ------------------------------------------------------------
   How many matches have been won collectively by the
   players represented in the dataset?
   ============================================================ */

SELECT
    SUM(matches_won) AS Total_Matches_Won
FROM cricsheet;


/* ============================================================
   KPI 11 — OVERALL WIN RATE
   ------------------------------------------------------------
   What is the overall player win rate across the dataset?
   ============================================================ */

WITH T1 AS
(
    SELECT
        SUM(Matches_Won) AS [Total_Matches_Won],
        SUM(Total_Matches_Played) AS [Total_Matches_Played]
    FROM Cricsheet
)
SELECT
    [Total_Matches_Won],
    [Total_Matches_Played],
    [Total_Matches_Won] * 100.0 / [Total_Matches_Played] AS [Overall_Win_Percentage]
FROM T1;


/* ============================================================
   KPI 12 — TOTAL PLAYER OF THE MATCH AWARDS
   ------------------------------------------------------------
   How many Player of the Match awards have been recorded
   across all players?
   ============================================================ */

SELECT
    SUM(player_of_match_awards) AS Total_Player_Of_Match_Awards
FROM cricsheet;


/* ============================================================
   KPI 13 — HIGHEST PLAYER OF THE MATCH AWARDS
   ------------------------------------------------------------
   Which player has received the highest number of
   Player of the Match awards?
   ============================================================ */

SELECT TOP 1
    player_name,
    MAX(player_of_match_awards) AS [Highest_POTM_Awards]
FROM Cricsheet
GROUP BY player_name
ORDER BY [Highest_POTM_Awards] DESC;


/* ============================================================
   KPI 14 — AVERAGE MATCHES PER PLAYER
   ------------------------------------------------------------
   What is the average number of ODI matches played
   per player?
   ============================================================ */

SELECT
    AVG(total_matches_played) AS Average_Matches_Per_Player
FROM cricsheet;


/* ============================================================
   KPI 15 — OVERALL AVERAGE PLAYER PERFORMANCE
   ------------------------------------------------------------
   What is the overall average player performance according
   to the dataset's average metric?
   ============================================================ */

SELECT
    AVG(average) AS [Overall_Average_Performance]
FROM Cricsheet;

 ===========================================================*/
								PROJECT PHASE - 2

/* ============================================================
   PROJECT      : ODI CRICKET PLAYER PERFORMANCE ANALYSIS
   DOMAIN       : SPORTS ANALYTICS
   DATASET      : ODI Cricket Data – Cricsheet
   TABLE        : cricsheet
   ANALYSIS     : UNIVARIATE ANALYSIS
   DATABASE     : Microsoft SQL Server
   ============================================================ */


/* ============================================================
   UNIVARIATE ANALYSIS 01 — PLAYER ROLE DISTRIBUTION
   ------------------------------------------------------------

   Count the number of players belonging to each role.|

   ============================================================ */

   Select 
            [Role],
            count(*) AS players_Role
            From Cricsheet
            Group by [Role]
            order by players_Role desc


/* ============================================================
   UNIVARIATE ANALYSIS 02 — TEAM-WISE PLAYER DISTRIBUTION
   ------------------------------------------------------------

   How many players are represented from each cricket team?

   ============================================================ */

SELECT
    team,
    COUNT(*) AS Player_Count
FROM cricsheet
GROUP BY team
ORDER BY Player_Count DESC;


/* ============================================================
   UNIVARIATE ANALYSIS 03 — TOTAL RUNS DISTRIBUTION
   ------------------------------------------------------------
   
   What is the distribution of total ODI runs among players?

   ============================================================ */

    With T1 As(
    Select 
        Case    
            when total_runs < 1000 Then 'Below 1k Runs'
            when total_runs < 3000 Then '1k-2.9K Runs'
            when total_runs < 5000 Then '3k-4.9K Runs'
            when total_runs < 3000 Then '5k-7.9K Runs'
            Else '8k+ Runs'
        END AS Run_Category
        From Cricsheet
)
Select 
        Run_Category, 
        Count(*) AS players_Count
        from T1 
        Group by Run_Category
        order by players_Count desc


/* ============================================================
   UNIVARIATE ANALYSIS 04 — STRIKE RATE DISTRIBUTION
   ------------------------------------------------------------
   How are players distributed across different batting
   strike-rate levels?

   
   ============================================================ */

   With T1 AS(
    SELECT
    CASE
        WHEN strike_rate < 70 THEN 'Below 70'
        WHEN strike_rate BETWEEN 70 AND 79.99 THEN '70 - 79.99'
        WHEN strike_rate BETWEEN 80 AND 89.99 THEN '80 - 89.99'
        WHEN strike_rate BETWEEN 90 AND 99.99 THEN '90 - 99.99'
        ELSE  '100+'
    END AS Strike_Rate_Category
    from Cricsheet
    )
    Select 
        Strike_Rate_Category,
        Count(*) AS  [Players_Count]
        From T1
        Group by Strike_Rate_Category
        Order by [Players_Count] Desc
    
/* ============================================================
   UNIVARIATE ANALYSIS 05 — WICKET DISTRIBUTION
   ------------------------------------------------------------
   
   Create wicket-taking categories and count players
   in each category.

   ============================================================ */

With T1 AS(
SELECT
    CASE
        WHEN total_wickets_taken = 0 THEN 'No Wickets'
        WHEN total_wickets_taken BETWEEN 1 AND 49 THEN '1 - 49 Wickets'
        WHEN total_wickets_taken BETWEEN 50 AND 99 THEN '50 - 99 Wickets'
        WHEN total_wickets_taken BETWEEN 100 AND 199 THEN '100 - 199 Wickets'
        ELSE '200+ Wickets'
    END AS Wicket_Category
    From Cricsheet
    )
    Select 
        Wicket_Category,
        Count(*) AS [Players_Count]
        From T1 
        Group by Wicket_Category
        order by [Players_Count] Desc
   

/* ============================================================
   UNIVARIATE ANALYSIS 06 — MATCH EXPERIENCE DISTRIBUTION
   ------------------------------------------------------------
   Categorize players based on total_matches_played.
   ============================================================ */

With T1 AS(
SELECT
    CASE
        WHEN total_matches_played < 100 THEN 'Below 100 Matches'
        WHEN total_matches_played BETWEEN 100 AND 299 THEN '100 - 299 Matches'
        WHEN total_matches_played BETWEEN 300 AND 499 THEN '300 - 499 Matches'
        ELSE '500+ Matches'
    END AS Experience_Category
    from Cricsheet
    )
    Select 
        Experience_Category,
        Count(*) AS [Players_Count]
        From T1
        Group  by Experience_Category
        Order by [Players_Count] Desc

/* ============================================================
   UNIVARIATE ANALYSIS 07 — PLAYER OF THE MATCH DISTRIBUTION
   ------------------------------------------------------------
   Categorize players based on player_of_match_awards.

   ============================================================ */

WITH T1 AS (
SELECT
    CASE
        WHEN player_of_match_awards = 0 THEN 'No Awards'
        WHEN player_of_match_awards BETWEEN 1 AND 4 THEN '1 - 4 Awards'
        WHEN player_of_match_awards BETWEEN 5 AND 9 THEN '5 - 9 Awards'
        WHEN player_of_match_awards BETWEEN 10 AND 19 THEN '10 - 19 Awards'
        ELSE  '20+ Awards'
    END AS POTM_Category
    From Cricsheet
   )
   Select 
            POTM_Category,
            Count(*) AS [Players_Count]
   From T1
   Group By POTM_Category
   Order by [Players_Count] Desc


/* ============================================================
   UNIVARIATE ANALYSIS 08 — BALLS FACED DISTRIBUTION
   ------------------------------------------------------------

   Categorize players according to total_balls_faced.

   ============================================================ */

With T1 AS(
SELECT
    CASE
        WHEN total_balls_faced < 1000 THEN 'Below 1K Balls'
        WHEN total_balls_faced BETWEEN 1000 AND 2999 THEN '1K - 2.9K Balls'
        WHEN total_balls_faced BETWEEN 3000 AND 5999 THEN '3K - 5.9K Balls'
        WHEN total_balls_faced BETWEEN 6000 AND 9999 THEN '6K - 9.9K Balls'
       ELSE '10K+ Balls'
    END AS Balls_Faced_Category
    From Cricsheet
)
Select 
        Balls_Faced_Category,
        Count(*) AS [Players_Count]
        From T1
        Group by  Balls_Faced_Category
        Order by [Players_Count] Desc
    


/* ============================================================
   UNIVARIATE ANALYSIS 09 — OVERS BOWLED DISTRIBUTION
   ------------------------------------------------------------
   Practical Question:
   How are players distributed according to their bowling
   workload?

   Technical Question:
   Categorize players using total_overs_bowled.

   Hint:
   Use CASE WHEN.
   ============================================================ */

WITH T1 As(
SELECT
    CASE
        WHEN total_overs_bowled = 0 THEN 'No Overs'
        WHEN total_overs_bowled < 100 THEN 'Below 100 Overs'
        WHEN total_overs_bowled BETWEEN 100 AND 499 THEN '100 - 499 Overs'
        WHEN total_overs_bowled BETWEEN 500 AND 999 THEN '500 - 999 Overs'
        ELSE '1000+ Overs'
    END AS Bowling_Workload_Category
    From Cricsheet
)
Select 
        Bowling_Workload_Category,
        Count(*) AS [Players_Count]
        From T1
        Group by Bowling_Workload_Category
        Order by [Players_Count] Desc



/* ============================================================
   UNIVARIATE ANALYSIS 10 — MATCHES WON DISTRIBUTION
   ------------------------------------------------------------
   How are players distributed according to the number
   of matches they have won?

   ============================================================ */

WITH T1 AS (
SELECT
    CASE
        WHEN matches_won < 50 THEN 'Below 50 Wins'
        WHEN matches_won BETWEEN 50 AND 149 THEN '50 - 149 Wins'
        WHEN matches_won BETWEEN 150 AND 249 THEN '150 - 249 Wins'
        ELSE  '250+ Wins'
    END AS Wins_Category
    From Cricsheet
)
Select 
        Wins_Category,
        Count(*) AS [Players_Count]
        From T1
        Group by Wins_Category
        Order by [Players_Count] Desc
   

/* ============================================================
   UNIVARIATE ANALYSIS 11 — MATCHES LOST DISTRIBUTION
   ------------------------------------------------------------
   Practical Question:
   How are players distributed according to the number
   of matches they have lost?

   Technical Question:
   Categorize players based on matches_lost.

   Hint:
   Use CASE WHEN.
   ============================================================ */

    With T1 As (
    Select 
       Case
           When Matches_lost < 50   Then 'Below 50 Losses'
           When Matches_lost < 150  Then '50 - 149 Losses'
           When Matches_lost < 250  Then  '150 - 249 Losses'
        Else '250+ Losses'
        End AS [Matches_Lost]
        From Cricsheet
        )
        Select 
               [Matches_Lost], 
               Count(*) AS [Players_Count]
               From T1
               Group by [Matches_Lost]
               Order by [Players_Count] Desc

/* ============================================================
   UNIVARIATE ANALYSIS 12 — PLAYER PERFORMANCE AVERAGE
   ------------------------------------------------------------
   What is the distribution of players based on their
   recorded performance average?
  
   ============================================================ */

SELECT
    Min(Average) AS Minimum_Average,
    Max (Average) AS Maximum_Average,
    Avg(Average) AS Mean_Average
FROM cricsheet;


/* ============================================================
   UNIVARIATE ANALYSIS 13 — RUNS CONCEDED DISTRIBUTION
   ------------------------------------------------------------
   Categorize players using total_runs_conceded.
   
   ============================================================ */

    With T1 AS(
    Select 
            Case
                When total_runs_conceded = 0 Then 'No Runs Conceded'
                When total_runs_conceded < 1000 Then 'Below 1K'
                When total_runs_conceded < 3000 Then '1k - 2.9K'
                When total_runs_conceded < 5000 Then '3k - 4.9K'
                Else '5K+'
            End AS [Runs_Conceded]
            From Cricsheet
            )
            Select 
                [Runs_Conceded],
                Count(*) AS [Player_Count]
                From T1 
                Group by [Runs_Conceded]
                Order by [Player_Count] Desc

/* ============================================================
   UNIVARIATE ANALYSIS 14 — BATTING PARTICIPATION
   ------------------------------------------------------------

   Categorize players according to matches_played_as_batter.

   ============================================================ */
    
   With T1 As (
   Select 
            Case 
                When Matches_played_as_batter = 0 Then 'NO BATTER PARTICIPATION'
                When Matches_played_as_batter  < 100 Then 'Below 100 Matches'
                 When Matches_played_as_batter < 300 Then '100-299 Matches'
                  When Matches_played_as_batter < 500 Then '300 - 499 Matches'
            Else '500+ Matches'
            End AS [Batters_Participation]
            From Cricsheet
)
Select 
      [Batters_Participation],
      Count(*) AS [Player_Count]
      From T1
      Group by [Batters_Participation]
      Order by [Player_Count] Desc


/* ============================================================
   UNIVARIATE ANALYSIS 15 — BOWLING PARTICIPATION
   ------------------------------------------------------------
   Categorize players according to matches_played_as_bowler.

   ============================================================ */

WITH T1 AS(
SELECT
    CASE
        WHEN matches_played_as_bowler = 0 THEN 'No Bowling Participation'
        WHEN matches_played_as_bowler < 100 THEN 'Below 100 Matches'
        WHEN matches_played_as_bowler < 300 THEN '100 - 299 Matches'
        WHEN matches_played_as_bowler < 500 THEN '300 - 499 Matches'
        ELSE '500+ Matches'
    END AS Bowling_Participation_Category
    FROM Cricsheet
    )
    SELECT 
        Bowling_Participation_Category,
         Count(*) AS [Player_Count]
      From T1
      Group by [Bowling_Participation_Category]
      Order by [Player_Count] Desc

===========================================================*/
								PROJECT PHASE - 3
	
	/* ============================================================
   PROJECT      : ODI CRICKET PLAYER PERFORMANCE ANALYSIS
   DOMAIN       : SPORTS ANALYTICS
   DATASET      : ODI Cricket Data – Cricsheet
   TABLE        : cricsheet
   ANALYSIS     : BIVARIATE ANALYSIS
   DATABASE     : Microsoft SQL Server
   ============================================================ */

/* ============================================================
   BIVARIATE ANALYSIS 01 — RUNS VS STRIKE RATE
   ------------------------------------------------------------
   
   Which players combine high run-scoring with a high
   batting strike rate?
   
   ============================================================ */
    
        Select 
                Player_name,total_runs,
                Round(Strike_Rate,2) AS [Strike_Rate]
                From Cricsheet
                Order by total_runs Desc

/* ============================================================
   BIVARIATE ANALYSIS 02 — RUNS VS BALLS FACED
   ------------------------------------------------------------
   Practical Question:
   Do players who face more balls generally score more runs?

   Technical Question:
   Compare total_runs with total_balls_faced for each player.

   ============================================================ */

 WITH T1 AS(
    SELECT
        player_name,
        SUM(total_balls_faced) AS [Total_Balls_Faced],
        SUM(total_runs) AS [Total_Runs]
    FROM Cricsheet
    GROUP BY player_name
)
SELECT
    player_name,
    [Total_Balls_Faced],
    [Total_Runs],
        [Total_Runs] * 1.0 / [Total_Balls_Faced] AS [Runs_Per_Ball]
FROM T1
ORDER BY [Total_Balls_Faced] DESC


/* ============================================================
   BIVARIATE ANALYSIS 03 — WICKETS VS OVERS BOWLED
   -----------------------------------------------------------
   Compare total_wickets_taken with total_overs_bowled
   and calculate wickets per over.
   ============================================================ */

  WITH T1 AS
(
    SELECT
        player_name,
        SUM(total_wickets_taken) AS [Total_Wickets_Taken],
        SUM(total_overs_bowled) AS [Total_Overs_Bowled]
    FROM Cricsheet
    GROUP BY player_name
)
SELECT
    player_name,
    [Total_Wickets_Taken],
    [Total_Overs_Bowled],
    CASE
        WHEN [Total_Overs_Bowled] > 0
        THEN [Total_Wickets_Taken] * 1.0 / [Total_Overs_Bowled]
    END AS [Wickets_Per_Over]
FROM T1
ORDER BY [Wickets_Per_Over] DESC;

/* ============================================================
   BIVARIATE ANALYSIS 04 — WICKETS VS RUNS CONCEDED
   ------------------------------------------------------------
   Compare total_wickets_taken with total_runs_conceded
   and calculate runs conceded per wicket.

   ============================================================ */

    With T1 AS (
    Select 
            player_name,
            Sum(total_wickets_taken) AS [Total_Wickets_Taken],
            Sum(Total_Runs_Conceded) AS [Total_Runs_Conceded]
            From Cricsheet
            Group by player_name
)
Select 
       player_name,
       [Total_Wickets_Taken],
       [Total_Runs_Conceded],
       Case 
            When total_wickets_taken > 0
            Then  [Total_Runs_Conceded]  * 1.0 / [Total_Wickets_Taken] 
            END AS [Runs_Conceded_Per_Wicket]
            From T1
            order by [Runs_Conceded_Per_Wicket] ASC

/* ============================================================
   BIVARIATE ANALYSIS 05 — MATCHES PLAYED VS MATCHES WON
   ------------------------------------------------------------
   Compare total_matches_played with matches_won and
   calculate the player's win percentage.

   ============================================================ */

    With T1 AS (
    Select 
        player_name,
        Sum(Total_matches_played) AS [Total_Matches_Played],
        Sum(Matches_Won)As [Total_Matches_Won]
        from Cricsheet
        group by player_name
        )
        Select *,
            [Total_Matches_Won] * 100.0 /[Total_Matches_Played] AS [Players_Win_Percentage]
            From T1
            Order by [Players_Win_Percentage] Desc


/* ============================================================
   BIVARIATE ANALYSIS 06 — MATCHES PLAYED VS MATCHES LOST
   ------------------------------------------------------------
   Among experienced players, who has recorded the
   highest number of match losses?

   ============================================================ */

    With T1 AS (
    Select 
        player_name,
        Sum(Total_matches_played) AS [Total_Matches_Played],
        Sum(matches_lost)As [Total_Matches_Lost]
        from Cricsheet
        group by player_name
        )
        Select *,
            [Total_Matches_Lost] * 100.0 /[Total_Matches_Played] AS [Players_Loss_Percentage]
            From T1
            Order by [Players_Loss_Percentage] Desc


/* ============================================================
   BIVARIATE ANALYSIS 07 — RUNS VS PLAYER OF THE MATCH AWARDS
   ------------------------------------------------------------
   Technical Question:
   Compare total_runs with player_of_match_awards.

   ============================================================ */

SELECT
    player_name,
    Sum(total_runs) AS [Total_Runs],
    Sum(player_of_match_awards) AS [POM_Awards]
FROM cricsheet
Group by player_name
Order by [POM_Awards] Desc


/* ============================================================
   BIVARIATE ANALYSIS 08 — WICKETS VS PLAYER OF THE MATCH AWARDS
   ------------------------------------------------------------
   Technical Question:
   Compare total_wickets_taken with
   player_of_match_awards.

   ============================================================ */

SELECT
    player_name,
   Sum(total_wickets_taken) AS [Total_Wickets_Taken],
    Sum(player_of_match_awards) AS [POTM_Awards]
FROM cricsheet
    Group by player_name
    Order by [Total_Wickets_Taken] DESC

/* ============================================================
   BIVARIATE ANALYSIS 09 — TEAM VS AVERAGE PERFORMANCE
   ------------------------------------------------------------

   Which teams have players with the highest average
   performance?

   ============================================================ */

SELECT
    team,
    AVG([average]) AS Average_Player_Performance
FROM cricsheet
GROUP BY team
ORDER BY Average_Player_Performance DESC;


/* ============================================================
   BIVARIATE ANALYSIS 10 — ROLE VS AVERAGE STRIKE RATE
   ------------------------------------------------------------
   Practical Question:
   Which player role has the highest average batting
   strike rate?
   ============================================================ */

    Select 
            Role,
            Round(AVG(Average),2) AS [Average_Strike_Rate],
            Count(*) AS [Player_Count]
            From Cricsheet
            Group by Role
            Order by [Average_Strike_Rate] Desc
            


/* ============================================================
   BIVARIATE ANALYSIS 11 — TEAM VS TOTAL RUNS
   ------------------------------------------------------------
   Which cricket teams have the highest combined
   run-scoring contribution?
   ============================================================ */

SELECT
    team,
    SUM(total_runs) AS Total_Team_Runs
FROM cricsheet
GROUP BY team
ORDER BY Total_Team_Runs DESC;


/* ============================================================
   BIVARIATE ANALYSIS 12 — TEAM VS TOTAL WICKETS
   -----------------------------------------------------------
   Which teams have the highest combined wicket-taking
   contribution?
   ============================================================ */

SELECT
    team,
    SUM(total_wickets_taken) AS Total_Team_Wickets
FROM cricsheet
GROUP BY team
ORDER BY Total_Team_Wickets DESC;


/* ============================================================
   BIVARIATE ANALYSIS 13 — ROLE VS AVERAGE RUNS
   -----------------------------------------------------------
   Which player role contributes the highest average
   number of ODI runs?
   ============================================================ */

SELECT
    role,
    COUNT(*) AS Player_Count,
    ROUND(AVG(total_runs), 2) AS Average_Runs
FROM cricsheet
GROUP BY role
ORDER BY Average_Runs DESC;


/* ============================================================
   BIVARIATE ANALYSIS 14 — TEAM VS WIN RATE
   -----------------------------------------------------------
   Calculate total matches won divided by total matches
   played for each team.

   ============================================================ */

With T1 AS(
SELECT
        Team,
        Sum(Matches_Won) AS [Total_Matches_Won],
        Sum(Total_Matches_Played) AS [Total_Matches_Played]
        From Cricsheet
        Group by team
)
Select *,
    [Total_Matches_Won] * 100.0 / [Total_Matches_Played] AS [Win_Rate]
    From T1
    Order by [Win_Rate] DESC



/* ============================================================
   BIVARIATE ANALYSIS 15 — STRIKE RATE VS PLAYER AVERAGE
   ------------------------------------------------------------
   Which players combine a high batting strike rate with
   a strong performance average?
   ============================================================ */

    Select 
            player_name,
            MAX(strike_rate) AS [High_Batting_Strike_Rate],
            Round(Avg(Average),2) AS [Player_Average]
            From Cricsheet
            WHERE [average] IS NOT NULL
            Group by player_name
            Order by[High_Batting_Strike_Rate] DESC

===========================================================*/
								PROJECT PHASE - 4
	
	/* ============================================================
   PROJECT      : ODI CRICKET PLAYER PERFORMANCE ANALYSIS
   DOMAIN       : SPORTS ANALYTICS
   DATASET      : ODI Cricket Data – Cricsheet
   TABLE        : cricsheet
   ANALYSIS     : MULTIVARIATE ANALYSIS
   DATABASE     : Microsoft SQL Server
   ============================================================ */

/* ============================================================
   MULTIVARIATE ANALYSIS 01 — OVERALL PLAYER PERFORMANCE
   ------------------------------------------------------------
   Who are the strongest overall ODI players when considering
   runs, strike rate, wickets and Player of the Match awards?

   ============================================================ */

SELECT
    player_name,
    SUM(total_runs) AS [Total_Runs],
    ROUND(Strike_Rate, 2) AS [Strike_Rate],
    SUM(total_wickets_taken) AS [Total_Wickets_Taken],
    SUM(player_of_match_awards) AS [POTM]
FROM Cricsheet
GROUP BY
    player_name,
    [Total_Runs],
    [Strike_Rate],
    [Total_Wickets_Taken]
ORDER BY
    [Total_Runs] DESC,
    [Strike_Rate] DESC,
    [Total_Wickets_Taken] DESC,
    [POTM] DESC;

/* ============================================================
   MULTIVARIATE ANALYSIS 02 — BATTING PERFORMANCE LEADERS
   ------------------------------------------------------------

   Which players demonstrate strong batting performance
   based on runs, balls faced and strike rate?

   ============================================================ */

   WITH T1 AS
(
    SELECT
        player_name,
        SUM(total_runs) AS [Total_Runs],
        SUM(total_balls_faced) AS [Total_Balls_Faced],
        ROUND(Strike_Rate, 2) AS [Strike_Rate]
    FROM Cricsheet
    GROUP BY
        player_name,
        [Total_Runs],
        [Total_Balls_Faced],
        [Strike_Rate]
)
SELECT
    *,
    [Total_Runs] * 1.0 / [Total_Balls_Faced] AS [RUNS_PER_BALL]
FROM T1
ORDER BY
    [Total_Runs] DESC,
    [Strike_Rate] DESC;


/* ============================================================
   MULTIVARIATE ANALYSIS 03 — BOWLING EFFECTIVENESS
   ------------------------------------------------------------
   Which bowlers are most effective when considering
   wickets, overs bowled and runs conceded?

   ============================================================ */

WITH T1 AS
(
    SELECT
        player_name,
        SUM(total_wickets_taken) AS Total_Wickets,
        SUM(total_overs_bowled) AS Total_Overs,
        SUM(total_runs_conceded) AS Total_Runs
    FROM Cricsheet
    GROUP BY player_name
)

SELECT
    *,
    ROUND(Total_Wickets * 1.0 / NULLIF(Total_Overs, 0),3) AS Wickets_Per_Over,
   ROUND( Total_Runs * 1.0 / NULLIF(Total_Wickets, 0),2 )AS Runs_Per_Wicket
FROM T1
ORDER BY
    Wickets_Per_Over DESC,
    Runs_Per_Wicket ASC;


/* ============================================================
   MULTIVARIATE ANALYSIS 04 — PLAYER IMPACT ANALYSIS
   ------------------------------------------------------------
   Practical Question:
   Which players have had the greatest overall match impact
   based on runs, wickets and Player of the Match awards?


   ============================================================ */
SELECT
    player_name,
    total_runs,
    total_wickets_taken,
    player_of_match_awards,
    total_runs
        + total_wickets_taken * 20
        + player_of_match_awards * 100 AS Impact_Score
FROM Cricsheet
ORDER BY Impact_Score DESC;


/* ============================================================
   MULTIVARIATE ANALYSIS 05 — EXPERIENCE VS PERFORMANCE
   ------------------------------------------------------------
   Which experienced players have maintained strong
   batting performance?

   ============================================================ */

SELECT
    player_name,
    total_matches_played,
    total_runs,
    ROUND(strike_rate, 2) AS Strike_Rate,
    player_of_match_awards
FROM cricsheet
WHERE total_matches_played >= 300
ORDER BY
    total_runs DESC,
    strike_rate DESC,
    player_of_match_awards DESC;


/* ============================================================
   MULTIVARIATE ANALYSIS 06 — WINNING CONTRIBUTION
   ------------------------------------------------------------
   Which players combine high match participation,
   high wins and strong batting performance?

   ============================================================ */

    WITH T1 AS(
    Select 
            player_name,total_matches_played,matches_won,total_runs,
            Round(strike_rate,2) AS [Strike_Rate]
            From Cricsheet
)
Select *,
      Matches_Won  * 100.0 / total_matches_played AS [Win_Percentage]
        From T1
        order by [Win_Percentage] DESC, total_runs desc



/* ============================================================
   MULTIVARIATE ANALYSIS 07 — BATTING CONSISTENCY
   ------------------------------------------------------------
   Practical Question:
   Which players combine high runs, strong strike rate
   and high batting participation?

   ============================================================ */

SELECT
    player_name,
    matches_played_as_batter,
    total_runs,
    ROUND(strike_rate, 2) AS Strike_Rate
FROM cricsheet
WHERE matches_played_as_batter >= 200
ORDER BY
    total_runs DESC,
    strike_rate DESC


/* ============================================================
   MULTIVARIATE ANALYSIS 08 — BOWLING WORKLOAD VS OUTPUT
   ------------------------------------------------------------
   Which players have converted a high bowling workload
   into strong wicket-taking performance?

   ============================================================ */
        
        SELECT
    player_name,
    total_overs_bowled,
    total_wickets_taken,
    total_runs_conceded,

    ROUND(total_wickets_taken * 1.0 / NULLIF(total_overs_bowled, 0), 3)
        AS Wickets_Per_Over,

    ROUND(total_runs_conceded * 1.0 / NULLIF(total_wickets_taken, 0), 2)
        AS Runs_Conceded_Per_Wicket

FROM Cricsheet

ORDER BY
    Wickets_Per_Over DESC,
    Runs_Conceded_Per_Wicket ASC;



/* ============================================================
   MULTIVARIATE ANALYSIS 09 — ALL-ROUND PERFORMANCE
   -----------------------------------------------------------
   Technical Question:
   Identify players with meaningful runs and wickets while
   considering batting and bowling participation.

   ============================================================ */

SELECT
    player_name,
    total_runs,
    total_wickets_taken,
    matches_played_as_batter,
    matches_played_as_bowler,
    ROUND(strike_rate, 2) AS Strike_Rate
FROM cricsheet
WHERE total_runs > 1000
  AND total_wickets_taken > 25
  AND matches_played_as_batter > 50
  AND matches_played_as_bowler > 50
ORDER BY
    total_runs DESC,
    total_wickets_taken DESC


/* ============================================================
   MULTIVARIATE ANALYSIS 10 — MATCH IMPACT VS EXPERIENCE
   ------------------------------------------------------------
   Which experienced players have generated the most
   Player of the Match awards?

   ============================================================ */

  SELECT
    player_name,
    total_matches_played,
    matches_won,
    total_runs,
    player_of_match_awards,

    ROUND(
        player_of_match_awards * 100.0
        / NULLIF(total_matches_played, 0),
        2
    ) AS POTM_Rate

FROM Cricsheet

ORDER BY
    player_of_match_awards DESC,
    POTM_Rate DESC;

/* ============================================================
   MULTIVARIATE ANALYSIS 11 — TEAM OVERALL PERFORMANCE
   ------------------------------------------------------------
   Which teams have the strongest overall player contribution
   across batting, bowling and match wins?
   ============================================================ */
SELECT
    team,
    SUM(total_runs) AS Total_Runs,
    SUM(total_wickets_taken) AS Total_Wickets,
    SUM(matches_won) AS Total_Matches_Won,
    SUM(player_of_match_awards) AS Total_POTM_Awards
FROM cricsheet
GROUP BY team
ORDER BY
    Total_Runs DESC,
    Total_Wickets DESC,
    Total_Matches_Won DESC;


           
/* ============================================================
   MULTIVARIATE ANALYSIS 12 — TEAM BATTING EFFECTIVENESS
   ------------------------------------------------------------
   Which teams combine high run production with strong
   batting strike rates?

   ============================================================ */

    Select 
            Team,
            Sum(Total_runs) AS [Total_Runs],
            Round(AVG(Strike_Rate),2) AS [Average_Strike_Rate],
            Sum(total_balls_faced) AS [Total_balls_faced],
            Count(*) AS [No_Of_Players]
            from Cricsheet
            Group by team
            Order by Total_Runs DESC,
                    Average_Strike_Rate DESC;
            


/* ============================================================
   MULTIVARIATE ANALYSIS 13 — TEAM BOWLING EFFECTIVENESS
   ------------------------------------------------------------
   Which teams have the strongest overall bowling
   contribution?
   ============================================================ */

    With T1 AS (
    Select 
           Team,
           Sum(total_wickets_taken) AS [Total_Wickets],
           Sum(total_overs_bowled) AS [Total_Overs_Bowled],
           Sum(total_runs_conceded) AS [Total_Runs_Conceded]
           From Cricsheet
           Group by team
)
    Select *,
            Round(Total_Wickets * 1.0 / Nullif(Total_Overs_Bowled,0),3) AS [Wickets_Per_Over],
            Round(Total_Runs_Conceded * 1.0 / Nullif(Total_Wickets,0),2) AS [Runs_Per_Wicket]
            From T1
            order by [Wickets_Per_Over] DESC,
                    [Runs_Per_Wicket] ASC

/* ============================================================
   MULTIVARIATE ANALYSIS 14 — PLAYER PERFORMANCE RANKING
   ------------------------------------------------------------
   Rank players using runs, strike rate, wickets and
   Player of the Match awards.

   ============================================================ */
   WITH T1 AS
(
    SELECT
        player_name,
        total_runs,
        strike_rate,
        total_wickets_taken,
        player_of_match_awards,

        (
            total_runs
            + (strike_rate * 10)
            + (total_wickets_taken * 20)
            + (player_of_match_awards * 100)
        ) AS Performance_Score

    FROM cricsheet
)

SELECT *,
    ROW_NUMBER() OVER (
        ORDER BY Performance_Score DESC
    ) AS Player_Rank

FROM T1
ORDER BY Player_Rank ;


/* ============================================================
   MULTIVARIATE ANALYSIS 15 — ELITE PLAYER IDENTIFICATION
   ------------------------------------------------------------
   Identify players who satisfy multiple performance
   conditions simultaneously.  
   ============================================================ */

WITH T1 AS
(
    SELECT
        player_name,
        role,
        team,
        total_runs,
        ROUND(strike_rate, 2) AS Strike_Rate,
        total_wickets_taken,
        total_matches_played,
        player_of_match_awards,
        matches_won
    FROM Cricsheet
)
SELECT
    *,
    ROUND(
        matches_won * 100.0 / NULLIF(total_matches_played, 0),
        2
    ) AS Win_Percentage
FROM T1
WHERE total_runs >= 3000
  AND Strike_Rate >= 80
  AND total_matches_played >= 200
  AND player_of_match_awards >= 5
ORDER BY
    total_runs DESC,
    Strike_Rate DESC,
    total_wickets_taken DESC;