Today, we have 2 goals: 
1. We will learn about CHI-Square Tests
1. We will learn about how to do CHI-Square analyses in R.

At its most basic, the χ² test allows us to test if a specific variable derived by a sample is accurate representing a population. It tests this assertion by calculating the data we would expect to be there.

There are 2 rules to remember for χ²:
1. Expected values are calculated with the assertion that H<sub>o</sub> is true
1. While you are seeking a relationship, the math provides us with a variety of ways variables relate mathematically. You can use another measure to understand the impact.

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
	1. [P-Value Approach to χ²](#gfpvap)
	1. [Critical Value Approach to χ²](#gfcvap)
	1. [Cramer's V](#gfcv)
	1. [Interpreting](#gfinter)

1. [Chi-Square Test of Independence](#hti)
	1. [Degrees of Freedom](#tidfx2)
	1. [P-Value Approach to χ²](#tipvap)
	1. [Critical Value Approach to χ²](#ticvap)
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
1. Chi-Square Goodness of Fit Test
	* For this test, we can assume that it will be used to figure out if the variable in question actually represents the population
1. Chi-Square Test of Independence
	* This test is a bit more simple. It checks whether two variables are related or not.
1. Next, we need degrees of freedom:
	* For Chi-Square Goodness of Fit Test since it is 1 variable, it is calculated by: 
	* For Chi-Square Test of Independence, this is comparing 2 variables, it is calculated by taking the row total, multiplying by the column total, and dividing by the table total for each cell. Let me write 2 tables (left is the calculations, right is the results for expected counts): 

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

## <a id="gfh"></a> Goodness of Fit Hypotheses

*Kinds of questions we focus on with this test:* Decide if boxes of nerds have the same number of pieces of each color or not

* H<sub>o</sub>: proportion of color of nerd are the same
* H<sub>a</sub>: proportions of colors are not the same

And so what is this doing? Well, it's messing with our box of nerds but it's also giving us a question to test what we are observing over what we would expect in terms of a proportion of different flavors of nerds.

### <a id="gfdfx2"></a> Degrees of Freedom

df=(number of categories−1)

### <a id="gfpvap"></a> P-Value Approach to χ²



### <a id="gfcvap"></a> Critical Value Approach to χ²



### <a id="ticv"></a> Cramer's 



### <a id="gfinter"></a> Interpreting



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

### <a id="tipvap"></a> P-Value Approach to χ²
### <a id="ticvap"></a> Critical Value Approach to χ²
### <a id="ticv"></a> Cramer's V
### <a id="tiinter"></a> Interpreting