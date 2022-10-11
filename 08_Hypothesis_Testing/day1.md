# Hypothesis Testing - Ho's and Ha's 

In chapters 7 and 8 (last week), we did some work in and around expanding our toolkit. However, we don't really have anything to put all of our tools into. As a result, we have a giant mess to think about. 

We have all this data sitting around. It's raw, it is untamed, and yet all we can do is explore, poke around. 

Well, that is about to change.

---------------- Table of Contents ---------------- 

1. [Getting Started](#gs)
1. [Hypotheses and You](#hyp)
	* [TLDR: When we write a hypothesis](#tldr)
	* [The Null and You](#null)
	* [What do you mean, Alternate?](#alternate)
1. [What could possibly go wrong?](#errors)
	* [Type 1 Errors](#t1er)
	* [Type 2 Errors](#t2er)

---------------- Table of Contents ---------------- 

## <a id="gs"></a> Getting Started

So at this point, we've fiddled with every piece of data you could imagine without actually *doing* statistical inference. We've looked at raw values, variable types, we've looked at the central tendency measures of means, medians, modes, and done what amounts to some exploratory analysis with points and intervals as we work on moving from samples to populations. We've basically been playing some catch or kicking the ball back and forth or playing a tutorial level.

It's time now to learn the sport we're going to play and *the sport is called hypothesis testing.* Now, there are other sorts of things we do in statistics (namely experiments) but we'll get to that later as they're essentially plays and strategies so that you can win (or lose) the game. 

The two pieces we need to cocentrate on is: 
* The Null Hypothesis (often notated as H<sub>o</sub>)
* The Alternate Hypothesis (often notated as H<sub>a</sub>)

But what do these mean? Well, for the most part (as you should know by now and if you don't, pay special attention to the next few words), we make assumptions about a population parameter. That assumption is tentative, not absolute because we honestly can't know for sure, but in the midst and between the tentativeness and actually making that assertion officially (via a report or a paper or a report). Until it reaches that space though, we call it a hypothesis.

But hypotheses in statistics are a *little* different.

## <a id="hyp"></a> Hypotheses and You

Chapter 9 is all about how hypothesis tests can be conducted about a population mean and a population proportion. We begin by providing examples that illustrate approaches to developing null and alternative hypotheses. 

As a reminder, when we mention population proportions. These are essentially how many people in a population share a certain characteristic. Here, we'll talk about the two hypotheses that we need to consider today: the Null (H<sub>o</sub>) and the Alternate (H<sub>a</sub>). 

#### <a id="tldr"></a>TLDR: When we write a hypothesis (H<sub>o</sub> or H<sub>a</sub>), we begin or have to end with the inverse of the thing we want to prove (H<sub>o</sub> or H<sub>a</sub>). 

### <a id="null"></a> The Null and You

Your book on page 407 makes this example: 

> Several new fuel injection units will be manufactured, installed in test automobiles, and subjected to research-controlled driving conditions. The sample mean miles per gallon for these automobiles will be computer and used in a hypothesis test to determine whether it can be concluded that the new system provides more than 24 miles per gallon. In terms of the population mean miles per gallon μ, the *research hypothesis* μ > 24 becomes the *alternative hypothesis*. Since the current system provides an average or mean of 24 miles per gallon, we will make the tentative assumption that the new systemis not any better than the current system and choose μ ≤ 24 as the null hypothesis. 

So how we'd write this on a board, in a research report, or in a white paper of some kind is basically: 
* H<sub>o</sub>: μ ≤ 24 
* H<sub>a</sub>: μ > 24

Do you see what these are suggesting? 

* H<sub>o</sub>: μ ≤ 24 

My hope is that you can read this statement from left to right. How do we state this. Well, it's a little like this: 

The null hypothesis in this case would be something like, "The new fuel injection units will get less than or exactly 24 miles per gallon." And this is the essential quality of the null, "there is no effect" or "nothing changed" or "we didn't see a statistically significant shift."

Let's take a look at the alternate hypothesis. At times, we call this a "research hypothesis" though for the purposes of class, the homeworks, and the tests I will only ask you about alternate hypothesis.

### <a id="alternate"></a> What do you mean, Alternate?

We often define the alternate hypothesis as: 

> an theory inverse to the null that a researcher is testing.

We basically cannot really just sit down and write a research statement or a thing we're going to do. Instead, we have to: 
* Think about the data we need to collect.
* Think about how we asked those questions.
* Think about the ethics of what you are doing.

* H<sub>a</sub>: μ > 24

So with the alternate hypothesis (H<sub>a</sub>), we can begin or end here. In fact, at times we will be placing H<sub>o</sub> as a challenge to common sense, a challenge to assumptions we all make, or an actual research hypothesis. And so, we write it out in this circumstance. 

And we would say it like this, "The new fuel injection units will get more than 24 miles per gallon." And so, we have this thing we're doing research on. And here's where the details can get you.

Generally, with any sort of research project like this, you want to consider the following: 

1. You have to make sure you can measure what you need.
1. If possible, take the easier route and use standardized, validated, or well-vetted instruments.
1. For most of our work, we need to assume a normal Distribution
1. As you write and gather data, consider how you're going to present it (how you going to make it pretty and easy to understand?)
1. If possible (sometimes it just isn't) remember to use a method others can re-create, especially if you're justifying some assertion that might go against common sense.
1. If creating a hypothesis that involves something you can use to predict some other thing, replicability and transparency is key unless it is internal.
1. When needed, rely on an instrument or device to gather your data (sensor data, etc.)

Some of this won't make sense right now and that's fine. As you move forward (for example, if you're going to become an analyst), they will start to. 

## <a id="errors"></a> What could possibly go wrong?

So now we've got a hypothesis, we've got a null hypothesis, and so what's left? Well, now as we move from hypotheses, to data collection, to analysis, we have to think about how we might make a mistake. And these happen all the time...*all the time*. For example, have you ever noticed someone predict a snow day but instead of a snow day, it becomes a rain day? Have you ever gone to the doctor, gotten a diagnosis, only to learn that that diagnosis was incorrect? (it happens more at a veterinarian office as they cannot ask their patients what might be wrong and owners of animals will never be as honest as they should be).

And so this is where we are going! Errors! Of errors in stats, we tend to categorize them into 2 specific categories: Type 1 and Type 2. This illustration might help make them make sense before I confuse you: 

![Type 1 and Type 2 Errors](/images/errors.png)

Or we might also consider a table from your text book (table 9.1 on page 411):

|                    |H<sub>o</sub> True | H<sub>a</sub> True |
|--------------------|-------------------|--------------------|
|Accept H<sub>o</sub>| Correct Conclusion | Type II Error|
|Reject H<sub>o</sub>| Type I error | Correct Conclusion|


### <a id="t1er"></a> Type 1 Errors

> False Positive or sometimes called an α error.

A type 1 error is a rejection of the null when the null is true. This error is difficult to understand or notice as sampling error can be the case here rather than an error of interpretation. 

There is always a possibility that, just by chance, we were working with a sample that didn't really represent the population. 

α and what our confidence interval is really reflects is the possibility that we've made a Type 1 error. For example, at an α of < .05, we can expect to make a type 1 error 5% of the time. This could also be reflected by an α of .01 or 1% of an error. In essence, when we make conclusions about an analysis, we might state something like, "Given a confidence interval of 95 out of 100, we can say that we reject the null hypothesis with a 5% chance of a type 1 error."

So let's think about an example of a type I error: 

> the test reveals you do not have COVID, but you actually don’t.

This one happened to me.

### <a id="t2er"></a> Type 2 Errors

> False Negative or what we might call a β error.

What's this? A greek letter we've never seen before! What is β? Well, this character literally represents the probability of a Type II error or "false negative." What this is essentially looking at is, "just how powerful is this significance?" And through this, we can look at our data and outcomes through a lens of, "is this just math or is this legitimately a statistically relevant concept?"

So let's think about an example of a type II error: 

> the test reveals you do not have COVID, but you actually do.

This one happened to me.

We will cover power later (and mention it again on Thursday when we walk through some t-tests.)



