# Hypothesis Testing - Tests, with Parameters known and Unknown.

In chapters 7 and 8 (last week), we did some work in and around expanding our toolkit. However, we don't really have anything to put all of our tools into. As a result, we have a giant mess to think about. 

We have all this data sitting around. It's raw, it is untamed, and yet all we can do is explore, poke around. 

Well, that is about to change.

---------------- Table of Contents ---------------- 

1. [Let's talk about Tails](#tails)
	* [Vocabulary](#vocab)
	* [Formulas](#formulas)
	* [Rules of Thumb to Consider](#thumb)
1. [Problems](#problems)

---------------- Table of Contents ---------------- 

## <a id="tails"></a> Let's talk about Tails

We learned on Tuesdays about Hypotheses. In specific, we learned about the null hypothesis. The Null Hypothesis (often notated as H<sub>o</sub>) could be referred to as, "No effect" or "No Change." With that set, we know now what we're testing again, we're essentially testing that there *is* a change. And so, we have to mark this as a different hypothesis. In this case, we tend to use the concept of The Alternate Hypothesis (often notated as H<sub>a</sub>). This is basically saying that there *is a change* but the Alternative Hypothesis will also provide us a threshold upon which we can say when a change actually exists. 

I really like this image and so I want you to look at it: 

![Null Hypothesis vs the Alternate Hypothesis](/images/nullvalt.png)

When in doubt, come back to this image and especially pay attention to the bottom lines.

### <a id="vocab"></a> Vocabulary

* H<sub>a</sub>: The alternative hypothesis. This will typically be the opposite of the Null but also indicate, "there is an effect or change.".
* H<sub>o</sub>: The Null Hypothesis. This will be the opposite of the Alternative but also indicate, "there is no effect or change."
* µ<sub>o</sub>: The null Mu or Mu-not. This is the population parameter of the null indicating no change.
* Zone of Rejection: This is the area under the curve that µ<sub>o</sub> resides in.
* Rejection Region: These are the tails that indicate the area upon which a calculated statistic has to breach in order for the null to be rejected.
* Critical Value: This will tend to be the thing you are comparing to see where it falls under the curve.
	* Z-Value based on CI: This will be 1.96 (95), 2.58 (99), or some other value.
	* Calculated Z-Value: We compare a calculated statistic to the critical value and the implications of this indicate where we go.
	* Calculated T-Value: Calculated when N < 30 and if population parameters are known (s).
* P-Score is essentially 1-the area under the curve a z value indicates). It is compared to alpha.
* Area Value: This is the area under the curve to the left of a particular z-value or alpha level. You will use charts for this.

* 1-Tailed Test are calculated when we're comparing something going up, going down, or generally just 1 direction.
	* Left Tail: < usually.
	* Right Tail: > usually.
* 2-Tailed Test are calculated when we're looking for A change or the difference between = and ≠

### <a id="formulas"></a> Formulas

These are all from your textbook. 

![Table 9.2](/images/92.png)
![Table 9.3](/images/93.png)
![Table 9.4](/images/94.png)

As a basic rule of thumb, let's get an illustration in here to let you know about the difference between a 1-tailed and a 2-tailed test.

![1v2 tailed tests](/images/1v2.jpeg)

### <a id="thumb"></a> Rules of Thumb

So, we're going to compare some values. What we compare and what we think about comparing can generally be considered through a variety of concepts but there are some rules of thumb to consider (some of them are in that image above.)

> When we want to see if something has "improved" we tend to focus on a 1-tailed test. When we want to compare things, we tend to use a 2-tailed test. I will repeat this on Thursday.

> There are two ways to compare values and each is dependent on what exactly you want to do. I've covered them in the vocab above but generally we can say there is a p-value test and a critical value approach. Each of the following below will be done this way. 

## <a id="problems"></a> Example Problems

At 7-11, there is a machine that dispenses 80ml of fluid into a container that customers bring in. Bored out of their mind, an employee begins to test a hypothesis they've concocted by paying attention to how many containers they sell versus how often they have to refill the bag. They test 40 samples. They calculate that around 78ml comes out of the machine at any given time and that there seems to be a standard deviation of around 2.5. Because they want to be sure when they bring this to their manager, they decide that calculating at a 95% CI would be a good place to start.

Values of note here: Mean = 78, population mean or the null or hypothesized mean of 80, a standard deviation of 2.5 and an n of 40. Confidence should be 95% level. How do we solve this?

______

Twitch is evaluating the mental health and lifespan of your average streamer. They believe from their data that the average lifespan of a streamer before the mental drain sinks in is around 2 or more years. And so the researcher who is evaluating the accuracy of these data is placed against this hypothesis in that the average life span would be less than 2. They use around 10 samples, and after calculating, finds that 1.8 years is more accurate and yet there is a standard deviation of .15. They place a goal of around 99% as their confidence level.

How do we go about this? 

This seems like a 1-tailed test, right? Equal to or greater than 2 versus less than 2. Alpha .01, CI @ .99 = 2.58. But it seems like we shouldn't be this because we don't actually have population parameters. As such, we need to look on the 1-tailed df table. 2.82 is what we end up with but what are we doing? Well, it's less than so it's -2.82.

_________

![BOATS!](/images/goggins.gif)

David Goggins wants to know how heavy the boats are. When he grabs data about the average weight of the boats you need to carry, it is 168 lbs. But Goggins believes that the weight is actually different and so he goes out and weights 36 boats and finds a sample mean of 169.5 with a standard deviation of 3.9. Goggins is no fool though, he sets a CI = 95% and you should use the p-value method.

How do we approach this? Let's do the z-method first!

________

A toy manufacturer places a warranty of 5 years on their toys. Despite this rather aggressive warranty, one of the toy makers believes that the toy will not last 5 years. They test a sample of 40 toys and find that the average time to destruction is 4.8 years with a standard deviation of .5. Use a 2% CI.

How do we begin?

____________

Meta believes that 70% of all people have a facebook account. A news reporter believes this value to be different. The reporter conducts a survey of 200 people across the country and fings that only 130 of them have an account. What is the null/Alternate? CI = 95%.

How do we begin?

