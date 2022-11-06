08-0987kOne of my favorite quotes about humanity is from an old sociologist named Gabriel Tarde. He was a judge in Germany and was a major opponent of Emile Durkheim. This conflict was one of the last salvos between folks who sided with Newton (Durkheim) and folks who sided with Leibniz (Tarde).

The reason I bring this up is that the outcome of these two is why we discuss statistics the way that we do. At our core, being objective about evaluating humans is something interesting that comes out of this. Durkheim believed we could (and won) while Tarde believed we could not (and he's beginning to win now). 

So the quote is this: 

> "To exist is to differ; difference is, in a sense, the truly substantial side of things; it is at once their ownmost possession and that which they hold most in common. This must be our starting point, and we must refrain from further explaining this principle."

Humans are wildly varied. Whereas Durkheim believed that we could objectively understand society as an entity that directed our actions, Tarde believed that it was an entity that is manifested 1 interaction at a time. While it was easier to do what Durkheim wanted first, Tarde's proving to have a bit more foresight.

Humans are varied. Infinitely varied. And the source of that variance is a combination of biology, social, and environmental influences. Sometimes, our data is varied because the sample of humans we grabbed is itself infinitely varied. 

There's a test for this!

And it has its uses. We call it "Analysis of Variance" or ANOVA. 

We can define [ANOVA](https://www.scribbr.com/statistics/one-way-anova/) as: 

>"a statistical test used to analyze the difference between the means of more than two groups. A one-way ANOVA uses one independent variable, while a two-way ANOVA uses two independent variables."

So rather than look for statistical significance, we're essentially looking at a test that lets us look at how we vary from each other on various types of issues. This is different than what we're looking at with means, medians, and modes. We aren't looking for where we least agree, we're looking for how we disagree, agree, and then maybe infer Why or How.

---------------- Table of Contents ---------------- 

1. [Types of Statistical Studies](#types)
	* [Experiment](#experi)
	* [Observational](#obs)
	  
2. [What is ANOVA.](#ANOVA)
3. [A List of Ingredients]() 
4. [Formulas](#formulas)
   
5. [So How does it work?](#howwork)
	* [What is the purpose of this test?](#purpose)
	* [Hypotheses in ANOVA](#hype)
	* [The F-Ratio](#f-rat)
	* [Other Test Statistics](#other)
   
5. [Experiment Design](#experi)
	* [Intro](#intro)
	* [Randomized](#random)
	* [Multiple](#multi)
	* [Random Block](#random)

---------------- Table of Contents ---------------- 

## <a id="types"></a> Types of Statistical Studies

In your textbook, you've read about two kinds of study: 
1. Experimental
2. Observational

We also have some stuff related to exploratory data analysis where you run tests...just because. Getting to know your data is useful, it's basically, "the thing" in statistics. You get to know your data, its eccentricities, and then you wander off to the next date...i mean dataset. 

### <a id="experi"></a>Experiment

> In an experimental statistical study, an experiment is conducted to generate the data. An experiment begins with identifying a variable of interest. Then one or more other variables, thought to be related, are identified and controlled, and data are collected about how those variables influence the variable of interest.

Here, we carefully decide what we want our model to be like....what we need, and then we collect it. The surprise is what the data actually says. Often, we collect this stuff for 1 of 2 reasons: 

1. We have an idea of what exists and want to verify it. 
2. We have something we want to do to humans, cats, dogs, whatever, and we need to collect data after applying that treatment. 

Everything is extremely orderly, tightly controlled, and predictible. 

### <a id="obs"></a>Observational

> In an observational study, data are usually obtained through sample surveys and not a controlled experiment. Good design principles are still employed, but the rigorous control associated with an experimental statistical study are often not possible.

This is perhaps what we've seen the most over class. I had you fill out data so that we could collect data from a survey instrument. 

## <a id = "ANOVA"></a> What is ANOVA?

The easiest way to describe ANOVA is to talk about how it sees variance. At it's core, ANOVA tests if there is a statistically significant difference between subgroups or multiple samples gathered the same way. 

It's history and creation is perhaps useful to illustrate the point. ANOVA appeared around  the 1920's where a dude was trying to understand how different fertilizers impacted potatoes. He created the test to analyze the differences among the crop yields. 

And it worked. We have used it for similar tests since that time! 

## <a id="ingredients"></a> Ingredients

This is the glossary from the appendix. Each of these terms is useful for you and useful for referring to later.

* ***ANOVA table**: A table used to summarize the analysis of variance computations and results. It contains columns showing the source of variation, the sum of squares, the degrees of freedom, the mean square, the F value(s), and the p-value(s).

* **Blocking:** The process of using the same or similar experimental units for all treatments. The purpose of blocking is to remove a source of variation from the error term and hence provide a more powerful test for a difference in population or treatment means.

* **Comparisonwise Type I error rate:** The probability of a Type I error associated with a single pairwise comparison.

* **Completely randomized design:** An experimental design in which the treatments are randomly assigned to the experimental units.

* **Experimental statistical study:** A study in which the investigator controls the values of one or more variables believed to be related to the outcome of interest, and then measures and records the outcome. The investigator’s control over the values of variables believed to be related to the outcome of interest allows for possible conclusions about whether any of the manipulated variables might have a cause-and-effect relationship with the outcome.

* **Experimental units:** The objects of interest in the experiment.

* **Experimentwise Type I error rate:** The probability of making a Type I error on at least one of several pairwise comparisons.

* **Factor:** Another word for the independent variable of interest.

* **Factorial experiment:** An experimental design that allows simultaneous conclusions about two or more factors.

* **Interaction:** The effect produced when the levels of one factor interact with the levels of another factor in influencing the response variable.

* **Multiple comparison procedures:** Statistical procedures that can be used to conduct statistical comparisons between pairs of population means.

* **Observational study:** A study in which the investigator observes the outcome of interest and possibly values of one or more variables believed to be related to the outcome without controlling the values of any variables, and then measures and records the outcome. The investigator’s lack of control over the values of variables believed to be related to the outcome of interest allows only for possible conclusions about associations between the outcome and the variables.

* **Partitioning:** The process of allocating the total sum of squares and degrees of freedom to the various components.

* **Randomized block design:** An experimental design employing blocking.

* **Replications:** The number of times each experimental condition is repeated in an experiment.

* **Response variable:** Another word for the dependent variable of interest.

* **Single-factor experiment:** An experiment involving only one factor with k populations or treatments.

* **Treatments:** Different levels of a factor.

## <a id = "formulas"></a> Formulas
![Formulas 1](/images/ANOVA-1.png)
![Formulas 1](/images/ANOVA-2.png)

## <a id="howdo"></a> So How does it work?

For the most part, we do the same thing we do for every test in statistics...however, since we're talking about multiple means, multiple samples, and combining them into this sort of, "uber" idea...we have to adjust and do a lot to get everything onto the same page.

[The basics of ANOVA are these](https://towardsdatascience.com/anova-explained-with-an-example-4a8c9699b175): 

1.  Formulate a hypothesis.
	* These are often in the vein of: H<sub>o</a>: There is no difference between. vs H<sub>a</sub>: There is a difference between. 
	  
2.  Set a significance level.
	* And much like anything we've done this semester, we set a level we're comfortable with OR that we've been asked to set it as by our client or boss. 
	  
3.  Compute an F-Statistic.
	* So, we have to calculate this based on the experiment. In your chapter, there are a number of different kinds of ANOVA with differing levels of complexity and need. For our purposes, we're just going to concentrate on the F-statistic which means we will mostly work in completely randomized ANOVA. 
	* The formula we need to work up to is this:  $$F = \frac{Mean Square due to Treatments (MSTR)}{Mean Square Due to Error (MSE)}$$
	* However, in order to get MSTR and MSE, we need to do a bunch of work. Let's walk though some formulas. 
**Numerator:** 
* So the overall formula for F has 2 parts, MSTR and MSE. Let's break down MSTR first. That formula is: $$MSTR = \frac{Sum of Squares Due to Error(SSTR)}{k (number of independent groups) - 1}$$
* Note in this formula, you are adding up all of the different groups based on treatment j and that you are essentially creating the numerator for F so you can then divide it by the total number of groups -1. This lets us bring in a metaphor for this formula, we're looking at an overall variance from the overall mean of all of the samples we're looking at. $$SSTR = \sum_{j = 1}^kn_j(\bar x_j- \bar{\bar x})^2$$
* So now we have MSTR because we ALSO have the sample mean for treatment J (look in the parentheses for SSTR). To calculate that, we have to do calculate it this way. We essentially summup all of the values of observation i for treatment j and divide it by the number of observations for treatment j. $$\bar x_j = \frac{\sum\limits_{i=n}^\mathbb{n_j}x{_i}_j}{n^j}$$
* You may ask yourself how you come up with the $n_j$ and that's a good question. What this essentially means is the number of observations for treatment j. You will know this based on the total number of entities, respondents, or whatever were treated. 
  
* Next, we need an overall sample mean. That is that weird symbol in SSTR with 2 bars above it: $\bar{\bar x}$. We calculate it using a very hard to type formula: $$\bar{\bar x} = \frac{\sum\limits_{j=1}^\mathbb{k}\sum\limits_{i=1}^\mathbb{n_j}x{_i}_j}{n_t}$$ where $n_t = n_1+n_2+n_3+n_4 ... n_k$ or you basically add up all of the representations of all the different groups / samples you have until you reach the number of total groups.
______________________ 
**Denominator:**
* So we've now got the numerator! What about the denominator or "MSE." Well, that's a bit easier. What MSE is is basically, $$Mean Square Due to Error (MSE) = \frac{Sum of Squares Due to Error (SSE)}{n_t-k}$$
* So now we know what we have to do. We have to find SSE so that we can find SSE and finish up our denominator and ultimately allow us to calculate F. What does SSE's formula look like? Well, it's like this: $$SSE = \sum\limits_{j=1}^\mathbb{k}(n_j - 1)s_j^2$$What this means is that the Sum of Squares Due to Error is equal to the summation of all people who got treatment j multiplied by the number of people in the sample -1 multiplied by the sample variance for treatment j. This means we have 1 more formula: $s_j^2$ or the sample variance for treatment J. 
	  
* So how do we calculate that? Well, let's look at the formula: $$s_j^2 = \frac{\sum\limits_{i=1}^\mathbb{n_j}(x{_i}_j - \bar x_j)^2}{n_j - 1}$$ So what's happening here? Well, we can say that the sample variance for our treatment is relatively straight forward. We are summoning up how everyone differs from the mean of treatment j and then dividing it by n-1. This is *exactly* the same formula as any sample variance. Remember that variance is calculated by: $$s^2 = \frac{\sum(x_i - \bar x)^2}{n-1}$$
So we're basically doing the thing we always do but with slightly different numbers. Now, after we do all this, we go back to our F formula: $$F = \frac{MSTR}{MSE}$$
And calculate it. This will give us a number. We can then use it to calculate a p-value. OR DO WE? That's right, there's an F-Table!  

1.  Use the F-Statistic to derive a p-value.
2.  Compare the p-value and significance level to decide whether or not to reject the null hypothesis.

We can think about ANOVA in a bunch of different ways: 

### <a id="purpose"></a> What is the purpose of this test?

> What are some ways to think about the purpose of ANOVA? What does it measure?
> It measures whether there's more variation between groups than within groups. It examines the legitmacy of a classifcation scheme. 



### <a id="hype"></a> Hypotheses in ANOVA
### <a id="f-rat"></a> The F-Ratio

> What is the F Ratio? What does it reflect? 
> The F Ratio is the test statistic calculated for ANOVA. It is the ratio of the variation between the samples to the variation within the samples. 

It is calculated by doing something seemingly simple (at first):

![F-Stat Stuff](/images/fstat.png)


### <a id="other"></a> Other tests

## <a id="experi"></a> Experiment Design

### <a id="intro"></a> Intro

### <a id = "random"></a> Randomized

### <a id = "multi"></a> Multiple

### <a id = "random"></a> Random Block
