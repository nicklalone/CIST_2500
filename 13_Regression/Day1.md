---------------- Table of Contents ---------------- 

1. [Regression and Correlation](#regr)
2. [What is Regression?](#whatis)
3. [A List of Ingredients](#ingred) 
4. [Formulas](#formulas)
5. [Hypotheses in Regression](#hype)

6. [Types of Regression](#types)
	* [Simple Linear Regression](#slr)
	* [Least Squares](#least)
	* [Coefficient of Determination](#coef)
	  
7. [How does it work?](#how)
   
8. [Doing Regression - For the Homework](#doing)
	* [Reading and understanding the data](#step1)
	* [Visualizing the data (Exploratory Data Analysis)](#step2)
	* [Data Preparation](#step3)
	* [Splitting the data into training and test sets](#step4)
	* [Building a linear model](#step5)
	* [Residual analysis of the data](#step6)
	* [Making predictions using the final model and evaluation](#step7)
	  
9. [Additional Tutorials](#tuts)

---------------- Table of Contents ---------------- 

## <a id="regr"></a> Regression and Correlation
Humans are complicated, obsessively so. There are endless songs, poems, books, movies, and other artifacts of pop culture devoted to this concept. 

Statistics is a way we can generally understand the world of humans but all we've really done is: 

1. Gather a bunch of data. 
2. Analyze that data about what it says about humanity. 
3. Calculate a statistic that indicates the probability that we are correct.

What if we could actually use our data to predict something's occurrence? What if we could use our data to create a model that affords us the ability to actually represent the influence of certain kinds of beliefs and behaviors on certain kinds of outcomes? Well, in this last section of class, we'll be dealing with just that!

## <a id="whatis"></a> What is Regression?
Regression is a singular equation, $\hat{y} = A + \beta{X_1}...$ wherein you are predicting a value for variable $\hat{y}$ by 1, or more, variables $x$. But what is that weird B there? That $\beta$ symbol is beta, or the symbol for slope.

So yes, Regression is also an algebraic formula for a line. When we graphically show it, it looks a bit like this: 
![Regression Model](/images/regre.jpeg)
The above image is from an amazing post on [Toward Data Science](https://towardsdatascience.com/linear-regression-explained-1b36f97b7572). I use this group of Medium quite a bit because I have written articles for this collection over the years. They're good folks! 

So along these lines, you might also notice that the word, "correlation" shows up there. And it is indeed a thing we should probably talk about. Correlation and regression are related, you can see that they are from their coefficient of determination and strength: $r|r^2$. 

Both are essentially novel uses of Z-scores in an effort to understand how 2 variables in one sample might differ from one another. This is also where ANOVA comes in at times as we will calculate an F-Ratio like ANOVA but mostly it's there to let us see a few more details about the relationship two variables have.

Let's look at the 3 ways correlation (and regression) can exist: 

![Correlation](/images/corr.png)

While these are correlation visualizations, the line is where regression resides. The line is essentially visualizing the slope we calculate in the equation: $\hat{y}=A-\beta{x}_1$ regression's slopes are all about. As one independent variable changes ($\beta{x}_1$), there is a change in a variable that depends on the independent variable. While this model is simple, it shows us so, so much.

$r$ and $r^2$ indicates the direction and strength of a relationship between variables. It is indicative of just how much the variables in question form a straight line. When we are reading them, anything over 0 indicates a positive correlation whereas anything under zero indicates a negative correlation. But it gets better! 

If we end up with an $r$ of $–1$, this is called a perfect negative correlation. A way to think about this is that as one variable goes up, the other goes down. On the other hand, an $r$ of $1$ is called a perfect positive correlation. And you are correct, as one variable goes up, the other variable goes up.

I haven't said this yet, but $r$ is also called, "Pearson's Correlation Coefficient" and is named after....a guy named Pearson. So, if we're looking for slope and a line and correlation and it's all tied to a letter, what does it look like?

![Images of correlation coefficients](/images/r.png)
Being able to see your data like this, in a histogram, will be incredibly useful. Let's see a few examples. 

## <a id = "examp"></a> Examples
So at its core, regression is about a variable that depends on 1 or more other variables. The thing being regressed, is the Dependent Variable. The thing doing the regressing is the Independent Variable. So what could this look like? 

Well, consider this: 
![Regression Equations](/images/birthpov.png)

I come from a very small town in the rustbelt of Ohio. One of the things that stuck out about it was that my graduating class of around 129 saw approximately 80% of the women in the class pregnant, and not always with just 1 child. One class member had 3 kids before she graduated. 1 for sophomore, junior, and senior years. 

The above dataset gets into the why. It is a plot where birth rates are predicted by poverty. There are so many things interesting here. First, note that the $R^2$ is at .533 or that poverty explains 53.3% of the variance in Birthrates. This means that as poverty goes up, birth rates also go up. The item that is interesting here though is the equation itself. $$Birth15to17 = 4.267 + 1.373(Poverty Percentage)$$
So how do you read this? Well, we can say that the birth rate of 15-17 year olds can be predicted by everything to the right of the =. That first number, 4.267 is a constant or noise indicator. We refer to it as A sometimes, $b_o$ in others. In both circumstances it is also called, "the intercept" and is best defined as, "the intercept (often labeled the constant) is the expected mean value of Y when all X=0" which I [grabbed from here](https://www.theanalysisfactor.com/interpreting-the-intercept-in-a-regression-model/#:~:text=Here's%20the%20definition%3A%20the%20intercept,of%20Y%20at%20that%20value.). 

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
## <a id="what"></a> What is Regression? 
The easiest way to think about regression is in what it's doing. What regression does is attempt to predict the outcome of a single independent variable, ($\hat{y}$) where we are trying to predict it based on a constant: ($= A$) as seen from the perspective of deprendent variables.( $+ b_1 x$). or: $$\hat{y} = A + \beta_1 x$$ Another way to think about regression is how your book defines it: 

> In this chapter we consider the simplest type of regression analysis involving one independent variable and one dependent variable in which the relationship between the variables is approximated by a straight line. It is called simple linear regression. Regression analysis involving two or more independent variables is called multiple regression analysis.

What's this straight line business? Well, it is based on the data you are trying to model. It helps to visualize the data and then fit a line to it, the regression line. It looks a bit like this: 

![Regression line Gif](/images/reg_line.gif)

### <a id="types"></a> Types of Regression
There are a bunch of different kinds of regression. Much of the difference between the various kinds of regression depend on two things: our variable types and our model. 

The model is relatively straight forward. We have an outcome variable, this is the variable that depends on everything to the right of the =. Those variables that are doing the predicting, the ones upon which the dependent variable depends, are called independent variables. 

We cannot just throw things together, we have to suss out a collection of variables that make sense. So for example, we can't just throw together Nicolas Cage movies and Ice Cream Sales. It doesn't make sense (maybe it does, but I cannot see it). For many of you, you'll think about the word, "subjective" for this. And in some ways it is, in some ways it is not. We are trying to understand a wide swathe of humanity. In this case, we're using our perspective and training as a researcher to gather and disseminate replicable and generalizable facts about a population. 

So think of it like this, you're using your perspective to gather a ton of perspectives and report how, once they're all added up, a certain portion of humanity feels. 

We're taking our subjectivity, summing up a lot of other subjectivities, and letting folks calculate it as well (in that we'll share our data as long as I don't work for a corporation or am engaged in privileged information (easier way to refer to this is, "top secret") as they are not required to share their data). 

The kinds of Regression we'll discuss here are: 
1. Simple Linear Regression
2. Multiple Regression
3. Logistic Regression

### <a id="slr"></a> Simple Linear Regression & <a id="multi"></a>Multiple Regression
> the simplest type of regression analysis involving one independent variable and one dependent variable in which the relationship between the variables is approximated by a straight line. It is called simple linear regression. Regression analysis involving two or more independent variables is called multiple regression analysis.

### <a id="logis"></a> Logistic Regression
This is essentially regression with categorical data. 

______________________

## <a id="how"></a> How does it work?
Before we talk about regression, let's talk about the r coefficient. It has a pretty daunting formula: 
$$r = \frac{n\sum{XY} - (\sum{X})(\sum{Y})}{\sqrt{[n\sum{x^2}-(\sum{x})^2][n\sum{y^2}-(\sum{y})^2]}}$$

Does it look familiar? Well, like all of statistics, it is based on a much simpler formula. You've actually been doing it for a while. Does this look familiar? $$z = \frac{Raw Score - Mean}{Standard Deviation}$$
Can you see it? Since we're working with 2 variables, we're having to make some adjustments. Let's look at the formula for Mean and the formula for standard deviation and stick them together: $$s = \sqrt\frac{\sum(x-\bar{x})^2}{n-1}$$
So what's happening here? 

Well, if you look at the **numerator**, we're basically taking total number of observations, summing them together while multiplying, and then subtracting the summation of all of X and all of Y. 

If you look at the denominator, that's basically standard deviation. We're taking and multiplying the two samples together after performing the top of the numerator portion of standard deviation. As we calculate it, we are not dividing, but multiplying and taking care of the potential for negative numbers.

It's not an exact science, but we can basically see where Pearson began and then fiddled long enough to to get everything standardized. It's this creation of ways to standardize numbers, get them into a stable form, that really helps us connect the dots of statistics. 

So after calculating all of this, we basically get a value that allows us to understand how much $Y$ is being influenced by $X$. And in doing this, we'll end up with a number somewhere between -1 and 1. 

You might as yourself about a negative number. Well, look at the numerator. That is taking $x - \bar{x}$ or if we want to be accurate, $n\sum{XY} - (\sum{X})(\sum{Y})$. As such, if the sum of all X multiplied by all Y is greater than the sum of XY multiplied together, then you'll end up with a negative number.

And that means that the association between these variables is negative. 

However, there's also p-values, ANOVA, and Correlation that are all part and parcel of a complete analysis. 

So how do we *actually do* a regression? Well, let's check it out!

______________
## <a id="doing"></a>Doing Regression - For the homework

[I pulled these steps from this post and adjusted them to match what we're doing.](https://medium.datadriveninvestor.com/steps-for-linear-regression-algorithm-simplified-daf685dcceee)
#### <a id="step1"></a>1. Reading and understanding the data
So the very first thing we need to do is to read the data and get it into the program we're using. 

At this point, you might as why do we do this every time. And to that i'll say that because of app culture, many students have not had to actually organize their information on a machine. As a result, many of our organizational skills for files are a massive mess. As IT professionals (regardless of the industry), organization is a must. 

So, getting used to this is an essential soft skill. 

For this, we do this the same way we always have. We import it and make sure to place it into an easy to remember dataframe. 

> library(readr)
> main <- read_csv("~/~path~/SelectionExercise.csv")      

What you'll notice is the following: 
* 300 observations, 6 variables
	* ID
	* SJT - Situational Judgement Test or Training - Independent
	* EmotionalIntelligence - Independent
	* Proactivity - Independent
	* Performance - Dependent
	* Turnover - Extra / Ancillary
* One thing to note is that 1 of the variables is ID
* All of the data is interval / ratio

For the first time, we don't really have to do anything with the data (that we know of.)

#### <a id="Step2"></a>2. Visualizing the data (Exploratory Data Analysis)

Exploratory Data Analysis is the act of literally poking around at your data. 
   
#### <a id="Step5"></a>3. Building a linear model
library(lessR) - allows us to do all sorts of things with regression. 
	2. Scatterplot(SJT, Performance, data = df, ellipse = TRUE) - look into the ellipse. It provides it around our scatterplot. It allows us to visualize if the data is linearly associated. Seems to be a positive correlation. We want to see a football shape. 
		1. You can explore the different plots with the back and forward buttons. 
		2. We still mostly exploring. We can see some outliers. 
		3. We can see the correlation variables (r). From this correlation, we can see that this is statistically significant and correlated strongly (41.7).
		4. So we could stop here if we chose. Talk about why. 
   
#### <a id="Step6"></a>4. Residual analysis of the data
So, one of the things we need to focus on in this sort of analysis is that the residuals really do mean something. 



   
#### <a id="Step7"></a>5. Making predictions using the final model and evaluation


## <a id="tuts"></a>Additional Tutorials
* Simple Linear: https://www.youtube.com/watch?v=Qe6LLJAmJ6c&list=PLKkRkURCtPjCJOZHskCoyJCPb8wMDs2CW&index=41&ab_channel=DavidCaughlin
* Simple Linear: https://www.youtube.com/watch?v=-mGXnm0fHtI&ab_channel=RProgramming101
* Multiple Linear: https://www.youtube.com/watch?v=zyEZop-5K9Q&t=544s&ab_channel=DavidCaughlin
* Logistic Regression: https://www.youtube.com/watch?v=O7gRceyeyT8&list=PLKkRkURCtPjCJOZHskCoyJCPb8wMDs2CW&index=43&ab_channel=DavidCaughlin