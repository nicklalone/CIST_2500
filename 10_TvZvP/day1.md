# Inferences about Means and Proportions with Two Populations

Up until this module, we have been primarily concerned with the basics of stats, point estimation, variance, and more recently, interval estimation. This is a powerful concept and one that affords us the capacity to make very wide-reaching assertions and inferences about populations from those simple spaces alone.

And yet, humans are complex and if we've learned anything over COVID, that complexity can be overwhelming. 

In this section, we're going to concern ourselves with comparisons. In short, we're going to busy ourselves thinking about interval estimates about 2 different samples or populations. 

Before I begin, just know that there are tests for more than 3, but that is beyond the scope of the class.

In an effort to center ourselves, we will keep this to 3 specific kinds of comparison: 

1. Inferences with population parameters known or $\mu \ and\ \sigma$
1. Inferences with only sample statistics or $\bar{x}\ and\  s$.
1. Inferences with only proportions or a complete lack of population or sample points.

For this section, we will be doing, "t-tests" which are best defined as comparing means in an effort to understand how the populations differ.

---------------- Table of Contents ---------------- 

1. [Terms for the Module](#terms)
1. [Formulas for this module](#formulas)
	1. [On d-bar](#dbar)
2. [T or Z? How do you decide?](#torz)
3. [One or Two Tailed: How do you decide?](#1or2)
4. [Inferences about two populations with parameters known](#inf2kno)
	* [Problem 1 - Test Scores](#ppk-1)
	* [Problem 2 - Test Scores](#ppk-2)
5. [Inferences about two populations with parameters unknown](#inf2unkno)
	* [Problem 1 - Test Scores](#unkno-1)
6. [Inferences about two populations with only proportions](#inf2pop)
	* [Problem 1 - Quantum Computing](#inf2pop-1)
7. [Matched Sample t-tests](#matsampt)
	* [Problem 1 - Weight Loss](#matsampt-1)

---------------- Table of Contents ---------------- 

## <a id="terms"></a> Terms for this module

* **Degrees of Freedom**: These are essentially the number of values within a dataset that could vary from one another. We tend to take n-1 because all numbers can vary aside from the very last one.

* **Independent Random Samples**: Samples selected from two populations in such a way that the elements making up one sample are chosen independently of the elements making up the other sample.

* **Matched Samples**: Samples in which each data value of one sample is matched with a corresponding data value of the other sample.

* **Pooled Estimator of p**: An estimator of a population proportion obtained by computing a weighted average of the point estimators obtained from two independent samples.

## <a id="formulas"></a> Formulas for this module

Generally this module is all about how to compare 2 populations. It is essentially augmenting what we've already been doing. 

We will basically be making:
1. Inferences with population parameters known.
1. Inferences with only sample statistics.
1. Inferences with only proportions.

Or if we think about this another way: 

1. Inferences when you are sampling a known population.
1. Inferences from just a sample
1. Inferences with just a sample statistic or ratio.

You will see the same concepts here as all the others: z, t, standard error, test statistics, degrees of freedom, and p values. In each circumstance, there is a corresponding formula. 

Below, I will walk through  number of problems. Each problem will be explained in class.

#### <a id="dbar"></a>on $\bar{d}$
One thing I should add here is that there is not a formula for $\bar{d}$. This letter is basically, "mean difference" in a matched pair t-test and it is calculated (as you can see below) according to the formula, $\frac{\bar{d}=\Sigma{d}}{n}$. Or in essence, we take the matched samples, subtract the after from before, and average that.

![Formulas for this Chapter](/images/dbm-1.png)
![Formulas for this Chapter](/images/dbm-2.png)

## <a id="torz"></a> How do we decide on t or z?

Use this handy flow chart!

![Flow Chart](/images/zort.png)

And so we can boil this down pretty quickly.
* Is n > 30 and do we know $\sigma$? If so, that's a z!
* If either of these are false, then it's a t!

**But ultimately, what's the difference?** Much of the difference can be boiled down to math. With regard to knowing population parameters, we set up ourselves on a z-table and get a value based on whatever our critical value is. When we don't know those things, the math is even more unsure. And so, we set our value up to be based on how much our sample actually contains given the surety we want.

## <a id="1or2"></a>One or Two Tailed: How do you decide?
For the most part, deciding what sorts of test to perform is perhaps the most important part of this module. It is important because the data in front of you dictate what maneuvers you can perform and so doing the wrong maneuver will ultimately result in incorrect inferences.

You will hear here the terms, 1-tailed and 2-tailed. There's so much to deal with here but: 

![[1v2tail.png]]

I highly recommend this super good video: https://www.youtube.com/watch?v=XHPIEp-3yC0&ab_channel=TheOrganicChemistryTutor

But the question here that is important is, "How do I decide between One-sample, two-sample, or paired t-test?" and to this, we can state the following: 

* If your samples come from a single population (e.g. measuring before and after an experimental treatment), then the recommended concept is a **matched sample t-test**.
  
* How do we decide between a one-tailed or two-tailed t-test?
	* If you only care whether the two populations are different from one another, perform a two-tailed t-test.
	* If you want to know whether one population mean is greater than or less than the other, perform a one-tailed t-test.

## <a id="inf2kno"></a>Inferences about two populations with parameters known

This is our first problem to consider. We're comparing 2 populations and actually know some of the population parameters. We'll do a problem that doesn't have any context, and then we'll try one with context. 

We'll consider the steps here and we'll be moving from left to right: 

1. The very first thing is we need to concern ourselves with is the "point estimate of the difference between the two populations" or: $\bar{x_1}-\bar{x_2}$. This is the start of your interval. We then need to fill out the stuff to the right of the formula.
   
1. Calculate standard error of $\bar{x_1}-\bar{x_2}$ which is essentially: $\sigma_{\bar{x_1}-\bar{x_2}}=\sqrt{\frac{\sigma^2_1}{n_1}+{\frac{\sigma^2_2}{n_2}}}$. When we assemble this fully, we need a critical value or z score that corresponds to our confidence level.
   
1. What we need here is a z-score that is based on your confidence level (90, 95, 99, etc). The common values are 1.96 (95) and 2.58 (99).
   
1. And finally we assemble our whole and Calculate the Interval Estimate of the Difference Between 2 Population Means. The formula is: $\bar{x}_1-\bar{x}_2\pm z_\frac{\alpha}{_2}\sqrt{\frac{\sigma^2_1}{n_1}+{\frac{\sigma^2_2}{n_2}}}$  
 
So this is all about a general interval estimate. Sometimes, you need to actually calculate a test statistic and this is an important concept. To do that, we have a formula!

From here, we need to consider our confident coefficient. Of note, there is a new concept that shows up, D<sub>o</sub> or the "hypothesized difference between means. We use 0 as it is being fed by the null. 

At times, you may not be saying, "no change" though if that is the case, I cannot think of an example at the moment. 

And so, if you need to calculate more, use this formula: $$z=\frac{\bar{x}_1-\bar{x}_2-D_0}{\sqrt{\frac{\sigma^2_1}{n_1}+{\frac{\sigma^2_2}{n_2}}}}$$
So let's do 2 problems.

### <a id="ppk-1"></a> Problem 1, a problem without Context.
We will first try an problem without any context at all. After that, we'll add some humans in there.
|Sample 1|Sample 2|
|--------|--------|
|$n_1$ = 50|$n_2$ = 35|
|$\bar{x}_1$ = 13.6|$\bar{x}_2$ = 11.6|
|$\sigma_1$ = 2.2|$\sigma_2$ = 3.0|

1. What is the point estimate of the difference between the two populations?

$\bar{x}_1-\bar{x}_2=13.6-11.6=2$

1. Provide a 90% CI for the difference between the two population means.

	* Z<sub>σ/2</sub> = 1.645 (90% CI results in this.)
	* $\bar{x}_1-\bar{x}_2\pm1.645{\sqrt{\frac{\sigma^2_1}{n_1}+{\frac{\sigma^2_2}{n_2}}}}$ 
	* $2\pm1.645\sqrt{\frac{2.2^2}{50}+\frac{3^2}{35}}$ 
	* 2 ± .98 or 1.02 to 2.98

1. Provide a 95% CU for the difference between the two population means.

	* Z<sub>σ/2</sub> = 1.96 (95% CI results in this.)
	* $\bar{x}_1-\bar{x}_2\pm1.96\sqrt{\frac{\sigma_1^2}{n_2}+\frac{\sigma_2^2}{n_2}}$
	* $2\pm1.96\sqrt{\frac{2.2^2}{50}+\frac{3^2}{35}}$ 
	* 2±1.17 or .83 to 3.17

So we end up with an interval here but we don't really have any sort of hypotheses to worry about. Let's try an actual problem with actual data.

### <a id="ppk-2"></a> Problem 2: Let's Connect this to an actual example with consequences.

> A test was conducted on two different classes to see if there was any significant difference between the performance of two teachers. The final exam scores of 35 students in the 1st class yielding a mean of 82 and a σ of 2.4. The mean final exam score of the 2nd class was 84 with a σ of 1.7 with a sample of 46 students. 

This is **not** a matched sample because the same students are not taking the same class from 2 different instructors.

* Determine if there is any major difference at a 5% significance level.

* **Step 0**: Write your hypotheses. For this one, we are looking for a difference and so we're working on = or ≠. 
	* H<sub>o</sub>: µ<sub>1</sub> = µ<sub>2</sub>
	* H<sub>a</sub>: µ<sub>1</sub> ≠ µ<sub>2</sub>

* **Step 1**: Select your formula / test. 
$$z=\frac{\bar{x}_1-\bar{x}_2-D_0}{\sqrt{\frac{\sigma_1}{n_1}+\frac{\sigma_2}{n_2}}}$$
* **Step 2:** Gather your datapoints
	* $\bar{x}_1=82,\sigma_1=2.4,n_1=35$
	* $\bar{x}_2=84,\sigma_2=1.7,n_2=46$

Big thing here, let's do our check to verify what formula. Is n over 30? yes. Do we know population parameters? yes! So, z is correct.

* **Step 3: Grab your critical values: In this case, it's 5% or 95% or 1.96

You may wonder here why we call this a critical value. Well, let's go back to that one image: 
![[1v2tail.png]]
We set a critical value because we want to make sure we are being accurate with our assertion. Another way to think about this is that the area on the left picture is a 1-tailed test and that means if the value we calculate results in that region, we reject the null hypothesis. At times, this is referred to as the "Zone of rejection." This is versus the area to the right of the shaded region wherein that is the fail to reject region.

Once we have these things, we then to nuts.

* **Step 4: Fill out your formula: 
* $z=\frac{\bar{x}_1-\bar{x}_2-D_0}{\sqrt{\frac{\sigma_1}{n_1}+\frac{\sigma_2}{n_2}}}$
* $z=\frac{2}{\sqrt{\frac{2.4}{35}+\frac{1.7}{46}}}$

We end up with a value of: 
* $\frac{2}{\sqrt{.07+.037}}$ 
* $\frac{2}{\sqrt{.07+.037}}$ 
* $\frac{2}{\sqrt{.1}}$ 
* $\frac{2}{.316}$ 
* z = 6.3 or -6.3

And so we can say that there is a significant difference between the two teachers.

## <a id="inf2unkno"></a>Inferences about two populations with parameters unknown
### <a id="unkno-1"></a> 
> A business owner is in the process of deciding whether or not to invest in a new factory that refines oil in order to meet the high demand for that commodity. A test showed that the old factor refines oil at a mean rate of 3.1L per second at a std of 1.0 using a sample size of 40. The new factor was measured to refine oil at a mean rate of 3.8L per second at a standard deviation of 1.5 using sample size of 36. 

* Determine if there is any major difference at the 10% significance level.

1.  **Step 1**: Gather your datapoints
	* $\bar{x}_1=3.1,\sigma_1=1.0,n_1=40$
	* $\bar{x}_2=3.8,\sigma_2=1.5,n_2=36$

1. **Step 2: Determine your critical value:** 
Determine what test you're going for. In this case, we don't really need a df because why? This is a 2-tailed test and is seeking *any* difference. As a result, we would expect to use: $$z=\frac{\bar{x}_1-\bar{x}_2-D_0}{\sqrt{\frac{\sigma^2_1}{n_1}+{\frac{\sigma^2_2}{n_2}}}}$$
1. And then we move forward.

<a id="unkno-2"></a> **Problem 2: Test Scores but this time we pretend its just sample stats.**

> A test was conducted on two different classes to see if there was any significant difference between the performance of two teachers. The final exam scores of 15 students were sampled in the 1st class yielding a mean of 82 and a std of 2.4. The mean final exam score of the 2nd class was 84 with a std of 1.7 with a sample of 12 students. 

* Determine if there is any major difference at a 5% significance level.

* **Step 1**: Gather your datapoints
	* x̄<sub>1</sub> = 82, s<sub>1</sub> = 2.4, n<sub>1</sub> = 15
	* x̄<sub>2</sub> = 84, s<sub>2</sub> = 1.7, n<sub>2</sub> = 12
* **Step 2**: Get your degrees of freedom: n-2.
	* In this case, df = 25, t-value = 2.0595
* Step 2: Generate your critical values with the formula if needed: 
	* for this problem, it is not needed as we're using df.
* **Step 3**: Fill out your formula: $t=\frac{\bar{x}_1-\bar{x}_2-D_0}{\sqrt{\frac{s_1}{n_1}+\frac{s_2}{n_2}}}$
* $t=\frac{82-84}{\sqrt{\frac{2.4}{15}+\frac{1.7}{12}}}$
* $t=\frac{-2}{\sqrt{.16+.14}}$
* $t=\frac{-2}{\sqrt{.3}}$
* $t=\frac{-2}{.56}$
* t=3.57 which is larger than our CV and so we reject the null.

## <a id="inf2pop"></a> Inferences about two populations with only proportions

So much like the other modules, we have run in to the issue of only having proportion data. 

### <a id="inf2pop-1"></a> Problem 1: Quantum Computing

> Quantum Computing relies on the use of helium 3 and as such, requires specialized cables produced by only one company in the world. There has been a recent rash of issues in and around quality control. The company, Coax in Japan has 2 different manufacturing processes it is trying to test. They are concerned about efficacy and QA and just want to know if there is a difference. In the first process. 32 out of 800 cables were found to contain some sort of defect. In the second group, 30 out of 500 cables were found to have a defect. 

* Is the difference between the two groups significant? Use 95%.

* So now we need to set up our nulls:
	* p̂<sub>1</sub> = p̂<sub>2</sub>
	* p̂<sub>1</sub> ≠ p̂<sub>2</sub>

* Now we need our proportions we'll be using to calculate things: 
	* p̂<sub>1</sub> = 32/800 = p̂<sub>1</sub> = .04 or 4%
	* p̂<sub>2</sub> = 30/500 = p̂<sub>2</sub> = .06 or 6%

* Find our area / z-score to care about: α = 100-95 = (.05/2) = A<sub>L</sub> = .975 or 1.96

* Next, we need to find our "Pool Estimator" or the correction we make to deal with the fact that we need to standardize our calculations. You can notice that in the formula in the next bullet that doesn't have a <sub>1</sub> or <sub>2</sub>. That formula can be found: <img src="/images/pestimator.png" width="100" align=middle>

It is important to note that wherein you see us re-inflating the proportions on the top row, we can also just use X<sub>1</sub> and X<sub>2</sub>.

* and now we consider the formula for p̂ vs z. That formula is: <img src="/images/propvz.png" width="100" align=middle>

So what does it look like? Well, we plug the numbers in. 

* And here I need to write it up in markdown...

## <a id="matsampt"></a>Matched Sample t-tests - Weight Loss

A t-test allows us to compare two groups that are engaged in the same activity. We could do something like evaluate two groups taking the same test or two students with the same teachers. In this case below, we're looking at the impact of a weight loss prograrm. We follow many of the same processes as the previous tests, but adjust ourselves in looking specifically at differences rather than others.

### <a id="matsampt-1"></a> Problem 1 - Weight Loss

> A study was conducted to determine the effectiveness of a weight loss program. The table below shows the before and after weights of 10 subjects in the program. Is this program effective for reducing weight? 95% CI/MoE.

|No|Before|After|A-B|
|--|------|-----|---|
|01|185|169|-16|
|02|192|187|-5|
|03|206|193|-13|
|04|177|176|-1|
|05|225|194|-31|
|06|168|171|3|
|07|256|228|-28|
|08|239|217|-22|
|09|199|204|5|
|10|218|195|-23|

* Getting Started: 
	* Our first order of business is to generate our important data: Mean, Std, our critical value, and our test statistic. 
	* x̄<sub>d</sub> is going to be related to the impact of the program. We need to add up the differences between A and B. Since we want to measure how much of a change the after has had, we are doing A (after) - B (before). This will give us the amount of change and its direction. The change is in the column (A-B). Add those up and divide by 10. It gives us a value of about -13.1. 
	* In this way, we can say that the average difference after the program is -13.1 lbs. 
	* s is added up just as normal (remember back to modes of central tendency). Take each difference, subtract it from the mean, and square it. Then add all of those up and divide by n. The formula for this is: <img src="/images/stddif.png" width="100" align=middle>

* Write our hypotheses: 

It's important here to look at these. Since the question is about weight *loss* and so we are interested in the idea that a change occurred and that that change was negative. The result here is a 1-sided test and so we'll be primarily working on negative numbers.

* H<sub>o</sub>: µ<sub>d</sub> ≥ µ<sub>d</sub>
* H<sub>a</sub>: µ<sub>d</sub> < µ<sub>d</sub>

* Assembling the Data Points: 
	* x̄<sub>d</sub> (sometimes referred to as d-bar): -13.1
	* s<sub>d</sub>: 13.025
	* 95% CI which means α = .05/2 or α = .025 or whatever the df dictate.
	* df = 9
	* t<sub>d</sub>: -1.833 (This is found on our chart and we're calculating it this way because of our sample). 

* Calculate our t-statistic. 
	* The formula we need to use for this is: <img src="/images/dbar.png" width="100" align=middle>
	* The value we calculate is: -3.18 so we can say we reject the null.

But this isn't *only* what the question asks, is it? It also says, "calculate the margin of error."

We haven't really done this too much but if you remember back to last time, we did a bunch of work on Interval Estimation. 

* Calculate our Margin of Error:
![](/images/tmoe.png)

While we use x-bar here, we can also write it as d-bar, and your book does.

Once calculated, this stat is: -13.1 ± 7.55.

So while we reject the null, we can talk a lot about the MoE. That MoE basically says that at a little over half of the value itself, we need to think about just how robust that MoE is. It is also repeating the issue that the standard error provided. While this error is essentially saying that the weight loss *could* be as such to negate the statistical significance, we have to do more work to understand it.

* We can actually use the Margin of Error to make more sense of our data. We'll call this, "Weight." For the cases of matched sample t-tests, we can say that the the margin of error component can teach us a bit about what our data are saying. For example, if we take the mean difference and place it next to our t-critical value and standard error, we have something like this: ![][/images/moe-match.PNG]

And from that, we can use this formula to seed the value of our sample statistic of -1.833. That is: d-bar - 1.833(13.025/3.1622) or d-bar-1.833(4.11). Interpreting this, we can make a claim that d-bar - 7.53363 or take our mean difference and slap it in there, -13.1 + 7.533 or that our critical value of -1.833 corresponds to a value of -5.567lbs lost needs to be expected at a .05 level.

* Write it out.

For the above, we could write something like:

> We reject the null hypothesis (H<sub>o</sub>) that the mean of the before/after weight differences is zero. The test statistic and *d* are both beyond t<sub>crit</sub> for df = 9. Therefore based on this data it appears the diet works.

