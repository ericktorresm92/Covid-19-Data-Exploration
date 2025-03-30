		/* Global Numbers */
SELECT
	SUM(CAST(New_Cases AS FLOAT)) AS Total_Cases
	, SUM(CAST(New_Deaths AS FLOAT)) AS Total_Deaths
	, CASE
		WHEN SUM(CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE (SUM(CAST(New_Deaths AS FLOAT)) * 100) / NULLIF(SUM(CAST(New_Cases AS FLOAT)), 0)
    END AS Infection_Fatality_Rate
FROM [PortfolioProject].[dbo].[Covid_Deaths_2023]
WHERE Continent IS NOT NULL

	/* Total Cases & Total Deaths in Continents */
SELECT 
	Location
	, Population
	, SUM(CAST(New_Cases AS FLOAT)) AS Total_Cases
	, SUM(CAST(New_Deaths AS INT)) AS Total_Deaths
	, (SUM(CAST(New_Cases AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Percent_Population_Infected
	, (SUM(CAST(New_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Crude_Mortality_Rate
	, CASE
		WHEN SUM(CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE (SUM(CAST(New_Deaths AS FLOAT)) * 100) / NULLIF(SUM(CAST(New_Cases AS FLOAT)), 0)
    END AS Infection_Fatality_Rate
FROM 
	[PortfolioProject].[dbo].[Covid_Deaths_2023] AS Covid_Deaths
WHERE 
	Location NOT LIKE '%income' 
	AND Location not in ('World', 'European Union', 'International')
	AND Continent IS NULL
GROUP BY 
	Location 
	, Population
ORDER BY 
	Total_Deaths DESC

/* Total Cases & Total Deaths in Countries */
SELECT 
	Location
	, Population
	, SUM(CAST(New_Cases AS FLOAT)) AS Total_Cases
	, SUM(CAST(New_Deaths AS INT)) AS Total_Deaths
	, (SUM(CAST(New_Cases AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Percent_Population_Infected
	, (SUM(CAST(New_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Crude_Mortality_Rate
	, CASE
		WHEN SUM(CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE (SUM(CAST(New_Deaths AS FLOAT)) * 100) / NULLIF(SUM(CAST(New_Cases AS FLOAT)), 0)
    END AS Infection_Fatality_Rate
FROM 
	[PortfolioProject].[dbo].[Covid_Deaths_2023] AS Covid_Deaths
WHERE 
	Location NOT LIKE '%income' 
	AND Location not in ('World', 'European Union', 'International')
	AND Continent IS NOT NULL
GROUP BY 
	Location
	, Population
ORDER BY 
	Total_Deaths DESC

	/* Global Historic Cases & Deaths per Continent */
SELECT 
    Location
	, Date
	, Population
    , New_Cases
	, Total_Cases
    , New_Deaths
	, Total_Deaths
	, CASE
		WHEN (CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(New_Cases AS FLOAT)) * 100) / NULLIF((CAST(Population AS FLOAT)), 0)
    END AS Daily_Infection_Rate
	, CASE
		WHEN (CAST(Total_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(Total_Cases AS FLOAT)) * 100) / NULLIF((CAST(Population AS FLOAT)), 0)
    END AS Cumulative_Infection_Rate
	, ((CAST(New_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Daily_Mortality_Rate
	, ((CAST(Total_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Crude_Mortality_Rate
	, CASE
		WHEN (CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(New_Deaths AS FLOAT)) * 100) / NULLIF((CAST(New_Cases AS FLOAT)), 0)
    END AS Case_Fatality_Rate
	, CASE
		WHEN (CAST(Total_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(Total_Deaths AS FLOAT)) * 100) / NULLIF((CAST(Total_Cases AS FLOAT)), 0)
    END AS Infection_Fatality_Rate
FROM 
    [PortfolioProject].[dbo].[Covid_Deaths_2023] AS Covid_Deaths
WHERE 
	Location NOT LIKE '%income' 
	AND Location not in ('World', 'European Union', 'International')
	AND Continent IS NULL
GROUP BY 
    Location
	, Date
	, Population
    , New_Cases
	, Total_Cases
    , New_Deaths
	, Total_Deaths
ORDER BY
	Location
	, Date

/* Global Historic Cases & Deaths per Country */
SELECT 
    Location
	, Date
	, Population
    , New_Cases
	, Total_Cases
    , New_Deaths
	, Total_Deaths
	, CASE
		WHEN (CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(New_Cases AS FLOAT)) * 100) / NULLIF((CAST(Population AS FLOAT)), 0)
    END AS Daily_Infection_Rate
	, CASE
		WHEN (CAST(Total_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(Total_Cases AS FLOAT)) * 100) / NULLIF((CAST(Population AS FLOAT)), 0)
    END AS Cumulative_Infection_Rate
	, ((CAST(New_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Daily_Mortality_Rate
	, ((CAST(Total_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Crude_Mortality_Rate
	, CASE
		WHEN (CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(New_Deaths AS FLOAT)) * 100) / NULLIF((CAST(New_Cases AS FLOAT)), 0)
    END AS Case_Fatality_Rate
	, CASE
		WHEN (CAST(Total_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(Total_Deaths AS FLOAT)) * 100) / NULLIF((CAST(Total_Cases AS FLOAT)), 0)
    END AS Infection_Fatality_Rate
FROM 
    [PortfolioProject].[dbo].[Covid_Deaths_2023] AS Covid_Deaths
WHERE 
	Location NOT LIKE '%income' 
	AND Location not in ('World', 'European Union', 'International')
	AND Continent IS NOT NULL
GROUP BY 
    Location
	, Date
	, Population
    , New_Cases
	, Total_Cases
    , New_Deaths
	, Total_Deaths
ORDER BY
	Location
	, Date

	/* Total Cases & Total Deaths per Income */
SELECT 
	Location
	, Population
	, SUM(CAST(New_Cases AS FLOAT)) AS Total_Cases
	, SUM(CAST(New_Deaths AS INT)) AS Total_Deaths
	, (SUM(CAST(New_Cases AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Percent_Population_Infected
	, (SUM(CAST(New_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Crude_Mortality_Rate
	, CASE
		WHEN SUM(CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE (SUM(CAST(New_Deaths AS FLOAT)) * 100) / NULLIF(SUM(CAST(New_Cases AS FLOAT)), 0)
    END AS Infection_Fatality_Rate
FROM 
	[PortfolioProject].[dbo].[Covid_Deaths_2023] AS Covid_Deaths
WHERE 
	Continent IS NULL 
	AND location LIKE '%income'
GROUP BY 
	location
	, Population
ORDER BY
	5 DESC

		/* Global Historic Cases & Deaths by Income */
SELECT 
    Location
	, Date
	, Population
    , New_Cases
	, Total_Cases
    , New_Deaths
	, Total_Deaths
	, ((CAST(New_Cases AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Daily_Infection_Rate
	, ((CAST(Total_Cases AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Cumulative_Infection_Rate
	, ((CAST(New_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Daily_Mortality_Rate
	, ((CAST(Total_Deaths AS FLOAT)) * 100) / ((CAST(Population AS FLOAT))) AS Crude_Mortality_Rate
	, CASE
		WHEN (CAST(New_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(New_Deaths AS FLOAT)) * 100) / NULLIF((CAST(New_Cases AS FLOAT)), 0)
    END AS Case_Fatality_Rate
	, CASE
		WHEN (CAST(Total_Cases AS FLOAT)) = 0 THEN NULL
        ELSE ((CAST(Total_Deaths AS FLOAT)) * 100) / NULLIF((CAST(Total_Cases AS FLOAT)), 0)
    END AS Infection_Fatality_Rate
FROM 
    [PortfolioProject].[dbo].[Covid_Deaths_2023] AS Covid_Deaths
WHERE 
    location LIKE '%income'
GROUP BY 
    Location
	, Date
	, Population
    , New_Cases
	, Total_Cases
    , New_Deaths
	, Total_Deaths
ORDER BY
	Location
	, Date
