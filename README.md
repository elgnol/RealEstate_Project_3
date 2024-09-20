<div align="center">
    <h1>Mapping the Housing Market:</h1>
    <h2 style="margin-top: 0;">Tracking the Evolution of Home Prices</h2>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/housingmarket.jpg" alt="housing_market" width="600"/>
</div>

<div align="center">
    <h3><b>Team Members:</b></h3>
    <h4>
      Long Le<br>
      Jorge Reyes<br>
      Tatyana Grishanina<br>
      Tai Reagan
    </h4>
</div>

---

[Project Description](#project-description)

[Objectives](#objectives)

[Research Questions](#research-questions)

[Data Sources](#data-sources)

[Methodology](#methodology)

[Deliverables](#deliverables)

[Breakdown of Tasks](#breakdown-of-tasks)

[Key Metrics Analyzed](#key-metrics-analyzed)

[Analysis](#analysis)

[Linear Regression Model](#linear-regression-model)

[Findings](#findings)

[CPI (Inflation) Trends](#cpi-inflation-trends)

[Rental Prices](#rental-prices)

[Unemployment Rate](#unemployment-rate)

[Home Values](#home-values)

[Correlations and Insights](#correlations-and-insights)

[Conclusion](#conclusion)

---


## Project Description

This project aims to provide a detailed analysis of the evolution of housing and rental prices across the United States, with a specific focus on economic, geographic, and societal factors that have influenced housing affordability. By leveraging key economic indicators such as unemployment rates, median household income, mortgage rates, and state GDP—particularly in California—the analysis will investigate how these factors correlate with shifts in home sales, home values, and rental prices.

The study also examines the impact of major events, including the COVID-19 pandemic, on housing market dynamics, with an emphasis on understanding how living costs have changed over time in response to these factors. The primary objective is to identify patterns in affordability trends and their relationship with economic indicators to provide insights on navigating the housing market.

Through a data-driven approach, this analysis will offer valuable perspectives on the factors contributing to housing price volatility and rental market fluctuations, delivering a comprehensive understanding of housing affordability across the U.S.

---

## Objectives

1. **Rental Price vs. Housing Price Trends:** Examine how rental and housing prices have changed over time in California and the United States.
2. **Geographical Variations:** Identify regions with the highest and lowest changes in housing prices.
3. **Pandemic Impact:** Analyze how economic indicators may have affteced housing and rental prices during the COVID-19 pandemic.
4. **Economic Correlations:** Investigate the correlation between state GDP and housing price changes.
5. **Predictive Analysis:** Provide a predictive model for future housing and rental price changes based on the current trends and economic conditions.

## Research Questions

- How have rent prices changed in the United States? How have housing values changed?
- What regions experienced the highest increases and lowest decreases in housing prices?
- How might the impact of economic factors on rentals differ from their impact on housing sales during the pandemic?
- How has the GDP changed vs. how have the prices of homes changed over the past 10 years in the US? 
- What predictions can be made about future housing price trends?

## Data Sources

The following datasets were used for this analysis:

- **Housing and Rental Data:** National-level rental and housing prices, home values and percentage changes.
  - [Zillow Housing Data](https://www.zillow.com/research/data/ ) 
  - [Simplemaps Data](https://simplemaps.com/)
  - [Migration Data](https://www.census.gov/data/tables/time-series/demo/geographic-mobility/historic.html)

- **State GDP Data:**
  - [BEA State GDP](https://apps.bea.gov/itable/?ReqID=70&step=1&_gl=1*15ycend*_ga*MjAxNDQwMTkxMC4xNzEzNTMyOTc4*_ga_J4698JNNFT*MTcxNjI3OTQ2MC43LjEuMTcxNjI3OTQ4Ny4zMy4wLjA.#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyOSwyNSwzMSwyNiwyNywzMF0sImRhdGEiOltbIlRhYmxlSWQiLCI1MTIiXSxbIk1ham9yX0FyZWEiLCIwIl0sWyJTdGF0ZSIsWyIwIl1dLFsiQXJlYSIsWyJYWCJdXSxbIlN0YXRpc3RpYyIsWyIxIl1dLFsiVW5pdF9vZl9tZWFzdXJlIiwiTGV2ZWxzIl0sWyJZZWFyIixbIjIwMjMiXV0sWyJZZWFyQmVnaW4iLCItMSJdLFsiWWVhcl9FbmQiLCItMSJdXX0= )
  - [FRED Real Estate & Economic Data](https://fred.stlouisfed.org/ )

 - **Inflation Data (CPI):** Monthly CPI values reflecting inflation trends.
   - [US Inflation Calculator](https://www.usinflationcalculator.com/inflation/current-inflation-rates/)

## Methodology

1. **Data Collection:**
   - Use the ATTOM Real Estate API to gather housing price and rental data.
   - Retrieve Zillow’s datasets for property values, rent index, and housing trends across different regions.
   - Collect state GDP data from the BEA and FRED databases.

2. **Data Cleaning & Preparation:**
   - Parse and clean the data to remove inconsistencies and missing values.
   - Standardize periods and economic indicators across all datasets for a meaningful comparison.

3. **Exploratory Data Analysis (EDA):**
   - Create visualizations to display trends in housing and rental prices over time.
   - Identify geographical hotspots for price increases and decreases.
   - Analyze price trends pre-, during, and post-COVID-19.

4. **Correlation & Regression Analysis:**
   - Correlate housing prices with state GDP data to assess the relationship between economic growth and the housing market.
   - Use regression models to determine how different factors (pandemic, GDP, location) contribute to price changes.

5. **Predictive Modeling:**
   - Apply machine learning models to predict future housing price trends based on the cleaned data and previous findings.
   - Forecast how factors such as continued GDP growth or another economic downturn might affect housing costs.

## Deliverables

1. A comprehensive report that answers the research questions.
2. Visualizing housing and rental price trends and their correlation with state GDP.
3. A dashboard to allow for real-time data analysis, which includes interactive maps of housing price changes by region.
4. Predictive models for future housing prices.
5. Recommendations for policymakers and stakeholders in the housing market.

## Breakdown of Tasks

**1. Import Dependencies & Setup:**
   - Set up Python environment with required libraries (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn).
   - Install APIs for data collection.

**2. Data Parsing & Cleaning:**
   - Fetch data from the APIs (ATTOM, Zillow) and government databases.
   - Standardize data formats, remove outliers, and handle missing values.

**3. Exploratory Data Analysis (EDA):**
   - Visualize trends in housing prices over time and across regions.
   - Analyze the impact of GDP on real estate trends.

**4. Correlation Analysis:**
   - Perform regression analysis to find correlations between GDP and housing prices.
   - Visualize key findings.

**5. Predictive Modeling:**
   - Build a predictive model for future price trends using machine learning algorithms (e.g., linear regression, decision trees).
   
**6. Presentation & Report:**
   - Create a presentation and final report with key findings, visualizations, and recommendations.
   - Develop an interactive dashboard to showcase findings.
---

## Key Metrics Analyzed

- **Consumer Price Index (CPI):** Measures the average change over time in the prices paid by consumers for goods and services.
- **Rental Percentage Change:** Reflects the cumulative change in rental prices nationally.
- **Unemployment Rate:** Represents the percentage of people actively seeking employment but unable to find work.
- **Home Values:** Represents the average home value in the United States.

---

## Analysis

## Question 1: How has rent prices changed in the United States? How have housing values changed?

<div align="center">
    <h3>Rent Prices vs. Home Values</h3>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/USgraphs.png" alt="usgraphs" width="1000"/>
</div>



<div align="center">
    <h3>Interactive Dashboard Views</h3>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/interactive_chart.png" alt="interactive_chart" width="900"/>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/interactive_chart_dropdown.png" alt="dropdown_view" width="900"/>
</div>

> [!TIP]
> Select any option from the dropdown menu to interact with the dashboard and see different views.

<div align="center">
    <h3>Key Takeaway</h3>
</div>

  - Over the past decade, home prices in the U.S. have risen significantly faster than rent, increasing by 94% compared to 75%. In 144 of the 163 cities analyzed, property values grew at a greater rate than rental costs. Several factors could explain this trend, including historically low mortgage rates, rent control policies, inflation, heightened real estate investment, and limitations in housing supply.

---


## Question 2: What regions experienced the highest increases and lowest decreases in housing prices?

<div align="center">
    <h3>Rental and Home Price</h3>
    <h4 style="margin-top: 0;">By Location</h4>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/top_10_price_edited.png" alt="home_price" width="500" style="display: inline-block;"/>
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/top_10_rent_edited.png" alt="rental_price" width="500" style="display: inline-block;"/>
</div>

<div align="center">
    <h2>Interactive Dashboard Views</h2>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/rental_map.png" alt="rental_map" width="500" style="display: inline-block;"/>
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/home_map.png" alt="home_map" width="500" style="display: inline-block;"/>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/rental_percents_map.png" alt="rental_percent" width="500" style="display: inline-block;"/>
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/home_percents_map.png" alt="home_percent" width="500" style="display: inline-block;"/>
</div>

> [!TIP]
> Select any option from the dropdown menu to interact with the dashboard and see different views.

<div align="center">
    <h3>Key Takeaway</h3>
</div>

 - The West Coast dominates home values, with 7 of the top 10 most expensive cities located in California. In California, the average single-family home is valued around $1 million, while on the East Coast, home prices typically range from $400,000 to $800,000. In contrast, rent prices are more balanced between the two coasts, averaging $3,000 to $4,000 per month. The South and Midwest regions have the lowest average home values and rental rates. These variations are likely influenced by differences in income levels, market demand, and regulatory factors. Notably, Florida has seen a sharp rise in both rent and home prices, likely driven by a substantial influx of new residents from other parts of the U.S.


---


## Question 3: How might the impact of economic indicators on rentals differ from their impact on housing sales during the pandemic?

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/main/IMAGES/HomeSales_and_RentalPrices.png" alt="homesales_rentalprice" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - The graph suggests that home sales were significantly more volatile, with peaks and troughs likely due to economic factors like interest rates, pandemic-related lockdowns, and consumer confidence.
 - Rental prices, on the other hand, saw consistent growth, possibly driven by increased demand as home affordability fluctuated or as people delayed home purchases in favor of renting.
 - The post-pandemic market shows home sales dropping sharply, while rental prices continue to climb, indicating a shift in market dynamics where fewer people might be buying homes and more are renting, potentially due to economic uncertainty.

<div align="center">
    <h3>Interactive Dashboard Views</h3>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/dashboard.png" alt="dashboard" width="900"/>
</div>

> [!TIP]
> Select any option from the dropdown menu to interact with the dashboard and see different views.


<div align="center">
    <h3>Median Household Income vs. Rental Price</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/hhi_vs_rental.png" alt="hhi_vs_rental" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Stability of Income vs. Rising Costs:** One key observation is the stability of household income contrasted with the consistent rise in rental prices. This suggests that, over the analyzed period, the cost of living (at least in terms of rent) outpaced income growth, leading to potential affordability concerns.

 - **Impact of Economic Factors:** The pandemic, while disrupting many economic factors, did not seem to significantly disrupt the rental market. With incomes remaining relatively stable and rental prices rising, the post-pandemic period may have seen increased financial pressure on renters.

<div align="center">
    <h3>Average Mortgage Rate vs. Rental Price</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/mortage_vs_rental.png" alt="mortgage_vs_rental" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Mortgage Rate Volatility:** The mortgage rate decline encouraged home buying during the pandemic, but the rapid rate increases in 2022 might have reduced affordability for new buyers.

 - **Steady Rise in Rental Prices:** The rental market’s consistent price increase suggests strong demand, even in the face of economic downturns, potentially due to economic uncertainties or financial barriers to homeownership.

<div align="center">
    <h3>Unemployment Rate vs. Rental Price</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/unemployment_vs_rental.png" alt="unemployment_rate_vs_rental" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Resilient Rental Market Amidst Employment Shocks:** One of the most striking insights from these charts is how the rental market continued to grow, despite the unprecedented spike in unemployment during 2020. This could suggest a decoupling of the rental market from short-term labor market fluctuations or that government interventions helped stabilize demand.

 - **Possible Housing Shifts:** You could hypothesize that with unemployment high and many households facing financial uncertainty, some may have shifted from homeownership to renting, further driving demand for rental properties.

<div align="center">
    <h3>Median Household Income vs. Home Sales</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/hhi_vs_homesales.png" alt="hhi_vs_homesales" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Median Household Income Resilience:** Despite economic challenges, including the pandemic, median household income did not experience drastic changes. This could point to the effectiveness of economic relief efforts and the resilience of household finances in the face of a global crisis.

 - **Uncoupled Trends:** The disconnect of home sales and household income trends is worth noting. As housing prices rise and affordability concerns increase, income stability may not be enough to maintain strong housing demand, especially if mortgage rates climb or inflation affects consumer purchasing power.

<div align="center">
    <h3>Average Mortgage Rate vs. Home Sales</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/mortgage_vs_homesales.png" alt="mortgage_vs_homesales" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>


 - **Inverse Relationship Between Mortgage Rates and Home Sales:** There is a noticeable inverse relationship between mortgage rates and home sales. As mortgage rates fell to record lows in 2020, home sales spiked. However, as mortgage rates rose sharply in 2022, home sales started to decline.
   
 - **Economic Stimulus Impact:** The steep drop in mortgage rates during the pandemic period likely played a major role in stimulating the housing market, leading to increased home sales in 2020. This underscores the sensitivity of the housing market to interest rate policies.

<div align="center">
    <h3>Unemployment Rate vs. Home Sales</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/unemployment_vs_homesales.png" alt="unemployment_rate_vs_homesales" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Disconnection Between Unemployment and Home Sales**: Despite high unemployment during 2020, home sales did not immediately follow the same trend. In fact, home sales saw increases during a period of economic uncertainty, likely due to lower mortgage rates. This suggests that home sales were driven more by favorable financing conditions rather than labor market stability.
   
 - **Interest Rate Influence:** The rise and fall in home sales may indicate that monetary policies and interest rates had a more direct impact on housing than unemployment. Lower interest rates led to increased affordability and spurred sales even during a period of economic distress.

<div align="center">
    <h3>Median Household Income vs. Home Values</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/hii_vs_homevalue.png" alt="hhi_vs_value" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Disconnect Between Income and Home Values:** The charts highlight a growing disconnect between household income and home values, with home prices rising much faster than incomes. This is a key factor contributing to declining housing affordability.
   
 - **Income Growth Lag:** The flat trend of median household income despite rising home prices suggests that many families may struggle to keep up with increasing housing costs, especially in competitive markets.
   
 - **Pandemic’s Lasting Effects:** While home values surged during the pandemic, the lack of substantial income growth indicates that the housing market's recovery and demand for homes were primarily driven by other factors, such as low interest rates and remote work flexibility.

<div align="center">
    <h3>Average Mortgage Rate vs. Home Values</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/mortgage_vs_homevalue.png" alt="mortgage_vs_homevalue" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Mortgage Rate vs. Home Values Relationship:** Despite the sharp rise in mortgage rates, home values have not experienced a corresponding decline. This may be due to a lagging effect, where it takes time for higher borrowing costs to translate into lower home values.
   
 - **Pandemic-Era Surge in Home Values:** The sharp rise in home values during the pandemic suggests that demand outpaced supply, potentially driven by historically low mortgage rates, as seen in the top chart.

<div align="center">
    <h3>Unemployment Rate vs. Home Values</h3>
</div>


<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tai/IMAGES/unemployment_vs_homevalue.png" alt="unemployment_rate_vs_homevalue" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaways</h3>
</div>

 - **Housing Market Resilience:** Despite the sharp rise in unemployment in 2020, home values continued to increase steadily. This could be due to factors like low mortgage rates and government stimulus during the pandemic, which helped maintain housing demand despite economic hardships.

 - **Lag Between Unemployment and Housing:** The charts highlight that while unemployment spiked rapidly, the housing market did not experience an immediate decline in value. This suggests that home values are more resistant to short-term economic shocks like unemployment spikes.


---

## Question 4: How has the GDP changed vs. how have the prices of homes changed over the past 10 years in the US? 

<div align="center">
    <h3>GDP vs. House Price Growth</h3>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/long/IMAGES/US_GDP_Growth.png" alt="us_gdp_growth" width="500" style="display: inline-block;"/>
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/long/IMAGES/US_House_Price_Growth.png" alt="us_house_price_growth" width="500" style="display: inline-block;"/>
</div>

<div align="center">
    <h3>Key Takeaway</h3>
</div>

 - First, taking a quick look at the US GDP vs. House Prices graphs, we can see that over the years from 2014 to 2023 the GDP and house prices have both risen a lot, GDP having a 22 percent increase and house values increasing by 90 plus percent overall.

<div align="center">
    <h3>GDP vs Home Price</h3>
    <h4 style="margin-top: 0;">By State</h4>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/long/IMAGES/GDPvsPrices_all.png" alt="gdpvsprice" width="900"/>
</div>

<div align="center">
    <h3>Key Takeaway</h3>
</div>

 - As you can see here we have two graphs, the green representing GDP and the blue representing the house prices by state. We can also see that there is not a particular correlation between GDP by state and their corresponding average house value for single family homes. As California has the highest GDP of around 3.23 billion dollars, it however does not have the highest average house value compared to Hawaii whose GDP is around 87 billion dollars and average home value pricing at around 917,000 dollars. Then there’s the state of Vermont which has the lowest GDP of 35 billion dollars, but still does not have the lowest average home value compared to Illinois who has the lowest house value of 154,000 dollars while being one of the top 5 states for GDP. From our data of 2023 we can see that there is no particular relationship between GDP and House prices for each state, suggesting other factors that can contribute to house prices difference between the states, such as location and weather.

---

## Question 5: How has Inflation affected housing prices over time?
<div align="center">
    <h3>House Prices vs. Inflation</h3>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/housing_inflation_lines.png" width="500" style="display: inline-block;"/>
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/tatyana/IMAGES/inflation_vs_housing_corr.png" alt="us_house_price_growth" width="500" style="display: inline-block;"/>
</div>

<div align="center">
    <h3>Key Takeaway</h3>
</div>

 - From the chart on the left, we observe that the housing price growth rate significantly outpaced inflation, especially during the period following the COVID-19 pandemic in 2021 and 2022. While inflation remained relatively stable, the housing price growth saw a dramatic spike before cooling off in late 2023.

 - The scatter plot on the right shows a positive correlation between inflation and housing prices. As inflation increases, housing prices also tend to rise, with the regression line reinforcing this trend. However, the scatter pattern suggests that while inflation does have an impact on housing prices, other factors might also play a significant role, as the data points do not perfectly align along the regression line.

 - In summary, housing prices surged well beyond inflation rates during the pandemic, and while there is a clear positive relationship between inflation and housing prices, other forces may be contributing to housing price fluctuations.


--- 


## Question 6: What predictions can be made about future housing price trends?


## Linear Regression Model 

### Predicting Rental and Housing Percent ChangesFindings: 

### Objective
We aimed to predict the percentage changes in rental and housing prices using a simple **Linear Regression** model. The model uses **GDP percentage change** as the main feature to make these predictions. The rental and housing percentage changes are predicted separately.

#### Approach
1. **Data Collection**:
   - We gathered data on rental and housing percentage changes for different states.
   - GDP data for the years 2022 and 2023 were used to calculate the percentage change in GDP as the primary feature.

2. **Modeling**:
   - **Linear Regression** was chosen as it's the simplest model for regression tasks. It assumes a linear relationship between the GDP change and the changes in rental and housing prices.
   - We trained two separate models:
     - One for predicting **rental percentage changes**.
     - One for predicting **housing percentage changes**.

3. **Results**:
   - The **actual** vs **predicted values** were plotted for rental and housing price changes.
   - The model fits a straight line to the data, attempting to capture the relationship between GDP percentage changes and rental/housing price changes.
  
   <div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/main/IMAGES/ComparisonofPercentageChanges-CPIRentalUnemployment%2CandHomeValues2024-09-19_16-12-34.png" alt="percent_change_comparison" width="500"/>
</div>

<div align="center">
    <img src="https://github.com/elgnol/RealEstate_Project_3/blob/main/IMAGES/predictive-analysis-2024-09-17_23-15-17.png" alt="predictive_analysis" width="500"/>
</div>
     

#### Findings

1. **Rental Price Predictions**:
   - The predictions for rental price changes followed a linear trend, but there were visible discrepancies between the actual and predicted values.
   - **Linear regression** captured the overall trend of rental price changes but struggled to accurately predict more extreme changes, likely due to the model's simplicity.
   - This suggests that while GDP influences rental prices, other factors (e.g., local economic conditions, housing supply, unemployment rates) also play a significant role and should be included in more complex models.

2. **Housing Price Predictions**:
   - Similar to rental predictions, the model captured the general trend of housing price changes but missed specific fluctuations in certain states.
   The performance of linear regression here indicates that GDP does affect housing prices. Still, again, the model needs more complexity to account for other important factors like interest rates, housing demand, and government policies.

#### Insights
- **Linear Regression is too simple**: The results show that while linear regression can capture general trends, more is needed for making accurate predictions when the relationship between variables is complex. GDP alone is not enough to fully explain rental and housing price changes.
  
- **Additional factors needed**: To improve predictions, more features should be included in the model, such as:
  - **Interest rates**
  - **Unemployment rates**
  - **Population growth**
  - **Housing supply and demand**
  
- **More complex models required**: More sophisticated models like Random Forest, Gradient Boosting, or Neural Networks could better capture the complex, non-linear relationships between GDP and housing or rental prices.

---

## Findings

## CPI (Inflation) Trends
The CPI showed a gradual but steady increase over the last 10 years, reflecting a consistent rise in the cost of goods and services. The percentage change from 2014 to 2023 was significant, highlighting ongoing inflation.

## Rental Prices
The rental percentage change remained high throughout the period, with a consistent cumulative increase of about **75%** by 2023. This indicates that rental prices increased significantly, outpacing other economic factors like home values.

## Unemployment Rate
The unemployment rate experienced a notable decline over the decade, with fluctuations during specific periods such as the COVID-19 pandemic in 2020. The unemployment rate's percentage change shows improvement, dropping by over **50%** compared to 2014 levels.

## Home Values
Home values demonstrated substantial growth, with the percentage change increasing sharply throughout the decade. By 2023, the average home value had risen by more than **80%** compared to 2014, reflecting the rapid escalation of housing costs across the country.

## Correlations and Insights

- **Rental Prices vs. Home Values**: Both rental and home values saw significant growth during this period, suggesting a broader trend of increasing housing costs in the United States. The rise in home values slightly outpaced rental price growth, indicating more robust demand for homeownership in recent years.

- **Inflation (CPI) vs. Housing Costs**: While the CPI showed steady growth, it was slower than the rise in home values and rental prices. This indicates that the housing market, both in terms of purchasing and renting, has outpaced general inflation, leading to a disproportionate increase in housing costs relative to other goods and services.

- **Unemployment Rate Decline**: The unemployment rate substantially decreased, particularly after the initial economic recovery following the pandemic. This improvement in employment conditions correlates with the rise in housing costs, as higher employment levels and incomes may have contributed to greater demand for housing.

## Conclusion
The analysis highlights critical economic trends in the United States over the past decade:

- Housing costs (home values and rental prices) have risen significantly faster than general inflation.
- The unemployment rate showed a notable improvement, correlating with the rising demand for housing.
- Inflation remained persistent but at a lower growth rate than the housing sector, pointing to an affordability issue, particularly in housing.

This suggests that while the economy has generally improved in terms of employment, the cost of housing—both homeownership and rentals—has become a significant burden for consumers. Future research could explore the impact of these trends on different income groups and regions to understand affordability challenges across the country better.

[- BACK TO TOP -](#project-description)
