This is for Simple Linear Regression. 

The Steps are: 
1. Read Data In
2. Explore Data
3. Visualize data to look for outliers.
4. Write your model (do the regression)
5. Interpret Results
6. Celebrate a job well done.

# 1. Read Data In
use the point and click method or: 
> library(readr)
> SelectionExercise <- read_csv("R-Tutorial-Data-Files-master/SelectionExercise.csv")

# 2. Explore Data
we can verify that the data has consistency. 
nrow(SelectionExercise)
names(SelectionExercise)

Then poke around at frequencies / descriptives.
library(summarytools) # pay special attention here to the frequencies of each level. For example, if you see a frequency of 1 with a high value, get suspicious.

# 3. Visualize data to look for outliers.
This is a continuation of 2 but we're moving forward so it's its own thing. For this, I like lessR as you get a ton of great functions. 

# First, let's get the package active: 

library(lessR) # https://cran.r-project.org/web/packages/lessR/vignettes/Regression.html you can read about the arguments reg() accepts.

you can see more about this package here: https://cran.r-project.org/web/packages/lessR/index.html

Now, let's do a bit of a prompt. We want to know if our measures of performance are useful.  Before we do that, we need to see about our data a bit more than with numbers.

ScatterPlot() is a function in lessR that lets us visualize our data but it requires a few extra arguments. Generally it's:
* (V1,V2,data,ellipse(t/f))

We are interested in how Performance is dependent on Situational Judgement. As such, we need to use SJT to predict performance with our dataframe.
* ScatterPlot(SJT, Performance, data=SelectionExercise, ellipse=TRUE)

What we seek in the plot is a general ellipse shape or, "a football". It indicates normalcy in that it's linear-ish or what we call Bi-variate or 2 variable normalcy. If it was not normal, the ellipse would not contain the bulk of the points.

However, note those scores way outside the ellipse. Those might be outliers OR they could be statistically relevant points. Who can say? 

We are also given a correlation coefficient and a p-value.
* From what we can see, r = 0.417, p-value is .000. So this is a significant statistical relationship. Note also that you can get further into the weeds of analyzing these data with t-values, df, and the like.

Let's talk about what we'd like to see with $R^2$:
* .25 L, 
* .09 M, 
* .01 S - this is a rough estimation.

# 4. Write your model (do the regression)

* Regression(Dependentvariable ~ Indepdnentvariable, data=dataframe)

This will produce 3 visualizations and a bunch of stuff: 
* Plot 1 is residuals (or errors in prediction), you want these to look mostly normal. For this example, we can see that our data is mostly normal. 
* Plot 2 is what values are actually fitted to the line. This is basically a plot of residuals vs fitted values or error vs the data used for those errors. We want a very straight line here.  
* Plot 3 focuses on models with a single predictor variable. This plot is a scatterplot of the data is produced, which also includes the regression line and corresponding confidence and prediction intervals.

# 5. Interpret Results

So there is a lot here. What does it all mean? Let's take a tour.

## Top to bottom: 
a. Basic Analysis
  * Estimated Model gives you all of the info you need to actually construct your model. For example, Intercept is A in Y = A+Bx. 
  * Underneath that value is another estimate for your independent variable.

In the case of the bottom number, that is how much your dependent variable shifts for every unit increase in the independent variable. 

So for each 1 unit increase in SJT, we see performance go up by .682.

b. Model Fit 
* These are sample specific values which is then adjusted for the predictor variables.
* Usually the adjusted R2 is gonna be less but are also rounded.
* you want to report both but the adjusted is more accurate.
* What the adjusted R2 says is, "how much of y is explained by X" (17%) not a huge amount (maybe?)

c. ANOVA
ANOVA is interested in how your variables vary. It can be helpful for you to look at during regression as it can let you know how things are. A large F-value means the between-group variation is larger than your within-group variation. This can be interpreted to mean there is a statistically significant difference in your group mean. It also tells us that the adjusted R2 is significantly different from 0.

d. RELATIONS AMONG THE VARIABLES 
So let's talk about this. What is happening here?

e. Correlation Matrix
  # In the initial model, the correlation coefficient isn't standardized. The effects here are basically able to be read with this little guidance: 
  * .5 L, 
  * .3 M, 
  * .1 S 

In this case, we're going to say that this is between medium and large.

f. Residuals
So let's talk about this. What is happening here? We have SJT, Predicted, Fitted, and Residuals. The last column of this table is COOKS D which is a way to understand how far away data points are. There isn't really any quick rule to refer to but let's talk about point 233's effect. We can remove it using: 

* Regression(Dependentvariable ~ Indepdnentvariable, data=dataframe, rows=(ID!=Outlier)

But what does it mean to control for outliers? Well, we increase the overall accuracy of our model but when removing data, we have trade offs. 

  # Prediction Error
We aren't really going to do anything with this at this time but it generally tells us how much of an impact points have on the overall potential for error. Since our residuals are also our error coefficients, this is weird. 

There is a brief version of this function: reg.brief(). You can also find a discussion of correlation coefficient examples: https://statisticsbyjim.com/basics/correlations/

# 6. Celebrate a job well done.
You all have done well this semester. 

