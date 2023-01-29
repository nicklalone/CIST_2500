# Welcome!
In week 1, I mentioned the 3 big hats that we can wear when it comes to statistics. For reference, those "hats" are: 

* Describe a population
* Compare different things
* Relate by looking for associations and modeling them.

When we gather data of any kind, we will probably have an idea of what we're going to do with the data in order to make it information; however, we still need to "describe" those data. But describe how? What does that even mean? Well, that's what we're going to explore.

The shape of data is deceptive. 

The most important concept to carry forward from this week is this: 

>The centrality, the shape of your data will often determine what sorts of tests can actually be performed on your data. 

This will probably not make a huge amount of sense until we get into actual inferences, but just keep it in mind for now and I apologize for not explaining it right away but we need to get a few other things in order first. 

---------------- Table of Contents ---------------- 

1. [What do we mean, "Descriptives?"](#whatmean)
2. [Modes of Central Tendency](#modes)
	* [Mean](#mean)
		* [Other kinds of means](#othermeans)
	* [Median](#median)
	* [Mode](#mode)
	* [Standard Deviation](#std)
3. [What does this allow us to do?](#whatdo)
4. [Formulas, Greek Letters, and Concepts](#concepts)

---------------- Table of Contents ---------------- 

## <a id="whatmean"></a>What do we mean, "Descriptives?"

Descriptive data is essentially a set of summary statistics that describe their "centrality." This is essentially how "normal" your data is and in the case of normality, we can call back to the standard normal curve: 

![Standard Normal Curve](/images/normal.png)
When your data is symmetric or essentially normal, we can do just about any kind of test on it depending on the types of "variables" we have. A variable, in this case and in most cases we use this word is essentially some thing that varies. We could count sheep, count the thickness of toe nails, number of books in an a person's home, or the number of colors we can see. 

It is this stuff that lets us to all of this describing, relating, and comparing and how exactly we count what varies is totally up to the folks gathering the data. So what are the characteristics of "normal" here then?

## <a id="modes"></a>Modes of Central Tendency
Well, we know a little about numbers. For example, we know that if we keep taking samples of a population, as the number (n) of cases goes up, that we will expect that data to become normally distributed. This is often called the, "Law of Large Numbers". 

And so, we have a few concepts to think about: 

* **Population** - We sometimes call this a *universe* but it's easiest to think about like this. It is every single member of your chosen object of study. If you cannot reach every single member, then you must sample. 

* **Population Parameter** - This is basically a characteristic of a population.

* **Sample** - This is simply a portion of the population. Think of it like this, if I surveyed this course, it would be a sample of the total population of CIST stats students. 

* **Sample Statistic** - This is basically a characteristic of a population and with a few more calculations, you can know how confident you are that this sample statistics is something the population you sampled all shares.

* **Law of Large Numbers** - when sample size tends to infinity, the sample mean equals to population mean
  
* **Central Limit Theorem** - If repeated random samples of size n are taken from a population with a mean or $\mu$ (mu) and a standard deviation $\sigma$, the sampling distribution of sample means will have a mean equal to $\mu$ and a standard error equal to $\frac{\sigma}{\sqrt{n}}$. Moreover, as n increases the sampling distribution will approach a normal distribution.
  
* **Modes of Central Tendency** - The center or typicality of a distribution. The three most common measures of central tendency are the [mean](#mean), [median](#median), and [mode](#mode). 

Taken together, these three concepts form the basis of why statistics works. We know that if we take a sample, that it will be part of the population and that if we keep taking samples and average them, that as we keep taking samples, we will keep getting closer to the actual population average. 

### <a id="mean"></a>Mean:


#### <a id="othermeans"></a>Other types of means:
In general, we will only be using arithmetic mean in this class; however, it's good to know that the others exist. These are covered in your textbook but I find [(this article from the NIH to be super useful](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3127352/#:~:text=Mean%20is%20the%20most%20commonly,and%20harmonic%20mean%20(HM).)).

* **arithmetic mean**
This is the mean we are all used to. Think of it like this: $\bar{x} or \mu = \frac{\Sigma{x}}{n}$ but what is that? Well, think of this distribution of data: $88, 86, 88, 90, 95, 88, 54$. This is basically a list of scores from some assignment or test. Sigma, or $\Sigma$ tells us to "Sum those numbers", so we could consider the formula as:  $88+86+88+90+95+88+54$ but what is that n? Well, that's just the number of cases. So in this case it would be: 7. 

So the full formula from: $\bar{x} or \mu = \frac{\Sigma{x}}{n}$ would look like: $(88+86+88+90+95+88+54)/7$ or 84.12. The arithmetic mean of the (is this a population or sample? Let's say it is a population) population is basically: $\mu = 84.12$.

* **weighted mean**
Weighted mean is calculated when certain values in a data set are more important than the others. A weight ($w_i$) is attached to each of the values ($x_i$) to reflect this importance. 

The formula for this (I won't ask you to ever do this but it's good to know it exists.) is: $\frac{\Sigma_{i=1}^n(x_n*w_n)}{\Sigma_{i=1}^n(w_n))}$. This formula is used when weights differ. For example, in ethnicity-based statistics, we tend to weight all outcomes based on the proportion that ethnicity tends to have from the whole and base it on the census. 

When weights are all equal, the formula looks slightly different: ${\Sigma_{i=1}^n(x_n*w_n)}$. It looks this way because we do not have to account for the sum of all weights. And why, you may ask? Well, if all the weights are the same then our data is essentially normalized from the start.

* **geometric mean** 
This is a weird one but we actually use it all the time. Geo-mean is used when we have to multiply data points together rather than sum them. It is one of the Pythagorean Means and we won't really use it here but where do you use it all the time? Well, "benchmarking" type things. This is how we get .5 speed or 2x speed in that there is a lot of $\log$ oriented things going on. The formula for this is: $$\sqrt[n]{\Pi{_{i=1}^n} x_i} = \sqrt[n]{x_1*x_2*x_3...x_n}$$
This is a really fancy way of writing, take the square root of the numbers that are being multiplied together.

* **harmonic mean**
 The formula for harmonic mean is: $n / (\Sigma{\frac{1}{x_1}})$. Another way to think about this is to basically divide 1 by every value, sum them up, and then divide those by the total sample. This mean is the last of the Pythagorean Means with the Arithmetic mean being the most common. What this mean is typically used for is to find the mean of ratios.

### <a id="median"></a>Median:
This is basically the middle most number of a dataset. One thing I should add here is another term: range. Let's think about that example from Arthimetic Mean: $(88+86+88+90+95+88+54)/7$ or 84.12. The median sort of forces us to put these numbers in order: $54,86,88,88,88,90,95$. From these numbers, we can say that n = 7 so this means that we have an odd number of data. This is easier on us when looking for the middle most number.  The median here would be: $54,86,88,{\color{red}{88}},88,90,95$ or 88. 

But what if we had an even number of data points. Let's go nuts here and say that our data ranges from 1 - 8001 or 8002 datapoints. This is all we got, a range. To find a median of a set of data that has an even number of datapoints, we use the formula: $median = \frac{n+1}{2}$. So from the above we'd take 8002+1 = 8003 or 4001.5. And this makes sense given that an even numbered n would not have a balance of equal numbers on either side of the median.

There are a ton of complicated formulas for median though so if you are working at a firm, be sure to use the one they want.

### <a id="mode"></a>Mode:
Is simply the number that is repeated the most often. Let's look back at the example from arithmetic mean: $(88+86+88+90+95+88+54)/7$ or 84.12. 

Note here that we have a range (smallest to largest number) of 54 - 95. This is what I would release when giving back a large test. We know that the arithmetic mean is 84.12 and that the median 

### <a id="std"></a>Standard Deviation:


## <a id="whatdo"></a>What does this allow us to do?


## <a id="concepts"></a>Formulas, Greek Letters, and Concepts
Mean
Median
Mode

Sigma (sum) = $\Sigma$ 
sigma (standard deviation of a population) = $\sigma$
Average (population) = $\mu$
Average (sample) = $\bar{x}$
Pi (multiply everything) = $\Pi$ (note that this is different that pi or $\pi$)
