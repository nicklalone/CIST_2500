# Inferences about Means and Proportions with Two Populations

Up until this module, we have been primarily concerned with the test statistics applied to a single population. This is a powerful concept and one that affords us the capacity to make very wide-reaching assertions and inferences about populations. 

And yet, humans are complex and if we've learned anything over COVID, that complexity can be overwhelming. 

In this section, we're going to concern ourselves with interval estimates about 2 populations. There are tests for more than 3, but that is beyond the scope of the class.

For the most part, we've basically been nailing this down to 3 specific instances: 

1. Inferences with population parameters known.
1. Inferences with only sample statistics.
1. Inferences with only proportions.

That trend continues but we add something new, something fresh!

And that freshness is matched-sample t-tests. YAY! Let's walk through these.

---------------- Table of Contents ---------------- 

1. [T-Test Basics](#basics)
2. [R and T-Tests](#rttests)
3. [Resources for R and T-Tests](#resources)
4. [Homework Problems](#hw)
	1. [Interpreting Output](#hw1)
	2. [A 2-Tailed Test](#hw2)
	3. [A Paired Sample Test](#hw3)

---------------- Table of Contents ---------------- 

## <a id="basics"></a>T-Test Basics
So the basics of t-tests are this: 
* one of the simplest ways to tell if there is a statistical difference between the means from up to two different samples. 
* It is super useful when you have a small number of sample observations but want to speak to the larger population.
* All t tests are used as standalone analyses for very simple experiments and research questions 
* They can also be used within more complicated statistical models like regression. 

### What are the requirements?
* variables must be numeric. 
* there needs to be at least 2 means
* popular examples of t-tests will be things like height, income, and weight loss

### What does a t-test tell you?
* Ultimately, a t-test let's you know if your data's results are “surprising” (read: statistically significant)
* Generally, a t-test will let you know if you should dig in deeper.

## <a id="rttests"></a>R and T-Tests
R has a number of methods for performing t-tests. For the most part, we are going to use BASE.R and the ```t.test()``` function OR, we're going to use the package ```LessR``` and the ```ttest()``` function. The arguments you can make for these two functions is relatively straight forward: 

**LessR:** 
```
ttest(x=NULL, y=NULL, data=d, paired=FALSE, conf_level=0.95, alternative=c("two_sided", "less", "greater")
```
Which basically breaks down to the following arguments that can be made when invoking the ttest() function. I will reduce the number of them to be concerned with for this course, but the documentation is available here: https://cran.r-project.org/web/packages/lessR/index.html

**ttest() Arguments**
* **x**:  A formula of the form Y ~ X, where Y is the numeric response variable com- pared across the two groups, and X is a grouping variable with two levels that define the corresponding groups, or, if the data are submitted in the form of two vectors, the responses for the first group.
* **y**:  If x is not a formula, the responses for the second group, otherwise NULL.
* **data**: Data frame that contains the variable of interest, default is d.  
* **paired**: Set to TRUE for a dependent-samples t-test with two data vectors or variables from a data frame, with the difference computed from subtracting the first vector from the second.
* **conf_level**: Confidence level of the interval, expressed as a proportion.
* **alternative**: Default is "two_sided". Other values are "less" and "greater".

**BaseR**
For the BaseR t-test() function, we can read about it here: https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/t.test
```
t.test(x, y = NULL, alternative = c("two.sided", "less", "greater"), mu = 0, paired = FALSE, conf.level = 0.95, …)
```
**t-test() Arguments**
* *x:** a (non-empty) numeric vector of data values.
* **y:** an optional (non-empty) numeric vector of data values.
* **alternative:** a character string specifying the alternative hypothesis, must be one of `"two.sided"` (default), `"greater"` or `"less"`. You can specify just the initial letter.
* **mu:** a number indicating the true value of the mean (or difference in means if you are performing a two sample test).
* **paired:** a logical indicating whether you want a paired t-test.
* **conf.level:** confidence level of the interval.

## <a id="resources"></a>Resources for R and T-Tests
So, at this point we're heading in to tests, experiments and things that are complicated. In class, we won't spend a huge amount of time on any one test, and so in recognition of how we're crunched for time, i'll offer a bunch of resources.

**Youtube Channels that Own**:
* David Caughlin's Playlist about introductory R: https://www.youtube.com/watch?v=b18IHQERT4A&list=PLKkRkURCtPjBtXTXxPRrwVtmDn_wAD_7Y&ab_channel=DavidCaughlin
* The Organic Chemistry Tutor's Playlist About Stats: https://www.youtube.com/watch?v=XZo4xyJXCak&list=PL0o_zxa4K1BVsziIRdfv4Hl4UIqDZhXWV&ab_channel=TheOrganicChemistryTutor
* Geek's Lesson's playlist on Stats (also the R playlist is great!): https://www.youtube.com/watch?v=hjZJIVWHnPE&list=PLmAuaUS7wSOOI9LXA5mqh3SEX6SZF7TNd&ab_channel=Geek%27sLesson

**Fantastic Tutorials:**
* https://www.theopeneducator.com/doe/hypothesis-Testing-Inferential-Statistics-Analysis-of-Variance-ANOVA/Two-Sample-Population-Proportion-Test
* asd
* asd
* ads

## <a id="hw"></a>Homework Problems

### <a id="hw1"></a>Interpreting Output
```
t.test(Tickets ~ Governor, data = tickets, 

Links to an external site.       paired = TRUE, alternative = "greater")
```

After running the test, we see the following data. What does it indicate?

```
## 	Paired t-test
## 
## data:  Tickets by Governor
## t = 2.6209, df = 7, p-value = 0.01718
## alternative hypothesis: true difference in means is greater than 0
## 95 percent confidence interval:
##  0.7863436       Inf
## sample estimates:
## mean of the differences 
##                  2.8375
```

### <a id="hw1"></a>A 2-Tailed Test
A criminologist is interested in possible disparities between sentences given to males and females convicted in murder-for-hire cases. Selecting 14 cases involving men convicted of tyring to solicit someone to kill their wives and 16 cases involving women convicted of trying to solicit someone to kill their husbands, the criminologist finds the following: 

* Mean length of sentence for males = 7.34 years with a standard deviation of 2.51 years.
* Mean length of sentence for females = 9.19 years with a standard deviation of 3.78 years.
* Assume you are working at the .05 level of significance. 

Calculate the t-statistic using the formula: $$t=\frac{\bar{x}_1-\bar{x}_2}{\sqrt{\frac{s_1^2}{n_1}+\frac{s_2^2}{n_2}}}$$
### <a id="hw1"></a>A Paired Sample Test
For this question, we're actually going to go watch a video that I really enjoyed. It manages to break down using R with t-tests really well, especially for the type of test we're working with. The context of this dataset is as such that it is examining how well employees performed on a test after a training regiment. 

You can find the dataset here: [ttest - quiz data.csv](https://unomaha.instructure.com/courses/65059/files/8079983?wrap=1 "ttest - quiz data.csv")[Download ttest - quiz data.csv](https://unomaha.instructure.com/courses/65059/files/8079983/download?download_frd=1)

This video will walk you through a lot of this but it also will be contained in the Github repository should you need it.

Note: I have manipulated the heck out of the datasheet that the video uses so you'll have to re-run everything and re-interpret it.

So in the space provided, please tell me 3 things: 

1.  Construct a set of hypotheses for this test. 
2.  At the 95% Confidence Level, what is the t value?
3.  Is this significant? (hint: look at the p-value and see if it is under .05).
4.  What does all of this mean?