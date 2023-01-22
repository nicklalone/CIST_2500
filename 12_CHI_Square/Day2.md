---------------- Table of Contents ---------------- 

1. [Regression and Correlation](#regr)

3. [What is Regression?](#whatis)
4. [A List of Ingredients](#ingred) 
5. [Formulas](#formulas)
6. [Hypotheses in Regression](#hype)
   
5. [Types of Regression](#types)
	* [Simple Linear Regression](#slr)
	* [Multiple Regression](#multi)
	* [Logistic Regression](#logis)

6. [Components](#comp)
	* [Dependent Variables](#dv)
	* [Independent Variables](#iv)
	* [Least Squares](#least)
	* [Coefficient of Determination](#coef)

7.  [Outliers and Other Data Issues](#outliers)

---------------- Table of Contents ---------------- 

## <a id="regr"></a> Regression and Correlation
Humans are complicated, obsessively so. There are numerous songs, poems, books, movies, and other artifacts of pop culture devoted to this concept. Statistics is a way through which to understand the world of humans but all we've really done is: 

1. Gather a bunch of data. 
2. Analyze that data about what it says about humanity. 
3. Calculate a statistic that indicates the probability that we are correct.

What if we could actually use our data to predict something's occurance? What if we could use our data to create a model that affords us the ability to actually represent the influence of certain kinds of beliefs and behaviors on certain kinds of outcomes? Well, in this last section of class, we'll be dealing with just that!

## <a id="whatis"></a> What is Regression?
Regression is a singular equation, $\hat{y} = A + \beta{X_1}...$ wherein you are predicting a value for variable $\hat{y}$ by 1, or more, variables $x$. But what is that weird B there? That $\beta$ symbol is beta, or the symbol for slope. 

So yes, Regression is also an algebraic formula for a line. When we graphically show it, it looks a bit like this: 
![Regression Model](/images/regre.jpeg)
The above image is from an amazing post on [Toward Data Science](https://towardsdatascience.com/linear-regression-explained-1b36f97b7572). I use this group of Medium quite a bit because I have written articles for this collection over the years. They're good folks! 

So along these lines, you might also notice that the word, "correlation" shows up there. And it is indeed a thing we should probably talk about. So, correlation and regression are related. You cannot understand how things can predict other things if you aren't sure of the relationship. 

As such, correlation is a way for us to understand, visualize, and calculate just how related, how correlated, variables can be. Let's look at the 3 ways correlation can exist: 

![Correlation](/images/corr.png)

The line is essentially the thing that regression's slopes are all about. As one vaiable changes, there is a change in a different variable. This model is simple, but it shows us so, so much. 

The thing that we calculate are called a correlation coefficient $r$ and $r^2$ which indicates the strength of a regression equation. It is indicative of just how much the variables in question form a straight line. When we are reading them, anything over 0 indicates a positive correlation whereas anything under zero indicates a negative correlation. But it gets better! 

If we end up with an $r$ of –1, this is called a perfect negative correlation. A way to think about this is that as one variable goes up, the other goes down. On the other hand, an $r$ of 1 is called a perfect positive correlation. And you are correct, as one variable goes up, the other variable goes up.

I haven't said this yet, but $r$ is also called, "Pearson's Correlation Coefficient" and is named after....a guy named Pearson. So, if we're looking for slope and a line and correlation and it's all tied to a letter, what does it look like?
![Images of correlation coefficients](/images/r.png)
Being able to see your data like this, in a histogram, will be incredibly useful. Let's see a few examples. 

## <a id = "examp"></a> Examples
So at its core, regression is about a variable that depends on 1 or more other variables. The thing being regressed, is the Dependent Variable. The thing doing the regressing is the Independent Variable. So what could this look like? 

Well, consider this: 
![Regression Equations](/images/birthpov.png)

I come from a very small town in the rustbelt of Ohio. One of the things that stuck out about it was that my graduating class of around 129 saw approximately 80% of the women in the class pregnant, and not always with just 1 child. One class member had 3 kids before she graduated. 1 for sophmore, junior, and senior years. 

The above dataset gets into the why. It is a plot where birth rates are predicted by poverty. There are so many things interesting here. First, note that the $R-Sq$ is at .533 or that poverty explains 53.3% of the variance in Birthrates. This means that as poverty goes up, birth rates also go up. The item that is interesting here though is the equation itself. $$Birth15to17 = 4.267 + 1.373(Poverty Percentage)$$
So how do you read this? Well, we can say that the birth rate of 15-17 year olds can be predictied by everything to the right of the =. That first number, 4.267 is a constant or noise indicator. We refer to it as A sometimes, $b_o$ in others. In both circumstances it is also called, "the intercept" and is best defined as, "the intercept (often labeled the constant) is the expected mean value of Y when all X=0" which I [grabbed from here](https://www.theanalysisfactor.com/interpreting-the-intercept-in-a-regression-model/#:~:text=Here's%20the%20definition%3A%20the%20intercept,of%20Y%20at%20that%20value.). 

So from the above, look on the Scatterplot. If Y = 4.267, that looks dangerously close to where the poverty percentage would be if birth rate was 0. It is essentially the "constant" poverty we could expect. 

## <a id="ingred"></a> A List of Ingredients 

* ***ANOVA table:** The analysis of variance table used to summarize the computations associated with the F test for significance.

* **Coefficient of determination:** A measure of the goodness of fit of the estimated regression equation. It can be interpreted as the proportion of the variability in the dependent variable y that is explained by the estimated regression equation.

* ***Confidence interval:** The interval estimate of the mean value of y for a given value of x.

* ***Correlation coefficient:** A measure of the strength of the linear relationship between two variables (previously discussed in Chapter 3).

* ***Dependent variable:** The variable that is being predicted or explained. It is denoted by y.

* **Estimated regression equation:** The estimate of the regression equation developed from sample data by using the least squares method. For simple linear regression, the estimated regression equation is y⁄ 5 b0 1 b1x.

* ***High leverage points:** Observations with extreme values for the independent variables. Independent variable The variable that is doing the predicting or explaining. It is denoted by x.

* **Influential observation:** An observation that has a strong influence or effect on the regression results.

* ****i*th residual:** The difference between the observed value of the dependent variable and the value predicted using the estimated regression equation; for the ith observation the ith residual is yi 2 y⁄i.

* **Least squares method:** A procedure used to develop the estimated regression equation. The objective is to minimize o( yi 2 y⁄i)2.

* **Mean square error:** The unbiased estimate of the variance of the error term 2. It is denoted by MSE or s2.

* **Normal probability plot:** A graph of the standardized residuals plotted against values of the normal scores. This plot helps determine whether the assumption that the error term has a normal probability distribution appears to be valid.

* **Outlier:** A data point or observation that does not fit the trend shown by the remaining data.

* **Prediction interval:** The interval estimate of an individual value of y for a given value of x.

* **Regression equation:** The equation that describes how the mean or expected value of the dependent variable is related to the independent variable; in simple linear regression, E( y) 5 b0 1 b1x.

* **Regression model:** The equation that describes how y is related to x and an error term; in simple linear regression, the regression model is y 5 b0 1 b1x 1 e.

* **Residual analysis:** The analysis of the residuals used to determine whether the assumptions made about the regression model appear to be valid. Residual analysis is also used to identify outliers and influential observations.

* **Residual plot:** Graphical representation of the residuals that can be used to determine whether the assumptions made about the regression model appear to be valid.

* **Scatter diagram:** A graph of bivariate data in which the independent variable is on the horizontal axis and the dependent variable is on the vertical axis.

* **Simple linear regression:** Regression analysis involving one independent variable and one dependent variable in which the relationship between the variables is approximated by a straight line.

* **Standard error of the estimate:** The square root of the mean square error, denoted by s. It is the estimate of , the standard deviation of the error term e.

* **Standardized residual:** The value obtained by dividing a residual by its standard deviation.

## <a id="formulas"></a> Formulas

![Regression 1](/images/reg-1.png)

![Regression 2](/images/reg-2.png)
![Regression 3](/images/reg-3.png)
## What is Regression? 
The easiest way to think about regression is in what it's doing. What regression does is attempt to predict the outcome of a single independent variable, ($\hat{y}$) where we are trying to predict it based on a constant: ($= A$) as seen from the perspective of deprendent variables.( $+ b_1 x$). or: $$\hat{y} = A + \beta_1 x$$ Another way to think about regression is how your book defines it: 

> In this chapter we consider the simplest type of regression analysis involving one independent variable and one dependent variable in which the relationship between the variables is approximated by a straight line. It is called simple linear regression. Regression analysis involving two or more independent variables is called multiple regression analysis.

What's this straight line business? Well, it is based on the data you are trying to model. It helps to visualize the data and then fit a line to it, the regression line. It looks a bit like this: 

![Regression line Gif](/images/reg_line.gif)

### Examples of Regression: 


### <a id="types"></a> Types of Regression


### <a id="slr"></a> Simple Linear Regression


### <a id="multi"></a> Multi-Regression


### <a id="logis"></a> Logistic Regression


## How does it work?

[I pulled these steps from this post and adjusted them to match what we're doing.](https://medium.datadriveninvestor.com/steps-for-linear-regression-algorithm-simplified-daf685dcceee)

1. Reading and understanding the data
   
2. Visualizing the data (Exploratory Data Analysis)
   
3. Data Preparation
   
4. Splitting the data into training and test sets
   
5. Building a linear model
   
6. Residual analysis of the train data
   
7. Making predictions using the final model and evaluation




### <a id="hype"></a> Hypotheses in Regression   

## <a id="comp"></a> Components
### <a id="least"></a> Least Squares
### <a id="coef"></a> Coefficient of Determination
### <a id="outliers"></a> Outliers and Other Data Issues