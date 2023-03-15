# Chapter 10 - Inferences about Means and Proportions with Two Populations

Up until this chapter, we have been primarily concerned with the test statistics applied to a single population. This is a powerful concept and one that affords us the capacity to make very wide-reaching assertions and inferences about populations. 

And yet, humans are complex and if we've learned anything over COVID, that complexity can be overwhelming. 

In this section, we're going to concern ourselves with interval estimates about 2 populations. There are tests for more than 3, but that is beyond the scope of the class.

For the most part, we've basically been nailing this down to 3 specific instances: 

1. Inferences with population parameters known.
1. Inferences with only sample statistics.
1. Inferences with only proportions.

That trend continues but we add something new, something fresh!

And that freshness is matched-sample t-tests. YAY! Let's walk through these.

---------------- Table of Contents ---------------- 

1. [Terms for the Chapter](#terms)
1. [Formulas for this chapter](#formulas)
1. [T or Z? How do you decide?](#torz)
1. [One or Two Tailed: How do you decide?](#1or2)
1. [Inferences about two populations with parameters known](#inf2kno)
	* [Problem 1 - Test Scores](#ppk-1)
	* [Problem 2 - Test Scores](#ppk-2)
1. [Inferences about two populations with parameters unknown](#inf2unkno)
	* [Problem 1 - Test Scores](#unkno-1)
1. [Inferences about two populations with only proportions](#inf2pop)
	* [Problem 1 - Quantum Computing](#inf2pop-1)
1. [Matched Sample t-tests](#matsampt)
	* [Problem 1 - Weight Loss](#matsampt-1)

---------------- Table of Contents ---------------- 

## <a id="terms"></a> Terms for the Chapter

* **Independent Random Samples**: Samples selected from two populations in such a way that the elements making up one sample are chosen indepdently of the elements making up the other sample.

* **Matched Samples**: Samples in which each data value of one sample is matched with a corresponding data value of the other sample.

* **Pooled Estimator of p**: An estimator of a population proportion obtained by computing a weighted average of the point estimators obtained from two independent samples.

## <a id="formulas"></a> Formulas for this chapter

Generally this chapter is all about how to compare 2 populations. Everything inside of this chapter is just an augmentation of what we've already been doing. Like I said above, each of the last few chapters tend to correspond with: 

1. Inferences with population parameters known.
1. Inferences with only sample statistics.
1. Inferences with only proportions.

Or if we think about this another way: 

1. Inferences when you are sampling a known population.
1. Inferences from just a sample/
1. Inferences with just a sample statistic or ratio.

You will see the same concepts here as all the others: z, t, standard error, test statistics, degrees of freedom, and p values. In each circumstance, there is a corresponding formula. 

Below, I will walk through a number of problems. Each problem will be explained in class.

![Formulas for this Chapter](/images/dbm-1.png)
![Formulas for this Chapter](/images/dbm-2.png)

## <a id="torz"></a> How do we decide on t or z?

Use this handy flow chart!

![Flow Chart](/images/zort.png)

And so we can boil this down pretty quickly.
* Is n > 30 and do we know σ? If so, that's a z!
* If either of these are false, then it's a t!

## <a id="1or2"></a>One or Two Tailed: How do you decide?

For the most part, deciding what sorts of test to perform is perhaps the most important aspect of the school.

The question here that is important is, "How do I decide between One-sample, two-sample, or paired t-test?" and to this, we can state the following: 
* If your samples come from a single population (e.g. measuring before and after an experimental treatment), then the recommended concept is a matched sample t-test.
	* One-tailed or two-tailed t-test?
* If you only care whether the two populations are different from one another, perform a two-tailed t-test.
* If you want to know whether one population mean is greater than or less than the other, perform a one-tailed t-test.

## <a id="inf2kno"></a>Inferences about two populations with parameters known

This is our first collection to consider. We're comparing 2 populations and actually know some of the population parameters. We'll do a problem that doesn't have any context, and then we'll try one with context. 

We'll consider the steps here and we'll be moving from left to right: 

1. The very first thing is to get what your book refers to as the "point estimate of the difference between the two populations" or: x̄<sub>1</sub> - x̄<sub>2</sub>. This is the start of your interval. We then need to fill out the stuff to the right of the formula.
1. Calculate standard error of x̄<sub>1</sub> - x̄<sub>2</sub> which is essentially: <img src="/images/std-bet.png" width="100" align=middle>. When we assemble this fully, we need a critical value or z score that corresponds to our confidence level.
1. What we need here is a z-score that is based on your confidence level (90, 95, 99, etc). The common values are 1.96 (95) and 2.58 (99).
1. And finally we assemble our whole and Calculate the Interval Estimate of the Difference Between 2 Population Means. The formula is: <img src="/images/iedb2pm.png" width="100" align=middle>

So this is all about a general interval estimate. Sometimes, you need to actually calculate a test statistic and this is an important concept. To do that, we have a formula!

1. From here, we need to consider our confident coefficient. Of note, there is a new concept that shows up, D<sub>o</sub> or the "hypothesized difference between means. We use 0 as it is being fed by the null. At times, you may not be saying, "no change" though if that is the case, I cannot think of an example at the moment. And so, if you need to calculate more, use this formula: <img src="/images/tsdbm.png" width="100" align=middle>

So let's do 2 problems.

### <a id="ppk-1"></a> Problem 1, a problem without Context.

We will first try an problem without any context at all. After that, we'll add some humans in there.

|Sample 1|Sample 2|
|--------|--------|
|n<sub>1</sub> = 50|n<sub>2</sub> = 35|
|x̄<sub>1</sub> = 13.6|x̄<sub>2</sub> = 11.6|
|σ<sub>1</sub> = 2.2|σ<sub>2</sub> = 3.0|

1. What is the point estimate of the difference between the two populations?

	* x̄<sub>1</sub> - x̄<sub>2</sub> = 13.6 – 11.6 = 2

1. Provide a 90% CI for the difference between the two population means.

	* Z<sub>σ/2</sub> = 1.645 (90% CI results in this.)
	* x̄<sub>1</sub> - x̄<sub>2</sub> ± 1.645√((σ<sub>1</sub>)<sup>2</sup>/n<sub>1</sub>)+((σ<sub>2</sub>)<sup>2</sup>/n<sub>2</sub>) 
	* 2 ± 1.645√((2.2)<sup>2</sup>/50)+((3)<sup>2</sup>/35)
	* 2 ± .98 or 1.02 to 2.98

1. Provide a 95% CU for the difference between the two population means.

	* Z<sub>σ/2</sub> = 1.96 (95% CI results in this.)
	* x̄<sub>1</sub> - x̄<sub>2</sub> ± 1.96√((σ<sub>1</sub>)<sup>2</sup>/n<sub>1</sub>)+((σ<sub>2</sub>)<sup>2</sup>/n<sub>2</sub>) 
	* 2±1.96√((2.2)<sup>2</sup>/50)+((3)<sup>2</sup>/35)
	* 2±1.17 or .83 to 3.17

### <a id="ppk-2"></a> Problem 2: Let's Connect this to an actual example with consequences.

> A test was conducted on two different classes to see if there was any significant difference between the performance of two teachers. The final exam scores of 35 students in the 1st class yielding a mean of 82 and a σ of 2.4. The mean final exam score of the 2nd class was 84 with a σ of 1.7 with a sample of 46 students. 

* Determine if there is any major difference at a 5% signficance level.

* **Step 0**: Write your hypotheses. For this one, we are looking for a difference and so we're working on = or ≠. 
	* H<sub>o</sub>: µ<sub>1</sub> = µ<sub>2</sub>
	* H<sub>a</sub>: µ<sub>1</sub> ≠ µ<sub>2</sub>

* **Step 1**: Gather your datapoints
	* x̄<sub>1</sub> = 82, σ<sub>1</sub> = 2.4, n<sub>1</sub> = 35
	* x̄<sub>2</sub> = 84, σ<sub>2</sub> = 1.7, n<sub>2</sub> = 46

* **Step 2**: Grab your critical values: In this case, it's 5% or 95% or 1.96

* **Step 3**: Fill out your formula: <img src="/images/iedb2pm.png" width="100" align=middle>
	* x̄<sub>1</sub> - x̄<sub>2</sub> ± 1.96√((σ<sub>1</sub>)<sup>2</sup>/n<sub>1</sub>)+((σ<sub>2</sub>)<sup>2</sup>/n<sub>2</sub>)
	* 82-84 ± 1.96√((2.4)<sup>2</sup>/35)+((1.7)<sup>2</sup>/46)

	<!-- Calculate this question multiple times -->

## <a id="inf2unkno"></a>Inferences about two populations with parameters unknown

### <a id="unkno-1"></a> 

> A business owner is in the process of deciding whether or not to invest in a new factory that refines oil in order to meet the high demand for that commodity. A test showed that the old factor refines oil at a mean rate of 3.1L per second at a std of 1.0 using a sample size of 40. The new factor was measured to refine oil at a mean rate of 3.8L per second at a standard deviation of 1.5 using sample size of 36. 

* Determine if there is any major difference at the 10% significance level.

1.  **Step 1**: Gather your datapoints
	* x̄<sub>1</sub> = 3.1, s<sub>1</sub> = 1.0, n<sub>1</sub> = 40
	* x̄<sub>2</sub> = 3.8, s<sub>2</sub> = 1.5, n<sub>2</sub> = 36
1. **Step 2: Determine your critical value:** 
Determine what test you're going for. In this case, we don't really need a df because why? This is a 2-tailed test and is seeking *any* difference. As a result, we would expect to use: <img src="/images/tsdbm.png" width="100" align=middle>
1. And then we move forward.

<a id="unkno-2"></a> **Problem 2: Test Scores but this time we pretend its just sample stats.**

> A test was confucted on two difference classes to see if there was any significant difference between the performance of two teachers. The final exam scores of 15 students were sampled in the 1st class yielding a mean of 82 and a std of 2.4. The mean final exam score of the 2nd class was 84 with a std of 1.7 with a sample of 12 students. 

* Determine if there is any major difference at a 5% signficance level.

* **Step 1**: Gather your datapoints
	* x̄<sub>1</sub> = 82, s<sub>1</sub> = 2.4, n<sub>1</sub> = 15
	* x̄<sub>2</sub> = 84, s<sub>2</sub> = 1.7, n<sub>2</sub> = 12
* **Step 2**: Get your degrees of freedom: <img src="/images/df2st.png" width="100" align=middle>.
	* In this case, df = 25, t-value = 2.0595
* Step 2: Generate your critical values with the formula if needed: <img src="/images/tspu.png" width="100" align=middle>
	* for this problem, it is not needed as we're using df.
* **Step 3**: Fill out your formula: <img src="/images/iepu.png" width="100" align=middle>
	* x̄<sub>1</sub> - x̄<sub>2</sub> ± t√((σ<sub>1</sub>)<sup>2</sup>/n<sub>1</sub>)+((σ<sub>2</sub>)<sup>2</sup>/n<sub>2</sub>)
	* numbers here.

## <a id="inf2pop"></a> Inferences about two populations with only proportions

So much like the other chapters, we have run in to the issue of only having proportion data. 

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

We haven't really done this too much but if you remember back to chapter 8, we did a bunch of work on Interval Estimation. 

* Calculate our Margin of Error:
<img src="/images/tmoe.png" width="100" align=middle>

While we use x-bar here, we can also write it as d-bar, and your book does.

Once calculated, this stat is: -13.1 ± 7.55.

So while we reject the null, we can talk a lot about the MoE. That MoE basically says that at a little over half of the value itself, we need to think about just how robust that MoE is. It is also repeating the issue that the standard error provided. While this error is essentially saying that the weight loss *could* be as such to negate the statistical significance, we have to do more work to understand it.

* We can actually use the Margin of Error to make more sense of our data. We'll call this, "Weight." For the cases of matched sample t-tests, we can say that the the margin of error component can teach us a bit about what our data are saying. For example, if we take the mean difference and place it next to our t-critical value and standard error, we have something like this: <img src="/images/moe-match.PNG" width="100" align=middle>.

And from that, we can use this formula to seed the value of our sample statistic of -1.833. That is: d-bar - 1.833(13.025/3.1622) or d-bar-1.833(4.11). Interpreting this, we can make a claim that d-bar - 7.53363 or take our mean difference and slap it in there, -13.1 + 7.533 or that our critical value of -1.833 corresponds to a value of -5.567lbs lost needs to be expected at a .05 level.

* Write it out.

For the above, we could write something like:

> We reject the null hypothesis (H<sub>o</sub>) that the mean of the before/after weight differences is zero. The test statistic and *d* are both beyond t<sub>crit</sub> for df = 9. Therefore based on this data it appears the diet works.

