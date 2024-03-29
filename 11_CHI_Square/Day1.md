Today, we have 3 goals: 
1. Talk about how this is categorical data and therefore non-normal.
1. We will learn about CHI-Square Tests.
1. We will learn about how to do CHI-Square analyses in R.

At its most basic, the χ² test allows us to test if a specific variable derived by a sample is accurate representing a population. It tests this assertion by calculating the data we would expect to be there.

There are 3 rules to remember for χ²:
1. Expected values are calculated with the assertion that H<sub>o</sub> is true
1. While you are seeking a relationship, the math provides us with a variety of ways variables relate mathematically. You can use another measure to understand the impact.
1. Expected values under 5 make χ² less accurate but that is ok most times.

---------------- Table of Contents ---------------- 

1. [Getting Started](#gs)
	1. [What is a Chi-square test?](#what)
	1. [A List of Ingredients](#ingreds)
	1. [Hypotheses in χ² tests](#hypos)

	1. **Types of χ² tests**
		1. [Goodness of Fit Hypotheses](#gfhypo)
		1. [Chi-Square Test of Independence](#toi)

1. [Goodness of Fit Hypotheses](#gfh)
	1. [Degrees of Freedom](#gfdfx2)
	1. [p-values for Goodness of Fit](#pvalgf)
	1. [Cramer's V](#gfcv)
	1. [Interpreting](#gfinter)

1. [Chi-Square Test of Independence](#hti)
	1. [Degrees of Freedom](#tidfx2)
	1. [p-values for Goodness of Fit](#pvalti)
	1. [Cramer's V](#ticv)
	1. [Interpreting](#tiinter)

---------------- Table of Contents ---------------- 

## <a id="gs"></a> Getting Started
So before we begin, let's get some basics.

Chi Square or χ² is essentially a test that works with nominal data, not (numeric. It allows us to understand if there is a relationship between variables. 

### <a id="what"></a> What is a Chi-square test?
We can use the phrase, "Chi-Square Test" or abbreviate it with the greek letter, "CHI" or χ². In this test, we are interested in the discrepancy between what is expected to be observed and what is actually observed. Because we're looking at what should be versus what is, this is a perfect example of a method we can use to test hypotheses.

### <a id="ingreds"></a> A List of Ingredients
Mostly, we can say that there are "2" kinds of  χ² tests. These are based on the following list of needs: 
1. **Chi-Square Goodness of Fit Test**
	* For this test, we can assume that it will be used to figure out if the variable in question actually represents the population
1. **Chi-Square Test of Independence**
	* This test is a bit more simple. It checks whether two variables are related or not.
1. **Variables / Objects**
	* CHI-Square primarily works off of categorical variables with 2 or more levels (aka choices). These will primarily be those that have multiple categories, yes/no, and other forms of these questions. 
1. **Values**: 
	* **Expected** - These values are essentially what we would expect to see should the null hypothesis be true. 
	* **Observed** - These values are what respondents actually did.
	* **Residuals** - This is derived from how far from the expected, each observation is subracted from the expected value for a variety of things.
1. **Contingency Tables**
	* This is a crosstab with observed and probably expected values as well as totals/frequency totals on it. 
	* It allows us to visualize the data we are analyzing.
1. **Degrees of freedom**:
	* For Chi-Square Goodness of Fit Test since it is 1 variable, it is calculated by: 
	* For Chi-Square Test of Independence, this is comparing 2 variables, it is calculated by $E=\frac{Row_t*Column_t}{N}$. 

Let me write 2 tables (left is the calculations, right is the results for expected counts): 

|UG|G|Totals|-|UG|G|Total|
|--|-|------|-|--|-|-----|
|(55 * 60)/100|(55 * 40)/100|55|-|33|22|55| 
|(45 * 60)/100|(45 * 40)/100|45|-|33|22|45| 
|60|40|100|-|60|40|100|

And so, we will be using these data to compare to our observed data.

There are other Chi-square tests; however, these two are the most commonly performed.

### <a id="hypos"></a> Hypotheses in χ² tests
So, we've done a ton of hypotheses and χ² tests are no exception to the hypotheses. And yet, if we have 2 kinds of tests, do we have 2 kinds of hypotheses to test? Yes!

### <a id="gfhypo"></a> Goodness of Fit Hypotheses
*Kinds of questions we focus on with this test:* Decide if boxes of nerds have the same number of pieces of each color or not

* H<sub>o</sub>: proportion of color of nerd are the same
* H<sub>a</sub>: proportions of colors are not the same

And so what is this doing? Well, it's messing with our box of nerds but it's also giving us a question to test what we are observing over what we would expect in terms of a proportion of different flavors of nerds.

-------------

## <a id="gfh"></a> Goodness of Fit Chi Square

Generally, we can say that a a chi-square goodness-of-fit test is able to be conducted when there is one nominal or categorical variable with more than a couple levels. 

_If there are exactly two categories, then a one proportion z test may be conducted._

The levels of the nominal variable being analyzed must be mutually exclusive. In other words, each case must fit into one and only one category.

What we test is if the proportions are all equal to one another or we can test any specific set of proportions.

*Kinds of questions we focus on with this test:* Decide if boxes of nerds have the same number of pieces of each color or not

* H<sub>o</sub>: proportion of color of nerd are the same
* H<sub>a</sub>: proportions of colors are not the same

And so what is this doing? Well, it's messing with our box of nerds but it's also giving us a question to test what we are observing over what we would expect in terms of a proportion of different flavors of nerds.

And how do we test these? Well, the test statistic is generated with this formula: 
$$\chi^2=\Sigma{\frac{(Observed-Expected)^2}{Expected}}$$
As you can see, all we're really doing is essentially calculate a rather robust standard error of sorts. This is our test statistic and after degrees of freedom, we will move on to different ways to evaluate the efficacy of the $\chi^2$ statistic.

### <a id="gfdfx2"></a> Degrees of Freedom

Degrees of freedom for these sorts of tests are relatively straight forward, To get your degrees of freedom, just take the number of categories and subtract 1. 

```df=(number of categories−1)```

This is then examined based on a critical value from a table on page 769-770 in your textbook or Table 3, the CHI-Square Table. Note there that you're basically using the chart to see if your chi-square calculated statistic exceeds the area based on your alpha value.

### <a id="pvalgf"></a> p-values for Goodness of Fit

For this type of test, p is essentially likelihood of obtaining a chi-square as large or larger than that in the current experiment which will still support the hypothesis. In essence, it is a probability based on how expected and observed differ based on chance.

And quite often, we just don't bother to calculate it manually. We use software or we write it out longhand. For example: .05 > p-value <.10 or "The p-value of this chi-squared analysis is above .05 but below .10." And so, from the 95% CI that we've been doing, we are forced to say that this is not significant. 

We got these data from the test-statistic and referred to the table of our critical value. And yet, we do not know the _exact_ data point. 

What is the actual value? Let's look with a stats package to calculate it as we kind of...can't calculate it without uncovering the calculus that went into the table. 

> 1-pchisq(chisquare stat, df) = p 

We can also use all sorts of online calculators like: https://www.statology.org/chi-square-p-value-calculator/

### <a id="ticv"></a> Cramer's V

Cramer's V (sometimes denoted as φ or phi even though this is just the top part of the formula) is essentially a statistic you can generate to understand a layer past the creation of critical values and test statistics. It is calculated with the following formula (read the bottom line as, "multiply N by whichever is smaller, columns or rows"): $$V=\sqrt{\frac{\chi^2/n}{min(N(k-1)OR(r-1))}}$$
In general, this is a number between 0 to 1. The table is generally interpreted this way: 

|Value|Interpretation|
|-----|--------------|
|.1-.3|Weak Association|
|.4-.5|Medium Association|
|>.6|Strong Association|

There is a lot of bias in this value, in all of these values, so being mindful of what you're seeing is important. There are other forms of this measurement to sort of cope with this and they're there for you to find if you like.

### <a id="gfinter"></a> Interpreting

So after all this, how do we interpret the results?

Well, first, we can compare our test statistic to a critical value. In creating the critical value, we can also seek a p-value using the chart.

Then we have Cramer's V. 

Let's write it out.

-------------

## <a id="hti"></a> Tests of Independence

*Kinds of questions we focus on:* Decide if movie goers' decision to buy snacks is related to the type of movie they plan to watch
H<sub>o</sub>: proportion of people who buy snacks is independent of the movie type
H<sub>a</sub>: proportion of people who buy snacks is different for different types of movies

A more generic example, maybe a little too on the nose.

H<sub>o</sub>: X and Y are independent.
H<sub>a</sub>: X and Y are dependent.

And so what is this doing? Well, it is essentially setting up a test to see what we would expect versus what we are seeing. In this case, the assertion is that there could be a relationship between movies and snacks and so we're seeing if there is.

Both Chi-square tests in the table above involve calculating a test statistic called a χ² coefficient. We then move on to p-values and can add a test called, "cramer's V" to understand just how powerful the relationship is.

### <a id="tidfx2"></a> Degrees of Freedom

Degrees of freedom, of course, come from a chart. For the Tests of Independence, since we're working with multiple variables, the formula looks a bit different: 

``` (# of rows - 1) * (# of columns - 1)```

And this is used everywhere.

### <a id="pvalgf"></a> p-values for Tests of Independence



### <a id="ticv"></a> Cramer's V

Cramer's V (sometimes denoted as φ or phi even though this is just the top part of the formula) is essentially a statistic you can generate to understand a layer past the creation of critical values and test statistics. It is calculated with the following formula: <img src="/images/cramers.png" width="100" align=middle>.

In general, this is a number between 0 to 1. The table is generally interpreted this way: 

|Value|Interpretation|
|-----|--------------|
|.1-.3|Weak Association|
|.4-.5|Medium Association|
|>.6|Strong Association|

There is a lot of bias in this value, in all of these values, so being mindful of what you're seeing is important. 

### <a id="tiinter"></a> Interpreting

So after all this, how do we interpret the results?

Well, first, we can compare our test statistic to a critical value. In creating the critical value, we can also seek a p-value using the chart.

Then we have Cramer's V. 

Let's write it out.

First, we need to figure out the observed and expected values. Once this is done, we need to set a target confidence interval. When there is nothing abnormal about your sample, we tend to see α or alpha of .05 being set. This is often done to repeat that we only had a 5% chance to make a type 1 error.

When we see ```P-value ≤ α``` then we can say that observed values are statistically significant and Reject H0.

Now, on the other hand if we see ```P-value > α```, then it is not possible to conclude that observed is significantly different from expected and so we fail to reject H0. 

It is important to note that while you cannot conclude that the distributions are the same (in that the values end up being different), then a difference might exist, but the test did not have enough power to be detectable.
