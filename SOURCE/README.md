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

