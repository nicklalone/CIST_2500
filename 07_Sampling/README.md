# Week 7 - Sampling and Sampling Things
We have been exploring conceptual data and a variety of concepts in and around the philosophy of statistical inference. Now that we have explored how to explore the shape of our data, let's move a little further in to look within that shape and to compare it to the expected shape of the standard normal curve. 

You may ask yourself how and why such a thing matters. This is a good question.

It matters for basically 1 reason, without the laws in and around the normal curve, all of frequentist statistics couldn't be trusted. 

There are implications for this. 1. We can predict human activities to a certain extent. 2. To predict those things, we need to have a critical mass of data. 3. Our samples have issues but as long as we mind those issues, we can make inferences about human activity (or whatever we're collecting data about).

Since samples are so important, we're going to spend some time adding some new ideas. 

Every single time we take a sample and use it to understand a population, we're making estimates, we're doing probabilities. Everything begins with 2 things: 
1. What is the experiment (Another way to say this is, 'what is our research question?' More on these next week!)?
1. What is our sampling approach?

In this part of the class, we're going to concentrate not on the experiment, but on the sampling approach. We need to learn approaches to collecting data so that we can learn approaches to writing hypotheses we can solve with those sampling methods. 

---------------- Table of Contents ---------------- 

1. [Point Estimation](#pe)
	* Parameter vs Statistic(#pvs)
1. [Population Type](#pt)
	* [Differences Between Finite and Infinite Populations](#fin-infin)
1. [Data Frames](#df)
1. [Samping Error](#samper)
1. [Sampling Types](#st)
	* [Simple Random Sample](#srs)
	* [Random Sample](#rs)
	* [Stratified Random Sampling](#strs)
	* [Cluster Sampling](#cs)
	* [Systematic Sampling](#ss)
	* [Convenience Sampling](#cons)
	* [Judgement Sampling](#js)


---------------- Table of Contents ---------------- 

## <a id="pe"></a>Point Estimation

In general, we can say that within frequentist statistics we can generally do 2 things, describe and make an inference. In this section of class, we will be generally approaching single values and those single values are called Point Estimates. In the future, we will be taking this idea of point estimation and expand it into, "interval estimation."

We should connect this back to the normal curve since this is our home now. It is where we live. And so, one of the easiest ways to describe point estimation is to use a different definition of the same thing: central tendency. 

Do you remember calculating all of the modes of central tendency? Mean, Median, Mode? These are all estimates of population parameters.

Why? What? Huh?

These point estimations are just what we've been doing with Z-Scores. We use single points as estimates of population parameters. We are essentially offering an 'educated guess' about one aspect of the population given the sample we've collected. 

Of the different kinds of point estimation, we have: 
* Mean
* Median
* Mode
* Points

And we're discussing points but we probably should take a moment to reinforce what we're doing. *And what are we doing?* Well, we're taking samples, calculating sample statistics, and using those data to make inferences about the parameters a population continues.

### <a id="pvs"></a>Parameter vs Statistic

Before we leave point estimation, we should reiterate an important point about everything we'll do. 

We seek to understand the population's parameters. This is the whole point of statistics. We want to examine a sample of data (or population if we can get it) and make an inference about that population. We are always going to try and do this. 

And yet, the best we can do is to make an estimation of points or an estimation of interval. These are essentially, "1-point" like a mean or a z-score, or something. Or we use a confidence interval or deal with the idea that we can be more accurate by widening our interval (which in turn isn't that powerful, more on this later). 

To this, we must state two terms: 

> A **statistic** (those things we generate with sample data) will *change a lot*. For example, if I compare the average student debt of new, established, and retirement age faculty members in the US. 

> A **parameter** is what we're going for. We know through the law of large numbers, the central limit theorem, that the more samples we take, if we average those samples, that, once we got enough, we'd know the values for the population, the parameters. *Parameters do not change* once known (aside from drifting as all things do over time).

Who our population is, what our sample is, who our sample is, how to get at them, and what you want to learn from them is what we'll talk about.


## <a id="pt"></a>Population Type

We have to have a bit of a discussion about populations. Populations can be infinity and with this, you could never possibly grab an opinion or whatever from all of them. Alternatively, there are what are called, "Finite" populations or those populations within which you can know exactly how many there are. 

## <a id="fin-infin"></a>Differences Between Finite and Infinite Populations

This might be easier to describe with pictures. 

![An image of populations vs samples](/images/finite.jpg)
![An image of populations vs samples](/images/infinite.png)


## <a id="df"></a>Data Frames

Data Frames are simple to define yet obsesively difficult to understand. This is maybe one of those concepts that will be easily overthought. In light of that, I wanted to offer a few different definitions. 

Elements: 
> A unit of data for which the definition, identification, representation, and permissible values are specified by means of a set of attributes. [OECD](https://stats.oecd.org/glossary/detail.asp?ID=538#:~:text=A%20data%20element%20is%20a,of%20a%20set%20of%20attributes.)

> the definition of the population elements is its explicit definition so that members of a field crew can determine whether the site visited is a member of the target population. [Salmon Monitoring](https://groups.nceas.ucsb.edu/monitoring-kb/resources/statistical-definitions/element-of-a-population.html)

> A basic unit of information that has a unique meaning and subcategories (data items) of distinct value. Examples of data elements include gender, race, and geographic location. [NIST](https://csrc.nist.gov/glossary/term/data_element)
Data Frame: A list of elements from which the sample will be selected.

Elements are basically that thing you are studying. You have to be mindful of this concept as this could be a source of potential errors. Speaking of errors, lets talk a little about this. 

## <a id="samper"></a>Sampling Error

![This is the easiest way to consider things](/images/samper.png)

## <a id="st"></a>Sampling Types

### <a id="srs"></a>Simple Random Sample

### <a id="rs"></a>Random Sample

### <a id="strs"></a>Stratified Random Sampling

### <a id="cs"></a>Cluster Sampling

### <a id="ss"></a>Systematic Sampling

### <a id="cons"></a>Convenience Sampling

### <a id="js"></a>Judgement Sampling




