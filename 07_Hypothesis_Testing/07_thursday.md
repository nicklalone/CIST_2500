# Week 7 - Sampling and Sampling Things - Day 2 - Intervals
On Tuesday, we got into sampling methods and point estimations as we move from samples to making inferences about populations. Today, we're going to close the loop and work off of intervals. 

---------------- Table of Contents ---------------- 

1. [Interval Estimation](#InEs)
	* [Standard Error](#ster)
	* [Population Known](#popk)
	* [Population Unknown](#popunk)
	* [Interval Estimate of a Population Mean](#iepm)
	* [Interval Estimate of a Population Proportion](#iepp)
	* [Confidence Interval](#conf)
1. [What sample size is right?](#sampsize)
1. [Examples, Exercises, Excel](#examp)

---------------- Table of Contents ---------------- 

## <a id="InEs"></a>Interval Estimation

We talked on Tuesday about Point Estimates. This is a way for us to really start to hone in on population parameters as we work on taking more and more samples. How we take samples, the consequences of those methods, and other aspects of those things will always have to be something we take account of. This is what makes statistics so frustrating to teach. No one sample is ever the same, no one sample ever has the same issues, and no one sample will ever look like what you're doing, what i'm doing, or what someone else does. Even if we're working on the same datasets, our outcomes may differ slightly due to these approaches. 

For interval estimates, this is how we begin to take into account the infinite variance of what we're doing and rather than offer a specific point where our estimates reside, we are instead offering a margin where they could reside. Your book defines this as: 

> An estimate of a population parameters that provides an interval believed to contain the value of a parameter. For the interval estimates in this chapter, it has the form: (point estimate ± margin of error). 

We can also refer to this as a Confidence Interval in that: 

> The confidence associated with an interval estimate. For example, if an interval estimation procedure provides intervals such that 95% of the intervals formed using the procedure will include the population parameter, the interval estimate is said to be constructed at the 95% confidence level. 

And this is where we have assembled the sport, the rules, the implements (ball, puck, hockey stick, whatever), and how scoring works. We now have our entire toolkit.

But let's explore this a bit first. 

### <a id="ster"></a>Standard Error



### <a id="popk"></a>Population Known

![Interval Estimate Population Known](/images/cio2known.jpeg)

### <a id="popunk"></a>Population Unknown

![Interval Estimate Population Unknown](/images/cio2unknown.jpeg)

### <a id="iepm"></a>Interval Estimate of a Population Mean

![Interval Estimate of a Population Mean](/images/ciep.jpeg)

### <a id="iepp"></a>Interval Estimate of a Population Proportion

![Interval Estimate of a Population Proportion](/images/cipp.png)

### <a id="conf"></a>Confidence Intervals

What this tends to do is offer you a level of accuracy you can associate with your calculated measures. How confident you are is based on what amounts to 1 of 3 levels. 

|Confidence Level|α|α<sup>2</sup>|z<sub>α/2</sub>|
|----------------|-|---|---------------|
| 90 |.10|.05|1.65|
| 95 |.05|.025|1.96|
| 99 |.01|.005|2.58|

## <a id="sampsize"></a>What sample size is right?

### <a id="df"></a>Degrees of Freedom

Degrees of freedom (often abbreviated as df) are another aspect of stats that are difficult to understand because they're super simple. [One page says that df are](https://statisticsbyjim.com/hypothesis-testing/degrees-freedom-statistics/), "the number of independent values that a statistical analysis can estimate." Another way to think about this is that there are going to be variances in your data that changes as you try and move from sample to parameter. 

It is an intensely weird thing to describe. Your book kind of goes nuts with its definition in that it says, 

> A parameter of the t-distribution. When the t distribution is used in the computation of an interval estimate of a population mean, the appropriate t distribution has n-1 df where n is the size of the sample.

What is the t distribution, you might ask. Well, according to your text, a t distribution is: 

> a family of probability distributions that can be used to develop an interval estimate of a population mean whenever the population standard deviation is unknown and is estimated by the sample standard deviation.

or in other words, the t-distribution is basically everything in chapter 8. 

What DF is essentially doing is that it is meant to reflect the amount of independent information you have limits the number of parameters that you can estimate. Or in essence, you cannot use a sample to calculate an infinity of parameters, you are instead limited to your sample size. 

[This page goes on to say that](https://statisticsbyjim.com/hypothesis-testing/degrees-freedom-statistics/), "Typically, the degrees of freedom equals your sample size minus the number of parameters you need to calculate during an analysis. It is usually a positive whole number."

And your book (of course), has a chart!!! It is on page: 

