### **Title:** Mapping the Housing Market: Tracking the Evolution of Home Prices

### **Team Members:**  
- Long Le  
- Tai Reagan 
- Tatyana Grishanina   
- Jorge Reyes  

### **Project Description:**

This project will analyze the evolution of housing and rental prices across the United States. It will focus on exploring the factors that have influenced housing affordability, including economic growth, geographic variations, and societal events such as the COVID-19 pandemic. The primary goal is to understand how living costs correlate with crucial economic indicators such as state GDP, particularly in California.

### **Objectives:**
1. **Rental Price vs. Housing Price Trends:** Examine how rental and housing prices have changed over time in California and the United States.
2. **Geographical Variations:** Identify regions with the highest and lowest changes in housing prices.
3. **Pandemic Impact:** Analyze how the COVID-19 pandemic affected housing prices, especially in California.
4. **Economic Correlations:** Investigate the correlation between state GDP and housing price changes.
5. **Predictive Analysis:** Provide a predictive model for future housing and rental price changes based on the current trends and economic conditions.

### **Research Questions:**
- How have rental prices increased compared to housing prices over time?
- What regions experienced the highest increases and lowest decreases in housing prices?
- How did the pandemic influence the housing market, especially in California?
- What is the relationship between state GDP and housing prices, and how has this evolved?
- What predictions can be made about future housing price trends?

### **Data Sources:**
- **Housing and Rental Data:**
  - [Real Estate API (ATTOM Data)](https://api.developer.attomdata.com/home )
  - [Zillow Housing Data](https://www.zillow.com/research/data/ )
- **State GDP Data:**
  - [BEA State GDP](https://apps.bea.gov/itable/?ReqID=70&step=1&_gl=1*15ycend*_ga*MjAxNDQwMTkxMC4xNzEzNTMyOTc4*_ga_J4698JNNFT*MTcxNjI3OTQ2MC43LjEuMTcxNjI3OTQ4Ny4zMy4wLjA.#eyJhcHBpZCI6NzAsInN0ZXBzIjpbMSwyOSwyNSwzMSwyNiwyNywzMF0sImRhdGEiOltbIlRhYmxlSWQiLCI1MTIiXSxbIk1ham9yX0FyZWEiLCIwIl0sWyJTdGF0ZSIsWyIwIl1dLFsiQXJlYSIsWyJYWCJdXSxbIlN0YXRpc3RpYyIsWyIxIl1dLFsiVW5pdF9vZl9tZWFzdXJlIiwiTGV2ZWxzIl0sWyJZZWFyIixbIjIwMjMiXV0sWyJZZWFyQmVnaW4iLCItMSJdLFsiWWVhcl9FbmQiLCItMSJdXX0= )
  - [FRED Real Estate & Economic Data](https://fred.stlouisfed.org/ )

### **Methodology:**
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

### **Deliverables:**
1. A comprehensive report that answers the research questions.
2. Visualizing housing and rental price trends and their correlation with state GDP.
3. A dashboard to allow for real-time data analysis, which includes interactive maps of housing price changes by region.
4. Predictive models for future housing prices.
5. Recommendations for policymakers and stakeholders in the housing market.

### **Breakdown of Tasks:**

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




### Explanation of Findings: Linear Regression Model for Predicting Rental and Housing Percent Changes

#### Objective:
We aimed to predict the percentage changes in rental and housing prices using a simple **Linear Regression** model. The model uses **GDP percentage change** as the main feature to make these predictions. The rental and housing percentage changes are predicted separately.

#### Approach:
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

#### Findings:

1. **Rental Price Predictions**:
   - The predictions for rental price changes followed a linear trend, but there were visible discrepancies between the actual and predicted values.
   - **Linear regression** captured the overall trend of rental price changes but struggled to accurately predict more extreme changes, likely due to the model's simplicity.
   - This suggests that while GDP influences rental prices, other factors (e.g., local economic conditions, housing supply, unemployment rates) also play a significant role and should be included in more complex models.

2. **Housing Price Predictions**:
   - Similar to rental predictions, the model captured the general trend of housing price changes but missed specific fluctuations in certain states.
   The performance of linear regression here indicates that GDP does have an effect on housing prices, but again, the model lacks the complexity to account for other important factors like interest rates, housing demand, and government policies.

#### Insights:
- **Linear Regression is too simple**: The results show that while linear regression can capture general trends, it is insufficient for making accurate predictions when the relationship between variables is complex. GDP alone is not enough to fully explain rental and housing price changes.
  
- **Additional factors needed**: To improve predictions, more features should be included in the model, such as:
  - **Interest rates**
  - **Unemployment rates**
  - **Population growth**
  - **Housing supply and demand**
  
- **More complex models required**: More sophisticated models like **Random Forest**, **Gradient Boosting**, or **Neural Networks** could better capture the complex, non-linear relationships between GDP and housing or rental prices.

#### Conclusion:
The linear regression model offers a starting point, providing insights into the relationship between GDP and rental/housing price changes. However, its simplicity limits its accuracy, and further refinement is needed, either by incorporating additional features or using more advanced machine learning models.
