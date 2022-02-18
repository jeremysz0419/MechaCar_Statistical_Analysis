# MechaCar_Statistical_Analysis
## Overview of Analysis
AutosRUs created a new protytpe, the MechaCar, that is suffering from production troubles that is halting the manufacturing team's progress. We have been tasked to produce statistical analysis to help identify problems that can help the manufacturing team. We performed the following to assist the MechaCar. 
* find significant variables that identify MPG for prototypes;
* produce summaries on the PSI of suspension coils;
* analyze if the various manufacturing lots have a statistical "significance" as opposed to the entire mean population;

### Linear Regression on MPG
![Linear Regression regarding MPG](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/MechaCar%20Regression.png)
![Regression Summary on MPG](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/MechaCar%20Summary.png)

Based on our summary, we can see that there are two factors that are statistically significant as show by the three asteriks next to "vehicle_length" and "ground_clearance". Additionally, the intercept was also statistically significant indicating that there are other factors not included that may be statistically significant. Based on our summary the MPG have a positive correlation with vehicle_length and ground_clearance which makes sense as gas consumption generally increase as these factors get larger. 
With a p-value of 5.35e-11 which is an incredibly small p-value, we can conclude that the null hypothesis is rejected and thus that the relationship between our variables and MPG are significant.

### Summary on Suspension
![Suspension Total Summary](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/Suspension%20Summary.png)
![Suspension Summary Lot](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/Lot%20Summary.png)
Based on our summary results, we can see that Lot 3's variance of 170.3 is way above the other two lots indicating that Lot 3 is causing some of the manufacturing issues for the MechaCar.
### T-Tests on Suspension
![T-test](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/One%20Sample%20T%20Test.png)
With a p-value of 0.06, it is not below our goal of 0.05 and therefore we cannot reject the null hypothesis. In conclusion, suspension coils across all lots are not statistically different from the population mean.  
![T-test Lot 1](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/Lot%201%20Test.png)
Similar to our analysis above, the p-value of 1 is not low enough for us the reject the null hypothesis. Therefore, we can conlude that Lot 1 is not statistically different from the population mean. 
![T-test Lot 2](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/Lot%202%20Test.png)
Similar to our analysis above, the p-value of 0.061 is not low enough for us the reject the null hypothesis. Therefore, we can conlude that Lot 2 is not statistically different from the population mean. 
![T-test Lot 3](https://github.com/jeremysz0419/MechaCar_Statistical_Analysis/blob/main/Results_/Lot%203%20Test.png)
With a p-value of 0.04 (which is below 0.05), we can conclude that Lot 3 is statistically different from the population mean. This is consistent with our conclusion in summaries on suspension coils where Lot 3 was deemed a problem. It has become apparent that Lot 3 is one of the problems affecting manufacturing and thus should be examined. 

##Study Design: MechaCar vs Competition
As more and more electric cars are produced, people are always on the lookout for cars with good fuel efficiency that are cost-effective. A great example would be the Toyota Prius, the new Tesla Model 3, and other electric or hybrid cars. As the MechaCar enters the market, it is paramount that we perform research on the fuel efficiency of our car in comparison to competitors. 
### Null Hypothesis
H0: Is the MechaCar's MPG statistically similar to other vehicles with the same make, size, and engine power?
Ha: Is the MechaCar's MPG statistically lower or higher when compared to vehicles with the same make, size, and enginer power?
### Test Performed
The best test to perform in this case would be a two-sample t-test.
### Types of data to gather
This might be the most difficult part as we would need to compare a plethora of things. We would need to compare the MPG to cars in the similar category and thus we would need our competitors: MPG, Make, Cabin Size, Storage/Trunk Space, Weight, and etc. 
