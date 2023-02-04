Another way to think about this week is how we begin to move from description to inferences.

---------------- Table of Contents ---------------- 

1. [Getting Started](#gs)
2. [Measures of Dispersion](#dispersion)
3. [So what do we mean by standard deviation?](#std)
	* [What does this let us do?](#whatdo)
	* [And what does that do for me?](#forme)
4. [Let's Introduce Z-Scores](#zscore)
	* [Z-Scores v. Standard Scores](#zvstd)
	* [What does this let us do?](#letusdo)
	* [And what does that do for me?](#z-doforme)

---------------- Table of Contents ---------------- 

## <a id="gs"></a> Getting Started
In this, week 3, the last week before test, we move from descriptive measures to measures of dispersion. What is dispersion, you might ask, well...let's take a definition from your textbook: 
> The extent to which the scores in a distribution are spread around the mean value or throughout the distribution. The most commonly used measures of dispersion are the variance and the standard deviation. 

And so we have a pretty unsatisfactory definition. Like, what does this actually mean? Well, let's think about it like this: 
1. Our data vary because the thing we're measuring is probably humans and so from this, we can say that humans are varied. 
2. How they vary is slightly predictable and it is this predictability with regard to variance that forms the basis of statistics. 
3. That predictability forms the basis of the normal curve. The space where the  most representation is is around the center, the mean. As we move out from the mean, we see fewer and fewer pieces of data until they become outliers. 
Up until now, we have mostly just been doing means, medians, and modes. This allows us to see how our data are shaped, but it doesn't tell us how varied our data are. Now, we can see it. We can see it super well; however, we cannot really *KNOW* how varied they are. 

So let's do something about that. 

## <a id="dispersion"></a>Measures of Dispersion
Dispersion, from the above, is just how varied our data are. We have a way to show how our data look and we can visualize it really easily. Take, for example, our data about house prices from the last homework. Take a look at this: 
![mean](/images/mean.png)
Can you guess where the mean is? Well, we have an n of 34 or so. The average or mean is is approximately number 50. This means our data is a little asymmetric, really. However, that's ok. We aren't doing anything meaningful with it quite yet. The reason it is somehow smaller than normal in the line of things is that each time I sort these data, the average moves to where it numerically should have been but it then automatically recalculates what the mean is. So, we have data that is obviously varied then. The mean showed up around 50 of 73 and so, the issue here is that our data isn't symmetric and as such, we need to do a little more work to understand it, to get it ready for analysis. 

But what does that mean? Well, we need to understand a little bit about how varied our data are and how to plot them properly. Let's run these data through the data analysis tool. What does that get us?

### <a id="std"></a>So what do we mean by standard deviation (aka $\sqrt{Variance}$)?
So all datasets vary. It could be that they differ by .1, .001, 1, 10, 1000, or more. It all depends on how the thing you're measuring is actually measured. In addition, variance will depend on who or what is actually providing the data. If this is a sample, then we will inevitably have to do something else to the data to make it make sense but we'll get into that a little bit more directly later. For right now, we'll just sort of worry about the introduction of measuring how our data vary.

Let's introduce a couple letters we'll need for this: 
* ***$\sigma \ or \ \sigma^2$** is for the standard deviation of a population. Again, we use population when all potential members of a population can be accessed. 
* ***$s \ or \ s^2$** is used for standard deviation when it's a sample. We use this one most often because we almost always have to sample a population. 

And how do we calculate these? Well, let's have a look at the formula we need for variance and then standard deviation. We'll do 2 lines, 1 for populations, 1 for samples.

Population = $\sigma^2 = \frac{\Sigma(X-\mu)^2}{N}$ whereas Standard Deviation is: $\sigma = \sqrt{\frac{\Sigma(X-\mu)^2}{N}}$
Sample = $s^2 = \frac{\Sigma(X-\bar{x})^2}{n-1}$ whereas Standard Deviation is: $s = \sqrt{\frac{\Sigma(X-\bar{x})^2}{n-1}}$

So what's happening here? Well, let's take a look. In this example, we will use just a base population of 5 (n=5, mean = 12). Also note that we use $n-1$ because of a few different ideas: 
1. When we sample, we grab who we can and because of the way we (humans) tend to coalesce around a mean or, "the space of least disagreement" or perhaps more accurately, "the space of least variance" we can say that the odds are in your favor that whom is part of your sample will be from that area and not from the outliers. But random chance always has the potential for other things. By lowering the number just by 1, we widen the distribution slightly and correct for this. 
2. Along those lines, we use s to estimate things in the population. As a result, we need to widen our distribution in order to make more accurate inferences.

Let's look at an example (mean of 4): 
|X|Deviations|Results|Deviations$^2$|Results|
|--|----------|-------|-----------|-------|
|7|7-4|3|9||
|1|1-4|-3|9|So we have a choice.|
|3|3-4|-1|1|We can divide by 9 or 8|
|5|5-4|1|1|Or n or n-1|
|6|6-4|2|4||
|2|2-4|-2|4|If we divide by 9,|
|8|8-4|4|16|variance = 6|
|1|1-4|-3|9|n-1 = 6.75|
|3|3-4|-1|1|s=2.598, $\sigma =$ 2.44|
||Results|0|54||

We won't use any context at the moment so we can just concentrate on the math of it all. We will use a slightly different set of values.

|Scores|Deviations|Results|Deviations$^2$|
|-------|----------|--------|----------|
|x|($x-\bar{x}$)|=|$^2$|
|5|5-12|-7|49|
|10|10-12|-2|4|
|12|12-12|0|0|
|14|14-12|2|4|
|19|19-12|7|49|
|||0|106|
||||s=4.60|

So let's talk through what happened here. We haven't really or truly captured standard deviation yet but we have begun. What's to say here? Well, we've done the top part of the variance formula. We've subtracted the mean ($\bar{x} \ or  \ \mu$) so we can know how each point that makes up n=5 varies from the average. 

What we're essentially doing is looking at how much the dataset disagrees with its own mean. It's certainly interesting but it also provides us a way to check our work at this stage. If you sum every differential or deviation ($x-\bar{x} \ or \  x-\mu$), your score should always = 0. What this means is that our first step toward standardizing our data is complete. 

If you notice, there's a whole squaring step afterward. We do this to deal with the issue of negative numbers so we can know how varied the data are. Once this is done, we have our variance by dividing by N. This gives us what is basically the average variance and in doing so, we have our standardized data point, a number that tells us how varied our data are. 

And if we take the square root of that, we have the standardized variance or standard deviation.

### <a id="whatdo"></a>What does this let us do?
Alright, great. We have a standard deviation. So what? Who cares? Well, if we know how varied a dataset is, then we can start to speculate about how that variance / standard deviation relates to other potential values in the dataset. In other words, we can use these two values as a pseudo-model that can help us test other kinds of data. 

Aside from this, let's give you 3 additional answers to this question: 
1. Standard deviation tells you how much your data differs from the mean or average. This makes it the "overall variability of your distribution" which is a fancy way of saying what the first sentence does.
2. Standard deviation can be used to compare different kinds of distributions. So for example, if you give the same test to two populations (two class sections), you can compare the variance of the test per section with this one datapoint.
3. We won't talk about it too much right now, but standard deviation gives us a pretty useful hint with regard to the type of distribution we have. As in, we know from s about the potential "normalness" of a distribution. 

### <a id="forme"></a>And what does that do for me?
So we have the shape of our data, its description. We then have our dispersion or how varied the data in our dataset are. 

And so, what now? What does that do for me?

Well, let's think a little about this. What do we know?
1. We know the mean of a distribution.
2. We know the dispersion of that distribution.
3. We know that things vary in a standard way.

So we can do a bit of fun here in an effort to understand how our personal score might differ from others? Am I an outlier? A person who falls into the group of folks around the mean? Well, we can do that! Check this out: $$Z = \frac{X-\mu}{\sigma}$$
So, this is what I was hinting at with regard to essentially modeling your distribution (or should we say standardizing it?). From the above, we can say logically what this actually is doing: we are calculating a value with 2 standard scores (mean and s) so that we can figure out where our score (X) comes from. We use the letter Z for these scores (why z? I do not know). 

Let's talk a bit about z-scores.

## <a id="zscore"></a> Let's introduce z-scores
So we have the shape and dispersion of our data. NICE! We have completed the very first stage in the initial look at our data before cleaning begins. Remember back in the discussion about the normal curve? Let's get that pic out again: 

![normal curve](/images/normal.png)

### <a id = "zvstd"></a>Z-Scores v. Standard Scores
We need standardized scores so we can actually calculate z-scores.

### <a id="letusdo"></a>What does this let us do?
Think of it like this, we have a standardized model of our data we can use to understand the population. Within this, we can use it to really dig into what our data mean.

### <a id="z-doforme"></a>And what does that do for me?
