
---------------- Table of Contents ---------------- 

1. [Regression](#regr)
2. [What is Regression?](#whatis)
3. [A List of Ingredients](#ingred) 
4. [Formulas](#formulas)
5. [Hypotheses in Regression](#hype)
   
5. [Types of Regression](#types)
	* [Simple Linear Regression](#slr)
	* [Least Squares](#least)
	* [Coefficient of Determination](#coef)
6.  [Outliers and Other Data Issues](#outliers)

---------------- Table of Contents ---------------- 

Our dataset is about how to predict an employee's capabilities. We have Emotional Intelligence, Proactivity, Performance, and Turnover. SJT (IV) is situational judgement test. We are going to work on predicting performance (DV) with JUST SJT. 

1. Read Data in - why do we do this every time? Because of app culture, many students have not had to actually organize their information on a machine. Getting used to this is an essential soft skill. (library{reader})
	1. Call it main.
	2. 300 observations, 6 variables
	3. Go over ID.
	4. All interval / ratio
2. Exploratory analysis
	1. nrow(df) - what is n?
	2. names(df) - what are the variables
	3. freq table
	4. desc table
3. Getting started with making a model.
	1. library(lessR) - allows us to do all sorts of things with regression. 
	2. Scatterplot(SJT, Performance, data = df, ellipse = TRUE) - look into the ellipse. It provides it around our scatterplot. It allows us to visualize if the data is linearly associated. Seems to be a positive correlation. We want to see a football shape. 
		1. You can explore the different plots with the back and forward buttons. 
		2. We still mostly exploring. We can see some outliers. 
		3. We can see the correlation variables (r). From this correlation, we can see that this is statistically significant and correlated strongly (41.7).
		4. So we could stop here if we chose. Talk about why. 
	3. plot() - explore this.
4. Making the model (positive correlation): 
	1. Regression(outcome variable ~ Predictor variable)
	2. Regression(Performance ~ SJT, data = df) - this is all we need to do to run our model.
	3. Explore the plots.
		1. Residual plot (histogram) - we can see a normalized residual distribution. Residuals are the error of prediction.  Met assumption of normalized residuals.
			1. Close to normal.
		2. Fitted values - predicted values of performance based on SJT. This allows us to see how close our residuals are to 0. # met assumption that residual error is zero for each level of predictor. Plot is residuals v fitted. 
		3. Variances of the residuals are equal across the various fitted values. We do not want to see a funnel, but a relatively flat line. 
		4. See that item 233 - case number as outlier. 
	4. Examination of the regression.
		1. Table with Cook's distance. Higher values = outliers and allows us to understand different ways that data differs. 
		2. Background: top to bottom. 
		3. Basic Analysis Section: 
			1. Get our estimated regression. We actually get Intercept and slope. So, A = 6.939 and X = .682. P-value < .05. Confidence Intervals. It also gives us a confidence interval. 
			2. For every 1 unit increase in SJT, performance increases by .682. 
			3. $\hat{y} = Intercept + .\beta{x_1}$ or $Performance = 6.39 + (.682*SJT)$ 
			4. We can use the above to predict performance. 
				1. There are additional steps to understand if this model is indeed accurate. 
		4. Model Fit Section: 
			1. R-Squared, Adjusted R. It also gives us F-stat, df, p-value. 
			2. SJT explains about 17% of the variance in performance. 
		5. ANOVA section: 
			1. Same value as F above. 
		6. Correlation Section. 
			1. Effect Size - find this chart. 
			2. If you square Correlation, you'll get r^2'd for regression. 
	5. Can use LM function from base_r which is useful for other things in R because it follows the internal logic. 
		1. Remove an outlier. 
			1. Regression(Performance ~ SJT, data = df, filter=(ID != 233)
			2. Go through and re-evaluate the model. 
		2. Standardized Regression Coefficient. 
			1. reg_brief(Performance ~ SJT, data = df, standardize = TRUE) (now new_scale = "z")