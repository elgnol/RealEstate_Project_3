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
