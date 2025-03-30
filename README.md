# Exploatory Data Analysis of COVID-19

Dataset: https://ourworldindata.org/covid-deaths

## Research Purpose
The objective of this research is to analyze the global impact of COVID-19 by collecting and visualizing data on confirmed cases, deaths, and case fatality rates. The goal is to understand the evolution of the pandemic in different regions and socioeconomic categories, allowing for the identification of key patterns and trends.

## Methodology
### Dataset Collection: Data from the *Our World in Data* platform was used, which provides detailed information on COVID-19 cases, deaths, and other relevant indicators globally.
### SQL Server Processing:
- Data was imported into Microsoft SQL Server for manipulation and cleaning.
- SQL queries were run to extract specific information on total cases, deaths, and case fatality rates at the global, continental, and country levels.
- Data was grouped by income level (low, middle, and high) to assess the impact of COVID-19 in different economic contexts.
### Export to CSV:
- The results of the SQL queries were stored in CSV files for further manipulation.
- The data was organized in separate sheets for each of the categories analyzed (continents, countries, income level, time series, etc.).
### Visualization in Tableau:
- Interactive dashboards were designed to facilitate data interpretation.
- Visualizations such as comparative bar charts, heat maps, and timelines were incorporated to represent the evolution of the pandemic.
- Dynamic filters were included to explore the data by region, time period, and other key factors.

## Conclusions
### Regional Disparity: 
There is a significant difference in the impact of COVID-19 across continents, with Europe and Asia accounting for the largest number of confirmed cases.
### Relationship between Income and Case Fatality: 
Low-income countries have higher case fatality rates compared to high-income countries, which could be related to the quality of the healthcare system.
### Time Evolution: 
Peaks in infection and case fatality are identified at different times, coinciding with epidemic waves and the emergence of new virus variants.
### Case Fatality Rate vs. Infection Rate: 
The daily infection rate shows more marked fluctuations compared to the case fatality rate, suggesting that mitigation strategies have reduced the impact on mortality over time.

## Additional Insights
### Use of Data by Income Level: 
Although data segmented by income were not used in the final visualization, they could provide valuable insights into the economic impact of COVID-19.
### Potential Extensions: 
The analysis could be expanded by incorporating data on vaccination and its impact on reducing cases and deaths. 
### Improved Accuracy: 
Integrating predictive models could allow for estimates of the future evolution of the virus and its impact in different regions.

## Visualization:
Link for dynamic dashboard: https://public.tableau.com/app/profile/erick.torres7629/viz/CovidCasesDeaths_16965682303990/Dashboard1
![image](https://github.com/ericktorresm92/privateimages/blob/main/Covid-19-Data-Exploration.jpg?raw=true)
